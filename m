Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA971AC228
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 15:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fAnGVd8QplkrYgVe9ZEtJH4WzUJPQ9KFt1nZ0Og0Hc=; b=IzTyAMnRFCLaSc
	sz9Mt5syAj8W++0X/xIyFFuMOsYkwopdWUSec9CBgERApBsea1cEsmzCg8uZPG4wQFbFEcoj7RnYX
	Ztt03ohQF/342dxgmfNTu/UtQgrw8PvP0jipkWHE7TQBbz9ZF6OBiCK6bdXDj/GYR4aj13eoT5mVk
	In8FrrtEyjjvg25WWl+VnAuuVuW5+EZz+ucTHIOGOCuY+FgNl/mbQecZZvH+otLIVoCc48pJfsMzK
	PibfFJaKM9jOroVF+O6enbYxqHbHxOckgyyE+7ZMgcKag1ZUuNpeVQ6J0MDOhwZeIzleSB1mWTPOK
	lqkyQpeCt0HMQsQQT4NA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP4Nr-0000v1-3e; Thu, 16 Apr 2020 13:16:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP4Ni-0000uF-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 13:16:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C16381FB;
 Thu, 16 Apr 2020 06:16:37 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 017C33F68F;
 Thu, 16 Apr 2020 06:16:36 -0700 (PDT)
Date: Thu, 16 Apr 2020 14:16:34 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Kevin Hao <haokexin@gmail.com>
Subject: Re: [PATCH] arm64: entry: Update the IRQ tracing before debug
 exception unmasked
Message-ID: <20200416131633.GH4987@lakrids.cambridge.arm.com>
References: <20200401052107.36076-1-haokexin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401052107.36076-1-haokexin@gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_061639_069345_F255B0E6 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 01:21:07PM +0800, Kevin Hao wrote:
> When running the kgdb test suite, we get the following call trace:
>   # echo kgdbts=V1 > /sys/module/kgdbts/parameters/kgdbts
> 
>   DEBUG_LOCKS_WARN_ON(current->hardirqs_enabled)
>   WARNING: CPU: 10 PID: 697 at kernel/locking/lockdep.c:4793 check_flags.part.0+0x15c/0x180
>   Modules linked in:
>   CPU: 10 PID: 697 Comm: sh Not tainted 5.6.0-next-20200331-yoctodev-standard+ #341
>   Hardware name: Marvell OcteonTX CN96XX board (DT)
>   pstate: 604003c9 (nZCv DAIF +PAN -UAO)
>   pc : check_flags.part.0+0x15c/0x180
>   lr : check_flags.part.0+0x15c/0x180
>   sp : ffff800017d0f830
>   x29: ffff800017d0f830 x28: ffff000b936c0000
>   x27: 00000000c28f5c29 x26: 00000000ffffffff
>   x25: 00000000000003c0 x24: ffff800011af8dd0
>   x23: 0000000000000000 x22: ffff8000119afdc0
>   x21: ffff80001198bbe8 x20: ffff800011400018
>   x19: ffff800012655000 x18: 0000000000000001
>   x17: 0000000000000000 x16: 0000000000000000
>   x15: ffff000b936c0470 x14: ffffffffffffffff
>   x13: 0000000000000000 x12: ffff800012655000
>   x11: ffff800017d0f830 x10: ffff800017d0f830
>   x9 : 00000000000003c0 x8 : 6e655f7371726964
>   x7 : 7261683e2d746e65 x6 : ffff8000126552fe
>   x5 : 0000000000000000 x4 : 0000000000000000
>   x3 : 00000000ffffffff x2 : 0000000000000000
>   x1 : bbf8ef1cf7dda200 x0 : 0000000000000000
>   Call trace:
>    check_flags.part.0+0x15c/0x180
>    lock_is_held_type+0xf0/0x120
>    rcu_read_lock_sched_held+0x74/0x98
>    trace_rcu_dyntick+0x1b8/0x1e0
>    rcu_nmi_enter+0x7c/0xb8
>    debug_exception_enter+0x68/0xe8
>    do_debug_exception+0x60/0x150
>    el1_sync_handler+0xd8/0xf8
>    el1_sync+0x7c/0x100
>    el1_irq+0x78/0x180
>    kgdbts_break_test+0x0/0x40
>    param_set_kgdbts_var+0x68/0xe8
>    param_attr_store+0xb8/0x120
>    module_attr_store+0x2c/0x48
>    sysfs_kf_write+0x54/0x80
>    kernfs_fop_write+0x154/0x248
>    __vfs_write+0x24/0x50
>    vfs_write+0xec/0x1d8
>    ksys_write+0x74/0x100
>    __arm64_sys_write+0x24/0x30
>    do_el0_svc+0x8c/0x1e8
>    el0_sync_handler+0x11c/0x198
>    el0_sync+0x158/0x180
>   irq event stamp: 76505
>   hardirqs last  enabled at (76505): [<ffff80001009f9ec>] debug_exception_exit+0x54/0x68
>   hardirqs last disabled at (76504): [<ffff80001009fb04>] debug_exception_enter+0xac/0xe8
>   softirqs last  enabled at (76498): [<ffff8000100817b4>] __do_softirq+0x5a4/0x5ec
>   softirqs last disabled at (76439): [<ffff8000100b6ff4>] irq_exit+0x13c/0x150
> 
> The reason is that an IRQ is emitted when doing the single step debug,
> but in the IRQ handler we would enable the debug exception before
> updating the IRQ tracing flags. This will cause the debug exception
> running in an context which the IRQ state and IRQ tracing flags are
> mismatched. And the debug exception handler only update the IRQ tracing
> flag to off when it think that the debug emit in a IRQ enabled context.
> Then we would get the above call trace if any code like check_flags()
> is called in the debug exception handler's path. So we have to update
> the IRQ tracing to the correct status before the debug exception unmasked.
> 
> Signed-off-by: Kevin Hao <haokexin@gmail.com>

I think that actual issue here is in the debug path:
debug_exception_enter() tries to conditionally trace_hardirqs_off(), and
this is unsound as it does this based solely on
interrupts_enabled(regs).

Here we take a debug exception while the HW state is disabled, but the
tracing state is enabled, and I reckon we can also do that elsewhere.
for example, if we set a breakpoint in the middle of
local_irq_disable(), between the write to DAIF and the update of the irq
tracing state. In that case, interrupts_enabled(regs) will be false, but
the tracing state will be stale and might say that IRQs are enabled.

Given that possibility, I suspect that we need to unconditionally
trace_hardirqs_off() in the debug entry path to make that robust.

Thanks,
Mark.

> ---
>  arch/arm64/kernel/entry.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index ddcde093c433..0cc65b7b9e1a 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -592,7 +592,6 @@ SYM_CODE_END(el1_sync)
>  SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
>  	kernel_entry 1
>  	gic_prio_irq_setup pmr=x20, tmp=x1
> -	enable_da_f
>  
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>  	test_irqs_unmasked	res=x0, pmr=x20
> @@ -605,6 +604,7 @@ SYM_CODE_START_LOCAL_NOALIGN(el1_irq)
>  	bl	trace_hardirqs_off
>  #endif
>  
> +	enable_da_f
>  	irq_handler
>  
>  #ifdef CONFIG_PREEMPTION
> -- 
> 2.25.1.377.g2d2118b814c1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
