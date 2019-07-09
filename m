Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469316379E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 16:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y5Lw6wFn/Cj2zLfMdcM/5QLtC8h7ttUNB6t5zde1tTU=; b=hq0YifGdRXcfN4eEHCr+mwzS+
	HCrMIo58zM7Hxpz60gzz3ZsIHgZNN4L69C29FI44JZaQ2Qg3IX6Rkah+3LQkyslveuEO8kW0Fxigr
	Uu2JHrPst1vrmUhRISUBvPJvYDVMHvMq8BjvhYUNJqhEHTQ0mFJy1EClR03M26mFlrcX9vLZtsntz
	rx1smv/buQoV/xqfTSXF7PRAKFW2XRcyJ190aAxeSnzLJ6aTo0HSTr/+eBTxoyYFBQU9nEOErCvTv
	2kVOx9duRZ1A9Ym+FxWEi/QZknBYM+w0y82nJ9gb9LIgJItsBmk8rA+xmp5FGBWwBsrfj/c43fdaT
	Fw3F2VGjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkqxA-00087U-Ae; Tue, 09 Jul 2019 14:18:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkqwy-00086o-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 14:18:34 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id BF55160E5F; Tue,  9 Jul 2019 14:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562681911;
 bh=jiNkhUFiBuXVKK2bh358QUq3e/FALFdLQxfZUHlBHpE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=L28CIUC0p10IGJjm+Cv/Mn6QYlFY2qr+KKv33FcOfMp0gNEAOeFikvYDuy6z8KrfG
 B5sRsexq6jR0fLHTQCpEXVokZXfTvn34sgzF+jjrbg9MDPwPss4d9eBpEY1SowaOzH
 ytN8SofJgvzRbNRX0THx23KQPX5QDgVOOsSgMgNM=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.204.78.89]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: neeraju@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id B170260863;
 Tue,  9 Jul 2019 14:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1562681910;
 bh=jiNkhUFiBuXVKK2bh358QUq3e/FALFdLQxfZUHlBHpE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=AfQ5xgsYmVixi5uyJFFbIbqnbTrbkB2c3aywAx/U1DtJea5tnZyr8ff9yN2KpbYKr
 3Canyk7awS+3Jl+RwL1GzcvE2LUlGUAWinAOSbd9CLSjbTfdtxEMqEiqRU765aCQ/2
 ZT4Yf2pH5PWmKlRjD5ks5HrRCb/Uu5TF97E3G7ts=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org B170260863
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=neeraju@codeaurora.org
Subject: Re: [PATCH] arm64: Explicitly set pstate.ssbs for el0 on kernel entry
To: Marc Zyngier <marc.zyngier@arm.com>, will@kernel.org,
 mark.rutland@arm.com, julien.thierry@arm.com, tglx@linutronix.de
References: <1562671333-3563-1-git-send-email-neeraju@codeaurora.org>
 <62c4fed5-39ac-adc9-3bc5-56eb5234a9d1@arm.com>
From: Neeraj Upadhyay <neeraju@codeaurora.org>
Message-ID: <386316d0-f844-d88c-8b78-0ffc4ffe0aaa@codeaurora.org>
Date: Tue, 9 Jul 2019 19:48:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <62c4fed5-39ac-adc9-3bc5-56eb5234a9d1@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_071832_791466_F60AE1AF 
X-CRM114-Status: GOOD (  32.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gkohli@codeaurora.org, linux-arm-msm@vger.kernel.org, parthd@codeaurora.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 7/9/19 6:38 PM, Marc Zyngier wrote:
> Hi Neeraj,
>
> On 09/07/2019 12:22, Neeraj Upadhyay wrote:
>> For cpus which do not support pstate.ssbs feature, el0
>> might not retain spsr.ssbs. This is problematic, if this
>> task migrates to a cpu supporting this feature, thus
>> relying on its state to be correct. On kernel entry,
>> explicitly set spsr.ssbs, so that speculation is enabled
>> for el0, when this task migrates to a cpu supporting
>> ssbs feature. Restoring state at kernel entry ensures
>> that el0 ssbs state is always consistent while we are
>> in el1.
>>
>> As alternatives are applied by boot cpu, at the end of smp
>> init, presence/absence of ssbs feature on boot cpu, is used
>> for deciding, whether the capability is uniformly provided.
> I've seen the same issue, but went for a slightly different
> approach, see below.
>
>> Signed-off-by: Neeraj Upadhyay <neeraju@codeaurora.org>
>> ---
>>   arch/arm64/kernel/cpu_errata.c | 16 ++++++++++++++++
>>   arch/arm64/kernel/entry.S      | 26 +++++++++++++++++++++++++-
>>   2 files changed, 41 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
>> index ca11ff7..c84a56d 100644
>> --- a/arch/arm64/kernel/cpu_errata.c
>> +++ b/arch/arm64/kernel/cpu_errata.c
>> @@ -336,6 +336,22 @@ void __init arm64_enable_wa2_handling(struct alt_instr *alt,
>>   		*updptr = cpu_to_le32(aarch64_insn_gen_nop());
>>   }
>>   
>> +void __init arm64_restore_ssbs_state(struct alt_instr *alt,
>> +				     __le32 *origptr, __le32 *updptr,
>> +				     int nr_inst)
>> +{
>> +	BUG_ON(nr_inst != 1);
>> +	/*
>> +	 * Only restore EL0 SSBS state on EL1 entry if cpu does not
>> +	 * support the capability and capability is present for at
>> +	 * least one cpu and if the SSBD state allows it to
>> +	 * be changed.
>> +	 */
>> +	if (!this_cpu_has_cap(ARM64_SSBS) && cpus_have_cap(ARM64_SSBS) &&
>> +	    arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
>> +		*updptr = cpu_to_le32(aarch64_insn_gen_nop());
>> +}
>> +
>>   void arm64_set_ssbd_mitigation(bool state)
>>   {
>>   	if (!IS_ENABLED(CONFIG_ARM64_SSBD)) {
>> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
>> index 9cdc459..7e79305 100644
>> --- a/arch/arm64/kernel/entry.S
>> +++ b/arch/arm64/kernel/entry.S
>> @@ -143,6 +143,25 @@ alternative_cb_end
>>   #endif
>>   	.endm
>>   
>> +	// This macro updates spsr. It also corrupts the condition
>> +	// codes state.
>> +	.macro	restore_ssbs_state, saved_spsr, tmp
>> +#ifdef CONFIG_ARM64_SSBD
>> +alternative_cb	arm64_restore_ssbs_state
>> +	b	.L__asm_ssbs_skip\@
>> +alternative_cb_end
>> +	ldr	\tmp, [tsk, #TSK_TI_FLAGS]
>> +	tbnz	\tmp, #TIF_SSBD, .L__asm_ssbs_skip\@
>> +	tst	\saved_spsr, #PSR_MODE32_BIT	// native task?
>> +	b.ne	.L__asm_ssbs_compat\@
>> +	orr	\saved_spsr, \saved_spsr, #PSR_SSBS_BIT
>> +	b	.L__asm_ssbs_skip\@
>> +.L__asm_ssbs_compat\@:
>> +	orr	\saved_spsr, \saved_spsr, #PSR_AA32_SSBS_BIT
>> +.L__asm_ssbs_skip\@:
>> +#endif
>> +	.endm
> Although this is in keeping with the rest of entry.S (perfectly
> unreadable ;-), I think we can do something a bit simpler, that
> doesn't rely on patching. Also, this doesn't seem to take the
> SSBD options such as ARM64_SSBD_FORCE_ENABLE into account.

arm64_restore_ssbs_state has a check for ARM64_SSBD_FORCE_ENABLE,

does that look wrong?

>
>> +
>>   	.macro	kernel_entry, el, regsize = 64
>>   	.if	\regsize == 32
>>   	mov	w0, w0				// zero upper 32 bits of x0
>> @@ -182,8 +201,13 @@ alternative_cb_end
>>   	str	x20, [tsk, #TSK_TI_ADDR_LIMIT]
>>   	/* No need to reset PSTATE.UAO, hardware's already set it to 0 for us */
>>   	.endif /* \el == 0 */
>> -	mrs	x22, elr_el1
>>   	mrs	x23, spsr_el1
>> +
>> +	.if	\el == 0
>> +	restore_ssbs_state x23, x22
>> +	.endif
>> +
>> +	mrs	x22, elr_el1
>>   	stp	lr, x21, [sp, #S_LR]
>>   
>>   	/*
>>
> How about the patch below?

Looks good; was just going to mention PF_KTHREAD check, but Mark R. has 
already

given detailed information about it.


Thanks

Neeraj

>
> Thanks,
>
> 	M.
>
>  From 7d4314d1ef3122d8bf56a7ef239c8c68e0c81277 Mon Sep 17 00:00:00 2001
> From: Marc Zyngier <marc.zyngier@arm.com>
> Date: Tue, 4 Jun 2019 17:35:18 +0100
> Subject: [PATCH] arm64: Force SSBS on context switch
>
> On a CPU that doesn't support SSBS, PSTATE[12] is RES0.  In a system
> where only some of the CPUs implement SSBS, we end-up losing track of
> the SSBS bit across task migration.
>
> To address this issue, let's force the SSBS bit on context switch.
>
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>   arch/arm64/include/asm/processor.h | 14 ++++++++++++--
>   arch/arm64/kernel/process.c        | 14 ++++++++++++++
>   2 files changed, 26 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index fd5b1a4efc70..844e2964b0f5 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -193,6 +193,16 @@ static inline void start_thread_common(struct pt_regs *regs, unsigned long pc)
>   		regs->pmr_save = GIC_PRIO_IRQON;
>   }
>   
> +static inline void set_ssbs_bit(struct pt_regs *regs)
> +{
> +	regs->pstate |= PSR_SSBS_BIT;
> +}
> +
> +static inline void set_compat_ssbs_bit(struct pt_regs *regs)
> +{
> +	regs->pstate |= PSR_AA32_SSBS_BIT;
> +}
> +
>   static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>   				unsigned long sp)
>   {
> @@ -200,7 +210,7 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
>   	regs->pstate = PSR_MODE_EL0t;
>   
>   	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
> -		regs->pstate |= PSR_SSBS_BIT;
> +		set_ssbs_bit(regs);
>   
>   	regs->sp = sp;
>   }
> @@ -219,7 +229,7 @@ static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
>   #endif
>   
>   	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE)
> -		regs->pstate |= PSR_AA32_SSBS_BIT;
> +		set_compat_ssbs_bit(regs);
>   
>   	regs->compat_sp = sp;
>   }
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 9856395ccdb7..d451b3b248cf 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -442,6 +442,19 @@ void uao_thread_switch(struct task_struct *next)
>   	}
>   }
>   
> +static void ssbs_thread_switch(struct task_struct *next)
> +{
> +	if (arm64_get_ssbd_state() != ARM64_SSBD_FORCE_ENABLE &&
> +	    !test_tsk_thread_flag(next, TIF_SSBD)) {
> +		struct pt_regs *regs = task_pt_regs(next);
> +
> +		if (compat_user_mode(regs))
> +			set_compat_ssbs_bit(regs);
> +		else if (user_mode(regs))
> +			set_ssbs_bit(regs);
> +	}
> +}
> +
>   /*
>    * We store our current task in sp_el0, which is clobbered by userspace. Keep a
>    * shadow copy so that we can restore this upon entry from userspace.
> @@ -471,6 +484,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>   	entry_task_switch(next);
>   	uao_thread_switch(next);
>   	ptrauth_thread_switch(next);
> +	ssbs_thread_switch(next);
>   
>   	/*
>   	 * Complete any pending TLB or cache maintenance on this CPU in case

-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a
member of the Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
