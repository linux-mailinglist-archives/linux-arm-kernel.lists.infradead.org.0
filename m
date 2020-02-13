Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C671B15C921
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:08:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UOTS5XPlRughOtglaX+FHZ/srg1SGN/dIAtd8O1lJDc=; b=CPZCtH/NkJbZuUoilTJSOkYKr
	R2aQ4/puLsm7UjW4YNznXDTWaSqfWJfrcoXP0xZrx0x/DuhXkN620eg9G6LMARAKu1mu/RwsjwUQ5
	GMFJyoLqiDdQ8cp0CAY6WHO3uP+Ol9YEGrMfyGOz4UF1qxlIhu+WjFud5XFXCCOyWDz7Y7Ru/0Nj/
	xwZAlG8XbFldNyxifO0/r+5PZFVir07uuw05LtfVLiAnPkqQ7JMk52gnWrDS8NI5k/WgRjBMD5yr+
	UdvyUKLCSy5LPuZ7gKkY4FbG+FLqjQ8hjf6j8VBU5dv/GLlbK1xIRhaMabc3ViyJNKi2bhAzwQrKB
	W72+KVl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Hy5-0006MZ-A5; Thu, 13 Feb 2020 17:08:01 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Hxx-0006MA-P1
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:07:55 +0000
Received: by mail-qv1-xf41.google.com with SMTP id m5so2945674qvv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=MM75YsWNmvBjmmjSC5ECPMaOB5Mqbm8QcBtJbU6/A4w=;
 b=IqoVy9c3NUlAObcaiGtpQZQdyHxQAIBedpoZL3uMgaC43VyIbJdU29y2fZK6EjKr7e
 0lgzacP0XZ/0JUC2DZ4zxygLKcGLHNgTyrH21lOBvAacXYxDwdqlgw2Pr83sid2o2PNg
 1UFmu6spyAmr7tReEoQjdrVW8dV3K73bmxzzFuCN9PpZBulSszUAGTjfwMUQ2BJ0Ar6j
 xe0dScNqc49avDpGGDAsoT691CqBx2Nv9lkAbeSjLdNQ/G3uNV/pFq6yRgfNeOCLqFqo
 EohtiOKVm4J2HIaTdszpA80QbYn6atZ9QB6H17RtK7pqAbuH3RFfSu9Tc03Vusf/maRp
 FjtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=MM75YsWNmvBjmmjSC5ECPMaOB5Mqbm8QcBtJbU6/A4w=;
 b=jZszYlmqy6SMvLfJv8HZXSPvowlXxt/NOGdMuCjToALj0m6KSyTcUrlqxJDd7Utfft
 jINKnstrNHv5hx+fbgHOBRZ6bOhJkFdrNdh0nqz4eNsO4XMAQFRyQd0oBBY8k5SSk6S7
 VK94QRrPrkDExHqYcy5K3tVvS0UusOdF5pV1p4PuzvmhoBUl4e/Ct8FitFKpW5Vle7dE
 AFzCLw/M6Lust/d22hhkksreOowDvd7AXDBrrPxNL2M+hK+xMkR2QrOPfUK/wXg29I3l
 zrBrpautNNkoFJsh41ZM2Gkyf/mX5PmJzMDqToHLbMCvpZn9vh4p6Wd/ET/W8u4Akfi4
 O4eQ==
X-Gm-Message-State: APjAAAWsf7ISKT1F7DImm4s1bshS/dWeuibIngc/BKTvlUxiZDHPjSBC
 SO5W2SJY736RTEzXobx6ZyVukQKls+E=
X-Google-Smtp-Source: APXvYqwzeso+CO8ooKNGcxMRMaXbSsiJAjydZ5B0F/QHlVLCt+w9N2borimknjdLINWD4YHpLyaG8w==
X-Received: by 2002:ad4:5304:: with SMTP id y4mr12269003qvr.56.1581613671397; 
 Thu, 13 Feb 2020 09:07:51 -0800 (PST)
Received: from [192.168.0.185] ([191.34.93.38])
 by smtp.gmail.com with ESMTPSA id d9sm1749069qth.34.2020.02.13.09.07.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 09:07:50 -0800 (PST)
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
To: Will Deacon <will@kernel.org>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
From: Luis Machado <luis.machado@linaro.org>
Message-ID: <ae8c0cd4-f072-deaf-f30e-46e2265d6392@linaro.org>
Date: Thu, 13 Feb 2020 14:07:46 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200213120115.GD1405@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_090753_818734_1C64398F 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2/13/20 9:01 AM, Will Deacon wrote:
> Hi Luis,
> 
> Sorry for the very slow reply. I talked to Mark about this a bit but it
> seems that we never followed up here.

No worries.

> 
> On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
>> Do you have any input regarding this particular situation?
>>
>> It would be nice to get this fixed before the release of another GDB
>> version, if the fix is to live in GDB itself.
> 
> Basically, I'm very nervous about fixing this in the kernel because
> whatever we do will be visible to userspace. On the other hand, this
> part of the ptrace interface is only seriously used by GDB and we should
> make sure that it works well.
> 
> Does the diff below solve the problem? If so, can you confirm that it
> doesn't appear to regress anything else for GDB?

Thanks for the patch. I'll exercise this in various ways to see if 
anything breaks.

> 
> Cheers,
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
> index 7619f473155f..d825e3585e28 100644
> --- a/arch/arm64/include/asm/debug-monitors.h
> +++ b/arch/arm64/include/asm/debug-monitors.h
> @@ -109,6 +109,8 @@ void disable_debug_monitors(enum dbg_active_el el);
>   
>   void user_rewind_single_step(struct task_struct *task);
>   void user_fastforward_single_step(struct task_struct *task);
> +void user_regs_reset_single_step(struct user_pt_regs *regs,
> +				 struct task_struct *task);
>   
>   void kernel_enable_single_step(struct pt_regs *regs);
>   void kernel_disable_single_step(void);
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 48222a4760c2..7569deb1eac1 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -141,17 +141,20 @@ postcore_initcall(debug_monitors_init);
>   /*
>    * Single step API and exception handling.
>    */
> -static void set_regs_spsr_ss(struct pt_regs *regs)
> +static void set_user_regs_spsr_ss(struct user_pt_regs *regs)
>   {
>   	regs->pstate |= DBG_SPSR_SS;
>   }
> -NOKPROBE_SYMBOL(set_regs_spsr_ss);
> +NOKPROBE_SYMBOL(set_user_regs_spsr_ss);
>   
> -static void clear_regs_spsr_ss(struct pt_regs *regs)
> +static void clear_user_regs_spsr_ss(struct user_pt_regs *regs)
>   {
>   	regs->pstate &= ~DBG_SPSR_SS;
>   }
> -NOKPROBE_SYMBOL(clear_regs_spsr_ss);
> +NOKPROBE_SYMBOL(clear_user_regs_spsr_ss);
> +
> +#define set_regs_spsr_ss(r)	set_user_regs_spsr_ss(&(r)->user_regs)
> +#define clear_regs_spsr_ss(r)	clear_user_regs_spsr_ss(&(r)->user_regs)
>   
>   static DEFINE_SPINLOCK(debug_hook_lock);
>   static LIST_HEAD(user_step_hook);
> @@ -404,6 +407,15 @@ void user_fastforward_single_step(struct task_struct *task)
>   		clear_regs_spsr_ss(task_pt_regs(task));
>   }
>   
> +void user_regs_reset_single_step(struct user_pt_regs *regs,
> +				 struct task_struct *task)
> +{
> +	if (test_tsk_thread_flag(task, TIF_SINGLESTEP))
> +		set_user_regs_spsr_ss(regs);
> +	else
> +		clear_user_regs_spsr_ss(regs);
> +}
> +
>   /* Kernel API */
>   void kernel_enable_single_step(struct pt_regs *regs)
>   {
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index cd6e5fa48b9c..d479fbcbd0d2 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
>    */
>   int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
>   {
> -	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
> -		regs->pstate &= ~DBG_SPSR_SS;
> +	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
> +	user_regs_reset_single_step(regs, task);
>   
>   	if (is_compat_thread(task_thread_info(task)))
>   		return valid_compat_regs(regs);
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a91..bc54bdbfd760 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
>   	forget_syscall(regs);
>   
>   	err |= !valid_user_regs(&regs->user_regs, current);
> -	if (err == 0)
> +
> +	if (err == 0) {
> +		/* Make it look like we stepped the sigreturn system call */
> +		user_fastforward_single_step(current);
>   		err = parse_user_sigframe(&user, sf);
> +	}
>   
>   	if (err == 0 && system_supports_fpsimd()) {
>   		if (!user.fpsimd)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
