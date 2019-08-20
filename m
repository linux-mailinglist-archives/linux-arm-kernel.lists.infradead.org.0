Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BF59522D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 02:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fSwgw/9xTBK6kdB5Nab3okChDVwITBxVV5f9x5EMpSU=; b=HtjBJ4g4sO6EWa
	8Sta5XUE/d63TcwWuTXLWWfopp3EMR2jfnOUOSfEONxXU5HoA4a3qamHbTKYiWUNtvGGBcHPLA/Dl
	M8zf6vEokeT962CmD3nyx9/f+2NBSzCNFbrOJhFIagL2m7S+ZqNoQQ/KAPmNO42ffhPCauOsQtl7L
	rXXk+e/x7Z//c6N5d8SYCQcxOnvk5koMsytA0CySS3qmX8w/eTpGSWf5AKNsQqdk6rpKc2h8Hv1ee
	Y+O5E/S0JBnFlJDuJ4NpgveiIL/IfAQdPdyg/WPCKr45EZEG5eZldEQixK8vrc9ol6L9yRslfuKxX
	fBOox88oCvADsb9lb02A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrgs-0002th-IK; Tue, 20 Aug 2019 00:07:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrgb-0002tN-Au
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 00:07:42 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0AB462087E;
 Tue, 20 Aug 2019 00:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566259661;
 bh=mRNGqagv3FLOfbEDFWbY21Sn764t8uAC5ZUxJM6X+Ag=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ljj/+BvVaFfJsr8EJP7pRhxXV5WOosE2S5EjgFFZL5EWJA+IUA4fRpKrvE+zIPWi8
 40VK1xyQ/1ub/fOJkjYEuAandPATqqA23MtQY7IdbMWQvwMS4mqRm15nNVJsET9Y7u
 qJIi+4w0pTk/PpkAoGYxQNX81kg78oZaIVSD3lX8=
Date: Tue, 20 Aug 2019 09:07:35 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Subject: Re: [PATCH 3/4] kprobes: move kprobe_ftrace_handler() from x86 and
 make it weak
Message-Id: <20190820090735.a55e7d0b685adecf68fdb55b@kernel.org>
In-Reply-To: <20190819192628.5f550074@xhacker.debian>
References: <20190819192422.5ed79702@xhacker.debian>
 <20190819192628.5f550074@xhacker.debian>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_170741_418518_45799DDE 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Steven Rostedt <rostedt@goodmis.org>, "H. Peter Anvin" <hpa@zytor.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jisheng,

On Mon, 19 Aug 2019 11:37:32 +0000
Jisheng Zhang <Jisheng.Zhang@synaptics.com> wrote:

> This code could be reused. So move it from x86 to common code.

Yes, it can be among some arch, but at first, please make your
architecture implementation. After making sure that is enough
stable, we will optimize (consolidate) the code.

For example,
> -		/* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> -		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));

This may depend on arch implementation of kprobes.

Could you make a copy and update comments on arm64?

Thank you,

> 
> Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> ---
>  arch/x86/kernel/kprobes/ftrace.c | 44 --------------------------------
>  kernel/kprobes.c                 | 44 ++++++++++++++++++++++++++++++++
>  2 files changed, 44 insertions(+), 44 deletions(-)
> 
> diff --git a/arch/x86/kernel/kprobes/ftrace.c b/arch/x86/kernel/kprobes/ftrace.c
> index c2ad0b9259ca..91ae1e3e65f7 100644
> --- a/arch/x86/kernel/kprobes/ftrace.c
> +++ b/arch/x86/kernel/kprobes/ftrace.c
> @@ -12,50 +12,6 @@
>  
>  #include "common.h"
>  
> -/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> -void kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> -			   struct ftrace_ops *ops, struct pt_regs *regs)
> -{
> -	struct kprobe *p;
> -	struct kprobe_ctlblk *kcb;
> -
> -	/* Preempt is disabled by ftrace */
> -	p = get_kprobe((kprobe_opcode_t *)ip);
> -	if (unlikely(!p) || kprobe_disabled(p))
> -		return;
> -
> -	kcb = get_kprobe_ctlblk();
> -	if (kprobe_running()) {
> -		kprobes_inc_nmissed_count(p);
> -	} else {
> -		unsigned long orig_ip = instruction_pointer(regs);
> -		/* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> -		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
> -
> -		__this_cpu_write(current_kprobe, p);
> -		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> -		if (!p->pre_handler || !p->pre_handler(p, regs)) {
> -			/*
> -			 * Emulate singlestep (and also recover regs->ip)
> -			 * as if there is a 5byte nop
> -			 */
> -			instruction_pointer_set(regs,
> -				(unsigned long)p->addr + MCOUNT_INSN_SIZE);
> -			if (unlikely(p->post_handler)) {
> -				kcb->kprobe_status = KPROBE_HIT_SSDONE;
> -				p->post_handler(p, regs, 0);
> -			}
> -			instruction_pointer_set(regs, orig_ip);
> -		}
> -		/*
> -		 * If pre_handler returns !0, it changes regs->ip. We have to
> -		 * skip emulating post_handler.
> -		 */
> -		__this_cpu_write(current_kprobe, NULL);
> -	}
> -}
> -NOKPROBE_SYMBOL(kprobe_ftrace_handler);
> -
>  int arch_prepare_kprobe_ftrace(struct kprobe *p)
>  {
>  	p->ainsn.insn = NULL;
> diff --git a/kernel/kprobes.c b/kernel/kprobes.c
> index f8400753a8a9..479148ee1822 100644
> --- a/kernel/kprobes.c
> +++ b/kernel/kprobes.c
> @@ -960,6 +960,50 @@ static struct kprobe *alloc_aggr_kprobe(struct kprobe *p)
>  #endif /* CONFIG_OPTPROBES */
>  
>  #ifdef CONFIG_KPROBES_ON_FTRACE
> +/* Ftrace callback handler for kprobes -- called under preepmt disabed */
> +void __weak kprobe_ftrace_handler(unsigned long ip, unsigned long parent_ip,
> +				  struct ftrace_ops *ops, struct pt_regs *regs)
> +{
> +	struct kprobe *p;
> +	struct kprobe_ctlblk *kcb;
> +
> +	/* Preempt is disabled by ftrace */
> +	p = get_kprobe((kprobe_opcode_t *)ip);
> +	if (unlikely(!p) || kprobe_disabled(p))
> +		return;
> +
> +	kcb = get_kprobe_ctlblk();
> +	if (kprobe_running()) {
> +		kprobes_inc_nmissed_count(p);
> +	} else {
> +		unsigned long orig_ip = instruction_pointer(regs);
> +		/* Kprobe handler expects regs->ip = ip + 1 as breakpoint hit */
> +		instruction_pointer_set(regs, ip + sizeof(kprobe_opcode_t));
> +
> +		__this_cpu_write(current_kprobe, p);
> +		kcb->kprobe_status = KPROBE_HIT_ACTIVE;
> +		if (!p->pre_handler || !p->pre_handler(p, regs)) {
> +			/*
> +			 * Emulate singlestep (and also recover regs->ip)
> +			 * as if there is a 5byte nop
> +			 */
> +			instruction_pointer_set(regs,
> +				(unsigned long)p->addr + MCOUNT_INSN_SIZE);
> +			if (unlikely(p->post_handler)) {
> +				kcb->kprobe_status = KPROBE_HIT_SSDONE;
> +				p->post_handler(p, regs, 0);
> +			}
> +			instruction_pointer_set(regs, orig_ip);
> +		}
> +		/*
> +		 * If pre_handler returns !0, it changes regs->ip. We have to
> +		 * skip emulating post_handler.
> +		 */
> +		__this_cpu_write(current_kprobe, NULL);
> +	}
> +}
> +NOKPROBE_SYMBOL(kprobe_ftrace_handler);
> +
>  static struct ftrace_ops kprobe_ftrace_ops __read_mostly = {
>  	.func = kprobe_ftrace_handler,
>  	.flags = FTRACE_OPS_FL_SAVE_REGS | FTRACE_OPS_FL_IPMODIFY,
> -- 
> 2.23.0.rc1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
