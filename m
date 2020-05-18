Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C0A1D7831
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WwEdg3Oo5+J0U7dtmR8qHNhdCDw0Su1MLI0DNYwzvnU=; b=cUJm+oDqF35O4H
	M84Z6LOKfU3UvDWYw8rPjAGvsHwQJIC+KL6oitvRqyVPlgCiXMLMWyGfwgev7UGYdwLs8Jw3FKpxA
	EiLgTJ4MZOFOn9MQCc9Yk083C+8+A8Pd8+a+J+oP6FPBdzGC/E8OrC7JrSoBUie140QEwTIYioYhP
	VyB3E2bpxYWWUd0uTcmcmquMmZID5bOnsogEv2HkiiRNXdM2cvCmUaHuTdeskP42K4V/HNzv+jQVH
	ZPVqV0wFDLiiqYy+i1UNEvskmvZ2DHGe0tcWzfoC2m7uX+Y0U+SS/aGHm9NbwdWMQHVb1Bslu1cIO
	ELdgtFG6YOS3X2mMx+dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaedC-0002sL-TQ; Mon, 18 May 2020 12:12:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaed4-0002rJ-2u
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:12:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 985E4106F;
 Mon, 18 May 2020 05:12:20 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0201D3F305;
 Mon, 18 May 2020 05:12:17 -0700 (PDT)
Date: Mon, 18 May 2020 13:12:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 4/6] scs: Move scs_overflow_check() out of architecture
 code
Message-ID: <20200518121210.GD1957@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-5-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515172756.27185-5-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_051222_210891_BB183A52 
X-CRM114-Status: GOOD (  21.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:27:54PM +0100, Will Deacon wrote:
> There is nothing architecture-specific about scs_overflow_check() as
> it's just a trivial wrapper around scs_corrupted().
> 
> For parity with task_stack_end_corrupted(), rename scs_corrupted() to
> task_scs_end_corrupted() and call it from schedule_debug() when
> CONFIG_SCHED_STACK_END_CHECK_is enabled. Finally, remove the unused
> scs_overflow_check() function entirely.
> 
> This has absolutely no impact on architectures that do not support SCS
> (currently arm64 only).
> 
> Signed-off-by: Will Deacon <will@kernel.org>

Pulling this out of arch code seems sane to me, and the arch-specific
chanes look sound. However, I have a concern with the changes within the
scheduler context-switch.

> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index a35d3318492c..56be4cbf771f 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -52,7 +52,6 @@
>  #include <asm/mmu_context.h>
>  #include <asm/processor.h>
>  #include <asm/pointer_auth.h>
> -#include <asm/scs.h>
>  #include <asm/stacktrace.h>
>  
>  #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
> @@ -516,7 +515,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>  	entry_task_switch(next);
>  	uao_thread_switch(next);
>  	ssbs_thread_switch(next);
> -	scs_overflow_check(next);

Prior to this patch, we'd never switch to a task whose SCS had already
been corrupted.

With this patch, we only check that when switching away from a task, and
only when CONFIG_SCHED_STACK_END_CHECK is selected, which at first
glance seems to weaken that.

Arguably:

* If the next task's SCS was corrupted by that task while it was
  running, we had already lost at that point.

* If the next task's SCS was corrupted by another task, then that could
  also happen immediately after the check (though timing to avoid the
  check but affect the process could be harder).

... and a VMAP'd SCS would be much nicer in this regard.

Do we think this is weakening the check, or do we think it wasn't all
that helpful to begin with?

Mark.

>  
>  	/*
>  	 * Complete any pending TLB or cache maintenance on this CPU in case
> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> index adc97f826fab..955875dff9e1 100644
> --- a/arch/arm64/kernel/scs.c
> +++ b/arch/arm64/kernel/scs.c
> @@ -6,7 +6,7 @@
>   */
>  
>  #include <linux/percpu.h>
> -#include <asm/scs.h>
> +#include <linux/scs.h>
>  
>  /* Allocate a static per-CPU shadow stack */
>  #define DEFINE_SCS(name)						\
> diff --git a/include/linux/scs.h b/include/linux/scs.h
> index 0eb2485ef832..2fd3df50e93e 100644
> --- a/include/linux/scs.h
> +++ b/include/linux/scs.h
> @@ -47,7 +47,7 @@ static inline unsigned long *__scs_magic(void *s)
>  	return (unsigned long *)(s + SCS_SIZE) - 1;
>  }
>  
> -static inline bool scs_corrupted(struct task_struct *tsk)
> +static inline bool task_scs_end_corrupted(struct task_struct *tsk)
>  {
>  	unsigned long *magic = __scs_magic(task_scs(tsk));
>  	unsigned long sz = task_scs_sp(tsk) - task_scs(tsk);
> @@ -60,8 +60,8 @@ static inline bool scs_corrupted(struct task_struct *tsk)
>  static inline void scs_init(void) {}
>  static inline void scs_task_reset(struct task_struct *tsk) {}
>  static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
> -static inline bool scs_corrupted(struct task_struct *tsk) { return false; }
>  static inline void scs_release(struct task_struct *tsk) {}
> +static inline bool task_scs_end_corrupted(struct task_struct *tsk) { return false; }
>  
>  #endif /* CONFIG_SHADOW_CALL_STACK */
>  
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index 934e03cfaec7..a1d815a11b90 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -3878,6 +3878,9 @@ static inline void schedule_debug(struct task_struct *prev, bool preempt)
>  #ifdef CONFIG_SCHED_STACK_END_CHECK
>  	if (task_stack_end_corrupted(prev))
>  		panic("corrupted stack end detected inside scheduler\n");
> +
> +	if (task_scs_end_corrupted(prev))
> +		panic("corrupted shadow stack detected inside scheduler\n");
>  #endif
>  
>  #ifdef CONFIG_DEBUG_ATOMIC_SLEEP
> diff --git a/kernel/scs.c b/kernel/scs.c
> index aea841cd7586..faf0ecd7b893 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -98,7 +98,8 @@ void scs_release(struct task_struct *tsk)
>  	if (!s)
>  		return;
>  
> -	WARN(scs_corrupted(tsk), "corrupted shadow stack detected when freeing task\n");
> +	WARN(task_scs_end_corrupted(tsk),
> +	     "corrupted shadow stack detected when freeing task\n");
>  	scs_check_usage(tsk);
>  	scs_free(s);
>  }
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
