Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6580522D32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:35:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfDEjtr7Gbb/EgTAK26X/wzgrI4xtBfOml3oArupHUc=; b=NCKdBN5Y7ktWhS
	GlvPaTbC5SKhzXimrl/IxSg/OZ8gQUVQUvti5VqmsiDG3w+PFdcm2H4RmwGjoff36Ehtl0v2nWIAu
	6GRyhHPZbcDfWFRLBPiXLVkYCoPAmgjZ0QvWGvWquo/adgNr36ngr63UdPMeMuTvslU0PHPh1m422
	kJH4EI7Rix+q84L/ohYBsCfTxgtqQWdtCAoJl2slUtB+jqmcCgCBj1jtTJytq+8ntyrxbluIVI1/C
	7Mus4dMJcG9xr4DWzO8pgEH9wUMlTExXZdmJOAayR14AdkogdK7OqhIs/BYO7Wz9U2EkZXZC5scE1
	gHKjMuE7tAINlbsZ5v5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScpO-0001jo-KR; Mon, 20 May 2019 07:35:22 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSclY-0004dn-Nh; Mon, 20 May 2019 07:31:25 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 17/24] iommu/dma: Cleanup variable naming in iommu_dma_alloc
Date: Mon, 20 May 2019 09:29:41 +0200
Message-Id: <20190520072948.11412-18-hch@lst.de>
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

From: Robin Murphy <robin.murphy@arm.com>

Most importantly clear up the size / iosize confusion.  Also rename addr
to cpu_addr to match the surrounding code and make the intention a little
more clear.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
[hch: split from a larger patch]
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 45 +++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index f0cd35fd11dd..4e27a29f4458 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -977,64 +977,63 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 {
 	bool coherent = dev_is_dma_coherent(dev);
 	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
-	size_t iosize = size;
+	size_t alloc_size = PAGE_ALIGN(size);
 	struct page *page = NULL;
-	void *addr;
+	void *cpu_addr;
 
-	size = PAGE_ALIGN(size);
 	gfp |= __GFP_ZERO;
 
 	if (gfpflags_allow_blocking(gfp) &&
 	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
-		return iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
+		return iommu_dma_alloc_remap(dev, size, handle, gfp, attrs);
 
 	if (!gfpflags_allow_blocking(gfp) && !coherent) {
-		addr = dma_alloc_from_pool(size, &page, gfp);
-		if (!addr)
+		cpu_addr = dma_alloc_from_pool(alloc_size, &page, gfp);
+		if (!cpu_addr)
 			return NULL;
 
-		*handle = __iommu_dma_map(dev, page_to_phys(page), iosize,
+		*handle = __iommu_dma_map(dev, page_to_phys(page), size,
 					  ioprot);
 		if (*handle == DMA_MAPPING_ERROR) {
-			dma_free_from_pool(addr, size);
+			dma_free_from_pool(cpu_addr, alloc_size);
 			return NULL;
 		}
-		return addr;
+		return cpu_addr;
 	}
 
 	if (gfpflags_allow_blocking(gfp))
-		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
-						 get_order(size),
+		page = dma_alloc_from_contiguous(dev, alloc_size >> PAGE_SHIFT,
+						 get_order(alloc_size),
 						 gfp & __GFP_NOWARN);
 	if (!page)
-		page = alloc_pages(gfp, get_order(size));
+		page = alloc_pages(gfp, get_order(alloc_size));
 	if (!page)
 		return NULL;
 
-	*handle = __iommu_dma_map(dev, page_to_phys(page), iosize, ioprot);
+	*handle = __iommu_dma_map(dev, page_to_phys(page), size, ioprot);
 	if (*handle == DMA_MAPPING_ERROR)
 		goto out_free_pages;
 
 	if (!coherent || PageHighMem(page)) {
 		pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
 
-		addr = dma_common_contiguous_remap(page, size, VM_USERMAP, prot,
-				__builtin_return_address(0));
-		if (!addr)
+		cpu_addr = dma_common_contiguous_remap(page, alloc_size,
+				VM_USERMAP, prot, __builtin_return_address(0));
+		if (!cpu_addr)
 			goto out_unmap;
 
 		if (!coherent)
-			arch_dma_prep_coherent(page, iosize);
+			arch_dma_prep_coherent(page, size);
 	} else {
-		addr = page_address(page);
+		cpu_addr = page_address(page);
 	}
-	memset(addr, 0, size);
-	return addr;
+	memset(cpu_addr, 0, alloc_size);
+	return cpu_addr;
 out_unmap:
-	__iommu_dma_unmap(dev, *handle, iosize);
+	__iommu_dma_unmap(dev, *handle, size);
 out_free_pages:
-	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
-		__free_pages(page, get_order(size));
+	if (!dma_release_from_contiguous(dev, page, alloc_size >> PAGE_SHIFT))
+		__free_pages(page, get_order(alloc_size));
 	return NULL;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
