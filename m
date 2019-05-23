Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E832C27699
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 09:02:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zq3o+34j1b77q+qpGhoEc/zl6RwBTrxHJC6XeTJGXbE=; b=athQPHEgANKtP+
	RzlaVW1gOVilyz8uxHla+vBlj63EK47lVzL+IPexJnzK7pmvs3ns14QKXMNcSH43X26QrM1FTdxTr
	8FFHyXyieCh3fMPll5xu9Vk7/0L48IuX5pEV+w2usyZq0kLMjEN7WUNYoaY1xUSQFg+YREnvvjR7t
	+PklX9ZwO0wmiTfLIEGiJOW6kk85fWs/QDCJbv5Bj86tRCvnYlvwOrElf47S2JXq0yuBZVrY4wXZv
	9bksC3/LrhhwklOZLaGTfFHeF4iJtXd+s7wX2aUcxVienEnFPdAEtU8rUXjqwY5d1bxfa9bO0OYSF
	LZTl/zzuXLCWKr4yHVkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hThkC-00078j-5s; Thu, 23 May 2019 07:02:28 +0000
Received: from 213-225-10-46.nat.highway.a1.net ([213.225.10.46]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hThij-0005B9-0p; Thu, 23 May 2019 07:00:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 09/23] iommu/dma: Refactor the page array remapping allocator
Date: Thu, 23 May 2019 09:00:14 +0200
Message-Id: <20190523070028.7435-10-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523070028.7435-1-hch@lst.de>
References: <20190523070028.7435-1-hch@lst.de>
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
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
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
index e870ea59a34d..0ccc25fd5c86 100644
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
