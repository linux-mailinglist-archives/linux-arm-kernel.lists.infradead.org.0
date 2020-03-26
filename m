Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A51619451D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 18:09:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ITumfv+w5lupUJ8BMmylDveLV3OpeRmpDkWMotLTKpM=; b=nswD7K49fhCQT1APFIxl4sSFP
	xJyLZl6KCJ4e2s1T5pTIuom8MQZzByDKodfwZs3ffbooW4xK5i9m4WOiN0ikuSSjKsty1XrDoOlsA
	UIr31TWkIK37qXC/D30hLhAdw3D1kvH7zGMB4ojHzdBuUR42Wsvh+5/6mqM1hfgi51A0occITUcoI
	QuR7f0BQPEzG5ec7EXznHeRrtdHerW+hxf42K67+t9DFuzBionFS5i5yv1gvP5V+NJFg0c+8llhuA
	ziu/7YkF9jLlkOwCvZTXt3kz4tLwOFYiDLIDx+a1WLRzaWY2IQ5MjpqFaUPwJ25uapPscIz47mNph
	6qOHLtQ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHW02-0001Iy-L9; Thu, 26 Mar 2020 17:08:58 +0000
Received: from hqnvemgate25.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVzp-0001Gr-Gt; Thu, 26 Mar 2020 17:08:47 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate25.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e7ce16a0001>; Thu, 26 Mar 2020 10:07:55 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 26 Mar 2020 10:08:41 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 26 Mar 2020 10:08:41 -0700
Received: from [10.2.169.181] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 26 Mar
 2020 17:08:37 +0000
From: Zi Yan <ziy@nvidia.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2 1/3] mm/debug: Add tests validating arch page table
 helpers for core features
Date: Thu, 26 Mar 2020 13:08:34 -0400
X-Mailer: MailMate (1.13.1r5680)
Message-ID: <CEB780BF-ECB6-4304-8C04-3DCBAF931492@nvidia.com>
In-Reply-To: <5b188e44-73d5-673c-8df1-f2c42b556cf9@arm.com>
References: <1585027375-9997-1-git-send-email-anshuman.khandual@arm.com>
 <1585027375-9997-2-git-send-email-anshuman.khandual@arm.com>
 <89E72C74-A32F-4A5B-B5F3-8A63428507A5@nvidia.com>
 <5b188e44-73d5-673c-8df1-f2c42b556cf9@arm.com>
MIME-Version: 1.0
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1585242475; bh=BwfOtD07idSpmJyy+vvL0tN3O7NJQEs+p7kB7u/XKe0=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:X-Mailer:Message-ID:
 In-Reply-To:References:MIME-Version:X-Originating-IP:
 X-ClientProxiedBy:Content-Type;
 b=XCHGyHXTrciWgn4hhrAArAkDizTNQ5oimD1MYGqqCVi9MwP/e19yTLd9sETkgDpy2
 WwCCnIGl9XY8oUofP95CbGwz2gKEai3i7yvHL1kHCCaq/F8xviikO3AlcQHDhNXWZV
 NYAiYM5+39HNU5efw66SB9d2cP8AGoA/RF6a1dplpFgnVpyNLDhH3VHdKLxE0sEWTO
 w2IdcvddX5jqXCtLrXpfEM/mC8ozh0jWxzjuKGVcFOrFpyYIPhTm/4EqSYZgcrMUoe
 TnZjOk7iVlWLNX83evNjzYxARN+95+Wb0QtZtoYqpT+Q1lqgp+0WEMVBgu4LQWk80n
 4jMAPs7pUcNUw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_100845_573588_2A5A2E3B 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Mike Rapoport <rppt@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-snps-arc@lists.infradead.org,
 Vasily Gorbik <gor@linux.ibm.com>, Borislav Petkov <bp@alien8.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 christophe.leroy@c-s.fr, Vineet Gupta <vgupta@synopsys.com>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============6280077729128417107=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6280077729128417107==
Content-Type: multipart/signed;
	boundary="=_MailMate_2ACBE892-258B-474F-BA87-40148258F45E_=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=_MailMate_2ACBE892-258B-474F-BA87-40148258F45E_=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 25 Mar 2020, at 22:18, Anshuman Khandual wrote:

> External email: Use caution opening links or attachments
>
>
> On 03/24/2020 06:59 PM, Zi Yan wrote:
>> On 24 Mar 2020, at 1:22, Anshuman Khandual wrote:
>>
>>> This adds new tests validating arch page table helpers for these foll=
owing
>>> core memory features. These tests create and test specific mapping ty=
pes at
>>> various page table levels.
>>>
>>> 1. SPECIAL mapping
>>> 2. PROTNONE mapping
>>> 3. DEVMAP mapping
>>> 4. SOFTDIRTY mapping
>>> 5. SWAP mapping
>>> 6. MIGRATION mapping
>>> 7. HUGETLB mapping
>>> 8. THP mapping
>>>
>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>> Cc: Mike Rapoport <rppt@linux.ibm.com>
>>> Cc: Vineet Gupta <vgupta@synopsys.com>
>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>> Cc: Will Deacon <will@kernel.org>
>>> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>>> Cc: Paul Mackerras <paulus@samba.org>
>>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>>> Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
>>> Cc: Vasily Gorbik <gor@linux.ibm.com>
>>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>>> Cc: Thomas Gleixner <tglx@linutronix.de>
>>> Cc: Ingo Molnar <mingo@redhat.com>
>>> Cc: Borislav Petkov <bp@alien8.de>
>>> Cc: "H. Peter Anvin" <hpa@zytor.com>
>>> Cc: Kirill A. Shutemov <kirill@shutemov.name>
>>> Cc: Paul Walmsley <paul.walmsley@sifive.com>
>>> Cc: Palmer Dabbelt <palmer@dabbelt.com>
>>> Cc: linux-snps-arc@lists.infradead.org
>>> Cc: linux-arm-kernel@lists.infradead.org
>>> Cc: linuxppc-dev@lists.ozlabs.org
>>> Cc: linux-s390@vger.kernel.org
>>> Cc: linux-riscv@lists.infradead.org
>>> Cc: x86@kernel.org
>>> Cc: linux-arch@vger.kernel.org
>>> Cc: linux-kernel@vger.kernel.org
>>> Suggested-by: Catalin Marinas <catalin.marinas@arm.com>
>>> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
>>> ---
>>>  mm/debug_vm_pgtable.c | 291 ++++++++++++++++++++++++++++++++++++++++=
+-
>>>  1 file changed, 290 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
>>> index 98990a515268..15055a8f6478 100644
>>> --- a/mm/debug_vm_pgtable.c
>>> +++ b/mm/debug_vm_pgtable.c
>>> @@ -289,6 +289,267 @@ static void __init pmd_populate_tests(struct mm=
_struct *mm, pmd_t *pmdp,
>>>      WARN_ON(pmd_bad(pmd));
>>>  }
>>>
>>> +static void __init pte_special_tests(unsigned long pfn, pgprot_t pro=
t)
>>> +{
>>> +    pte_t pte =3D pfn_pte(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_ARCH_HAS_PTE_SPECIAL))
>>> +            return;
>>> +
>>> +    WARN_ON(!pte_special(pte_mkspecial(pte)));
>>> +}
>>> +
>>> +static void __init pte_protnone_tests(unsigned long pfn, pgprot_t pr=
ot)
>>> +{
>>> +    pte_t pte =3D pfn_pte(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
>>> +            return;
>>> +
>>> +    WARN_ON(!pte_protnone(pte));
>>> +    WARN_ON(!pte_present(pte));
>>> +}
>>> +
>>> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>> +static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t pr=
ot)
>>> +{
>>> +    pmd_t pmd =3D pfn_pmd(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_NUMA_BALANCING))
>>> +            return;
>>> +
>>> +    WARN_ON(!pmd_protnone(pmd));
>>> +    WARN_ON(!pmd_present(pmd));
>>> +}
>>> +#else
>>> +static void __init pmd_protnone_tests(unsigned long pfn, pgprot_t pr=
ot) { }
>>> +#endif
>>> +
>>> +#ifdef CONFIG_ARCH_HAS_PTE_DEVMAP
>>> +static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot=
)
>>> +{
>>> +    pte_t pte =3D pfn_pte(pfn, prot);
>>> +
>>> +    WARN_ON(!pte_devmap(pte_mkdevmap(pte)));
>>> +}
>>> +
>>> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>> +static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot=
)
>>> +{
>>> +    pmd_t pmd =3D pfn_pmd(pfn, prot);
>>> +
>>> +    WARN_ON(!pmd_devmap(pmd_mkdevmap(pmd)));
>>> +}
>>> +
>>> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
>>> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot=
)
>>> +{
>>> +    pud_t pud =3D pfn_pud(pfn, prot);
>>> +
>>> +    WARN_ON(!pud_devmap(pud_mkdevmap(pud)));
>>> +}
>>> +#else
>>> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot=
) { }
>>> +#endif
>>> +#else
>>> +static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot=
) { }
>>> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot=
) { }
>>> +#endif
>>> +#else
>>> +static void __init pte_devmap_tests(unsigned long pfn, pgprot_t prot=
) { }
>>> +static void __init pmd_devmap_tests(unsigned long pfn, pgprot_t prot=
) { }
>>> +static void __init pud_devmap_tests(unsigned long pfn, pgprot_t prot=
) { }
>>> +#endif
>>> +
>>> +static void __init pte_soft_dirty_tests(unsigned long pfn, pgprot_t =
prot)
>>> +{
>>> +    pte_t pte =3D pfn_pte(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
>>> +            return;
>>> +
>>> +    WARN_ON(!pte_soft_dirty(pte_mksoft_dirty(pte)));
>>> +    WARN_ON(pte_soft_dirty(pte_clear_soft_dirty(pte)));
>>> +}
>>> +
>>> +static void __init pte_swap_soft_dirty_tests(unsigned long pfn, pgpr=
ot_t prot)
>>> +{
>>> +    pte_t pte =3D pfn_pte(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
>>> +            return;
>>> +
>>> +    WARN_ON(!pte_swp_soft_dirty(pte_swp_mksoft_dirty(pte)));
>>> +    WARN_ON(pte_swp_soft_dirty(pte_swp_clear_soft_dirty(pte)));
>>> +}
>>> +
>>> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>> +static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t =
prot)
>>> +{
>>> +    pmd_t pmd =3D pfn_pmd(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY))
>>> +            return;
>>> +
>>> +    WARN_ON(!pmd_soft_dirty(pmd_mksoft_dirty(pmd)));
>>> +    WARN_ON(pmd_soft_dirty(pmd_clear_soft_dirty(pmd)));
>>> +}
>>> +
>>> +static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgpr=
ot_t prot)
>>> +{
>>> +    pmd_t pmd =3D pfn_pmd(pfn, prot);
>>> +
>>> +    if (!IS_ENABLED(CONFIG_HAVE_ARCH_SOFT_DIRTY) ||
>>> +            !IS_ENABLED(CONFIG_ARCH_ENABLE_THP_MIGRATION))
>>> +            return;
>>> +
>>> +    WARN_ON(!pmd_swp_soft_dirty(pmd_swp_mksoft_dirty(pmd)));
>>> +    WARN_ON(pmd_swp_soft_dirty(pmd_swp_clear_soft_dirty(pmd)));
>>> +}
>>> +#else
>>> +static void __init pmd_soft_dirty_tests(unsigned long pfn, pgprot_t =
prot) { }
>>> +static void __init pmd_swap_soft_dirty_tests(unsigned long pfn, pgpr=
ot_t prot)
>>> +{
>>> +}
>>> +#endif
>>> +
>>> +static void __init pte_swap_tests(unsigned long pfn, pgprot_t prot)
>>> +{
>>> +    swp_entry_t swp;
>>> +    pte_t pte;
>>> +
>>> +    pte =3D pfn_pte(pfn, prot);
>>> +    swp =3D __pte_to_swp_entry(pte);
>>> +    WARN_ON(!pte_same(pte, __swp_entry_to_pte(swp)));
>>> +}
>>> +
>>> +#ifdef CONFIG_ARCH_ENABLE_THP_MIGRATION
>>> +static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot)
>>> +{
>>> +    swp_entry_t swp;
>>> +    pmd_t pmd;
>>> +
>>> +    pmd =3D pfn_pmd(pfn, prot);
>>> +    swp =3D __pmd_to_swp_entry(pmd);
>>> +    WARN_ON(!pmd_same(pmd, __swp_entry_to_pmd(swp)));
>>> +}
>>> +#else
>>> +static void __init pmd_swap_tests(unsigned long pfn, pgprot_t prot) =
{ }
>>> +#endif
>>> +
>>> +static void __init swap_migration_tests(void)
>>> +{
>>> +    struct page *page;
>>> +    swp_entry_t swp;
>>> +
>>> +    if (!IS_ENABLED(CONFIG_MIGRATION))
>>> +            return;
>>> +    /*
>>> +     * swap_migration_tests() requires a dedicated page as it needs =
to
>>> +     * be locked before creating a migration entry from it. Locking =
the
>>> +     * page that actually maps kernel text ('start_kernel') can be r=
eal
>>> +     * problematic. Lets allocate a dedicated page explicitly for th=
is
>>> +     * purpose that will be freed subsequently.
>>> +     */
>>> +    page =3D alloc_page(GFP_KERNEL);
>>> +    if (!page) {
>>> +            pr_err("page allocation failed\n");
>>> +            return;
>>> +    }
>>> +
>>> +    /*
>>> +     * make_migration_entry() expects given page to be
>>> +     * locked, otherwise it stumbles upon a BUG_ON().
>>> +     */
>>> +    __SetPageLocked(page);
>>> +    swp =3D make_migration_entry(page, 1);
>>> +    WARN_ON(!is_migration_entry(swp));
>>> +    WARN_ON(!is_write_migration_entry(swp));
>>> +
>>> +    make_migration_entry_read(&swp);
>>> +    WARN_ON(!is_migration_entry(swp));
>>> +    WARN_ON(is_write_migration_entry(swp));
>>> +
>>> +    swp =3D make_migration_entry(page, 0);
>>> +    WARN_ON(!is_migration_entry(swp));
>>> +    WARN_ON(is_write_migration_entry(swp));
>>> +    __ClearPageLocked(page);
>>> +    __free_page(page);
>>> +}
>>> +
>>> +#ifdef CONFIG_HUGETLB_PAGE
>>> +static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t p=
rot)
>>> +{
>>> +    struct page *page;
>>> +    pte_t pte;
>>> +
>>> +    /*
>>> +     * Accessing the page associated with the pfn is safe here,
>>> +     * as it was previously derived from a real kernel symbol.
>>> +     */
>>> +    page =3D pfn_to_page(pfn);
>>> +    pte =3D mk_huge_pte(page, prot);
>>> +
>>> +    WARN_ON(!huge_pte_dirty(huge_pte_mkdirty(pte)));
>>> +    WARN_ON(!huge_pte_write(huge_pte_mkwrite(huge_pte_wrprotect(pte)=
)));
>>> +    WARN_ON(huge_pte_write(huge_pte_wrprotect(huge_pte_mkwrite(pte))=
));
>>> +
>>> +#ifdef CONFIG_ARCH_WANT_GENERAL_HUGETLB
>>> +    pte =3D pfn_pte(pfn, prot);
>>> +
>>> +    WARN_ON(!pte_huge(pte_mkhuge(pte)));
>>> +#endif
>>> +}
>>> +#else
>>> +static void __init hugetlb_basic_tests(unsigned long pfn, pgprot_t p=
rot) { }
>>> +#endif
>>> +
>>> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
>>> +static void __init pmd_thp_tests(unsigned long pfn, pgprot_t prot)
>>> +{
>>> +    pmd_t pmd;
>>> +
>>> +    /*
>>> +     * pmd_trans_huge() and pmd_present() must return positive
>>> +     * after MMU invalidation with pmd_mknotpresent().
>>> +     */
>>> +    pmd =3D pfn_pmd(pfn, prot);
>>> +    WARN_ON(!pmd_trans_huge(pmd_mkhuge(pmd)));
>>> +
>>> +#ifndef __HAVE_ARCH_PMDP_INVALIDATE
>>> +    WARN_ON(!pmd_trans_huge(pmd_mknotpresent(pmd_mkhuge(pmd))));
>>> +    WARN_ON(!pmd_present(pmd_mknotpresent(pmd_mkhuge(pmd))));
>>> +#endif
>>
>> I think we need a better comment here, because requiring pmd_trans_hug=
e() and
>> pmd_present() returning true after pmd_mknotpresent() is not straightf=
orward.
>
> Thats right.
>
>>
>> According to Andrea Arcangeli=E2=80=99s email (https://lore.kernel.org=
/linux-mm/20181017020930.GN30832@redhat.com/),
>> This behavior is an optimization for transparent huge page.
>> pmd_trans_huge() must be true if pmd_page() returns you a valid THP to=
 avoid
>> taking the pmd_lock when others walk over non transhuge pmds (i.e. the=
re are no
>> THP allocated). Especially when we split a THP, removing the present b=
it from
>> the pmd, pmd_trans_huge() still needs to return true. pmd_present() sh=
ould
>> be true whenever pmd_trans_huge() returns true.
>
> Sure, will modify the existing comment here like this.
>
>         /*
>          * pmd_trans_huge() and pmd_present() must return positive afte=
r
>          * MMU invalidation with pmd_mknotpresent(). This behavior is a=
n
>          * optimization for transparent huge page. pmd_trans_huge() mus=
t
>          * be true if pmd_page() returns a valid THP to avoid taking th=
e
>          * pmd_lock when others walk over non transhuge pmds (i.e. ther=
e
>          * are no THP allocated). Especially when splitting a THP and
>          * removing the present bit from the pmd, pmd_trans_huge() stil=
l
>          * needs to return true. pmd_present() should be true whenever
>          * pmd_trans_huge() returns true.
>          */
>
>>
>> I think it is also worth either putting Andres=E2=80=99s email or the =
link to it
>> in the rst file in your 3rd patch. It is a good documentation for this=
 special
>> case.
>
> Makes sense. Will update Andrea's email link in the .rst file as well.
>

Look good to me. Thanks.

Reviewed-by: Zi Yan <ziy@nvidia.com>

=E2=80=94
Best Regards,
Yan Zi

--=_MailMate_2ACBE892-258B-474F-BA87-40148258F45E_=
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJDBAEBCgAtFiEEh7yFAW3gwjwQ4C9anbJR82th+ooFAl584ZIPHHppeUBudmlk
aWEuY29tAAoJEJ2yUfNrYfqKdy4P/3ofw7nekR6lj+F67bUoA1kamVe7nB1GPlMF
gplxJACEyMz8W/H+UrHswz53iUk5KgB1Bbi1M2ZPJ7iYPGj0CvHyNTKqCMHHz0aW
Bokl7IHbH04B5ISX11DtWPe6BJvH0VU8rVoLAI4HIASjFm3MpyJ/ZfeO9b4/LInH
1P2gusknbYf2e8L7e5vm9miYGny0a9Tab2PQHB3CNRAORcyYUOON8z2Y3hZpuuXY
pZDvALP7JzmSlZVsvQvPzfnefIqj7tTOD5/lTEHC3Y1HDbwMKqzmTWqgehHm2nux
IkVja3DFoDDkRxxSYSH2hiBl5x0Z+qluDV9SAMZD6Jj3XGkpVrjgNAhlah6SXjGp
UjW1XnXCrsCGvF+UykRAVT02MopL+VdNBv4r66+Z8OEAV2olX3V2TdHzxwdITf7a
GL/dQ+I8di+wjOCqKHnfKBoqSHbP1P1P7UtRogKsXU47Fn4or1Uxqj/XB6TyYCYB
I0A1cIFWyIPO4TuvpGsHXM1IewapQWf4Pv4T4xPG0Fs9Gk4dKBstEbfxrATQ1wNr
OTliq9iSeRIhXnsAgENPcZjk1ZBGCw7ZdZ71eI5kZYmanGAoha+mONcnixD6aVQ8
mCyt/2qwFsNJ2ZmCGjvGHYbf6u0fkPSSVGzarakQyrkVfdfCy6LGBC1GIcP18lOD
ySDekypB
=GWeO
-----END PGP SIGNATURE-----

--=_MailMate_2ACBE892-258B-474F-BA87-40148258F45E_=--


--===============6280077729128417107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6280077729128417107==--

