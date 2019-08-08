Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E0B86692
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6iC+GYyQjKVlgm7MC0WGwNBAhGlj12kZCkVCs2psA80=; b=XYVP94f09t43Bs
	MlAU4vlpTUaSRwS41J6VoW7VhigmD6osPpklMwUCS+0T+ZIXw3gisGbfpEl+G9WGrRaEzNY7Ifkhw
	c1gRqqT+gzmZpmXezBWtVVULc4P6+gKdOG/lKPDN3E0ftxWkFvsDx+6DcbAgs0HhkibTD9ma6BXLR
	3zxGb4prycONTeh2LqgiKEH+hzf3KcrqvOhd4ixtdLgJw2qEJerYbp/SMrBaz1OIs6ii3NQBH8yE2
	h0ZLuoRQhA69pcDXUPbpTnHM0+omzjwfBu+tOclocoUE1TvSciX5jtJ08MAxn2PLwRdhytHWm69R5
	UJaf0/cmCx7Mffh/vGbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvks6-0008Us-Sy; Thu, 08 Aug 2019 16:02:35 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkqW-0006wr-CU; Thu, 08 Aug 2019 16:00:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 8/8] dma-mapping: remove CONFIG_ARCH_NO_COHERENT_DMA_MMAP
Date: Thu,  8 Aug 2019 19:00:05 +0300
Message-Id: <20190808160005.10325-9-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808160005.10325-1-hch@lst.de>
References: <20190808160005.10325-1-hch@lst.de>
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CONFIG_ARCH_NO_COHERENT_DMA_MMAP is now functionally identical to
!CONFIG_MMU, so remove the separate symbol.  The only difference is that
arm did not set it for !CONFIG_MMU, but arm uses a separate dma mapping
implementation including its own mmap method, which is handled by moving
the CONFIG_MMU check in dma_can_mmap so that is only applies to the
dma-direct case, just as the other ifdefs for it.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/Kconfig            |  3 ---
 arch/c6x/Kconfig        |  1 -
 arch/m68k/Kconfig       |  1 -
 arch/microblaze/Kconfig |  1 -
 arch/sh/Kconfig         |  1 -
 arch/xtensa/Kconfig     |  1 -
 kernel/dma/mapping.c    | 12 +++++-------
 7 files changed, 5 insertions(+), 15 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index a7b57dd42c26..ec2834206d08 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -790,9 +790,6 @@ config COMPAT_32BIT_TIME
 	  This is relevant on all 32-bit architectures, and 64-bit architectures
 	  as part of compat syscall handling.
 
-config ARCH_NO_COHERENT_DMA_MMAP
-	bool
-
 config ARCH_NO_PREEMPT
 	bool
 
diff --git a/arch/c6x/Kconfig b/arch/c6x/Kconfig
index b4fb61c83494..e65e8d82442a 100644
--- a/arch/c6x/Kconfig
+++ b/arch/c6x/Kconfig
@@ -20,7 +20,6 @@ config C6X
 	select OF_EARLY_FLATTREE
 	select GENERIC_CLOCKEVENTS
 	select MODULES_USE_ELF_RELA
-	select ARCH_NO_COHERENT_DMA_MMAP
 	select MMU_GATHER_NO_RANGE if MMU
 
 config MMU
diff --git a/arch/m68k/Kconfig b/arch/m68k/Kconfig
index c518d695c376..614b355ae338 100644
--- a/arch/m68k/Kconfig
+++ b/arch/m68k/Kconfig
@@ -8,7 +8,6 @@ config M68K
 	select ARCH_HAS_DMA_PREP_COHERENT if HAS_DMA && MMU && !COLDFIRE
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE if HAS_DMA
 	select ARCH_MIGHT_HAVE_PC_PARPORT if ISA
-	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
 	select ARCH_NO_PREEMPT if !COLDFIRE
 	select BINFMT_FLAT_ARGVP_ENVP_ON_STACK
 	select DMA_DIRECT_REMAP if HAS_DMA && MMU && !COLDFIRE
diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index d411de05b628..632c9477a0f6 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -9,7 +9,6 @@ config MICROBLAZE
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
 	select ARCH_MIGHT_HAVE_PC_PARPORT
-	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
 	select ARCH_WANT_IPC_PARSE_VERSION
 	select BUILDTIME_EXTABLE_SORT
 	select TIMER_OF
diff --git a/arch/sh/Kconfig b/arch/sh/Kconfig
index 6b1b5941b618..f356ee674d89 100644
--- a/arch/sh/Kconfig
+++ b/arch/sh/Kconfig
@@ -5,7 +5,6 @@ config SUPERH
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_MIGHT_HAVE_PC_PARPORT
-	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
 	select HAVE_PATA_PLATFORM
 	select CLKDEV_LOOKUP
 	select DMA_DECLARE_COHERENT
diff --git a/arch/xtensa/Kconfig b/arch/xtensa/Kconfig
index ebc135bda921..70653aed3005 100644
--- a/arch/xtensa/Kconfig
+++ b/arch/xtensa/Kconfig
@@ -5,7 +5,6 @@ config XTENSA
 	select ARCH_HAS_BINFMT_FLAT if !MMU
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
-	select ARCH_NO_COHERENT_DMA_MMAP if !MMU
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
 	select ARCH_WANT_FRAME_POINTERS
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 64d1de59e133..fc17016b0871 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -186,7 +186,7 @@ int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
 		void *cpu_addr, dma_addr_t dma_addr, size_t size,
 		unsigned long attrs)
 {
-#ifndef CONFIG_ARCH_NO_COHERENT_DMA_MMAP
+#ifdef CONFIG_MMU
 	unsigned long user_count = vma_pages(vma);
 	unsigned long count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	unsigned long off = vma->vm_pgoff;
@@ -217,7 +217,7 @@ int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
 			user_count << PAGE_SHIFT, vma->vm_page_prot);
 #else
 	return -ENXIO;
-#endif /* !CONFIG_ARCH_NO_COHERENT_DMA_MMAP */
+#endif /* CONFIG_MMU */
 }
 
 /**
@@ -231,12 +231,10 @@ bool dma_can_mmap(struct device *dev)
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 
-	if (IS_ENABLED(CONFIG_ARCH_NO_COHERENT_DMA_MMAP))
-		return false;
-
 	if (dma_is_direct(ops)) {
-		return dev_is_dma_coherent(dev) ||
-			IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN);
+		return IS_ENABLED(CONFIG_MMU) &&
+		       (dev_is_dma_coherent(dev) ||
+			IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN));
 	}
 
 	return ops->mmap != NULL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
