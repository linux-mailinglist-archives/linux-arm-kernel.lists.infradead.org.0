Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5B43B422
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sNTUsRlUqZPRRc7WlF8TECuGfWGxfsbt10gZWzptLYU=; b=eJK/oBjXIX9esb
	Uyz9Iu/QskieHesJb9HyxOTD6lFDS5B2vLtO0jwhS1aqAoZqkFJx3vxxTe0/iLe05o1MoHEgczzi+
	xSsC45Y8fAqetK3ukx+4UBILjT08yfjXSbM0ijJEXCBJhBCNvZOlAqJ6XBMR7JQCS8zE9wmpWqAQw
	u+twxaX2pQ8YfzKw4aqUXbxLG9OfjSG0WRuj58wQImlaYJUFso4W6SdyQ6XcNKZ0JMQ3EvI8O/Rgb
	DB/PYLjZ1+MAw8A62IIoZxxwIaEgv9Ns9dvzfJFvZlVX8d0HqNVuJ1cEBiWCMvOqOJWZ49v2ZLKEe
	kxJmumJD2OueC/onqo9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIhV-0005rd-6j; Mon, 10 Jun 2019 11:42:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haIhG-0005rE-6Y
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 11:42:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E479A337;
 Mon, 10 Jun 2019 04:42:40 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4B4DD3F557; Mon, 10 Jun 2019 04:44:20 -0700 (PDT)
Subject: Re: [PATCH v3 5/8] arm64: Fix incorrect irqflag restore for priority
 masking
To: Julien Thierry <julien.thierry@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
 <1559813517-41540-6-git-send-email-julien.thierry@arm.com>
 <68594d4e-ed5a-2e11-42c3-eafb4f6bbd05@arm.com>
 <cddd5774-cdf1-f14c-cf17-d160a7138a47@arm.com>
 <5a5bfa6a-30e6-a6dd-4482-29f27888d823@arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
 Z46HaNmN2hZS/oJ69c1DI5Rcww==
Organization: ARM Ltd
Message-ID: <b63a6921-5784-bbfd-6f05-244d8b8be255@arm.com>
Date: Mon, 10 Jun 2019 12:42:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5a5bfa6a-30e6-a6dd-4482-29f27888d823@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_044242_338139_4E9C6910 
X-CRM114-Status: GOOD (  22.56  )
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
Cc: mark.rutland@arm.com, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, Christoffer Dall <christoffer.dall@arm.com>,
 james.morse@arm.com, Oleg Nesterov <oleg@redhat.com>, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, liwei391@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/06/2019 12:36, Julien Thierry wrote:
> 
> 
> On 10/06/2019 08:49, Julien Thierry wrote:
>>
>>
>> On 07/06/2019 17:29, Marc Zyngier wrote:
>>> On 06/06/2019 10:31, Julien Thierry wrote:
>>>> When using IRQ priority masking to disable interrupts, in order to deal
>>>> with the PSR.I state, local_irq_save() would convert the I bit into a
>>>> PMR value (GIC_PRIO_IRQOFF). This resulted in local_irq_restore()
>>>> potentially modifying the value of PMR in undesired location due to the
>>>> state of PSR.I upon flag saving [1].
>>>>
>>>> In an attempt to solve this issue in a less hackish manner, introduce
>>>> a bit (GIC_PRIO_IGNORE_PMR) for the PMR values that can represent
>>>> whether PSR.I is being used to disable interrupts, in which case it
>>>> takes precedence of the status of interrupt masking via PMR.
>>>>
>>>> GIC_PRIO_IGNORE_PMR is chosen such that (<pmr_value> |
>>>> GIC_PRIO_IGNORE_PMR) does not mask more interrupts than <pmr_value> as
>>>> some sections (e.g. arch_cpu_idle(), interrupt acknowledge path)
>>>> requires PMR not to mask interrupts that could be signaled to the
>>>> CPU when using only PSR.I.
>>>>
>>>
>>> s/GIC_PRIO_IGNORE_PMR/GIC_PRIO_PSR_I_SET/
>>>
>>>> [1] https://www.spinics.net/lists/arm-kernel/msg716956.html
>>>>
>>>> Fixes: commit 4a503217ce37 ("arm64: irqflags: Use ICC_PMR_EL1 for interrupt masking")
>>>> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
>>>> Reported-by: Zenghui Yu <yuzenghui@huawei.com>
>>>> Cc: Steven Rostedt <rostedt@goodmis.org>
>>>> Cc: Wei Li <liwei391@huawei.com>
>>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>>> Cc: Will Deacon <will.deacon@arm.com>
>>>> Cc: Christoffer Dall <christoffer.dall@arm.com>
>>>> Cc: Marc Zyngier <marc.zyngier@arm.com>
>>>> Cc: James Morse <james.morse@arm.com>
>>>> Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>
>>>> Cc: Oleg Nesterov <oleg@redhat.com>
>>>> ---
>>>>  arch/arm64/include/asm/arch_gicv3.h |  4 ++-
>>>>  arch/arm64/include/asm/daifflags.h  | 68 ++++++++++++++++++++++---------------
>>>>  arch/arm64/include/asm/irqflags.h   | 67 +++++++++++++++---------------------
>>>>  arch/arm64/include/asm/kvm_host.h   |  7 ++--
>>>>  arch/arm64/include/asm/ptrace.h     | 10 ++++--
>>>>  arch/arm64/kernel/entry.S           | 38 ++++++++++++++++++---
>>>>  arch/arm64/kernel/process.c         |  2 +-
>>>>  arch/arm64/kernel/smp.c             |  8 +++--
>>>>  arch/arm64/kvm/hyp/switch.c         |  2 +-
>>>>  9 files changed, 123 insertions(+), 83 deletions(-)
>>>>
> 
> [...]
> 
>>>> diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
>>>> index fbe1aba..b6f757f 100644
>>>> --- a/arch/arm64/include/asm/irqflags.h
>>>> +++ b/arch/arm64/include/asm/irqflags.h
>>>> @@ -67,43 +67,46 @@ static inline void arch_local_irq_disable(void)
>>>>   */
>>>>  static inline unsigned long arch_local_save_flags(void)
>>>>  {
>>>> -	unsigned long daif_bits;
>>>>  	unsigned long flags;
>>>>
>>>> -	daif_bits = read_sysreg(daif);
>>>> -
>>>> -	/*
>>>> -	 * The asm is logically equivalent to:
>>>> -	 *
>>>> -	 * if (system_uses_irq_prio_masking())
>>>> -	 *	flags = (daif_bits & PSR_I_BIT) ?
>>>> -	 *			GIC_PRIO_IRQOFF :
>>>> -	 *			read_sysreg_s(SYS_ICC_PMR_EL1);
>>>> -	 * else
>>>> -	 *	flags = daif_bits;
>>>> -	 */
>>>>  	asm volatile(ALTERNATIVE(
>>>> -			"mov	%0, %1\n"
>>>> -			"nop\n"
>>>> -			"nop",
>>>> -			__mrs_s("%0", SYS_ICC_PMR_EL1)
>>>> -			"ands	%1, %1, " __stringify(PSR_I_BIT) "\n"
>>>> -			"csel	%0, %0, %2, eq",
>>>> -			ARM64_HAS_IRQ_PRIO_MASKING)
>>>> -		: "=&r" (flags), "+r" (daif_bits)
>>>> -		: "r" ((unsigned long) GIC_PRIO_IRQOFF)
>>>> -		: "cc", "memory");
>>>> +		"mrs	%0, daif",
>>>> +		__mrs_s("%0", SYS_ICC_PMR_EL1),
>>>> +		ARM64_HAS_IRQ_PRIO_MASKING)
>>>> +		: "=&r" (flags)
>>>> +		:
>>>> +		: "memory");
>>>
>>> I think this is worth a comment here, as you're changing the semantics
>>> of arch_local_save_flags(). Maybe just indicating that the only thing
>>> this should be used for is to carry the interrupt state, and nothing else.
>>>
>>
>> Arguably, this is what gets called by local_save_flags() which is arch
>> independent and, as far as I understand, is only aware of the interrupt
>> state being contained in the flags (arch might wish to store more stuff
>> in it, but overall, generic code cannot rely on it).
>>
>> I'll still add a comment so that code directly calling arch_save_flags()
>> doesn't try to play with PSR.DA_F. (In such a cases it would be probably
>> clearer for them to do direct DAIF reads/writes IMO).
>>
> 
> After checking, arch_local_save_flags() already has the following
> comment above it:
> 
> /*
> 
> 
> 
>  * Save the current interrupt enable state.
> 
> 
> 
>  */
> 
> 
> Which suggests you shouldn't rely on having the value of debug state and
> other (it just happens to be there, maybe wrongfully...).
> 
> And user checking the flags should use arch_irqs_disabled_flags() rather
> than "flags & PSR_I_BIT != 0".
> 
> Also, those semantics where already changed when we introduced priority
> masking and included the PMR value in the irqflags.
> 
> I'm not sure there is a lot more explanation to do in this patch in
> particular.

Fair enough. I guess that if someone is fiddling with the flags in
ungodly ways, they deserve to be bitten...

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
