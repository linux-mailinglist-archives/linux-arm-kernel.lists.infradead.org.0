Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA09CF4B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 10:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aafwVDEBoMT4FQhWBEEUax5QljI9NWuPOfFpBZt8NmU=; b=KCOEO7IMySkgLS
	W48j03ODm5iprB8g53hXypra0Y3q4klkkgDptNBRfWlifNRRo7+bU45iPX74+VQ5usYK8T55hYUUk
	s+hyIq/q2q97oI8gUiPClfn4ihpN73y+XaBwO3O8Xl1mxR49kqR6bWEWa+He+lig3n3bz+y1gMjsH
	4Ku8mwyP+esdTBhvp4FMahp+vdxFp3IIcECOqYHsoruzwGCUwBky21uwvJmC5XUVM//Pp0npkmCl+
	t0o1vRYxuzSnGnR/2rGcdSdx1RF1hOMXWbcO9hd78B1JslLST+oJiSsabWFKguHXkxTas+OdTvjNe
	uKjQkm1I2CUuM1tV9U8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHkcR-0005DR-RY; Tue, 08 Oct 2019 08:13:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHkcK-0005Cu-5j; Tue, 08 Oct 2019 08:13:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C2581570;
 Tue,  8 Oct 2019 01:13:11 -0700 (PDT)
Received: from [10.162.40.139] (p8cg001049571a15.blr.arm.com [10.162.40.139])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 28D403F6C4; Tue,  8 Oct 2019 01:12:58 -0700 (PDT)
Subject: Re: [PATCH V4 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: "Kirill A. Shutemov" <kirill@shutemov.name>, Ingo Molnar <mingo@kernel.org>
References: <1570427124-21887-1-git-send-email-anshuman.khandual@arm.com>
 <1570427124-21887-3-git-send-email-anshuman.khandual@arm.com>
 <20191007130617.GB56546@gmail.com> <20191007132607.4q537nauwfn5thol@box>
 <20191007135158.GA36360@gmail.com> <20191007140058.um5g44rvxyzyiref@box>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <881796fc-c35e-3790-a1ee-7031c6cdb38d@arm.com>
Date: Tue, 8 Oct 2019 13:43:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191007140058.um5g44rvxyzyiref@box>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_011312_300546_21D9B19E 
X-CRM114-Status: GOOD (  19.61  )
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
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Christophe Leroy <christophe.leroy@c-s.fr>,
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



On 10/07/2019 07:30 PM, Kirill A. Shutemov wrote:
> On Mon, Oct 07, 2019 at 03:51:58PM +0200, Ingo Molnar wrote:
>>
>> * Kirill A. Shutemov <kirill@shutemov.name> wrote:
>>
>>> On Mon, Oct 07, 2019 at 03:06:17PM +0200, Ingo Molnar wrote:
>>>>
>>>> * Anshuman Khandual <anshuman.khandual@arm.com> wrote:
>>>>
>>>>> This adds a test module which will validate architecture page table helpers
>>>>> and accessors regarding compliance with generic MM semantics expectations.
>>>>> This will help various architectures in validating changes to the existing
>>>>> page table helpers or addition of new ones.
>>>>>
>>>>> Test page table and memory pages creating it's entries at various level are
>>>>> all allocated from system memory with required alignments. If memory pages
>>>>> with required size and alignment could not be allocated, then all depending
>>>>> individual tests are skipped.
>>>>
>>>>> diff --git a/arch/x86/include/asm/pgtable_64_types.h b/arch/x86/include/asm/pgtable_64_types.h
>>>>> index 52e5f5f2240d..b882792a3999 100644
>>>>> --- a/arch/x86/include/asm/pgtable_64_types.h
>>>>> +++ b/arch/x86/include/asm/pgtable_64_types.h
>>>>> @@ -40,6 +40,8 @@ static inline bool pgtable_l5_enabled(void)
>>>>>  #define pgtable_l5_enabled() 0
>>>>>  #endif /* CONFIG_X86_5LEVEL */
>>>>>  
>>>>> +#define mm_p4d_folded(mm) (!pgtable_l5_enabled())
>>>>> +
>>>>>  extern unsigned int pgdir_shift;
>>>>>  extern unsigned int ptrs_per_p4d;
>>>>
>>>> Any deep reason this has to be a macro instead of proper C?
>>>
>>> It's a way to override the generic mm_p4d_folded(). It can be rewritten
>>> as inline function + define. Something like:
>>>
>>> #define mm_p4d_folded mm_p4d_folded
>>> static inline bool mm_p4d_folded(struct mm_struct *mm)
>>> {
>>> 	return !pgtable_l5_enabled();
>>> }
>>>
>>> But I don't see much reason to be more verbose here than needed.
>>
>> C type checking? Documentation? Yeah, I know it's just a one-liner, but 
>> the principle of the death by a thousand cuts applies here.
> 
> Okay, if you think it worth it. Anshuman, could you fix it up for the next
> submission?

Sure, will do.

> 
> 
>> BTW., any reason this must be in the low level pgtable_64_types.h type 
>> header, instead of one of the API level header files?
> 
> I defined it next pgtable_l5_enabled(). What is more appropriate place to
> you? pgtable_64.h? Yeah, it makes sense.


Needs to be moved to arch/x86/include/asm/pgtable_64.h as well ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
