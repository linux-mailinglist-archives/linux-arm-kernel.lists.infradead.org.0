Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A8319EFF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 06:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeQq3FSI8EosF72bD+PB04gLV1/Mzh6ashILWZG34W8=; b=kQPPilvTdrSvIE
	r9Cw+dSDSTpjqCc9tVRoHePntdVIEBiH9P7GEdVIwIRMuGEsFNgytUar63XCoD03L/D9KSwhRZwZW
	IvRVVtBcOHnMCtlRMu+YmQ/kMBOaw+DBlqTjqkRQUV7Klgv6FzNGzE8V3Fd3J8b/jB4xDdVuC/lOe
	TGZHscqn4Lfk8kqjbDhdv6y9AUBkLyR8cgM2orbtiEJIQEoKAqzjlQYmpSq0CG8y1SSR5CrgsCg/z
	+lo1bAE3/RXvL2C0IREwvkLkw4EC74YJCU9v1XkevjWTy4rvDQNzOcXqQOpTgWZJLPwUx+d+niran
	RZHvNWC8lLCpYBYH6/RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLJbi-0002LX-5f; Mon, 06 Apr 2020 04:43:34 +0000
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLJbY-0002KG-9P
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 04:43:28 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 4E4BB16005C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 06:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1586148200; bh=iyRJr5c6iU8QxRoQP07c761lFX4UQ1wdAEwkcoHDnK0=;
 h=Date:From:To:Cc:Subject:From;
 b=LNLJQInz4l8k1SSM4I70xt90hCLA9aBha4As1xXQwgwAvTxGiYog3czRIdBrcJaie
 oPJLbapXC4PeIvsikziZ+nQgrSCdifZfzjQOh/kcRixFvUY5abOqubVxbQ3tnGgMB7
 gf4e/z1apN26RrtLrx7n4NXkHjIdDv//1PUsWCz3MuhbhzaOOD1gYkX8cTTnqXxRTa
 JsmbR14GOthnTQvwfMR8NXz8TJ1kOzlXe+H/LHCSuMYgtBZfECImclj80HcUr1SGa8
 aeGVtlja67F27bFGX5upTbU1vAJRxPp7JcpUEOl0p2jxEg1loBP1RijQDqvKBtuNBG
 GRiqLkD8p13EQ==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 48wdFr20nxz6tm8;
 Mon,  6 Apr 2020 06:43:12 +0200 (CEST)
Date: Mon, 6 Apr 2020 00:43:09 -0400
From: Kevyn-Alexandre =?utf-8?B?UGFyw6k=?= <kapare@posteo.net>
To: Alex Belits <abelits@marvell.com>
Subject: Re: [PATCH v2 03/12] task_isolation: userspace hard isolation from
 kernel
Message-ID: <20200406044309.bitqbwbk4n54wdmf@x1>
References: <4473787e1b6bc3cc226067e8d122092a678b63de.camel@marvell.com>
 <aed12dd15ea2981bc9554cfa8b5e273c1342c756.camel@marvell.com>
 <105f17f25e90a9a58299a7ed644bdd0f36434c87.camel@marvell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <105f17f25e90a9a58299a7ed644bdd0f36434c87.camel@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_214324_933543_339BE0DE 
X-CRM114-Status: GOOD (  39.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.67.36.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 03:47:08AM +0000, Alex Belits wrote:
> The existing nohz_full mode is designed as a "soft" isolation mode
> that makes tradeoffs to minimize userspace interruptions while
> still attempting to avoid overheads in the kernel entry/exit path,
> to provide 100% kernel semantics, etc.
> =

> However, some applications require a "hard" commitment from the
> kernel to avoid interruptions, in particular userspace device driver
> style applications, such as high-speed networking code.
> =

> This change introduces a framework to allow applications
> to elect to have the "hard" semantics as needed, specifying
> prctl(PR_TASK_ISOLATION, PR_TASK_ISOLATION_ENABLE) to do so.
> =

> The kernel must be built with the new TASK_ISOLATION Kconfig flag
> to enable this mode, and the kernel booted with an appropriate
> "isolcpus=3Dnohz,domain,CPULIST" boot argument to enable
> nohz_full and isolcpus. The "task_isolation" state is then indicated
> by setting a new task struct field, task_isolation_flag, to the
> value passed by prctl(), and also setting a TIF_TASK_ISOLATION
> bit in the thread_info flags. When the kernel is returning to
> userspace from the prctl() call and sees TIF_TASK_ISOLATION set,
> it calls the new task_isolation_start() routine to arrange for
> the task to avoid being interrupted in the future.
> =

> With interrupts disabled, task_isolation_start() ensures that kernel
> subsystems that might cause a future interrupt are quiesced. If it
> doesn't succeed, it adjusts the syscall return value to indicate that
> fact, and userspace can retry as desired. In addition to stopping
> the scheduler tick, the code takes any actions that might avoid
> a future interrupt to the core, such as a worker thread being
> scheduled that could be quiesced now (e.g. the vmstat worker)
> or a future IPI to the core to clean up some state that could be
> cleaned up now (e.g. the mm lru per-cpu cache).
> =

> Once the task has returned to userspace after issuing the prctl(),
> if it enters the kernel again via system call, page fault, or any
> other exception or irq, the kernel will kill it with SIGKILL.
> In addition to sending a signal, the code supports a kernel
> command-line "task_isolation_debug" flag which causes a stack
> backtrace to be generated whenever a task loses isolation.
> =

> To allow the state to be entered and exited, the syscall checking
> test ignores the prctl(PR_TASK_ISOLATION) syscall so that we can
> clear the bit again later, and ignores exit/exit_group to allow
> exiting the task without a pointless signal being delivered.
> =

> The prctl() API allows for specifying a signal number to use instead
> of the default SIGKILL, to allow for catching the notification
> signal; for example, in a production environment, it might be
> helpful to log information to the application logging mechanism
> before exiting. Or, the signal handler might choose to reset the
> program counter back to the code segment intended to be run isolated
> via prctl() to continue execution.
> =

> In a number of cases we can tell on a remote cpu that we are
> going to be interrupting the cpu, e.g. via an IPI or a TLB flush.
> In that case we generate the diagnostic (and optional stack dump)
> on the remote core to be able to deliver better diagnostics.
> If the interrupt is not something caught by Linux (e.g. a
> hypervisor interrupt) we can also request a reschedule IPI to
> be sent to the remote core so it can be sure to generate a
> signal to notify the process.
> =

> Separate patches that follow provide these changes for x86, arm,
> and arm64.
> =

> Signed-off-by: Alex Belits <abelits@marvell.com>
> ---
>  .../admin-guide/kernel-parameters.txt         |   6 +
>  include/linux/hrtimer.h                       |   4 +
>  include/linux/isolation.h                     | 229 ++++++
>  include/linux/sched.h                         |   4 +
>  include/linux/tick.h                          |   3 +
>  include/uapi/linux/prctl.h                    |   6 +
>  init/Kconfig                                  |  28 +
>  kernel/Makefile                               |   2 +
>  kernel/context_tracking.c                     |   2 +
>  kernel/isolation.c                            | 774 ++++++++++++++++++
>  kernel/signal.c                               |   2 +
>  kernel/sys.c                                  |   6 +
>  kernel/time/hrtimer.c                         |  27 +
>  kernel/time/tick-sched.c                      |  18 +
>  14 files changed, 1111 insertions(+)
>  create mode 100644 include/linux/isolation.h
>  create mode 100644 kernel/isolation.c
> =

> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentat=
ion/admin-guide/kernel-parameters.txt
> index c07815d230bc..e4a2d6e37645 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -4808,6 +4808,12 @@
>  			neutralize any effect of /proc/sys/kernel/sysrq.
>  			Useful for debugging.
>  =

> +	task_isolation_debug	[KNL]
> +			In kernels built with CONFIG_TASK_ISOLATION, this
> +			setting will generate console backtraces to
> +			accompany the diagnostics generated about
> +			interrupting tasks running with task isolation.
> +
>  	tcpmhash_entries=3D [KNL,NET]
>  			Set the number of tcp_metrics_hash slots.
>  			Default value is 8192 or 16384 depending on total
> diff --git a/include/linux/hrtimer.h b/include/linux/hrtimer.h
> index 15c8ac313678..e81252eb4f92 100644
> --- a/include/linux/hrtimer.h
> +++ b/include/linux/hrtimer.h
> @@ -528,6 +528,10 @@ extern void __init hrtimers_init(void);
>  /* Show pending timers: */
>  extern void sysrq_timer_list_show(void);
>  =

> +#ifdef CONFIG_TASK_ISOLATION
> +extern void kick_hrtimer(void);
> +#endif
> +
>  int hrtimers_prepare_cpu(unsigned int cpu);
>  #ifdef CONFIG_HOTPLUG_CPU
>  int hrtimers_dead_cpu(unsigned int cpu);
> diff --git a/include/linux/isolation.h b/include/linux/isolation.h
> new file mode 100644
> index 000000000000..6bd71c67f10f
> --- /dev/null
> +++ b/include/linux/isolation.h
> @@ -0,0 +1,229 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Task isolation support
> + *
> + * Authors:
> + *   Chris Metcalf <cmetcalf@mellanox.com>
> + *   Alex Belits <abelits@marvell.com>
> + *   Yuri Norov <ynorov@marvell.com>
> + */
> +#ifndef _LINUX_ISOLATION_H
> +#define _LINUX_ISOLATION_H
> +
> +#include <stdarg.h>
> +#include <linux/errno.h>
> +#include <linux/cpumask.h>
> +#include <linux/prctl.h>
> +#include <linux/types.h>
> +
> +struct task_struct;
> +
> +#ifdef CONFIG_TASK_ISOLATION
> +
> +int task_isolation_message(int cpu, int level, bool supp, const char *fm=
t, ...);
> +
> +#define pr_task_isol_emerg(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_EMERG, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_alert(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_ALERT, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_crit(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_CRIT, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_err(cpu, fmt, ...)				\
> +	task_isolation_message(cpu, LOGLEVEL_ERR, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_warn(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_WARNING, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_notice(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_NOTICE, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_info(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_INFO, false, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_debug(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_DEBUG, false, fmt, ##__VA_ARGS__)
> +
> +#define pr_task_isol_emerg_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_EMERG, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_alert_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_ALERT, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_crit_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_CRIT, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_err_supp(cpu, fmt, ...)				\
> +	task_isolation_message(cpu, LOGLEVEL_ERR, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_warn_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_WARNING, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_notice_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_NOTICE, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_info_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_INFO, true, fmt, ##__VA_ARGS__)
> +#define pr_task_isol_debug_supp(cpu, fmt, ...)			\
> +	task_isolation_message(cpu, LOGLEVEL_DEBUG, true, fmt, ##__VA_ARGS__)
> +DECLARE_PER_CPU(unsigned long, tsk_thread_flags_copy);
> +extern cpumask_var_t task_isolation_map;
> +
> +/**
> + * task_isolation_request() - prctl hook to request task isolation
> + * @flags:	Flags from <linux/prctl.h> PR_TASK_ISOLATION_xxx.
> + *
> + * This is called from the generic prctl() code for PR_TASK_ISOLATION.
> + *
> + * Return: Returns 0 when task isolation enabled, otherwise a negative
> + * errno.
> + */
> +extern int task_isolation_request(unsigned int flags);
> +extern void task_isolation_cpu_cleanup(void);
> +/**
> + * task_isolation_start() - attempt to actually start task isolation
> + *
> + * This function should be invoked as the last thing prior to returning =
to
> + * user space if TIF_TASK_ISOLATION is set in the thread_info flags.  It
> + * will attempt to quiesce the core and enter task-isolation mode.  If it
> + * fails, it will reset the system call return value to an error code th=
at
> + * indicates the failure mode.
> + */
> +extern void task_isolation_start(void);
> +
> +/**
> + * is_isolation_cpu() - check if CPU is intended for running isolated ta=
sks.
> + * @cpu:	CPU to check.
> + */
> +static inline bool is_isolation_cpu(int cpu)
> +{
> +	return task_isolation_map !=3D NULL &&
> +		cpumask_test_cpu(cpu, task_isolation_map);
> +}
> +
> +/**
> + * task_isolation_on_cpu() - check if the cpu is running isolated task
> + * @cpu:	CPU to check.
> + */
> +extern int task_isolation_on_cpu(int cpu);
> +extern void task_isolation_check_run_cleanup(void);
> +
> +/**
> + * task_isolation_cpumask() - set CPUs currently running isolated tasks
> + * @mask:	Mask to modify.
> + */
> +extern void task_isolation_cpumask(struct cpumask *mask);
> +
> +/**
> + * task_isolation_clear_cpumask() - clear CPUs currently running isolate=
d tasks
> + * @mask:      Mask to modify.
> + */
> +extern void task_isolation_clear_cpumask(struct cpumask *mask);
> +
> +/**
> + * task_isolation_syscall() - report a syscall from an isolated task
> + * @nr:		The syscall number.
> + *
> + * This routine should be invoked at syscall entry if TIF_TASK_ISOLATION=
 is
> + * set in the thread_info flags.  It checks for valid syscalls,
> + * specifically prctl() with PR_TASK_ISOLATION, exit(), and exit_group().
> + * For any other syscall it will raise a signal and return failure.
> + *
> + * Return: 0 for acceptable syscalls, -1 for all others.
> + */
> +extern int task_isolation_syscall(int nr);
> +
> +/**
> + * _task_isolation_interrupt() - report an interrupt of an isolated task
> + * @fmt:	A format string describing the interrupt
> + * @...:	Format arguments, if any.
> + *
> + * This routine should be invoked at any exception or IRQ if
> + * TIF_TASK_ISOLATION is set in the thread_info flags.  It is not necess=
ary
> + * to invoke it if the exception will generate a signal anyway (e.g. a b=
ad
> + * page fault), and in that case it is preferable not to invoke it but j=
ust
> + * rely on the standard Linux signal.  The macro task_isolation_syscall()
> + * wraps the TIF_TASK_ISOLATION flag test to simplify the caller code.
> + */
> +extern void _task_isolation_interrupt(const char *fmt, ...);
> +#define task_isolation_interrupt(fmt, ...)				\
> +	do {								\
> +		if (current_thread_info()->flags & _TIF_TASK_ISOLATION)	\
> +			_task_isolation_interrupt(fmt, ## __VA_ARGS__);	\
> +	} while (0)
> +
> +/**
> + * task_isolation_remote() - report a remote interrupt of an isolated ta=
sk
> + * @cpu:	The remote cpu that is about to be interrupted.
> + * @fmt:	A format string describing the interrupt
> + * @...:	Format arguments, if any.
> + *
> + * This routine should be invoked any time a remote IPI or other type of
> + * interrupt is being delivered to another cpu. The function will check =
to
> + * see if the target core is running a task-isolation task, and generate=
 a
> + * diagnostic on the console if so; in addition, we tag the task so it
> + * doesn't generate another diagnostic when the interrupt actually arriv=
es.
> + * Generating a diagnostic remotely yields a clearer indication of what
> + * happened then just reporting only when the remote core is interrupted.
> + *
> + */
> +extern void task_isolation_remote(int cpu, const char *fmt, ...);
> +
> +/**
> + * task_isolation_remote_cpumask() - report interruption of multiple cpus
> + * @mask:	The set of remotes cpus that are about to be interrupted.
> + * @fmt:	A format string describing the interrupt
> + * @...:	Format arguments, if any.
> + *
> + * This is the cpumask variant of _task_isolation_remote().  We
> + * generate a single-line diagnostic message even if multiple remote
> + * task-isolation cpus are being interrupted.
> + */
> +extern void task_isolation_remote_cpumask(const struct cpumask *mask,
> +					  const char *fmt, ...);
> +
> +/**
> + * _task_isolation_signal() - disable task isolation when signal is pend=
ing
> + * @task:	The task for which to disable isolation.
> + *
> + * This function generates a diagnostic and disables task isolation; it
> + * should be called if TIF_TASK_ISOLATION is set when notifying a task o=
f a
> + * pending signal.  The task_isolation_interrupt() function normally
> + * generates a diagnostic for events that just interrupt a task without
> + * generating a signal; here we need to hook the paths that correspond to
> + * interrupts that do generate a signal.  The macro task_isolation_signa=
l()
> + * wraps the TIF_TASK_ISOLATION flag test to simplify the caller code.
> + */
> +extern void _task_isolation_signal(struct task_struct *task);
> +#define task_isolation_signal(task)					\
> +	do {								\
> +		if (task_thread_info(task)->flags & _TIF_TASK_ISOLATION) \
> +			_task_isolation_signal(task);			\
> +	} while (0)
> +
> +/**
> + * task_isolation_user_exit() - debug all user_exit calls
> + *
> + * By default, we don't generate an exception in the low-level user_exit=
()
> + * code, because programs lose the ability to disable task isolation: the
> + * user_exit() hook will cause a signal prior to task_isolation_syscall()
> + * disabling task isolation.  In addition, it means that we lose all the
> + * diagnostic info otherwise available from task_isolation_interrupt() h=
ooks
> + * later in the interrupt-handling process.  But you may enable it here =
for
> + * a special kernel build if you are having undiagnosed userspace jitter.
> + */
> +static inline void task_isolation_user_exit(void)
> +{
> +#ifdef DEBUG_TASK_ISOLATION
> +	task_isolation_interrupt("user_exit");
> +#endif
> +}
> +
> +#else /* !CONFIG_TASK_ISOLATION */
> +static inline int task_isolation_request(unsigned int flags) { return -E=
INVAL; }
> +static inline void task_isolation_start(void) { }
> +static inline bool is_isolation_cpu(int cpu) { return 0; }
> +static inline int task_isolation_on_cpu(int cpu) { return 0; }
> +static inline void task_isolation_cpumask(struct cpumask *mask) { }
> +static inline void task_isolation_clear_cpumask(struct cpumask *mask) { }
> +static inline void task_isolation_cpu_cleanup(void) { }
> +static inline void task_isolation_check_run_cleanup(void) { }
> +static inline int task_isolation_syscall(int nr) { return 0; }
> +static inline void task_isolation_interrupt(const char *fmt, ...) { }
> +static inline void task_isolation_remote(int cpu, const char *fmt, ...) =
{ }
> +static inline void task_isolation_remote_cpumask(const struct cpumask *m=
ask,
> +						 const char *fmt, ...) { }
> +static inline void task_isolation_signal(struct task_struct *task) { }
> +static inline void task_isolation_user_exit(void) { }
> +#endif
> +
> +#endif /* _LINUX_ISOLATION_H */
> diff --git a/include/linux/sched.h b/include/linux/sched.h
> index 04278493bf15..52fdb32aa3b9 100644
> --- a/include/linux/sched.h
> +++ b/include/linux/sched.h
> @@ -1280,6 +1280,10 @@ struct task_struct {
>  	unsigned long			lowest_stack;
>  	unsigned long			prev_lowest_stack;
>  #endif
> +#ifdef CONFIG_TASK_ISOLATION
> +	unsigned short			task_isolation_flags;  /* prctl */
> +	unsigned short			task_isolation_state;
> +#endif
>  =

>  	/*
>  	 * New fields for task_struct should be added above here, so that
> diff --git a/include/linux/tick.h b/include/linux/tick.h
> index 7340613c7eff..27c7c033d5a8 100644
> --- a/include/linux/tick.h
> +++ b/include/linux/tick.h
> @@ -268,6 +268,9 @@ static inline void tick_dep_clear_signal(struct signa=
l_struct *signal,
>  extern void tick_nohz_full_kick_cpu(int cpu);
>  extern void __tick_nohz_task_switch(void);
>  extern void __init tick_nohz_full_setup(cpumask_var_t cpumask);
> +#ifdef CONFIG_TASK_ISOLATION
> +extern int try_stop_full_tick(void);
> +#endif
>  #else
>  static inline bool tick_nohz_full_enabled(void) { return false; }
>  static inline bool tick_nohz_full_cpu(int cpu) { return false; }
> diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
> index 07b4f8131e36..f4848ed2a069 100644
> --- a/include/uapi/linux/prctl.h
> +++ b/include/uapi/linux/prctl.h
> @@ -238,4 +238,10 @@ struct prctl_mm_map {
>  #define PR_SET_IO_FLUSHER		57
>  #define PR_GET_IO_FLUSHER		58
>  =

> +/* Enable task_isolation mode for TASK_ISOLATION kernels. */
> +#define PR_TASK_ISOLATION		48
> +# define PR_TASK_ISOLATION_ENABLE	(1 << 0)
> +# define PR_TASK_ISOLATION_SET_SIG(sig)	(((sig) & 0x7f) << 8)
> +# define PR_TASK_ISOLATION_GET_SIG(bits) (((bits) >> 8) & 0x7f)
> +
>  #endif /* _LINUX_PRCTL_H */
> diff --git a/init/Kconfig b/init/Kconfig
> index 20a6ac33761c..ecdf567f6bd4 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -576,6 +576,34 @@ config CPU_ISOLATION
>  =

>  source "kernel/rcu/Kconfig"
>  =

> +config HAVE_ARCH_TASK_ISOLATION
> +	bool
> +
> +config TASK_ISOLATION
> +	bool "Provide hard CPU isolation from the kernel on demand"
> +	depends on NO_HZ_FULL && HAVE_ARCH_TASK_ISOLATION
> +	help
> +
> +	Allow userspace processes that place themselves on cores with
> +	nohz_full and isolcpus enabled, and run prctl(PR_TASK_ISOLATION),
> +	to "isolate" themselves from the kernel.  Prior to returning to
> +	userspace, isolated tasks will arrange that no future kernel
> +	activity will interrupt the task while the task is running in
> +	userspace.  Attempting to re-enter the kernel while in this mode
> +	will cause the task to be terminated with a signal; you must
> +	explicitly use prctl() to disable task isolation before resuming
> +	normal use of the kernel.
> +
> +	This "hard" isolation from the kernel is required for userspace
> +	tasks that are running hard real-time tasks in userspace, such as
> +	a high-speed network driver in userspace.  Without this option, but
> +	with NO_HZ_FULL enabled, the kernel will make a best-faith, "soft"
> +	effort to shield a single userspace process from interrupts, but
> +	makes no guarantees.
> +
> +	You should say "N" unless you are intending to run a
> +	high-performance userspace driver or similar task.
> +
>  config BUILD_BIN2C
>  	bool
>  	default n
> diff --git a/kernel/Makefile b/kernel/Makefile
> index 4cb4130ced32..2f2ae91f90d5 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -122,6 +122,8 @@ obj-$(CONFIG_GCC_PLUGIN_STACKLEAK) +=3D stackleak.o
>  KASAN_SANITIZE_stackleak.o :=3D n
>  KCOV_INSTRUMENT_stackleak.o :=3D n
>  =

> +obj-$(CONFIG_TASK_ISOLATION) +=3D isolation.o
> +
>  $(obj)/configs.o: $(obj)/config_data.gz
>  =

>  targets +=3D config_data.gz
> diff --git a/kernel/context_tracking.c b/kernel/context_tracking.c
> index 0296b4bda8f1..e9206736f219 100644
> --- a/kernel/context_tracking.c
> +++ b/kernel/context_tracking.c
> @@ -21,6 +21,7 @@
>  #include <linux/hardirq.h>
>  #include <linux/export.h>
>  #include <linux/kprobes.h>
> +#include <linux/isolation.h>
>  =

>  #define CREATE_TRACE_POINTS
>  #include <trace/events/context_tracking.h>
> @@ -157,6 +158,7 @@ void __context_tracking_exit(enum ctx_state state)
>  			if (state =3D=3D CONTEXT_USER) {
>  				vtime_user_exit(current);
>  				trace_user_exit(0);
> +				task_isolation_user_exit();
>  			}
>  		}
>  		__this_cpu_write(context_tracking.state, CONTEXT_KERNEL);
> diff --git a/kernel/isolation.c b/kernel/isolation.c
> new file mode 100644
> index 000000000000..ae29732c376c
> --- /dev/null
> +++ b/kernel/isolation.c
> @@ -0,0 +1,774 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + *  linux/kernel/isolation.c
> + *
> + *  Implementation of task isolation.
> + *
> + * Authors:
> + *   Chris Metcalf <cmetcalf@mellanox.com>
> + *   Alex Belits <abelits@marvell.com>
> + *   Yuri Norov <ynorov@marvell.com>
> + */
> +
> +#include <linux/mm.h>
> +#include <linux/swap.h>
> +#include <linux/vmstat.h>
> +#include <linux/sched.h>
> +#include <linux/isolation.h>
> +#include <linux/syscalls.h>
> +#include <linux/smp.h>
> +#include <linux/tick.h>
> +#include <asm/unistd.h>
> +#include <asm/syscall.h>
> +#include <linux/hrtimer.h>
> +
> +/*
> + * These values are stored in task_isolation_state.
> + * Note that STATE_NORMAL + TIF_TASK_ISOLATION means we are still
> + * returning from sys_prctl() to userspace.
> + */
> +enum {
> +	STATE_NORMAL =3D 0,	/* Not isolated */
> +	STATE_ISOLATED =3D 1	/* In userspace, isolated */
> +};
> +
> +/*
> + * This variable contains thread flags copied at the moment
> + * when schedule() switched to the task on a given CPU,
> + * or 0 if no task is running.
> + */
> +DEFINE_PER_CPU(unsigned long, tsk_thread_flags_cache);
> +
> +/*
> + * Counter for isolation state on a given CPU, increments when entering
> + * isolation and decrements when exiting isolation (before or after the
> + * cleanup). Multiple simultaneously running procedures entering or
> + * exiting isolation are prevented by checking the result of
> + * incrementing or decrementing this variable. This variable is both
> + * incremented and decremented by CPU that caused isolation entering or
> + * exit.
> + *
> + * This is necessary because multiple isolation-breaking events may happ=
en
> + * at once (or one as the result of the other), however isolation exit
> + * may only happen once to transition from isolated to non-isolated stat=
e.
> + * Therefore, if decrementing this counter results in a value less than =
0,
> + * isolation exit procedure can't be started -- it already happened, or =
is
> + * in progress, or isolation is not entered yet.
> + */
> +DEFINE_PER_CPU(atomic_t, isol_counter);
> +
> +/*
> + * Description of the last two tasks that ran isolated on a given CPU.
> + * This is intended only for messages about isolation breaking. We
> + * don't want any references to actual task while accessing this from
> + * CPU that caused isolation breaking -- we know nothing about timing
> + * and don't want to use locking or RCU.
> + */
> +struct isol_task_desc {
> +	atomic_t curr_index;
> +	atomic_t curr_index_wr;
> +	bool	warned[2];
> +	pid_t	pid[2];
> +	pid_t	tgid[2];
> +	char	comm[2][TASK_COMM_LEN];
> +};
> +static DEFINE_PER_CPU(struct isol_task_desc, isol_task_descs);
> +
> +/*
> + * Counter for isolation exiting procedures (from request to the start of
> + * cleanup) being attempted at once on a CPU. Normally incrementing of
> + * this counter is performed from the CPU that caused isolation breaking,
> + * however decrementing is done from the cleanup procedure, delegated to
> + * the CPU that is exiting isolation, not from the CPU that caused isola=
tion
> + * breaking.
> + *
> + * If incrementing this counter while starting isolation exit procedure
> + * results in a value greater than 0, isolation exiting is already in
> + * progress, and cleanup did not start yet. This means, counter should be
> + * decremented back, and isolation exit that is already in progress, sho=
uld
> + * be allowed to complete. Otherwise, a new isolation exit procedure sho=
uld
> + * be started.
> + */
> +DEFINE_PER_CPU(atomic_t, isol_exit_counter);
> +
> +/*
> + * Descriptor for isolation-breaking SMP calls
> + */
> +DEFINE_PER_CPU(call_single_data_t, isol_break_csd);
> +
> +cpumask_var_t task_isolation_map;
> +cpumask_var_t task_isolation_cleanup_map;
> +static DEFINE_SPINLOCK(task_isolation_cleanup_lock);
> +
> +/* We can run on cpus that are isolated from the scheduler and are nohz_=
full. */
> +static int __init task_isolation_init(void)
> +{
> +	alloc_bootmem_cpumask_var(&task_isolation_cleanup_map);
> +	if (alloc_cpumask_var(&task_isolation_map, GFP_KERNEL))
> +		/*
> +		 * At this point task isolation should match
> +		 * nohz_full. This may change in the future.
> +		 */
> +		cpumask_copy(task_isolation_map, tick_nohz_full_mask);
> +	return 0;
> +}
> +core_initcall(task_isolation_init)
> +
> +/* Enable stack backtraces of any interrupts of task_isolation cores. */
> +static bool task_isolation_debug;
> +static int __init task_isolation_debug_func(char *str)
> +{
> +	task_isolation_debug =3D true;
> +	return 1;
> +}
> +__setup("task_isolation_debug", task_isolation_debug_func);
> +
> +/*
> + * Record name, pid and group pid of the task entering isolation on
> + * the current CPU.
> + */
> +static void record_curr_isolated_task(void)
> +{
> +	int ind;
> +	int cpu =3D smp_processor_id();
> +	struct isol_task_desc *desc =3D &per_cpu(isol_task_descs, cpu);
> +	struct task_struct *task =3D current;
> +
> +	/* Finish everything before recording current task */
> +	smp_mb();
> +	ind =3D atomic_inc_return(&desc->curr_index_wr) & 1;
> +	desc->comm[ind][sizeof(task->comm) - 1] =3D '\0';
> +	memcpy(desc->comm[ind], task->comm, sizeof(task->comm) - 1);
> +	desc->pid[ind] =3D task->pid;
> +	desc->tgid[ind] =3D task->tgid;
> +	desc->warned[ind] =3D false;
> +	/* Write everything, to be seen by other CPUs */
> +	smp_mb();
> +	atomic_inc(&desc->curr_index);
> +	/* Everyone will see the new record from this point */
> +	smp_mb();
> +}
> +
> +/*
> + * Print message prefixed with the description of the current (or
> + * last) isolated task on a given CPU. Intended for isolation breaking
> + * messages that include target task for the user's convenience.
> + *
> + * Messages produced with this function may have obsolete task
> + * information if isolated tasks managed to exit, start and enter
> + * isolation multiple times, or multiple tasks tried to enter
> + * isolation on the same CPU at once. For those unusual cases it would
> + * contain a valid description of the cause for isolation breaking and
> + * target CPU number, just not the correct description of which task
> + * ended up losing isolation.
> + */
> +int task_isolation_message(int cpu, int level, bool supp, const char *fm=
t, ...)
> +{
> +	struct isol_task_desc *desc;
> +	struct task_struct *task;
> +	va_list args;
> +	char buf_prefix[TASK_COMM_LEN + 20 + 3 * 20];
> +	char buf[200];
> +	int curr_cpu, ind_counter, ind_counter_old, ind;
> +
> +	curr_cpu =3D get_cpu();
> +	desc =3D &per_cpu(isol_task_descs, cpu);
> +	ind_counter =3D atomic_read(&desc->curr_index);
> +
> +	if (curr_cpu =3D=3D cpu) {
> +		/*
> +		 * Message is for the current CPU so current
> +		 * task_struct should be used instead of cached
> +		 * information.
> +		 *
> +		 * Like in other diagnostic messages, if issued from
> +		 * interrupt context, current will be the interrupted
> +		 * task. Unlike other diagnostic messages, this is
> +		 * always relevant because the message is about
> +		 * interrupting a task.
> +		 */
> +		ind =3D ind_counter & 1;
> +		if (supp && desc->warned[ind]) {
> +			/*
> +			 * If supp is true, skip the message if the
> +			 * same task was mentioned in the message
> +			 * originated on remote CPU, and it did not
> +			 * re-enter isolated state since then (warned
> +			 * is true). Only local messages following
> +			 * remote messages, likely about the same
> +			 * isolation breaking event, are skipped to
> +			 * avoid duplication. If remote cause is
> +			 * immediately followed by a local one before
> +			 * isolation is broken, local cause is skipped
> +			 * from messages.
> +			 */
> +			put_cpu();
> +			return 0;
> +		}
> +		task =3D current;
> +		snprintf(buf_prefix, sizeof(buf_prefix),
> +			 "isolation %s/%d/%d (cpu %d)",
> +			 task->comm, task->tgid, task->pid, cpu);
> +		put_cpu();
> +	} else {
> +		/*
> +		 * Message is for remote CPU, use cached information.
> +		 */
> +		put_cpu();
> +		/*
> +		 * Make sure, index remained unchanged while data was
> +		 * copied. If it changed, data that was copied may be
> +		 * inconsistent because two updates in a sequence could
> +		 * overwrite the data while it was being read.
> +		 */
> +		do {
> +			/* Make sure we are reading up to date values */
> +			smp_mb();
> +			ind =3D ind_counter & 1;
> +			snprintf(buf_prefix, sizeof(buf_prefix),
> +				 "isolation %s/%d/%d (cpu %d)",
> +				 desc->comm[ind], desc->tgid[ind],
> +				 desc->pid[ind], cpu);
> +			desc->warned[ind] =3D true;
> +			ind_counter_old =3D ind_counter;
> +			/* Record the warned flag, then re-read descriptor */
> +			smp_mb();
> +			ind_counter =3D atomic_read(&desc->curr_index);
> +			/*
> +			 * If the counter changed, something was updated, so
> +			 * repeat everything to get the current data
> +			 */
> +		} while (ind_counter !=3D ind_counter_old);
> +	}
> +
> +	va_start(args, fmt);
> +	vsnprintf(buf, sizeof(buf), fmt, args);
> +	va_end(args);
> +
> +	switch (level) {
> +	case LOGLEVEL_EMERG:
> +		pr_emerg("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_ALERT:
> +		pr_alert("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_CRIT:
> +		pr_crit("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_ERR:
> +		pr_err("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_WARNING:
> +		pr_warn("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_NOTICE:
> +		pr_notice("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_INFO:
> +		pr_info("%s: %s", buf_prefix, buf);
> +		break;
> +	case LOGLEVEL_DEBUG:
> +		pr_debug("%s: %s", buf_prefix, buf);
> +		break;
> +	default:
> +		/* No message without a valid level */
> +		return 0;
> +	}
> +	return 1;
> +}
> +
> +/*
> + * Dump stack if need be. This can be helpful even from the final exit
> + * to usermode code since stack traces sometimes carry information about
> + * what put you into the kernel, e.g. an interrupt number encoded in
> + * the initial entry stack frame that is still visible at exit time.
> + */
> +static void debug_dump_stack(void)
> +{
> +	if (task_isolation_debug)
> +		dump_stack();
> +}
> +
> +/*
> + * Set the flags word but don't try to actually start task isolation yet.
> + * We will start it when entering user space in task_isolation_start().
> + */
> +int task_isolation_request(unsigned int flags)
> +{
> +	struct task_struct *task =3D current;
> +
> +	/*
> +	 * The task isolation flags should always be cleared just by
> +	 * virtue of having entered the kernel.
> +	 */
> +	WARN_ON_ONCE(test_tsk_thread_flag(task, TIF_TASK_ISOLATION));
> +	WARN_ON_ONCE(task->task_isolation_flags !=3D 0);
> +	WARN_ON_ONCE(task->task_isolation_state !=3D STATE_NORMAL);
> +
> +	task->task_isolation_flags =3D flags;
> +	if (!(task->task_isolation_flags & PR_TASK_ISOLATION_ENABLE))
> +		return 0;
> +
> +	/* We are trying to enable task isolation. */
> +	set_tsk_thread_flag(task, TIF_TASK_ISOLATION);
> +
> +	/*
> +	 * Shut down the vmstat worker so we're not interrupted later.
> +	 * We have to try to do this here (with interrupts enabled) since
> +	 * we are canceling delayed work and will call flush_work()
> +	 * (which enables interrupts) and possibly schedule().
> +	 */
> +	quiet_vmstat_sync();
> +
> +	/* We return 0 here but we may change that in task_isolation_start(). */
> +	return 0;
> +}
> +
> +/*
> + * Perform actions that should be done immediately on exit from isolatio=
n.
> + */
> +static void fast_task_isolation_cpu_cleanup(void *info)
> +{
> +	atomic_dec(&per_cpu(isol_exit_counter, smp_processor_id()));
> +	/* At this point breaking isolation from other CPUs is possible again */
> +
> +	/*
> +	 * This task is no longer isolated (and if by any chance this
> +	 * is the wrong task, it's already not isolated)
> +	 */
> +	current->task_isolation_flags =3D 0;
> +	clear_tsk_thread_flag(current, TIF_TASK_ISOLATION);
> +
> +	/* Run the rest of cleanup later */
> +	set_tsk_thread_flag(current, TIF_NOTIFY_RESUME);
> +
> +	/* Copy flags with task isolation disabled */
> +	this_cpu_write(tsk_thread_flags_cache,
> +		       READ_ONCE(task_thread_info(current)->flags));
> +}
> +
> +/* Disable task isolation for the specified task. */
> +static void stop_isolation(struct task_struct *p)
> +{
> +	int cpu, this_cpu;
> +	unsigned long flags;
> +
> +	this_cpu =3D get_cpu();
> +	cpu =3D task_cpu(p);
> +	if (atomic_inc_return(&per_cpu(isol_exit_counter, cpu)) > 1) {
> +		/* Already exiting isolation */
> +		atomic_dec(&per_cpu(isol_exit_counter, cpu));
> +		put_cpu();
> +		return;
> +	}
> +
> +	if (p =3D=3D current) {
> +		p->task_isolation_state =3D STATE_NORMAL;
> +		fast_task_isolation_cpu_cleanup(NULL);
> +		task_isolation_cpu_cleanup();
> +		if (atomic_dec_return(&per_cpu(isol_counter, cpu)) < 0) {
> +			/* Is not isolated already */
> +			atomic_inc(&per_cpu(isol_counter, cpu));
> +		}
> +		put_cpu();
> +	} else {
> +		if (atomic_dec_return(&per_cpu(isol_counter, cpu)) < 0) {
> +			/* Is not isolated already */
> +			atomic_inc(&per_cpu(isol_counter, cpu));
> +			atomic_dec(&per_cpu(isol_exit_counter, cpu));
> +			put_cpu();
> +			return;
> +		}
> +		/*
> +		 * Schedule "slow" cleanup. This relies on
> +		 * TIF_NOTIFY_RESUME being set
> +		 */
> +		spin_lock_irqsave(&task_isolation_cleanup_lock, flags);
> +		cpumask_set_cpu(cpu, task_isolation_cleanup_map);
> +		spin_unlock_irqrestore(&task_isolation_cleanup_lock, flags);
> +		/*
> +		 * Setting flags is delegated to the CPU where
> +		 * isolated task is running
> +		 * isol_exit_counter will be decremented from there as well.
> +		 */
> +		per_cpu(isol_break_csd, cpu).func =3D
> +		    fast_task_isolation_cpu_cleanup;
> +		per_cpu(isol_break_csd, cpu).info =3D NULL;
> +		per_cpu(isol_break_csd, cpu).flags =3D 0;
> +		smp_call_function_single_async(cpu,
> +					       &per_cpu(isol_break_csd, cpu));
> +		put_cpu();
> +	}
> +}
> +
> +/*
> + * This code runs with interrupts disabled just before the return to
> + * userspace, after a prctl() has requested enabling task isolation.
> + * We take whatever steps are needed to avoid being interrupted later:
> + * drain the lru pages, stop the scheduler tick, etc.  More
> + * functionality may be added here later to avoid other types of
> + * interrupts from other kernel subsystems.
> + *
> + * If we can't enable task isolation, we update the syscall return
> + * value with an appropriate error.
> + */
> +void task_isolation_start(void)
> +{
> +	int error;
> +
> +	/*
> +	 * We should only be called in STATE_NORMAL (isolation disabled),
> +	 * on our way out of the kernel from the prctl() that turned it on.
> +	 * If we are exiting from the kernel in another state, it means we
> +	 * made it back into the kernel without disabling task isolation,
> +	 * and we should investigate how (and in any case disable task
> +	 * isolation at this point).  We are clearly not on the path back
> +	 * from the prctl() so we don't touch the syscall return value.
> +	 */
> +	if (WARN_ON_ONCE(current->task_isolation_state !=3D STATE_NORMAL)) {
> +		/* Increment counter, this will allow isolation breaking */
> +		if (atomic_inc_return(&per_cpu(isol_counter,
> +					      smp_processor_id())) > 1) {
> +			atomic_dec(&per_cpu(isol_counter, smp_processor_id()));
> +		}
> +		atomic_inc(&per_cpu(isol_counter, smp_processor_id()));
> +		stop_isolation(current);
> +		return;
> +	}
> +
> +	/*
> +	 * Must be affinitized to a single core with task isolation possible.
> +	 * In principle this could be remotely modified between the prctl()
> +	 * and the return to userspace, so we have to check it here.
> +	 */
> +	if (current->nr_cpus_allowed !=3D 1 ||
> +	    !is_isolation_cpu(smp_processor_id())) {
> +		error =3D -EINVAL;
> +		goto error;
> +	}
> +
> +	/* If the vmstat delayed work is not canceled, we have to try again. */
> +	if (!vmstat_idle()) {
> +		error =3D -EAGAIN;
> +		goto error;
> +	}
> +
> +	/* Try to stop the dynamic tick. */
> +	error =3D try_stop_full_tick();
> +	if (error)
> +		goto error;
> +
> +	/* Drain the pagevecs to avoid unnecessary IPI flushes later. */
> +	lru_add_drain();
> +
> +	/* Increment counter, this will allow isolation breaking */
> +	if (atomic_inc_return(&per_cpu(isol_counter,
> +				      smp_processor_id())) > 1) {
> +		atomic_dec(&per_cpu(isol_counter, smp_processor_id()));
> +	}
> +
> +	/* Record isolated task IDs and name */
> +	record_curr_isolated_task();
> +
> +	/* Copy flags with task isolation enabled */
> +	this_cpu_write(tsk_thread_flags_cache,
> +		       READ_ONCE(task_thread_info(current)->flags));
> +
> +	current->task_isolation_state =3D STATE_ISOLATED;
> +	return;
> +
> +error:
> +	/* Increment counter, this will allow isolation breaking */
> +	if (atomic_inc_return(&per_cpu(isol_counter,
> +				      smp_processor_id())) > 1) {
> +		atomic_dec(&per_cpu(isol_counter, smp_processor_id()));
> +	}
> +	stop_isolation(current);
> +	syscall_set_return_value(current, current_pt_regs(), error, 0);
> +}
> +
> +/* Stop task isolation on the remote task and send it a signal. */
> +static void send_isolation_signal(struct task_struct *task)
> +{
> +	int flags =3D task->task_isolation_flags;
> +	kernel_siginfo_t info =3D {
> +		.si_signo =3D PR_TASK_ISOLATION_GET_SIG(flags) ?: SIGKILL,
> +	};
> +
> +	stop_isolation(task);
> +	send_sig_info(info.si_signo, &info, task);
> +}
> +
> +/* Only a few syscalls are valid once we are in task isolation mode. */
> +static bool is_acceptable_syscall(int syscall)
> +{
> +	/* No need to incur an isolation signal if we are just exiting. */
> +	if (syscall =3D=3D __NR_exit || syscall =3D=3D __NR_exit_group)
> +		return true;
> +
> +	/* Check to see if it's the prctl for isolation. */
> +	if (syscall =3D=3D __NR_prctl) {
> +		unsigned long arg[SYSCALL_MAX_ARGS];

gcc output:

kernel/isolation.c: In function 'is_acceptable_syscall':
kernel/isolation.c:511:21: error: 'SYSCALL_MAX_ARGS' undeclared (first use =
in this function); did you mean 'SYSCALL_ALIAS'?
   unsigned long arg[SYSCALL_MAX_ARGS];
                     ^~~~~~~~~~~~~~~~
                     SYSCALL_ALIAS
kernel/isolation.c:511:21: note: each undeclared identifier is reported onl=
y once for each function it appears in
kernel/isolation.c:511:17: warning: unused variable 'arg' [-Wunused-variabl=
e]
   unsigned long arg[SYSCALL_MAX_ARGS];
                 ^~~
make[1]: *** [scripts/Makefile.build:267: kernel/isolation.o] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1683: kernel] Error 2

quick search: =


grep -IHrn SYSCALL_MAX_ARGS
arch/arm/include/asm/syscall.h:54:#define SYSCALL_MAX_ARGS 7
arch/arm64/include/asm/syscall.h:53:#define SYSCALL_MAX_ARGS 6
arch/xtensa/include/asm/syscall.h:57:#define SYSCALL_MAX_ARGS 6
arch/x86/include/asm/syscall.h:91:#define SYSCALL_MAX_ARGS 6
arch/nds32/include/asm/syscall.h:125:#define SYSCALL_MAX_ARGS 6
kernel/isolation.c:511:         unsigned long arg[SYSCALL_MAX_ARGS];

my fix:

diff --git a/arch/x86/include/asm/syscall.h b/arch/x86/include/asm/syscall.h
index 8db3fdb6102e..b9de03a24e4f 100644
--- a/arch/x86/include/asm/syscall.h
+++ b/arch/x86/include/asm/syscall.h
@@ -88,6 +88,8 @@ static inline void syscall_set_return_value(struct task_s=
truct *task,
        regs->ax =3D (long) error ?: val;
 }
 =

+#define SYSCALL_MAX_ARGS 6
+
 #ifdef CONFIG_X86_32
 =

 static inline void syscall_get_arguments(struct task_struct *task,




thx,

-- Kevyn-Alexandre Par=E9


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
