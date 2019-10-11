Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445FDD3957
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 08:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mxF9Z9nyJ4AF6FG8ZXzIyy7Kzu3rY8t/iLGKpP7XJs0=; b=m/9Clhv4aQGx7fOcEjJU/9UsmY
	XrNIsQnG5NkY92XL39GPZ0DSfGjLFrVOf1NjJw3Mf5OGWS/YWtGD6gXKwIxadPG51sG7Yc2QawK3I
	AoS/PjFPRR7qvX5EHoPtqr1YSn8HWUBll2lVD/YU8fpUeRZ//5ZxUZhWmh1dk+o/wjJXTfFi/yE+5
	vSpNsZQq2KgcgDmGOHKHUd9KInfoGxj+JgGLQUylQBZjZqWpl9a4W44JHYPxWjdOsL+1EkSrj/5OA
	CSoklko4mFvjLzi6SQ0WKLWjDn00aaOrfRkKB8TGi/ShXuQMqqllfzY4/U3OdP4ziyW6WFsSdZA3x
	Xb80sU2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIoNX-0002IX-QC; Fri, 11 Oct 2019 06:26:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIoNG-0002Af-L3; Fri, 11 Oct 2019 06:26:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC0211570;
 Thu, 10 Oct 2019 23:26:01 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.41.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CB4EF3F86F;
 Thu, 10 Oct 2019 23:28:31 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V5 2/2] mm/debug: Add tests validating architecture page table
 helpers
Date: Fri, 11 Oct 2019 11:55:42 +0530
Message-Id: <1570775142-31425-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570775142-31425-1-git-send-email-anshuman.khandual@arm.com>
References: <1570775142-31425-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_232603_113495_F50C0194 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds tests which will validate architecture page table helpers and
other accessors in their compliance with expected generic MM semantics.
This will help various architectures in validating changes to existing
page table helpers or addition of new ones.

Test page table and memory pages creating it's entries at various level are
all allocated from system memory with required size and alignments. But if
memory pages with required size and alignment could not be allocated, then
all depending individual tests are just skipped afterwards. This test gets
called right after init_mm_internals() required for alloc_contig_range() to
work correctly.

This gets build and run when CONFIG_DEBUG_VM_PGTABLE is selected along with
CONFIG_VM_DEBUG. Architectures willing to subscribe this test also need to
select CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE which for now is limited to x86 and
arm64. Going forward, other architectures too can enable this after fixing
build or runtime problems (if any) with their page table helpers.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Steven Price <Steven.Price@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Sri Krishna chowdary <schowdary@nvidia.com>
Cc: Dave Hansen <dave.hansen@intel.com>
Cc: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: James Hogan <jhogan@kernel.org>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org

Tested-by: Christophe Leroy <christophe.leroy@c-s.fr>		#PPC32
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 .../debug/debug-vm-pgtable/arch-support.txt        |  34 ++
 arch/arm64/Kconfig                                 |   1 +
 arch/x86/Kconfig                                   |   1 +
 arch/x86/include/asm/pgtable_64.h                  |   6 +
 include/asm-generic/pgtable.h                      |   6 +
 init/main.c                                        |   1 +
 lib/Kconfig.debug                                  |  21 +
 mm/Makefile                                        |   1 +
 mm/debug_vm_pgtable.c                              | 438 +++++++++++++++++++++
 9 files changed, 509 insertions(+)
 create mode 100644 Documentation/features/debug/debug-vm-pgtable/arch-support.txt
 create mode 100644 mm/debug_vm_pgtable.c

diff --git a/Documentation/features/debug/debug-vm-pgtable/arch-support.txt b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
new file mode 100644
index 0000000..d6b8185
--- /dev/null
+++ b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
@@ -0,0 +1,34 @@
+#
+# Feature name:          debug-vm-pgtable
+#         Kconfig:       ARCH_HAS_DEBUG_VM_PGTABLE
+#         description:   arch supports pgtable tests for semantics compliance
+#
+    -----------------------
+    |         arch |status|
+    -----------------------
+    |       alpha: | TODO |
+    |         arc: | TODO |
+    |         arm: | TODO |
+    |       arm64: |  ok  |
+    |         c6x: | TODO |
+    |        csky: | TODO |
+    |       h8300: | TODO |
+    |     hexagon: | TODO |
+    |        ia64: | TODO |
+    |        m68k: | TODO |
+    |  microblaze: | TODO |
+    |        mips: | TODO |
+    |       nds32: | TODO |
+    |       nios2: | TODO |
+    |    openrisc: | TODO |
+    |      parisc: | TODO |
+    |     powerpc: | TODO |
+    |       riscv: | TODO |
+    |        s390: | TODO |
+    |          sh: | TODO |
+    |       sparc: | TODO |
+    |          um: | TODO |
+    |   unicore32: | TODO |
+    |         x86: |  ok  |
+    |      xtensa: | TODO |
+    -----------------------
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 950a56b..8a3b3ea 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -11,6 +11,7 @@ config ARM64
 	select ACPI_PPTT if ACPI
 	select ARCH_CLOCKSOURCE_DATA
 	select ARCH_HAS_DEBUG_VIRTUAL
+	select ARCH_HAS_DEBUG_VM_PGTABLE
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_DMA_COHERENT_TO_PFN
 	select ARCH_HAS_DMA_PREP_COHERENT
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index abe822d..13c9bd9 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -61,6 +61,7 @@ config X86
 	select ARCH_CLOCKSOURCE_INIT
 	select ARCH_HAS_ACPI_TABLE_UPGRADE	if ACPI
 	select ARCH_HAS_DEBUG_VIRTUAL
+	select ARCH_HAS_DEBUG_VM_PGTABLE
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FAST_MULTIPLIER
diff --git a/arch/x86/include/asm/pgtable_64.h b/arch/x86/include/asm/pgtable_64.h
index 0b6c4042..fb0e76d 100644
--- a/arch/x86/include/asm/pgtable_64.h
+++ b/arch/x86/include/asm/pgtable_64.h
@@ -53,6 +53,12 @@ static inline void sync_initial_page_table(void) { }
 
 struct mm_struct;
 
+#define mm_p4d_folded mm_p4d_folded
+static inline bool mm_p4d_folded(struct mm_struct *mm)
+{
+	return !pgtable_l5_enabled();
+}
+
 void set_pte_vaddr_p4d(p4d_t *p4d_page, unsigned long vaddr, pte_t new_pte);
 void set_pte_vaddr_pud(pud_t *pud_page, unsigned long vaddr, pte_t new_pte);
 
diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
index 8186918..9e5c248 100644
--- a/include/asm-generic/pgtable.h
+++ b/include/asm-generic/pgtable.h
@@ -1187,4 +1187,10 @@ static inline bool arch_has_pfn_modify_check(void)
 #define mm_pmd_folded(mm)	__is_defined(__PAGETABLE_PMD_FOLDED)
 #endif
 
+#ifdef CONFIG_DEBUG_VM_PGTABLE
+extern void debug_vm_pgtable(void);
+#else
+static inline void debug_vm_pgtable(void) { }
+#endif
+
 #endif /* _ASM_GENERIC_PGTABLE_H */
diff --git a/init/main.c b/init/main.c
index 91f6ebb..676d8020 100644
--- a/init/main.c
+++ b/init/main.c
@@ -1177,6 +1177,7 @@ static noinline void __init kernel_init_freeable(void)
 	workqueue_init();
 
 	init_mm_internals();
+	debug_vm_pgtable();
 
 	do_pre_smp_initcalls();
 	lockup_detector_init();
diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index cb1fc48..b9b8fe1 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -698,6 +698,27 @@ config DEBUG_VM_PGFLAGS
 
 	  If unsure, say N.
 
+config ARCH_HAS_DEBUG_VM_PGTABLE
+	bool
+	help
+	  An architecture should select this when it can successfully
+	  build and run DEBUG_VM_PGTABLE.
+
+config DEBUG_VM_PGTABLE
+	bool "Debug arch page table for semantics compliance"
+	depends on MMU
+	depends on DEBUG_VM
+	depends on ARCH_HAS_DEBUG_VM_PGTABLE
+	help
+	  This option provides a debug method which can be used to test
+	  architecture page table helper functions on various platforms in
+	  verifying if they comply with expected generic MM semantics. This
+	  will help architecture code in making sure that any changes or
+	  new additions of these helpers still conform to expected
+	  semantics of the generic MM.
+
+	  If unsure, say N.
+
 config ARCH_HAS_DEBUG_VIRTUAL
 	bool
 
diff --git a/mm/Makefile b/mm/Makefile
index d996846..2f085b9 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -86,6 +86,7 @@ obj-$(CONFIG_HWPOISON_INJECT) += hwpoison-inject.o
 obj-$(CONFIG_DEBUG_KMEMLEAK) += kmemleak.o
 obj-$(CONFIG_DEBUG_KMEMLEAK_TEST) += kmemleak-test.o
 obj-$(CONFIG_DEBUG_RODATA_TEST) += rodata_test.o
+obj-$(CONFIG_DEBUG_VM_PGTABLE) += debug_vm_pgtable.o
 obj-$(CONFIG_PAGE_OWNER) += page_owner.o
 obj-$(CONFIG_CLEANCACHE) += cleancache.o
 obj-$(CONFIG_MEMORY_ISOLATION) += page_isolation.o
diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
new file mode 100644
index 0000000..885d1e5
--- /dev/null
+++ b/mm/debug_vm_pgtable.c
@@ -0,0 +1,438 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * This kernel module validates architecture page table helpers &
+ * accessors and helps in verifying their continued compliance with
+ * generic MM semantics.
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ *
+ * Author: Anshuman Khandual <anshuman.khandual@arm.com>
+ */
+#define pr_fmt(fmt) "arch_pgtable_test: %s " fmt, __func__
+
+#include <linux/gfp.h>
+#include <linux/highmem.h>
+#include <linux/hugetlb.h>
+#include <linux/kernel.h>
+#include <linux/kconfig.h>
+#include <linux/mm.h>
+#include <linux/mman.h>
+#include <linux/mm_types.h>
+#include <linux/module.h>
+#include <linux/pfn_t.h>
+#include <linux/printk.h>
+#include <linux/random.h>
+#include <linux/spinlock.h>
+#include <linux/swap.h>
+#include <linux/swapops.h>
+#include <linux/sched/mm.h>
+#include <asm/pgalloc.h>
+#include <asm/pgtable.h>
+
+/*
+ * Basic operations
+ *
+ * mkold(entry)			= An old and not a young entry
+ * mkyoung(entry)		= A young and not an old entry
+ * mkdirty(entry)		= A dirty and not a clean entry
+ * mkclean(entry)		= A clean and not a dirty entry
+ * mkwrite(entry)		= A write and not a write protected entry
+ * wrprotect(entry)		= A write protected and not a write entry
+ * pxx_bad(entry)		= A mapped and non-table entry
+ * pxx_same(entry1, entry2)	= Both entries hold the exact same value
+ */
+#define VMFLAGS	(VM_READ|VM_WRITE|VM_EXEC)
+
+/*
+ * On s390 platform, the lower 12 bits are used to identify given page table
+ * entry type and for other arch specific requirements. But these bits might
+ * affect the ability to clear entries with pxx_clear(). So while loading up
+ * the entries skip all lower 12 bits in order to accommodate s390 platform.
+ * It does not have affect any other platform.
+ */
+#define RANDOM_ORVALUE	(0xfffffffffffff000UL)
+#define RANDOM_NZVALUE	(0xff)
+
+static bool pud_aligned __initdata;
+static bool pmd_aligned __initdata;
+
+static void __init pte_basic_tests(struct page *page, pgprot_t prot)
+{
+	pte_t pte = mk_pte(page, prot);
+
+	WARN_ON(!pte_same(pte, pte));
+	WARN_ON(!pte_young(pte_mkyoung(pte)));
+	WARN_ON(!pte_dirty(pte_mkdirty(pte)));
+	WARN_ON(!pte_write(pte_mkwrite(pte)));
+	WARN_ON(pte_young(pte_mkold(pte)));
+	WARN_ON(pte_dirty(pte_mkclean(pte)));
+	WARN_ON(pte_write(pte_wrprotect(pte)));
+}
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE
+static void __init pmd_basic_tests(struct page *page, pgprot_t prot)
+{
+	pmd_t pmd;
+
+	/*
+	 * Memory block here must be PMD_SIZE aligned. Abort this
+	 * test in case we could not allocate such a memory block.
+	 */
+	if (!pmd_aligned) {
+		pr_warn("Could not proceed with PMD tests\n");
+		return;
+	}
+
+	pmd = mk_pmd(page, prot);
+	WARN_ON(!pmd_same(pmd, pmd));
+	WARN_ON(!pmd_young(pmd_mkyoung(pmd)));
+	WARN_ON(!pmd_dirty(pmd_mkdirty(pmd)));
+	WARN_ON(!pmd_write(pmd_mkwrite(pmd)));
+	WARN_ON(pmd_young(pmd_mkold(pmd)));
+	WARN_ON(pmd_dirty(pmd_mkclean(pmd)));
+	WARN_ON(pmd_write(pmd_wrprotect(pmd)));
+	/*
+	 * A huge page does not point to next level page table
+	 * entry. Hence this must qualify as pmd_bad().
+	 */
+	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
+}
+#else
+static void __init pmd_basic_tests(struct page *page, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+static void __init pud_basic_tests(struct page *page, pgprot_t prot)
+{
+	pud_t pud;
+
+	/*
+	 * Memory block here must be PUD_SIZE aligned. Abort this
+	 * test in case we could not allocate such a memory block.
+	 */
+	if (!pud_aligned) {
+		pr_warn("Could not proceed with PUD tests\n");
+		return;
+	}
+
+	pud = pfn_pud(page_to_pfn(page), prot);
+	WARN_ON(!pud_same(pud, pud));
+	WARN_ON(!pud_young(pud_mkyoung(pud)));
+	WARN_ON(!pud_write(pud_mkwrite(pud)));
+	WARN_ON(pud_write(pud_wrprotect(pud)));
+	WARN_ON(pud_young(pud_mkold(pud)));
+
+	if (mm_pmd_folded(mm) || __is_defined(ARCH_HAS_4LEVEL_HACK))
+		return;
+
+	/*
+	 * A huge page does not point to next level page table
+	 * entry. Hence this must qualify as pud_bad().
+	 */
+	WARN_ON(!pud_bad(pud_mkhuge(pud)));
+}
+#else
+static void __init pud_basic_tests(struct page *page, pgprot_t prot) { }
+#endif
+
+static void __init p4d_basic_tests(struct page *page, pgprot_t prot)
+{
+	p4d_t p4d;
+
+	memset(&p4d, RANDOM_NZVALUE, sizeof(p4d_t));
+	WARN_ON(!p4d_same(p4d, p4d));
+}
+
+static void __init pgd_basic_tests(struct page *page, pgprot_t prot)
+{
+	pgd_t pgd;
+
+	memset(&pgd, RANDOM_NZVALUE, sizeof(pgd_t));
+	WARN_ON(!pgd_same(pgd, pgd));
+}
+
+#ifndef __ARCH_HAS_4LEVEL_HACK
+static void __init pud_clear_tests(struct mm_struct *mm, pud_t *pudp)
+{
+	pud_t pud = READ_ONCE(*pudp);
+
+	if (mm_pmd_folded(mm))
+		return;
+
+	pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
+	WRITE_ONCE(*pudp, pud);
+	pud_clear(pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+}
+
+static void __init pud_populate_tests(struct mm_struct *mm, pud_t *pudp,
+				      pmd_t *pmdp)
+{
+	pud_t pud;
+
+	if (mm_pmd_folded(mm))
+		return;
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as pud_bad().
+	 */
+	pmd_clear(pmdp);
+	pud_clear(pudp);
+	pud_populate(mm, pudp, pmdp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(pud_bad(pud));
+}
+#else
+static void __init pud_clear_tests(struct mm_struct *mm, pud_t *pudp) { }
+static void __init pud_populate_tests(struct mm_struct *mm, pud_t *pudp,
+				      pmd_t *pmdp)
+{
+}
+#endif
+
+#ifndef __ARCH_HAS_5LEVEL_HACK
+static void __init p4d_clear_tests(struct mm_struct *mm, p4d_t *p4dp)
+{
+	p4d_t p4d = READ_ONCE(*p4dp);
+
+	if (mm_pud_folded(mm))
+		return;
+
+	p4d = __p4d(p4d_val(p4d) | RANDOM_ORVALUE);
+	WRITE_ONCE(*p4dp, p4d);
+	p4d_clear(p4dp);
+	p4d = READ_ONCE(*p4dp);
+	WARN_ON(!p4d_none(p4d));
+}
+
+static void __init p4d_populate_tests(struct mm_struct *mm, p4d_t *p4dp,
+				      pud_t *pudp)
+{
+	p4d_t p4d;
+
+	if (mm_pud_folded(mm))
+		return;
+
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as p4d_bad().
+	 */
+	pud_clear(pudp);
+	p4d_clear(p4dp);
+	p4d_populate(mm, p4dp, pudp);
+	p4d = READ_ONCE(*p4dp);
+	WARN_ON(p4d_bad(p4d));
+}
+
+static void __init pgd_clear_tests(struct mm_struct *mm, pgd_t *pgdp)
+{
+	pgd_t pgd = READ_ONCE(*pgdp);
+
+	if (mm_p4d_folded(mm))
+		return;
+
+	pgd = __pgd(pgd_val(pgd) | RANDOM_ORVALUE);
+	WRITE_ONCE(*pgdp, pgd);
+	pgd_clear(pgdp);
+	pgd = READ_ONCE(*pgdp);
+	WARN_ON(!pgd_none(pgd));
+}
+
+static void __init pgd_populate_tests(struct mm_struct *mm, pgd_t *pgdp,
+				      p4d_t *p4dp)
+{
+	pgd_t pgd;
+
+	if (mm_p4d_folded(mm))
+		return;
+
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as pgd_bad().
+	 */
+	p4d_clear(p4dp);
+	pgd_clear(pgdp);
+	pgd_populate(mm, pgdp, p4dp);
+	pgd = READ_ONCE(*pgdp);
+	WARN_ON(pgd_bad(pgd));
+}
+#else
+static void __init p4d_clear_tests(struct mm_struct *mm, p4d_t *p4dp) { }
+static void __init pgd_clear_tests(struct mm_struct *mm, pgd_t *pgdp) { }
+static void __init p4d_populate_tests(struct mm_struct *mm, p4d_t *p4dp,
+				      pud_t *pudp)
+{
+}
+static void __init pgd_populate_tests(struct mm_struct *mm, pgd_t *pgdp,
+				      p4d_t *p4dp)
+{
+}
+#endif
+
+static void __init pte_clear_tests(struct mm_struct *mm, pte_t *ptep)
+{
+	pte_t pte = READ_ONCE(*ptep);
+
+	pte = __pte(pte_val(pte) | RANDOM_ORVALUE);
+	WRITE_ONCE(*ptep, pte);
+	pte_clear(mm, 0, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!pte_none(pte));
+}
+
+static void __init pmd_clear_tests(struct mm_struct *mm, pmd_t *pmdp)
+{
+	pmd_t pmd = READ_ONCE(*pmdp);
+
+	pmd = __pmd(pmd_val(pmd) | RANDOM_ORVALUE);
+	WRITE_ONCE(*pmdp, pmd);
+	pmd_clear(pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+}
+
+static void __init pmd_populate_tests(struct mm_struct *mm, pmd_t *pmdp,
+				      pgtable_t pgtable)
+{
+	pmd_t pmd;
+
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as pmd_bad().
+	 */
+	pmd_clear(pmdp);
+	pmd_populate(mm, pmdp, pgtable);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(pmd_bad(pmd));
+}
+
+static struct page * __init alloc_mapped_page(void)
+{
+	struct page *page;
+	gfp_t gfp_mask = GFP_KERNEL | __GFP_ZERO;
+
+	page = alloc_gigantic_page_order(get_order(PUD_SIZE), gfp_mask,
+				first_memory_node, &node_states[N_MEMORY]);
+	if (page) {
+		pud_aligned = true;
+		pmd_aligned = true;
+		return page;
+	}
+
+	page = alloc_pages(gfp_mask, get_order(PMD_SIZE));
+	if (page) {
+		pmd_aligned = true;
+		return page;
+	}
+	return alloc_page(gfp_mask);
+}
+
+static void __init free_mapped_page(struct page *page)
+{
+	if (pud_aligned) {
+		unsigned long pfn = page_to_pfn(page);
+
+		free_contig_range(pfn, 1ULL << get_order(PUD_SIZE));
+		return;
+	}
+
+	if (pmd_aligned) {
+		int order = get_order(PMD_SIZE);
+
+		free_pages((unsigned long)page_address(page), order);
+		return;
+	}
+	free_page((unsigned long)page_address(page));
+}
+
+static unsigned long __init get_random_vaddr(void)
+{
+	unsigned long random_vaddr, random_pages, total_user_pages;
+
+	total_user_pages = (TASK_SIZE - FIRST_USER_ADDRESS) / PAGE_SIZE;
+
+	random_pages = get_random_long() % total_user_pages;
+	random_vaddr = FIRST_USER_ADDRESS + random_pages * PAGE_SIZE;
+
+	WARN_ON(random_vaddr > TASK_SIZE);
+	WARN_ON(random_vaddr < FIRST_USER_ADDRESS);
+	return random_vaddr;
+}
+
+void __init debug_vm_pgtable(void)
+{
+	struct mm_struct *mm;
+	struct page *page;
+	pgd_t *pgdp;
+	p4d_t *p4dp, *saved_p4dp;
+	pud_t *pudp, *saved_pudp;
+	pmd_t *pmdp, *saved_pmdp, pmd;
+	pte_t *ptep;
+	pgtable_t saved_ptep;
+	pgprot_t prot;
+	unsigned long vaddr;
+
+	prot = vm_get_page_prot(VMFLAGS);
+	vaddr = get_random_vaddr();
+	mm = mm_alloc();
+	if (!mm) {
+		pr_err("mm_struct allocation failed\n");
+		return;
+	}
+
+	page = alloc_mapped_page();
+	if (!page) {
+		pr_err("memory allocation failed\n");
+		return;
+	}
+
+	pgdp = pgd_offset(mm, vaddr);
+	p4dp = p4d_alloc(mm, pgdp, vaddr);
+	pudp = pud_alloc(mm, p4dp, vaddr);
+	pmdp = pmd_alloc(mm, pudp, vaddr);
+	ptep = pte_alloc_map(mm, pmdp, vaddr);
+
+	/*
+	 * Save all the page table page addresses as the page table
+	 * entries will be used for testing with random or garbage
+	 * values. These saved addresses will be used for freeing
+	 * page table pages.
+	 */
+	pmd = READ_ONCE(*pmdp);
+	saved_p4dp = p4d_offset(pgdp, 0UL);
+	saved_pudp = pud_offset(p4dp, 0UL);
+	saved_pmdp = pmd_offset(pudp, 0UL);
+	saved_ptep = pmd_pgtable(pmd);
+
+	pte_basic_tests(page, prot);
+	pmd_basic_tests(page, prot);
+	pud_basic_tests(page, prot);
+	p4d_basic_tests(page, prot);
+	pgd_basic_tests(page, prot);
+
+	pte_clear_tests(mm, ptep);
+	pmd_clear_tests(mm, pmdp);
+	pud_clear_tests(mm, pudp);
+	p4d_clear_tests(mm, p4dp);
+	pgd_clear_tests(mm, pgdp);
+
+	pte_unmap(ptep);
+
+	pmd_populate_tests(mm, pmdp, saved_ptep);
+	pud_populate_tests(mm, pudp, saved_pmdp);
+	p4d_populate_tests(mm, p4dp, saved_pudp);
+	pgd_populate_tests(mm, pgdp, saved_p4dp);
+
+	p4d_free(mm, saved_p4dp);
+	pud_free(mm, saved_pudp);
+	pmd_free(mm, saved_pmdp);
+	pte_free(mm, saved_ptep);
+
+	mm_dec_nr_puds(mm);
+	mm_dec_nr_pmds(mm);
+	mm_dec_nr_ptes(mm);
+	__mmdrop(mm);
+
+	free_mapped_page(page);
+}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
