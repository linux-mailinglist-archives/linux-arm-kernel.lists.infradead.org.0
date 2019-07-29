Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C9478D49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 15:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJ0jARQ2QNnrFJfdEaJTnGNYkUw6qgvQXcq/zrOhb3s=; b=Q0mbQImYxDdUDx
	Jq+Ty8ql/79iSi5segVN4sbqYn5X+eTYyhU8vW6x0hUO2cKlgmxIBFFjmIMQNQi4ybQyoFv4rmf/Y
	bPK9OXqhPsMwDs5lK30z9NNbeSOBRYGcDNIZC17N0+UtTBv3WneU5FCPaq8DtGUWAFe0WUAL33tP0
	YsaGMGZgUf/Ql7rin4tht/cQMuhf2qJiAzeYmUwA1lKyQ/T1yT4Kq5AIMA7Tfrg3+7waNTm/W3jlM
	xQnsxPlS4jtJ6QYkAoHCsfGgt+5foKfAkRBsLnQGVnBsU5pJJXbAOO+FhQ5VkgcOUI82NZsbFGk3W
	e73jbFQ3p4XV83ylF3iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs69N-0002Nx-TY; Mon, 29 Jul 2019 13:57:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs68t-0002Na-DJ
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 13:56:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2BD2028;
 Mon, 29 Jul 2019 06:56:45 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 912203F71F;
 Mon, 29 Jul 2019 06:56:42 -0700 (PDT)
Subject: Re: [PATCH v9 19/21] mm: Add generic ptdump
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-20-steven.price@arm.com>
 <f8444b1f-c886-9bfd-4873-3ed9068d3c44@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <75e314f2-b4e6-0a5f-20f0-ad5f56ce77f6@arm.com>
Date: Mon, 29 Jul 2019 14:56:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f8444b1f-c886-9bfd-4873-3ed9068d3c44@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_065647_536568_E521E1F3 
X-CRM114-Status: GOOD (  37.42  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/07/2019 03:59, Anshuman Khandual wrote:
> 
> On 07/22/2019 09:12 PM, Steven Price wrote:
>> Add a generic version of page table dumping that architectures can
>> opt-in to
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  include/linux/ptdump.h |  19 +++++
>>  mm/Kconfig.debug       |  21 ++++++
>>  mm/Makefile            |   1 +
>>  mm/ptdump.c            | 161 +++++++++++++++++++++++++++++++++++++++++
>>  4 files changed, 202 insertions(+)
>>  create mode 100644 include/linux/ptdump.h
>>  create mode 100644 mm/ptdump.c
>>
>> diff --git a/include/linux/ptdump.h b/include/linux/ptdump.h
>> new file mode 100644
>> index 000000000000..eb8e78154be3
>> --- /dev/null
>> +++ b/include/linux/ptdump.h
>> @@ -0,0 +1,19 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +
>> +#ifndef _LINUX_PTDUMP_H
>> +#define _LINUX_PTDUMP_H
>> +
>> +struct ptdump_range {
>> +	unsigned long start;
>> +	unsigned long end;
>> +};
>> +
>> +struct ptdump_state {
>> +	void (*note_page)(struct ptdump_state *st, unsigned long addr,
>> +			  int level, unsigned long val);
>> +	const struct ptdump_range *range;
>> +};
>> +
>> +void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm);
>> +
>> +#endif /* _LINUX_PTDUMP_H */
>> diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
>> index 82b6a20898bd..7ad939b7140f 100644
>> --- a/mm/Kconfig.debug
>> +++ b/mm/Kconfig.debug
>> @@ -115,3 +115,24 @@ config DEBUG_RODATA_TEST
>>      depends on STRICT_KERNEL_RWX
>>      ---help---
>>        This option enables a testcase for the setting rodata read-only.
>> +
>> +config GENERIC_PTDUMP
>> +	bool
>> +
>> +config PTDUMP_CORE
>> +	bool
>> +
>> +config PTDUMP_DEBUGFS
>> +	bool "Export kernel pagetable layout to userspace via debugfs"
>> +	depends on DEBUG_KERNEL
>> +	depends on DEBUG_FS
>> +	depends on GENERIC_PTDUMP
>> +	select PTDUMP_CORE
> 
> So PTDUMP_DEBUGFS depends on GENERIC_PTDUMP but selects PTDUMP_CORE. So any arch
> subscribing this new generic PTDUMP by selecting GENERIC_PTDUMP needs to provide
> some functions for PTDUMP_DEBUGFS which does not really have any code in generic
> MM. Also ptdump_walk_pgd() is wrapped in PTDUMP_CORE not GENERIC_PTDUMP. Then what
> does PTDUMP_GENERIC really indicate ? Bit confusing here.

The intention is:

* PTDUMP_DEBUGFS: Controls if the debugfs file is available. This
enables arch specific code which creates the debugfs file (as the files
available vary between architectures).

* GENERIC_PTDUMP: Architecture is opting in to the generic ptdump
infrastructure. The arch code is expected to provide the debugfs code
for PTDUMP_DBEUGFS.

* PTDUMP_CORE: The core page table walker is enabled. This code is used
by both PTDUMP_DEBUGFS as well as the DEBUG_WX ("Warn on W+X mappings at
boot"). x86 also has EFI_PGT_DUMP which uses the core.

> The new ptdump_walk_pgd() symbol needs to be wrapped in a config symbol for sure
> which should be selected in all platforms wishing to use it. GENERIC_PTDUMP can
> be that config.

The intention is that GENERIC_PTDUMP is signalling that the architecture
supports PTDUMP_DEBUGFS. PTDUMP_CORE is the configuration which chooses
whether ptdump_walk_pgd() is built - selected by the options that
require it.

> PTDUMP_DEBUGFS will require a full implementation (i.e PTDUMP_CORE) irrespective
> of whether the platform subscribes GENERIC_PTDUMP or not. It should be something
> like this.
> 
> config PTDUMP_DEBUGFS
> 	bool "Export kernel pagetable layout to userspace via debugfs"
> 	depends on DEBUG_KERNEL
> 	depends on DEBUG_FS
> 	select PTDUMP_CORE
> 
> PTDUMP_DEBUGFS need not depend on GENERIC_PTDUMP. All it requires is a PTDUMP_CORE
> implementation which can optionally use ptdump_walk_pgd() through GENERIC_PTDUMP.
> s/GENERIC_PTDUMP/PTDUMP_GENERIC to match and group with other configs.

The intention here is to hide PTDUMP_DEBUGFS on architectures that
haven't migrated to it. Because the generic code isn't responsible for
creating the debugfs entries if we don't hide it then it will compile
but nothing will appear in debugfs.

> DEBUG_WX can also be moved to generic MM like PTDUMP_DEBUGFS ?

Well the DEBUG_WX requires some arch specific code (separate from
PTDUMP_DEBUGFS), so while the config option could be moved you would
then require a "ARCH_HAS_DEBUG_WX" to hide it on the architectures that
don't support it. I'm not sure that's worth doing when only 3
architectures support it, and I would argue it's separate to this patch
series so can be done at a different time.

>> +	help
>> +	  Say Y here if you want to show the kernel pagetable layout in a
>> +	  debugfs file. This information is only useful for kernel developers
>> +	  who are working in architecture specific areas of the kernel.
>> +	  It is probably not a good idea to enable this feature in a production
>> +	  kernel.
>> +
>> +	  If in doubt, say N.
>> diff --git a/mm/Makefile b/mm/Makefile
>> index 338e528ad436..750a4c12d5da 100644
>> --- a/mm/Makefile
>> +++ b/mm/Makefile
>> @@ -104,3 +104,4 @@ obj-$(CONFIG_HARDENED_USERCOPY) += usercopy.o
>>  obj-$(CONFIG_PERCPU_STATS) += percpu-stats.o
>>  obj-$(CONFIG_HMM_MIRROR) += hmm.o
>>  obj-$(CONFIG_MEMFD_CREATE) += memfd.o
>> +obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
> 
> Should be GENERIC_PTDUMP instead ?

No - GENERIC_PTDUMP is just signalling the architecture support it, we
don't want to compile in the code unless it is used.

>> diff --git a/mm/ptdump.c b/mm/ptdump.c
>> new file mode 100644
>> index 000000000000..39befc9088b8
>> --- /dev/null
>> +++ b/mm/ptdump.c
>> @@ -0,0 +1,161 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +#include <linux/mm.h>
>> +#include <linux/ptdump.h>
>> +#include <linux/kasan.h>
>> +
>> +static int ptdump_pgd_entry(pgd_t *pgd, unsigned long addr,
>> +			    unsigned long next, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +	pgd_t val = READ_ONCE(*pgd);
>> +
>> +	if (pgd_leaf(val))
>> +		st->note_page(st, addr, 1, pgd_val(val));
>> +
>> +	return 0;
>> +}
>> +
>> +static int ptdump_p4d_entry(p4d_t *p4d, unsigned long addr,
>> +			    unsigned long next, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +	p4d_t val = READ_ONCE(*p4d);
>> +
>> +	if (p4d_leaf(val))
>> +		st->note_page(st, addr, 2, p4d_val(val));
>> +
>> +	return 0;
>> +}
>> +
>> +static int ptdump_pud_entry(pud_t *pud, unsigned long addr,
>> +			    unsigned long next, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +	pud_t val = READ_ONCE(*pud);
>> +
>> +	if (pud_leaf(val))
>> +		st->note_page(st, addr, 3, pud_val(val));
>> +
>> +	return 0;
>> +}
>> +
>> +static int ptdump_pmd_entry(pmd_t *pmd, unsigned long addr,
>> +			    unsigned long next, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +	pmd_t val = READ_ONCE(*pmd);
>> +
>> +	if (pmd_leaf(val))
>> +		st->note_page(st, addr, 4, pmd_val(val));
>> +
>> +	return 0;
>> +}
>> +
>> +static int ptdump_pte_entry(pte_t *pte, unsigned long addr,
>> +			    unsigned long next, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +
>> +	st->note_page(st, addr, 5, pte_val(READ_ONCE(*pte)));
>> +
>> +	return 0;
>> +}
>> +
>> +#ifdef CONFIG_KASAN
>> +/*
>> + * This is an optimization for KASAN=y case. Since all kasan page tables
>> + * eventually point to the kasan_early_shadow_page we could call note_page()
>> + * right away without walking through lower level page tables. This saves
>> + * us dozens of seconds (minutes for 5-level config) while checking for
>> + * W+X mapping or reading kernel_page_tables debugfs file.
>> + */
>> +static inline bool kasan_page_table(struct ptdump_state *st, void *pt,
>> +				    unsigned long addr)
>> +{
>> +	if (__pa(pt) == __pa(kasan_early_shadow_pmd) ||
>> +#ifdef CONFIG_X86
>> +	    (pgtable_l5_enabled() &&
>> +			__pa(pt) == __pa(kasan_early_shadow_p4d)) ||
>> +#endif
>> +	    __pa(pt) == __pa(kasan_early_shadow_pud)) {
>> +		st->note_page(st, addr, 5, pte_val(kasan_early_shadow_pte[0]));
>> +		return true;
>> +	}
>> +	return false;
>> +}
>> +#else
>> +static inline bool kasan_page_table(struct ptdump_state *st, void *pt,
>> +				    unsigned long addr)
>> +{
>> +	return false;
>> +}
>> +#endif
>> +
>> +static int ptdump_test_p4d(unsigned long addr, unsigned long next,
>> +			   p4d_t *p4d, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +
>> +	if (kasan_page_table(st, p4d, addr))
>> +		return 1;
>> +	return 0;
>> +}
>> +
>> +static int ptdump_test_pud(unsigned long addr, unsigned long next,
>> +			   pud_t *pud, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +
>> +	if (kasan_page_table(st, pud, addr))
>> +		return 1;
>> +	return 0;
>> +}
>> +
>> +static int ptdump_test_pmd(unsigned long addr, unsigned long next,
>> +			   pmd_t *pmd, struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +
>> +	if (kasan_page_table(st, pmd, addr))
>> +		return 1;
>> +	return 0;
>> +}
>> +
>> +static int ptdump_hole(unsigned long addr, unsigned long next,
>> +		       struct mm_walk *walk)
>> +{
>> +	struct ptdump_state *st = walk->private;
>> +
>> +	st->note_page(st, addr, -1, 0);
>> +
>> +	return 0;
>> +}
>> +
>> +void ptdump_walk_pgd(struct ptdump_state *st, struct mm_struct *mm)
>> +{
>> +	struct mm_walk walk = {
>> +		.mm		= mm,
>> +		.pgd_entry	= ptdump_pgd_entry,
>> +		.p4d_entry	= ptdump_p4d_entry,
>> +		.pud_entry	= ptdump_pud_entry,
>> +		.pmd_entry	= ptdump_pmd_entry,
>> +		.pte_entry	= ptdump_pte_entry,
>> +		.test_p4d	= ptdump_test_p4d,
>> +		.test_pud	= ptdump_test_pud,
>> +		.test_pmd	= ptdump_test_pmd,
>> +		.pte_hole	= ptdump_hole,
>> +		.private	= st
>> +	};
>> +	const struct ptdump_range *range = st->range;
>> +
>> +	down_read(&mm->mmap_sem);
>> +	while (range->start != range->end) {
>> +		walk_page_range(range->start, range->end, &walk);
>> +		range++;
>> +	}
>> +	up_read(&mm->mmap_sem);
> 
> Does walk_page_range() really needed here when it is definitely walking a
> kernel page table. Why not directly use walk_pgd_range() instead which can
> save some cycles avoiding going over VMAs, checking for HugeTLB, taking the
> mmap_sem lock etc. AFAICS only thing it will miss is the opportunity to call
> walk->test_walk() via walk_page_test(). IIUC test_walk() callback is primarily
> for testing a VMA for it's eligibility and for kernel page table now there are
> test callbacks like p?d_test() for individual levels anyway.

Well it's a debug interface so saving a few cycles is largely
irrelevant. I'm reluctant to export walk_pgd_range() in case it gets
used to walk real VMAs. Having just one interface is cleanest. But I
agree for kernel mappings all the extra work in walk_page_range() isn't
needed.

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
