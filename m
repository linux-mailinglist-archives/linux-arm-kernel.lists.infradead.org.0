Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E012EA70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 03:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFjCHbW0JRkerE6MWlg7LokPXtgn5Pyf7oBNtQ5wtsA=; b=lgujx+p0AR29KP
	mWnMZ2K7WuuZqd219bxdGCSkVm5pw7g3sITTGi5nCwqfVI8rpkoQcY+p6sU+Ev/kVFZYusOV7sCcZ
	PxdJb4USVnlUrLpvzfZRsrJ5d4dkt+whjuZIkg34Kmeb3mSg1LFe6ws9vsNhq1LOf8oiA2pXecHn6
	eqjaxW2HFUOeb7Ccu8Ufj3IRz3ZvukCAN9eZQ5MVmWuXAgSQDZLX3q6TKg9lHvuSU1gLzFtWDHpx5
	7GZktG7iOG71lb6lyM4CCbFtOlNrTHHlDzWWhN6jklYOmUaGMbI9L5h1LLrH3aJEWC09tdvN5bxOI
	EZoJG6xAE8roPaLoVhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWALL-0006DA-06; Thu, 30 May 2019 01:58:59 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWALD-0006Cd-Ib
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 01:58:53 +0000
Received: by mail-pg1-x542.google.com with SMTP id z3so988482pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 18:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XQklZSjizGuiT2dX/+YIbHkYEMrT1Ng6+yIh0JzP550=;
 b=BSQyd8eZZ4647ZXTpp+EzO1sy398rwvKtB89j0h+yAhEpdzI6ShGESohcX0yXwNoZw
 xUAvCucs4hXBmonJkMXL6Lz5naqDy5A0EWhM5Q9VVC35Xu5LKskG4tyj7Y/My20a1Omr
 2yqFU01XxruAdfC8FQzuCUYT8VdbC1tfRV4z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XQklZSjizGuiT2dX/+YIbHkYEMrT1Ng6+yIh0JzP550=;
 b=dulsaEgYT3jZkjpDqoRtCsMI4nL57GkA76cDOiSIScMwGKZUJjzHWfpyYYQ8GELK4s
 ZoIQKxp4+ZH4QVqsEBhUfx5M6BnR9x3lojOZ65kJw9JVbTWwd0oUqqM/chrr5oCl3pLZ
 zbKgDECTX3rzZVq0HPC16H8nAtQ7LdcyU7Rztw6d5wle9NnPaGoWvxRHSleYSk0vN7S3
 axhvu5Mplg16tfQ2MVWwZD6ttYEUG/+ICiXDj/2Tgr5/HUp613MA+D9mhxI/6muP5sVe
 ZlD2X3CIri5IElqnRUHPwdgMgyNfhj76w43KtJlInWmBW/o8F8jlu0EPn2M2t+BUTde6
 IvMA==
X-Gm-Message-State: APjAAAWD+qhepE7sXGkIe+xj58bCRkCjhdQKFw3rE/uDZHwpd/Riq280
 iWnqowcY+nEFvxLG31Cm7E2wBA==
X-Google-Smtp-Source: APXvYqxHJLMMjksG2Qo9fBu5MenPqn/qqfNXUZAYJUHBdHRvWVkva2ALQe/OJHMRXFXT2sxPKkD+RA==
X-Received: by 2002:a62:fb10:: with SMTP id x16mr1009609pfm.112.1559181530920; 
 Wed, 29 May 2019 18:58:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t11sm601774pgp.1.2019.05.29.18.58.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 May 2019 18:58:49 -0700 (PDT)
Date: Wed, 29 May 2019 18:58:48 -0700
From: Kees Cook <keescook@chromium.org>
To: Kristina Martsenko <kristina.martsenko@arm.com>
Subject: Re: [RFC v2 1/7] arm64: cpufeature: add pointer auth meta-capabilities
Message-ID: <201905291853.204A6B7A@keescook>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-2-kristina.martsenko@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529190332.29753-2-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_185851_635429_BC5EEA75 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

On Wed, May 29, 2019 at 08:03:26PM +0100, Kristina Martsenko wrote:
> To enable pointer auth for the kernel, we're going to need to check for
> the presence of address auth and generic auth using alternative_if. We
> currently have two cpucaps for each, but alternative_if needs to check a
> single cpucap. So define meta-capabilities that are present when either
> of the current two capabilities is present.
> 
> Leave the existing four cpucaps in place, as they are still needed to
> check for mismatched systems where one CPU has the architected algorithm
> but another has the IMP DEF algorithm.
> 
> Note, the meta-capabilities were present before but were removed in
> commits a56005d32105 ("arm64: cpufeature: Reduce number of pointer auth
> CPU caps from 6 to 4") and 1e013d06120c ("arm64: cpufeature: Rework ptr
> auth hwcaps using multi_entry_cap_matches"), as they were not needed
> then. Note, unlike before, the current patch checks the cpucap values
> directly, instead of reading the CPU ID register value.
> 
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> ---
> 
> Changes since RFC v1:
>  - New patch, as the meta-capabilities have been removed upstream
> 
>  arch/arm64/include/asm/cpucaps.h    |  4 +++-
>  arch/arm64/include/asm/cpufeature.h |  6 ++----
>  arch/arm64/kernel/cpufeature.c      | 25 ++++++++++++++++++++++++-
>  3 files changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index f6a76e43f39e..601183b7b484 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -61,7 +61,9 @@
>  #define ARM64_HAS_GENERIC_AUTH_ARCH		40
>  #define ARM64_HAS_GENERIC_AUTH_IMP_DEF		41
>  #define ARM64_HAS_IRQ_PRIO_MASKING		42
> +#define ARM64_HAS_ADDRESS_AUTH			43
> +#define ARM64_HAS_GENERIC_AUTH			44
>  
> -#define ARM64_NCAPS				43
> +#define ARM64_NCAPS				45
>  
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index e505e1fbd2b9..0522ea674253 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -605,15 +605,13 @@ static inline bool system_supports_cnp(void)
>  static inline bool system_supports_address_auth(void)
>  {
>  	return IS_ENABLED(CONFIG_ARM64_PTR_AUTH) &&
> -		(cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
> -		 cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF));
> +		cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH);
>  }
>  
>  static inline bool system_supports_generic_auth(void)
>  {
>  	return IS_ENABLED(CONFIG_ARM64_PTR_AUTH) &&
> -		(cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
> -		 cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF));
> +		cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH);
>  }
>  
>  static inline bool system_uses_irq_prio_masking(void)
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 4061de10cea6..166584deaed2 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1205,6 +1205,20 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
>  	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
>  				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
>  }
> +
> +static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
> +			     int __unused)
> +{
> +	return cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
> +	       cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
> +}
> +
> +static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
> +			     int __unused)
> +{
> +	return cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
> +	       cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
> +}
>  #endif /* CONFIG_ARM64_PTR_AUTH */
>  
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
> @@ -1466,7 +1480,6 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.field_pos = ID_AA64ISAR1_APA_SHIFT,
>  		.min_field_value = ID_AA64ISAR1_APA_ARCHITECTED,
>  		.matches = has_cpuid_feature,
> -		.cpu_enable = cpu_enable_address_auth,
>  	},
>  	{
>  		.desc = "Address authentication (IMP DEF algorithm)",
> @@ -1477,6 +1490,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.field_pos = ID_AA64ISAR1_API_SHIFT,
>  		.min_field_value = ID_AA64ISAR1_API_IMP_DEF,
>  		.matches = has_cpuid_feature,
> +	},
> +	{
> +		.capability = ARM64_HAS_ADDRESS_AUTH,
> +		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.matches = has_address_auth,
>  		.cpu_enable = cpu_enable_address_auth,
>  	},
>  	{
> @@ -1499,6 +1517,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.min_field_value = ID_AA64ISAR1_GPI_IMP_DEF,
>  		.matches = has_cpuid_feature,
>  	},
> +	{
> +		.capability = ARM64_HAS_GENERIC_AUTH,
> +		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.matches = has_generic_auth,
> +	},
>  #endif /* CONFIG_ARM64_PTR_AUTH */
>  #ifdef CONFIG_ARM64_PSEUDO_NMI
>  	{
> -- 
> 2.11.0
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
