Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139637D59B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:40:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dd8oOep0CCsOyBqbtUkHUAASPJxNNI5Zo5VauHxWBEY=; b=W7Gecj7nIfmE52
	7Yx5ahl74nsEqRZSTNe3GOkTWAuI8zoiqk2zUpQn+B6wo17t5Nxl2C7z4BNxJGfJzQ92Itzg77kyj
	tjFdZBe3TH7MnPqAl6SzhJxUrHYL945tejFsPnKj+501AHTKLkW/GtmSiv6LtkD6jhQ91tilWFoPg
	VwWeZfhHV3sJkX7/65wfLzZfV0qLR9cboxI0uiRGuSLOWdJfM44geE1qPzC37jZ8/daWkkGeWXg6+
	x4E0x+gyWs2LNR+4RSdRfOhfo9z7lclgwJYh2UwAXI/EpmmlSQFtcpXuuvHY5ehY1bauT0IHpXUFj
	OTcyawGyux9U13wkN0DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4lf-0003fS-HQ; Thu, 01 Aug 2019 06:40:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4lY-0003el-Rv
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:40:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF3BA337;
 Wed, 31 Jul 2019 23:40:43 -0700 (PDT)
Received: from [10.163.1.81] (unknown [10.163.1.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84E463F694;
 Wed, 31 Jul 2019 23:42:33 -0700 (PDT)
Subject: Re: [PATCH v9 12/21] mm: pagewalk: Allow walking without vma
To: Steven Price <steven.price@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-13-steven.price@arm.com>
 <7fc50563-7d5d-7270-5a6a-63769e9c335a@arm.com>
 <5aff70f7-67a5-c7e8-5fec-8182dea0da0c@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b43b68c5-8245-52cc-31b8-613dc299a469@arm.com>
Date: Thu, 1 Aug 2019 12:11:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <5aff70f7-67a5-c7e8-5fec-8182dea0da0c@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_234044_995822_67723BA9 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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



On 07/29/2019 05:59 PM, Steven Price wrote:
> On 28/07/2019 15:20, Anshuman Khandual wrote:
>>
>>
>> On 07/22/2019 09:12 PM, Steven Price wrote:
>>> Since 48684a65b4e3: "mm: pagewalk: fix misbehavior of walk_page_range
>>> for vma(VM_PFNMAP)", page_table_walk() will report any kernel area as
>>> a hole, because it lacks a vma.
>>>
>>> This means each arch has re-implemented page table walking when needed,
>>> for example in the per-arch ptdump walker.
>>>
>>> Remove the requirement to have a vma except when trying to split huge
>>> pages.
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>> ---
>>>  mm/pagewalk.c | 25 +++++++++++++++++--------
>>>  1 file changed, 17 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/mm/pagewalk.c b/mm/pagewalk.c
>>> index 98373a9f88b8..1cbef99e9258 100644
>>> --- a/mm/pagewalk.c
>>> +++ b/mm/pagewalk.c
>>> @@ -36,7 +36,7 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>>  	do {
>>>  again:
>>>  		next = pmd_addr_end(addr, end);
>>> -		if (pmd_none(*pmd) || !walk->vma) {
>>> +		if (pmd_none(*pmd)) {
>>>  			if (walk->pte_hole)
>>>  				err = walk->pte_hole(addr, next, walk);
>>>  			if (err)
>>> @@ -59,9 +59,14 @@ static int walk_pmd_range(pud_t *pud, unsigned long addr, unsigned long end,
>>>  		if (!walk->pte_entry)
>>>  			continue;
>>>  
>>> -		split_huge_pmd(walk->vma, pmd, addr);
>>> -		if (pmd_trans_unstable(pmd))
>>> -			goto again;
>>> +		if (walk->vma) {
>>> +			split_huge_pmd(walk->vma, pmd, addr);
>>
>> Check for a PMD THP entry before attempting to split it ?
> 
> split_huge_pmd does the check for us:
>> #define split_huge_pmd(__vma, __pmd, __address)				\
>> 	do {								\
>> 		pmd_t *____pmd = (__pmd);				\
>> 		if (is_swap_pmd(*____pmd) || pmd_trans_huge(*____pmd)	\
>> 					|| pmd_devmap(*____pmd))	\
>> 			__split_huge_pmd(__vma, __pmd, __address,	\
>> 						false, NULL);		\
>> 	}  while (0)
> 
> And this isn't a change from the previous code - only that the entry is
> no longer split when walk->vma==NULL.

Does it make sense to name walk->vma check to differentiate between user
and kernel page tables. IMHO that will help make things clear and explicit
during page table walk.

> 
>>> +			if (pmd_trans_unstable(pmd))
>>> +				goto again;
>>> +		} else if (pmd_leaf(*pmd)) {
>>> +			continue;
>>> +		}
>>> +
>>>  		err = walk_pte_range(pmd, addr, next, walk);
>>>  		if (err)
>>>  			break;
>>> @@ -81,7 +86,7 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>>  	do {
>>>   again:
>>>  		next = pud_addr_end(addr, end);
>>> -		if (pud_none(*pud) || !walk->vma) {
>>> +		if (pud_none(*pud)) {
>>>  			if (walk->pte_hole)
>>>  				err = walk->pte_hole(addr, next, walk);
>>>  			if (err)
>>> @@ -95,9 +100,13 @@ static int walk_pud_range(p4d_t *p4d, unsigned long addr, unsigned long end,
>>>  				break;
>>>  		}
>>>  
>>> -		split_huge_pud(walk->vma, pud, addr);
>>> -		if (pud_none(*pud))
>>> -			goto again;
>>> +		if (walk->vma) {
>>> +			split_huge_pud(walk->vma, pud, addr);
>>
>> Check for a PUD THP entry before attempting to split it ?
> 
> Same as above.
> 
>>> +			if (pud_none(*pud))
>>> +				goto again;
>>> +		} else if (pud_leaf(*pud)) {
>>> +			continue;
>>> +		}
>>
>> This is bit cryptic. walk->vma check should be inside a helper is_user_page_table()
>> or similar to make things clear. p4d_leaf() check missing in walk_p4d_range() for
>> kernel page table walk ? Wondering if p?d_leaf() test should be moved earlier while
>> calling p?d_entry() for kernel page table walk.
> 
> I wasn't sure if it was worth putting p4d_leaf() and pgd_leaf() checks
> in (yet). No architecture that I know of uses such large pages.

Just to be complete it does make sense to add the remaining possible leaf
entry checks but will leave it upto you.

> 
> I'm not sure what you mean by moving the p?d_leaf() test earlier? Can
> you explain with an example?

In case its a kernel p?d_leaf() entry, then there is nothing to be done
after calling respective walk->p?d_entry() functions. Hence this check
should not complement user page table check (walk->vma) later in the
function but instead be checked right after walk->p?d_entry(). But its
not a big deal I guess.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
