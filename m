Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935C9AB280
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:29:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lG7Czga0f4xhw1RS/xKJp22C5k8g+9ish+NlTxJidw=; b=UgljnpUVVvtXQq
	/6MTveskYGR4xZvrYpnnP+iG+YM7UNStEIEMMv/FaYJtCljnlSSz9yRX7bnRNHnR9Lz8A6+AiOvUW
	N563UDsHX+py7S25wsZWgy9BA4fh1HcVwqVYwclagVplRr/Faq/RGUxOwk0BexrjgfqvKJV+zkhsx
	ApThOjvfeUPDlIfym08sd3+Wat/77U35BFWD75PwgIdQ0q7xycxEliqk972Fe9JhxsP4L/03c1xjd
	zpgzuX/L4aFWW3B4+xM2JedJ38rM7lFCnI6YXk165rM+Gfly9ee0iQGU9Ggx2mTV+Jeiol1Xh0UE5
	lCAsy3wS3K5QssTJnyag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67kG-0006W1-DM; Fri, 06 Sep 2019 06:29:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i67k4-0006Ut-Iy; Fri, 06 Sep 2019 06:29:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2652828;
 Thu,  5 Sep 2019 23:29:03 -0700 (PDT)
Received: from [10.162.42.101] (p8cg001049571a15.blr.arm.com [10.162.42.101])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EE03C3F67D; Thu,  5 Sep 2019 23:31:17 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH 1/1] mm/pgtable/debug: Add test validating architecture
 page table helpers
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
References: <1567497706-8649-1-git-send-email-anshuman.khandual@arm.com>
 <1567497706-8649-2-git-send-email-anshuman.khandual@arm.com>
 <20190904221618.1b624a98@thinkpad>
 <20e3044d-2af5-b27b-7653-cec53bdec941@arm.com>
 <20190905190629.523bdb87@thinkpad>
Message-ID: <3c609e33-afbb-ffaf-481a-6d225a06d1d0@arm.com>
Date: Fri, 6 Sep 2019 11:58:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190905190629.523bdb87@thinkpad>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_232908_715417_54A826CC 
X-CRM114-Status: GOOD (  27.34  )
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
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-arm-kernel@lists.infradead.org,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
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

On 09/05/2019 10:36 PM, Gerald Schaefer wrote:
> On Thu, 5 Sep 2019 14:48:14 +0530
> Anshuman Khandual <anshuman.khandual@arm.com> wrote:
> 
>>> [...]  
>>>> +
>>>> +#if !defined(__PAGETABLE_PMD_FOLDED) && !defined(__ARCH_HAS_4LEVEL_HACK)
>>>> +static void pud_clear_tests(pud_t *pudp)
>>>> +{
>>>> +	memset(pudp, RANDOM_NZVALUE, sizeof(pud_t));
>>>> +	pud_clear(pudp);
>>>> +	WARN_ON(!pud_none(READ_ONCE(*pudp)));
>>>> +}  
>>>
>>> For pgd/p4d/pud_clear(), we only clear if the page table level is present
>>> and not folded. The memset() here overwrites the table type bits, so
>>> pud_clear() will not clear anything on s390 and the pud_none() check will
>>> fail.
>>> Would it be possible to OR a (larger) random value into the table, so that
>>> the lower 12 bits would be preserved?  
>>
>> So the suggestion is instead of doing memset() on entry with RANDOM_NZVALUE,
>> it should OR a large random value preserving lower 12 bits. Hmm, this should
>> still do the trick for other platforms, they just need non zero value. So on
>> s390, the lower 12 bits on the page table entry already has valid value while
>> entering this function which would make sure that pud_clear() really does
>> clear the entry ?
> 
> Yes, in theory the table entry on s390 would have the type set in the last
> 4 bits, so preserving those would be enough. If it does not conflict with
> others, I would still suggest preserving all 12 bits since those would contain
> arch-specific flags in general, just to be sure. For s390, the pte/pmd tests
> would also work with the memset, but for consistency I think the same logic
> should be used in all pxd_clear_tests.

Makes sense but..

There is a small challenge with this. Modifying individual bits on a given
page table entry from generic code like this test case is bit tricky. That
is because there are not enough helpers to create entries with an absolute
value. This would have been easier if all the platforms provided functions
like __pxx() which is not the case now. Otherwise something like this should
have worked.


pud_t pud = READ_ONCE(*pudp);
pud = __pud(pud_val(pud) | RANDOM_VALUE (keeping lower 12 bits 0))
WRITE_ONCE(*pudp, pud);

But __pud() will fail to build in many platforms.

The other alternative will be to make sure memset() happens on all other
bits except the lower 12 bits which will depend on endianness. If s390
has a fixed endianness, we can still use either of them which will hold
good for others as well.

memset(pudp, RANDOM_NZVALUE, sizeof(pud_t) - 3);

OR

memset(pudp + 3, RANDOM_NZVALUE, sizeof(pud_t) - 3);

> 
> However, there is another issue on s390 which will make this only work
> for pud_clear_tests(), and not for the p4d/pgd_tests. The problem is that
> mm_alloc() will only give you a 3-level page table initially on s390.
> This means that pudp == p4dp == pgdp, and so the p4d/pgd_tests will
> both see the pud level (of course this also affects other tests).

Got it.

> 
> Not sure yet how to fix this, i.e. how to initialize/update the page table
> to 5 levels. We can handle 5 level page tables, and it would be good if
> all levels could be tested, but using mm_alloc() to establish the page
> tables might not work on s390. One option could be to provide an arch-hook
> or weak function to allocate/initialize the mm.

Sure, got it. Though I plan to do add some arch specific tests or init sequence
like the above later on but for now the idea is to get the smallest possible set
of test cases which builds and runs on all platforms without requiring any arch
specific hooks or special casing (#ifdef) to be agreed upon broadly and accepted.

Do you think this is absolutely necessary on s390 for the very first set of test
cases or we can add this later on as an improvement ?

> 
> IIUC, the (dummy) mm is really only needed to provide an mm->pgd as starting
> point, right?

Right.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
