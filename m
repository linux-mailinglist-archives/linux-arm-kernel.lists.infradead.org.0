Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7820D4747
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IaNvtBaGjy4JLNKhtuG3oyJavQLs5pqRySaHR8uONM4=; b=WY1EVQHHR+EiYD
	qgMlcLoahMsPxOoc54DA9WLqMmkOaF7g0IbKMcsT1DFLHBCmmPgnuiPF/5TXNUih5bm8W2JovK4Tu
	0M59/TjF7wQtwxs8jM/sll9hw6KZru20f1DvDQMkHEJ7IZkbLAVtsEt95/AAl4OK0xmI9EtA6eOyu
	t562cnCVQlU11LHxLUXN5Ez97XGZeJoIwfle9WB9a/ARrUCavcHhiqMU9oUbKCV4EyKrb9tqKYemj
	es1gHg7FX45TLwTHdf7e/lqD8RsQbfEJVe3f1wtJLJJcZh1lYeN3ugJeDya3X0wLq+4RhDvgsEXJW
	rdG5nxv41tQYpwqpF5vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzRv-0004zB-N8; Fri, 11 Oct 2019 18:15:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzRm-0004ww-SW; Fri, 11 Oct 2019 18:15:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EFAB142F;
 Fri, 11 Oct 2019 11:15:18 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D16A3F703;
 Fri, 11 Oct 2019 11:15:16 -0700 (PDT)
Subject: Re: [PATCH v3 08/17] arm64, trans_pgd: make trans_pgd_map_page generic
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-9-pasha.tatashin@soleen.com>
 <62fc9ed9-1740-d40b-bc72-6d1911ef1f24@arm.com>
 <CA+CK2bAPA=L+KeWve=2PbNEh+B9mXRzTGr1iQqRCkOAs5dU-Qg@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Message-ID: <ba96ab95-af8b-895e-e515-a94a63dd056a@arm.com>
Date: Fri, 11 Oct 2019 19:15:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bAPA=L+KeWve=2PbNEh+B9mXRzTGr1iQqRCkOAs5dU-Qg@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_111527_014320_5FB2D018 
X-CRM114-Status: GOOD (  31.57  )
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 06/09/2019 19:58, Pavel Tatashin wrote:
> On Fri, Sep 6, 2019 at 11:20 AM James Morse <james.morse@arm.com> wrote:
>> On 21/08/2019 19:31, Pavel Tatashin wrote:
>>> Currently, trans_pgd_map_page has assumptions that are relevant to
>>> hibernate. But, to make it generic we must allow it to use any allocator

>>> and also, can't assume that entries do not exist in the page table
>>> already.

[...]

>> Please don't use the page tables as an array: this is what the offset helpers are for.
> 
> Sure, I can use:
> 
> pte_offset_kernel()
> pmd_offset()
> pud_offset()
> pgd_offset_raw()

> The code becomes a little less efficient, because offsets return
> pointer to the entry after READ_ONCE, and we need to use another
> READ_ONCE() to read its content to parse its value in for example
> pud_table(), pud_none() etc . In my case we use READ_ONCE() only one
> time  per entry and operate on the content multiple times. Also,
> because of unfortunate differences in macro names, the code become a
> little less symmetric. Still, I can change the code to use _offsets
> here. Please let me know if you still think it is better to use them
> here.

We should make this as clearly readable as possible, that way reviewers can spot the bugs.
Using the helpers makes this more maintainable, as the helpers may be where strange things
like 52bit VA get implemented.

Making it fast is the compilers job. I agree it can't remove READ_ONCE()es, but I think
the difference between one and two READ_ONCE()es per leaf-entry is insignificant when we
go on to copy megabytes worth of data.


>> The copy_p?d() functions should decide if they should manipulate _this_ entry based on
>> _this_ entry and the kernel configuration. This is only really done in _copy_pte(), which
>> is where it should stay.
> 
> I am sorry, I do not understand this comment. Could you please
> elaborate what would you like me to change.

Consider the current _copy_pte():
|	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {
|		/*
|		 * debug_pagealloc will removed the PTE_VALID bit if
|		 * the page isn't in use by the resume kernel. It may have
|		 * been in use by the original kernel, in which case we need
|		 * to put it back in our copy to do the restore.
|		 *
|		 * Before marking this entry valid, check the pfn should
|		 * be mapped.
|		 */
|		BUG_ON(!pfn_valid(pte_pfn(pte)));
|
|		set_pte(dst_ptep, pte_mkpresent(pte_mkwrite(pte)));
|	}

From this it is very obvious that we only put the valid bits back into the page table if
debug_pagealloc is enabled and the not-valid PTE's PFN points to memory that was part of
the linear map.

If this logic gets moved apart, and strung together with global variables, its not at all
clear what happens.


>>> diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
>>> index c7b5402b7d87..e3d022b1b526 100644
>>> --- a/arch/arm64/include/asm/trans_pgd.h
>>> +++ b/arch/arm64/include/asm/trans_pgd.h
>>> @@ -11,10 +11,45 @@
>>>  #include <linux/bits.h>
>>>  #include <asm/pgtable-types.h>
>>>
>>> +/*
>>> + * trans_alloc_page
>>> + *   - Allocator that should return exactly one uninitilaized page, if this
>>> + *    allocator fails, trans_pgd returns -ENOMEM error.
>>> + *
>>> + * trans_alloc_arg
>>> + *   - Passed to trans_alloc_page as an argument
>>
>> This is very familiar.
> 
> Sorry, What do you mean?

This stuff used to take a pointer to a function that allocates a page, and an argument for
that allocator ... until patch 2 when you squashed it all in... only to undo it here. This
looks like churn.


>>> + * trans_flags

[...]

> I re-evaluated "flags", and figured that they are indeed not needed.
> So, I will embed them into the code directly.

Great!



>>> diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
>>> index 00b62d8640c2..dbabccd78cc4 100644
>>> --- a/arch/arm64/mm/trans_pgd.c
>>> +++ b/arch/arm64/mm/trans_pgd.c
>>> @@ -17,6 +17,16 @@
>>>  #include <asm/pgtable.h>
>>>  #include <linux/suspend.h>

>>>
>>> -int trans_pgd_map_page(pgd_t *trans_pgd, void *page, unsigned long dst_addr,
>>> -                    pgprot_t pgprot)
>>> +int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
>>> +                    void *page, unsigned long dst_addr, pgprot_t pgprot)
>>>  {
>>> -     pgd_t *pgdp;
>>> -     pud_t *pudp;
>>> -     pmd_t *pmdp;
>>> -     pte_t *ptep;
>>> -
>>> -     pgdp = pgd_offset_raw(trans_pgd, dst_addr);
>>> -     if (pgd_none(READ_ONCE(*pgdp))) {
>>> -             pudp = (void *)get_safe_page(GFP_ATOMIC);
>>> -             if (!pudp)
>>> +     int pgd_idx = pgd_index(dst_addr);
>>> +     int pud_idx = pud_index(dst_addr);
>>> +     int pmd_idx = pmd_index(dst_addr);
>>> +     int pte_idx = pte_index(dst_addr);
>>
>> Yuck.
>>
> 
> What's wrong with pre-calculating indices? :)

The only thing to do with them is access the page tables as a C array. This stuff is the
business of the helpers, please use them. Its a maintenance headache if you don't.


>>> -     pudp = pud_offset(pgdp, dst_addr);
>>> -     if (pud_none(READ_ONCE(*pudp))) {
>>> -             pmdp = (void *)get_safe_page(GFP_ATOMIC);
>>> -             if (!pmdp)
>>> +     pudp = __va(pgd_page_paddr(pgd));
>>> +     pud = READ_ONCE(pudp[pud_idx]);
>>> +     if (pud_sect(pud)) {
>>> +             return -ENXIO;
>>> +     } else if (pud_none(pud) || pud_sect(pud)) {
>>> +             pmd_t *t = trans_alloc(info);
>>> +
>>> +             if (!t)
>>>                       return -ENOMEM;
>>
>> Choke on block mappings? This should never happen because this function should only create
>> the tables necessary to map one page. Not a block mapping in sight.
>>
>> (see my comments on patch 6)

> I can remove this, but what should I replace it with BUG() or silently
> ignore, and assume no huge page hre? I thought the idea is not to use
> BUG() calls in kernel code, and return errors instead. If, in the
> future PUD size mappings are added, how is that going to be detected?

...if in the future...

Could your turn RODATA_FULL_DEFAULT_ENABLED off in your kernel config, then check debugfs
kernel_page_tables export. You should see blocks mappings for the large contiguous blocks
of memory.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
