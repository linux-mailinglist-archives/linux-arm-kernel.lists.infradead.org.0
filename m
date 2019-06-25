Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA534527E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZB8GvrpMejKQ5NwjvYKCOdNX6TVxGfQ/lMVUS6I13WU=; b=PipCX39m9gRFRS
	9CATY8M/O8YJ2XvXSf5JRIGciMRP8s6aELeS2AMRYezOns8llQQqR/t52pEj5Nfs0B+fzkFpALqJA
	I3j+Ze3uQ1RHCqZIUarIYpmtY9vDWvFUhsga9XG5ets889//BjOfHEM9qMRVdHMTHrsmRoGuFuakc
	b42dr9EkWFTu0I9FsY1+oYMPu4LtKF3p1L/bPEHiKI2s9dYwIWWqrysyTdD73x73bxjlqd1dckm9g
	2fn3uXWD0wpzDVp4s4Z5l+jCcz76YxUIbz5JfFQBuKoIfIeBSOzECfqqm0kuiINXe6fvCo8b47TNJ
	v6u+aQe5XGT6TtS0/sQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhea-00067k-EZ; Tue, 25 Jun 2019 09:22:16 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhdH-0005lS-Iu; Tue, 25 Jun 2019 09:20:56 +0000
From: Christoph Hellwig <hch@lst.de>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 2/2] dma-mapping: remove dma_max_pfn
Date: Tue, 25 Jun 2019 11:20:42 +0200
Message-Id: <20190625092042.19320-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190625092042.19320-1-hch@lst.de>
References: <20190625092042.19320-1-hch@lst.de>
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
Cc: iommu@lists.linux-foundation.org, linux-mmc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These days the DMA mapping code must bounce buffer for any not supported
address, and if they driver needs to optimize for natively supported
ranged it should use dma_get_required_mask.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/include/asm/dma-mapping.h | 7 -------
 include/linux/dma-mapping.h        | 7 -------
 2 files changed, 14 deletions(-)

diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
index 03ba90ffc0f8..7e0486ad1318 100644
--- a/arch/arm/include/asm/dma-mapping.h
+++ b/arch/arm/include/asm/dma-mapping.h
@@ -89,13 +89,6 @@ static inline dma_addr_t virt_to_dma(struct device *dev, void *addr)
 }
 #endif
 
-/* The ARM override for dma_max_pfn() */
-static inline unsigned long dma_max_pfn(struct device *dev)
-{
-	return dma_to_pfn(dev, *dev->dma_mask);
-}
-#define dma_max_pfn(dev) dma_max_pfn(dev)
-
 /* do not use this function in a driver */
 static inline bool is_device_dma_coherent(struct device *dev)
 {
diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index 6309a721394b..8d13e28a8e07 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -729,13 +729,6 @@ static inline int dma_set_seg_boundary(struct device *dev, unsigned long mask)
 	return -EIO;
 }
 
-#ifndef dma_max_pfn
-static inline unsigned long dma_max_pfn(struct device *dev)
-{
-	return (*dev->dma_mask >> PAGE_SHIFT) + dev->dma_pfn_offset;
-}
-#endif
-
 static inline int dma_get_cache_alignment(void)
 {
 #ifdef ARCH_DMA_MINALIGN
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
