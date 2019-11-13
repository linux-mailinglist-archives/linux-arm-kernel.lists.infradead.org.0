Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA955FAB14
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPcK64beVs7utsDmENxy0jCFzSMvZqQvcTM3FFZw6AI=; b=pcfnDrpwh00CGi
	vcRo98Z+VJO3myWSu+oaqI/bHAtrFlMHjxAvH2514jXxdgIdRyFfIgyZAXUJnHPMgTK4aLIrjaS6s
	92QZGxN2YNGeQF6SWJ0b4/vt3LAXvOOVK81nPEX8GodvgesEMJKtp7lD+igkeHNCyms0WTewyOAeE
	+eIZ6dM5rWJnPC1tY6H9uBZREsAKvP+C+sff41KiufjVDfWmcDJUWftNtvhr4mueWjANS3tA8cK8i
	xXmCqhR+oonaT+Xmij/7JVNfSg0I4nhTklHkDKjzGicFGQ1dlnx0W0/XkmqGce9QjeZxmWe7nwRuo
	hh39b7aWExwXMjS61Ohg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnCe-0000iL-Mn; Wed, 13 Nov 2019 07:36:36 +0000
Received: from [2001:4bb8:180:3806:c70:4a89:bc61:5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnBt-00006y-GA; Wed, 13 Nov 2019 07:35:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 iommu@lists.linux-foundation.org, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 3/3] powerpc: remove support for NULL dev in __phys_to_dma /
 __dma_to_phys
Date: Wed, 13 Nov 2019 08:35:39 +0100
Message-Id: <20191113073539.9660-4-hch@lst.de>
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

Support for calling the DMA API functions without a valid device pointer
was removed a while ago, so remove the stale support for that from the
powerpc __phys_to_dma / __dma_to_phys helpers.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/powerpc/include/asm/dma-direct.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/powerpc/include/asm/dma-direct.h b/arch/powerpc/include/asm/dma-direct.h
index e29e8a236b8d..abc154d784b0 100644
--- a/arch/powerpc/include/asm/dma-direct.h
+++ b/arch/powerpc/include/asm/dma-direct.h
@@ -4,15 +4,11 @@
 
 static inline dma_addr_t __phys_to_dma(struct device *dev, phys_addr_t paddr)
 {
-	if (!dev)
-		return paddr + PCI_DRAM_OFFSET;
 	return paddr + dev->archdata.dma_offset;
 }
 
 static inline phys_addr_t __dma_to_phys(struct device *dev, dma_addr_t daddr)
 {
-	if (!dev)
-		return daddr - PCI_DRAM_OFFSET;
 	return daddr - dev->archdata.dma_offset;
 }
 #endif /* ASM_POWERPC_DMA_DIRECT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
