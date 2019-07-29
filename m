Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8399778A9E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 13:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPxV8GENySiZ2+UkIacijvDUYBhNX3epxJd9Tly/Si4=; b=EmTmMzYFycL6p8
	jUw6aVhc2tQT9yjVLEiJfkaKn06edBOCvL4b+DYTKgBr4L5dSea293imYP54S2RTYDpjQTod7SHd2
	5Co4++2JruQb+TXm2C5I49pjuDjUR7R4CK9f51q6Roe7GXJvbqBQTgdfYzcpFYmzJzockCljOPMso
	Lc3ootkG303PNE3cDR345VuZc2oIXNfuKjD3/GDfvMM0afpv9pWnmpqj4O1VolyLkE7lKXQI+2MKQ
	Vo4NOH9nqnaGMx/UzYUYKdF+BU9zqkNA5l+z1GwwBq/3N6mEklnJPdPjYFss83QmwIRgdAOy1MRox
	b5AIDu/l0l+oM6EEuX3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs3tQ-0007tY-Ae; Mon, 29 Jul 2019 11:32:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs3tI-0007ss-9E
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 11:32:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF9BD28;
 Mon, 29 Jul 2019 04:32:28 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 609A73F694;
 Mon, 29 Jul 2019 04:32:26 -0700 (PDT)
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org,
 Helge Deller <deller@gmx.de>
References: <20190722154210.42799-1-steven.price@arm.com>
 <794fb469-00c8-af10-92a8-cb7c0c83378b@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <270ce719-49f9-7c61-8b25-bc9548a2f478@arm.com>
Date: Mon, 29 Jul 2019 12:32:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <794fb469-00c8-af10-92a8-cb7c0c83378b@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_043232_414761_AD47ACB0 
X-CRM114-Status: GOOD (  22.42  )
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

On 28/07/2019 12:20, Anshuman Khandual wrote:
> On 07/22/2019 09:11 PM, Steven Price wrote:
>> Steven Price (21):
>>   arc: mm: Add p?d_leaf() definitions
>>   arm: mm: Add p?d_leaf() definitions
>>   arm64: mm: Add p?d_leaf() definitions
>>   mips: mm: Add p?d_leaf() definitions
>>   powerpc: mm: Add p?d_leaf() definitions
>>   riscv: mm: Add p?d_leaf() definitions
>>   s390: mm: Add p?d_leaf() definitions
>>   sparc: mm: Add p?d_leaf() definitions
>>   x86: mm: Add p?d_leaf() definitions
> 
> The set of architectures here is neither complete (e.g ia64, parisc missing)
> nor does it only include architectures which had previously enabled PTDUMP
> like arm, arm64, powerpc, s390 and x86. Is there any reason for this set of
> archs to be on the list and not the others which are currently falling back
> on generic p?d_leaf() defined later in the series ? Are the missing archs
> do not have huge page support in the MMU ? If there is a direct dependency
> for these symbols with CONFIG_HUGETLB_PAGE then it must be checked before
> falling back on the generic ones.

The list of architectures here is what I believe to be the list of
architectures which can have leaf entries further up the tree than
normal. I'm by no means an expert on all these architectures so I'm
hoping someone will chime in if they notice something amiss. Obviously
all the NO_MMU

ia64 as far as I can tell doesn't implement leaf entries further up - it
has an interesting hybrid hardware/software walk mechanism and as I
understand it the hardware never walks the page table tree that the
p?d_xxx() operations operate on. So this is a software implementation
detail - but the existance of p?d_huge functions which always return 0
were my first clue that leaf entries are only at the bottom of the tree.

parisc is more interesting and I'm not sure if this is necessarily
correct. I originally proposed a patch with the line "For parisc, we
don't support large pages, so add stubs returning 0" which got Acked by
Helge Deller. However going back to look at that again I see there was a
follow up thread[2] which possibly suggests I was wrong?

Can anyone shed some light on whether parisc does support leaf entries
of the page table tree at a higher than the normal depth?

[1] https://lkml.org/lkml/2019/2/27/572
[2] https://lkml.org/lkml/2019/3/5/610

The intention is that the page table walker would be available for all
architectures so that it can be used in any generic code - PTDUMP simply
seemed like a good place to start.

> Now that pmd_leaf() and pud_leaf() are getting used in walk_page_range() these
> functions need to be defined on all arch irrespective if they use PTDUMP or not
> or otherwise just define it for archs which need them now for sure i.e x86 and
> arm64 (which are moving to new generic PTDUMP framework). Other archs can
> implement these later.

The intention was to have valid definitions for all architectures, but
obviously I need help from those familiar with those other architectures
to check whether I've understood them correctly.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
