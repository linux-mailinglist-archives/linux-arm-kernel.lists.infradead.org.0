Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1A5F4E0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7VYzh5ZsFUMSjTJbMx+NdrvSbycmZapfpWutjIiWxA=; b=kp04XGU9p3c0td
	q38uC7WkqhT5Q9btutcxAGV8S3CEKeUfuNB4pz3sx4YFK2E8SRL3OiVni2vhuYF4BeUWLa6JasJuP
	bhG28AzhzeDaabJejDrQxuvfJNyL2gWxuhwxl/BDQaUb9xzIi7M5/z6oBez9Wbc/d/2SmEtlNbLvj
	PzDMk8A9Je83DFO/Fkux2NwW+06RM61RXI1XvVJMxx9VSv0bAdsCLBNsR5mWMx4dnHnkAtsLHy2KE
	sfiOFW4KrTRi8iGRaJdAnXAX8LKCdgkiWM6TvNpopoX6D/UiDYm6WQoLB2OpNCLTSqEtyX2rpgCcp
	CKgapmwn/MBnEB9l44Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQS7-0006Dc-H1; Tue, 30 Apr 2019 10:57:35 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQNv-0007sn-KK; Tue, 30 Apr 2019 10:53:15 +0000
From: Christoph Hellwig <hch@lst.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: [PATCH 16/25] iommu/dma: Merge the CMA and alloc_pages allocation
 paths
Date: Tue, 30 Apr 2019 06:52:05 -0400
Message-Id: <20190430105214.24628-17-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190430105214.24628-1-hch@lst.de>
References: <20190430105214.24628-1-hch@lst.de>
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
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
index ccdd655bc03a..99dd82d8ae21 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -955,7 +955,7 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
 	bool coherent = dev_is_dma_coherent(dev);
 	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
 	size_t iosize = size;
-	struct page *page;
+	struct page *page = NULL;
 	void *addr;
 
 	size = PAGE_ALIGN(size);
@@ -965,35 +965,26 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
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
 
@@ -1019,7 +1010,8 @@ static void *iommu_dma_alloc(struct device *dev, size_t size,
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
