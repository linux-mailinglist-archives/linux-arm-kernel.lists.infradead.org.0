Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6263B74994
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 11:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRhXM6aH5R82R6fwJzcjqWIyswy75M6FOrS+5qe412I=; b=DUtJP6NjEkRgnA
	oPmOgiuTe+yjsKbBSoC5GiZ/3dgMmbFBVhBmlnBZckmPe6G7yYxojTOKyH6ytQbFrLWBpQeCiDypS
	5tH2GQ0zL3frmbfb1TuZOOPc1uK0RT1gnWzxHIBA2FdLKUu1GC/tAiyR0cgxoYQZ2V1DpActyVq0A
	+Bxpyzen4ycqH6vNuwpczLVM8zacjG7C94L77Aur+4wBeEq7B9op943WIKClAGZ9OMR2V2wcy4/zs
	s+leZyOn+njtDE8r3xRpph3yYxt8nu5SlMOor3IR6hB3GBzaNrOJpQZiFDPwbcdPGFsWBxHsuaRMM
	qPHARnaGXRrDhtOnpefA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqZkX-000720-NB; Thu, 25 Jul 2019 09:09:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqZk3-00071L-OF
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 09:08:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21C4C344;
 Thu, 25 Jul 2019 02:08:49 -0700 (PDT)
Received: from [10.162.42.109] (p8cg001049571a15.blr.arm.com [10.162.42.109])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 DEEE83F694; Thu, 25 Jul 2019 02:08:43 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
To: Steven Price <steven.price@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <835a0f2e-328d-7f7f-e52a-b754137789f9@arm.com>
 <c9d2042f-c731-4705-4148-b38deccf7963@arm.com>
Message-ID: <6f59521e-1f3e-6765-9a6f-c8eca4c0c154@arm.com>
Date: Thu, 25 Jul 2019 14:39:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <c9d2042f-c731-4705-4148-b38deccf7963@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_020851_893052_9521E485 
X-CRM114-Status: GOOD (  38.49  )
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



On 07/24/2019 07:05 PM, Steven Price wrote:
> On 23/07/2019 07:39, Anshuman Khandual wrote:
>> Hello Steven,
>>
>> On 07/22/2019 09:11 PM, Steven Price wrote:
>>> This is a slight reworking and extension of my previous patch set
>>> (Convert x86 & arm64 to use generic page walk), but I've continued the
>>> version numbering as most of the changes are the same. In particular
>>> this series ends with a generic PTDUMP implemention for arm64 and x86.
>>>
>>> Many architectures current have a debugfs file for dumping the kernel
>>> page tables. Currently each architecture has to implement custom
>>> functions for this because the details of walking the page tables used
>>> by the kernel are different between architectures.
>>>
>>> This series extends the capabilities of walk_page_range() so that it can
>>> deal with the page tables of the kernel (which have no VMAs and can
>>> contain larger huge pages than exist for user space). A generic PTDUMP
>>> implementation is the implemented making use of the new functionality of
>>> walk_page_range() and finally arm64 and x86 are switch to using it,
>>> removing the custom table walkers.
>>
>> Could other architectures just enable this new generic PTDUMP feature if
>> required without much problem ?
> 
> The generic PTDUMP is implemented as a library - so the architectures
> would have to provide the call into ptdump_walk_pgd() and provide the
> necessary callback note_page() which formats the lines in the output.

Though I understand that the leaf flag (any given level) details are very much
arch specific would there be any possibility for note_page() call back to be
unified as well. This is extracted from current PTDUMP output on arm64.

0xffffffc000000000-0xffffffc000080000  512K PTE  RW NX SHD AF  UXN MEM/NORMAL

The first three columns are generic

1. Kernel virtual range span
2. Kernel virtual range size
3. Kernel virtual range mapping level

Where as rest of the output are architecture specific page table entry flags.
Just wondering if we could print the first three columns in ptdump_walk_pgd()
itself before calling arch specific callback to fetch a print buffer for rest
of the line bounded with some character limit so that line does not overflow.
Its not something which must be done but I guess it's worth giving it a try.
This will help consolidate ptdump_walk_pgd() further.

> 
> Hopefully the implementation is generic enough that it should be
> flexible enough to work for most architectures.
> 
> arm, powerpc and s390 are the obvious architectures to convert next as
> they already have note_page() functions which shouldn't be too difficult
> to convert to match the callback prototype.

Which can be done independently later on, fair enough.

> 
>>>
>>> To enable a generic page table walker to walk the unusual mappings of
>>> the kernel we need to implement a set of functions which let us know
>>> when the walker has reached the leaf entry. After a suggestion from Will
>>> Deacon I've chosen the name p?d_leaf() as this (hopefully) describes
>>> the purpose (and is a new name so has no historic baggage). Some
>>> architectures have p?d_large macros but this is easily confused with
>>> "large pages".
>>
>> I have not been following the previous version of the series closely, hence
>> might be missing something here. But p?d_large() which identifies large
>> mappings on a given level can only signify a leaf entry. Large pages on the
>> table exist only as leaf entries. So what is the problem for it being used
>> directly instead. Is there any possibility in the kernel mapping when these
>> large pages are not leaf entries ?
> 
> There isn't any problem as such with using p?d_large macros. However the
> name "large" has caused confusion in the past. In particular there are
> two types of "large" page:
> 
> 1. leaf entries at high levels than normal ('sections' on Arm, for 4K
> pages this gives you 2MB and 1GB pages).
> 
> 2. sets of contiguous entries that can share a TLB entry (the
> 'Contiguous bit' on Arm - which for 4K pages gives you 16 entries = 64
> KB 'pages').

This is arm64 specific and AFAIK there are no other architectures where there
will be any confusion wrt p?d_large() not meaning a single entry.

As you have noted before if we are printing individual entries with PTE_CONT
then they need not be identified as p??d_large(). In which case p?d_large()
can just safely point to p?d_sect() identifying regular huge leaf entries.

> 
> In many cases both give the same effect (reduce pressure on TLBs and
> requires contiguous and aligned physical addresses). But for this case
> we only care about the 'leaf' case (because the contiguous bit makes no
> difference to walking the page tables).

Right and we can just safely identify section entries with it. What will be
the problem with that ? Again this is only arm64 specific.

> 
> As far as I'm aware p?d_large() currently implements the first and
> p?d_(trans_)huge() implements either 1 or 2 depending on the architecture.

AFAIK option 2 exists only on arm6 platform. IIUC generic MM requires two
different huge page dentition from platform. HugeTLB identifies large entries
at PGD|PUD|PMD after converting it's content into PTE first. So there is no
need for direct large page definitions for other levels.

1. THP		- pmd_trans_huge()
2. HugeTLB	- pte_huge()	   CONFIG_ARCH_WANT_GENERAL_HUGETLB is set

A simple check for p?d_large() on mm/ and include/linux shows that there are
no existing usage for these in generic MM. Hence it is available.

p?d_trans_huge() cannot use contiguous entries, so its definitely 1 in above
example.

The problem is there is no other type of mapped leaf entries apart from a large
mapping at PGD, PUD, PMD level. Had there been another type of leaf entry then
p?d_leaf() would have made sense as p?d_large() would not have been sufficient.
Hence just wondering if it is really necessary to add brand new p?d_leaf() page
table helper in generic MM functions.

IMHO the new addition of p?d_leaf() can be avoided and p?d_large() should be
cleaned up (if required) in platforms and used in generic functions.

> 
> Will[1] suggested the same p?d_leaf() and this also avoids stepping on
> the existing usage of p?d_large() which isn't always available on every
> architecture.

PTDUMP now needs to identify large leaf entries uniformly on each platform.
Hence platforms enabling generic PTDUMP need to provide clean p?d_large()
definitions.

If there are existing definitions and usage of p?d_large() functions on some
platforms, those need to be fixed before they can use generic PTDUMP. IMHO we
should not be just adding new page table helpers in order to avoid cleaning
up these in platform code.

> 
> [1]
> https://lore.kernel.org/linux-mm/20190701101510.qup3nd6vm6cbdgjv@willie-the-truck/

I guess the primary concern was with the existence of p?d_large()or p?d_huge()
definitions in various platform code and p?d_leaf() was an way of working around
it. The problem is, it adds a new helper without a real need for one.

> 
>>>
>>> Mostly this is a clean up and there should be very little functional
>>> change. The exceptions are:
>>>
>>> * x86 PTDUMP debugfs output no longer display pages which aren't
>>>   present (patch 14).
>>
>> Hmm, kernel mappings pages which are not present! which ones are those ?
>> Just curious.
> 
> x86 currently outputs a line for every range, including those which are
> unpopulated. Patch 14 removes those lines from the output, only showing
> the populated ranges. This was discussed[2] previously.
> 
> [2]
> https://lore.kernel.org/lkml/26df02dd-c54e-ea91-bdd1-0a4aad3a30ac@arm.com/

Currently that is a difference between x86 and arm64 ptdump output. Whether to
show the gaps or not could not be achieved by defining a note_page() callback
function which does nothing but just return ? But if the single line output is
split between generic and callback as I had proposed earlier this will not be
possible any more as half the line would have been already printed.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
