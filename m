Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1608E1B12C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OPmnMakiuWJt6XvTfQ9SHwcZPMI7ZhnfwyTs0+LHH8=; b=inhW+agbJw6Wyp
	Qp7owdaZcApipRmh4/bM8lAoR5Vr9OcWuOWlH0Li/+gmAGGfK/jY97ts0Bh56GoYGM5r7ssZSo2Bt
	NQOufJgy8tu2sa6OT7tPm8bmac0yG3OnneRlgQEk5gRdw76uZQ497PoHpgYpIq8EITyvQOhKvOf9R
	brMqPlVMi7mUeF8JX10PegUVifClTf0eBzCRhFkFr5xUOsB0emEAwxDgSy2gHDtjkQ9Ix8JwClmTb
	VkOrejJdnAOBvs7cHyPAEi7rJ0CfYv/BA/Xk2RcTdwtPfRWUpfKxI1iSaXIRGpUx2Q3Qa78A6W6EX
	C0JisCSU6BVSX1hBNGfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQa3F-0001ki-UX; Mon, 20 Apr 2020 17:17:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQa35-0001jZ-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:17:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53A5E208E4;
 Mon, 20 Apr 2020 17:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587403055;
 bh=xEPndTQqnthFtsiMJTpmk6dCNVlDzL4q2gRBWQekf/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TvIor7yFXuo07ehD0WivvZmktFrLxTZ6Oqfyomoc9vS1nQ3bIvhMsNy5rmeN6WGSm
 EAyNVascLsY5JDJPgv5cBEPRq0UPAGnTmpsjWsRs6cn0/dEq9hTD59Dv9ixCyJxG9Z
 FFj62KFmvrvOCRxQ8ehSLoOvD7jhIVQWhpRJ6jec=
Date: Mon, 20 Apr 2020 18:17:28 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200420171727.GB24386@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416161245.148813-2-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_101735_563825_8584DBE8 
X-CRM114-Status: GOOD (  38.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sami,

Comments inline.

On Thu, Apr 16, 2020 at 09:12:34AM -0700, Sami Tolvanen wrote:
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
> Reviewed-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
> ---
>  Makefile                       |   6 ++
>  arch/Kconfig                   |  34 ++++++
>  include/linux/compiler-clang.h |   6 ++
>  include/linux/compiler_types.h |   4 +
>  include/linux/scs.h            |  57 ++++++++++
>  init/init_task.c               |   8 ++
>  kernel/Makefile                |   1 +
>  kernel/fork.c                  |   9 ++
>  kernel/sched/core.c            |   2 +
>  kernel/scs.c                   | 187 +++++++++++++++++++++++++++++++++
>  10 files changed, 314 insertions(+)
>  create mode 100644 include/linux/scs.h
>  create mode 100644 kernel/scs.c
> 
> diff --git a/Makefile b/Makefile
> index 70def4907036..baea6024b409 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -866,6 +866,12 @@ ifdef CONFIG_LIVEPATCH
>  KBUILD_CFLAGS += $(call cc-option, -flive-patching=inline-clone)
>  endif
>  
> +ifdef CONFIG_SHADOW_CALL_STACK
> +CC_FLAGS_SCS	:= -fsanitize=shadow-call-stack
> +KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> +export CC_FLAGS_SCS
> +endif

CFLAGS_SCS would seem more natural to me, although I see ftrace does it this
way.

>  # arch Makefile may override CC so keep this after arch Makefile is included
>  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
>  
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 786a85d4ad40..691a552c2cc3 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -533,6 +533,40 @@ config STACKPROTECTOR_STRONG
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
> +config SHADOW_CALL_STACK
> +	bool "Clang Shadow Call Stack"
> +	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> +	help
> +	  This option enables Clang's Shadow Call Stack, which uses a
> +	  shadow stack to protect function return addresses from being
> +	  overwritten by an attacker. More information can be found in
> +	  Clang's documentation:
> +
> +	    https://clang.llvm.org/docs/ShadowCallStack.html
> +
> +	  Note that security guarantees in the kernel differ from the ones
> +	  documented for user space. The kernel must store addresses of shadow
> +	  stacks used by other tasks and interrupt handlers in memory, which
> +	  means an attacker capable of reading and writing arbitrary memory
> +	  may be able to locate them and hijack control flow by modifying
> +	  shadow stacks that are not currently in use.

Shouldn't some of this depend on CC_IS_CLANG?

> +config SHADOW_CALL_STACK_VMAP
> +	bool "Use virtually mapped shadow call stacks"
> +	depends on SHADOW_CALL_STACK
> +	help
> +	  Use virtually mapped shadow call stacks. Selecting this option
> +	  provides better stack exhaustion protection, but increases per-thread
> +	  memory consumption as a full page is allocated for each shadow stack.

Given that this feature applies only to arm64 kernels built with clang, it
feels weird to further segment that userbase with another config option.
Does Android enable SHADOW_CALL_STACK_VMAP? If not, maybe we should ditch
it for now and add it when we have a user.

> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index e970f97a7fcb..97b62f47a80d 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -193,6 +193,10 @@ struct ftrace_likely_data {
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
> index 000000000000..c5572fd770b0
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
> +#define SCS_SIZE	1024UL
> +#define GFP_SCS		(GFP_KERNEL | __GFP_ZERO)
> +
> +/*
> + * A random number outside the kernel's virtual address space to mark the
> + * end of the shadow stack.
> + */
> +#define SCS_END_MAGIC	0xaf0194819b1635f6UL

This seems like it might be arm64-specific. Why not choose something based
off CONFIG_ILLEGAL_POINTER_VALUE (see linux/poison.h)?

> diff --git a/kernel/sched/core.c b/kernel/sched/core.c
> index 3a61a3b8eaa9..c99620c1ec20 100644
> --- a/kernel/sched/core.c
> +++ b/kernel/sched/core.c
> @@ -11,6 +11,7 @@
>  #include <linux/nospec.h>
>  
>  #include <linux/kcov.h>
> +#include <linux/scs.h>
>  
>  #include <asm/switch_to.h>
>  #include <asm/tlb.h>
> @@ -6045,6 +6046,7 @@ void init_idle(struct task_struct *idle, int cpu)
>  	idle->se.exec_start = sched_clock();
>  	idle->flags |= PF_IDLE;
>  
> +	scs_task_reset(idle);
>  	kasan_unpoison_task_stack(idle);
>  
>  #ifdef CONFIG_SMP
> diff --git a/kernel/scs.c b/kernel/scs.c
> new file mode 100644
> index 000000000000..28abed21950c
> --- /dev/null
> +++ b/kernel/scs.c
> @@ -0,0 +1,187 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Shadow Call Stack support.
> + *
> + * Copyright (C) 2019 Google LLC
> + */
> +
> +#include <linux/cpuhotplug.h>
> +#include <linux/kasan.h>
> +#include <linux/mm.h>
> +#include <linux/mmzone.h>
> +#include <linux/scs.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +#include <asm/scs.h>
> +
> +static inline void *__scs_base(struct task_struct *tsk)

Please avoid using 'inline' in C files unless there's a good reason not
to let the compiler figure it out.

> +{
> +	/*
> +	 * To minimize risk the of exposure, architectures may clear a

Should be "the risk of exposure".

> +	 * task's thread_info::shadow_call_stack while that task is
> +	 * running, and only save/restore the active shadow call stack
> +	 * pointer when the usual register may be clobbered (e.g. across
> +	 * context switches).
> +	 *
> +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> +	 * upwards, so we can mask out the low bits to extract the base
> +	 * when the task is not running.
> +	 */
> +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));

Could we avoid forcing this alignment it we stored the SCS pointer as a
(base,offset) pair instead? That might be friendlier on the allocations
later on.

> +}
> +
> +static inline unsigned long *scs_magic(void *s)
> +{
> +	return (unsigned long *)(s + SCS_SIZE) - 1;
> +}
> +
> +static inline void scs_set_magic(void *s)
> +{
> +	*scs_magic(s) = SCS_END_MAGIC;

You added task_set_scs() for this sort of thing, so I'm not convinced you
need this extra helper.

> +}
> +
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +
> +/* Matches NR_CACHED_STACKS for VMAP_STACK */
> +#define NR_CACHED_SCS 2

Then they should probably both be derived from the same thing?

> +static DEFINE_PER_CPU(void *, scs_cache[NR_CACHED_SCS]);
> +
> +static void *scs_alloc(int node)
> +{
> +	int i;
> +	void *s;
> +
> +	for (i = 0; i < NR_CACHED_SCS; i++) {
> +		s = this_cpu_xchg(scs_cache[i], NULL);

Might be worth a comment about the re-entrancy here.

> +		if (s) {
> +			memset(s, 0, SCS_SIZE);
> +			goto out;
> +		}
> +	}
> +
> +	/*
> +	 * We allocate a full page for the shadow stack, which should be
> +	 * more than we need. Check the assumption nevertheless.
> +	 */
> +	BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
> +
> +	s = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				 VMALLOC_START, VMALLOC_END,
> +				 GFP_SCS, PAGE_KERNEL, 0,
> +				 node, __builtin_return_address(0));
> +
> +out:
> +	if (s)
> +		scs_set_magic(s);
> +	/* TODO: poison for KASAN, unpoison in scs_free */

We don't usually commit these. What's missing?

> +
> +	return s;
> +}
> +
> +static void scs_free(void *s)
> +{
> +	int i;
> +
> +	for (i = 0; i < NR_CACHED_SCS; i++)
> +		if (this_cpu_cmpxchg(scs_cache[i], 0, s) == NULL)
> +			return;
> +
> +	vfree_atomic(s);
> +}
> +
> +static int scs_cleanup(unsigned int cpu)
> +{
> +	int i;
> +	void **cache = per_cpu_ptr(scs_cache, cpu);
> +
> +	for (i = 0; i < NR_CACHED_SCS; i++) {
> +		vfree(cache[i]);
> +		cache[i] = NULL;
> +	}

Hmm, can this run concurrently with another CPU doing a stack allocation
with this_cpu_cmpxchg()? It probably works out on arm64 thanks to the use
of atomics, but we shouldn't be relying on that in core code.

> +
> +	return 0;
> +}
> +
> +void __init scs_init(void)
> +{
> +	WARN_ON(cpuhp_setup_state(CPUHP_BP_PREPARE_DYN, "scs:scs_cache", NULL,
> +			scs_cleanup) < 0);
> +}
> +
> +#else /* !CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +static struct kmem_cache *scs_cache;
> +
> +static inline void *scs_alloc(int node)
> +{
> +	void *s;
> +
> +	s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> +	if (s) {
> +		scs_set_magic(s);
> +		/*
> +		 * Poison the allocation to catch unintentional accesses to
> +		 * the shadow stack when KASAN is enabled.
> +		 */
> +		kasan_poison_object_data(scs_cache, s);
> +	}
> +
> +	return s;
> +}
> +
> +static inline void scs_free(void *s)
> +{
> +	kasan_unpoison_object_data(scs_cache, s);
> +	kmem_cache_free(scs_cache, s);
> +}
> +
> +void __init scs_init(void)
> +{
> +	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
> +				0, NULL);
> +	WARN_ON(!scs_cache);

Memory allocation failure should be noisy enough without this.

> +}
> +
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +void scs_task_reset(struct task_struct *tsk)
> +{
> +	/*
> +	 * Reset the shadow stack to the base address in case the task
> +	 * is reused.
> +	 */
> +	task_set_scs(tsk, __scs_base(tsk));
> +}

Why isn't this in the header?

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
> +	return 0;
> +}
> +
> +bool scs_corrupted(struct task_struct *tsk)
> +{
> +	unsigned long *magic = scs_magic(__scs_base(tsk));
> +
> +	return READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC;
> +}

Same here.

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

Aren't we about to free the task here? What does clearing the scs pointer
achieve?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
