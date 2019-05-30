Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1A12ED53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbX2HHj6JA/D9B2Ga3ZIabHybf4Ou0PB9x+auHyAWnM=; b=pFowN0Hfa/3sGk
	D9kMRWLViXhmfkqRazjsCnyeloGEfmi+yoIUX7z+CEfC0BqQVaSkEOt1r+LRWVYndTGqz6yefccJm
	Z6h+eaikS/6GZGJ/kNSOq1FRBmIGCLAV6nluJaiVHVVgqjVaciu5MU52ZBjQXgbH92zDkZwop5LxH
	39RoOhA3zfOn69Ko2mjoC2u2jgNYjn+unXwL/bV3slbtwjgivma5owF7fEa8bNnjnG0nhpDX1so/2
	9CbMenTsUDIkQ1qB1KdFplQQCGicwIfncsXnuqBKya91IUhHf1J4qbemfK/p4H57CAL5kWv9V7YXc
	wXNFNcb92TOwUayy09FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBqJ-0001zv-9B; Thu, 30 May 2019 03:35:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBq9-0001zG-Hh
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:34:55 +0000
Received: by mail-pg1-x541.google.com with SMTP id z3so1121770pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 20:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h7NO0rlshYO3jLckBWIL6QZvJiCLmHqNe/FYXF1RtCI=;
 b=ERR03YQ2rpcUZzRSzCxFpP3tbNtzXsaB0hoaD+Wd3Jr+6RvT6cA243kndkBXni/Wce
 u6WCO3DM3ApqxoIndJiWci0ZpVbFUaWsf2d/kVORu4vazJm8kiUGvLekio4NRhGYyJ33
 nVuNGioavZJ8/pJNh+KxKwGjEItX6VD/ZoiRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h7NO0rlshYO3jLckBWIL6QZvJiCLmHqNe/FYXF1RtCI=;
 b=lOpVUpOUqnBOoiA7msYOrf98zyfxqN3ePPhpNI32S0VR7g54jEfYAw82+/6OX3sgMC
 HjhJssISYc6fX8fKBG2msmhy+mQALCqzr/NR4HeVUvNI50u01afQHUj9i4MbZLnJfJTw
 mAGZuA5NzyYDyl5uxzrANiMfleGOMi9Hw6ZqIyCLjTiag4tThDaiEe2GXFKlHCqzD+oL
 UY525Khp6ciU/R/qfxUlYI/npuHnmlMq6d64JwJmUQCbYqKconF31okwnYS+MICC2K/X
 3kkPwFnBNfTYmC467zRqN77xmzecxwSq7soymxE1vPs/XRoI6EbaEIH/g9dhDM0ICQ9B
 +PNw==
X-Gm-Message-State: APjAAAV+5LEaVW2QaJUyc2cKvOoLpttNmQpHcWKB4PSqTQo9X4T4Gi7H
 PeZRTB7Z56AVOf75kA+ZizNFQOQLZ8I=
X-Google-Smtp-Source: APXvYqwkKONIhOkohKMg3krjfTLiSzK1vy53B7KrY1NT9BMGkRyfGqcD5uMY+TrCDf/FN/XxjKI8xw==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr1547287pfa.70.1559187292238; 
 Wed, 29 May 2019 20:34:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c17sm1079288pfi.116.2019.05.29.20.34.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 20:34:51 -0700 (PDT)
Date: Wed, 29 May 2019 20:34:50 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 5/7] arm64: initialize and switch ptrauth kernel keys
Message-ID: <201905292027.B439EF2CA@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-6-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-6-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_203453_609765_45A8C509 
X-CRM114-Status: GOOD (  26.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 08:03:30PM +0100, Kristina Martsenko wrote:
> Set up keys to use pointer authentication within the kernel. The kernel
> will be compiled with APIAKey instructions, the other keys are currently
> unused. Each task is given its own APIAKey, which is initialized during
> fork. The key is changed during context switch and on kernel entry from
> EL0.
> 
> A function that changes the key cannot return, so compile such functions
> without pointer auth (using __no_ptrauth which will be defined to a
> compiler function attribute later).
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

Just so I'm reading this right: the kernel is only using APIAKey?

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
> Changes since RFC v1:
>  - Updated ptrauth_keys_init to not randomly initialize the other 4 (unused)
>    kernel-space keys, to save entropy
>  - Replaced __always_inline with __no_ptrauth as it turns out __always_inline
>    is only a hint (and could therefore result in crashes)
>  - Moved ptrauth_keys_install_kernel earlier in kernel_entry, in case in the
>    future C function calls are added in kernel_entry
>  - Added ISB after key install in kernel_exit, in case in the future C function
>    calls are added after the macro
>  - Dropped an outdated comment
>  - Updated the commit message
> 
>  arch/arm64/include/asm/asm_pointer_auth.h | 16 +++++++++++++++
>  arch/arm64/include/asm/pointer_auth.h     | 33 +++++++++++++++++++++----------
>  arch/arm64/include/asm/processor.h        |  1 +
>  arch/arm64/kernel/asm-offsets.c           |  1 +
>  arch/arm64/kernel/entry.S                 |  1 +
>  arch/arm64/kernel/pointer_auth.c          |  2 +-
>  arch/arm64/kernel/process.c               |  3 +++
>  arch/arm64/kernel/smp.c                   |  3 +++
>  8 files changed, 49 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> index e3bfddfe80b6..f595da9661a4 100644
> --- a/arch/arm64/include/asm/asm_pointer_auth.h
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -25,11 +25,24 @@ alternative_if ARM64_HAS_ADDRESS_AUTH
>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
>  	msr_s	SYS_APDBKEYLO_EL1, \tmp2
>  	msr_s	SYS_APDBKEYHI_EL1, \tmp3
> +	isb
>  alternative_else_nop_endif
>  alternative_if ARM64_HAS_GENERIC_AUTH
>  	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
>  	msr_s	SYS_APGAKEYLO_EL1, \tmp2
>  	msr_s	SYS_APGAKEYHI_EL1, \tmp3
> +	isb
> +alternative_else_nop_endif
> +	.endm
> +
> +	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
> +	mov	\tmp1, #THREAD_KEYS_KERNEL
> +	add	\tmp1, \tsk, \tmp1
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIA]
> +	msr_s	SYS_APIAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> +	isb
>  alternative_else_nop_endif
>  	.endm
>  
> @@ -38,6 +51,9 @@ alternative_else_nop_endif
>  	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
>  	.endm
>  
> +	.macro ptrauth_keys_install_kernel tsk, tmp1, tmp2, tmp3
> +	.endm
> +
>  #endif /* CONFIG_ARM64_PTR_AUTH */
>  
>  #endif /* __ASM_ASM_POINTER_AUTH_H */
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index a97b7dc10bdb..79f35f5ecff5 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -25,10 +25,6 @@ struct ptrauth_key {
>  	unsigned long lo, hi;
>  };
>  
> -/*
> - * We give each process its own keys, which are shared by all threads. The keys
> - * are inherited upon fork(), and reinitialised upon exec*().
> - */
>  struct ptrauth_keys {
>  	struct ptrauth_key apia;
>  	struct ptrauth_key apib;
> @@ -37,16 +33,18 @@ struct ptrauth_keys {
>  	struct ptrauth_key apga;
>  };
>  
> -static inline void ptrauth_keys_init(struct ptrauth_keys *keys)
> +static inline void ptrauth_keys_init(struct ptrauth_keys *keys, bool user)
>  {
>  	if (system_supports_address_auth()) {
>  		get_random_bytes(&keys->apia, sizeof(keys->apia));
> -		get_random_bytes(&keys->apib, sizeof(keys->apib));
> -		get_random_bytes(&keys->apda, sizeof(keys->apda));
> -		get_random_bytes(&keys->apdb, sizeof(keys->apdb));
> +		if (user) {
> +			get_random_bytes(&keys->apib, sizeof(keys->apib));
> +			get_random_bytes(&keys->apda, sizeof(keys->apda));
> +			get_random_bytes(&keys->apdb, sizeof(keys->apdb));
> +		}
>  	}
>  
> -	if (system_supports_generic_auth())
> +	if (system_supports_generic_auth() && user)
>  		get_random_bytes(&keys->apga, sizeof(keys->apga));
>  }
>  
> @@ -57,6 +55,15 @@ do {								\
>  	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
>  } while (0)
>  
> +static inline void __no_ptrauth ptrauth_keys_switch(struct ptrauth_keys *keys)
> +{
> +	if (!system_supports_address_auth())
> +		return;
> +
> +	__ptrauth_key_install(APIA, keys->apia);
> +	isb();
> +}
> +
>  static inline void __no_ptrauth ptrauth_cpu_enable(void)
>  {
>  	if (!system_supports_address_auth())
> @@ -82,7 +89,11 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  }
>  
>  #define ptrauth_thread_init_user(tsk)					\
> -	ptrauth_keys_init(&(tsk)->thread.keys_user)
> +	ptrauth_keys_init(&(tsk)->thread.keys_user, true)
> +#define ptrauth_thread_init_kernel(tsk)					\
> +	ptrauth_keys_init(&(tsk)->thread.keys_kernel, false)
> +#define ptrauth_thread_switch(tsk)					\
> +	ptrauth_keys_switch(&(tsk)->thread.keys_kernel)
>  
>  #else /* CONFIG_ARM64_PTR_AUTH */
>  #define __no_ptrauth
> @@ -90,6 +101,8 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
>  #define ptrauth_strip_insn_pac(lr)	(lr)
>  #define ptrauth_thread_init_user(tsk)
> +#define ptrauth_thread_init_kernel(tsk)
> +#define ptrauth_thread_switch(tsk)
>  #endif /* CONFIG_ARM64_PTR_AUTH */
>  
>  #endif /* __ASM_POINTER_AUTH_H */
> diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
> index 5d9ce62bdebd..f7684a021ca2 100644
> --- a/arch/arm64/include/asm/processor.h
> +++ b/arch/arm64/include/asm/processor.h
> @@ -149,6 +149,7 @@ struct thread_struct {
>  	struct debug_info	debug;		/* debugging */
>  #ifdef CONFIG_ARM64_PTR_AUTH
>  	struct ptrauth_keys	keys_user;
> +	struct ptrauth_keys	keys_kernel;
>  #endif
>  };
>  
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index edc471e4acb1..7dfebecd387d 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -53,6 +53,7 @@ int main(void)
>    DEFINE(THREAD_CPU_CONTEXT,	offsetof(struct task_struct, thread.cpu_context));
>  #ifdef CONFIG_ARM64_PTR_AUTH
>    DEFINE(THREAD_KEYS_USER,	offsetof(struct task_struct, thread.keys_user));
> +  DEFINE(THREAD_KEYS_KERNEL,	offsetof(struct task_struct, thread.keys_kernel));
>  #endif
>    BLANK();
>    DEFINE(S_X0,			offsetof(struct pt_regs, regs[0]));
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 73a28d88f78d..001d508cd63f 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -184,6 +184,7 @@ alternative_cb_end
>  
>  	apply_ssbd 1, x22, x23
>  
> +	ptrauth_keys_install_kernel tsk, x20, x22, x23
>  	.else
>  	add	x21, sp, #S_FRAME_SIZE
>  	get_current_task tsk
> diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
> index 95985be67891..4ca141b8c581 100644
> --- a/arch/arm64/kernel/pointer_auth.c
> +++ b/arch/arm64/kernel/pointer_auth.c
> @@ -18,7 +18,7 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  		return -EINVAL;
>  
>  	if (!arg) {
> -		ptrauth_keys_init(keys);
> +		ptrauth_keys_init(keys, true);
>  		return 0;
>  	}
>  
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index a9b30111b725..890d7185641b 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -378,6 +378,8 @@ int copy_thread(unsigned long clone_flags, unsigned long stack_start,
>  	 */
>  	fpsimd_flush_task_state(p);
>  
> +	ptrauth_thread_init_kernel(p);
> +
>  	if (likely(!(p->flags & PF_KTHREAD))) {
>  		*childregs = *current_pt_regs();
>  		childregs->regs[0] = 0;
> @@ -481,6 +483,7 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>  	contextidr_thread_switch(next);
>  	entry_task_switch(next);
>  	uao_thread_switch(next);
> +	ptrauth_thread_switch(next);
>  
>  	/*
>  	 * Complete any pending TLB or cache maintenance on this CPU in case
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index eca6aa05ac66..c5a6f3e8660b 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -239,6 +239,7 @@ asmlinkage notrace void secondary_start_kernel(void)
>  	 */
>  	check_local_cpu_capabilities();
>  
> +	ptrauth_thread_switch(current);
>  	ptrauth_cpu_enable();
>  
>  	if (cpu_ops[cpu]->cpu_postboot)
> @@ -456,6 +457,8 @@ void __init __no_ptrauth smp_prepare_boot_cpu(void)
>  	if (system_uses_irq_prio_masking())
>  		init_gic_priority_masking();
>  
> +	ptrauth_thread_init_kernel(current);
> +	ptrauth_thread_switch(current);
>  	ptrauth_cpu_enable();
>  }
>  
> -- 
> 2.11.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
