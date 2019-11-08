Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56105F4E1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cczFsbLydj5fivGlG0TjJiwdWOkt4fD+wcJkXsKXFfg=; b=gHt2d7Z5Ws+yGU
	60NrxnfzNKBpGRhBM23JUAWpcwZQ3coHhNm/sXcPyrctV/pmMmLIXXDSrtPSWOcM93H4tFIixjQIr
	CEYgE6UMXoyJmNdnDX4Hllu1YQTyH/dHpO54DEq9QsKT0KaE4m4aLSw/H+IQQEBWtAD2s+l/ox9vQ
	e2aUDra7k2DLXb+rgkTkf2hIENdULwftMw3hkg+0DDSFW69VqdD+kKXh51i0tgaLc6VVU2tDeCYal
	G2r+4GveqqlL/3EQoc5pcsX+r78LOP/bi13tSfUwP4//zNwCSAFRCqjIQVMGowKiD/XV4lHx53u+I
	jzZqi3aIDDSgk2HQJ0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT5Ha-0002Dj-A2; Fri, 08 Nov 2019 14:30:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT5HS-0002DJ-56
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:30:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0EE0D46A;
 Fri,  8 Nov 2019 06:30:29 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5C4DE3F719;
 Fri,  8 Nov 2019 06:30:28 -0800 (PST)
Date: Fri, 8 Nov 2019 14:30:26 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v5] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20191108143025.GD11465@lakrids.cambridge.arm.com>
References: <20191108135751.3218-1-rth@twiddle.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108135751.3218-1-rth@twiddle.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_063030_282358_4864EAD6 
X-CRM114-Status: GOOD (  26.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 02:57:51PM +0100, Richard Henderson wrote:
> From: Richard Henderson <richard.henderson@linaro.org>
> 
> Expose the ID_AA64ISAR0.RNDR field to userspace, as the
> RNG system registers are always available at EL0.
> 
> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> ---
> v2: Use __mrs_s and fix missing cc clobber (Mark),
>     Log rng failures with pr_warn (Mark),

When I suggested this, I meant in the probe path.

Since it can legitimately fail at runtime, I don't think it's worth
logging there. Maybe it's worth recording stats, but the generic wrapper
could do that.

[...]

> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 80f459ad0190..456d5c461cbf 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -119,6 +119,7 @@ static void cpu_enable_cnp(struct arm64_cpu_capabilities const *cap);
>   * sync with the documentation of the CPU feature register ABI.
>   */
>  static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
> +	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_RNDR_SHIFT, 4, 0),

If we're going to expose this to userspace, it must be a system feature.
If all the boto CPUs have the feature, we'll advertise it to userspace,
and therefore must mandate it for late-onlined CPUs.

>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_TS_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_FHM_SHIFT, 4, 0),
>  	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR0_DP_SHIFT, 4, 0),
> @@ -1565,6 +1566,18 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.sign = FTR_UNSIGNED,
>  		.min_field_value = 1,
>  	},
> +#endif
> +#ifdef CONFIG_ARCH_RANDOM
> +	{
> +		.desc = "Random Number Generator",
> +		.capability = ARM64_HAS_RNG,
> +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,

As above, if we're advertisting this to userspace and/or VMs, this must
be a system-wide feature, and cannot be a weak local feature.

> +		.matches = has_cpuid_feature,
> +		.sys_reg = SYS_ID_AA64ISAR0_EL1,
> +		.field_pos = ID_AA64ISAR0_RNDR_SHIFT,
> +		.sign = FTR_UNSIGNED,
> +		.min_field_value = 1,
> +	},
>  #endif
>  	{},
>  };
> diff --git a/arch/arm64/kernel/random.c b/arch/arm64/kernel/random.c
> new file mode 100644
> index 000000000000..e7ff29dd637c
> --- /dev/null
> +++ b/arch/arm64/kernel/random.c
> @@ -0,0 +1,82 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Random number generation using ARMv8.5-RNG.
> + */
> +
> +#include <linux/random.h>
> +#include <linux/ratelimit.h>
> +#include <linux/printk.h>
> +#include <linux/preempt.h>
> +#include <asm/cpufeature.h>
> +
> +static inline bool has_random(void)
> +{
> +	/*
> +	 * We "have" RNG if either
> +	 * (1) every cpu in the system has RNG, or
> +	 * (2) in a non-preemptible context, current cpu has RNG.
> +	 *
> +	 * Case 1 is the expected case when RNG is deployed, but
> +	 * case 2 is present as a backup.  Case 2 has two effects:
> +	 * (A) rand_initialize() is able to use the instructions
> +	 * when present in the boot cpu, which happens before
> +	 * secondary cpus are enabled and before features are
> +	 * resolved for the full system.
> +	 * (B) add_interrupt_randomness() is able to use the
> +	 * instructions when present on the current cpu, in case
> +	 * some big/little system only has RNG on big cpus.
> +	 *
> +	 * We can use __cpus_have_const_cap because we then fall
> +	 * back to checking the current cpu.
> +	 */
> +	return __cpus_have_const_cap(ARM64_HAS_RNG) ||
> +	       (!preemptible() && this_cpu_has_cap(ARM64_HAS_RNG));
> +}

We don't bother with special-casing local handling mismatch like this
for other features. I'd ratehr that:

* On the boot CPU, prior to detecting secondaries, we can seed the usual
  pool with the RNG if the boot CPU has it.

* Once secondaries are up, if the feature is present system-wide, we can
  make use of the feature as a system-wide feature. If not, we don't use
  the RNG.


[...]

> +bool arch_get_random_long(unsigned long *v)
> +{
> +	bool ok;
> +
> +	if (!has_random())
> +		return false;
> +
> +	/*
> +	 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
> +	 * and set PSTATE.NZCV to 0b0100 otherwise.
> +	 */
> +	asm volatile(
> +		__mrs_s("%0", SYS_RNDR_EL0) "\n"
> +	"	cset %w1, ne\n"
> +	: "=r"(*v), "=r"(ok)

Nit: place a space between the constraint and the bracketed variable, as
we do elsewhere.

> +	:
> +	: "cc");
> +
> +	if (unlikely(!ok))
> +		pr_warn_ratelimited("cpu%d: sys_rndr failed\n",
> +				    read_cpuid_id());
> +	return ok;
> +}

... so this can be:

bool arch_get_random_long(unsigned long *v)
{
	bool ok;

	if (!cpus_have_const_cap(ARM64_HAS_RNG))
		return false;

	/*
	 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
	 * and set PSTATE.NZCV to 0b0100 otherwise.
	 */
	asm volatile(
		__mrs_s("%0", SYS_RNDR_EL0) "\n"
	"	cset %w1, ne\n"
	: "=r" (*v), "=r" (ok)
	:
	: "cc");

	return ok;
}

...with similar for arch_get_random_seed_long().

[...]

>  config RANDOM_TRUST_CPU
>  	bool "Trust the CPU manufacturer to initialize Linux's CRNG"
> -	depends on X86 || S390 || PPC
> +	depends on X86 || S390 || PPC || ARM64

Can't that depend on ARCH_RANDOM instead?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
