Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAED7CA42
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 19:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CR5+dER8JnzSQaFeSpa+wnNIDdxCPv+k4P2g3Pz/0Z8=; b=onu+WnTBkTd1PZ
	bhIflndoCoEfsPIecsCZmg3Dff9WybTe81tMIRphmblqh9jdYzADOGkyfoo2DMUze9S436hglY5yC
	C4wcDAhqqV5DWe43XzawRELk1s1mY0hiNiPj5piIJZ9oj+travSJmyODy/PFpiDBYIpRAA6om5/ti
	Nltw9JERTPz1hgypKHLNn11BArNZNL/ZrUjLADp4w4Axx25UYZL/UXz1r2LsFBsDIIIua73xyjAMS
	8avgTWjBlTjyZlfkYyzUbsD3dViQwRSICFrZgDwsCu4pmxLTjvkjkcycPSn3dbXg+eEeYfeLmpRkm
	YuVyNkmlv1rnR4gge0aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssMh-0000JX-Ag; Wed, 31 Jul 2019 17:26:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssMa-0000JB-JM
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 17:26:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4506F20679;
 Wed, 31 Jul 2019 17:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564593968;
 bh=oELRU0Fx6RzT4m3ByuzMzmykJ4LlfkVxj9SOmJd+HeQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z+aVD4tLWZyYl6UDCZXR/2brEufSZdP249RJqnD8jlArFTVI/TUre1fn7uykA+bwG
 otIzSMKndxin46UKMd/OFppZfiXgHkp6ze0VzgPZyPn2zjWxQizsr47BYht8cfh6tR
 Joi0PkiHHix110PzZ5fJCj3LN41iThsGNUGkNh1g=
Date: Wed, 31 Jul 2019 18:26:03 +0100
From: Will Deacon <will@kernel.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v3 3/4] arm64: Make debug exception handlers visible from
 RCU
Message-ID: <20190731172602.36hdk3yb3w6uihbu@willie-the-truck>
References: <156404254387.2020.886452004489353899.stgit@devnote2>
 <156404257493.2020.7940525305482369976.stgit@devnote2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156404257493.2020.7940525305482369976.stgit@devnote2>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_102608_676269_13E56FAD 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 05:16:15PM +0900, Masami Hiramatsu wrote:
> Make debug exceptions visible from RCU so that synchronize_rcu()
> correctly track the debug exception handler.
> 
> This also introduces sanity checks for user-mode exceptions as same
> as x86's ist_enter()/ist_exit().
> 
> The debug exception can interrupt in idle task. For example, it warns
> if we put a kprobe on a function called from idle task as below.
> The warning message showed that the rcu_read_lock() caused this
> problem. But actually, this means the RCU is lost the context which
> is already in NMI/IRQ.
> 
>   /sys/kernel/debug/tracing # echo p default_idle_call >> kprobe_events
>   /sys/kernel/debug/tracing # echo 1 > events/kprobes/enable
>   /sys/kernel/debug/tracing # [  135.122237]
>   [  135.125035] =============================
>   [  135.125310] WARNING: suspicious RCU usage
>   [  135.125581] 5.2.0-08445-g9187c508bdc7 #20 Not tainted
>   [  135.125904] -----------------------------
>   [  135.126205] include/linux/rcupdate.h:594 rcu_read_lock() used illegally while idle!
>   [  135.126839]
>   [  135.126839] other info that might help us debug this:
>   [  135.126839]
>   [  135.127410]
>   [  135.127410] RCU used illegally from idle CPU!
>   [  135.127410] rcu_scheduler_active = 2, debug_locks = 1
>   [  135.128114] RCU used illegally from extended quiescent state!
>   [  135.128555] 1 lock held by swapper/0/0:
>   [  135.128944]  #0: (____ptrval____) (rcu_read_lock){....}, at: call_break_hook+0x0/0x178
>   [  135.130499]
>   [  135.130499] stack backtrace:
>   [  135.131192] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.2.0-08445-g9187c508bdc7 #20
>   [  135.131841] Hardware name: linux,dummy-virt (DT)
>   [  135.132224] Call trace:
>   [  135.132491]  dump_backtrace+0x0/0x140
>   [  135.132806]  show_stack+0x24/0x30
>   [  135.133133]  dump_stack+0xc4/0x10c
>   [  135.133726]  lockdep_rcu_suspicious+0xf8/0x108
>   [  135.134171]  call_break_hook+0x170/0x178
>   [  135.134486]  brk_handler+0x28/0x68
>   [  135.134792]  do_debug_exception+0x90/0x150
>   [  135.135051]  el1_dbg+0x18/0x8c
>   [  135.135260]  default_idle_call+0x0/0x44
>   [  135.135516]  cpu_startup_entry+0x2c/0x30
>   [  135.135815]  rest_init+0x1b0/0x280
>   [  135.136044]  arch_call_rest_init+0x14/0x1c
>   [  135.136305]  start_kernel+0x4d4/0x500
>   [  135.136597]
> 
> So make debug exception visible to RCU can fix this warning.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> Acked-by: Paul E. McKenney <paulmck@linux.ibm.com>
> Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
>  Changes in v3:
>   - Make a comment for debug_exception_enter() clearer.
> ---
>  arch/arm64/mm/fault.c |   40 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 9568c116ac7f..ed6c55c87fdc 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -777,6 +777,42 @@ void __init hook_debug_fault_code(int nr,
>  	debug_fault_info[nr].name	= name;
>  }
>  
> +/*
> + * In debug exception context, we explicitly disable preemption.

Maybe add "despite having interrupts disabled"?

> + * This serves two purposes: it makes it much less likely that we would
> + * accidentally schedule in exception context and it will force a warning
> + * if we somehow manage to schedule by accident.
> + */
> +static void debug_exception_enter(struct pt_regs *regs)
> +{
> +	if (user_mode(regs)) {
> +		RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");
> +	} else {
> +		/*
> +		 * We might have interrupted pretty much anything.  In
> +		 * fact, if we're a debug exception, we can even interrupt
> +		 * NMI processing. We don't want this code makes in_nmi()
> +		 * to return true, but we need to notify RCU.
> +		 */
> +		rcu_nmi_enter();
> +	}
> +
> +	preempt_disable();

If you're addingt new functions for entry/exit, maybe move the
trace_hardirqs_{on,off}() calls in here too?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
