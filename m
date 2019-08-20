Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3075496439
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:23:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OH7CgfVQa3fRyleaSHwugijIJTFk2ascbYmmHVRGyOs=; b=t6Yhlihj+9RU4Z
	enMMK5dlZPVbuL0Nxa66DnMbetowOXPYBhKCcyLNjBrCjT/FfIOtMj9NObPJD3gQHK4s3KRMevym+
	xRMSSjdl1W0nGn9JbfEvuwT/kuddyWqZzcaoYXgERmytZAq7p3TekGcn3yoaJHuT99Rx41EDkpobl
	YFYzo+vl7PZkYvVJcPM/70EroIJ8a8iydRaRCTLoqtdVWgvRfcf/7olDQvDf6KpuyWtnzfVpY4JXN
	abr1xlydSSUnU+Pv3cKdbjMMI8hlZ81dDfS7YdaUMpPAgetwrQzMUqtyhE+8NYmlAA+2upiEeNDcj
	42EX0O4Hc54tTK4gGAJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05z3-00028I-1O; Tue, 20 Aug 2019 15:23:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i05yo-00027b-PT
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:23:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B32E28;
 Tue, 20 Aug 2019 08:23:25 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 613EC3F246;
 Tue, 20 Aug 2019 08:23:24 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:23:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH v3 2/5] arm64: cpufeature: Add feature to detect
 heterogeneous systems
Message-ID: <20190820152316.GA38082@lakrids.cambridge.arm.com>
References: <20190816125934.18509-1-raphael.gault@arm.com>
 <20190816125934.18509-3-raphael.gault@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816125934.18509-3-raphael.gault@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_082326_919550_205978D1 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: raph.gault+kdev@gmail.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Raphael,

On Fri, Aug 16, 2019 at 01:59:31PM +0100, Raphael Gault wrote:
> This feature is required in order to enable PMU counters direct
> access from userspace only when the system is homogeneous.
> This feature checks the model of each CPU brought online and compares it
> to the boot CPU. If it differs then it is heterogeneous.

I t would be worth noting that this patch prevents heterogeneous CPUs
being brought online late if the system was uniform at boot time.

> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> ---
>  arch/arm64/include/asm/cpucaps.h |  3 ++-
>  arch/arm64/kernel/cpufeature.c   | 20 ++++++++++++++++++++
>  arch/arm64/kernel/perf_event.c   |  1 +
>  3 files changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
> index f19fe4b9acc4..040370af38ad 100644
> --- a/arch/arm64/include/asm/cpucaps.h
> +++ b/arch/arm64/include/asm/cpucaps.h
> @@ -52,7 +52,8 @@
>  #define ARM64_HAS_IRQ_PRIO_MASKING		42
>  #define ARM64_HAS_DCPODP			43
>  #define ARM64_WORKAROUND_1463225		44
> +#define ARM64_HAS_HETEROGENEOUS_PMU		45
>  
> -#define ARM64_NCAPS				45
> +#define ARM64_NCAPS				46
>  
>  #endif /* __ASM_CPUCAPS_H */
> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 9323bcc40a58..bbdd809f12a6 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -1260,6 +1260,15 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
>  }
>  #endif
>  
> +static bool has_heterogeneous_pmu(const struct arm64_cpu_capabilities *entry,
> +				     int scope)
> +{
> +	u32 model = read_cpuid_id() & MIDR_CPU_MODEL_MASK;
> +	struct cpuinfo_arm64 *boot = &per_cpu(cpu_data, 0);
> +
> +	return  (boot->reg_midr & MIDR_CPU_MODEL_MASK) != model;
> +}

We should use boot_cpu_data rather than &per_cpu(cpu_data, 0) here. We
can make that __ro_after_init, and declare it in
arch/arm64/includ/asm/smp.h.

That caters for CPU0 being hotplugged off and then a different physical
CPU being hotplugged on in its place.

> +
>  static const struct arm64_cpu_capabilities arm64_features[] = {
>  	{
>  		.desc = "GIC system register CPU interface",
> @@ -1560,6 +1569,16 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>  		.min_field_value = 1,
>  	},
>  #endif
> +	{
> +		/*
> +		 * Detect whether the system is heterogeneous or
> +		 * homogeneous
> +		 */
> +		.desc = "Detect whether we have heterogeneous CPUs",

The desc gets printed in dmesg with a prefix, e.g.

[    0.058267][    T1] CPU features: detected: Privileged Access Never
[    0.058340][    T1] CPU features: detected: LSE atomic instructions
[    0.058416][    T1] CPU features: detected: RAS Extension Support
[    0.058489][    T1] CPU features: detected: CRC32 instructions

... so this should only say "Heterogeneous CPUs".

> +		.capability = ARM64_HAS_HETEROGENEOUS_PMU,
> +		.type = ARM64_CPUCAP_SCOPE_LOCAL_CPU | ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU,
> +		.matches = has_heterogeneous_pmu,
> +	},
>  	{},
>  };
>  
> @@ -1727,6 +1746,7 @@ static void __init setup_elf_hwcaps(const struct arm64_cpu_capabilities *hwcaps)
>  			cap_set_elf_hwcap(hwcaps);
>  }
>  
> +

This whitespace addition can go.

>  static void update_cpu_capabilities(u16 scope_mask)
>  {
>  	int i;
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 2d3bdebdf6df..a0b4f1bca491 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -19,6 +19,7 @@
>  #include <linux/of.h>
>  #include <linux/perf/arm_pmu.h>
>  #include <linux/platform_device.h>
> +#include <linux/smp.h>

I think this should be added in a separate patch.

It looks like this is a missing include that we need today for
smp_processor_id(), so please spin that as a preparatory patch (with my
Acked-by).

Thanks,
Mark.

>  
>  /* ARMv8 Cortex-A53 specific event types. */
>  #define ARMV8_A53_PERFCTR_PREF_LINEFILL				0xC2
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
