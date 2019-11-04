Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D2B0EDFFF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 13:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ze84LodXFCbHrFFi0VDTs2HgD9q9PIykJwvCFbAUsWc=; b=NGqbarkmC01DTU
	cWeO7KiMIeUVc03uSY3SG1kvEPKzux+TygE1245+zMFz+xZQ8z6XjWeMxH6TqCw4yvwgx981boSb8
	dCwwBQR+LLGCxbboGN6cGj3K0aB87ZicevEOR6oCthJ7tGtMNqjkNTi2PAEyOC27W5CcBzJFnV06X
	IGKkzZMsP6TyH7IGocafw0DsAvZY7d9et4LZIeFmewhZdUlbslcjSQNFf7W5vX4jZnpJCfMY3UcG8
	An8Czyck1WBcRDWEN7tTO9AUjUZOQJygNjNfZOJoYh8oF4QBwUJ9Ig47wKqGx61reu3a2RLVEaRpz
	qbm90UsJWH9cCGLi8gkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRbWI-00058X-46; Mon, 04 Nov 2019 12:31:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRbW8-00058C-EI
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 12:31:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 585081FB;
 Mon,  4 Nov 2019 04:31:31 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 194EB3F6C4;
 Mon,  4 Nov 2019 04:31:28 -0800 (PST)
Date: Mon, 4 Nov 2019 12:31:27 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191104123126.GC45140@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101221150.116536-6-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_043132_574196_87C5C1D4 
X-CRM114-Status: GOOD (  40.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:11:38PM -0700, Sami Tolvanen wrote:
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html
> 
> Note that security guarantees in the kernel differ from the
> ones documented for user space. The kernel must store addresses
> of shadow stacks used by other tasks and interrupt handlers in
> memory, which means an attacker capable reading and writing
> arbitrary memory may be able to locate them and hijack control
> flow by modifying shadow stacks that are not currently in use.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  33 +++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  57 +++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/sched/sched.h           |   1 +
>  kernel/scs.c                   | 169 +++++++++++++++++++++++++++++++++
>  11 files changed, 296 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index 79be70bf2899..e6337314f8fb 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -846,6 +846,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif
> +
>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 5f8a5d84dbbe..5e34cbcd8d6a 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -521,6 +521,39 @@ config STACKPROTECTOR_STRONG
>  	  about 20% of all kernel functions, which increases the kernel code
>  	  size by about 2%.
>  
> +config ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	bool
> +	help
> +	  An architecture should select this if it supports Clang's Shadow
> +	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> +	  stack switching.
> +
> +config SHADOW_CALL_STACK_VMAP
> +	bool
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.
> +
> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	help
> +	  This option enables Clang's Shadow Call Stack, which uses a
> +	  shadow stack to protect function return addresses from being
> +	  overwritten by an attacker. More information can be found from
> +	  Clang's documentation:
> +
> +	    https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +	  Note that security guarantees in the kernel differ from the ones
> +	  documented for user space. The kernel must store addresses of shadow
> +	  stacks used by other tasks and interrupt handlers in memory, which
> +	  means an attacker capable reading and writing arbitrary memory may
> +	  be able to locate them and hijack control flow by modifying shadow
> +	  stacks that are not currently in use.
> +
>  config HAVE_ARCH_WITHIN_STACK_FRAMES
>  	bool
>  	help
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918..18fc4d29ef27 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
> +#else
> +# define __noscs
> +#endif
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 72393a8c1a6c..be5d5be4b1ae 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -202,6 +202,10 @@ struct ftrace_likely_data {
>  # define randomized_struct_fields_end
>  #endif
>  
> +#ifndef __noscs
> +# define __noscs
> +#endif
> +
>  #ifndef asm_volatile_goto
>  #define asm_volatile_goto(x...) asm goto(x)
>  #endif
> diff --git a/include/linux/scs.h b/include/linux/scs.h
> new file mode 100644
> index 000000000000..bd5ef4278b91
> --- /dev/null
> +++ b/include/linux/scs.h
> @@ -0,0 +1,57 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#ifndef _LINUX_SCS_H
> +#define _LINUX_SCS_H
> +
> +#include <linux/gfp.h>
> +#include <linux/sched.h>
> +#include <asm/page.h>
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +
> +/*
> + * In testing, 1 KiB shadow stack size (i.e. 128 stack frames on a 64-bit
> + * architecture) provided ~40% safety margin on stack usage while keeping
> + * memory allocation overhead reasonable.
> + */
> +#define SCS_SIZE	1024

To make it easier to reason about type promotion rules (and avoid that
we accidentaly mask out high bits when using this to generate a mask),
can we please make this 1024UL?

> +#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
> +
> +/*
> + * A random number outside the kernel's virtual address space to mark the
> + * end of the shadow stack.
> + */
> +#define SCS_END_MAGIC	0xaf0194819b1635f6UL
> +
> +#define task_scs(tsk)	(task_thread_info(tsk)->shadow_call_stack)
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s)
> +{
> +	task_scs(tsk) = s;
> +}
> +
> +extern void scs_init(void);
> +extern void scs_task_reset(struct task_struct *tsk);
> +extern int scs_prepare(struct task_struct *tsk, int node);
> +extern bool scs_corrupted(struct task_struct *tsk);
> +extern void scs_release(struct task_struct *tsk);
> +
> +#else /* CONFIG_SHADOW_CALL_STACK */
> +
> +#define task_scs(tsk)	NULL
> +
> +static inline void task_set_scs(struct task_struct *tsk, void *s) {}
> +static inline void scs_init(void) {}
> +static inline void scs_task_reset(struct task_struct *tsk) {}
> +static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
> +static inline bool scs_corrupted(struct task_struct *tsk) { return false; }
> +static inline void scs_release(struct task_struct *tsk) {}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK */
> +
> +#endif /* _LINUX_SCS_H */
> diff --git a/init/init_task.c b/init/init_task.c
> index 9e5cbe5eab7b..cbd40460e903 100644
> --- a/init/init_task.c
> +++ b/init/init_task.c
> @@ -11,6 +11,7 @@
>  #include <linux/mm.h>
>  #include <linux/audit.h>
>  #include <linux/numa.h>
> +#include <linux/scs.h>
>  
>  #include <asm/pgtable.h>
>  #include <linux/uaccess.h>
> @@ -184,6 +185,13 @@ struct task_struct init_task
>  };
>  EXPORT_SYMBOL(init_task);
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +unsigned long init_shadow_call_stack[SCS_SIZE / sizeof(long)] __init_task_data
> +		__aligned(SCS_SIZE) = {
> +	[(SCS_SIZE / sizeof(long)) - 1] = SCS_END_MAGIC
> +};
> +#endif
> +
>  /*
>   * Initial thread structure. Alignment of this is handled by a special
>   * linker map entry.
> diff --git a/kernel/Makefile b/kernel/Makefile
> index daad787fb795..313dbd44d576 100644
> --- a/kernel/Makefile
> +++ b/kernel/Makefile
> @@ -102,6 +102,7 @@ obj-$(CONFIG_TRACEPOINTS) += trace/
>  obj-$(CONFIG_IRQ_WORK) += irq_work.o
>  obj-$(CONFIG_CPU_PM) += cpu_pm.o
>  obj-$(CONFIG_BPF) += bpf/
> +obj-$(CONFIG_SHADOW_CALL_STACK) += scs.o
>  
>  obj-$(CONFIG_PERF_EVENTS) += events/
>  
> diff --git a/kernel/fork.c b/kernel/fork.c
> index bcdf53125210..3fa7ba64c62d 100644
> --- a/kernel/fork.c
> +++ b/kernel/fork.c
> @@ -94,6 +94,7 @@
>  #include <linux/livepatch.h>
>  #include <linux/thread_info.h>
>  #include <linux/stackleak.h>
> +#include <linux/scs.h>
>  
>  #include <asm/pgtable.h>
>  #include <asm/pgalloc.h>
> @@ -451,6 +452,8 @@ void put_task_stack(struct task_struct *tsk)
>  
>  void free_task(struct task_struct *tsk)
>  {
> +	scs_release(tsk);
> +
>  #ifndef CONFIG_THREAD_INFO_IN_TASK
>  	/*
>  	 * The task is finally done with both the stack and thread_info,
> @@ -834,6 +837,8 @@ void __init fork_init(void)
>  			  NULL, free_vm_stack_cache);
>  #endif
>  
> +	scs_init();
> +
>  	lockdep_init_task(&init_task);
>  	uprobes_init();
>  }
> @@ -893,6 +898,10 @@ static struct task_struct *dup_task_struct(struct task_struct *orig, int node)
>  	if (err)
>  		goto free_stack;
>  
> +	err = scs_prepare(tsk, node);
> +	if (err)
> +		goto free_stack;
> +
>  #ifdef CONFIG_SECCOMP
>  	/*
>  	 * We must handle setting up seccomp filters once we're under
> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index dd05a378631a..e7faeb383008 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -6013,6 +6013,8 @@ void init_idle(struct task_struct *idle, int cpu)
>  	raw_spin_lock_irqsave(&idle->pi_lock, flags);
>  	raw_spin_lock(&rq->lock);
>  
> +	scs_task_reset(idle);

Could we please do this next to the kasan_unpoison_task_stack() call, 
Either just before, or just after?

They're boot addressing the same issue where previously live stack is
being reused, and in general I'd expect them to occur at the same time
(though I understand idle will be a bit different).

> +
>  	__sched_fork(0, idle);
>  	idle->state = TASK_RUNNING;
>  	idle->se.exec_start = sched_clock();
> diff --git a/kernel/sched/sched.h b/kernel/sched/sched.h
> index 0db2c1b3361e..c153003a011c 100644
> --- a/kernel/sched/sched.h
> +++ b/kernel/sched/sched.h
> @@ -58,6 +58,7 @@
>  #include <linux/profile.h>
>  #include <linux/psi.h>
>  #include <linux/rcupdate_wait.h>
> +#include <linux/scs.h>
>  #include <linux/security.h>
>  #include <linux/stop_machine.h>
>  #include <linux/suspend.h>

This include looks extraneous.

> diff --git a/kernel/scs.c b/kernel/scs.c
> new file mode 100644
> index 000000000000..7c1a40020754
> --- /dev/null
> +++ b/kernel/scs.c
> @@ -0,0 +1,169 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/cpuhotplug.h>
> +#include <linux/mm.h>
> +#include <linux/mmzone.h>
> +#include <linux/scs.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +static inline void *__scs_base(struct task_struct *tsk)
> +{
> +	/*
> +	 * We allow architectures to use the shadow_call_stack field in
> +	 * struct thread_info to store the current shadow stack pointer
> +	 * during context switches.
> +	 *
> +	 * This allows the implementation to also clear the field when
> +	 * the task is active to avoid keeping pointers to the current
> +	 * task's shadow stack in memory. This can make it harder for an
> +	 * attacker to locate the shadow stack, but also requires us to
> +	 * compute the base address when needed.
> +	 *
> +	 * We assume the stack is aligned to SCS_SIZE.
> +	 */

How about:

	/*
	 * To minimize risk the of exposure, architectures may clear a
	 * task's thread_info::shadow_call_stack while that task is
	 * running, and only save/restore the active shadow call stack
	 * pointer when the usual register may be clobbered (e.g. across
	 * context switches).
	 *
	 * The shadow call stack is aligned to SCS_SIZE, and grows
	 * upwards, so we can mask out the low bits to extract the base
	 * when the task is not running.
	 */

... which I think makes the lifetime and constraints a bit clearer.

> +	return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));

We usually use unsigned long ratehr than uintptr_t. Could we please use
that for consistency?

The kernel relies on sizeof(unsigned long) == sizeof(void *) tree-wide,
so that doesn't cause issues for us here.

Similarly, as suggested above, it would be easier to reason about this
knowing that SCS_SIZE is an unsigned long. While IIUC we'd get sign
extension here when it's promoted, giving the definition a UL suffix
minimizes the scope for error.

> +}
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +
> +/* Keep a cache of shadow stacks */
> +#define SCS_CACHE_SIZE 2

How about:

/* Matches NR_CACHED_STACKS for VMAP_STACK */
#define NR_CACHED_SCS 2

... which explains where the number came from, and avoids confusion that
the SIZE is a byte size rather than number of elements.

> +static DEFINE_PER_CPU(void *, scs_cache[SCS_CACHE_SIZE]);
> +
> +static void *scs_alloc(int node)
> +{
> +	int i;
> +
> +	for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +		void *s;
> +
> +		s = this_cpu_xchg(scs_cache[i], NULL);
> +		if (s) {
> +			memset(s, 0, SCS_SIZE);
> +			return s;
> +		}
> +	}
> +
> +	/*
> +	 * We allocate a full page for the shadow stack, which should be
> +	 * more than we need. Check the assumption nevertheless.
> +	 */
> +	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
> +
> +	return __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				    VMALLOC_START, VMALLOC_END,
> +				    GFP_SCS, PAGE_KERNEL, 0,
> +				    node, __builtin_return_address(0));
> +}
> +
> +static void scs_free(void *s)
> +{
> +	int i;
> +
> +	for (i = 0; i < SCS_CACHE_SIZE; i++)
> +		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == 0)
> +			return;

Here we should compare to NULL rather than 0.

> +
> +	vfree_atomic(s);
> +}
> +
> +static int scs_cleanup(unsigned int cpu)
> +{
> +	int i;
> +	void **cache = per_cpu_ptr(scs_cache, cpu);
> +
> +	for (i = 0; i < SCS_CACHE_SIZE; i++) {
> +		vfree(cache[i]);
> +		cache[i] = NULL;
> +	}
> +
> +	return 0;
> +}
> +
> +void __init scs_init(void)
> +{
> +	cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> +		scs_cleanup);

We probably want to do something if this call fails. It looks like we'd
only leak two pages (and we'd be able to use them if/when that CPU is
brought back online. A WARN_ON() is probably fine.

Thanks,
Mark.

> +}
> +
> +#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static struct kmem_cache *scs_cache;
> +
> +static inline void *scs_alloc(int node)
> +{
> +	return kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> +}
> +
> +static inline void scs_free(void *s)
> +{
> +	kmem_cache_free(scs_cache, s);
> +}
> +
> +void __init scs_init(void)
> +{
> +	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> +				0, NULL);
> +	WARN_ON(!scs_cache);
> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static inline unsigned long *scs_magic(struct task_struct *tsk)
> +{
> +	return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;
> +}
> +
> +static inline void scs_set_magic(struct task_struct *tsk)
> +{
> +	*scs_magic(tsk) = SCS_END_MAGIC;
> +}
> +
> +void scs_task_reset(struct task_struct *tsk)
> +{
> +	/*
> +	 * Reset the shadow stack to the base address in case the task
> +	 * is reused.
> +	 */
> +	task_set_scs(tsk, __scs_base(tsk));
> +}
> +
> +int scs_prepare(struct task_struct *tsk, int node)
> +{
> +	void *s;
> +
> +	s = scs_alloc(node);
> +	if (!s)
> +		return -ENOMEM;
> +
> +	task_set_scs(tsk, s);
> +	scs_set_magic(tsk);
> +
> +	return 0;
> +}
> +
> +bool scs_corrupted(struct task_struct *tsk)
> +{
> +	return *scs_magic(tsk) != SCS_END_MAGIC;
> +}
> +
> +void scs_release(struct task_struct *tsk)
> +{
> +	void *s;
> +
> +	s = __scs_base(tsk);
> +	if (!s)
> +		return;
> +
> +	WARN_ON(scs_corrupted(tsk));
> +
> +	task_set_scs(tsk, NULL);
> +	scs_free(s);
> +}
> -- 
> 2.24.0.rc1.363.gb1bccd3e3d-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
