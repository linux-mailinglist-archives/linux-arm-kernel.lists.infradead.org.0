Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F94D28080
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSxRmMqhYfgdFk5OmkOtNV5dFYwiotN8DiOmTzdmaZA=; b=u+3tpeM/WPX9lv
	SmWSn3VZB5yEXJpTp6Sdq1bP7QEjVq01V/u55X4m+RLM4pSqAX6ZDfVJn03TR0V0NRFH3qlmU0j4W
	tv9Xs8dZgCVq902h/zfeoF2RZGhG0nIYXbB2JTNiR4AzOMKgIgPDwfwaj5wbraiCbhK2xu3UExR2V
	MdF7kwadOL4YqX8WiIa/g06+YHubC37xvsLfbMG2K7zRgcydvZiqLcutAqm8pT0U21z+GQkTUWOxw
	7HmnukJXQLlgcPZ88YjKnmbSiLUH9JRUku3xnrvaQVcivwns26+wtzeAQnlvk00W3GNFL/5ZN2J4A
	PoRfKnSfaN+pj8CsYb/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpGK-0002Sm-Nh; Thu, 23 May 2019 15:04:08 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpFk-0001rw-9n
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:03:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BF3AA15AB;
 Thu, 23 May 2019 08:03:31 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7E2B83F690;
 Thu, 23 May 2019 08:03:29 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 3/4] mm: introduce ARCH_HAS_PTE_DEVMAP
Date: Thu, 23 May 2019 16:03:15 +0100
Message-Id: <87554aa78478a02a63f2c4cf60a847279ae3eb3b.1558547956.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1558547956.git.robin.murphy@arm.com>
References: <cover.1558547956.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_080332_396828_BFEBCD56 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ira Weiny <ira.weiny@intel.com>, anshuman.khandual@arm.com,
 catalin.marinas@arm.com, x86@kernel.org, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Oliver O'Halloran <oohall@gmail.com>,
 Michael Ellerman <mpe@ellerman.id.au>, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ARCH_HAS_ZONE_DEVICE is somewhat meaningless in itself, and combined
with the long-out-of-date comment can lead to the impression than an
architecture may just enable it (since __add_pages() now "comprehends
device memory" for itself) and expect things to work.

In practice, however, ZONE_DEVICE users have little chance of
functioning correctly without __HAVE_ARCH_PTE_DEVMAP, so let's clean
that up the same way as ARCH_HAS_PTE_SPECIAL and make it the proper
dependency so the real situation is clearer.

Cc: x86@kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: Michael Ellerman <mpe@ellerman.id.au>
Acked-by: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Ira Weiny <ira.weiny@intel.com>
Acked-by: Oliver O'Halloran <oohall@gmail.com>
Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/powerpc/Kconfig                         | 2 +-
 arch/powerpc/include/asm/book3s/64/pgtable.h | 1 -
 arch/x86/Kconfig                             | 2 +-
 arch/x86/include/asm/pgtable.h               | 4 ++--
 arch/x86/include/asm/pgtable_types.h         | 1 -
 include/linux/mm.h                           | 4 ++--
 include/linux/pfn_t.h                        | 4 ++--
 mm/Kconfig                                   | 5 ++---
 mm/gup.c                                     | 2 +-
 9 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/arch/powerpc/Kconfig b/arch/powerpc/Kconfig
index 8c1c636308c8..1120ff8ac715 100644
--- a/arch/powerpc/Kconfig
+++ b/arch/powerpc/Kconfig
@@ -128,6 +128,7 @@ config PPC
 	select ARCH_HAS_MMIOWB			if PPC64
 	select ARCH_HAS_PHYS_TO_DMA
 	select ARCH_HAS_PMEM_API                if PPC64
+	select ARCH_HAS_PTE_DEVMAP		if PPC_BOOK3S_64
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_MEMBARRIER_CALLBACKS
 	select ARCH_HAS_SCALED_CPUTIME		if VIRT_CPU_ACCOUNTING_NATIVE && PPC64
@@ -135,7 +136,6 @@ config PPC
 	select ARCH_HAS_TICK_BROADCAST		if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_HAS_UACCESS_FLUSHCACHE	if PPC64
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
-	select ARCH_HAS_ZONE_DEVICE		if PPC_BOOK3S_64
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_KEEP_MEMBLOCK
 	select ARCH_MIGHT_HAVE_PC_PARPORT
diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
index 7dede2e34b70..c6c2bdfb369b 100644
--- a/arch/powerpc/include/asm/book3s/64/pgtable.h
+++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
@@ -90,7 +90,6 @@
 #define _PAGE_SOFT_DIRTY	_RPAGE_SW3 /* software: software dirty tracking */
 #define _PAGE_SPECIAL		_RPAGE_SW2 /* software: special page */
 #define _PAGE_DEVMAP		_RPAGE_SW1 /* software: ZONE_DEVICE page */
-#define __HAVE_ARCH_PTE_DEVMAP
 
 /*
  * Drivers request for cache inhibited pte mapping using _PAGE_NO_CACHE
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 2bbbd4d1ba31..57c4e80bd368 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -69,6 +69,7 @@ config X86
 	select ARCH_HAS_KCOV			if X86_64
 	select ARCH_HAS_MEMBARRIER_SYNC_CORE
 	select ARCH_HAS_PMEM_API		if X86_64
+	select ARCH_HAS_PTE_DEVMAP		if X86_64
 	select ARCH_HAS_PTE_SPECIAL
 	select ARCH_HAS_REFCOUNT
 	select ARCH_HAS_UACCESS_FLUSHCACHE	if X86_64
@@ -79,7 +80,6 @@ config X86
 	select ARCH_HAS_STRICT_MODULE_RWX
 	select ARCH_HAS_SYNC_CORE_BEFORE_USERMODE
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
-	select ARCH_HAS_ZONE_DEVICE		if X86_64
 	select ARCH_HAVE_NMI_SAFE_CMPXCHG
 	select ARCH_MIGHT_HAVE_ACPI_PDC		if ACPI
 	select ARCH_MIGHT_HAVE_PC_PARPORT
diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
index 5e0509b41986..0bc530c4eb13 100644
--- a/arch/x86/include/asm/pgtable.h
+++ b/arch/x86/include/asm/pgtable.h
@@ -271,7 +271,7 @@ static inline int has_transparent_hugepage(void)
 	return boot_cpu_has(X86_FEATURE_PSE);
 }
 
-#ifdef __HAVE_ARCH_PTE_DEVMAP
+#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
 static inline int pmd_devmap(pmd_t pmd)
 {
 	return !!(pmd_val(pmd) & _PAGE_DEVMAP);
@@ -732,7 +732,7 @@ static inline int pte_present(pte_t a)
 	return pte_flags(a) & (_PAGE_PRESENT | _PAGE_PROTNONE);
 }
 
-#ifdef __HAVE_ARCH_PTE_DEVMAP
+#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
 static inline int pte_devmap(pte_t a)
 {
 	return (pte_flags(a) & _PAGE_DEVMAP) == _PAGE_DEVMAP;
diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
index d6ff0bbdb394..b5e49e6bac63 100644
--- a/arch/x86/include/asm/pgtable_types.h
+++ b/arch/x86/include/asm/pgtable_types.h
@@ -103,7 +103,6 @@
 #if defined(CONFIG_X86_64) || defined(CONFIG_X86_PAE)
 #define _PAGE_NX	(_AT(pteval_t, 1) << _PAGE_BIT_NX)
 #define _PAGE_DEVMAP	(_AT(u64, 1) << _PAGE_BIT_DEVMAP)
-#define __HAVE_ARCH_PTE_DEVMAP
 #else
 #define _PAGE_NX	(_AT(pteval_t, 0))
 #define _PAGE_DEVMAP	(_AT(pteval_t, 0))
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 9cd613a7f67b..f61c016de005 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -536,7 +536,7 @@ static inline void vma_set_anonymous(struct vm_area_struct *vma)
 struct mmu_gather;
 struct inode;
 
-#if !defined(__HAVE_ARCH_PTE_DEVMAP) || !defined(CONFIG_TRANSPARENT_HUGEPAGE)
+#if !defined(CONFIG_ARCH_HAS_PTE_DEVMAP) || !defined(CONFIG_TRANSPARENT_HUGEPAGE)
 static inline int pmd_devmap(pmd_t pmd)
 {
 	return 0;
@@ -1754,7 +1754,7 @@ static inline void sync_mm_rss(struct mm_struct *mm)
 }
 #endif
 
-#ifndef __HAVE_ARCH_PTE_DEVMAP
+#ifndef CONFIG_ARCH_HAS_PTE_DEVMAP
 static inline int pte_devmap(pte_t pte)
 {
 	return 0;
diff --git a/include/linux/pfn_t.h b/include/linux/pfn_t.h
index 7bb77850c65a..de8bc66b10a4 100644
--- a/include/linux/pfn_t.h
+++ b/include/linux/pfn_t.h
@@ -104,7 +104,7 @@ static inline pud_t pfn_t_pud(pfn_t pfn, pgprot_t pgprot)
 #endif
 #endif
 
-#ifdef __HAVE_ARCH_PTE_DEVMAP
+#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
 static inline bool pfn_t_devmap(pfn_t pfn)
 {
 	const u64 flags = PFN_DEV|PFN_MAP;
@@ -122,7 +122,7 @@ pmd_t pmd_mkdevmap(pmd_t pmd);
 	defined(CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD)
 pud_t pud_mkdevmap(pud_t pud);
 #endif
-#endif /* __HAVE_ARCH_PTE_DEVMAP */
+#endif /* CONFIG_ARCH_HAS_PTE_DEVMAP */
 
 #ifdef CONFIG_ARCH_HAS_PTE_SPECIAL
 static inline bool pfn_t_special(pfn_t pfn)
diff --git a/mm/Kconfig b/mm/Kconfig
index ee8d1f311858..3aeef0442d03 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -647,8 +647,7 @@ config IDLE_PAGE_TRACKING
 	  See Documentation/admin-guide/mm/idle_page_tracking.rst for
 	  more details.
 
-# arch_add_memory() comprehends device memory
-config ARCH_HAS_ZONE_DEVICE
+config ARCH_HAS_PTE_DEVMAP
 	bool
 
 config ZONE_DEVICE
@@ -656,7 +655,7 @@ config ZONE_DEVICE
 	depends on MEMORY_HOTPLUG
 	depends on MEMORY_HOTREMOVE
 	depends on SPARSEMEM_VMEMMAP
-	depends on ARCH_HAS_ZONE_DEVICE
+	depends on ARCH_HAS_PTE_DEVMAP
 	select XARRAY_MULTI
 
 	help
diff --git a/mm/gup.c b/mm/gup.c
index 2c08248d4fa2..777010ca3bf0 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1799,7 +1799,7 @@ static int gup_pte_range(pmd_t pmd, unsigned long addr, unsigned long end,
 }
 #endif /* CONFIG_ARCH_HAS_PTE_SPECIAL */
 
-#if defined(__HAVE_ARCH_PTE_DEVMAP) && defined(CONFIG_TRANSPARENT_HUGEPAGE)
+#if defined(CONFIG_ARCH_HAS_PTE_DEVMAP) && defined(CONFIG_TRANSPARENT_HUGEPAGE)
 static int __gup_device_huge(unsigned long pfn, unsigned long addr,
 		unsigned long end, struct page **pages, int *nr)
 {
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
