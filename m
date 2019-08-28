Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9A99FE69
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpljWyCGui7KL7vUpwEP5eRZiJnTr63tep20xqme7ss=; b=LjbTYfucbxaOXj
	7Hpvt6j0ZwHvJWQU7JoVuKURYR7Fik3xBW0NJM3/ZfwKI28zodT4XFo2e9/GiJ7B5L46zXjjDJQQd
	aoa4nQDQ9BsohkPMT9JNWzlL8zaE4r0DLxB/Lw9Q3zuUH9g892DlR580UODarnHpjUrsrJZho4mPZ
	bGLWZK+dspRpolvOo+xQrPggNJqdB5oKyyvLdSr5wdZ1cWwGvt+kIE5MooIYaBX0Y6bIsDTeC+CYH
	kGhV5gUp+wFLLubPS3lUIcyILzOiIuQEoq69Hl68Aw7ZVg0RAA+9N5qigPwVlFGT3+gzb2u6u9nGz
	91ZbeX9AeP7k6spZxUnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2uAn-0002OW-Pt; Wed, 28 Aug 2019 09:23:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2uAR-0002NQ-BR; Wed, 28 Aug 2019 09:23:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC682337;
 Wed, 28 Aug 2019 02:23:00 -0700 (PDT)
Received: from [10.162.40.83] (p8cg001049571a15.blr.arm.com [10.162.40.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1BCFF3F59C;
 Wed, 28 Aug 2019 02:22:50 -0700 (PDT)
Subject: Re: [RFC V2 0/1] mm/debug: Add tests for architecture exported page
 table helpers
To: Matthew Wilcox <willy@infradead.org>
References: <1565335998-22553-1-git-send-email-anshuman.khandual@arm.com>
 <20190809101632.GM5482@bombadil.infradead.org>
 <a5aab7ff-f7fd-9cc1-6e37-e4185eee65ac@arm.com>
 <20190809135202.GN5482@bombadil.infradead.org>
 <7a88f6bb-e8c7-3ac7-2f92-1de752a01f33@arm.com>
 <20190826131308.GA15933@bombadil.infradead.org>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <504f891e-7346-7328-74b0-7df3acc230e8@arm.com>
Date: Wed, 28 Aug 2019 14:52:54 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190826131308.GA15933@bombadil.infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_022303_480217_8381C123 
X-CRM114-Status: GOOD (  17.72  )
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
 Steven Price <Steven.Price@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 linux-arm-kernel@lists.infradead.org, linux-snps-arc@lists.infradead.org,
 Kees Cook <keescook@chromium.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Mark Brown <broonie@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Vlastimil Babka <vbabka@suse.cz>, Sri Krishna chowdary <schowdary@nvidia.com>,
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



On 08/26/2019 06:43 PM, Matthew Wilcox wrote:
> On Mon, Aug 26, 2019 at 08:07:13AM +0530, Anshuman Khandual wrote:
>> On 08/09/2019 07:22 PM, Matthew Wilcox wrote:
>>> On Fri, Aug 09, 2019 at 04:05:07PM +0530, Anshuman Khandual wrote:
>>>> On 08/09/2019 03:46 PM, Matthew Wilcox wrote:
>>>>> On Fri, Aug 09, 2019 at 01:03:17PM +0530, Anshuman Khandual wrote:
>>>>>> Should alloc_gigantic_page() be made available as an interface for general
>>>>>> use in the kernel. The test module here uses very similar implementation from
>>>>>> HugeTLB to allocate a PUD aligned memory block. Similar for mm_alloc() which
>>>>>> needs to be exported through a header.
>>>>>
>>>>> Why are you allocating memory at all instead of just using some
>>>>> known-to-exist PFNs like I suggested?
>>>>
>>>> We needed PFN to be PUD aligned for pfn_pud() and PMD aligned for mk_pmd().
>>>> Now walking the kernel page table for a known symbol like kernel_init()
>>>
>>> I didn't say to walk the kernel page table.  I said to call virt_to_pfn()
>>> for a known symbol like kernel_init().
>>>
>>>> as you had suggested earlier we might encounter page table page entries at PMD
>>>> and PUD which might not be PMD or PUD aligned respectively. It seemed to me
>>>> that alignment requirement is applicable only for mk_pmd() and pfn_pud()
>>>> which create large mappings at those levels but that requirement does not
>>>> exist for page table pages pointing to next level. Is not that correct ? Or
>>>> I am missing something here ?
>>>
>>> Just clear the bottom bits off the PFN until you get a PMD or PUD aligned
>>> PFN.  It's really not hard.
>>
>> As Mark pointed out earlier that might end up being just a synthetic PFN
>> which might not even exist on a given system.
> 
> And why would that matter?
> 

To start with the test uses struct page with mk_pte() and mk_pmd() while
pfn gets used in pfn_pud() during pXX_basic_tests(). So we will not be able
to derive a valid struct page from a synthetic pfn. Also if synthetic pfn is
going to be used anyway then why derive it from a real kernel symbol like
kernel_init(). Could not one be just made up with right alignment ?

Currently the test allocates 'mm_struct' and other page table pages from real
memory then why should it use synthetic pfn while creating actual page table
entries ? Couple of benefits going with synthetic pfn will be..

- It simplifies the test a bit removing PUD_SIZE allocation helpers
- It might enable the test to be run on systems without adequate memory

In the current proposal the allocation happens during boot making it much more
likely to succeed than not and when it fails, respective tests will be skipped.

I am just wondering if being able to run complete set of tests on smaller
systems with less memory weighs lot more in favor of going with synthetic
pfn instead.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
