Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1A278BC6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 14:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6HW5b9trsU1pnHL0IhFtpGT/fiPIgOWB2ZO4F8/8jI=; b=usdxiU7UbJdmc3
	ya9UX/ZVjXM5NFkiwKX+Q0F9/Jt64eO1Qb2oatxGz33+qZukC+VP/XyEesne5WOVrBp3W8T28NeAf
	IBOhczS/uyxeb3V7Xn3jkIVjcpdvzmt0AECiMx68AR1P/HCAhHJnAgaOpmqn+llrBKNAHzlf6z0px
	MeIrgy2/aJLcHEg0yjgS2eUxQrynaY/yz2mMu5m9iDWqVRrKDcG0kzMoKM5O1H3W3bhAjoyNDsNoF
	QutMAIS2gHAox0EvazhnKtRIeCcjn5pdbpPXRG8Xclq9Hlcn7bCZiI7htRFAvnwFLSidu97Z6s/kf
	eo6uHZvL9Xelgk98txFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4nD-0000Nc-0K; Mon, 29 Jul 2019 12:30:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4n1-0008St-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 12:30:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D1DA28;
 Mon, 29 Jul 2019 05:30:07 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75AB43F575;
 Mon, 29 Jul 2019 05:29:59 -0700 (PDT)
Subject: Re: [PATCH v9 12/21] mm: pagewalk: Allow walking without vma
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-13-steven.price@arm.com>
 <7fc50563-7d5d-7270-5a6a-63769e9c335a@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <5aff70f7-67a5-c7e8-5fec-8182dea0da0c@arm.com>
Date: Mon, 29 Jul 2019 13:29:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7fc50563-7d5d-7270-5a6a-63769e9c335a@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_053008_042361_7FF12C64 
X-CRM114-Status: GOOD (  22.75  )
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

On 28/07/2019 15:20, Anshuman Khandual wrote:
> 
> 
> On 07/22/2019 09:12 PM, Steven Price wrote:
>> Since 48684a65b4e3: "mm: pagewalk: fix misbehavior of walk_page_range
>> for vma(VM_PFNMAP)", page_table_walk() will report any kernel area as
>> a hole, because it lacks a vma.
>>
>> This means each arch has re-implemented page table walking when needed,
>> for example in the per-arch ptdump walker.
>>
>> Remove the requirement to have a vma except when trying to split huge
>> pages.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>>  mm/pagewalk.c | 25 +++++++++++++++++--------
>>  1 file changed, 17 insertions(+), 8 deletions(-)
>>
>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
>> index 98373a9f88b8..1cbef99e9258 100644
>> --- a/mm/pagewalk.c
>> +++ b/mm/pagewalk.c
>> @@ -36,7 +36,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>  	do {
>>  again:
>>  		next = pmd_addr_end(addr, end);
>> -		if (pmd_none(*pmd) || !walk->vma) {
>> +		if (pmd_none(*pmd)) {
>>  			if (walk->pte_hole)
>>  				err = walk->pte_hole(addr, next, walk);
>>  			if (err)
>> @@ -59,9 +59,14 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>  		if (!walk->pte_entry)
>>  			continue;
>>  
>> -		split_huge_pmd(walk->vma, pmd, addr);
>> -		if (pmd_trans_unstable(pmd))
>> -			goto again;
>> +		if (walk->vma) {
>> +			split_huge_pmd(walk->vma, pmd, addr);
> 
> Check for a PMD THP entry before attempting to split it ?

split_huge_pmd does the check for us:
> #define split_huge_pmd(__vma, __pmd, __address)				\
> 	do {								\
> 		pmd_t *____pmd = (__pmd);				\
> 		if (is_swap_pmd(*____pmd) || pmd_trans_huge(*____pmd)	\
> 					|| pmd_devmap(*____pmd))	\
> 			__split_huge_pmd(__vma, __pmd, __address,	\
> 						false, NULL);		\
> 	}  while (0)

And this isn't a change from the previous code - only that the entry is
no longer split when walk->vma==NULL.

>> +			if (pmd_trans_unstable(pmd))
>> +				goto again;
>> +		} else if (pmd_leaf(*pmd)) {
>> +			continue;
>> +		}
>> +
>>  		err = walk_pte_range(pmd, addr, next, walk);
>>  		if (err)
>>  			break;
>> @@ -81,7 +86,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>  	do {
>>   again:
>>  		next = pud_addr_end(addr, end);
>> -		if (pud_none(*pud) || !walk->vma) {
>> +		if (pud_none(*pud)) {
>>  			if (walk->pte_hole)
>>  				err = walk->pte_hole(addr, next, walk);
>>  			if (err)
>> @@ -95,9 +100,13 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>  				break;
>>  		}
>>  
>> -		split_huge_pud(walk->vma, pud, addr);
>> -		if (pud_none(*pud))
>> -			goto again;
>> +		if (walk->vma) {
>> +			split_huge_pud(walk->vma, pud, addr);
> 
> Check for a PUD THP entry before attempting to split it ?

Same as above.

>> +			if (pud_none(*pud))
>> +				goto again;
>> +		} else if (pud_leaf(*pud)) {
>> +			continue;
>> +		}
> 
> This is bit cryptic. walk->vma check should be inside a helper is_user_page_table()
> or similar to make things clear. p4d_leaf() check missing in walk_p4d_range() for
> kernel page table walk ? Wondering if p?d_leaf() test should be moved earlier while
> calling p?d_entry() for kernel page table walk.

I wasn't sure if it was worth putting p4d_leaf() and pgd_leaf() checks
in (yet). No architecture that I know of uses such large pages.

I'm not sure what you mean by moving the p?d_leaf() test earlier? Can
you explain with an example?

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
