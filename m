Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A9A5C7DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 05:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6u2xx1ZQ2vGlQzD0UfNuGulth3L8J4XdgJbtsx8zug=; b=ZVDQTCZCXAn16Z
	zNS4cB2B12KNXojav8HpNa6BgP6GTLkRZBVLGOZ1xtKSCwJOiFKCKi+hHIdlBuhUFNwIL8D1l795P
	sgGfYHA6bCIYplm4lrvdzCK46r7lKJ7HOm1HUl3goFqh6qWlamDRCcwoSdCoHWZORZHl97/xsOP3T
	lKkt8z6WYePQOL9+hBO48NsrTVQBuArXwCEVpYLXQrSaG4uJGS4JWuaSoxhExBXD26i9gDAxdEPFF
	bfaRM1YJkADjhNOzO54nTUr+iQ9w56P8SalXe/4TdyG8lQBtSkgfsF88frdoOu5as9JhJFDVRBgYE
	rN7Ffmo9aUxWGhldtcIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi9bb-0001mq-79; Tue, 02 Jul 2019 03:37:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hi9bO-0001mU-66
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 03:37:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7BBD28;
 Mon,  1 Jul 2019 20:37:04 -0700 (PDT)
Received: from [10.163.1.231] (unknown [10.163.1.231])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9F2973F703;
 Mon,  1 Jul 2019 20:37:01 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [RFC 1/2] arm64/mm: Change THP helpers to comply with generic MM
 semantics
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1561639696-16361-1-git-send-email-anshuman.khandual@arm.com>
 <1561639696-16361-2-git-send-email-anshuman.khandual@arm.com>
 <20190628102003.GA56463@arrakis.emea.arm.com>
Message-ID: <82237e21-1f14-ab6e-0f80-9706141e2172@arm.com>
Date: Tue, 2 Jul 2019 09:07:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190628102003.GA56463@arrakis.emea.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_203706_321750_C226B388 
X-CRM114-Status: GOOD (  27.22  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrea Arcangeli <aarcange@redhat.com>,
 Suzuki Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 06/28/2019 03:50 PM, Catalin Marinas wrote:
> Hi Anshuman,

Hello Catalin,

> 
> On Thu, Jun 27, 2019 at 06:18:15PM +0530, Anshuman Khandual wrote:
>> pmd_present() and pmd_trans_huge() are expected to behave in the following
>> manner during various phases of a given PMD. It is derived from a previous
>> detailed discussion on this topic [1] and present THP documentation [2].
>>
>> pmd_present(pmd):
>>
>> - Returns true if pmd refers to system RAM with a valid pmd_page(pmd)
>> - Returns false if pmd does not refer to system RAM - Invalid pmd_page(pmd)
>>
>> pmd_trans_huge(pmd):
>>
>> - Returns true if pmd refers to system RAM and is a trans huge mapping
>>
>> -------------------------------------------------------------------------
>> |	PMD states	|	pmd_present	|	pmd_trans_huge	|
>> -------------------------------------------------------------------------
>> |	Mapped		|	Yes		|	Yes		|
>> -------------------------------------------------------------------------
>> |	Splitting	|	Yes		|	Yes		|
>> -------------------------------------------------------------------------
>> |	Migration/Swap	|	No		|	No		|
>> -------------------------------------------------------------------------
> 
> Before we actually start fixing this, I would strongly suggest that you
> add a boot selftest (see lib/Kconfig.debug for other similar cases)
> which checks the consistency of the page table macros w.r.t. the
> expected mm semantics. Once the mm maintainers agreed with the
> semantics, it will really help architecture maintainers in implementing
> them correctly.

Sure and it will help all architectures to be in sync wrt semantics.

> 
> You wouldn't need actual page tables, just things like assertions on
> pmd_trans_huge(pmd_mkhuge(pmd)) == true. You could go further and have
> checks on pmdp_invalidate(&dummy_vma, dummy_addr, &dummy_pmd) with the
> dummy_* variables on the stack.

Hmm. I guess macros which operate directly on a page table entry will be
okay but the ones which check on specific states for VMA or MM might be
bit tricky. Try to emulate VMA/MM states while on stack ?. But sure, will
explore adding such a test.

> 
>> The problem:
>>
>> PMD is first invalidated with pmdp_invalidate() before it's splitting. This
>> invalidation clears PMD_SECT_VALID as below.
>>
>> PMD Split -> pmdp_invalidate() -> pmd_mknotpresent -> Clears PMD_SECT_VALID
>>
>> Once PMD_SECT_VALID gets cleared, it results in pmd_present() return false
>> on the PMD entry.
> 
> I think that's an inconsistency in the expected semantics here. Do you
> mean that pmd_present(pmd_mknotpresent(pmd)) should be true? If not, do

Actually that is true (more so if we are using generic pmdp_invalidate). Else
in general pmd_present(pmdp_invalidate(pmd)) needs to be true to successfully
represent a splitting THP. That is what Andrea explained back on this thread
(https://lkml.org/lkml/2018/10/17/231).

Extracting relevant sections from that thread -

"pmd_present never meant the real present bit in the pte was set, it just means
the pmd points to RAM. It means it doesn't point to swap or migration entry and
you can do pmd_to_page and it works fine."

"The clear of the real present bit during pmd (virtual) splitting is done with
pmdp_invalidate, that is created specifically to keeps pmd_trans_huge=true,
pmd_present=true despite the present bit is not set. So you could imagine
_PAGE_PSE as the real present bit."

pmd_present() and pmd_mknotpresent() are not exact inverse.

Problem is all platforms using generic pmdp_invalidate() calls pmd_mknotpresent()
which invariably across platforms remove the valid or present bit from the entry.
The point to note here is that pmd_mknotpresent() invalidates the entry from MMU
point of view but pmd_present() does not check for a MMU valid PMD entry. Hence
pmd_present(pmd_mknotpresent(pmd)) can still be true.

In absence of a positive section mapping bit on arm64, PTE_SPECIAL is being set
temporarily to remember that it was a mapped PMD which got invalidated recently
but which still points to memory. Hence pmd_present() must evaluate true.

pmd_mknotpresent() does not make !pmd_present() it just invalidates the entry.

> we need to implement our own pmdp_invalidate() or change the generic one
> to set a "special" bit instead of just a pmd_mknotpresent?

Though arm64 can subscribe __HAVE_ARCH_PMDP_INVALIDATE and implement it's own
pmdp_invalidate() in order to not call pmd_mknotpresent() and instead operate
on the invalid and special bits directly. But its not going to alter relevant
semantics here. AFAICS it might be bit better as it saves pmd_mknotpresent()
from putting in that special bit in there which it is not supposed do.

IFAICS there is no compelling reason for generic pmdp_invalidate() to change
either. It calls pmd_mknotpresent() which invalidates the entry through valid
or present bit and platforms which have dedicated huge page bit can still test
positive for pmd_present() after it's invalidation. It works for such platforms.
Platform specific override is required when invalidation via pmd_mknotpresent()
is not enough.

> 
>> +static inline int pmd_present(pmd_t pmd)
>> +{
>> +	if (pte_present(pmd_pte(pmd)))
>> +		return 1;
>> +
>> +	return pte_special(pmd_pte(pmd));
>> +}
> [...]
>> +static inline pmd_t pmd_mknotpresent(pmd_t pmd)
>> +{
>> +	pmd = pte_pmd(pte_mkspecial(pmd_pte(pmd)));
>> +	return __pmd(pmd_val(pmd) & ~PMD_SECT_VALID);
>> +}
> 
> I'm not sure I agree with the semantics here where pmd_mknotpresent()
> does not actually make pmd_present() == false.

As Andrea explained, pmd_present() does not check validity of the PMD entry
from MMU perspective but the presence of a valid pmd_page() which still refers
to a valid struct page in the memory. It is irrespective of whether the entry
in itself is valid for MMU walk or not.

+ Cc: Andrea Arcangeli <aarcange@redhat.com>

I have added Andrea on this thread if he would like to add something.

- Anshuman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
