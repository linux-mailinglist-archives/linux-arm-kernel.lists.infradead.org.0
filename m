Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F152162EDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:42:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jw8JfdMthnvg5W5RPQKxaikkMzmmDB0xtoPWc4BjRU0=; b=Fx+n/kIRM562Qs
	HtIDjBE/c/KN8C8ZQBlyQOHJA/3O5iqn+DCnIYf/WPGsy7tyLc1fzrJJ8LYbfVO6eS/9exy4Iitzm
	GQbpaQG7/R5qQvoUIujZUiyzYLWWWeK6s2EnkDoYcRQ9HaEhYBauCvHglup5337BAMa0Fz4J8lh/E
	aR4auP+pK8v5kh5N8jR/Sr6o8BiS85z6VWyZ+HdtTlWQicwnIuPdRO6Zt2baST/fYUfqlBEgjGnuT
	NAmAGjcmAOjslID2Lxgdb5TAgowNLgSB9x6gQOXlYLyjVLIyRM7tp9P6qGEK5oH5uvZNlWZude2Qh
	lkbx2Dk9vUJkMdB18Asg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47oi-0002r6-Oh; Tue, 18 Feb 2020 18:41:56 +0000
Received: from [199.255.44.128] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47oW-0002jH-ED; Tue, 18 Feb 2020 18:41:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH 1/3] ARM/dma-mapping: remove get_coherent_dma_mask
Date: Tue, 18 Feb 2020 10:41:01 -0800
Message-Id: <20200218184103.35932-2-hch@lst.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200218184103.35932-1-hch@lst.de>
References: <20200218184103.35932-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The core DMA code already checks for valid DMA masks earlier on, and
doesn't allow NULL struct device pointers.  Remove the now not required
checks.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping.c | 41 ++++-----------------------------------
 1 file changed, 4 insertions(+), 37 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 9414d72f664b..72ddc3d0f5eb 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -219,7 +219,7 @@ const struct dma_map_ops arm_coherent_dma_ops = {
 };
 EXPORT_SYMBOL(arm_coherent_dma_ops);
 
-static int __dma_supported(struct device *dev, u64 mask, bool warn)
+static int __dma_supported(struct device *dev, u64 mask)
 {
 	unsigned long max_dma_pfn = min(max_pfn - 1, arm_dma_pfn_limit);
 
@@ -227,41 +227,11 @@ static int __dma_supported(struct device *dev, u64 mask, bool warn)
 	 * Translate the device's DMA mask to a PFN limit.  This
 	 * PFN number includes the page which we can DMA to.
 	 */
-	if (dma_to_pfn(dev, mask) < max_dma_pfn) {
-		if (warn)
-			dev_warn(dev, "Coherent DMA mask %#llx (pfn %#lx-%#lx) covers a smaller range of system memory than the DMA zone pfn 0x0-%#lx\n",
-				 mask,
-				 dma_to_pfn(dev, 0), dma_to_pfn(dev, mask) + 1,
-				 max_dma_pfn + 1);
+	if (dma_to_pfn(dev, mask) < max_dma_pfn)
 		return 0;
-	}
-
 	return 1;
 }
 
-static u64 get_coherent_dma_mask(struct device *dev)
-{
-	u64 mask = (u64)DMA_BIT_MASK(32);
-
-	if (dev) {
-		mask = dev->coherent_dma_mask;
-
-		/*
-		 * Sanity check the DMA mask - it must be non-zero, and
-		 * must be able to be satisfied by a DMA allocation.
-		 */
-		if (mask == 0) {
-			dev_warn(dev, "coherent DMA mask is unset\n");
-			return 0;
-		}
-
-		if (!__dma_supported(dev, mask, true))
-			return 0;
-	}
-
-	return mask;
-}
-
 static void __dma_clear_buffer(struct page *page, size_t size, int coherent_flag)
 {
 	/*
@@ -688,7 +658,7 @@ static void *__dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 			 gfp_t gfp, pgprot_t prot, bool is_coherent,
 			 unsigned long attrs, const void *caller)
 {
-	u64 mask = get_coherent_dma_mask(dev);
+	u64 mask = dev->coherent_dma_mask;
 	struct page *page = NULL;
 	void *addr;
 	bool allowblock, cma;
@@ -712,9 +682,6 @@ static void *__dma_alloc(struct device *dev, size_t size, dma_addr_t *handle,
 	}
 #endif
 
-	if (!mask)
-		return NULL;
-
 	buf = kzalloc(sizeof(*buf),
 		      gfp & ~(__GFP_DMA | __GFP_DMA32 | __GFP_HIGHMEM));
 	if (!buf)
@@ -1095,7 +1062,7 @@ void arm_dma_sync_sg_for_device(struct device *dev, struct scatterlist *sg,
  */
 int arm_dma_supported(struct device *dev, u64 mask)
 {
-	return __dma_supported(dev, mask, false);
+	return __dma_supported(dev, mask);
 }
 
 static const struct dma_map_ops *arm_get_dma_map_ops(bool coherent)
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
