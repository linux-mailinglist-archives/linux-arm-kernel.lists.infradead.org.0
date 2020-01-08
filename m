Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76386134914
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:18:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFHjthehE8Esm795GfdA6wx0cr5ukcOBZI1oLrAs4z0=; b=TAuxeR+C9LXhOz
	u4skueVgEPQvHOKwQgFablA6F1eMQzt5hJdYnqDffF9GVcFDZFirzgDl+tNdvr3j+V/WBtpocmUH8
	DaiJrDcrUo6CHJbileaVxkTzfuc8kuhcvsgvFSB5d5XSFZjJWV42t8jl3gdzms1dDsz50Vh3//tqN
	SWZIDv8zVUVcXCl6mhMWaKlYAq4HRxuJUS98oMr9HATrraFm3gDfskbiGgH98kHwNt/6/PAPL/2MR
	INlVi8Oi9mANO/7xd2jSbwawKYgMd8yEwf4PCjRaZJ8YJJqV0pQXqgF1YKR6NM/eWL52RWXCfN4Qa
	fjoSVgtTi12BjmfMm/Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipEyh-0007iZ-Le; Wed, 08 Jan 2020 17:18:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipEyb-0007i5-A1
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:18:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8A2C71FB;
 Wed,  8 Jan 2020 09:18:36 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8A3073F534;
 Wed,  8 Jan 2020 09:18:35 -0800 (PST)
Date: Wed, 8 Jan 2020 17:18:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v8 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20200108171833.GH49203@lakrids.cambridge.arm.com>
References: <20200107183540.54794-1-broonie@kernel.org>
 <20200107183540.54794-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107183540.54794-2-broonie@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_091837_433073_2569A84D 
X-CRM114-Status: GOOD (  25.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 ard.biesheuvel@linaro.org, Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jan 07, 2020 at 06:35:38PM +0000, Mark Brown wrote:
> From: Richard Henderson <richard.henderson@linaro.org>
> 
> Expose the ID_AA64ISAR0.RNDR field to userspace, as the RNG system
> registers are always available at EL0.
> 
> Implement arch_get_random_seed_long using RNDR.  Given that the
> TRNG is likely to be a shared resource between cores, and VMs,
> do not explicitly force re-seeding with RNDRRS.  In order to avoid
> code complexity and potential issues with hetrogenous systems only
> provide values after cpufeature has finalized the system capabilities.
> 
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> [Modified to only function after cpufeature has finalized the system
> capabilities and move all the code into the header -- broonie]
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  Documentation/arm64/cpu-feature-registers.rst |  2 +
>  arch/arm64/Kconfig                            | 12 ++++
>  arch/arm64/include/asm/archrandom.h           | 67 +++++++++++++++++++
>  arch/arm64/include/asm/cpucaps.h              |  3 +-
>  arch/arm64/include/asm/sysreg.h               |  4 ++
>  arch/arm64/kernel/cpufeature.c                | 13 ++++
>  6 files changed, 100 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/include/asm/archrandom.h
> 
> diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
> index b6e44884e3ad..ce320785fb0c 100644
> --- a/Documentation/arm64/cpu-feature-registers.rst
> +++ b/Documentation/arm64/cpu-feature-registers.rst
> @@ -117,6 +117,8 @@ infrastructure:
>       +------------------------------+---------+---------+
>       | Name                         |  bits   | visible |
>       +------------------------------+---------+---------+
> +     | RNDR                         | [63-60] |    y    |
> +     +------------------------------+---------+---------+
>       | TS                           | [55-52] |    y    |
>       +------------------------------+---------+---------+
>       | FHM                          | [51-48] |    y    |
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index b1b4476ddb83..835f8158220e 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1484,6 +1484,18 @@ config ARM64_PTR_AUTH
>  
>  endmenu
>  
> +menu "ARMv8.5 architectural features"
> +
> +config ARCH_RANDOM
> +	bool "Enable support for random number generation"
> +	default y
> +	help
> +	  Random number generation (part of the ARMv8.5 Extensions)
> +	  provides a high bandwidth, cryptographically secure
> +	  hardware random number generator.
> +
> +endmenu
> +
>  config ARM64_SVE
>  	bool "ARM Scalable Vector Extension support"
>  	default y
> diff --git a/arch/arm64/include/asm/archrandom.h b/arch/arm64/include/asm/archrandom.h
> new file mode 100644
> index 000000000000..364177954bef
> --- /dev/null
> +++ b/arch/arm64/include/asm/archrandom.h
> @@ -0,0 +1,67 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef _ASM_ARCHRANDOM_H
> +#define _ASM_ARCHRANDOM_H
> +
> +#ifdef CONFIG_ARCH_RANDOM
> +
> +#include <linux/random.h>
> +#include <asm/cpufeature.h>
> +
> +static inline bool __arm64_rndr(unsigned long *v)
> +{
> +	bool ok;
> +
> +	/*
> +	 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
> +	 * and set PSTATE.NZCV to 0b0100 otherwise.
> +	 */
> +	asm volatile(
> +		__mrs_s("%0", SYS_RNDR_EL0) "\n"
> +	"	cset %w1, ne\n"
> +	: "=r"(*v), "=r"(ok)

Nit: missing spacing here, this last line should be:

	: "=r" (*v), "=r (ok)

Otherwise, the patch looks good to me. With that fixed:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks for sorting this out!

Mark.

> +	:
> +	: "cc");
> +
> +	return ok;
> +}
> +
> +static inline bool __must_check arch_get_random_long(unsigned long *v)
> +{
> +	return false;
> +}
> +
> +static inline bool __must_check arch_get_random_int(unsigned int *v)
> +{
> +	return false;
> +}
> +
> +static inline bool __must_check arch_get_random_seed_long(unsigned long *v)
> +{
> +	/*
> +	 * Only support the generic interface after we have detected
> +	 * the system wide capability, avoiding complexity with the
> +	 * cpufeature code and with potential scheduling between CPUs
> +	 * with and without the feature.
> +	 */
> +	if (!cpus_have_const_cap(ARM64_HAS_RNG))
> +		return false;
> +
> +	return __arm64_rndr(v);
> +}
> +
> +
> +static inline bool __must_check arch_get_random_seed_int(unsigned int *v)
> +{
> +	unsigned long val;
> +	bool ok = arch_get_random_seed_long(&val);
> +
> +	*v = val;
> +	return ok;
> +}
> +
> +#else
> +
> +static inline bool __arm64_rndr(unsigned long *v) { return false; }
> +
> +#endif /* CONFIG_ARCH_RANDOM */
> +#endif /* _ASM_ARCHRANDOM_H */
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index b92683871119..515f4fbcbf91 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -56,7 +56,8 @@
>  #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
>  #define ARM64_WORKAROUND_1542419		47
>  #define ARM64_WORKAROUND_1319367		48
> +#define ARM64_HAS_RNG				49
>  
> -#define ARM64_NCAPS				49
> +#define ARM64_NCAPS				50
>  
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index 6e919fafb43d..5e718f279469 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -365,6 +365,9 @@
>  #define SYS_CTR_EL0			sys_reg(3, 3, 0, 0, 1)
>  #define SYS_DCZID_EL0			sys_reg(3, 3, 0, 0, 7)
>  
> +#define SYS_RNDR_EL0			sys_reg(3, 3, 2, 4, 0)
> +#define SYS_RNDRRS_EL0			sys_reg(3, 3, 2, 4, 1)
> +
>  #define SYS_PMCR_EL0			sys_reg(3, 3, 9, 12, 0)
>  #define SYS_PMCNTENSET_EL0		sys_reg(3, 3, 9, 12, 1)
>  #define SYS_PMCNTENCLR_EL0		sys_reg(3, 3, 9, 12, 2)
> @@ -539,6 +542,7 @@
>  			 ENDIAN_SET_EL1 | SCTLR_EL1_UCI  | SCTLR_EL1_RES1)
>  
>  /* id_aa64isar0 */
> +#define ID_AA64ISAR0_RNDR_SHIFT		60
>  #define ID_AA64ISAR0_TS_SHIFT		52
>  #define ID_AA64ISAR0_FHM_SHIFT		48
>  #define ID_AA64ISAR0_DP_SHIFT		44
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 04cf64e9f0c9..0fea85228956 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -119,6 +119,7 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
>   * sync with the documentation of the CPU feature register ABI.
>   */
>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
> @@ -1566,6 +1567,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.sign = FTR_UNSIGNED,
>  		.min_field_value = 1,
>  	},
> +#endif
> +#ifdef CONFIG_ARCH_RANDOM
> +	{
> +		.desc = "Random Number Generator",
> +		.capability = ARM64_HAS_RNG,
> +		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
> +		.matches = has_cpuid_feature,
> +		.sys_reg = SYS_ID_AA64ISAR0_EL1,
> +		.field_pos = ID_AA64ISAR0_RNDR_SHIFT,
> +		.sign = FTR_UNSIGNED,
> +		.min_field_value = 1,
> +	},
>  #endif
>  	{},
>  };
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
