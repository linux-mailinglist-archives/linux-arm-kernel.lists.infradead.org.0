Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55C973005
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:36:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XXhrGuTZHtzL5RWLudCQzdvwhxokTy0PGI8f+A0aqMw=; b=X1asnEQuqeCWDE
	MtAzRN2n8p24cHwdftv+D/s1d8/TXdAKxh3zgy2BcNCcVrmsDliCiHsHeARu8q71cGYWFbTFSoMAX
	tvWG2SQl/lcxdQbIWuzDDYkGQYyF44rEFWqo/XNkeFuqW+7Ei1c364S2vO1/kYIBnhUj0JPdznOAi
	PJFUNsZGTQB4LVKh37MRd+cVhSfoNcChIi72J1+VeFK1LQIHt5fHmVHKlJK2mliz43OI6D/UUXwgW
	u7LyDiLmAQEPkIgpyB04atu454FRcId7/KmSq0aE7rr+HfEAKyupvBo1Vrls9AGv8nt8Ummc7tqPQ
	TgsJ3W1meKbdq32t0u9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHRS-0001df-VM; Wed, 24 Jul 2019 13:36:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHQp-0000gV-06
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:35:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C816B337;
 Wed, 24 Jul 2019 06:35:45 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1EAC53F71A;
 Wed, 24 Jul 2019 06:35:43 -0700 (PDT)
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190722154210.42799-1-steven.price@arm.com>
 <835a0f2e-328d-7f7f-e52a-b754137789f9@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <c9d2042f-c731-4705-4148-b38deccf7963@arm.com>
Date: Wed, 24 Jul 2019 14:35:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <835a0f2e-328d-7f7f-e52a-b754137789f9@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_063547_318875_D3263960 
X-CRM114-Status: GOOD (  29.35  )
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

On 23/07/2019 07:39, Anshuman Khandual wrote:
> Hello Steven,
> 
> On 07/22/2019 09:11 PM, Steven Price wrote:
>> This is a slight reworking and extension of my previous patch set
>> (Convert x86 & arm64 to use generic page walk), but I've continued the
>> version numbering as most of the changes are the same. In particular
>> this series ends with a generic PTDUMP implemention for arm64 and x86.
>>
>> Many architectures current have a debugfs file for dumping the kernel
>> page tables. Currently each architecture has to implement custom
>> functions for this because the details of walking the page tables used
>> by the kernel are different between architectures.
>>
>> This series extends the capabilities of walk_page_range() so that it can
>> deal with the page tables of the kernel (which have no VMAs and can
>> contain larger huge pages than exist for user space). A generic PTDUMP
>> implementation is the implemented making use of the new functionality of
>> walk_page_range() and finally arm64 and x86 are switch to using it,
>> removing the custom table walkers.
> 
> Could other architectures just enable this new generic PTDUMP feature if
> required without much problem ?

The generic PTDUMP is implemented as a library - so the architectures
would have to provide the call into ptdump_walk_pgd() and provide the
necessary callback note_page() which formats the lines in the output.

Hopefully the implementation is generic enough that it should be
flexible enough to work for most architectures.

arm, powerpc and s390 are the obvious architectures to convert next as
they already have note_page() functions which shouldn't be too difficult
to convert to match the callback prototype.

>>
>> To enable a generic page table walker to walk the unusual mappings of
>> the kernel we need to implement a set of functions which let us know
>> when the walker has reached the leaf entry. After a suggestion from Will
>> Deacon I've chosen the name p?d_leaf() as this (hopefully) describes
>> the purpose (and is a new name so has no historic baggage). Some
>> architectures have p?d_large macros but this is easily confused with
>> "large pages".
> 
> I have not been following the previous version of the series closely, hence
> might be missing something here. But p?d_large() which identifies large
> mappings on a given level can only signify a leaf entry. Large pages on the
> table exist only as leaf entries. So what is the problem for it being used
> directly instead. Is there any possibility in the kernel mapping when these
> large pages are not leaf entries ?

There isn't any problem as such with using p?d_large macros. However the
name "large" has caused confusion in the past. In particular there are
two types of "large" page:

1. leaf entries at high levels than normal ('sections' on Arm, for 4K
pages this gives you 2MB and 1GB pages).

2. sets of contiguous entries that can share a TLB entry (the
'Contiguous bit' on Arm - which for 4K pages gives you 16 entries = 64
KB 'pages').

In many cases both give the same effect (reduce pressure on TLBs and
requires contiguous and aligned physical addresses). But for this case
we only care about the 'leaf' case (because the contiguous bit makes no
difference to walking the page tables).

As far as I'm aware p?d_large() currently implements the first and
p?d_(trans_)huge() implements either 1 or 2 depending on the architecture.

Will[1] suggested the same p?d_leaf() and this also avoids stepping on
the existing usage of p?d_large() which isn't always available on every
architecture.

[1]
https://lore.kernel.org/linux-mm/20190701101510.qup3nd6vm6cbdgjv@willie-the-truck/

>>
>> Mostly this is a clean up and there should be very little functional
>> change. The exceptions are:
>>
>> * x86 PTDUMP debugfs output no longer display pages which aren't
>>   present (patch 14).
> 
> Hmm, kernel mappings pages which are not present! which ones are those ?
> Just curious.

x86 currently outputs a line for every range, including those which are
unpopulated. Patch 14 removes those lines from the output, only showing
the populated ranges. This was discussed[2] previously.

[2]
https://lore.kernel.org/lkml/26df02dd-c54e-ea91-bdd1-0a4aad3a30ac@arm.com/

>>
>> * arm64 has the ability to efficiently process KASAN pages (which
>>   previously only x86 implemented). This means that the combination of
>>   KASAN and DEBUG_WX is now useable.
>>
>> Also available as a git tree:
>> git://linux-arm.org/linux-sp.git walk_page_range/v9
>>
>> Changes since v8:
>> https://lore.kernel.org/lkml/20190403141627.11664-1-steven.price@arm.com/
>>  * Rename from p?d_large() to p?d_leaf()
> 
> As mentioned before wondering if this is actually required or it is even a
> good idea to introduce something like this which expands page table helper
> semantics scope further in generic MM.
> 
>>  * Dropped patches migrating arm64/x86 custom walkers to
>>    walk_page_range() in favour of adding a generic PTDUMP implementation
>>    and migrating arm64/x86 to that instead.
>>  * Rebased to v5.3-rc1
> 
> Creating a generic PTDUMP implementation is definitely a better idea.

Yes, that was always where I was heading. But I initially thought it
would be easier to get the generic walking code in, followed by
implementing generic PTDUMP. But it turns out the generic PTDUMP is
actually the easy bit :)

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
