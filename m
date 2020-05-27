Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43D91E4629
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 16:39:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MhSCuH+KIzvglUFtKIRdWY3HIcKbplD5lNR5CpyvruA=; b=RRN5z/Lil5Tv4JWyUDfQb8hZj
	MLUBbPcFhPMMpegu1XCA7y5XlT0cWVASmHMLrkri8yXrNAybREnW7SQaN/Znl06I+VbWLZCERuq/6
	Ke5qk+kwgVcIxe28A/mEO8Ww+g10t3IQxeTo+mt1kVB1qVnulXzilBwJISVNn9hSPWg+i2tOMHoIQ
	MdKfGSfRdLOfLKDiCGrDVaw7x+JBfq3adh89/stLHzwpl2kNcvUMyWolxXAVFyEBnCavxJ+TdiDtm
	VTLnEBgSyvHSUjlImtbN8qpe+Y4Y0aYmqFUxBsKH+VMl+FCuJEE68XqliF4xrwJBqSKEM87Rk7od5
	FnCrrc1tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdxDL-0007m7-Bt; Wed, 27 May 2020 14:39:27 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdxDB-0007lX-5j
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 14:39:18 +0000
Received: by mail-qt1-x841.google.com with SMTP id x29so6109740qtv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 07:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=c3iUyv2ACu3GpcAgyaKwrhyX2JOcPpWzj8/UV5t9xCg=;
 b=aYhE1Olgr+ev3gdMLXXeSwYykA/jP5JIRtVKuD/FBn/IgJV5b55wDqPcDi1g/8JYND
 wkJPzi+iiE1K6SML3E8pWoK9nPiayL/l+hLzt3AFswGG0f2JqcVGKYymQLEGrmb0xFzY
 QBGz2N7497XPfQVZE+zjRTK8f0I2Ny7/bhpdfGNIVuiKi7MF78oJQSGjceyqdnkZo+pr
 kgEttGtonZrrA/Ff7Nh2+0Ld84fO/v1lzsZP11mnT4Y42Chrm+lBMyWR4oW9h/BSm4mg
 dclMwUS9oDc6zF3VweR06s0D/jszxi618kGcYNgaN5pzVCfMoje3gruLA5lnz73eQ3q2
 fhgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=c3iUyv2ACu3GpcAgyaKwrhyX2JOcPpWzj8/UV5t9xCg=;
 b=C0uFCAGDeP/NFofaTgjB0P7Taasggn5709aipSt5RO25d/u/OYyKQCixPhVtL3HAI8
 Fw1Wq4Ae58QSYXOYVsz6YrUSfXEjUlMA4+8UpmUBdAQgB14iE7EK0u1R2OcYL1eztqYV
 NvCc2CK3/tnpqt0ckTaE7WjG8EdsuR8rE+1Nf686MQv48HhLlumhCBRv9MovSyzWuT0L
 aPnK63a73VLjdJ7BQ0PWXbGL8gKVbY5Adm6S3lS39guJElS1LZ2ue0TJLhTihydiVeQc
 4fRN+My+obH+kCK2RKauMCoBnI/FzDn9P1k1te2kPM0jn8l8bG7tlH21mcZsx0ubtUC1
 EE6w==
X-Gm-Message-State: AOAM531fyiLVE2xrT+bbxvW+75+rosGYYVL9c6oxpdRqZK46Z4Tq4dkB
 ONuWqU8KY6K5VQ1HsdKbWiNOxJ0dh4o=
X-Google-Smtp-Source: ABdhPJwPl9yEmykceJY0i74+YGfu60qsPW57q1HRJOLGF2NEzt9QKY5A34dowe7j/nYE8lSqKayMmg==
X-Received: by 2002:aed:23d2:: with SMTP id k18mr4653133qtc.224.1590590354891; 
 Wed, 27 May 2020 07:39:14 -0700 (PDT)
Received: from [192.168.0.185] ([191.34.87.30])
 by smtp.gmail.com with ESMTPSA id r77sm21209qke.6.2020.05.27.07.39.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 07:39:13 -0700 (PDT)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
 <20200220130222.GA28634@lakrids.cambridge.arm.com>
 <20200220132941.GB14459@willie-the-truck>
 <20200221111652.GB45022@lakrids.cambridge.arm.com>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <a4ef6d40-0c4f-c568-84e8-1baac9cc5474@linaro.org>
Date: Wed, 27 May 2020 11:39:10 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200221111652.GB45022@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_073917_216293_47BBC3EE 
X-CRM114-Status: GOOD (  37.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 2/21/20 8:16 AM, Mark Rutland wrote:
> On Thu, Feb 20, 2020 at 01:29:42PM +0000, Will Deacon wrote:
>> Hi Mark,
>>
>> Thanks for having a look.
>>
>> On Thu, Feb 20, 2020 at 01:02:22PM +0000, Mark Rutland wrote:
>>> On Thu, Feb 13, 2020 at 12:01:16PM +0000, Will Deacon wrote:
>>>> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
>>>> index cd6e5fa48b9c..d479fbcbd0d2 100644
>>>> --- a/arch/arm64/kernel/ptrace.c
>>>> +++ b/arch/arm64/kernel/ptrace.c
>>>> @@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
>>>>    */
>>>>   int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
>>>>   {
>>>> -	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
>>>> -		regs->pstate &= ~DBG_SPSR_SS;
>>>> +	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
>>>> +	user_regs_reset_single_step(regs, task);
>>>
>>> I think this change means we do the right thing for signal entry/return
>>> and ptrace messing with the regs. Instruction emulation seems to do the
>>> right thing via skip_faulting_instruction().
>>>
>>> I think there are a few more single-step edge cases lying around (e.g.
>>> uprobes, rseq), but it looks like those have to be fixed separately. I
>>> fear fixing uprobes might require a largler structural change to single
>>> step, but ignoring uprobes the changes above seem to be sound.
>>
>> Rseq should just abort when delivering the step signal and I'm not sure I
>> see the issue with uprobes. Can you elaborate on your concerns a bit,
>> please?
> 
> For rseq I wasn't sure what state PSTATE.SS should be when we head to
> the abort handler -- I think the sensible thing would be that it
> immediately triggers a single-step exception, but I don't see where we'd
> clear PSTATE.SS to ensure that.
> 
> For uprobes I fear that the uprobes xol single-stepping might end up
> conflicting with the regular ptrace single-stepping, and that the
> uprobes emulation might not always advance the state machine correctly.
> 
>>> If userspace doesn't consume the SS value today, I wonder if we should
>>> hide it when dumping the SPSR to userspace, so that userspace has a
>>> consistent view regardless of whether it's being stepped.
>>
>> You can't really hide it though, because '0' has a meaning so I don't think
>> it gains us a lot other than increasing the scope of the change.
> 
> I think that it reduces the likelihood that single-stepping a program
> changes its behaviour unexpectedly. This patch makes the kernel
> disregard the PSTATE.SS value provided by userspace, so what is gained
> by exposing PSTATE.SS to userspace at all?
> 
> I do agree that there are potentially subtle landmines here; I just
> can't see a legitimate reason for userspace to need the value.
> 
>>> I'll try to dig into the uprobes stuff this afternoon, just in case
>>> that
>>> needs us to do something substantially different.
>>
>> Thanks.
> 
> I didn't get the chance to do this yesterday, but I did think of another
> potential problem.
> 
> I *think* that when attempting to single-step a syscall, if prior to
> return from the syscall the tracer messed with the tracee's regs (e.g.
> to mess with arguments or the retun value) then valid_user_regs() will
> set the SS bit, and upon return from the syscall the next instruction
> would be executed rather than first raising a single-step exception.
> 
> This patch relies on valid_user_regs() being a signal that PSTATE.SS is
> stale, but that's not always the case. To handle that generally I
> suspect we need two bits of state rather than just TIF_SINGLESTEP.
> 
>>> The existing logic in valid_user_regs() doesn't make sense to me, given
>>> SPSR_EL1.SS is immaterial unless MSCDR_EL1.SS == 1. I'm not sure if that
>>> was overzealous or I've forgotten an edge case that we cared about in
>>> the past.
>>
>> I think it was just part of sanitising the registers to a consistent value,
>> but I agree that it wouldn't have a functional impact.
> 
> Thanks for confirming my understanding. I guess this may have minimized
> the cases where userspace saw PSTATE.SS set.
> 
>>>> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
>>>> index 339882db5a91..bc54bdbfd760 100644
>>>> --- a/arch/arm64/kernel/signal.c
>>>> +++ b/arch/arm64/kernel/signal.c
>>>> @@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
>>>>   	forget_syscall(regs);
>>>>   
>>>>   	err |= !valid_user_regs(&regs->user_regs, current);
>>>> -	if (err == 0)
>>>> +
>>>> +	if (err == 0) {
>>>> +		/* Make it look like we stepped the sigreturn system call */
>>>> +		user_fastforward_single_step(current);
>>>>   		err = parse_user_sigframe(&user, sf);
>>>> +	}
>>>
>>> I don't understand this. AFAICT  we don't likewise for other SVCs, so
>>> either I'm missing that, or there's something else I'm missing.
>>>
>>> Why do we need to step sigreturn but not SVC generally?
>>
>> Because we restore the SPSR from the sigframe during sigreturn, so we will
>> end up with PSTATE.SS set when it should be cleared.
> 
> Ah, I see. As above, I think we can hit a similar case when
> single-stepping an SVC for a regular syscall.
> 
> Thanks,
> Mark.
> 

Did we have any further developments on this front? Has a patch made its 
way upstream for review?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
