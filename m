Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7DF1B4402
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:08:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2VH0oOFXTYDjMqH0OYOofFIu01Rh+xPg7Qpvd8yUBk=; b=kidYvDINaYHU+s
	1GqV+8LRYy9Wz8oINxV8aVTAyI06tPmFPquSdKjiTOVLY+f+l40GH4US7J8TwLgt03EaAwd4lsn9J
	HSSud4N7jLKnBVmE7LfhBnK0zZu++ej8vZpCHIMnt2jQhPc580kS273AE1xzTx1hfLnkRiETJ3hyN
	G1mwMqo9fSpTxbh5AELUvO6gIaCOVtOejX1/g3MYwCDL8nxq6dzPgc+AOgcQjreJ02qIP3C/p0hhg
	25tZ8gerR/5k6sI7vEzLbIW1/4xf/nmwqs3AlDFDOgD1swLeZsZ/f4++TgYXc5miFxNZV2V9qZWvG
	8yxEDz0EWj/Ryw3rlNMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREB2-0002L5-6W; Wed, 22 Apr 2020 12:08:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREAr-0002GX-Ri
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:08:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7A2C131B;
 Wed, 22 Apr 2020 05:08:16 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 983793F6CF;
 Wed, 22 Apr 2020 05:08:14 -0700 (PDT)
Date: Wed, 22 Apr 2020 13:08:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [PATCH v3 07/13] task_isolation: arch/arm64: enable task
 isolation functionality
Message-ID: <20200422120811.GA3585@gaia>
References: <07c25c246c55012981ec0296eee23e68c719333a.camel@marvell.com>
 <299c02b268a6438704693ddb77cdcb49f382c0ea.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <299c02b268a6438704693ddb77cdcb49f382c0ea.camel@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_050817_983267_5BFD279B 
X-CRM114-Status: GOOD (  18.51  )
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "peterz@infradead.org" <peterz@infradead.org>,
 Prasun Kapoor <pkapoor@marvell.com>,
 "frederic@kernel.org" <frederic@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rostedt@goodmis.org" <rostedt@goodmis.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-api@vger.kernel.org" <linux-api@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "will@kernel.org" <will@kernel.org>,
 "mingo@kernel.org" <mingo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 03:23:35PM +0000, Alex Belits wrote:
> diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
> index f0cec4160136..7563098eb5b2 100644
> --- a/arch/arm64/include/asm/thread_info.h
> +++ b/arch/arm64/include/asm/thread_info.h
> @@ -63,6 +63,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define TIF_FOREIGN_FPSTATE	3	/* CPU's FP state is not current's */
>  #define TIF_UPROBE		4	/* uprobe breakpoint or singlestep */
>  #define TIF_FSCHECK		5	/* Check FS is USER_DS on return */
> +#define TIF_TASK_ISOLATION	6
>  #define TIF_NOHZ		7
>  #define TIF_SYSCALL_TRACE	8	/* syscall trace active */
>  #define TIF_SYSCALL_AUDIT	9	/* syscall auditing */
> @@ -83,6 +84,7 @@ void arch_release_task_struct(struct task_struct *tsk);
>  #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
>  #define _TIF_NOTIFY_RESUME	(1 << TIF_NOTIFY_RESUME)
>  #define _TIF_FOREIGN_FPSTATE	(1 << TIF_FOREIGN_FPSTATE)
> +#define _TIF_TASK_ISOLATION	(1 << TIF_TASK_ISOLATION)
>  #define _TIF_NOHZ		(1 << TIF_NOHZ)
>  #define _TIF_SYSCALL_TRACE	(1 << TIF_SYSCALL_TRACE)
>  #define _TIF_SYSCALL_AUDIT	(1 << TIF_SYSCALL_AUDIT)
> @@ -96,7 +98,8 @@ void arch_release_task_struct(struct task_struct *tsk);
>  
>  #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
>  				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
> -				 _TIF_UPROBE | _TIF_FSCHECK)
> +				 _TIF_UPROBE | _TIF_FSCHECK | \
> +				 _TIF_TASK_ISOLATION)
>  
>  #define _TIF_SYSCALL_WORK	(_TIF_SYSCALL_TRACE | _TIF_SYSCALL_AUDIT | \
>  				 _TIF_SYSCALL_TRACEPOINT | _TIF_SECCOMP | \
> diff --git a/arch/arm64/kernel/ptrace.c b/arch/arm64/kernel/ptrace.c
> index cd6e5fa48b9c..b35b9b0c594c 100644
> --- a/arch/arm64/kernel/ptrace.c
> +++ b/arch/arm64/kernel/ptrace.c
> @@ -29,6 +29,7 @@
>  #include <linux/regset.h>
>  #include <linux/tracehook.h>
>  #include <linux/elf.h>
> +#include <linux/isolation.h>
>  
>  #include <asm/compat.h>
>  #include <asm/cpufeature.h>
> @@ -1836,6 +1837,15 @@ int syscall_trace_enter(struct pt_regs *regs)
>  			return -1;
>  	}
>  
> +	/*
> +	 * In task isolation mode, we may prevent the syscall from
> +	 * running, and if so we also deliver a signal to the process.
> +	 */
> +	if (test_thread_flag(TIF_TASK_ISOLATION)) {
> +		if (task_isolation_syscall(regs->syscallno) == -1)
> +			return -1;
> +	}

Is this supposed to be called only when syscall tracing is enabled?
It only gets here if the task has any of the _TIF_SYSCALL_WORK flags.

> diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> index 339882db5a91..d488c91a4877 100644
> --- a/arch/arm64/kernel/signal.c
> +++ b/arch/arm64/kernel/signal.c
> @@ -20,6 +20,7 @@
>  #include <linux/tracehook.h>
>  #include <linux/ratelimit.h>
>  #include <linux/syscalls.h>
> +#include <linux/isolation.h>
>  
>  #include <asm/daifflags.h>
>  #include <asm/debug-monitors.h>
> @@ -898,6 +899,11 @@ static void do_signal(struct pt_regs *regs)
>  	restore_saved_sigmask();
>  }
>  
> +#define NOTIFY_RESUME_LOOP_FLAGS \
> +	(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
> +	_TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
> +	_TIF_UPROBE | _TIF_FSCHECK)

AFAICT, that's just _TIF_WORK_MASK without _TIF_TASK_ISOLATION. I'd
rather not duplicate these, they are prone to get out of sync. You could
do something like:

#define NOTIFY_RESUME_LOOP_FLAGS (_TIF_WORK_MASK & ~_TIF_TASK_ISOLATION)

> +
>  asmlinkage void do_notify_resume(struct pt_regs *regs,
>  				 unsigned long thread_flags)
>  {
> @@ -908,6 +914,8 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
>  	 */
>  	trace_hardirqs_off();
>  
> +	task_isolation_check_run_cleanup();
> +
>  	do {
>  		/* Check valid user FS if needed */
>  		addr_limit_user_check();
> @@ -938,7 +946,10 @@ asmlinkage void do_notify_resume(struct pt_regs *regs,
>  
>  		local_daif_mask();
>  		thread_flags = READ_ONCE(current_thread_info()->flags);
> -	} while (thread_flags & _TIF_WORK_MASK);
> +	} while (thread_flags & NOTIFY_RESUME_LOOP_FLAGS);
> +
> +	if (thread_flags & _TIF_TASK_ISOLATION)
> +		task_isolation_start();
>  }
>  
>  unsigned long __ro_after_init signal_minsigstksz;

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
