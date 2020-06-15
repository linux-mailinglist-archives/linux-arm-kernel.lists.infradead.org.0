Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2B61F8C95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 05:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T8pdkp+0nD1H3RDduwhHc7qYKVDMXBTVkyW9B9r5eFY=; b=J2m6pRImDLgDOcGAzEeWCWcJrC
	pWBzPnZGzA+N0u1tUmE+xIADpN59YG8JHa4m2wsh0FARbXKbcX83XHgoR3adtXGFYv5PwPY5JRkiy
	d6wk2ov+z+NhL3IDXiDVn/09GGgMb1JoYiSy+UoRBpjJmqM7eX9RAx4V5HtAwIyXTxksHglpa4Zjp
	QZqHGYqC6VnHgyCcO7HUqsp8ijdD1lTqmAOn/nLY/MOQN45OcgFeERiq1tGLZ0zeah/ifAciHkGOX
	WL1i+Ndrdp8ww02v25R8YoLRDPSZh/n9mQHhVFdVosk4To6aHrPIrXhq6C1CDXe/bciojXWnaZiNv
	uacd1xOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkfxs-0000vy-Qx; Mon, 15 Jun 2020 03:39:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkfxL-0000d9-Hz; Mon, 15 Jun 2020 03:38:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AF7AC0A;
 Sun, 14 Jun 2020 20:38:41 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.79.186])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E25733F71F;
 Sun, 14 Jun 2020 20:38:31 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V3 2/4] mm/debug_vm_pgtable: Add tests validating advanced
 arch page table helpers
Date: Mon, 15 Jun 2020 09:07:55 +0530
Message-Id: <1592192277-8421-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592192277-8421-1-git-send-email-anshuman.khandual@arm.com>
References: <1592192277-8421-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_203843_728144_90A4A9E0 
X-CRM114-Status: GOOD (  13.91  )
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

This adds new tests validating for these following arch advanced page table
helpers. These tests create and test specific mapping types at various page
table levels.

1. pxxp_set_wrprotect()
2. pxxp_get_and_clear()
3. pxxp_set_access_flags()
4. pxxp_get_and_clear_full()
5. pxxp_test_and_clear_young()
6. pxx_leaf()
7. pxx_set_huge()
8. pxx_(clear|mk)_savedwrite()
9. huge_pxxp_xxx()

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
Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 mm/debug_vm_pgtable.c | 306 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 306 insertions(+)

diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
index ffa163d4c63c..e3f9f8317a98 100644
--- a/mm/debug_vm_pgtable.c
+++ b/mm/debug_vm_pgtable.c
@@ -21,6 +21,7 @@
 #include <linux/module.h>
 #include <linux/pfn_t.h>
 #include <linux/printk.h>
+#include <linux/pgtable.h>
 #include <linux/random.h>
 #include <linux/spinlock.h>
 #include <linux/swap.h>
@@ -28,6 +29,7 @@
 #include <linux/start_kernel.h>
 #include <linux/sched/mm.h>
 #include <asm/pgalloc.h>
+#include <asm/tlbflush.h>
 
 #define VMFLAGS	(VM_READ|VM_WRITE|VM_EXEC)
 
@@ -55,6 +57,54 @@ static void __init pte_basic_tests(unsigned long pfn, pgprot_t prot)
 	WARN_ON(pte_write(pte_wrprotect(pte_mkwrite(pte))));
 }
 
+static void __init pte_advanced_tests(struct mm_struct *mm,
+			struct vm_area_struct *vma, pte_t *ptep,
+			unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	pte = pfn_pte(pfn, prot);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_set_wrprotect(mm, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(pte_write(pte));
+
+	pte = pfn_pte(pfn, prot);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_get_and_clear(mm, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!pte_none(pte));
+
+	pte = pfn_pte(pfn, prot);
+	pte = pte_wrprotect(pte);
+	pte = pte_mkclean(pte);
+	set_pte_at(mm, vaddr, ptep, pte);
+	pte = pte_mkwrite(pte);
+	pte = pte_mkdirty(pte);
+	ptep_set_access_flags(vma, vaddr, ptep, pte, 1);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!(pte_write(pte) && pte_dirty(pte)));
+
+	pte = pfn_pte(pfn, prot);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_get_and_clear_full(mm, vaddr, ptep, 1);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(!pte_none(pte));
+
+	pte = pte_mkyoung(pte);
+	set_pte_at(mm, vaddr, ptep, pte);
+	ptep_test_and_clear_young(vma, vaddr, ptep);
+	pte = READ_ONCE(*ptep);
+	WARN_ON(pte_young(pte));
+}
+
+static void __init pte_savedwrite_tests(unsigned long pfn, pgprot_t prot)
+{
+	pte_t pte = pfn_pte(pfn, prot);
+
+	WARN_ON(!pte_savedwrite(pte_mk_savedwrite(pte_clear_savedwrite(pte))));
+	WARN_ON(pte_savedwrite(pte_clear_savedwrite(pte_mk_savedwrite(pte))));
+}
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot)
 {
@@ -77,6 +127,89 @@ static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot)
 	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
 }
 
+static void __init pmd_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pmd_t *pmdp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	if (!has_transparent_hugepage())
+		return;
+
+	/* Align the address wrt HPAGE_PMD_SIZE */
+	vaddr = (vaddr & HPAGE_PMD_MASK) + HPAGE_PMD_SIZE;
+
+	pmd = pfn_pmd(pfn, prot);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_set_wrprotect(mm, vaddr, pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(pmd_write(pmd));
+
+	pmd = pfn_pmd(pfn, prot);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_huge_get_and_clear(mm, vaddr, pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+
+	pmd = pfn_pmd(pfn, prot);
+	pmd = pmd_wrprotect(pmd);
+	pmd = pmd_mkclean(pmd);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmd = pmd_mkwrite(pmd);
+	pmd = pmd_mkdirty(pmd);
+	pmdp_set_access_flags(vma, vaddr, pmdp, pmd, 1);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!(pmd_write(pmd) && pmd_dirty(pmd)));
+
+	pmd = pmd_mkhuge(pfn_pmd(pfn, prot));
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_huge_get_and_clear_full(vma, vaddr, pmdp, 1);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+
+	pmd = pmd_mkyoung(pmd);
+	set_pmd_at(mm, vaddr, pmdp, pmd);
+	pmdp_test_and_clear_young(vma, vaddr, pmdp);
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(pmd_young(pmd));
+}
+
+static void __init pmd_leaf_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	/*
+	 * PMD based THP is a leaf entry.
+	 */
+	pmd = pmd_mkhuge(pmd);
+	WARN_ON(!pmd_leaf(pmd));
+}
+
+static void __init pmd_huge_tests(pmd_t *pmdp, unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd;
+
+	if (!IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP))
+		return;
+	/*
+	 * X86 defined pmd_set_huge() verifies that the given
+	 * PMD is not a populated non-leaf entry.
+	 */
+	WRITE_ONCE(*pmdp, __pmd(0));
+	WARN_ON(!pmd_set_huge(pmdp, __pfn_to_phys(pfn), prot));
+	WARN_ON(!pmd_clear_huge(pmdp));
+	pmd = READ_ONCE(*pmdp);
+	WARN_ON(!pmd_none(pmd));
+}
+
+static void __init pmd_savedwrite_tests(unsigned long pfn, pgprot_t prot)
+{
+	pmd_t pmd = pfn_pmd(pfn, prot);
+
+	WARN_ON(!pmd_savedwrite(pmd_mk_savedwrite(pmd_clear_savedwrite(pmd))));
+	WARN_ON(pmd_savedwrite(pmd_clear_savedwrite(pmd_mk_savedwrite(pmd))));
+}
+
 #ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
 static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot)
 {
@@ -100,12 +233,115 @@ static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot)
 	 */
 	WARN_ON(!pud_bad(pud_mkhuge(pud)));
 }
+
+static void pud_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pud_t *pudp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+	pud_t pud = pfn_pud(pfn, prot);
+
+	if (!has_transparent_hugepage())
+		return;
+
+	/* Align the address wrt HPAGE_PUD_SIZE */
+	vaddr = (vaddr & HPAGE_PUD_MASK) + HPAGE_PUD_SIZE;
+
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_set_wrprotect(mm, vaddr, pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(pud_write(pud));
+
+#ifndef __PAGETABLE_PMD_FOLDED
+	pud = pfn_pud(pfn, prot);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_huge_get_and_clear(mm, vaddr, pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+
+	pud = pfn_pud(pfn, prot);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_huge_get_and_clear_full(mm, vaddr, pudp, 1);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+#endif /* __PAGETABLE_PMD_FOLDED */
+	pud = pfn_pud(pfn, prot);
+	pud = pud_wrprotect(pud);
+	pud = pud_mkclean(pud);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pud = pud_mkwrite(pud);
+	pud = pud_mkdirty(pud);
+	pudp_set_access_flags(vma, vaddr, pudp, pud, 1);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!(pud_write(pud) && pud_dirty(pud)));
+
+	pud = pud_mkyoung(pud);
+	set_pud_at(mm, vaddr, pudp, pud);
+	pudp_test_and_clear_young(vma, vaddr, pudp);
+	pud = READ_ONCE(*pudp);
+	WARN_ON(pud_young(pud));
+}
+
+static void __init pud_leaf_tests(unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud = pfn_pud(pfn, prot);
+
+	/*
+	 * PUD based THP is a leaf entry.
+	 */
+	pud = pud_mkhuge(pud);
+	WARN_ON(!pud_leaf(pud));
+}
+
+static void __init pud_huge_tests(pud_t *pudp, unsigned long pfn, pgprot_t prot)
+{
+	pud_t pud;
+
+	if (!IS_ENABLED(CONFIG_HAVE_ARCH_HUGE_VMAP))
+		return;
+	/*
+	 * X86 defined pud_set_huge() verifies that the given
+	 * PUD is not a populated non-leaf entry.
+	 */
+	WRITE_ONCE(*pudp, __pud(0));
+	WARN_ON(!pud_set_huge(pudp, __pfn_to_phys(pfn), prot));
+	WARN_ON(!pud_clear_huge(pudp));
+	pud = READ_ONCE(*pudp);
+	WARN_ON(!pud_none(pud));
+}
 #else  /* !CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD */
 static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot) { }
+static void pud_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pud_t *pudp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+}
+static void __init pud_leaf_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_huge_tests(pud_t *pudp, unsigned long pfn, pgprot_t prot)
+{
+}
 #endif /* CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD */
 #else  /* !CONFIG_TRANSPARENT_HUGEPAGE */
 static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot) { }
 static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pmd_t *pmdp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+}
+static void __init pud_advanced_tests(struct mm_struct *mm,
+		struct vm_area_struct *vma, pud_t *pudp,
+		unsigned long pfn, unsigned long vaddr, pgprot_t prot)
+{
+}
+static void __init pmd_leaf_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pud_leaf_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init pmd_huge_tests(pmd_t *pmdp, unsigned long pfn, pgprot_t prot)
+{
+}
+static void __init pud_huge_tests(pud_t *pudp, unsigned long pfn, pgprot_t prot)
+{
+}
+static void __init pmd_savedwrite_tests(unsigned long pfn, pgprot_t prot) { }
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
 
 static void __init p4d_basic_tests(unsigned long pfn, pgprot_t prot)
@@ -495,8 +731,56 @@ static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t prot)
 	WARN_ON(!pte_huge(pte_mkhuge(pte)));
 #endif /* CONFIG_ARCH_WANT_GENERAL_HUGETLB */
 }
+
+static void __init hugetlb_advanced_tests(struct mm_struct *mm,
+					  struct vm_area_struct *vma,
+					  pte_t *ptep, unsigned long pfn,
+					  unsigned long vaddr, pgprot_t prot)
+{
+	struct page *page = pfn_to_page(pfn);
+	pte_t pte = READ_ONCE(*ptep);
+	unsigned long paddr = (__pfn_to_phys(pfn) | RANDOM_ORVALUE) & PMD_MASK;
+
+	pte = pte_mkhuge(mk_pte(pfn_to_page(PHYS_PFN(paddr)), prot));
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	barrier();
+	WARN_ON(!pte_same(pte, huge_ptep_get(ptep)));
+	huge_pte_clear(mm, vaddr, ptep, PMD_SIZE);
+	pte = huge_ptep_get(ptep);
+	WARN_ON(!huge_pte_none(pte));
+
+	pte = mk_huge_pte(page, prot);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	barrier();
+	huge_ptep_set_wrprotect(mm, vaddr, ptep);
+	pte = huge_ptep_get(ptep);
+	WARN_ON(huge_pte_write(pte));
+
+	pte = mk_huge_pte(page, prot);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	barrier();
+	huge_ptep_get_and_clear(mm, vaddr, ptep);
+	pte = huge_ptep_get(ptep);
+	WARN_ON(!huge_pte_none(pte));
+
+	pte = mk_huge_pte(page, prot);
+	pte = huge_pte_wrprotect(pte);
+	set_huge_pte_at(mm, vaddr, ptep, pte);
+	barrier();
+	pte = huge_pte_mkwrite(pte);
+	pte = huge_pte_mkdirty(pte);
+	huge_ptep_set_access_flags(vma, vaddr, ptep, pte, 1);
+	pte = huge_ptep_get(ptep);
+	WARN_ON(!(huge_pte_write(pte) && huge_pte_dirty(pte)));
+}
 #else  /* !CONFIG_HUGETLB_PAGE */
 static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t prot) { }
+static void __init hugetlb_advanced_tests(struct mm_struct *mm,
+					  struct vm_area_struct *vma,
+					  pte_t *ptep, unsigned long pfn,
+					  unsigned long vaddr, pgprot_t prot)
+{
+}
 #endif /* CONFIG_HUGETLB_PAGE */
 
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
@@ -568,6 +852,7 @@ static unsigned long __init get_random_vaddr(void)
 
 static int __init debug_vm_pgtable(void)
 {
+	struct vm_area_struct *vma;
 	struct mm_struct *mm;
 	pgd_t *pgdp;
 	p4d_t *p4dp, *saved_p4dp;
@@ -596,6 +881,12 @@ static int __init debug_vm_pgtable(void)
 	 */
 	protnone = __P000;
 
+	vma = vm_area_alloc(mm);
+	if (!vma) {
+		pr_err("vma allocation failed\n");
+		return 1;
+	}
+
 	/*
 	 * PFN for mapping at PTE level is determined from a standard kernel
 	 * text symbol. But pfns for higher page table levels are derived by
@@ -644,6 +935,20 @@ static int __init debug_vm_pgtable(void)
 	p4d_clear_tests(mm, p4dp);
 	pgd_clear_tests(mm, pgdp);
 
+	pte_advanced_tests(mm, vma, ptep, pte_aligned, vaddr, prot);
+	pmd_advanced_tests(mm, vma, pmdp, pmd_aligned, vaddr, prot);
+	pud_advanced_tests(mm, vma, pudp, pud_aligned, vaddr, prot);
+	hugetlb_advanced_tests(mm, vma, ptep, pte_aligned, vaddr, prot);
+
+	pmd_leaf_tests(pmd_aligned, prot);
+	pud_leaf_tests(pud_aligned, prot);
+
+	pmd_huge_tests(pmdp, pmd_aligned, prot);
+	pud_huge_tests(pudp, pud_aligned, prot);
+
+	pte_savedwrite_tests(pte_aligned, prot);
+	pmd_savedwrite_tests(pmd_aligned, prot);
+
 	pte_unmap_unlock(ptep, ptl);
 
 	pmd_populate_tests(mm, pmdp, saved_ptep);
@@ -678,6 +983,7 @@ static int __init debug_vm_pgtable(void)
 	pmd_free(mm, saved_pmdp);
 	pte_free(mm, saved_ptep);
 
+	vm_area_free(vma);
 	mm_dec_nr_puds(mm);
 	mm_dec_nr_pmds(mm);
 	mm_dec_nr_ptes(mm);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
