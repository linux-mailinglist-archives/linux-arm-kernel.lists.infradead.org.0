Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882201F8C8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 05:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zoyHb4Tp62RBAdkMp1ic/HIVpRYfxFecrrYY5MpQCl4=; b=sdKwI9SPqcYKlZK+HTRQ5A2BPc
	WnknWnu0xSkQkk0UcKm4l3Ig3d3seLbsCGLHBwvKCDbmIjv2jQyOproJWRFMmSquUdMGKppo0rFqO
	WSVaoAyQTj6NQJ7b4xIcjFO25Mb3zs60z5TAr65xjDsW2voTcDpXud2NJcmYrk/L69J+4ZoTkGZcj
	P3SJWKiffbnjX/42te+NYy1DOxYEd37ZAZsPP3vDuv+mVn9HPtahlMSpNl1Y41zGoT6GveQjho4po
	W84sdG141TO7qWwtUkHQiCDStbuyQ0tx+WrrwOSPQBmu2NZLBVTlLVZZ53pfQYaVQZro2vJ4hlv1W
	VirpPCBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkfxY-0000YE-Nv; Mon, 15 Jun 2020 03:38:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkfxC-0000RE-77; Mon, 15 Jun 2020 03:38:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 57285D6E;
 Sun, 14 Jun 2020 20:38:31 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.79.186])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 439E23F71F;
 Sun, 14 Jun 2020 20:38:20 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V3 1/4] mm/debug_vm_pgtable: Add tests validating arch helpers
 for core MM features
Date: Mon, 15 Jun 2020 09:07:54 +0530
Message-Id: <1592192277-8421-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592192277-8421-1-git-send-email-anshuman.khandual@arm.com>
References: <1592192277-8421-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_203834_391203_D9195ED5 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, ziy@nvidia.com,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, gerald.schaefer@de.ibm.com,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds new tests validating arch page table helpers for these following
core memory features. These tests create and test specific mapping types at
various page table levels.

1. SPECIAL mapping
2. PROTNONE mapping
3. DEVMAP mapping
4. SOFTDIRTY mapping
5. SWAP mapping
6. MIGRATION mapping
7. HUGETLB mapping
8. THP mapping

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Mike Rapoport <rppt@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Vasily Gorbik <gor@linux.ibm.com>
Cc: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: x86@kernel.org
Cc: linux-mm@kvack.org
Cc: linux-arch@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Reviewed-by: Zi Yan <ziy@nvidia.com>
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 mm/debug_vm_pgtable.c | 302 +++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 301 insertions(+), 1 deletion(-)

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index e45623016aea..ffa163d4c63c 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -282,6 +282,278 @@ static void __init pmd_populate_tests(struct mm_struct *mm, pmd_t *pmdp,
 	WARN_ON(pmd_bad(pmd));
 }
 
+static void __init pte_special_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	if (!IS_ENABLED(CONFIG_ARCH_HAS_PTE_SPECIAL))
+		return;
+
+	WARN_ON(!pte_special(pte_mkspecial(pte)));
+}
+
+static void __init pte_protnone_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
+		return;
+
+	WARN_ON(!pte_protnone(pte));
+	WARN_ON(!pte_present(pte));
+}
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pmd_mkhuge(pfn_pmd(pfn, prot));
+
+	if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
+		return;
+
+	WARN_ON(!pmd_protnone(pmd));
+	WARN_ON(!pmd_present(pmd));
+}
+#else  /* !CONFIG_TRANSPARENT_HUGEPAGE */
+static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_TRANSPARENT_HUGEPAGE */
+
+#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
+static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_devmap(pte_mkdevmap(pte)));
+}
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_devmap(pmd_mkdevmap(pmd)));
+}
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud = pfn_pud(pfn, prot);
+
+	WARN_ON(!pud_devmap(pud_mkdevmap(pud)));
+}
+#else  /* !CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD */
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD */
+#else  /* CONFIG_TRANSPARENT_HUGEPAGE */
+static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_TRANSPARENT_HUGEPAGE */
+#else
+static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_ARCH_HAS_PTE_DEVMAP */
+
+static void __init pte_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY))
+		return;
+
+	WARN_ON(!pte_soft_dirty(pte_mksoft_dirty(pte)));
+	WARN_ON(pte_soft_dirty(pte_clear_soft_dirty(pte)));
+}
+
+static void __init pte_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY))
+		return;
+
+	WARN_ON(!pte_swp_soft_dirty(pte_swp_mksoft_dirty(pte)));
+	WARN_ON(pte_swp_soft_dirty(pte_swp_clear_soft_dirty(pte)));
+}
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY))
+		return;
+
+	WARN_ON(!pmd_soft_dirty(pmd_mksoft_dirty(pmd)));
+	WARN_ON(pmd_soft_dirty(pmd_clear_soft_dirty(pmd)));
+}
+
+static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	if (!IS_ENABLED(CONFIG_MEM_SOFT_DIRTY) ||
+		!IS_ENABLED(CONFIG_ARCH_ENABLE_THP_MIGRATION))
+		return;
+
+	WARN_ON(!pmd_swp_soft_dirty(pmd_swp_mksoft_dirty(pmd)));
+	WARN_ON(pmd_swp_soft_dirty(pmd_swp_clear_soft_dirty(pmd)));
+}
+#else  /* !CONFIG_ARCH_HAS_PTE_DEVMAP */
+static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgprot_t prot)
+{
+}
+#endif /* CONFIG_ARCH_HAS_PTE_DEVMAP */
+
+static void __init pte_swap_tests(unsigned long pfn, pgprot_t prot)
+{
+	swp_entry_t swp;
+	pte_t pte;
+
+	pte = pfn_pte(pfn, prot);
+	swp = __pte_to_swp_entry(pte);
+	pte = __swp_entry_to_pte(swp);
+	WARN_ON(pfn != pte_pfn(pte));
+}
+
+#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
+static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot)
+{
+	swp_entry_t swp;
+	pmd_t pmd;
+
+	pmd = pfn_pmd(pfn, prot);
+	swp = __pmd_to_swp_entry(pmd);
+	pmd = __swp_entry_to_pmd(swp);
+	WARN_ON(pfn != pmd_pfn(pmd));
+}
+#else  /* !CONFIG_ARCH_ENABLE_THP_MIGRATION */
+static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_ARCH_ENABLE_THP_MIGRATION */
+
+static void __init swap_migration_tests(void)
+{
+	struct page *page;
+	swp_entry_t swp;
+
+	if (!IS_ENABLED(CONFIG_MIGRATION))
+		return;
+	/*
+	 * swap_migration_tests() requires a dedicated page as it needs to
+	 * be locked before creating a migration entry from it. Locking the
+	 * page that actually maps kernel text ('start_kernel') can be real
+	 * problematic. Lets allocate a dedicated page explicitly for this
+	 * purpose that will be freed subsequently.
+	 */
+	page = alloc_page(GFP_KERNEL);
+	if (!page) {
+		pr_err("page allocation failed\n");
+		return;
+	}
+
+	/*
+	 * make_migration_entry() expects given page to be
+	 * locked, otherwise it stumbles upon a BUG_ON().
+	 */
+	__SetPageLocked(page);
+	swp = make_migration_entry(page, 1);
+	WARN_ON(!is_migration_entry(swp));
+	WARN_ON(!is_write_migration_entry(swp));
+
+	make_migration_entry_read(&swp);
+	WARN_ON(!is_migration_entry(swp));
+	WARN_ON(is_write_migration_entry(swp));
+
+	swp = make_migration_entry(page, 0);
+	WARN_ON(!is_migration_entry(swp));
+	WARN_ON(is_write_migration_entry(swp));
+	__ClearPageLocked(page);
+	__free_page(page);
+}
+
+#ifdef CONFIG_HUGETLB_PAGE
+static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t prot)
+{
+	struct page *page;
+	pte_t pte;
+
+	/*
+	 * Accessing the page associated with the pfn is safe here,
+	 * as it was previously derived from a real kernel symbol.
+	 */
+	page = pfn_to_page(pfn);
+	pte = mk_huge_pte(page, prot);
+
+	WARN_ON(!huge_pte_dirty(huge_pte_mkdirty(pte)));
+	WARN_ON(!huge_pte_write(huge_pte_mkwrite(huge_pte_wrprotect(pte))));
+	WARN_ON(huge_pte_write(huge_pte_wrprotect(huge_pte_mkwrite(pte))));
+
+#ifdef CONFIG_ARCH_WANT_GENERAL_HUGETLB
+	pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_huge(pte_mkhuge(pte)));
+#endif /* CONFIG_ARCH_WANT_GENERAL_HUGETLB */
+}
+#else  /* !CONFIG_HUGETLB_PAGE */
+static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_HUGETLB_PAGE */
+
+#ifdef CONFIG_TRANSPARENT_HUGEPAGE
+static void __init pmd_thp_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd;
+
+	if (!has_transparent_hugepage())
+		return;
+
+	/*
+	 * pmd_trans_huge() and pmd_present() must return positive after
+	 * MMU invalidation with pmd_mkinvalid(). This behavior is an
+	 * optimization for transparent huge page. pmd_trans_huge() must
+	 * be true if pmd_page() returns a valid THP to avoid taking the
+	 * pmd_lock when others walk over non transhuge pmds (i.e. there
+	 * are no THP allocated). Especially when splitting a THP and
+	 * removing the present bit from the pmd, pmd_trans_huge() still
+	 * needs to return true. pmd_present() should be true whenever
+	 * pmd_trans_huge() returns true.
+	 */
+	pmd = pfn_pmd(pfn, prot);
+	WARN_ON(!pmd_trans_huge(pmd_mkhuge(pmd)));
+
+#ifndef __HAVE_ARCH_PMDP_INVALIDATE
+	WARN_ON(!pmd_trans_huge(pmd_mkinvalid(pmd_mkhuge(pmd))));
+	WARN_ON(!pmd_present(pmd_mkinvalid(pmd_mkhuge(pmd))));
+#endif /* __HAVE_ARCH_PMDP_INVALIDATE */
+}
+
+#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
+static void __init pud_thp_tests(unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud;
+
+	if (!has_transparent_hugepage())
+		return;
+
+	pud = pfn_pud(pfn, prot);
+	WARN_ON(!pud_trans_huge(pud_mkhuge(pud)));
+
+	/*
+	 * pud_mkinvalid() has been dropped for now. Enable back
+	 * these tests when it comes back with a modified pud_present().
+	 *
+	 * WARN_ON(!pud_trans_huge(pud_mkinvalid(pud_mkhuge(pud))));
+	 * WARN_ON(!pud_present(pud_mkinvalid(pud_mkhuge(pud))));
+	 */
+}
+#else  /* !CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD */
+static void __init pud_thp_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD */
+#else  /* !CONFIG_TRANSPARENT_HUGEPAGE */
+static void __init pmd_thp_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_thp_tests(unsigned long pfn, pgprot_t prot) { }
+#endif /* CONFIG_TRANSPARENT_HUGEPAGE */
+
 static unsigned long __init get_random_vaddr(void)
 {
 	unsigned long random_vaddr, random_pages, total_user_pages;
@@ -303,7 +575,7 @@ static int __init debug_vm_pgtable(void)
 	pmd_t *pmdp, *saved_pmdp, pmd;
 	pte_t *ptep;
 	pgtable_t saved_ptep;
-	pgprot_t prot;
+	pgprot_t prot, protnone;
 	phys_addr_t paddr;
 	unsigned long vaddr, pte_aligned, pmd_aligned;
 	unsigned long pud_aligned, p4d_aligned, pgd_aligned;
@@ -318,6 +590,12 @@ static int __init debug_vm_pgtable(void)
 		return 1;
 	}
 
+	/*
+	 * __P000 (or even __S000) will help create page table entries with
+	 * PROT_NONE permission as required for pxx_protnone_tests().
+	 */
+	protnone = __P000;
+
 	/*
 	 * PFN for mapping at PTE level is determined from a standard kernel
 	 * text symbol. But pfns for higher page table levels are derived by
@@ -373,6 +651,28 @@ static int __init debug_vm_pgtable(void)
 	p4d_populate_tests(mm, p4dp, saved_pudp);
 	pgd_populate_tests(mm, pgdp, saved_p4dp);
 
+	pte_special_tests(pte_aligned, prot);
+	pte_protnone_tests(pte_aligned, protnone);
+	pmd_protnone_tests(pmd_aligned, protnone);
+
+	pte_devmap_tests(pte_aligned, prot);
+	pmd_devmap_tests(pmd_aligned, prot);
+	pud_devmap_tests(pud_aligned, prot);
+
+	pte_soft_dirty_tests(pte_aligned, prot);
+	pmd_soft_dirty_tests(pmd_aligned, prot);
+	pte_swap_soft_dirty_tests(pte_aligned, prot);
+	pmd_swap_soft_dirty_tests(pmd_aligned, prot);
+
+	pte_swap_tests(pte_aligned, prot);
+	pmd_swap_tests(pmd_aligned, prot);
+
+	swap_migration_tests();
+	hugetlb_basic_tests(pte_aligned, prot);
+
+	pmd_thp_tests(pmd_aligned, prot);
+	pud_thp_tests(pud_aligned, prot);
+
 	p4d_free(mm, saved_p4dp);
 	pud_free(mm, saved_pudp);
 	pmd_free(mm, saved_pmdp);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
