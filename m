Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0565A136CA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:59:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdCHh7ama/5X8YPZg1PjNsHZGRADZ/oEVwQIfrMtPTc=; b=lwo++3RlQo9P6d
	53pa1/hnR7Ptpu0i46u5ROKeL/lzQ1aCB1g17vimiHw9U9XpCbmsfcBRDtKeJoqWZ3+mUnW5xooJ8
	ErB0HTx/xR45scGCYTaGmoo8LJHYbGNGft2NOPr6KkX7CzOouScGcrXNBO9kWG2wzdw8QeF0MSHz/
	k/HazKS4gHfsJjz9OSPdcmcPoae5kxwekyGYUQxx60o90u+Ek8vMJeVh5dwmZEKis/3nmuKWA801S
	OzNd78ZwkDYkFcrmv7O77vL42vP5JkterUDPZuSLGf3QhfzOluAQrbbi9p2uV/PgrPu8cYApfsL2l
	qLO9fIJV4dvQRb/ly5DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipswz-0003gc-NL; Fri, 10 Jan 2020 11:59:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipssE-0006q3-BW
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 128D4143B;
 Fri, 10 Jan 2020 03:54:40 -0800 (PST)
Received: from [10.2.69.39] (unknown [10.2.69.39])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 945223F534;
 Fri, 10 Jan 2020 03:54:39 -0800 (PST)
Subject: Re: [PATCH 2/2] arm64: Move the LSE gas support detection to Kconfig
To: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200109174948.48211-1-catalin.marinas@arm.com>
 <20200109174948.48211-3-catalin.marinas@arm.com>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <fb5f92cd-8f67-911d-8849-177689702bb9@arm.com>
Date: Fri, 10 Jan 2020 11:54:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200109174948.48211-3-catalin.marinas@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035442_701924_D5CEA818 
X-CRM114-Status: GOOD (  21.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 1/9/20 5:49 PM, Catalin Marinas wrote:
> As the Kconfig syntax gained support for $(as-instr) tests, move the LSE
> gas support detection from Makefile to the main arm64 Kconfig and remove
> the additional CONFIG_AS_LSE definition and check.
> 
> Cc: Will Deacon <will@kernel.org>
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/Kconfig                    |  4 ++++
>  arch/arm64/Makefile                   | 13 ++-----------
>  arch/arm64/include/asm/atomic_ll_sc.h |  2 +-
>  arch/arm64/include/asm/lse.h          |  6 +++---
>  arch/arm64/kernel/cpufeature.c        |  4 ++--
>  5 files changed, 12 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476ddb83..2a0521f0f156 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1362,8 +1362,12 @@ config ARM64_PAN
>  	 The feature is detected at runtime, and will remain as a 'nop'
>  	 instruction if the cpu does not implement the feature.
>  
> +config ARM64_AS_HAS_LSE
> +	def_bool $(as-instr,.arch_extension lse)
> +
>  config ARM64_LSE_ATOMICS
>  	bool "Atomic instructions"
> +	depends on ARM64_AS_HAS_LSE
>  	depends on JUMP_LABEL
>  	default y
>  	help
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 1fbe24d4fdb6..cca6de192d42 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -30,15 +30,6 @@ LDFLAGS_vmlinux	+= --fix-cortex-a53-843419
>    endif
>  endif
>  
> -# Check for binutils support for specific extensions
> -lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
> -
> -ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> -  ifeq ($(lseinstr),)
> -$(warning LSE atomics not supported by binutils)
> -  endif
> -endif
> -
>  cc_has_k_constraint := $(call try-run,echo				\
>  	'int main(void) {						\
>  		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
> @@ -53,11 +44,11 @@ $(warning Detected assembler with broken .inst; disassembly will be unreliable)
>    endif
>  endif
>  
> -KBUILD_CFLAGS	+= -mgeneral-regs-only $(lseinstr) $(brokengasinst)	\
> +KBUILD_CFLAGS	+= -mgeneral-regs-only $(brokengasinst)	\
>  		   $(compat_vdso) $(cc_has_k_constraint)
>  KBUILD_CFLAGS	+= -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS	+= $(call cc-disable-warning, psabi)
> -KBUILD_AFLAGS	+= $(lseinstr) $(brokengasinst) $(compat_vdso)
> +KBUILD_AFLAGS	+= $(brokengasinst) $(compat_vdso)
>  
>  KBUILD_CFLAGS	+= $(call cc-option,-mabi=lp64)
>  KBUILD_AFLAGS	+= $(call cc-option,-mabi=lp64)
> diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> index 7b012148bfd6..13869b76b58c 100644
> --- a/arch/arm64/include/asm/atomic_ll_sc.h
> +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> @@ -12,7 +12,7 @@
>  
>  #include <linux/stringify.h>
>  
> -#if IS_ENABLED(CONFIG_ARM64_LSE_ATOMICS) && IS_ENABLED(CONFIG_AS_LSE)
> +#ifdef CONFIG_ARM64_LSE_ATOMICS
>  #define __LL_SC_FALLBACK(asm_ops)					\
>  "	b	3f\n"							\
>  "	.subsection	1\n"						\
> diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> index 80b388278149..4e1009fff686 100644
> --- a/arch/arm64/include/asm/lse.h
> +++ b/arch/arm64/include/asm/lse.h
> @@ -4,7 +4,7 @@
>  
>  #include <asm/atomic_ll_sc.h>
>  
> -#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
> +#ifdef CONFIG_ARM64_LSE_ATOMICS
>  
>  #include <linux/compiler_types.h>
>  #include <linux/export.h>
> @@ -36,7 +36,7 @@ static inline bool system_uses_lse_atomics(void)
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)				\
>  	ALTERNATIVE(llsc, lse, ARM64_HAS_LSE_ATOMICS)
>  
> -#else	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
> +#else	/* CONFIG_ARM64_LSE_ATOMICS */
>  
>  static inline bool system_uses_lse_atomics(void) { return false; }
>  
> @@ -44,5 +44,5 @@ static inline bool system_uses_lse_atomics(void) { return false; }
>  
>  #define ARM64_LSE_ATOMIC_INSN(llsc, lse)	llsc
>  
> -#endif	/* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
> +#endif	/* CONFIG_ARM64_LSE_ATOMICS */
>  #endif	/* __ASM_LSE_H */
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 04cf64e9f0c9..2595c2886d3f 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1291,7 +1291,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.cpu_enable = cpu_enable_pan,
>  	},
>  #endif /* CONFIG_ARM64_PAN */
> -#if defined(CONFIG_AS_LSE) && defined(CONFIG_ARM64_LSE_ATOMICS)
> +#ifdef CONFIG_ARM64_LSE_ATOMICS
>  	{
>  		.desc = "LSE atomic instructions",
>  		.capability = ARM64_HAS_LSE_ATOMICS,
> @@ -1302,7 +1302,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.sign = FTR_UNSIGNED,
>  		.min_field_value = 2,
>  	},
> -#endif /* CONFIG_AS_LSE && CONFIG_ARM64_LSE_ATOMICS */
> +#endif /* CONFIG_ARM64_LSE_ATOMICS */
>  	{
>  		.desc = "Software prefetching using PRFM",
>  		.capability = ARM64_HAS_NO_HW_PREFETCH,
> 

I was not lucky with the similar patch [1], anyway

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>


[1] https://www.spinics.net/lists/linux-crypto/msg36059.html

Cheers
Vladimir

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
