Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0559C2EB5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 05:12:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi6WM6+eR7QeFfVFqPyRkIaCEuFwSvN4U/3c7XIXg8w=; b=G/7kq0grFbQ+tJ
	oygJX395S6eUkwI3oK7oZCZCVr7aI/gRBECReagHORtVnJSvAyhpBddcbAAs9NLO5s/MxLAm5Q56Z
	U1pinggtgSujEyeYZMaKTr9q6Hyn2xEf7GZNp+qcgbq5jzjOYiWLW2lBYIugq3LIJq4kqq4VstR0c
	/hBOhVsUuRsKrxHmTr8b0/ooDvvy9NB6aHkCKU7d7+aVDvAm8It1gKfb90SdHKgcRitnLQIWbT337
	2VVL/B4nEq5zLRCXhGnWmQEc24xU5R9dMWe5aPugGuQNjC6uNvpHx4wzblk8M+8MRe6HFMuFIZi0O
	31jti8NKj393YjynDQeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWBUH-00084w-Nk; Thu, 30 May 2019 03:12:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWBTz-0007rH-NC
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 03:12:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id g21so1938514plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 20:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VaRhbcIX5ep9K0ZeR9yp6HWYrhnzvyPHZvKg3hvxS/U=;
 b=iBrxDQyYPiaqiG0jjoOraJtzmcfDORoAhqxxgXsheLX7ZhhTgk0aTtcVCYDWTMIOhE
 Sas11Ofp1O2+kryKGNmX18hbYqHcYxtC4t0+9O9aOOFJ6i8YEU/eWXGA2lwgWGizrCe2
 2V/Y3G+m1Nrtowcp26CoQ+QP4ZxIiW/lKJOOw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VaRhbcIX5ep9K0ZeR9yp6HWYrhnzvyPHZvKg3hvxS/U=;
 b=VYEdd1lZ1a6lWk44qHhA8KIeDud60bZ/VS+GWyGoXw1fS3J8xL53AsFc5Yrh86Kvva
 sClXcaL2YsiIjWl28e/mKp1nDjW56q8ZXtEgA1Rx8qozKt62Vz8WCRWFPiCGHBtGFfTz
 2jLrKfMDd1N4C8I2MO3Q4JhNmA9nfRxFyqiUfGDvNQo0jXRc/9jhnGIK0X8R/fm9EdOy
 HvwbFjKBeYkxLUnH6ldVhC3e5icfzKl/CcQnVfMqoDmfJOPHJUzkdmcquzzIZJDKbrwK
 MBHzwJ7xphxZZ/SmSJXBav1ZlfQim/P8PDj9HlL2t+VTcN6ePVQivLWHg5EfFl1QdDGE
 MCSg==
X-Gm-Message-State: APjAAAXl7oYkwEgXWgMIJU7VsMSlTA0OhbJToMDQCOU9vhvEbTzYj3Wc
 wp96GCl8Sh720Rv0SDTpbC2ErVL3EvQ=
X-Google-Smtp-Source: APXvYqyge6qWXUzB5FjqFnvFycD7Np2jH260/7/7Gt4dBGdm+i1NXyhXNvHrpHaWqjqrnTQSQa0KCQ==
X-Received: by 2002:a17:902:2be8:: with SMTP id
 l95mr1470547plb.231.1559185919132; 
 Wed, 29 May 2019 20:11:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n1sm703673pgv.15.2019.05.29.20.11.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 20:11:58 -0700 (PDT)
Date: Wed, 29 May 2019 20:11:57 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 4/7] arm64: enable ptrauth earlier
Message-ID: <201905292010.8C66149@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-5-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-5-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_201200_064109_B62BE0D9 
X-CRM114-Status: GOOD (  31.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

On Wed, May 29, 2019 at 08:03:29PM +0100, Kristina Martsenko wrote:
> When the kernel is compiled with pointer auth instructions, the boot CPU
> needs to start using address auth very early, so change the cpucap to
> account for this.
> 
> A function that enables pointer auth cannot return, so compile such
> functions without pointer auth (using a compiler function attribute).
> The __no_ptrauth macro will be defined to the required function
> attribute in a later patch.
> 
> Do not use the cpu_enable callback, to avoid compiling the whole
> callchain down to cpu_enable without pointer auth.
> 
> Note the change in behavior: if the boot CPU has address auth and a late
> CPU does not, then we offline the late CPU. Until now we would have just
> disabled address auth in this case.
> 
> Leave generic authentication as a "system scope" cpucap for now, since
> initially the kernel will only use address authentication.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

This feels a little out of order to define the empty __no_ptrauth here.
The only better option I can think of is to split the compiler flag
patch in half to introduce the __no_ptrauth flag in full, on its own.
Either way:

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
> Changes since RFC v1:
>  - Enable instructions for all 5 keys
>  - Replaced __always_inline with __no_ptrauth as it turns out __always_inline
>    is only a hint (and could therefore result in crashes)
>  - Left the __no_ptrauth definition blank for now as it needs to be determined
>    with more complex logic in a later patch
>  - Updated the Kconfig symbol description
>  - Minor cleanups
>  - Updated the commit message
> 
>  arch/arm64/Kconfig                    |  4 ++++
>  arch/arm64/include/asm/cpufeature.h   |  9 +++++++++
>  arch/arm64/include/asm/pointer_auth.h | 19 +++++++++++++++++++
>  arch/arm64/kernel/cpufeature.c        | 13 +++----------
>  arch/arm64/kernel/smp.c               |  7 ++++++-
>  5 files changed, 41 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 7e34b9eba5de..f4c1e9b30129 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1304,6 +1304,10 @@ config ARM64_PTR_AUTH
>  	  hardware it will not be advertised to userspace nor will it be
>  	  enabled.
>  
> +	  If the feature is present on the primary CPU but not a secondary CPU,
> +	  then the secondary CPU will be offlined. On such a system, this
> +	  option should not be selected.
> +
>  endmenu
>  
>  config ARM64_SVE
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index ad952f2e0a2b..e36a7948b763 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -299,6 +299,15 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
>  #define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE		\
>  	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PANIC_ON_CONFLICT)
>  
> +/*
> + * CPU feature used early in the boot based on the boot CPU. It is safe for a
> + * late CPU to have this feature even though the boot CPU hasn't enabled it,
> + * although the feature will not be used by Linux in this case. If the boot CPU
> + * has enabled this feature already, then every late CPU must have it.
> + */
> +#define ARM64_CPUCAP_BOOT_CPU_FEATURE			\
> +	 (ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU)
> +
>  struct arm64_cpu_capabilities {
>  	const char *desc;
>  	u16 capability;
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index fc8dc70cc19f..a97b7dc10bdb 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -11,6 +11,13 @@
>  
>  #ifdef CONFIG_ARM64_PTR_AUTH
>  /*
> + * Compile the function without pointer authentication instructions. This
> + * allows pointer authentication to be enabled/disabled within the function
> + * (but leaves the function unprotected by pointer authentication).
> + */
> +#define __no_ptrauth
> +
> +/*
>   * Each key is a 128-bit quantity which is split across a pair of 64-bit
>   * registers (Lo and Hi).
>   */
> @@ -50,6 +57,16 @@ do {								\
>  	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
>  } while (0)
>  
> +static inline void __no_ptrauth ptrauth_cpu_enable(void)
> +{
> +	if (!system_supports_address_auth())
> +		return;
> +
> +	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
> +				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
> +	isb();
> +}
> +
>  extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
>  
>  /*
> @@ -68,6 +85,8 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  	ptrauth_keys_init(&(tsk)->thread.keys_user)
>  
>  #else /* CONFIG_ARM64_PTR_AUTH */
> +#define __no_ptrauth
> +#define ptrauth_cpu_enable(tsk)
>  #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
>  #define ptrauth_strip_insn_pac(lr)	(lr)
>  #define ptrauth_thread_init_user(tsk)
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 8a595b4cb0aa..2cf042ebb237 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1200,12 +1200,6 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
>  #endif /* CONFIG_ARM64_RAS_EXTN */
>  
>  #ifdef CONFIG_ARM64_PTR_AUTH
> -static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
> -{
> -	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
> -				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
> -}
> -
>  static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
>  			     int __unused)
>  {
> @@ -1474,7 +1468,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  	{
>  		.desc = "Address authentication (architected algorithm)",
>  		.capability = ARM64_HAS_ADDRESS_AUTH_ARCH,
> -		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
>  		.sys_reg = SYS_ID_AA64ISAR1_EL1,
>  		.sign = FTR_UNSIGNED,
>  		.field_pos = ID_AA64ISAR1_APA_SHIFT,
> @@ -1484,7 +1478,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  	{
>  		.desc = "Address authentication (IMP DEF algorithm)",
>  		.capability = ARM64_HAS_ADDRESS_AUTH_IMP_DEF,
> -		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
>  		.sys_reg = SYS_ID_AA64ISAR1_EL1,
>  		.sign = FTR_UNSIGNED,
>  		.field_pos = ID_AA64ISAR1_API_SHIFT,
> @@ -1493,9 +1487,8 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  	},
>  	{
>  		.capability = ARM64_HAS_ADDRESS_AUTH,
> -		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
>  		.matches = has_address_auth,
> -		.cpu_enable = cpu_enable_address_auth,
>  	},
>  	{
>  		.desc = "Generic authentication (architected algorithm)",
> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
> index 824de7038967..eca6aa05ac66 100644
> --- a/arch/arm64/kernel/smp.c
> +++ b/arch/arm64/kernel/smp.c
> @@ -54,6 +54,7 @@
>  #include <asm/numa.h>
>  #include <asm/pgtable.h>
>  #include <asm/pgalloc.h>
> +#include <asm/pointer_auth.h>
>  #include <asm/processor.h>
>  #include <asm/smp_plat.h>
>  #include <asm/sections.h>
> @@ -238,6 +239,8 @@ asmlinkage notrace void secondary_start_kernel(void)
>  	 */
>  	check_local_cpu_capabilities();
>  
> +	ptrauth_cpu_enable();
> +
>  	if (cpu_ops[cpu]->cpu_postboot)
>  		cpu_ops[cpu]->cpu_postboot();
>  
> @@ -432,7 +435,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
>  	mark_linear_text_alias_ro();
>  }
>  
> -void __init smp_prepare_boot_cpu(void)
> +void __init __no_ptrauth smp_prepare_boot_cpu(void)
>  {
>  	set_my_cpu_offset(per_cpu_offset(smp_processor_id()));
>  	/*
> @@ -452,6 +455,8 @@ void __init smp_prepare_boot_cpu(void)
>  	/* Conditionally switch to GIC PMR for interrupt masking */
>  	if (system_uses_irq_prio_masking())
>  		init_gic_priority_masking();
> +
> +	ptrauth_cpu_enable();
>  }
>  
>  static u64 __init of_get_cpu_mpidr(struct device_node *dn)
> -- 
> 2.11.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
