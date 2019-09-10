Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59427AE327
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 06:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vv8EOnFZIAaSMTSfsK1O0Wo4V0s8z3Tu5PfmY+qtqUA=; b=cGyE32NVHYzrCpPy4J720x67+
	RLQHtKbmR+hsPNbryveSdTWL3ty51u8+7MfBnCIA8y5+u4bDHWYEtjEN6utHtPmJtx3OTIlZCogb0
	xYXktQjjYtPutD++kGeT0F9p4FzLKdYnsDW30EqXYSO9oSTAHncHrLA/Esbd8sf9LRDRMAVpnQUbC
	vWOkctSTDB91mQ8IEz8AvvMuj5JxLrNPf19vzmYCck76P96JasaleBkEetBWFPF2HuKDaSXFIKv5U
	zI/ViyVjTQhSQClKQT/G3ug8+kW/yVzbSPp/6jldhxcOgDlVH1ZqGDiIwWiVu/dkjGbtya7blr7u+
	tq2+45w7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Y2X-000794-MC; Tue, 10 Sep 2019 04:46:05 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Y2D-00077g-0Z; Tue, 10 Sep 2019 04:45:47 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46SCBz6t8WzB09bJ;
 Tue, 10 Sep 2019 06:45:31 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=gWwFwMGQ; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id bU4eAMlI_ySx; Tue, 10 Sep 2019 06:45:31 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46SCBz5bQYzB09bF;
 Tue, 10 Sep 2019 06:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568090731; bh=3HdTywXJsBxu7f63a95rihr1tfvWFCcQDr3tUVoe8yw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=gWwFwMGQhXbQPv4skvhBowgMpQ4CQb9YoCte6J0EYdnWndOz/QIIkIC5h0zvHR3UB
 Ff9SsJ29XXUzNtVXyrvW+IGqLrX8MaQ1V/dHa+poQ/qL4JRqg1blBogwropiP4BW3n
 ppQHiwrH0gDyFgNqtIfQfIcOubs7+hioH8IDo+8k=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7CEF08B78A;
 Tue, 10 Sep 2019 06:45:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id nnso-4tCA0Zm; Tue, 10 Sep 2019 06:45:32 +0200 (CEST)
Received: from pc16032vm.idsi0.si.c-s.fr (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 7E34D8B754;
 Tue, 10 Sep 2019 06:45:30 +0200 (CEST)
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 "Kirill A. Shutemov" <kirill@shutemov.name>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
 <20190905190629.523bdb87@thinkpad>
 <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
 <20190906210346.5ecbff01@thinkpad>
 <3d5de35f-8192-1c75-50a9-03e66e3b8e5c@arm.com>
 <20190909151344.ghfypjbgxyosjdk3@box>
 <5883d41a-8299-1584-aa3d-fac89b3d9b5b@arm.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <94029d96-47c4-3020-57a8-4e03de1b4fc8@c-s.fr>
Date: Tue, 10 Sep 2019 04:45:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <5883d41a-8299-1584-aa3d-fac89b3d9b5b@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_214545_358115_A664A223 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sh@vger.kernel.org, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-s390@vger.kernel.org,
 x86@kernel.org, Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vlastimil Babka <vbabka@suse.cz>, linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Hansen <dave.hansen@intel.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Paul Burton <paul.burton@mips.com>, Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/10/2019 03:56 AM, Anshuman Khandual wrote:
> 
> 
> On 09/09/2019 08:43 PM, Kirill A. Shutemov wrote:
>> On Mon, Sep 09, 2019 at 11:56:50AM +0530, Anshuman Khandual wrote:
>>>
>>>
>>> On 09/07/2019 12:33 AM, Gerald Schaefer wrote:
>>>> On Fri, 6 Sep 2019 11:58:59 +0530
>>>> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>>>
>>>>> On 09/05/2019 10:36 PM, Gerald Schaefer wrote:
>>>>>> On Thu, 5 Sep 2019 14:48:14 +0530
>>>>>> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>>>>>    
>>>>>>>> [...]
>>>>>>>>> +
>>>>>>>>> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
>>>>>>>>> +static void pud_clear_tests(pud_t *pudp)
>>>>>>>>> +{
>>>>>>>>> +	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
>>>>>>>>> +	pud_clear(pudp);
>>>>>>>>> +	WARN_ON(!pud_none(READ_ONCE(*pudp)));
>>>>>>>>> +}
>>>>>>>>
>>>>>>>> For pgd/p4d/pud_clear(), we only clear if the page table level is present
>>>>>>>> and not folded. The memset() here overwrites the table type bits, so
>>>>>>>> pud_clear() will not clear anything on s390 and the pud_none() check will
>>>>>>>> fail.
>>>>>>>> Would it be possible to OR a (larger) random value into the table, so that
>>>>>>>> the lower 12 bits would be preserved?
>>>>>>>
>>>>>>> So the suggestion is instead of doing memset() on entry with RANDOM_NZVALUE,
>>>>>>> it should OR a large random value preserving lower 12 bits. Hmm, this should
>>>>>>> still do the trick for other platforms, they just need non zero value. So on
>>>>>>> s390, the lower 12 bits on the page table entry already has valid value while
>>>>>>> entering this function which would make sure that pud_clear() really does
>>>>>>> clear the entry ?
>>>>>>
>>>>>> Yes, in theory the table entry on s390 would have the type set in the last
>>>>>> 4 bits, so preserving those would be enough. If it does not conflict with
>>>>>> others, I would still suggest preserving all 12 bits since those would contain
>>>>>> arch-specific flags in general, just to be sure. For s390, the pte/pmd tests
>>>>>> would also work with the memset, but for consistency I think the same logic
>>>>>> should be used in all pxd_clear_tests.
>>>>>
>>>>> Makes sense but..
>>>>>
>>>>> There is a small challenge with this. Modifying individual bits on a given
>>>>> page table entry from generic code like this test case is bit tricky. That
>>>>> is because there are not enough helpers to create entries with an absolute
>>>>> value. This would have been easier if all the platforms provided functions
>>>>> like __pxx() which is not the case now. Otherwise something like this should
>>>>> have worked.
>>>>>
>>>>>
>>>>> pud_t pud = READ_ONCE(*pudp);
>>>>> pud = __pud(pud_val(pud) | RANDOM_VALUE (keeping lower 12 bits 0))
>>>>> WRITE_ONCE(*pudp, pud);
>>>>>
>>>>> But __pud() will fail to build in many platforms.
>>>>
>>>> Hmm, I simply used this on my system to make pud_clear_tests() work, not
>>>> sure if it works on all archs:
>>>>
>>>> pud_val(*pudp) |= RANDOM_NZVALUE;
>>>
>>> Which compiles on arm64 but then fails on x86 because of the way pmd_val()
>>> has been defined there.
>>
>> Use instead
>>
>> 	*pudp = __pud(pud_val(*pudp) | RANDOM_NZVALUE);
> 
> Agreed.
> 
> As I had mentioned before this would have been really the cleanest approach.
> 
>>
>> It *should* be more portable.
> 
> Not really, because not all the platforms have __pxx() definitions right now.
> Going with these will clearly cause build failures on affected platforms. Lets
> examine __pud() for instance. It is defined only on these platforms.
> 
> arch/arm64/include/asm/pgtable-types.h:		#define __pud(x) ((pud_t) { (x) } )
> arch/mips/include/asm/pgtable-64.h:		#define __pud(x) ((pud_t) { (x) })
> arch/powerpc/include/asm/pgtable-be-types.h:	#define __pud(x) ((pud_t) { cpu_to_be64(x) })
> arch/powerpc/include/asm/pgtable-types.h:	#define __pud(x) ((pud_t) { (x) })
> arch/s390/include/asm/page.h:			#define __pud(x) ((pud_t) { (x) } )
> arch/sparc/include/asm/page_64.h:		#define __pud(x) ((pud_t) { (x) } )
> arch/sparc/include/asm/page_64.h:		#define __pud(x) (x)
> arch/x86/include/asm/pgtable.h:			#define __pud(x) native_make_pud(x)

You missed:
arch/x86/include/asm/paravirt.h:static inline pud_t __pud(pudval_t val)
include/asm-generic/pgtable-nop4d-hack.h:#define __pud(x) 
                ((pud_t) { __pgd(x) })
include/asm-generic/pgtable-nopud.h:#define __pud(x) 
        ((pud_t) { __p4d(x) })

> 
> Similarly for __pmd()
> 
> arch/alpha/include/asm/page.h:			#define __pmd(x)  ((pmd_t) { (x) } )
> arch/arm/include/asm/page-nommu.h:		#define __pmd(x)  (x)
> arch/arm/include/asm/pgtable-2level-types.h:	#define __pmd(x)  ((pmd_t) { (x) } )
> arch/arm/include/asm/pgtable-2level-types.h:	#define __pmd(x)  (x)
> arch/arm/include/asm/pgtable-3level-types.h:	#define __pmd(x)  ((pmd_t) { (x) } )
> arch/arm/include/asm/pgtable-3level-types.h:	#define __pmd(x)  (x)
> arch/arm64/include/asm/pgtable-types.h:		#define __pmd(x)  ((pmd_t) { (x) } )
> arch/m68k/include/asm/page.h:			#define __pmd(x)  ((pmd_t) { { (x) }, })
> arch/mips/include/asm/pgtable-64.h:		#define __pmd(x)  ((pmd_t) { (x) } )
> arch/nds32/include/asm/page.h:			#define __pmd(x)  (x)
> arch/parisc/include/asm/page.h:			#define __pmd(x)  ((pmd_t) { (x) } )
> arch/parisc/include/asm/page.h:			#define __pmd(x)  (x)
> arch/powerpc/include/asm/pgtable-be-types.h:	#define __pmd(x)  ((pmd_t) { cpu_to_be64(x) })
> arch/powerpc/include/asm/pgtable-types.h:	#define __pmd(x)  ((pmd_t) { (x) })
> arch/riscv/include/asm/pgtable-64.h:		#define __pmd(x)  ((pmd_t) { (x) })
> arch/s390/include/asm/page.h:			#define __pmd(x)  ((pmd_t) { (x) } )
> arch/sh/include/asm/pgtable-3level.h:		#define __pmd(x)  ((pmd_t) { (x) } )
> arch/sparc/include/asm/page_32.h:		#define __pmd(x)  ((pmd_t) { { (x) }, })
> arch/sparc/include/asm/page_32.h:		#define __pmd(x)  ((pmd_t) { { (x) }, })
> arch/sparc/include/asm/page_64.h:		#define __pmd(x)  ((pmd_t) { (x) } )
> arch/sparc/include/asm/page_64.h:		#define __pmd(x)  (x)
> arch/um/include/asm/page.h:			#define __pmd(x)  ((pmd_t) { (x) } )
> arch/um/include/asm/page.h:			#define __pmd(x)  ((pmd_t) { (x) } )
> arch/x86/include/asm/pgtable.h:			#define __pmd(x)  native_make_pmd(x)

You missed:
arch/x86/include/asm/paravirt.h:static inline pmd_t __pmd(pmdval_t val)
include/asm-generic/page.h:#define __pmd(x)     ((pmd_t) { (x) } )
include/asm-generic/pgtable-nopmd.h:#define __pmd(x) 
        ((pmd_t) { __pud(x) } )


> 
> Similarly for __pgd()
> 
> arch/alpha/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/alpha/include/asm/page.h:			#define __pgd(x)  (x)
> arch/arc/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) })
> arch/arc/include/asm/page.h:			#define __pgd(x)  (x)
> arch/arm/include/asm/pgtable-3level-types.h:	#define __pgd(x)  ((pgd_t) { (x) } )
> arch/arm/include/asm/pgtable-3level-types.h:	#define __pgd(x)  (x)
> arch/arm64/include/asm/pgtable-types.h:		#define __pgd(x)  ((pgd_t) { (x) } )
> arch/csky/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) })
> arch/hexagon/include/asm/page.h:		#define __pgd(x)  ((pgd_t) { (x) })
> arch/m68k/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/mips/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/nds32/include/asm/page.h:			#define __pgd(x)  (x)
> arch/nios2/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) })
> arch/openrisc/include/asm/page.h:		#define __pgd(x)  ((pgd_t) { (x) })
> arch/parisc/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/parisc/include/asm/page.h:			#define __pgd(x)  (x)
> arch/powerpc/include/asm/pgtable-be-types.h:	#define __pgd(x)  ((pgd_t) { cpu_to_be64(x) })
> arch/powerpc/include/asm/pgtable-types.h:	#define __pgd(x)  ((pgd_t) { (x) })
> arch/riscv/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) })
> arch/s390/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/sh/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/sparc/include/asm/page_32.h:		#define __pgd(x)  ((pgd_t) { (x) } )
> arch/sparc/include/asm/page_32.h:		#define __pgd(x)  (x)
> arch/sparc/include/asm/page_64.h:		#define __pgd(x)  ((pgd_t) { (x) } )
> arch/sparc/include/asm/page_64.h:		#define __pgd(x)  (x)
> arch/um/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )
> arch/unicore32/include/asm/page.h:		#define __pgd(x)  ((pgd_t) { (x) })
> arch/unicore32/include/asm/page.h:		#define __pgd(x)  (x)
> arch/x86/include/asm/pgtable.h:			#define __pgd(x)  native_make_pgd(x)
> arch/xtensa/include/asm/page.h:			#define __pgd(x)  ((pgd_t) { (x) } )

You missed:
arch/x86/include/asm/paravirt.h:static inline pgd_t __pgd(pgdval_t val)
include/asm-generic/page.h:#define __pgd(x)     ((pgd_t) { (x) } )


> 
> Similarly for __p4d()
> 
> arch/s390/include/asm/page.h:			#define __p4d(x)  ((p4d_t) { (x) } )
> arch/x86/include/asm/pgtable.h:			#define __p4d(x)  native_make_p4d(x)

You missed:
arch/x86/include/asm/paravirt.h:static inline p4d_t __p4d(p4dval_t val)
include/asm-generic/5level-fixup.h:#define __p4d(x) 
__pgd(x)
include/asm-generic/pgtable-nop4d.h:#define __p4d(x) 
        ((p4d_t) { __pgd(x) })


> 
> The search pattern here has been "#define __pxx(". Unless I am missing something,
> I dont see how we can use these without risking build failures.
> 

I guess you missed that arches not defining them fall back on the 
definitions in include/asm-generic

Christophe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
