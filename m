Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9F22EA78
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 04:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0D9UZt9fEl/jDmROvCJzcLUnIjhnMTVEdpTPIRc1Dw=; b=nHC+t9jnZajs9X
	hRBN/vtqlucF4aYDnXWxGf4pJKYicYlgkTCkKNk+10K/nBXQA5YLknar+oIZHpTkXeKUg2FQRG/k7
	0ez/FyErb2Z0kOYZ8QPPamtdPJoSQWgfvDkndCE6vSx2yuc3oaEBuNCRcj6seCM3cMwR5ZvDaWl8e
	dj8Ygm51E97IqmtOGqN90KXG8qhWx+7yOcEfCZSBrrAFRGZMHwpEUpG03LMTTjdfS5b89FZ1Xw3Cc
	3omwUAK7uY9/bsHaAU8AvN2llDhZGX+tk9wseih+lrdvtNKACZoV2Ek5zLvXfVku39Z1R2stN5L90
	eGTRgp+wUwhyhYWeX1xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWAQg-00085P-38; Thu, 30 May 2019 02:04:30 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWAQY-000852-77
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 02:04:23 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so1863332plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 19:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=SwNzeFvGWQqNZlD4HA0LDL4HwPC5cllMziZhs5rm+Nw=;
 b=Og4H5ooFg/kzblWPnEgtU/jZH1Nw5HwQ3I+TslHPuwrVU1E48hCkwNb8K08YgmJijj
 kRsfPcumj4BQpwRMY2hGlsB1GsmqjRCIqTUzdGv4auGIOhpa/Ot4GvMNkggMqXxUs7PS
 CjUGuXO5ruinWTbA9tw1sK9SszhXLzXHeC2jY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SwNzeFvGWQqNZlD4HA0LDL4HwPC5cllMziZhs5rm+Nw=;
 b=tjCRYTiwoti+d3SoevvfAWpKxa8hTg1g8oa2vpV18EX9IcanQ90/N2NhGNUzkzGXio
 z0y3TogyQekFHSTpyNjFTBtphiPrw043lxfmWJVNETIh32pQ645O88qXM8v9NGCz6jQr
 7le78E7YTYbLNHig2lWS1Lhz2+jt/Q9fO5YFdOy7Q1j1YeDMf/uGyRMtCceV0Wkf+T5y
 oj82gEQnpoOUpDt4CQ0MnCdALY8ArimIALxLMAc0eD/yQgRHlD3MtjRVV2c1t5aEv/iw
 WDap5moyyLigdULeIsfQj5ByZ0ddkjSGOqUz2xXs/oTA8V9bzqj8RmTsiSUNruyLw1gN
 nwLg==
X-Gm-Message-State: APjAAAWc9hEcZhcveMoTzpYgJESEMjjnfBcE/7B0mRvZg3wzLuLpz333
 dL3BphI4k5N4n0NRczsT53Ek3g==
X-Google-Smtp-Source: APXvYqwCC7EtdgvlpazMhiIuMcbhQfOBgtJRT9dMhygEe2Hh/G3orHMdShijYMLu7qGKo8BHm+nsZQ==
X-Received: by 2002:a17:902:bf03:: with SMTP id
 bi3mr815409plb.146.1559181859708; 
 Wed, 29 May 2019 19:04:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f13sm832999pje.11.2019.05.29.19.04.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 19:04:18 -0700 (PDT)
Date: Wed, 29 May 2019 19:04:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 2/7] arm64: install user ptrauth keys at kernel exit time
Message-ID: <201905291901.0430DB6E@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-3-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-3-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_190422_288813_D1A1EFD8 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Wed, May 29, 2019 at 08:03:27PM +0100, Kristina Martsenko wrote:
> As we're going to enable pointer auth within the kernel and use a
> different APIAKey for the kernel itself, then move the user APIAKey
> switch to EL0 exception return.
> 
> The other 4 keys could remain switched during task switch, but are also
> moved to keep things simple.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
> Changes since RFC v1:
>  - Install all 5 keys on kernel_exit
>  - Updated prctl to have keys installed on kernel exit
>  - Renamed ptrauth-asm.h to asm_pointer_auth.h
>  - Minor cleanups
>  - Updated the commit message
> 
>  arch/arm64/include/asm/asm_pointer_auth.h | 43 +++++++++++++++++++++++++++++++
>  arch/arm64/include/asm/pointer_auth.h     | 23 +----------------
>  arch/arm64/kernel/asm-offsets.c           | 11 ++++++++
>  arch/arm64/kernel/entry.S                 |  3 +++
>  arch/arm64/kernel/pointer_auth.c          |  3 ---
>  arch/arm64/kernel/process.c               |  1 -
>  6 files changed, 58 insertions(+), 26 deletions(-)
>  create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h
> 
> diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
> new file mode 100644
> index 000000000000..e3bfddfe80b6
> --- /dev/null
> +++ b/arch/arm64/include/asm/asm_pointer_auth.h
> @@ -0,0 +1,43 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __ASM_ASM_POINTER_AUTH_H
> +#define __ASM_ASM_POINTER_AUTH_H
> +
> +#include <asm/alternative.h>
> +#include <asm/asm-offsets.h>
> +#include <asm/cpufeature.h>
> +#include <asm/sysreg.h>
> +
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +
> +	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
> +	mov	\tmp1, #THREAD_KEYS_USER
> +	add	\tmp1, \tsk, \tmp1
> +alternative_if ARM64_HAS_ADDRESS_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIA]
> +	msr_s	SYS_APIAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIAKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APIB]
> +	msr_s	SYS_APIBKEYLO_EL1, \tmp2
> +	msr_s	SYS_APIBKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDA]
> +	msr_s	SYS_APDAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APDAKEYHI_EL1, \tmp3
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APDB]
> +	msr_s	SYS_APDBKEYLO_EL1, \tmp2
> +	msr_s	SYS_APDBKEYHI_EL1, \tmp3
> +alternative_else_nop_endif
> +alternative_if ARM64_HAS_GENERIC_AUTH
> +	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_KEY_APGA]
> +	msr_s	SYS_APGAKEYLO_EL1, \tmp2
> +	msr_s	SYS_APGAKEYHI_EL1, \tmp3
> +alternative_else_nop_endif
> +	.endm
> +
> +#else /* CONFIG_ARM64_PTR_AUTH */
> +
> +	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
> +	.endm
> +
> +#endif /* CONFIG_ARM64_PTR_AUTH */
> +
> +#endif /* __ASM_ASM_POINTER_AUTH_H */
> diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
> index 15d49515efdd..fc8dc70cc19f 100644
> --- a/arch/arm64/include/asm/pointer_auth.h
> +++ b/arch/arm64/include/asm/pointer_auth.h
> @@ -50,19 +50,6 @@ do {								\
>  	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
>  } while (0)
>  
> -static inline void ptrauth_keys_switch(struct ptrauth_keys *keys)
> -{
> -	if (system_supports_address_auth()) {
> -		__ptrauth_key_install(APIA, keys->apia);
> -		__ptrauth_key_install(APIB, keys->apib);
> -		__ptrauth_key_install(APDA, keys->apda);
> -		__ptrauth_key_install(APDB, keys->apdb);
> -	}
> -
> -	if (system_supports_generic_auth())
> -		__ptrauth_key_install(APGA, keys->apga);
> -}
> -
>  extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
>  
>  /*
> @@ -78,20 +65,12 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
>  }
>  
>  #define ptrauth_thread_init_user(tsk)					\
> -do {									\
> -	struct task_struct *__ptiu_tsk = (tsk);				\
> -	ptrauth_keys_init(&__ptiu_tsk->thread.keys_user);		\
> -	ptrauth_keys_switch(&__ptiu_tsk->thread.keys_user);		\
> -} while (0)
> -
> -#define ptrauth_thread_switch(tsk)	\
> -	ptrauth_keys_switch(&(tsk)->thread.keys_user)
> +	ptrauth_keys_init(&(tsk)->thread.keys_user)
>  
>  #else /* CONFIG_ARM64_PTR_AUTH */
>  #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
>  #define ptrauth_strip_insn_pac(lr)	(lr)
>  #define ptrauth_thread_init_user(tsk)
> -#define ptrauth_thread_switch(tsk)
>  #endif /* CONFIG_ARM64_PTR_AUTH */
>  
>  #endif /* __ASM_POINTER_AUTH_H */
> diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> index 7f40dcbdd51d..edc471e4acb1 100644
> --- a/arch/arm64/kernel/asm-offsets.c
> +++ b/arch/arm64/kernel/asm-offsets.c
> @@ -51,6 +51,9 @@ int main(void)
>  #endif
>    BLANK();
>    DEFINE(THREAD_CPU_CONTEXT,	offsetof(struct task_struct, thread.cpu_context));
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +  DEFINE(THREAD_KEYS_USER,	offsetof(struct task_struct, thread.keys_user));
> +#endif
>    BLANK();
>    DEFINE(S_X0,			offsetof(struct pt_regs, regs[0]));
>    DEFINE(S_X2,			offsetof(struct pt_regs, regs[2]));
> @@ -153,5 +156,13 @@ int main(void)
>    DEFINE(SDEI_EVENT_INTREGS,	offsetof(struct sdei_registered_event, interrupted_regs));
>    DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
>  #endif
> +#ifdef CONFIG_ARM64_PTR_AUTH
> +  DEFINE(PTRAUTH_KEY_APIA,	offsetof(struct ptrauth_keys, apia));
> +  DEFINE(PTRAUTH_KEY_APIB,	offsetof(struct ptrauth_keys, apib));
> +  DEFINE(PTRAUTH_KEY_APDA,	offsetof(struct ptrauth_keys, apda));
> +  DEFINE(PTRAUTH_KEY_APDB,	offsetof(struct ptrauth_keys, apdb));
> +  DEFINE(PTRAUTH_KEY_APGA,	offsetof(struct ptrauth_keys, apga));
> +  BLANK();
> +#endif
>    return 0;
>  }
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index c50a7a75f2e0..73a28d88f78d 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -25,6 +25,7 @@
>  #include <asm/alternative.h>
>  #include <asm/assembler.h>
>  #include <asm/asm-offsets.h>
> +#include <asm/asm_pointer_auth.h>
>  #include <asm/cpufeature.h>
>  #include <asm/errno.h>
>  #include <asm/esr.h>
> @@ -336,6 +337,8 @@ alternative_if ARM64_WORKAROUND_845719
>  alternative_else_nop_endif
>  #endif
>  3:
> +	ptrauth_keys_install_user tsk, x0, x1, x2
> +
>  	apply_ssbd 0, x0, x1
>  	.endif
>  
> diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
> index c507b584259d..95985be67891 100644
> --- a/arch/arm64/kernel/pointer_auth.c
> +++ b/arch/arm64/kernel/pointer_auth.c
> @@ -19,7 +19,6 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  
>  	if (!arg) {
>  		ptrauth_keys_init(keys);
> -		ptrauth_keys_switch(keys);
>  		return 0;
>  	}
>  
> @@ -41,7 +40,5 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
>  	if (arg & PR_PAC_APGAKEY)
>  		get_random_bytes(&keys->apga, sizeof(keys->apga));
>  
> -	ptrauth_keys_switch(keys);
> -
>  	return 0;
>  }
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index 3767fb21a5b8..a9b30111b725 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -481,7 +481,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
>  	contextidr_thread_switch(next);
>  	entry_task_switch(next);
>  	uao_thread_switch(next);
> -	ptrauth_thread_switch(next);
>  
>  	/*
>  	 * Complete any pending TLB or cache maintenance on this CPU in case
> -- 
> 2.11.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
