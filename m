Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8E17BF1F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 13:18:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sz4/mWipCWq1sx3A9wSIkb4IbFCbmSUsEy/c+x1m1qc=; b=JkItOcf/rb0Z/a
	1XHJvJV2mNqy5NRlvwO1YzjFghzk0C++k1z0VIyGkKd0Tp4NNrRyczYtwA4uLT3AcxI3FLLYcYtF+
	CWRB0uiw7xXOst5FPEc11YzL8FpsYrxKjmFVCj0qoejmk8jNkpUp+qViiDisBPX0jmJ1EpEt4/qfx
	1i/pTC7u2JOlrVHp4MWV3kQzBeWKJar4HAG4KL1BcHqZKaBt6Xx4s54aJturjdbiNZ8h+NwVi4541
	lj07ddLF4K7yCD8OzQBFifefOTAUW5PkVFRzTc6/1babRMkSXMaak9JyzYfEPVCtb4xBxwNGswi8X
	ZcfWRzF54lvj//E6CUag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsmd5-0005S0-VN; Wed, 31 Jul 2019 11:18:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsmcz-0005RL-0l
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 11:18:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC0CD344;
 Wed, 31 Jul 2019 04:18:38 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 23D7D3F71F;
 Wed, 31 Jul 2019 04:18:36 -0700 (PDT)
Subject: Re: [PATCH v9 00/21] Generic page walk and ptdump
To: Sven Schnelle <svens@stackframe.org>
References: <20190722154210.42799-1-steven.price@arm.com>
 <794fb469-00c8-af10-92a8-cb7c0c83378b@arm.com>
 <270ce719-49f9-7c61-8b25-bc9548a2f478@arm.com>
 <20190731092703.GA31316@t470p.stackframe.org>
From: Steven Price <steven.price@arm.com>
Message-ID: <788180f7-88ae-c88d-1531-68febb462010@arm.com>
Date: Wed, 31 Jul 2019 12:18:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731092703.GA31316@t470p.stackframe.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_041841_152508_C1111D3D 
X-CRM114-Status: GOOD (  26.72  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-mm@kvack.org,
 "H. Peter Anvin" <hpa@zytor.com>, Will Deacon <will@kernel.org>, "Liang,
 Kan" <kan.liang@linux.intel.com>, Helge Deller <deller@gmx.de>, x86@kernel.org,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/07/2019 10:27, Sven Schnelle wrote:
> Hi Steven,
> 
> On Mon, Jul 29, 2019 at 12:32:25PM +0100, Steven Price wrote:
>>
>> parisc is more interesting and I'm not sure if this is necessarily
>> correct. I originally proposed a patch with the line "For parisc, we
>> don't support large pages, so add stubs returning 0" which got Acked by
>> Helge Deller. However going back to look at that again I see there was a
>> follow up thread[2] which possibly suggests I was wrong?
> 
> I just started a week ago implementing ptdump for PA-RISC. Didn't notice that
> you're working on making it generic, which is nice. I'll adjust my code
> to use the infrastructure you're currently developing.

Great, hopefully it will make it easier to implement.

>> Can anyone shed some light on whether parisc does support leaf entries
>> of the page table tree at a higher than the normal depth?
>>
>> [1] https://lkml.org/lkml/2019/2/27/572
>> [2] https://lkml.org/lkml/2019/3/5/610
> 
> My understanding is that PA-RISC only has leaf entries on PTE level.

Yes, that's my current interpretation.

>> The intention is that the page table walker would be available for all
>> architectures so that it can be used in any generic code - PTDUMP simply
>> seemed like a good place to start.
>>
>>> Now that pmd_leaf() and pud_leaf() are getting used in walk_page_range() these
>>> functions need to be defined on all arch irrespective if they use PTDUMP or not
>>> or otherwise just define it for archs which need them now for sure i.e x86 and
>>> arm64 (which are moving to new generic PTDUMP framework). Other archs can
>>> implement these later.
> 
> I'll take care of the PA-RISC part - for 32 bit your generic code works, for 64Bit
> i need to learn a bit more about the following hack:
> 
> arch/parisc/include/asm/pgalloc.h:15
> /* Allocate the top level pgd (page directory)
>  *
>  * Here (for 64 bit kernels) we implement a Hybrid L2/L3 scheme: we
>  * allocate the first pmd adjacent to the pgd.  This means that we can
>  * subtract a constant offset to get to it.  The pmd and pgd sizes are
>  * arranged so that a single pmd covers 4GB (giving a full 64-bit
>  * process access to 8TB) so our lookups are effectively L2 for the
>  * first 4GB of the kernel (i.e. for all ILP32 processes and all the
>  * kernel for machines with under 4GB of memory)
>  */

As far as I understand this, the page table tree isn't any different
here. It's just that there's a PMD which is allocated at the same time
as the PGD. The PGD's first entry then points to the PMD (P4D/PUD are
folded). There are then some tricks which means that for addresses < 4GB
the PGD stage can be skipped because you already know where the relevant
PMD is.

However, nothing should stop a simple walk from PGD down - it's just an
optimisation to remove the pointer fetch from PGD in the usual case for
accesses < 4GB.

> I see that your change clear P?D entries when p?d_bad() returns true, which - i think -
> would be the case with the PA-RISC implementation.

The only case where p?d_bad() is checked is at the PGD and P4D levels
(unless I'm missing something?). I have to admit I'm a little unsure
about this. Basically the code as it stands doesn't allow leaf entries
at PGD or P4D. I'm not aware of any architectures that do this though.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
