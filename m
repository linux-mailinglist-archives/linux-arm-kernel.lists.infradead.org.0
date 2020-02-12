Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB8B15A522
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 10:43:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4ygCkARiLVYn27VbrrghVpCrU8sayB1ggt+43ePFIs=; b=J8p4KymBSO3FWW
	fMuU+3pe0j2znbQqTfaWmGjN6tIhYaATq/ap2z7JgRjFHpGLHVvBeNfCX+mscvhnyw4XlBZZxhDtn
	ogL52MgUR7/GKkkWLIvl7ediUikDXWeQvR+uMnvnTSngbcxxLx4R+wx5NRToStQdEE1YDTNWy/2Sw
	r2uOh/Ka//JXtkanKP6GC+d6rz8EqXimZ/hC0C+Q2wrpJ1XK3rybRzXyhmXCCfuVNQICiTpA/QHJB
	TqDEn5qsB2frLS7EZyN3fL3LHezPE02hVHNM0AAhupQwqx7iYffGppYHW1fRuhJGTRbUz67uCYn50
	9cRcsfyZ4Al6soIJyesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1oYB-0006qW-V3; Wed, 12 Feb 2020 09:43:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1oY3-0006p9-KQ; Wed, 12 Feb 2020 09:43:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E4F4230E;
 Wed, 12 Feb 2020 01:43:05 -0800 (PST)
Received: from [10.163.1.114] (unknown [10.163.1.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F02F3F6CF;
 Wed, 12 Feb 2020 01:42:51 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V12] mm/debug: Add tests validating architecture page
 table helpers
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1580174873-18117-1-git-send-email-anshuman.khandual@arm.com>
 <20200210153716.GB9283@E121110.arm.com>
Message-ID: <b169ff9d-7b87-91f4-b3d0-e97f86680d0c@arm.com>
Date: Wed, 12 Feb 2020 15:12:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200210153716.GB9283@E121110.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_014311_763783_E3C7100B 
X-CRM114-Status: GOOD (  36.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Ingo Molnar <mingo@kernel.org>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, Michael Ellerman <mpe@ellerman.id.au>,
 Vlastimil Babka <vbabka@suse.cz>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Dan Williams <dan.j.williams@intel.com>, Mark Brown <broonie@kernel.org>,
 "Kirill A . Shutemov" <kirill@shutemov.name>,
 Thomas Gleixner <tglx@linutronix.de>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Dave Hansen <dave.hansen@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2020 09:07 PM, Catalin Marinas wrote:
> On Tue, Jan 28, 2020 at 06:57:53AM +0530, Anshuman Khandual wrote:
>> This gets build and run when CONFIG_DEBUG_VM_PGTABLE is selected along with
>> CONFIG_VM_DEBUG. Architectures willing to subscribe this test also need to
>> select CONFIG_ARCH_HAS_DEBUG_VM_PGTABLE which for now is limited to x86 and
>> arm64. Going forward, other architectures too can enable this after fixing
>> build or runtime problems (if any) with their page table helpers.
> 
> It may be worth posting the next version to linux-arch to reach out to
> other arch maintainers.

Sure, will do.

> 
> Also I've seen that you posted a v13 but it hasn't reached
> linux-arm-kernel (likely held in moderation because of the large amount
> of addresses cc'ed) and I don't normally follow LKML. I'm not cc'ed to
> this patch either (which is fine as long as you post to a list that I
> read).

Right, the CC list on V13 was a disaster. I did not realize that it will
exceed the permitted limit when the lists will start refusing to take. In
fact, it looks like LKML did not get the email either.

> 
> Since I started the reply on v12 about a week ago, I'll follow up here.
> When you post a v14, please trim the people on cc only to those strictly
> necessary (e.g. arch maintainers, linux-mm, linux-arch and lkml).

Sure, will do.

> 
>> diff --git a/Documentation/features/debug/debug-vm-pgtable/arch-support.txt b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
>> new file mode 100644
>> index 000000000000..f3f8111edbe3
>> --- /dev/null
>> +++ b/Documentation/features/debug/debug-vm-pgtable/arch-support.txt
>> @@ -0,0 +1,35 @@
>> +#
>> +# Feature name:          debug-vm-pgtable
>> +#         Kconfig:       ARCH_HAS_DEBUG_VM_PGTABLE
>> +#         description:   arch supports pgtable tests for semantics compliance
>> +#
>> +    -----------------------
>> +    |         arch |status|
>> +    -----------------------
>> +    |       alpha: | TODO |
>> +    |         arc: |  ok  |
>> +    |         arm: | TODO |
> 
> I'm sure you can find some arm32 hardware around (or a VM) to give this
> a try ;).

It does not build on arm32 and we dont have an agreement on how to go about
that either, hence will disable this test on IA64 and ARM (32) in order to
prevent the known build failures (as Andrew had requested).

> 
>> diff --git a/arch/x86/include/asm/pgtable_64.h b/arch/x86/include/asm/pgtable_64.h
>> index 0b6c4042942a..fb0e76d254b3 100644
>> --- a/arch/x86/include/asm/pgtable_64.h
>> +++ b/arch/x86/include/asm/pgtable_64.h
> [...]
>> @@ -1197,6 +1197,7 @@ static noinline void __init kernel_init_freeable(void)
>>  	sched_init_smp();
>>  
>>  	page_alloc_init_late();
>> +	debug_vm_pgtable();
>>  	/* Initialize page ext after all struct pages are initialized. */
>>  	page_ext_init();
> 
> I guess you could even make debug_vm_pgtable() an early_initcall(). I
> don't have a strong opinion either way.
> 
>> diff --git a/mm/debug_vm_pgtable.c b/mm/debug_vm_pgtable.c
>> new file mode 100644
>> index 000000000000..0f37f32d15f1
>> --- /dev/null
>> +++ b/mm/debug_vm_pgtable.c
>> @@ -0,0 +1,388 @@
> [...]
>> +/*
>> + * Basic operations
>> + *
>> + * mkold(entry)			= An old and not a young entry
>> + * mkyoung(entry)		= A young and not an old entry
>> + * mkdirty(entry)		= A dirty and not a clean entry
>> + * mkclean(entry)		= A clean and not a dirty entry
>> + * mkwrite(entry)		= A write and not a write protected entry
>> + * wrprotect(entry)		= A write protected and not a write entry
>> + * pxx_bad(entry)		= A mapped and non-table entry
>> + * pxx_same(entry1, entry2)	= Both entries hold the exact same value
>> + */
>> +#define VMFLAGS	(VM_READ|VM_WRITE|VM_EXEC)
>> +
>> +/*
>> + * On s390 platform, the lower 12 bits are used to identify given page table
>> + * entry type and for other arch specific requirements. But these bits might
>> + * affect the ability to clear entries with pxx_clear(). So while loading up
>> + * the entries skip all lower 12 bits in order to accommodate s390 platform.
>> + * It does not have affect any other platform.
>> + */
>> +#define RANDOM_ORVALUE	(0xfffffffffffff000UL)
> 
> I'd suggest you generate this mask with something like
> GENMASK(BITS_PER_LONG, PAGE_SHIFT).

IIRC the lower 12 bits constrains on s390 platform might not be really related
to it's PAGE_SHIFT which can be a variable, but instead just a constant number.
But can definitely use GENMASK or it's variants here.

https://lkml.org/lkml/2019/9/5/862

> 
>> +#define RANDOM_NZVALUE	(0xff)
>> +
>> +static void __init pte_basic_tests(unsigned long pfn, pgprot_t prot)
>> +{
>> +	pte_t pte = pfn_pte(pfn, prot);
>> +
>> +	WARN_ON(!pte_same(pte, pte));
>> +	WARN_ON(!pte_young(pte_mkyoung(pte)));
>> +	WARN_ON(!pte_dirty(pte_mkdirty(pte)));
>> +	WARN_ON(!pte_write(pte_mkwrite(pte)));
>> +	WARN_ON(pte_young(pte_mkold(pte)));
>> +	WARN_ON(pte_dirty(pte_mkclean(pte)));
>> +	WARN_ON(pte_write(pte_wrprotect(pte)));
> 
> Given that you start with rwx permissions set,
> some of these ops would not have any effect. For example, on arm64 at
> least, mkwrite clears a bit already cleared here. You could try with

PTE_RDONLY !

> multiple rwx combinations values (e.g. all set and all cleared) or maybe

Which will require running the sequence of tests multiple times, each
time with different prot value (e.g all set or all clear). Wondering
if that would be better than the proposed single pass.

> something like below:
> 
> 	WARN_ON(!pte_write(pte_mkwrite(pte_wrprotect(pte))));

Hmm, we should run invert functions first for each function we are
trying to test ? That makes sense because any platform specific bit
combination (clear or set) for the function to be tested, will first
be flipped with it's invert function.

> 
> You could also try something like this:
> 
> 	WARN_ON(!pte_same(pte_wrprotect(pte), pte_wrprotect(pte_mkwrite(pte))));
> 
> though the above approach may not work for arm64 ptep_set_wrprotect() on
> a dirty pte (if you extend these tests later).

Okay, will use the previous method (invert function -> actual function) for
basic tests on each level.

> 
>> +}
>> +
>> +#ifdef CONFIG_TRANSPARENT_HUGEPAGE
>> +static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot)
>> +{
>> +	pmd_t pmd = pfn_pmd(pfn, prot);
>> +
>> +	WARN_ON(!pmd_same(pmd, pmd));
>> +	WARN_ON(!pmd_young(pmd_mkyoung(pmd)));
>> +	WARN_ON(!pmd_dirty(pmd_mkdirty(pmd)));
>> +	WARN_ON(!pmd_write(pmd_mkwrite(pmd)));
>> +	WARN_ON(pmd_young(pmd_mkold(pmd)));
>> +	WARN_ON(pmd_dirty(pmd_mkclean(pmd)));
>> +	WARN_ON(pmd_write(pmd_wrprotect(pmd)));
>> +	/*
>> +	 * A huge page does not point to next level page table
>> +	 * entry. Hence this must qualify as pmd_bad().
>> +	 */
>> +	WARN_ON(!pmd_bad(pmd_mkhuge(pmd)));
>> +}
>> +
>> +#ifdef CONFIG_HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD
>> +static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot)
>> +{
>> +	pud_t pud = pfn_pud(pfn, prot);
>> +
>> +	WARN_ON(!pud_same(pud, pud));
>> +	WARN_ON(!pud_young(pud_mkyoung(pud)));
>> +	WARN_ON(!pud_write(pud_mkwrite(pud)));
>> +	WARN_ON(pud_write(pud_wrprotect(pud)));
>> +	WARN_ON(pud_young(pud_mkold(pud)));
>> +
>> +	if (mm_pmd_folded(mm) || __is_defined(ARCH_HAS_4LEVEL_HACK))
>> +		return;
>> +
>> +	/*
>> +	 * A huge page does not point to next level page table
>> +	 * entry. Hence this must qualify as pud_bad().
>> +	 */
>> +	WARN_ON(!pud_bad(pud_mkhuge(pud)));
>> +}
>> +#else
>> +static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot) { }
>> +#endif
>> +#else
>> +static void __init pmd_basic_tests(unsigned long pfn, pgprot_t prot) { }
>> +static void __init pud_basic_tests(unsigned long pfn, pgprot_t prot) { }
>> +#endif
>> +
>> +static void __init p4d_basic_tests(unsigned long pfn, pgprot_t prot)
>> +{
>> +	p4d_t p4d;
>> +
>> +	memset(&p4d, RANDOM_NZVALUE, sizeof(p4d_t));
>> +	WARN_ON(!p4d_same(p4d, p4d));
>> +}
>> +
>> +static void __init pgd_basic_tests(unsigned long pfn, pgprot_t prot)
>> +{
>> +	pgd_t pgd;
>> +
>> +	memset(&pgd, RANDOM_NZVALUE, sizeof(pgd_t));
>> +	WARN_ON(!pgd_same(pgd, pgd));
>> +}
>> +
>> +#ifndef __ARCH_HAS_4LEVEL_HACK
> 
> This macro doesn't exist in the kernel anymore (it's a 5LEVEL now). But

I was aware about the work to drop __ARCH_HAS_4LEVEL_HACK but did not realize
that it has already merged.

> can you not use the __PAGETABLE_PUD_FOLDED instead?

Sure, will try.

> 
>> +static void __init pud_clear_tests(struct mm_struct *mm, pud_t *pudp)
>> +{
>> +	pud_t pud = READ_ONCE(*pudp);
>> +
>> +	if (mm_pmd_folded(mm))
>> +		return;
>> +
>> +	pud = __pud(pud_val(pud) | RANDOM_ORVALUE);
>> +	WRITE_ONCE(*pudp, pud);
>> +	pud_clear(pudp);
>> +	pud = READ_ONCE(*pudp);
>> +	WARN_ON(!pud_none(pud));
>> +}
>> +
>> +static void __init pud_populate_tests(struct mm_struct *mm, pud_t *pudp,
>> +				      pmd_t *pmdp)
>> +{
>> +	pud_t pud;
>> +
>> +	if (mm_pmd_folded(mm))
>> +		return;
>> +	/*
>> +	 * This entry points to next level page table page.
>> +	 * Hence this must not qualify as pud_bad().
>> +	 */
>> +	pmd_clear(pmdp);
>> +	pud_clear(pudp);
>> +	pud_populate(mm, pudp, pmdp);
>> +	pud = READ_ONCE(*pudp);
>> +	WARN_ON(pud_bad(pud));
>> +}
>> +#else
>> +static void __init pud_clear_tests(struct mm_struct *mm, pud_t *pudp) { }
>> +static void __init pud_populate_tests(struct mm_struct *mm, pud_t *pudp,
>> +				      pmd_t *pmdp)
>> +{
>> +}
>> +#endif
>> +
>> +#ifndef __ARCH_HAS_5LEVEL_HACK
> 
> Could you use __PAGETABLE_P4D_FOLDED instead?

Sure, will try.

Initial tests with __PAGETABLE_PUD_FOLDED and __PAGETABLE_P4D_FOLDED
replacement looks okay.
 
> 
>> +static void __init p4d_clear_tests(struct mm_struct *mm, p4d_t *p4dp)
>> +{
>> +	p4d_t p4d = READ_ONCE(*p4dp);
>> +
>> +	if (mm_pud_folded(mm))
>> +		return;
>> +
>> +	p4d = __p4d(p4d_val(p4d) | RANDOM_ORVALUE);
>> +	WRITE_ONCE(*p4dp, p4d);
>> +	p4d_clear(p4dp);
>> +	p4d = READ_ONCE(*p4dp);
>> +	WARN_ON(!p4d_none(p4d));
>> +}
> 
> Otherwise the patch looks fine. As per the comment on v13, make sure you
> don't break the build on any architecture, so this could either be an
> opt-in or patch those architectures before this patch is applied.

We already have an opt-in method through ARCH_HAS_DEBUG_VM_PGTABLE config.
But lately (v13) we had decided to enable the test through CONFIG_EXPERT,
for better adaptability on non supported platforms without requiring it's
Kconfig change. This exposed the existing build failures on IA64 and ARM.
I will probably disable the test on those platforms as agreed upon on V13
thread.

> 
> Thanks.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
