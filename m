Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208AA17F611
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:18:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/DlZZSXbu0NdFXBwbRJXqMy2Rti1czZEwJKq/DNTOo=; b=oHqoAH26ZCq4JM
	RiNkxoseQVKWDSi3funeeXwu5NIORwaVrHmQ8jCy+Xd1z4g/sdJUtGfWs0a3FzGWairiNE7g+kqmO
	x2wyvmqQu6sB/byUIbkpwe6pFExXrXFLRciKWceA/lpqhJ9JFxpvEf8pZ6T5e08cKBCuzn9E9FGpm
	oMRfULtVgALqEOvNkvT/SvxzXegZyqvReChANIrHhzi7DYnzyBYsOSOnB2+MviqogUP+nX/rjOY3Z
	51AFBMl6mXJ03Lsq4QQbubzFLD4WJn3oZzYxl3bTl4P/CJcb1uDqknGeWE5E47XhRnfrFGiUwmNRB
	GMXx2V3EK9R4qoq+8Wug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBcuO-0006oX-QP; Tue, 10 Mar 2020 11:18:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBcuA-0006nX-Up
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 11:18:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 69CD830E;
 Tue, 10 Mar 2020 04:18:32 -0700 (PDT)
Received: from [10.37.12.115] (unknown [10.37.12.115])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D9BFB3F67D;
 Tue, 10 Mar 2020 04:18:29 -0700 (PDT)
Subject: Re: [PATCH v6 02/18] arm64: cpufeature: add pointer auth
 meta-capabilities
To: Amit Daniel Kachhap <amit.kachhap@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1583476525-13505-1-git-send-email-amit.kachhap@arm.com>
 <1583476525-13505-3-git-send-email-amit.kachhap@arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <524643cf-def1-9de8-2649-4347688973c0@arm.com>
Date: Tue, 10 Mar 2020 11:18:54 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1583476525-13505-3-git-send-email-amit.kachhap@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_041835_079382_EF972D00 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 3/6/20 6:35 AM, Amit Daniel Kachhap wrote:
> From: Kristina Martsenko <kristina.martsenko@arm.com>
> 
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
> commit a56005d32105 ("arm64: cpufeature: Reduce number of pointer auth
> CPU caps from 6 to 4") and commit 1e013d06120c ("arm64: cpufeature: Rework
> ptr auth hwcaps using multi_entry_cap_matches"), as they were not needed
> then. Note, unlike before, the current patch checks the cpucap values
> directly, instead of reading the CPU ID register value.
>

Reviewed-by: Vincenzo Frascino <Vincenzo.Frascino@arm.com>

> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> [Amit: commit message and macro rebase, use __system_matches_cap]
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/include/asm/cpucaps.h    |  4 +++-
>  arch/arm64/include/asm/cpufeature.h |  6 ++----
>  arch/arm64/kernel/cpufeature.c      | 25 ++++++++++++++++++++++++-
>  3 files changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index 865e025..72e4e05 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -58,7 +58,9 @@
>  #define ARM64_WORKAROUND_SPECULATIVE_AT_NVHE	48
>  #define ARM64_HAS_E0PD				49
>  #define ARM64_HAS_RNG				50
> +#define ARM64_HAS_ADDRESS_AUTH			51
> +#define ARM64_HAS_GENERIC_AUTH			52
>  
> -#define ARM64_NCAPS				51
> +#define ARM64_NCAPS				53
>  
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
> index 2a746b9..0fd1feb 100644
> --- a/arch/arm64/include/asm/cpufeature.h
> +++ b/arch/arm64/include/asm/cpufeature.h
> @@ -590,15 +590,13 @@ static __always_inline bool system_supports_cnp(void)
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
> index 3818685..b12e386 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1323,6 +1323,20 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
>  	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
>  				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
>  }
> +
> +static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
> +			     int __unused)
> +{
> +	return __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
> +	       __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
> +}
> +
> +static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
> +			     int __unused)
> +{
> +	return __system_matches_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
> +	       __system_matches_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
> +}
>  #endif /* CONFIG_ARM64_PTR_AUTH */
>  
>  #ifdef CONFIG_ARM64_E0PD
> @@ -1600,7 +1614,6 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.field_pos = ID_AA64ISAR1_APA_SHIFT,
>  		.min_field_value = ID_AA64ISAR1_APA_ARCHITECTED,
>  		.matches = has_cpuid_feature,
> -		.cpu_enable = cpu_enable_address_auth,
>  	},
>  	{
>  		.desc = "Address authentication (IMP DEF algorithm)",
> @@ -1611,6 +1624,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
> @@ -1633,6 +1651,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
