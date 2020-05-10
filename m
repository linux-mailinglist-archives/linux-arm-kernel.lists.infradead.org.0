Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F6B1CC9A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 May 2020 11:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FetQGybE+/Trwh1olRn4uZnn4rwyliolR5xT9TykoPw=; b=Wv/Yr+xb21OKPq
	4ezJ87aKCQHw9ycQBOeJnj02Je2+Nhtl7w8woKicjGp0UHQnEZl6LKjQ8NPviJpe3yk+ylyjekLj6
	IhFkJXo2amdn2ZKJDwvZkQmsUSny5LRZU2fhOl9z2BiJONwtc0DpT4uHt3dt9pkU+SxRI9nYHPaWD
	C4RIGee/s5N+TOsiWpVJhXr6oHlL5bpngoUrAkspNtZdF2TGI6/cYJ2617YNHPU2n7VVLyOmP0wM5
	X3VsDmJiwGDGXJ3MK/G9pnbivfGoYYtxm07vY3PQaYnPjnb4odf78Ec2rM5GhRAUuNDdOX04gkjgc
	Ihma0Hkz7CKXx/EAfZjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXhoO-0004uO-Ug; Sun, 10 May 2020 08:59:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXhoH-0004tk-6o
 for linux-arm-kernel@lists.infradead.org; Sun, 10 May 2020 08:59:46 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 367B9208DB;
 Sun, 10 May 2020 08:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589101183;
 bh=/RntUQgZ4VxLxMu4+YNoen/YFz9jHRYb9h2qimOY4zI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HNsh0B/2fbkkfKqwDlJ6WNg6+tgtHSwmphr8OrRhTD986IKOz0KikcMko3h0lnP4s
 MDPvuIH6Rf2CCgePtqjqBoSxKU2KWPrB2fjWtrhElXZvIx6KQPnEc2Y20NKk6ej3gt
 tDgGgbrOx84K7Xr18Uif4Sgs9KTqTqOFCuD3uOgM=
Date: Sun, 10 May 2020 17:59:38 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Wei Li <liwei391@huawei.com>
Subject: Re: [PATCH 2/4] arm64: Extract kprobes_save_local_irqflag() and
 kprobes_restore_local_irqflag()
Message-Id: <20200510175938.7c888bd01f82d29203995c63@kernel.org>
In-Reply-To: <20200509214159.19680-3-liwei391@huawei.com>
References: <20200509214159.19680-1-liwei391@huawei.com>
 <20200509214159.19680-3-liwei391@huawei.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_015945_289303_6D3C1B03 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, daniel.thompson@linaro.org, catalin.marinas@arm.com,
 maz@kernel.org, dianders@chromium.org, linux-kernel@vger.kernel.org,
 liwei1412@163.com, jason.wessel@windriver.com, will@kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei,

On Sun, 10 May 2020 05:41:57 +0800
Wei Li <liwei391@huawei.com> wrote:

> PSTATE.I and PSTATE.D are very important for single-step working.
> 
> Without disabling interrupt on local CPU, there is a chance of
> interrupt occurrence in the period of exception return and start of
> out-of-line single-step, that result in wrongly single stepping
> into the interrupt handler. And if D bit is set then, it results into
> undefined exception and when it's handler enables dbg then single-step
> exception is generated, not as expected.
> 
> As they are maintained well in kprobes_save_local_irqflag() and
> kprobes_restore_local_irqflag() for kprobe module, extract them as
> kernel_prepare_single_step() and kernel_cleanup_single_step() for
> general use.

Agreed, these prepare/cleanup should be generic.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> 
> Signed-off-by: Wei Li <liwei391@huawei.com>
> ---
>  arch/arm64/include/asm/debug-monitors.h |  4 ++++
>  arch/arm64/kernel/debug-monitors.c      | 26 +++++++++++++++++++++++
>  arch/arm64/kernel/probes/kprobes.c      | 28 ++-----------------------
>  3 files changed, 32 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/debug-monitors.h b/arch/arm64/include/asm/debug-monitors.h
> index 7619f473155f..b62469f3475b 100644
> --- a/arch/arm64/include/asm/debug-monitors.h
> +++ b/arch/arm64/include/asm/debug-monitors.h
> @@ -113,6 +113,10 @@ void user_fastforward_single_step(struct task_struct *task);
>  void kernel_enable_single_step(struct pt_regs *regs);
>  void kernel_disable_single_step(void);
>  int kernel_active_single_step(void);
> +void kernel_prepare_single_step(unsigned long *flags,
> +						struct pt_regs *regs);
> +void kernel_cleanup_single_step(unsigned long flags,
> +						struct pt_regs *regs);
>  
>  #ifdef CONFIG_HAVE_HW_BREAKPOINT
>  int reinstall_suspended_bps(struct pt_regs *regs);
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 48222a4760c2..25ce6b5a52d2 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -429,6 +429,32 @@ int kernel_active_single_step(void)
>  }
>  NOKPROBE_SYMBOL(kernel_active_single_step);
>  
> +/*
> + * Interrupts need to be disabled before single-step mode is set, and not
> + * reenabled until after single-step mode ends.
> + * Without disabling interrupt on local CPU, there is a chance of
> + * interrupt occurrence in the period of exception return and  start of
> + * out-of-line single-step, that result in wrongly single stepping
> + * into the interrupt handler.
> + */
> +void kernel_prepare_single_step(unsigned long *flags,
> +						struct pt_regs *regs)
> +{
> +	*flags = regs->pstate & DAIF_MASK;
> +	regs->pstate |= PSR_I_BIT;
> +	/* Unmask PSTATE.D for enabling software step exceptions. */
> +	regs->pstate &= ~PSR_D_BIT;
> +}
> +NOKPROBE_SYMBOL(kernel_prepare_single_step);
> +
> +void kernel_cleanup_single_step(unsigned long flags,
> +						struct pt_regs *regs)
> +{
> +	regs->pstate &= ~DAIF_MASK;
> +	regs->pstate |= flags;
> +}
> +NOKPROBE_SYMBOL(kernel_cleanup_single_step);
> +
>  /* ptrace API */
>  void user_enable_single_step(struct task_struct *task)
>  {
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index d1c95dcf1d78..c655b6b543e3 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -168,30 +168,6 @@ static void __kprobes set_current_kprobe(struct kprobe *p)
>  	__this_cpu_write(current_kprobe, p);
>  }
>  
> -/*
> - * Interrupts need to be disabled before single-step mode is set, and not
> - * reenabled until after single-step mode ends.
> - * Without disabling interrupt on local CPU, there is a chance of
> - * interrupt occurrence in the period of exception return and  start of
> - * out-of-line single-step, that result in wrongly single stepping
> - * into the interrupt handler.
> - */
> -static void __kprobes kprobes_save_local_irqflag(struct kprobe_ctlblk *kcb,
> -						struct pt_regs *regs)
> -{
> -	kcb->saved_irqflag = regs->pstate & DAIF_MASK;
> -	regs->pstate |= PSR_I_BIT;
> -	/* Unmask PSTATE.D for enabling software step exceptions. */
> -	regs->pstate &= ~PSR_D_BIT;
> -}
> -
> -static void __kprobes kprobes_restore_local_irqflag(struct kprobe_ctlblk *kcb,
> -						struct pt_regs *regs)
> -{
> -	regs->pstate &= ~DAIF_MASK;
> -	regs->pstate |= kcb->saved_irqflag;
> -}
> -
>  static void __kprobes
>  set_ss_context(struct kprobe_ctlblk *kcb, unsigned long addr)
>  {
> @@ -227,7 +203,7 @@ static void __kprobes setup_singlestep(struct kprobe *p,
>  		set_ss_context(kcb, slot);	/* mark pending ss */
>  
>  		/* IRQs and single stepping do not mix well. */
> -		kprobes_save_local_irqflag(kcb, regs);
> +		kernel_prepare_single_step(&kcb->saved_irqflag, regs);
>  		kernel_enable_single_step(regs);
>  		instruction_pointer_set(regs, slot);
>  	} else {
> @@ -414,7 +390,7 @@ kprobe_single_step_handler(struct pt_regs *regs, unsigned int esr)
>  	retval = kprobe_ss_hit(kcb, instruction_pointer(regs));
>  
>  	if (retval == DBG_HOOK_HANDLED) {
> -		kprobes_restore_local_irqflag(kcb, regs);
> +		kernel_cleanup_single_step(kcb->saved_irqflag, regs);
>  		kernel_disable_single_step();
>  
>  		post_kprobe_handler(kcb, regs);
> -- 
> 2.17.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
