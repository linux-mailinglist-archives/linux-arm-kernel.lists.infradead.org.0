Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AF219A6EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXv86lkQSyM7ybjGpCLklTtxX+CxabFEM4maRH0oZAY=; b=ry/6rSwStMFALn
	ACJJP//3PA3yeeDrovs0szMtB8cp/aZeEeWgdTiPIvuOsBhqRE6F8sEB4KIN78ltewNLjniixgfm2
	giZ4ZmknMkehFE1W8EBG/BHEWKEuYGt81h5itTkHrPAttbbpfNq+3yGrIsN6MEKpR0UEuxJcX5Zzl
	qa9Y7kbadSaD7qwJVBiptiLVD8EbIZdgscoP0N+lmj/OkXkrTkZv7VOnvlZaqcLXl1kMcwBDcL8M4
	0p1wKkd5OitRbQcf3Hj+WcPl3EpA5xHhD4glG+Atztqdry5S6/tmj39/Da0ETimKQLsDccsc2Xoyo
	mxFzPHm7L3/TTT7mESKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYWF-0005z5-MJ; Wed, 01 Apr 2020 08:14:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYW8-0005yF-Cb
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:14:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 754A631B;
 Wed,  1 Apr 2020 01:14:29 -0700 (PDT)
Received: from [10.163.1.70] (unknown [10.163.1.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E7123F52E;
 Wed,  1 Apr 2020 01:14:26 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
 <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
 <20190628102003.GA56463@arrakis.emea.arm.com>
 <82237e21-1f14-ab6e-0f80-9706141e2172@arm.com>
 <20190703175250.GF48312@arrakis.emea.arm.com>
 <b710f91e-3c8a-6e50-ce84-2f6869891589@arm.com>
Message-ID: <5425f013-b6c1-6a27-c602-687762f26635@arm.com>
Date: Wed, 1 Apr 2020 13:44:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <b710f91e-3c8a-6e50-ce84-2f6869891589@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_011432_515521_C14FE5A7 
X-CRM114-Status: GOOD (  30.54  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrea Arcangeli <aarcange@redhat.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/08/2019 09:57 AM, Anshuman Khandual wrote:
> 
> On 07/03/2019 11:22 PM, Catalin Marinas wrote:
>> On Tue, Jul 02, 2019 at 09:07:28AM +0530, Anshuman Khandual wrote:
>>> On 06/28/2019 03:50 PM, Catalin Marinas wrote:
>>>> On Thu, Jun 27, 2019 at 06:18:15PM +0530, Anshuman Khandual wrote:
>>>>> pmd_present() and pmd_trans_huge() are expected to behave in the following
>>>>> manner during various phases of a given PMD. It is derived from a previous
>>>>> detailed discussion on this topic [1] and present THP documentation [2].
>>>>>
>>>>> pmd_present(pmd):
>>>>>
>>>>> - Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
>>>>> - Returns false if pmd does not refer to system RAM - Invalid pmd_page(pmd)
>>>>>
>>>>> pmd_trans_huge(pmd):
>>>>>
>>>>> - Returns true if pmd refers to system RAM and is a trans huge mapping
>> [...]
>>>> Before we actually start fixing this, I would strongly suggest that you
>>>> add a boot selftest (see lib/Kconfig.debug for other similar cases)
>>>> which checks the consistency of the page table macros w.r.t. the
>>>> expected mm semantics. Once the mm maintainers agreed with the
>>>> semantics, it will really help architecture maintainers in implementing
>>>> them correctly.
>>> Sure and it will help all architectures to be in sync wrt semantics.
>>>
>>>> You wouldn't need actual page tables, just things like assertions on
>>>> pmd_trans_huge(pmd_mkhuge(pmd)) == true. You could go further and have
>>>> checks on pmdp_invalidate(&dummy_vma, dummy_addr, &dummy_pmd) with the
>>>> dummy_* variables on the stack.
>>> Hmm. I guess macros which operate directly on a page table entry will be
>>> okay but the ones which check on specific states for VMA or MM might be
>>> bit tricky. Try to emulate VMA/MM states while on stack ?. But sure, will
>>> explore adding such a test.
>> You can pretend that the page table is on the stack. See the _pmd
>> variable in do_huge_pmd_wp_page_fallback() and
>> __split_huge_zero_page_pmd(). Similarly, the vma and even the mm can be
>> faked on the stack (see the arm64 tlb_flush()).
> Sure will explore them and other similar examples. I am already working on a module
> which will test various architecture page table accessors semantics as expected from
> generic MM. This should help us making sure that all architectures are on same page.
> 
>>>>> The problem:
>>>>>
>>>>> PMD is first invalidated with pmdp_invalidate() before it's splitting. This
>>>>> invalidation clears PMD_SECT_VALID as below.
>>>>>
>>>>> PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_VALID
>>>>>
>>>>> Once PMD_SECT_VALID gets cleared, it results in pmd_present() return false
>>>>> on the PMD entry.
>>>> I think that's an inconsistency in the expected semantics here. Do you
>>>> mean that pmd_present(pmd_mknotpresent(pmd)) should be true? If not, do
>> [...]
>>> pmd_present() and pmd_mknotpresent() are not exact inverse.
>> I find this very confusing (not your fault, just the semantics expected
>> by the core code). I can see that x86 is using _PAGE_PSE to make
>> pmd_present(pmd_mknotpresent()) == true. However, for pud that's not the
>> case (because it's not used for transhuge).
>>
>> I'd rather have this renamed to pmd_mknotvalid().
> Right, it makes sense to do the renaming even without considering this proposal.
> 
>>> In absence of a positive section mapping bit on arm64, PTE_SPECIAL is being set
>>> temporarily to remember that it was a mapped PMD which got invalidated recently
>>> but which still points to memory. Hence pmd_present() must evaluate true.
>> I wonder if we can encode this safely for arm64 in the bottom two bits
>> of a pmd :
>>
>> 0b00 - not valid, not present
>> 0b10 - not valid, present, huge
>> 0b01 - valid, present, huge
>> 0b11 - valid, table (not huge)
>>
>> Do we ever call pmdp_invalidate() on a table entry? I don't think we do.
>>
>> So a pte_mknotvalid would set bit 1 and I think swp_entry_to_pmd() would
>> have to clear it so that pmd_present() actually returns false for a swp
>> pmd entry.
> All these makes it riskier for collision with other core MM paths as compared to
> using a an isolated SW bit like PTE_SPECIAL exclusively for this purpose. This
> is in line with using PTE_PROTNONE. PTE_SPECIAL seems to be well away from core
> PMD path. Is there any particular concern about using PTE_SPECIAL ? Nonetheless
> I will evaluate above proposal of using (0b10) to represent invalid but present
> huge PMD entry during splitting.

Tried to implement the proposed encoding scheme from Catalin and it does
seem to work with (or even without) clearing the PMD_TABLE_BIT bit during
__swp_entry_to_pmd(). It clears basic memory stress test with THP enabled.

0b00 - not valid, not present
0b10 - not valid, present, huge		/* Invalidated splitting PMD */
0b01 - valid, present, huge		/* Valid mapped PMD */
0b11 - valid, table (not huge)

Will continue testing this change.

----------->
From 9593fb80eb41984de484fd151cd1140f4cbead7e Mon Sep 17 00:00:00 2001
From: Anshuman Khandual <anshuman.khandual@arm.com>
Date: Tue, 31 Mar 2020 11:38:53 +0100
Subject: [PATCH] arm64/mm: Change THP helpers to comply with generic MM
 semantics

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/pgtable.h | 74 ++++++++++++++++++++++++++++----
 arch/arm64/mm/hugetlbpage.c      |  2 +-
 2 files changed, 67 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 44883038dbe6..86c22a4fa427 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -348,15 +348,72 @@ static inline int pmd_protnone(pmd_t pmd)
 }
 #endif
 
+#define pmd_table(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
+				 PMD_TYPE_TABLE)
+#define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
+				 PMD_TYPE_SECT)
+static pmd_t pmd_mksplitting(pmd_t pmd)
+{
+	unsigned long mask = PMD_TYPE_MASK;
+	unsigned long val = pmd_val(pmd);
+
+	val = (val & ~mask) | PMD_TABLE_BIT;
+
+	return __pmd(val);
+}
+
+static bool pmd_splitting(pmd_t pmd)
+{
+	unsigned long mask = PMD_TYPE_MASK;
+	unsigned long val = pmd_val(pmd);
+
+	if ((val & mask) == PMD_TABLE_BIT)
+		return true;
+
+	return false;
+}
+
+static bool pmd_mapped(pmd_t pmd)
+{
+	return pmd_sect(pmd);
+}
+
+static inline int pmd_present(pmd_t pmd)
+{
+	pte_t pte = pmd_pte(pmd);
+
+	if (pte_present(pte))
+		return 1;
+
+	if (pmd_splitting(pmd))
+		return 1;
+
+	return 0;
+}
+
 /*
  * THP definitions.
  */
 
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
-#define pmd_trans_huge(pmd)	(pmd_val(pmd) && !(pmd_val(pmd) & PMD_TABLE_BIT))
+static inline int pmd_trans_huge(pmd_t pmd)
+{
+	if (!pmd_present(pmd))
+		return 0;
+
+	if (!pmd_val(pmd))
+		return 0;
+
+	if (pmd_mapped(pmd))
+		return 1;
+
+	if (pmd_splitting(pmd))
+		return 1;
+
+	return 0;
+}
 #endif /* CONFIG_TRANSPARENT_HUGEPAGE */
 
-#define pmd_present(pmd)	pte_present(pmd_pte(pmd))
 #define pmd_dirty(pmd)		pte_dirty(pmd_pte(pmd))
 #define pmd_young(pmd)		pte_young(pmd_pte(pmd))
 #define pmd_valid(pmd)		pte_valid(pmd_pte(pmd))
@@ -366,7 +423,12 @@ static inline int pmd_protnone(pmd_t pmd)
 #define pmd_mkclean(pmd)	pte_pmd(pte_mkclean(pmd_pte(pmd)))
 #define pmd_mkdirty(pmd)	pte_pmd(pte_mkdirty(pmd_pte(pmd)))
 #define pmd_mkyoung(pmd)	pte_pmd(pte_mkyoung(pmd_pte(pmd)))
-#define pmd_mknotvalid(pmd)	(__pmd(pmd_val(pmd) & ~PMD_SECT_VALID))
+
+static inline pmd_t pmd_mknotvalid(pmd_t pmd)
+{
+	BUG_ON(pmd_table(pmd));
+	return pmd_mksplitting(pmd);
+}
 
 #define pmd_thp_or_huge(pmd)	(pmd_huge(pmd) || pmd_trans_huge(pmd))
 
@@ -437,10 +499,6 @@ extern pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 
 #define pmd_bad(pmd)		(!(pmd_val(pmd) & PMD_TABLE_BIT))
 
-#define pmd_table(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
-				 PMD_TYPE_TABLE)
-#define pmd_sect(pmd)		((pmd_val(pmd) & PMD_TYPE_MASK) == \
-				 PMD_TYPE_SECT)
 #define pmd_leaf(pmd)		pmd_sect(pmd)
 
 #if defined(CONFIG_ARM64_64K_PAGES) || CONFIG_PGTABLE_LEVELS < 3
@@ -834,7 +892,7 @@ static inline pmd_t pmdp_establish(struct vm_area_struct *vma,
 
 #ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
 #define __pmd_to_swp_entry(pmd)        ((swp_entry_t) { pmd_val(pmd) })
-#define __swp_entry_to_pmd(swp)        __pmd((swp).val)
+#define __swp_entry_to_pmd(swp)        __pmd((swp).val & ~PMD_TABLE_BIT)
 #endif
 
 /*
diff --git a/arch/arm64/mm/hugetlbpage.c b/arch/arm64/mm/hugetlbpage.c
index bbeb6a5a6ba6..056fe716b9f8 100644
--- a/arch/arm64/mm/hugetlbpage.c
+++ b/arch/arm64/mm/hugetlbpage.c
@@ -283,7 +283,7 @@ pte_t *huge_pte_offset(struct mm_struct *mm,
 	if (!(sz == PMD_SIZE || sz == CONT_PMD_SIZE) &&
 	    pmd_none(pmd))
 		return NULL;
-	if (pmd_huge(pmd) || !pmd_present(pmd))
+	if (pmd_huge(pmd) || !pte_present(pmd_pte(pmd)))
 		return (pte_t *)pmdp;
 
 	if (sz == CONT_PTE_SIZE)
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
