Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B717C13F2B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:37:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+Wh5nPDIWCk0F5xBWtzlkESD2mXE7MBSyhVMvH1QC0=; b=pQFGbUJI946AcN
	rn62Y8er9aCUxrdcfggDbRde/az31Jmpip0kYzheqEjs4/UCKp9q7bwIM2otKAymCtUf/pNdiBhlF
	eFLChS7MSde7QKvuyiumYQFnrKFvHHduKE8I0gLbOByMw72owxjyW5JLBmeattLtaRCWm92fbhFFR
	uyoqieGdQ9f9R8Dle9gddQRDAG5dB5duv/cND28VxCmonA4XDF+EyAlyoXMAL/zyXwfH8mMbW4B+9
	JBgl8HjkGbcoFm7lzcpt44ElmRspyDVial8FAf/tGEprTLijd5S6PVjzmgWJtAhO+rYPebZRdl3P/
	tmr7PZSeaS3j9h+eVAew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA12-0006bG-KA; Thu, 16 Jan 2020 18:37:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9GH-0008LI-IN
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:48:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0A5D246A0;
 Thu, 16 Jan 2020 17:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579196932;
 bh=yRvYIY5/icd2WficOCFNqLrfEVkGFG14cg7dYGwt1ds=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qZiF6LJXtmfzV8cl0/IHOiStIoYgH5m1Q/Xqo9Z0X25QzK5/mZqjwFRsR4fO14kb7
 NemreBeS57WXPRukoHkNrzHdW47paPD2QFCnvc7csqw381kkjKK1Fa7EdZxh3e6LXw
 +guMDfAnElzwAmHo2LFnfFjteIdfOljXqQ6w7ZPY=
Date: Thu, 16 Jan 2020 17:48:47 +0000
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>, james.morse@arm.com
Subject: Re: [PATCH v6 15/15] arm64: scs: add shadow stacks for SDEI
Message-ID: <20200116174846.GG21396@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191206221351.38241-1-samitolvanen@google.com>
 <20191206221351.38241-16-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191206221351.38241-16-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_094853_786534_A9C03752 
X-CRM114-Status: GOOD (  22.08  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+James, since this needs his Ack before it can be merged]

On Fri, Dec 06, 2019 at 02:13:51PM -0800, Sami Tolvanen wrote:
> This change adds per-CPU shadow call stacks for the SDEI handler.
> Similarly to how the kernel stacks are handled, we add separate shadow
> stacks for normal and critical events.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/include/asm/scs.h |   2 +
>  arch/arm64/kernel/entry.S    |  14 ++++-
>  arch/arm64/kernel/scs.c      | 106 +++++++++++++++++++++++++++++------
>  arch/arm64/kernel/sdei.c     |   7 +++
>  4 files changed, 112 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
> index c50d2b0c6c5f..8e327e14bc15 100644
> --- a/arch/arm64/include/asm/scs.h
> +++ b/arch/arm64/include/asm/scs.h
> @@ -9,6 +9,7 @@
>  #ifdef CONFIG_SHADOW_CALL_STACK
>  
>  extern void scs_init_irq(void);
> +extern int scs_init_sdei(void);
>  
>  static __always_inline void scs_save(struct task_struct *tsk)
>  {
> @@ -27,6 +28,7 @@ static inline void scs_overflow_check(struct task_struct *tsk)
>  #else /* CONFIG_SHADOW_CALL_STACK */
>  
>  static inline void scs_init_irq(void) {}
> +static inline int scs_init_sdei(void) { return 0; }
>  static inline void scs_save(struct task_struct *tsk) {}
>  static inline void scs_overflow_check(struct task_struct *tsk) {}
>  
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 7aa2d366b2df..9327c3d21b64 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -1048,13 +1048,16 @@ ENTRY(__sdei_asm_handler)
>  
>  	mov	x19, x1
>  
> +#if defined(CONFIG_VMAP_STACK) || defined(CONFIG_SHADOW_CALL_STACK)
> +	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
> +#endif
> +
>  #ifdef CONFIG_VMAP_STACK
>  	/*
>  	 * entry.S may have been using sp as a scratch register, find whether
>  	 * this is a normal or critical event and switch to the appropriate
>  	 * stack for this CPU.
>  	 */
> -	ldrb	w4, [x19, #SDEI_EVENT_PRIORITY]
>  	cbnz	w4, 1f
>  	ldr_this_cpu dst=x5, sym=sdei_stack_normal_ptr, tmp=x6
>  	b	2f
> @@ -1064,6 +1067,15 @@ ENTRY(__sdei_asm_handler)
>  	mov	sp, x5
>  #endif
>  
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	/* Use a separate shadow call stack for normal and critical events */
> +	cbnz	w4, 3f
> +	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_normal_ptr, tmp=x6
> +	b	4f
> +3:	ldr_this_cpu dst=x18, sym=sdei_shadow_call_stack_critical_ptr, tmp=x6
> +4:
> +#endif
> +
>  	/*
>  	 * We may have interrupted userspace, or a guest, or exit-from or
>  	 * return-to either of these. We can't trust sp_el0, restore it.
> diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
> index eaadf5430baa..dddb7c56518b 100644
> --- a/arch/arm64/kernel/scs.c
> +++ b/arch/arm64/kernel/scs.c
> @@ -10,31 +10,105 @@
>  #include <asm/pgtable.h>
>  #include <asm/scs.h>
>  
> -DEFINE_PER_CPU(unsigned long *, irq_shadow_call_stack_ptr);
> +#define DECLARE_SCS(name)						\
> +	DECLARE_PER_CPU(unsigned long *, name ## _ptr);			\
> +	DECLARE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)
>  
> -#ifndef CONFIG_SHADOW_CALL_STACK_VMAP
> -DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], irq_shadow_call_stack)
> -	__aligned(SCS_SIZE);
> +#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> +#define DEFINE_SCS(name)						\
> +	DEFINE_PER_CPU(unsigned long *, name ## _ptr)
> +#else
> +/* Allocate a static per-CPU shadow stack */
> +#define DEFINE_SCS(name)						\
> +	DEFINE_PER_CPU(unsigned long *, name ## _ptr);			\
> +	DEFINE_PER_CPU(unsigned long [SCS_SIZE/sizeof(long)], name)	\
> +		__aligned(SCS_SIZE)
> +#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +
> +DECLARE_SCS(irq_shadow_call_stack);
> +DECLARE_SCS(sdei_shadow_call_stack_normal);
> +DECLARE_SCS(sdei_shadow_call_stack_critical);
> +
> +DEFINE_SCS(irq_shadow_call_stack);
> +#ifdef CONFIG_ARM_SDE_INTERFACE
> +DEFINE_SCS(sdei_shadow_call_stack_normal);
> +DEFINE_SCS(sdei_shadow_call_stack_critical);
>  #endif
>  
> +static int scs_alloc_percpu(unsigned long * __percpu *ptr, int cpu)
> +{
> +	unsigned long *p;
> +
> +	p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> +				 VMALLOC_START, VMALLOC_END,
> +				 GFP_SCS, PAGE_KERNEL,
> +				 0, cpu_to_node(cpu),
> +				 __builtin_return_address(0));
> +
> +	if (!p)
> +		return -ENOMEM;
> +	per_cpu(*ptr, cpu) = p;
> +
> +	return 0;
> +}
> +
> +static void scs_free_percpu(unsigned long * __percpu *ptr, int cpu)
> +{
> +	unsigned long *p = per_cpu(*ptr, cpu);
> +
> +	if (p) {
> +		per_cpu(*ptr, cpu) = NULL;
> +		vfree(p);
> +	}
> +}
> +
> +static void scs_free_sdei(void)
> +{
> +	int cpu;
> +
> +	for_each_possible_cpu(cpu) {
> +		scs_free_percpu(&sdei_shadow_call_stack_normal_ptr, cpu);
> +		scs_free_percpu(&sdei_shadow_call_stack_critical_ptr, cpu);
> +	}
> +}
> +
>  void scs_init_irq(void)
>  {
>  	int cpu;
>  
>  	for_each_possible_cpu(cpu) {
> -#ifdef CONFIG_SHADOW_CALL_STACK_VMAP
> -		unsigned long *p;
> +		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP))
> +			WARN_ON(scs_alloc_percpu(&irq_shadow_call_stack_ptr,
> +						 cpu));
> +		else
> +			per_cpu(irq_shadow_call_stack_ptr, cpu) =
> +				per_cpu(irq_shadow_call_stack, cpu);
> +	}
> +}
>  
> -		p = __vmalloc_node_range(PAGE_SIZE, SCS_SIZE,
> -					 VMALLOC_START, VMALLOC_END,
> -					 GFP_SCS, PAGE_KERNEL,
> -					 0, cpu_to_node(cpu),
> -					 __builtin_return_address(0));
> +int scs_init_sdei(void)
> +{
> +	int cpu;
>  
> -		per_cpu(irq_shadow_call_stack_ptr, cpu) = p;
> -#else
> -		per_cpu(irq_shadow_call_stack_ptr, cpu) =
> -			per_cpu(irq_shadow_call_stack, cpu);
> -#endif /* CONFIG_SHADOW_CALL_STACK_VMAP */
> +	if (!IS_ENABLED(CONFIG_ARM_SDE_INTERFACE))
> +		return 0;
> +
> +	for_each_possible_cpu(cpu) {
> +		if (IS_ENABLED(CONFIG_SHADOW_CALL_STACK_VMAP)) {
> +			if (scs_alloc_percpu(
> +				&sdei_shadow_call_stack_normal_ptr, cpu) ||
> +			    scs_alloc_percpu(
> +				&sdei_shadow_call_stack_critical_ptr, cpu)) {
> +				scs_free_sdei();
> +				return -ENOMEM;
> +			}
> +		} else {
> +			per_cpu(sdei_shadow_call_stack_normal_ptr, cpu) =
> +				per_cpu(sdei_shadow_call_stack_normal, cpu);
> +			per_cpu(sdei_shadow_call_stack_critical_ptr, cpu) =
> +				per_cpu(sdei_shadow_call_stack_critical, cpu);
> +		}
>  	}
> +
> +	return 0;
>  }
> diff --git a/arch/arm64/kernel/sdei.c b/arch/arm64/kernel/sdei.c
> index d6259dac62b6..2854b9f7760a 100644
> --- a/arch/arm64/kernel/sdei.c
> +++ b/arch/arm64/kernel/sdei.c
> @@ -13,6 +13,7 @@
>  #include <asm/kprobes.h>
>  #include <asm/mmu.h>
>  #include <asm/ptrace.h>
> +#include <asm/scs.h>
>  #include <asm/sections.h>
>  #include <asm/stacktrace.h>
>  #include <asm/sysreg.h>
> @@ -162,6 +163,12 @@ unsigned long sdei_arch_get_entry_point(int conduit)
>  			return 0;
>  	}
>  
> +	if (scs_init_sdei()) {
> +		if (IS_ENABLED(CONFIG_VMAP_STACK))
> +			free_sdei_stacks();
> +		return 0;
> +	}
> +
>  	sdei_exit_mode = (conduit == SMCCC_CONDUIT_HVC) ? SDEI_EXIT_HVC : SDEI_EXIT_SMC;
>  
>  #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
> -- 
> 2.24.0.393.g34dc348eaf-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
