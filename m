Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6554FAB13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:36:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rcYn+o0EJUDgxePUk6rWdLg/xZaibYzVbTnApA6M6Kw=; b=eeAluPevJorEW/
	42+l5uOv16aSn7DnPAb+WRAHWRRHz3TJbEA6TGydnrJ3xeCzzteYSD9jIRBFcZ54EOqGC5wQkA3KX
	4qUo7g56TuyQeD1ofxy2AOP/roubTq6RnaBFtRgsoS6fCF8j6tkaleFjOtw3vvYe1ituUoXBME1LU
	bTX1fJH99T+zR/hGbAWCG3iaYk5teCNThEzcRpAGYC9Cmu7QmvzYH938rgyCZgmeRcLnu0+XJRaGX
	98wlXdXGcl9TicUGlMb9me6F1lz9koUnvI/VXDfLQQ87kvyIxIBtlSh3rI/FO1M9QdhPHQuQyUDKj
	Ngx/Ly1iP2qvOiCH70hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnCP-0000TN-43; Wed, 13 Nov 2019 07:36:21 +0000
Received: from [2001:4bb8:180:3806:c70:4a89:bc61:5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnBq-0008Tp-Td; Wed, 13 Nov 2019 07:35:47 +0000
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 iommu@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 2/3] dma-direct: avoid a forward declaration for phys_to_dma
Date: Wed, 13 Nov 2019 08:35:38 +0100
Message-Id: <20191113073539.9660-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113073539.9660-1-hch@lst.de>
References: <20191113073539.9660-1-hch@lst.de>
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
Cc: linuxppc-dev@lists.ozlabs.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move dma_capable down a bit so that we don't need a forward declaration
for phys_to_dma.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/dma-direct.h | 30 ++++++++++++++----------------
 1 file changed, 14 insertions(+), 16 deletions(-)

diff --git a/include/linux/dma-direct.h b/include/linux/dma-direct.h
index 991f8aa2676e..f8959f75e496 100644
--- a/include/linux/dma-direct.h
+++ b/include/linux/dma-direct.h
@@ -6,8 +6,6 @@
 #include <linux/memblock.h> /* for min_low_pfn */
 #include <linux/mem_encrypt.h>
 
-static inline dma_addr_t phys_to_dma(struct device *dev, phys_addr_t paddr);
-
 #ifdef CONFIG_ARCH_HAS_PHYS_TO_DMA
 #include <asm/dma-direct.h>
 #else
@@ -26,20 +24,6 @@ static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t dev_addr)
 }
 #endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
 
-static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
-{
-	dma_addr_t end = addr + size - 1;
-
-	if (!dev->dma_mask)
-		return false;
-
-	if (!IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
-	    min(addr, end) < phys_to_dma(dev, PFN_PHYS(min_low_pfn)))
-		return false;
-
-	return end <= min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
-}
-
 #ifdef CONFIG_ARCH_HAS_FORCE_DMA_UNENCRYPTED
 bool force_dma_unencrypted(struct device *dev);
 #else
@@ -65,6 +49,20 @@ static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t daddr)
 	return __sme_clr(__dma_to_phys(dev, daddr));
 }
 
+static inline bool dma_capable(struct device *dev, dma_addr_t addr, size_t size)
+{
+	dma_addr_t end = addr + size - 1;
+
+	if (!dev->dma_mask)
+		return false;
+
+	if (!IS_ENABLED(CONFIG_ARCH_DMA_ADDR_T_64BIT) &&
+	    min(addr, end) < phys_to_dma(dev, PFN_PHYS(min_low_pfn)))
+		return false;
+
+	return end <= min_not_zero(*dev->dma_mask, dev->bus_dma_mask);
+}
+
 u64 dma_direct_get_required_mask(struct device *dev);
 void *dma_direct_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 		gfp_t gfp, unsigned long attrs);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
