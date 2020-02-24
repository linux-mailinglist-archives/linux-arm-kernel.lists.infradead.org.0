Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA63E16B081
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:45:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibtGIOb/Rv1ougfu43yEZNfAQ0Ll1+OAa+P2a1iv3hs=; b=r2oGgiWfWCYaaL
	eyb9elTyI91HeDvAdLwssAUopJOyhL4XXiBswb/Ae2kBdcECYeS3f1BVMIVBVSv5ZOLJr3IPNxMtP
	yLyXjFjrrRLZvtB8bNlHd0FHSCyWT4bbPVaWWK9pca4HgVD0FpFXSC+IlXSD7VMCORQwvMPae3zSL
	japXFIDc5g/85DciNRHTRKlKnsFFYuiHmalnYsNJl5QMcVdkQqZJPwyBFgIjSjp34CUdZdLRo4iND
	QCb6P5QUXdVN+U11Ur7wvUZzgjr6XOxhiVMfz3ua3Q9wEqdp7t/ADoSRic+FwXWv82CPdD64iCEy3
	613h+UtpgiZpm7kMVXMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Jfc-0008AY-Tn; Mon, 24 Feb 2020 19:45:36 +0000
Received: from [4.28.11.157] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Jeq-0006X9-3L; Mon, 24 Feb 2020 19:44:48 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jonas Bonn <jonas@southpole.se>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>
Subject: [PATCH 1/5] dma-direct: remove the cached_kernel_address hook
Date: Mon, 24 Feb 2020 11:44:41 -0800
Message-Id: <20200224194446.690816-2-hch@lst.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224194446.690816-1-hch@lst.de>
References: <20200224194446.690816-1-hch@lst.de>
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arch@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma-direct now finds the kernel address for coherent allocations based
on the dma address, so the cached_kernel_address hooks is unused and
can be removed entirely.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/Kconfig                    |  2 +-
 arch/microblaze/mm/consistent.c |  7 -------
 arch/mips/mm/dma-noncoherent.c  |  5 -----
 arch/nios2/mm/dma-mapping.c     | 10 ----------
 arch/xtensa/kernel/pci-dma.c    | 10 ++--------
 include/linux/dma-noncoherent.h |  1 -
 6 files changed, 3 insertions(+), 32 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 98de654b79b3..7994b239f155 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -249,7 +249,7 @@ config ARCH_HAS_SET_DIRECT_MAP
 
 #
 # Select if arch has an uncached kernel segment and provides the
-# uncached_kernel_address / cached_kernel_address symbols to use it
+# uncached_kernel_address symbol to use it
 #
 config ARCH_HAS_UNCACHED_SEGMENT
 	select ARCH_HAS_DMA_PREP_COHERENT
diff --git a/arch/microblaze/mm/consistent.c b/arch/microblaze/mm/consistent.c
index 8c5f0c332d8b..cede7c5e8135 100644
--- a/arch/microblaze/mm/consistent.c
+++ b/arch/microblaze/mm/consistent.c
@@ -49,11 +49,4 @@ void *uncached_kernel_address(void *ptr)
 		pr_warn("ERROR: Your cache coherent area is CACHED!!!\n");
 	return (void *)addr;
 }
-
-void *cached_kernel_address(void *ptr)
-{
-	unsigned long addr = (unsigned long)ptr;
-
-	return (void *)(addr & ~UNCACHED_SHADOW_MASK);
-}
 #endif /* CONFIG_MMU */
diff --git a/arch/mips/mm/dma-noncoherent.c b/arch/mips/mm/dma-noncoherent.c
index dc42ffc83825..77dce28ad0a0 100644
--- a/arch/mips/mm/dma-noncoherent.c
+++ b/arch/mips/mm/dma-noncoherent.c
@@ -54,11 +54,6 @@ void *uncached_kernel_address(void *addr)
 	return (void *)(__pa(addr) + UNCAC_BASE);
 }
 
-void *cached_kernel_address(void *addr)
-{
-	return __va(addr) - UNCAC_BASE;
-}
-
 static inline void dma_sync_virt(void *addr, size_t size,
 		enum dma_data_direction dir)
 {
diff --git a/arch/nios2/mm/dma-mapping.c b/arch/nios2/mm/dma-mapping.c
index 0ed711e37902..f30f2749257c 100644
--- a/arch/nios2/mm/dma-mapping.c
+++ b/arch/nios2/mm/dma-mapping.c
@@ -75,13 +75,3 @@ void *uncached_kernel_address(void *ptr)
 
 	return (void *)ptr;
 }
-
-void *cached_kernel_address(void *ptr)
-{
-	unsigned long addr = (unsigned long)ptr;
-
-	addr &= ~CONFIG_NIOS2_IO_REGION_BASE;
-	addr |= CONFIG_NIOS2_KERNEL_REGION_BASE;
-
-	return (void *)ptr;
-}
diff --git a/arch/xtensa/kernel/pci-dma.c b/arch/xtensa/kernel/pci-dma.c
index 72b6222daa0b..6a685545d5c9 100644
--- a/arch/xtensa/kernel/pci-dma.c
+++ b/arch/xtensa/kernel/pci-dma.c
@@ -88,18 +88,12 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
 
 /*
  * Memory caching is platform-dependent in noMMU xtensa configurations.
- * The following two functions should be implemented in platform code
- * in order to enable coherent DMA memory operations when CONFIG_MMU is not
- * enabled.
+ * This function should be implemented in platform code in order to enable
+ * coherent DMA memory operations when CONFIG_MMU is not enabled.
  */
 #ifdef CONFIG_MMU
 void *uncached_kernel_address(void *p)
 {
 	return p + XCHAL_KSEG_BYPASS_VADDR - XCHAL_KSEG_CACHED_VADDR;
 }
-
-void *cached_kernel_address(void *p)
-{
-	return p + XCHAL_KSEG_CACHED_VADDR - XCHAL_KSEG_BYPASS_VADDR;
-}
 #endif /* CONFIG_MMU */
diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index ca9b5770caee..b6b72e19b0cd 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -109,6 +109,5 @@ static inline void arch_dma_prep_coherent(struct page *page, size_t size)
 #endif /* CONFIG_ARCH_HAS_DMA_PREP_COHERENT */
 
 void *uncached_kernel_address(void *addr);
-void *cached_kernel_address(void *addr);
 
 #endif /* _LINUX_DMA_NONCOHERENT_H */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
