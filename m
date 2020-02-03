Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCA8150E7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 18:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CVecmXKpMg9pzPBelIL7F3Yk58UG/0AGjVW+BUlEgYI=; b=YLpoZTwaOaszmh
	j9WzSeiSoAJcPS41QnyXMAIKldNeaZnC7uiNuiKnH5beDOHbVpV8ryXtpB2N8i8eakAfAmpW4+hfV
	6zSLonoSzFGzmADBNrOC0lNUFArSg7Nndkj56xSfHCzWVLl/0MDMIMlKTOUEA+hMB4gYHWhT2cf7S
	iSGxdhIJ040GGFC87QkCAmbiCCKanu3UV4NeBxisWvy/ys/BzZyKALOXpyHuqzWQFgWzg3CkSHOuO
	4lrU4sBvyyuM8sCmW96cYx6iUOTY1jSObYeziZkBPbr6UUlUrfwuwuMJgIzBJOCqa1uwOcDgMToSq
	sp1U8PXvBKVh+BGYOHjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyfKT-0002Hp-Q9; Mon, 03 Feb 2020 17:16:09 +0000
Received: from [2001:4bb8:184:589f:5d35:7054:f1cc:c43d] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfKN-0002HW-6c; Mon, 03 Feb 2020 17:16:03 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: [PATCH] dma-direct: relax addressability checks in
 dma_direct_supported
Date: Mon,  3 Feb 2020 18:16:01 +0100
Message-Id: <20200203171601.539254-1-hch@lst.de>
X-Mailer: git-send-email 2.24.1
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
Cc: peter.ujfalusi@ti.com, robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_direct_supported tries to find the minimum addressable bitmask
based on the end pfn and optional magic that architectures can use
to communicate the size of the magic ZONE_DMA that can be used
for bounce buffering.  But between the DMA offsets that can change
per device (or sometimes even region), the fact the ZONE_DMA isn't
even guaranteed to be the lowest addresses and failure of having
proper interfaces to the MM code this fails at least for one
arm subarchitecture.

As all the legacy DMA implementations have supported 32-bit DMA
masks, and 32-bit masks are guranteed to always work by the API
contract (using bounce buffers if needed), we can short cut the
complicated check and always return true without breaking existing
assumptions.  Hopefully we can properly clean up the interaction
with the arch defined zones and the bootmem allocator eventually.

Fixes: ad3c7b18c5b3 ("arm: use swiotlb for bounce buffering on LPAE configs")
Reported-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Tested-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 kernel/dma/direct.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 04f308a47fc3..efab894c1679 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -464,28 +464,26 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
 }
 #endif /* CONFIG_MMU */
 
-/*
- * Because 32-bit DMA masks are so common we expect every architecture to be
- * able to satisfy them - either by not supporting more physical memory, or by
- * providing a ZONE_DMA32.  If neither is the case, the architecture needs to
- * use an IOMMU instead of the direct mapping.
- */
 int dma_direct_supported(struct device *dev, u64 mask)
 {
-	u64 min_mask;
-
-	if (IS_ENABLED(CONFIG_ZONE_DMA))
-		min_mask = DMA_BIT_MASK(zone_dma_bits);
-	else
-		min_mask = DMA_BIT_MASK(32);
+	u64 min_mask = (max_pfn - 1) << PAGE_SHIFT;
 
-	min_mask = min_t(u64, min_mask, (max_pfn - 1) << PAGE_SHIFT);
+	/*
+	 * Because 32-bit DMA masks are so common we expect every architecture
+	 * to be able to satisfy them - either by not supporting more physical
+	 * memory, or by providing a ZONE_DMA32.  If neither is the case, the
+	 * architecture needs to use an IOMMU instead of the direct mapping.
+	 */
+	if (mask >= DMA_BIT_MASK(32))
+		return 1;
 
 	/*
 	 * This check needs to be against the actual bit mask value, so
 	 * use __phys_to_dma() here so that the SME encryption mask isn't
 	 * part of the check.
 	 */
+	if (IS_ENABLED(CONFIG_ZONE_DMA))
+		min_mask = min_t(u64, min_mask, DMA_BIT_MASK(zone_dma_bits));
 	return mask >= __phys_to_dma(dev, min_mask);
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
