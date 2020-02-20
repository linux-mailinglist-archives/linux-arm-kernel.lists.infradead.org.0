Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B9E165E14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:02:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUKah+L9LpRwOmappvTxsan6sEhAZX8gWmHhjhdbYsI=; b=ZUexlWjWc35Jbg
	nhqyvwPHVUkU812ieU0+rkUF9q9yT4TWUVnbLh6XGWsBB8l5KwacrUfvcfdFdjcAQmR5BDEhvSez5
	octQIveWMkHP2l2t/pr12hkktHof4XlFjy60xyhsh5GOOS1O5jIPE8cGPZLinzPjpP5mMshrwWuuX
	jijQlmrirr6jrN9hx4Q451JvIV3hUIsBdM8OT3cumy0fXOUOAg7yOiKxAs8K9SVjdfm+MYeAuZbHo
	vQ4lh8YoPhAx2aN1NxGued0/wf0Zup8ey5aTCqHXdhN83YmroG0jE8/Yz2ObB9y3ySmLxIGH10grN
	UoHGhIJ8ZY7PRtFMkkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4lTS-0003Ip-LK; Thu, 20 Feb 2020 13:02:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4lTK-0003Hl-A5
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:02:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8924D31B;
 Thu, 20 Feb 2020 05:02:27 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F05B53F703;
 Thu, 20 Feb 2020 05:02:26 -0800 (PST)
Date: Thu, 20 Feb 2020 13:02:22 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [arm64, debug] PTRACE_SINGLESTEP does not single-step a valid
 instruction
Message-ID: <20200220130222.GA28634@lakrids.cambridge.arm.com>
References: <1eed6d69-d53d-9657-1fc9-c089be07f98c@linaro.org>
 <20191118131525.GA4180@willie-the-truck>
 <b3a9ae7e-8a45-7c14-7bc6-1d3b62728a0c@linaro.org>
 <307ece3d-4e9d-21c4-0abf-9f4f3b313e74@linaro.org>
 <82cb3dea-db82-1c71-3b08-957102b85c93@linaro.org>
 <20200213120115.GD1405@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213120115.GD1405@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_050230_441901_68BAA9B8 
X-CRM114-Status: GOOD (  27.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Luis Machado <luis.machado@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will, Luis,

On Thu, Feb 13, 2020 at 12:01:16PM +0000, Will Deacon wrote:
> Sorry for the very slow reply. I talked to Mark about this a bit but it
> seems that we never followed up here.
> 
> On Tue, Dec 10, 2019 at 05:00:18PM -0300, Luis Machado wrote:
> > Do you have any input regarding this particular situation?
> > 
> > It would be nice to get this fixed before the release of another GDB
> > version, if the fix is to live in GDB itself.
> 
> Basically, I'm very nervous about fixing this in the kernel because
> whatever we do will be visible to userspace. On the other hand, this
> part of the ptrace interface is only seriously used by GDB and we should
> make sure that it works well.
> 
> Does the diff below solve the problem? If so, can you confirm that it
> doesn't appear to regress anything else for GDB?
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
>  void user_rewind_single_step(struct task_struct *task);
>  void user_fastforward_single_step(struct task_struct *task);
> +void user_regs_reset_single_step(struct user_pt_regs *regs,
> +				 struct task_struct *task);
>  
>  void kernel_enable_single_step(struct pt_regs *regs);
>  void kernel_disable_single_step(void);
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 48222a4760c2..7569deb1eac1 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -141,17 +141,20 @@ postcore_initcall(debug_monitors_init);
>  /*
>   * Single step API and exception handling.
>   */
> -static void set_regs_spsr_ss(struct pt_regs *regs)
> +static void set_user_regs_spsr_ss(struct user_pt_regs *regs)
>  {
>  	regs->pstate |= DBG_SPSR_SS;
>  }
> -NOKPROBE_SYMBOL(set_regs_spsr_ss);
> +NOKPROBE_SYMBOL(set_user_regs_spsr_ss);
>  
> -static void clear_regs_spsr_ss(struct pt_regs *regs)
> +static void clear_user_regs_spsr_ss(struct user_pt_regs *regs)
>  {
>  	regs->pstate &= ~DBG_SPSR_SS;
>  }
> -NOKPROBE_SYMBOL(clear_regs_spsr_ss);
> +NOKPROBE_SYMBOL(clear_user_regs_spsr_ss);
> +
> +#define set_regs_spsr_ss(r)	set_user_regs_spsr_ss(&(r)->user_regs)
> +#define clear_regs_spsr_ss(r)	clear_user_regs_spsr_ss(&(r)->user_regs)
>  
>  static DEFINE_SPINLOCK(debug_hook_lock);
>  static LIST_HEAD(user_step_hook);
> @@ -404,6 +407,15 @@ void user_fastforward_single_step(struct task_struct *task)
>  		clear_regs_spsr_ss(task_pt_regs(task));
>  }
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
>  /* Kernel API */
>  void kernel_enable_single_step(struct pt_regs *regs)
>  {
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index cd6e5fa48b9c..d479fbcbd0d2 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -1934,8 +1934,8 @@ static int valid_native_regs(struct user_pt_regs *regs)
>   */
>  int valid_user_regs(struct user_pt_regs *regs, struct task_struct *task)
>  {
> -	if (!test_tsk_thread_flag(task, TIF_SINGLESTEP))
> -		regs->pstate &= ~DBG_SPSR_SS;
> +	/* https://lore.kernel.org/lkml/20191118131525.GA4180@willie-the-truck */
> +	user_regs_reset_single_step(regs, task);

I think this change means we do the right thing for signal entry/return
and ptrace messing with the regs. Instruction emulation seems to do the
right thing via skip_faulting_instruction().

I think there are a few more single-step edge cases lying around (e.g.
uprobes, rseq), but it looks like those have to be fixed separately. I
fear fixing uprobes might require a largler structural change to single
step, but ignoring uprobes the changes above seem to be sound.

If userspace doesn't consume the SS value today, I wonder if we should
hide it when dumping the SPSR to userspace, so that userspace has a
consistent view regardless of whether it's being stepped.

I'll try to dig into the uprobes stuff this afternoon, just in case that
needs us to do something substantially different.

The existing logic in valid_user_regs() doesn't make sense to me, given
SPSR_EL1.SS is immaterial unless MSCDR_EL1.SS == 1. I'm not sure if that
was overzealous or I've forgotten an edge case that we cared about in
the past.

>  
>  	if (is_compat_thread(task_thread_info(task)))
>  		return valid_compat_regs(regs);
> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a91..bc54bdbfd760 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -505,8 +505,12 @@ static int restore_sigframe(struct pt_regs *regs,
>  	forget_syscall(regs);
>  
>  	err |= !valid_user_regs(&regs->user_regs, current);
> -	if (err == 0)
> +
> +	if (err == 0) {
> +		/* Make it look like we stepped the sigreturn system call */
> +		user_fastforward_single_step(current);
>  		err = parse_user_sigframe(&user, sf);
> +	}

I don't understand this. AFAICT  we don't likewise for other SVCs, so
either I'm missing that, or there's something else I'm missing.

Why do we need to step sigreturn but not SVC generally?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
