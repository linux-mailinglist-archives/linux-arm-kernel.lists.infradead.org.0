Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC318FBF9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 09:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ByYXaqPcs/EoEhYpEYpS1WWVhxGviSJ1EAIsFEqv6Ao=; b=E4MBXUsmz4T0+O
	MxFvZzuVaz72Rn/NUK21jLo7NTQs19x0T5lBloZPieTvMYtqfmDsJ12nS0bME1cPK5/FiW1rvPc9F
	2EXSh6UgI7hfYfQEnnpzgqgYsXbgzUR1AOtn9YDb7+hFhvOway2QDwoKopDdKmukpAkvxClIMa0nO
	DyizVlQ3aJDYf1rAPxNRWdC0sADt5bgElRX3/JcZr3fzWAJWyHrLLnrcsqbFQ6jUw9x9tailNkk3j
	/bzh5cynRMg4wt1vcdOZrxsstIqGNqQkquRUg9KjuRe+nxXOyG1Cp23Oc2+jc9ZtO7I4e4ukjYY+z
	pCkwCVxB5HbEttinz8HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyWW5-0001Il-PI; Fri, 16 Aug 2019 07:19:17 +0000
Received: from 089144199030.atnat0008.highway.a1.net ([89.144.199.30]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hyWVq-0001IS-66; Fri, 16 Aug 2019 07:19:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 4/6] dma-mapping: remove arch_dma_mmap_pgprot
Date: Fri, 16 Aug 2019 09:07:52 +0200
Message-Id: <20190816070754.15653-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816070754.15653-1-hch@lst.de>
References: <20190816070754.15653-1-hch@lst.de>
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
Cc: Shawn Anastasio <shawn@anastas.io>, Will Deacon <will@kernel.org>,
 linux-m68k@lists.linux-m68k.org, Guan Xuetao <gxt@pku.edu.cn>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arch_dma_mmap_pgprot is used for two things:

 1) to override the "normal" uncached page attributes for mapping
    memory coherent to devices that can't snoop the CPU caches
 2) to provide the special DMA_ATTR_WRITE_COMBINE semantics on older
    arm systems

Replace one with the pgprot_dmacoherent macro that is already provided
by arm and much simpler to use, and lift the DMA_ATTR_WRITE_COMBINE
handling to common code with an explicit arch opt-in.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/Kconfig                   |  1 +
 arch/arm/mm/Kconfig                |  1 -
 arch/arm/mm/dma-mapping.c          |  6 ------
 arch/arm64/Kconfig                 |  1 -
 arch/arm64/include/asm/pgtable.h   |  4 ++++
 arch/arm64/mm/dma-mapping.c        |  6 ------
 arch/m68k/Kconfig                  |  1 -
 arch/m68k/include/asm/pgtable_mm.h |  3 +++
 arch/m68k/kernel/dma.c             |  3 +--
 include/linux/dma-noncoherent.h    | 13 +++++++++++--
 kernel/dma/Kconfig                 | 14 +++++++++++---
 kernel/dma/mapping.c               |  8 +++++---
 12 files changed, 36 insertions(+), 25 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..e172fba1e8fd 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -7,6 +7,7 @@ config ARM
 	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
+	select ARCH_HAS_DMA_WRITE_COMBINE if !ARM_DMA_MEM_BUFFERABLE
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FORTIFY_SOURCE
 	select ARCH_HAS_KEEPINITRD
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index c54cd7ed90ba..0609c9e2191b 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -665,7 +665,6 @@ config ARM_LPAE
 	select PHYS_ADDR_T_64BIT
 	select SWIOTLB
 	select ARCH_HAS_DMA_COHERENT_TO_PFN
-	select ARCH_HAS_DMA_MMAP_PGPROT
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
 	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	help
diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index d42557ee69c2..d27b12f61737 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -2402,12 +2402,6 @@ long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
 	return dma_to_pfn(dev, dma_addr);
 }
 
-pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
-		unsigned long attrs)
-{
-	return __get_dma_pgprot(attrs, prot);
-}
-
 void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 		gfp_t gfp, unsigned long attrs)
 {
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..dab9dda34206 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -13,7 +13,6 @@ config ARM64
 	select ARCH_HAS_DEBUG_VIRTUAL
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_DMA_COHERENT_TO_PFN
-	select ARCH_HAS_DMA_MMAP_PGPROT
 	select ARCH_HAS_DMA_PREP_COHERENT
 	select ARCH_HAS_ACPI_TABLE_UPGRADE if ACPI
 	select ARCH_HAS_ELF_RANDOMIZE
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index e09760ece844..6700371227d1 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -435,6 +435,10 @@ static inline pmd_t pmd_mkdevmap(pmd_t pmd)
 	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_NORMAL_NC) | PTE_PXN | PTE_UXN)
 #define pgprot_device(prot) \
 	__pgprot_modify(prot, PTE_ATTRINDX_MASK, PTE_ATTRINDX(MT_DEVICE_nGnRE) | PTE_PXN | PTE_UXN)
+#define pgprot_dmacoherent(prot) \
+	__pgprot_modify(prot, PTE_ATTRINDX_MASK, \
+			PTE_ATTRINDX(MT_NORMAL_NC) | PTE_PXN | PTE_UXN)
+
 #define __HAVE_PHYS_MEM_ACCESS_PROT
 struct file;
 extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index bd2b039f43a6..676efcda51e6 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -11,12 +11,6 @@
 
 #include <asm/cacheflush.h>
 
-pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
-		unsigned long attrs)
-{
-	return pgprot_writecombine(prot);
-}
-
 void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
 		size_t size, enum dma_data_direction dir)
 {
diff --git a/arch/m68k/Kconfig b/arch/m68k/Kconfig
index c518d695c376..a9e564306d3e 100644
--- a/arch/m68k/Kconfig
+++ b/arch/m68k/Kconfig
@@ -4,7 +4,6 @@ config M68K
 	default y
 	select ARCH_32BIT_OFF_T
 	select ARCH_HAS_BINFMT_FLAT
-	select ARCH_HAS_DMA_MMAP_PGPROT if MMU && !COLDFIRE
 	select ARCH_HAS_DMA_PREP_COHERENT if HAS_DMA && MMU && !COLDFIRE
 	select ARCH_HAS_SYNC_DMA_FOR_DEVICE if HAS_DMA
 	select ARCH_MIGHT_HAVE_PC_PARPORT if ISA
diff --git a/arch/m68k/include/asm/pgtable_mm.h b/arch/m68k/include/asm/pgtable_mm.h
index fe3ddd73a0cc..fde4534b974f 100644
--- a/arch/m68k/include/asm/pgtable_mm.h
+++ b/arch/m68k/include/asm/pgtable_mm.h
@@ -169,6 +169,9 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 	    ? (__pgprot((pgprot_val(prot) & _CACHEMASK040) | _PAGE_NOCACHE_S))	\
 	    : (prot)))
 
+pgprot_t pgprot_dmacoherent(pgprot_t prot);
+#define pgprot_dmacoherent(prot)	pgprot_dmacoherent(prot)
+
 #endif /* CONFIG_COLDFIRE */
 #include <asm-generic/pgtable.h>
 #endif /* !__ASSEMBLY__ */
diff --git a/arch/m68k/kernel/dma.c b/arch/m68k/kernel/dma.c
index 30cd59caf037..35064150e348 100644
--- a/arch/m68k/kernel/dma.c
+++ b/arch/m68k/kernel/dma.c
@@ -23,8 +23,7 @@ void arch_dma_prep_coherent(struct page *page, size_t size)
 	cache_push(page_to_phys(page), size);
 }
 
-pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
-		unsigned long attrs)
+pgprot_t pgprot_dmacoherent(pgprot_t prot)
 {
 	if (CPU_IS_040_OR_060) {
 		pgprot_val(prot) &= ~_PAGE_CACHE040;
diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index 0bff3d7fac92..dd3de6d88fc0 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -3,6 +3,7 @@
 #define _LINUX_DMA_NONCOHERENT_H 1
 
 #include <linux/dma-mapping.h>
+#include <asm/pgtable.h>
 
 #ifdef CONFIG_ARCH_HAS_DMA_COHERENCE_H
 #include <asm/dma-coherence.h>
@@ -42,10 +43,18 @@ void arch_dma_free(struct device *dev, size_t size, void *cpu_addr,
 		dma_addr_t dma_addr, unsigned long attrs);
 long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
 		dma_addr_t dma_addr);
-pgprot_t arch_dma_mmap_pgprot(struct device *dev, pgprot_t prot,
-		unsigned long attrs);
 
 #ifdef CONFIG_MMU
+/*
+ * Page protection so that devices that can't snoop CPU caches can use the
+ * memory coherently.  We default to pgprot_noncached which is usually used
+ * for ioremap as a safe bet, but architectures can override this with less
+ * strict semantics if possible.
+ */
+#ifndef pgprot_dmacoherent
+#define pgprot_dmacoherent(prot)	pgprot_noncached(prot)
+#endif
+
 pgprot_t dma_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs);
 #else
 static inline pgprot_t dma_pgprot(struct device *dev, pgprot_t prot,
diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
index 9decbba255fc..49148c207563 100644
--- a/kernel/dma/Kconfig
+++ b/kernel/dma/Kconfig
@@ -20,6 +20,17 @@ config ARCH_HAS_DMA_COHERENCE_H
 config ARCH_HAS_DMA_SET_MASK
 	bool
 
+#
+# Select this option if the architecture needs special handling for
+# DMA_ATTR_WRITE_COMBINE.  Normally the "uncached" mapping should be
+# what people thing of when saying write combine, but on old arm
+# platforms the write combine semantics are not well defined and thus
+# not enabled by default.  You probably do not want to enable this for
+# any new port.
+#
+config ARCH_HAS_DMA_WRITE_COMBINE
+	bool
+
 config DMA_DECLARE_COHERENT
 	bool
 
@@ -45,9 +56,6 @@ config ARCH_HAS_DMA_PREP_COHERENT
 config ARCH_HAS_DMA_COHERENT_TO_PFN
 	bool
 
-config ARCH_HAS_DMA_MMAP_PGPROT
-	bool
-
 config ARCH_HAS_FORCE_DMA_UNENCRYPTED
 	bool
 
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index b0038ca3aa92..1b96616c9f20 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -161,9 +161,11 @@ pgprot_t dma_pgprot(struct device *dev, pgprot_t prot, unsigned long attrs)
 	    (IS_ENABLED(CONFIG_DMA_NONCOHERENT_CACHE_SYNC) &&
              (attrs & DMA_ATTR_NON_CONSISTENT)))
 		return prot;
-	if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_MMAP_PGPROT))
-		return arch_dma_mmap_pgprot(dev, prot, attrs);
-	return pgprot_noncached(prot);
+#ifdef CONFIG_ARCH_HAS_DMA_WRITE_COMBINE
+	if (attrs & DMA_ATTR_WRITE_COMBINE)
+		return pgprot_writecombine(prot);
+#endif
+	return pgprot_dmacoherent(prot);
 }
 #endif /* CONFIG_MMU */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
