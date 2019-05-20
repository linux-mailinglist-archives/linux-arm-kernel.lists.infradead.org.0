Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89AE822D30
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 09:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NYijCQdke2lJiJ7u0d73sVizr0hDyaoL2t78KkDblP8=; b=FPtSqeQp/cYNfI
	nBY2U4OKZcRmyd1tShktcXlXrBk6wc5UxI3JGAP78vC77jFq0tZEcnf+V4BqVwAWGtPFFW3g9Qtut
	CGg4R1EHoASQLxlxt4uXBls86hmPujcCjAVQMn0DS5F50qXmdMsVhYSWogjpdz2mXaP9OmCDX1tyn
	lYU9oFE6jQJxR2shyAaaq0qoVTtMr+Z23igovJttTZ1n7h/0vCLNR0jfzjKxTCQjsjwDS6To94ron
	hW4v0f/0WQ0EPhnhZs7Q8YkVg4ETgStX/YEUqHU1S3Ps4Z2x76oBW6OBEoVlu+CYtspPNxcUCfAyV
	jzIeMGh8FvgBwqqgxltg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hScoy-0000P8-Fv; Mon, 20 May 2019 07:34:56 +0000
Received: from 089144206147.atnat0015.highway.bob.at ([89.144.206.147]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSclT-0004Um-GX; Mon, 20 May 2019 07:31:19 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 15/24] iommu/dma: Merge the CMA and alloc_pages allocation
 paths
Date: Mon, 20 May 2019 09:29:39 +0200
Message-Id: <20190520072948.11412-16-hch@lst.de>
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

Instead of having a separate code path for the non-blocking alloc_pages
and CMA allocations paths merge them into one.  There is a slight
behavior change here in that we try the page allocator if CMA fails.
This matches what dma-direct and other iommu drivers do and will be
needed to use the dma-iommu code on architectures without DMA remapping
later on.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/iommu/dma-iommu.c | 32 ++++++++++++--------------------
 1 file changed, 12 insertions(+), 20 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index cffd30810d41..ee7dcf03c304 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -974,7 +974,7 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	bool coherent = dev_is_dma_coherent(dev);
 	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
 	size_t iosize = size;
-	struct page *page;
+	struct page *page = NULL;
 	void *addr;
 
 	size = PAGE_ALIGN(size);
@@ -984,35 +984,26 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	    !(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
 		return iommu_dma_alloc_remap(dev, iosize, handle, gfp, attrs);
 
-	if (!gfpflags_allow_blocking(gfp)) {
-		/*
-		 * In atomic context we can't remap anything, so we'll only
-		 * get the virtually contiguous buffer we need by way of a
-		 * physically contiguous allocation.
-		 */
-		if (coherent) {
-			page = alloc_pages(gfp, get_order(size));
-			addr = page ? page_address(page) : NULL;
-		} else {
-			addr = dma_alloc_from_pool(size, &page, gfp);
-		}
+	if (!gfpflags_allow_blocking(gfp) && !coherent) {
+		addr = dma_alloc_from_pool(size, &page, gfp);
 		if (!addr)
 			return NULL;
 
 		*handle = __iommu_dma_map(dev, page_to_phys(page), iosize,
 					  ioprot);
 		if (*handle == DMA_MAPPING_ERROR) {
-			if (coherent)
-				__free_pages(page, get_order(size));
-			else
-				dma_free_from_pool(addr, size);
+			dma_free_from_pool(addr, size);
 			return NULL;
 		}
 		return addr;
 	}
 
-	page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
-					 get_order(size), gfp & __GFP_NOWARN);
+	if (gfpflags_allow_blocking(gfp))
+		page = dma_alloc_from_contiguous(dev, size >> PAGE_SHIFT,
+						 get_order(size),
+						 gfp & __GFP_NOWARN);
+	if (!page)
+		page = alloc_pages(gfp, get_order(size));
 	if (!page)
 		return NULL;
 
@@ -1038,7 +1029,8 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 out_unmap:
 	__iommu_dma_unmap(dev, *handle, iosize);
 out_free_pages:
-	dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
+	if (!dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT))
+		__free_pages(page, get_order(size));
 	return NULL;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
