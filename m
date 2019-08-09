Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549C58731C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e8sOLIhTviqljeeyGD9fzvsUhqTOUNeonL/oJbJXadU=; b=inZiJyoGFrl0KKJzXQLqeRVoS1
	McKpin8gwTqX1HMxqBNagP7Lmp239jn/2CZ8HEGUODr83MpFrV8nv9G72AE4OZH/BPQIJCjIFe9uA
	lpMOhYBq0oR73pfateQ9k1nLklrtFtTKBk+sF2vLyP1sciPSNp5sulLKq8hYAZmCOwDpc2ixmEoY8
	HG02Fpys4VZa3EkK2DfZcVXRj8J/7xGmIM0UWGb9UoHk40udsvj44D9Tejc4VFp8aea1qKV9JZXeK
	h4OFQxXHdyXZ6W9+osa/A821rRUXAjn2iOfA9qZr90aP0PP0vszRKp5k9Db2e1qYqaAbL+S35Lmit
	F9wkWiXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzQB-00065Z-Mz; Fri, 09 Aug 2019 07:34:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzPa-0005mH-Uc; Fri, 09 Aug 2019 07:34:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6386344;
 Fri,  9 Aug 2019 00:34:04 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.243])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 033BA3F706;
 Fri,  9 Aug 2019 00:33:48 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC V2 1/1] mm/pgtable/debug: Add test validating architecture page
 table helpers
Date: Fri,  9 Aug 2019 13:03:18 +0530
Message-Id: <1565335998-22553-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
References: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_003407_123199_02B945BF 
X-CRM114-Status: GOOD (  23.33  )
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
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
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

This adds a test module which will validate architecture page table helpers
and accessors regarding compliance with generic MM semantics expectations.
This will help various architectures in validating changes to the existing
page table helpers or addition of new ones.

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

Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 mm/Kconfig.debug       |  14 ++
 mm/Makefile            |   1 +
 mm/arch_pgtable_test.c | 400 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 415 insertions(+)
 create mode 100644 mm/arch_pgtable_test.c

diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
index 82b6a20898bd..d3dfbe984d41 100644
--- a/mm/Kconfig.debug
+++ b/mm/Kconfig.debug
@@ -115,3 +115,17 @@ config DEBUG_RODATA_TEST
     depends on STRICT_KERNEL_RWX
     ---help---
       This option enables a testcase for the setting rodata read-only.
+
+config DEBUG_ARCH_PGTABLE_TEST
+	bool "Test arch page table helpers for semantics compliance"
+	depends on MMU
+	depends on DEBUG_KERNEL
+	help
+	  This options provides a kernel module which can be used to test
+	  architecture page table helper functions on various platform in
+	  verifying if they comply with expected generic MM semantics. This
+	  will help architectures code in making sure that any changes or
+	  new additions of these helpers will still conform to generic MM
+	  expected semantics.
+
+	  If unsure, say N.
diff --git a/mm/Makefile b/mm/Makefile
index 338e528ad436..0e6ac3789ca8 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -84,6 +84,7 @@ obj-$(CONFIG_HWPOISON_INJECT) += hwpoison-inject.o
 obj-$(CONFIG_DEBUG_KMEMLEAK) += kmemleak.o
 obj-$(CONFIG_DEBUG_KMEMLEAK_TEST) += kmemleak-test.o
 obj-$(CONFIG_DEBUG_RODATA_TEST) += rodata_test.o
+obj-$(CONFIG_DEBUG_ARCH_PGTABLE_TEST) += arch_pgtable_test.o
 obj-$(CONFIG_PAGE_OWNER) += page_owner.o
 obj-$(CONFIG_CLEANCACHE) += cleancache.o
 obj-$(CONFIG_MEMORY_ISOLATION) += page_isolation.o
diff --git a/mm/arch_pgtable_test.c b/mm/arch_pgtable_test.c
new file mode 100644
index 000000000000..41d6fa78a620
--- /dev/null
+++ b/mm/arch_pgtable_test.c
@@ -0,0 +1,400 @@
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
+#include <linux/kernel.h>
+#include <linux/hugetlb.h>
+#include <linux/mm.h>
+#include <linux/mman.h>
+#include <linux/mm_types.h>
+#include <linux/module.h>
+#include <linux/printk.h>
+#include <linux/swap.h>
+#include <linux/swapops.h>
+#include <linux/pfn_t.h>
+#include <linux/gfp.h>
+#include <linux/spinlock.h>
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
+#define VADDR_TEST	(PGDIR_SIZE + PUD_SIZE + PMD_SIZE + PAGE_SIZE)
+#define VMA_TEST_FLAGS	(VM_READ|VM_WRITE|VM_EXEC)
+#define RANDOM_NZVALUE	(0xbe)
+
+static bool pud_aligned;
+
+extern struct mm_struct *mm_alloc(void);
+
+static void pte_basic_tests(struct page *page, pgprot_t prot)
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
+static void pmd_basic_tests(struct page *page, pgprot_t prot)
+{
+	pmd_t pmd = mk_pmd(page, prot);
+
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
+static void pmd_basic_tests(struct page *page, pgprot_t prot) { }
+#endif
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+static void pud_basic_tests(struct page *page, pgprot_t prot)
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
+	pud = pfn_pud(page_to_pfn(page), prot);
+
+	WARN_ON(!pud_same(pud, pud));
+	WARN_ON(!pud_young(pud_mkyoung(pud)));
+	WARN_ON(!pud_write(pud_mkwrite(pud)));
+	WARN_ON(pud_write(pud_wrprotect(pud)));
+	WARN_ON(pud_young(pud_mkold(pud)));
+
+#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
+	/*
+	 * A huge page does not point to next level page table
+	 * entry. Hence this must qualify as pud_bad().
+	 */
+	WARN_ON(!pud_bad(pud_mkhuge(pud)));
+#endif
+}
+#else
+static void pud_basic_tests(struct page *page, pgprot_t prot) { }
+#endif
+
+static void p4d_basic_tests(struct page *page, pgprot_t prot)
+{
+	p4d_t p4d;
+
+	memset(&p4d, RANDOM_NZVALUE, sizeof(p4d_t));
+	WARN_ON(!p4d_same(p4d, p4d));
+}
+
+static void pgd_basic_tests(struct page *page, pgprot_t prot)
+{
+	pgd_t pgd;
+
+	memset(&pgd, RANDOM_NZVALUE, sizeof(pgd_t));
+	WARN_ON(!pgd_same(pgd, pgd));
+}
+
+#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
+static void pud_clear_tests(pud_t *pudp)
+{
+	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
+	pud_clear(pudp);
+	WARN_ON(!pud_none(READ_ONCE(*pudp)));
+}
+
+static void pud_populate_tests(struct mm_struct *mm, pud_t *pudp, pmd_t *pmdp)
+{
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as pud_bad().
+	 */
+	pmd_clear(pmdp);
+	pud_clear(pudp);
+	pud_populate(mm, pudp, pmdp);
+	WARN_ON(pud_bad(READ_ONCE(*pudp)));
+}
+#else
+static void pud_clear_tests(pud_t *pudp) { }
+static void pud_populate_tests(struct mm_struct *mm, pud_t *pudp, pmd_t *pmdp)
+{
+}
+#endif
+
+#if !defined(__PAGETABLE_PUD_FOLDED) && !defined(__ARCH_HAS_5LEVEL_HACK)
+static void p4d_clear_tests(p4d_t *p4dp)
+{
+	memset(p4dp, RANDOM_NZVALUE, sizeof(p4d_t));
+	p4d_clear(p4dp);
+	WARN_ON(!p4d_none(READ_ONCE(*p4dp)));
+}
+
+static void p4d_populate_tests(struct mm_struct *mm, p4d_t *p4dp, pud_t *pudp)
+{
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as p4d_bad().
+	 */
+	pud_clear(pudp);
+	p4d_clear(p4dp);
+	p4d_populate(mm, p4dp, pudp);
+	WARN_ON(p4d_bad(READ_ONCE(*p4dp)));
+}
+#else
+static void p4d_clear_tests(p4d_t *p4dp) { }
+static void p4d_populate_tests(struct mm_struct *mm, p4d_t *p4dp, pud_t *pudp)
+{
+}
+#endif
+
+#ifndef __PAGETABLE_P4D_FOLDED
+static void pgd_clear_tests(pgd_t *pgdp)
+{
+	memset(pgdp, RANDOM_NZVALUE, sizeof(pgd_t));
+	pgd_clear(pgdp);
+	WARN_ON(!pgd_none(READ_ONCE(*pgdp)));
+}
+
+static void pgd_populate_tests(struct mm_struct *mm, pgd_t *pgdp, p4d_t *p4dp)
+{
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as pgd_bad().
+	 */
+	p4d_clear(p4dp);
+	pgd_clear(pgdp);
+	pgd_populate(mm, pgdp, p4dp);
+	WARN_ON(pgd_bad(READ_ONCE(*pgdp)));
+}
+#else
+static void pgd_clear_tests(pgd_t *pgdp) { }
+static void pgd_populate_tests(struct mm_struct *mm, pgd_t *pgdp, p4d_t *p4dp)
+{
+}
+#endif
+
+static void pte_clear_tests(pte_t *ptep)
+{
+	memset(ptep, RANDOM_NZVALUE, sizeof(pte_t));
+	pte_clear(NULL, 0, ptep);
+	WARN_ON(!pte_none(READ_ONCE(*ptep)));
+}
+
+static void pmd_clear_tests(pmd_t *pmdp)
+{
+	memset(pmdp, RANDOM_NZVALUE, sizeof(pmd_t));
+	pmd_clear(pmdp);
+	WARN_ON(!pmd_none(READ_ONCE(*pmdp)));
+}
+
+static void pmd_populate_tests(struct mm_struct *mm, pmd_t *pmdp,
+			       pgtable_t pgtable)
+{
+	/*
+	 * This entry points to next level page table page.
+	 * Hence this must not qualify as pmd_bad().
+	 */
+	pmd_clear(pmdp);
+	pmd_populate(mm, pmdp, pgtable);
+	WARN_ON(pmd_bad(READ_ONCE(*pmdp)));
+}
+
+static bool pfn_range_valid(struct zone *z, unsigned long start_pfn,
+			    unsigned long nr_pages)
+{
+	unsigned long i, end_pfn = start_pfn + nr_pages;
+	struct page *page;
+
+	for (i = start_pfn; i < end_pfn; i++) {
+		if (!pfn_valid(i))
+			return false;
+
+		page = pfn_to_page(i);
+
+		if (page_zone(page) != z)
+			return false;
+
+		if (PageReserved(page))
+			return false;
+
+		if (page_count(page) > 0)
+			return false;
+
+		if (PageHuge(page))
+			return false;
+	}
+	return true;
+}
+
+static struct page *alloc_gigantic_page(nodemask_t *nodemask,
+					int nid, gfp_t gfp_mask, int order)
+{
+	struct zonelist *zonelist;
+	struct zone *zone;
+	struct zoneref *z;
+	enum zone_type zonesel;
+	unsigned long ret, pfn, flags, nr_pages;
+
+	nr_pages = 1UL << order;
+	zonesel = gfp_zone(gfp_mask);
+	zonelist = node_zonelist(nid, gfp_mask);
+	for_each_zone_zonelist_nodemask(zone, z, zonelist, zonesel, nodemask) {
+		spin_lock_irqsave(&zone->lock, flags);
+		pfn = ALIGN(zone->zone_start_pfn, nr_pages);
+		while (zone_spans_pfn(zone, pfn + nr_pages - 1)) {
+			if (pfn_range_valid(zone, pfn, nr_pages)) {
+				spin_unlock_irqrestore(&zone->lock, flags);
+				ret = alloc_contig_range(pfn, pfn + nr_pages,
+							 MIGRATE_MOVABLE,
+							 gfp_mask);
+				if (!ret)
+					return pfn_to_page(pfn);
+				spin_lock_irqsave(&zone->lock, flags);
+			}
+			pfn += nr_pages;
+		}
+		spin_unlock_irqrestore(&zone->lock, flags);
+	}
+	return NULL;
+}
+
+static struct page *alloc_mapped_page(void)
+{
+	gfp_t gfp_mask = GFP_KERNEL | __GFP_ZERO;
+	struct page *page = NULL;
+
+	page = alloc_gigantic_page(&node_states[N_MEMORY], first_memory_node,
+				   gfp_mask, get_order(PUD_SIZE));
+	if (page) {
+		pud_aligned = true;
+		return page;
+	}
+	return alloc_pages(gfp_mask, get_order(PMD_SIZE));
+}
+
+static void free_mapped_page(struct page *page)
+{
+	if (pud_aligned) {
+		unsigned long pfn = page_to_pfn(page);
+
+		free_contig_range(pfn, 1ULL << get_order(PUD_SIZE));
+		return;
+	}
+	free_pages((unsigned long)page_address(page), get_order(PMD_SIZE));
+}
+
+static int __init arch_pgtable_tests_init(void)
+{
+	struct mm_struct *mm;
+	struct page *page;
+	pgd_t *pgdp;
+	p4d_t *p4dp, *saved_p4dp;
+	pud_t *pudp, *saved_pudp;
+	pmd_t *pmdp, *saved_pmdp;
+	pte_t *ptep, *saved_ptep;
+	pgprot_t prot = vm_get_page_prot(VMA_TEST_FLAGS);
+	unsigned long vaddr = VADDR_TEST;
+
+	mm = mm_alloc();
+	if (!mm) {
+		pr_err("mm_struct allocation failed\n");
+		return 1;
+	}
+
+	page = alloc_mapped_page();
+	if (!page) {
+		pr_err("memory allocation failed\n");
+		return 1;
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
+	saved_p4dp = p4d_offset(pgdp, 0UL);
+	saved_pudp = pud_offset(p4dp, 0UL);
+	saved_pmdp = pmd_offset(pudp, 0UL);
+	saved_ptep = pte_offset_map(pmdp, 0UL);
+
+	pte_basic_tests(page, prot);
+	pmd_basic_tests(page, prot);
+	pud_basic_tests(page, prot);
+	p4d_basic_tests(page, prot);
+	pgd_basic_tests(page, prot);
+
+	pte_clear_tests(ptep);
+	pmd_clear_tests(pmdp);
+	pud_clear_tests(pudp);
+	p4d_clear_tests(p4dp);
+	pgd_clear_tests(pgdp);
+
+	pmd_populate_tests(mm, pmdp, (pgtable_t) page);
+	pud_populate_tests(mm, pudp, pmdp);
+	p4d_populate_tests(mm, p4dp, pudp);
+	pgd_populate_tests(mm, pgdp, p4dp);
+
+	p4d_free(mm, saved_p4dp);
+	pud_free(mm, saved_pudp);
+	pmd_free(mm, saved_pmdp);
+	pte_free(mm, (pgtable_t) virt_to_page(saved_ptep));
+
+	mm_dec_nr_puds(mm);
+	mm_dec_nr_pmds(mm);
+	mm_dec_nr_ptes(mm);
+	__mmdrop(mm);
+
+	free_mapped_page(page);
+	return 0;
+}
+
+static void __exit arch_pgtable_tests_exit(void) { }
+
+module_init(arch_pgtable_tests_init);
+module_exit(arch_pgtable_tests_exit);
+
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Anshuman Khandual <anshuman.khandual@arm.com>");
+MODULE_DESCRIPTION("Test archicture page table helpers");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
