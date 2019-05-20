Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9845522D1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6eXEQR3+YA6ONI8azAb6umKczTFgGnIs/ZnPhmpJlg=; b=DoD/cw8TJVmwpC
	lfIIaX2DPzHIR5HJta1jGYOU1LAeF/TXryAfVGXMZBsfd8KDJQpIN5oyLtiRdJJ7VPMwUbhmxpYCG
	1LzxTv1BFUQMRHRWSQ2Yx6pPhBKPb4lg0+yq5TIX0Kzv8/1KuIRJreIlFgmbNMKH1kA63Y7v3Kfa9
	EjhnGnePjLrucUHDkp7teQE8vBqM8hCPlrUdd2PdFmFkq29I+O89BqnmR8yxMt80dVSHy2R1VKwfc
	oXZTh7cc+9UkcVqTYjpiFqsebRTDOweVR00l8jO8Rzn7hQHfgJgMdQPDXFQyz0H8a0cy4HL6uhBfw
	knkwe4c8F8K/Fio3X9Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScmm-0006El-AL; Mon, 20 May 2019 07:32:40 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSclG-0004FI-Ab; Mon, 20 May 2019 07:31:06 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 10/24] iommu/dma: Refactor the page array remapping allocator
Date: Mon, 20 May 2019 09:29:34 +0200
Message-Id: <20190520072948.11412-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520072948.11412-1-hch@lst.de>
References: <20190520072948.11412-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Tom Murphy <tmurphy@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the call to dma_common_pages_remap into __iommu_dma_alloc and
rename it to iommu_dma_alloc_remap.  This creates a self-contained
helper for remapped pages allocation and mapping.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/dma-iommu.c | 54 +++++++++++++++++++--------------------
 1 file changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 5e81165e6755..0ffb7805de77 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -564,9 +564,9 @@ static struct page **__iommu_dma_get_pages(void *cpu_addr)
 }
 
 /**
- * iommu_dma_free - Free a buffer allocated by __iommu_dma_alloc()
+ * iommu_dma_free - Free a buffer allocated by iommu_dma_alloc_remap()
  * @dev: Device which owns this buffer
- * @pages: Array of buffer pages as returned by __iommu_dma_alloc()
+ * @pages: Array of buffer pages as returned by __iommu_dma_alloc_remap()
  * @size: Size of buffer in bytes
  * @handle: DMA address of buffer
  *
@@ -582,33 +582,35 @@ static void __iommu_dma_free(struct device *dev, struct page **pages,
 }
 
 /**
- * __iommu_dma_alloc - Allocate and map a buffer contiguous in IOVA space
+ * iommu_dma_alloc_remap - Allocate and map a buffer contiguous in IOVA space
  * @dev: Device to allocate memory for. Must be a real device
  *	 attached to an iommu_dma_domain
  * @size: Size of buffer in bytes
+ * @dma_handle: Out argument for allocated DMA handle
  * @gfp: Allocation flags
  * @attrs: DMA attributes for this allocation
- * @prot: IOMMU mapping flags
- * @handle: Out argument for allocated DMA handle
  *
  * If @size is less than PAGE_SIZE, then a full CPU page will be allocated,
  * but an IOMMU which supports smaller pages might not map the whole thing.
  *
- * Return: Array of struct page pointers describing the buffer,
- *	   or NULL on failure.
+ * Return: Mapped virtual address, or NULL on failure.
  */
-static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
-		gfp_t gfp, unsigned long attrs, int prot, dma_addr_t *handle)
+static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
+		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
 	struct iommu_domain *domain = iommu_get_dma_domain(dev);
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	struct iova_domain *iovad = &cookie->iovad;
+	bool coherent = dev_is_dma_coherent(dev);
+	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
+	pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+	unsigned int count, min_size, alloc_sizes = domain->pgsize_bitmap;
 	struct page **pages;
 	struct sg_table sgt;
 	dma_addr_t iova;
-	unsigned int count, min_size, alloc_sizes = domain->pgsize_bitmap;
+	void *vaddr;
 
-	*handle = DMA_MAPPING_ERROR;
+	*dma_handle = DMA_MAPPING_ERROR;
 
 	min_size = alloc_sizes & -alloc_sizes;
 	if (min_size < PAGE_SIZE) {
@@ -634,7 +636,7 @@ static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
 	if (sg_alloc_table_from_pages(&sgt, pages, count, 0, size, GFP_KERNEL))
 		goto out_free_iova;
 
-	if (!(prot & IOMMU_CACHE)) {
+	if (!(ioprot & IOMMU_CACHE)) {
 		struct scatterlist *sg;
 		int i;
 
@@ -642,14 +644,21 @@ static struct page **__iommu_dma_alloc(struct device *dev, size_t size,
 			arch_dma_prep_coherent(sg_page(sg), sg->length);
 	}
 
-	if (iommu_map_sg(domain, iova, sgt.sgl, sgt.orig_nents, prot)
+	if (iommu_map_sg(domain, iova, sgt.sgl, sgt.orig_nents, ioprot)
 			< size)
 		goto out_free_sg;
 
-	*handle = iova;
+	vaddr = dma_common_pages_remap(pages, size, VM_USERMAP, prot,
+			__builtin_return_address(0));
+	if (!vaddr)
+		goto out_unmap;
+
+	*dma_handle = iova;
 	sg_free_table(&sgt);
-	return pages;
+	return vaddr;
 
+out_unmap:
+	__iommu_dma_unmap(dev, iova, size);
 out_free_sg:
 	sg_free_table(&sgt);
 out_free_iova:
@@ -1008,18 +1017,7 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 						    size >> PAGE_SHIFT);
 		}
 	} else {
-		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
-		struct page **pages;
-
-		pages = __iommu_dma_alloc(dev, iosize, gfp, attrs, ioprot,
-					handle);
-		if (!pages)
-			return NULL;
-
-		addr = dma_common_pages_remap(pages, size, VM_USERMAP, prot,
-					      __builtin_return_address(0));
-		if (!addr)
-			__iommu_dma_free(dev, pages, iosize, handle);
+		addr = iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
 	}
 	return addr;
 }
@@ -1033,7 +1031,7 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
 	/*
 	 * @cpu_addr will be one of 4 things depending on how it was allocated:
 	 * - A remapped array of pages for contiguous allocations.
-	 * - A remapped array of pages from __iommu_dma_alloc(), for all
+	 * - A remapped array of pages from iommu_dma_alloc_remap(), for all
 	 *   non-atomic allocations.
 	 * - A non-cacheable alias from the atomic pool, for atomic
 	 *   allocations by non-coherent devices.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
