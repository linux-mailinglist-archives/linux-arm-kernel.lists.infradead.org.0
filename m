Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A6D7D581
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 08:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnBZguKlcO0QyRdqa5D1JV7kbDS4MKoXusot2CWH7IM=; b=LgKyISQyhQ7V23
	PkYbiQAxnnbpG1pSYmvbX2x0qDjhkpTdrtIeE4qcvs5l62X+Vwqa1CekwXeSa8B8Q3P2n1KeMepXR
	hANySZbyDITDuRd8sBqakrcuv8CkHIaDIoWrsNMzY5AClRwMVUPguj1Tb/zZLE5Smbom6G8VxdRRn
	uS5EL2CPYdU9tB2QSSVsvuw0pcUq+1WSC9VsKuw/QHVEUHnpW04nvejCbDUU8M/YZvLU7ozlOj+so
	zf0SO/qWdiFqdhVHfsEChWimxlv6qRDO8eVMyy5ENen1PP32e0nkMds2AiZB3Cd7nREN0nNwDlwub
	W97YbklAU8fyVW0bA77g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht4bi-00083K-0J; Thu, 01 Aug 2019 06:30:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht4ba-00082c-H1
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 06:30:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7C6C337;
 Wed, 31 Jul 2019 23:30:25 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CBC13F694;
 Wed, 31 Jul 2019 23:32:31 -0700 (PDT)
Subject: Re: [PATCH v4.4 V2 25/43] arm64: Move BP hardening to
 check_and_switch_context
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
 <f655aaa158af070d45a2bd4965852b0c97a08838.1562908075.git.viresh.kumar@linaro.org>
 <59b252cf-9cb7-128b-4887-c21a8b9b92a9@arm.com>
 <20190801050940.h65crfawrdifsrgg@vireshk-i7>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <86354576-fc54-a8b7-4dc9-bc613d59fb17@arm.com>
Date: Thu, 1 Aug 2019 07:30:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190801050940.h65crfawrdifsrgg@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_233026_647312_8E45A0A6 
X-CRM114-Status: GOOD (  25.14  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com, julien.thierry.kdev@gmail.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/08/2019 06:09, Viresh Kumar wrote:
> On 31-07-19, 14:09, Julien Thierry wrote:
>>
>>
>> On 12/07/2019 06:28, Viresh Kumar wrote:
>>> From: Marc Zyngier <marc.zyngier@arm.com>
>>>
>>> commit a8e4c0a919ae310944ed2c9ace11cf3ccd8a609b upstream.
>>>
>>> We call arm64_apply_bp_hardening() from post_ttbr_update_workaround,
>>> which has the unexpected consequence of being triggered on every
>>> exception return to userspace when ARM64_SW_TTBR0_PAN is selected,
>>> even if no context switch actually occured.
>>>
>>> This is a bit suboptimal, and it would be more logical to only
>>> invalidate the branch predictor when we actually switch to
>>> a different mm.
>>>
>>> In order to solve this, move the call to arm64_apply_bp_hardening()
>>> into check_and_switch_context(), where we're guaranteed to pick
>>> a different mm context.
>>>
>>> Acked-by: Will Deacon <will.deacon@arm.com>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
>>> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
>>> ---
>>>  arch/arm64/mm/context.c | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
>>> index be42bd3dca5c..de5afc27b4e6 100644
>>> --- a/arch/arm64/mm/context.c
>>> +++ b/arch/arm64/mm/context.c
>>> @@ -183,6 +183,8 @@ void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
>>>  	raw_spin_unlock_irqrestore(&cpu_asid_lock, flags);
>>>  
>>>  switch_mm_fastpath:
>>> +	arm64_apply_bp_hardening();
>>> +
>>>  	cpu_switch_mm(mm->pgd, mm);
>>>  }
>>>  
>>> @@ -193,8 +195,6 @@ asmlinkage void post_ttbr_update_workaround(void)
>>>  			"ic iallu; dsb nsh; isb",
>>>  			ARM64_WORKAROUND_CAVIUM_27456,
>>>  			CONFIG_CAVIUM_ERRATUM_27456));
>>> -
>>> -	arm64_apply_bp_hardening();
>>
>> Patches 22 and 23 factorize the post_ttbr_update_workaround() and move
>> it to C code just so we would and a call to arm64_apply_bp_hardening()
>> in patch 24 that now gets moved elsewhere?
>>
>> Is it really worth backporting patches 22 and 23?
> 
> If I can merge patch 24 and 25 into a single patch while backporting,
> then patch 22 and 23 won't be required. I am not sure how should the
> commit log look like in that case though :)
> 
> Is mentioning both the upstream commit ids along with log of the first
> patch (which was more important) enough, like this ?
> 

I must admit I am not familiar with backport/stable process enough. But
personally I think the your suggestion seems more sensible than
backporting 4 patches.

Or you can maybe ignore patch 25 and say in patch 24 that among the
changes made for the 4.4 codebase, the call arm64_apply_bp_hardening()
was moved from post_ttbr_update_workaround as it doesn't exist and
placed in check_and_switch_context() as it is its final destination.

However, I really don't know what's the best way to proceed according to
existing practices. So input from someone else would be welcome.

Thanks,

Julien

> Author: Will Deacon <will.deacon@arm.com>
> Date:   Wed Jan 3 11:17:58 2018 +0000
> 
>     arm64: Add skeleton to harden the branch predictor against aliasing attacks
>     
>     commit 0f15adbb2861ce6f75ccfc5a92b19eae0ef327d0 upstream.
>     commit a8e4c0a919ae310944ed2c9ace11cf3ccd8a609b upstream.
>     
>     Aliasing attacks against CPU branch predictors can allow an attacker to
>     redirect speculative control flow on some CPUs and potentially divulge
>     information from one context to another.
>     
>     This patch adds initial skeleton code behind a new Kconfig option to
>     enable implementation-specific mitigations against these attacks for
>     CPUs that are affected.
>     
>     Co-developed-by: Marc Zyngier <marc.zyngier@arm.com>
>     Signed-off-by: Will Deacon <will.deacon@arm.com>
>     Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
>     [ v4.4: Changes made according to 4.4 codebase ]
>     Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
