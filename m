Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931C470251
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 16:27:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8jb5WJe7c1AuLCCGX5zIVgojLv0kesz/K/SCwHYrJk=; b=qeRjCIti9O4cDt
	ZKW6x11iNfunhK8QI/xY6bE0/JVW7eeQi1I/scb30LCRoLr86PLEArVTwQtbqCWLBAKnb2lI7pUGF
	0So8fCBC4tafivsvNgIy/bHjIiFFD57/OZuaOzXmpuWdNvTanj+6tkfeKFbiEgX58N4qXMvehl6S9
	OmAI8fFMdJOixa/4UigmEuAHz+Ta2n0UBeXGiaBWmqzhrwG9Yjvc5K5Bqbi6xPDThv3MOZNPTCbql
	PcITQMHCzrTIUiqHWma3JB/BAjaPnUzweAthiUiw2m7Yg6e+3lf9Whai+VHnpwXJw69S4gdqCDG4p
	J7GKN5/Jtd2c8WNPuByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpZHv-0007dd-IS; Mon, 22 Jul 2019 14:27:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpZHg-0007So-Sg
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 14:27:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C2781509;
 Mon, 22 Jul 2019 07:27:22 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A17833F762;
 Mon, 22 Jul 2019 07:27:21 -0700 (PDT)
Subject: Re: [PATCH] arm64: entry: SP Alignment Fault doesn't write to FAR_EL1
To: Will Deacon <will@kernel.org>
References: <20190717165602.114502-1-james.morse@arm.com>
 <20190722103408.6ayjqvbmbymr44nl@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <87febfe2-03d3-c10b-dc95-016d68cc0217@arm.com>
Date: Mon, 22 Jul 2019 15:27:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190722103408.6ayjqvbmbymr44nl@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_072724_982959_F0D019CB 
X-CRM114-Status: GOOD (  19.89  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 22/07/2019 11:34, Will Deacon wrote:
> Hi James,
> 
> On Wed, Jul 17, 2019 at 05:56:02PM +0100, James Morse wrote:
>> Comparing the arm-arm's  pseudocode for AArch64.PCAlignmentFault() with
>> AArch64.SPAlignmentFault() shows that SP faults don't copy the faulty-SP
>> to FAR_EL1, but this is where we read from, and the address we provide
>> to user-space with the BUS_ADRALN signal.
>>
>> This value will be UNKNOWN due to the previous ERET to user-space.
>> If the last value is preserved, on systems with KASLR or KPTI this will
>> be the user-space link-register left in FAR_EL1 by tramp_exit().
>>
>> Fix this to retrieve the original sp_el0 value, and pass this to
>> do_sp_pc_fault().

>> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
>> index 165da78815c5..023e533c537e 100644
>> --- a/arch/arm64/kernel/entry.S
>> +++ b/arch/arm64/kernel/entry.S

>> @@ -869,9 +869,24 @@ el0_fpsimd_exc:
>>  	mov	x1, sp
>>  	bl	do_fpsimd_exc
>>  	b	ret_to_user
>> -el0_sp_pc:
>> +el0_sp:
>>  	/*
>> -	 * Stack or PC alignment exception handling
>> +	 * Stack alignment exception handling
>> +	 */
>> +	gic_prio_kentry_setup tmp=x0
>> +	enable_da_f
>> +#ifdef CONFIG_TRACE_IRQFLAGS
>> +	bl	trace_hardirqs_off
>> +#endif
>> +	ct_user_exit
>> +	ldr	x0, [sp, #S_SP]
>> +	mov	x1, x25
>> +	mov	x2, sp
>> +	bl	do_sp_pc_abort
>> +	b	ret_to_user
>> +el0_pc:
>> +	/*
>> +	 * PC alignment exception handling

> Given that this really isn't a fast path, I think it's preferable to avoid
> duplicating the entry code and instead just have something like:
> 
> @@ -858,11 +858,15 @@ el0_fpsimd_exc:
>  	mov	x1, sp
>  	bl	do_fpsimd_exc
>  	b	ret_to_user
> +el0_sp:
> +	ldr	x26, [sp, #S_SP]
> +	b	el0_sp_pc
> +el0_pc:
> +	mrs	x26, far_el1
>  el0_sp_pc:
>  	/*
>  	 * Stack or PC alignment exception handling
>  	 */
> -	mrs	x26, far_el1
>  	gic_prio_kentry_setup tmp=x0
>  	enable_da_f
>  #ifdef CONFIG_TRACE_IRQFLAGS
> 

I'll do it this way. I came to this from Mark's series that moves this to C, where it ends
up being duplicated, so I didn't think very long about it.


> I also think we should do the same thing for the EL1 case, even though
> the address is currently ignored by the C handler.

> What do you reckon?

I wrote that patch, but then found we don't fix misaligned EL1 stacks, so that code never
runs. We end up panic()ing on the overflow stack.

There was a series from Julien Thierry[0] that fixed this, but it looks like the
conclusion was gcc would never generate code that misaligns the stack.

If you like I can fix the existing el1_sp_pc, just because its broken. We don't want to
re-discover this bug in the future.


Thanks,

James

[0] https://www.spinics.net/lists/arm-kernel/msg686173.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
