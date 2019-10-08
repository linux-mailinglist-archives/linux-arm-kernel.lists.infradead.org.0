Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F29CF4A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dif/yU31WE1tSdxn8tIdKsIJGICvCy54Js/wBIVsRD0=; b=Ir9hYaAALuE2ZF
	/iYBlNCxZeRE17zYif643blah/xXVey0wVfe/T3OPLgZe4mpCfNnueYN+/upt/7tkjcPTDLC/4LYH
	4ojJs+KM2WHjRGQgBWmbQ22EQDZyR/elT8ggXOppw7HrmQd5+IZ5aafOwQgfXUpsrjCFYJnFiyBVQ
	FJMoV/tT8YAXdcpmWYgoWIQlUyBw45URYfZv6gwfJ0+slw2ne09d3ik3SiAc1Mzz+hatlG0JKqxqT
	2wkUWi399Oh6d91pVk9KSroijQeixQiwwp4HkjPM0TggHFAlhwAeoQ60sDRjrQEguAqVO5gn9GYcz
	1hUgToLgghNcP/IAZUmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkWz-0002dA-CQ; Tue, 08 Oct 2019 08:07:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkWo-0002bm-9F; Tue, 08 Oct 2019 08:07:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EFB621570;
 Tue,  8 Oct 2019 01:07:25 -0700 (PDT)
Received: from [10.162.40.139] (p8cg001049571a15.blr.arm.com [10.162.40.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B53E83F6C4; Tue,  8 Oct 2019 01:07:12 -0700 (PDT)
Subject: Re: [PATCH V4 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Ingo Molnar <mingo@kernel.org>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
 <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
 <20191007130617.GB56546@gmail.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <916f2dd7-6b05-065b-da75-3dbcad1f804d@arm.com>
Date: Tue, 8 Oct 2019 13:37:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191007130617.GB56546@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_010730_411823_27EBB1A3 
X-CRM114-Status: GOOD (  29.01  )
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
 linux-mm@kvack.org, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10/07/2019 06:36 PM, Ingo Molnar wrote:
> 
> * Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>> This adds a test module which will validate architecture page table helpers
>> and accessors regarding compliance with generic MM semantics expectations.
>> This will help various architectures in validating changes to the existing
>> page table helpers or addition of new ones.
>>
>> Test page table and memory pages creating it's entries at various level are
>> all allocated from system memory with required alignments. If memory pages
>> with required size and alignment could not be allocated, then all depending
>> individual tests are skipped.
> 
>> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
>> index 52e5f5f2240d..b882792a3999 100644
>> --- a/arch/x86/include/asm/pgtable_64_types.h
>> +++ b/arch/x86/include/asm/pgtable_64_types.h
>> @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
>>  #define pgtable_l5_enabled() 0
>>  #endif /* CONFIG_X86_5LEVEL */
>>  
>> +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
>> +
>>  extern unsigned int pgdir_shift;
>>  extern unsigned int ptrs_per_p4d;
> 
> Any deep reason this has to be a macro instead of proper C?
> 
>> diff --git a/mm/Kconfig.debug b/mm/Kconfig.debug
>> index 327b3ebf23bf..683131b1ee7d 100644
>> --- a/mm/Kconfig.debug
>> +++ b/mm/Kconfig.debug
>> @@ -117,3 +117,18 @@ config DEBUG_RODATA_TEST
>>      depends on STRICT_KERNEL_RWX
>>      ---help---
>>        This option enables a testcase for the setting rodata read-only.
>> +
>> +config DEBUG_ARCH_PGTABLE_TEST
>> +	bool "Test arch page table helpers for semantics compliance"
>> +	depends on MMU
>> +	depends on DEBUG_KERNEL
>> +	depends on !(ARM || IA64)
> 
> Please add a proper enabling switch for architectures to opt in.

Sure, will do.

> 
> Please also add it to Documentation/features/list-arch.sh so that it's 
> listed as a 'TODO' entry on architectures where the tests are not enabled 
> yet.

Will do.

> 
>> +	help
>> +	  This options provides a kernel module which can be used to test
>> +	  architecture page table helper functions on various platform in
>> +	  verifying if they comply with expected generic MM semantics. This
>> +	  will help architectures code in making sure that any changes or
>> +	  new additions of these helpers will still conform to generic MM
>> +	  expected semantics.
> 
> Typos and grammar fixed:
> 
> 	help
> 	  This option provides a kernel module which can be used to test
> 	  architecture page table helper functions on various platforms in
> 	  verifying if they comply with expected generic MM semantics. This
> 	  will help architecture code in making sure that any changes or
> 	  new additions of these helpers still conform to expected 
> 	  semantics of the generic MM.

Sure, will update except the 'kernel module' part. Thank you.

> 
> Also, more fundamentally: isn't a kernel module too late for such a debug

Its not a kernel module any more, my bad that the description has still these
words left on from previous versions, will fix it. The test now gets invoked
through a late_initcall().

> check, should something break due to a core MM change? Have these debug 
> checks caught any bugs or inconsistencies before?

Gerald Schaefer had reported earlier about a bug found on s390 with this test.

https://lkml.org/lkml/2019/9/4/1718

> 
> Why not call this as some earlier MM debug check, after enabling paging 
> but before executing user-space binaries or relying on complex MM ops 
> within the kernel, called at a stage when those primitives are all 
> expected to work fine?

At minimum we need buddy allocator to be initialized for the allocations to
work. Just after pgtable_init() or kmem_cache_init() in mm_init() will be a
good place ?

> 
> It seems to me that arch_pgtable_tests_init) won't even context-switch 
> normally, right?

Not sure whether I got this. Why would you expect it to context switch ?

> 
> Finally, instead of inventing yet another randomly named .config debug 
> switch, please fit it into the regular MM debug options which go along 
> the CONFIG_DEBUG_VM* naming scheme.
> 
> Might even make sense to enable these new debug checks by default if 
> CONFIG_DEBUG_VM=y, that way we'll get a *lot* more debug coverage than 
> some random module somewhere that few people will know about, let alone 
> run.

All the configs with respect to memory debugging is generated from
lib/Kconfig.debug after fetching all that is in "mm/Kconfig.debug".
There are only three configs which depend on CONFIG_DEBUG_VM like
a package.

1. CONFIG_DEBUG_VM_VMACACHE
2. CONFIG_DEBUG_VM_RB
3. CONFIG_DEBUG_VM_PGFLAGS
4. CONFIG_DEBUG_VM_PGTABLE [proposed for this]

Before that, just trying to understand whether the reason of making this
arch page table test as part of DEBUG_VM_* package than a just a stand
alone config as many others, is that it is directly related to virtual
memory enablement in kernel. Or is there something else I am missing.

But this looks better and will make this depend on a selectable arch
config like ARCH_HAS_DEBUG_VM_PGTABLE or something.

> 
> Thanks,
> 
> 	Ingo
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
