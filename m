Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F45A15A7E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:31:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oiJywgG5NMKFGMvHBBMa0GZcQ1Q5fjdDovAYhOBTANc=; b=LrnyvIT+T0WApEtyFioFKoGRT
	5Ky8QLFgzaOOBVwA0agqmSto+BkiDQtnzCXhPEOqaqO9QLszntcOH2KOnF+E5SIPU/zu2gToA6ICf
	T2OYhGRU8G/rg2Qc1yHqe6cL/h0VuNm5sWoeteZliND8cy9rYxh3Xu17rOVPbw4fYVJtD3V3ZbhUi
	yQb6WKwFbG/QgTVvoA/OjACHhHCpKIQPtDPUiHx7UHp+sKX8JBEjSqfSAPlPsM9WcWzLgLbCF4dFe
	LB2p7nEhvb26Q3CY+EBE8qUjcAVLobr3KyFY7AglxaxM1VenHhX5X+nMc0ECr7q3hFoFjYrrjtKDm
	qu3WjMvmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qEL-0004vu-Ir; Wed, 12 Feb 2020 11:30:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qEC-0004vQ-Us
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:30:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C87A30E;
 Wed, 12 Feb 2020 03:30:47 -0800 (PST)
Received: from [10.1.197.1] (ewhatever.cambridge.arm.com [10.1.197.1])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E1BE3F68F;
 Wed, 12 Feb 2020 03:30:45 -0800 (PST)
Subject: Re: [PATCH v3 1/7] arm64: add support for the AMU extension v1
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, rjw@rjwysocki.net
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
 <20200211184542.29585-2-ionela.voinescu@arm.com>
From: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
Message-ID: <93472f17-6465-641d-ea82-3230b5697ffd@arm.com>
Date: Wed, 12 Feb 2020 11:30:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200211184542.29585-2-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_033049_083291_667F2B1A 
X-CRM114-Status: GOOD (  35.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

On 11/02/2020 18:45, Ionela Voinescu wrote:
> The activity monitors extension is an optional extension introduced
> by the ARMv8.4 CPU architecture. This implements basic support for
> version 1 of the activity monitors architecture, AMUv1.
> 
> This support includes:
> - Extension detection on each CPU (boot, secondary, hotplugged)
> - Register interface for AMU aarch64 registers
> - disable_amu kernel parameter to disable detection/counter access
>    at runtime
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> ---
>   .../admin-guide/kernel-parameters.txt         | 10 ++
>   arch/arm64/Kconfig                            | 31 ++++++
>   arch/arm64/include/asm/cpucaps.h              |  3 +-
>   arch/arm64/include/asm/cpufeature.h           |  5 +
>   arch/arm64/include/asm/sysreg.h               | 38 ++++++++
>   arch/arm64/kernel/cpufeature.c                | 97 +++++++++++++++++++
>   6 files changed, 183 insertions(+), 1 deletion(-)
> 
...

> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
> index 04cf64e9f0c9..029a473ad273 100644
> --- a/arch/arm64/kernel/cpufeature.c
> +++ b/arch/arm64/kernel/cpufeature.c
> @@ -156,6 +156,7 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr0[] = {
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV3_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_CSV2_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_DIT_SHIFT, 4, 0),
> +	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64PFR0_AMU_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
>   				   FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_SVE_SHIFT, 4, 0),
>   	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64PFR0_RAS_SHIFT, 4, 0),
> @@ -1150,6 +1151,84 @@ static bool has_hw_dbm(const struct arm64_cpu_capabilities *cap,
>   
>   #endif
>   
> +#ifdef CONFIG_ARM64_AMU_EXTN
> +
> +/*
> + * The "amu_cpus" cpumask only signals that the CPU implementation for the
> + * flagged CPUs supports the Activity Monitors Unit (AMU) but does not provide
> + * information regarding all the events that it supports. When a CPU bit is
> + * set in the cpumask, the user of this feature can only rely on the presence
> + * of the 4 fixed counters for that CPU. But this does not guarantee that the
> + * counters are enabled or access to these counters is enabled by code
> + * executed at higher exception levels (firmware).
> + */
> +static cpumask_var_t amu_cpus;
> +
> +bool cpu_has_amu_feat(int cpu)
> +{
> +	if (cpumask_available(amu_cpus))
> +		return cpumask_test_cpu(cpu, amu_cpus);
> +
> +	return false;
> +}
> +
> +static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
> +{
> +	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
> +		pr_info("detected CPU%d: Activity Monitors Unit (AMU)\n",
> +			smp_processor_id());
> +		cpumask_set_cpu(smp_processor_id(), amu_cpus);
> +	}
> +}
> +
> +/*
> + * For known broken firmware, a kernel parameter ("disable_amu") is provided
> + * to ensure access to AMU counter registers is not attempted. By default,
> + * the feature is enabled, but disable_amu can both be used to disable or
> + * enable the capability at runtime in case the default changes in the future.
> + *
> + * To be noted that for security considerations, this does not bypass the
> + * setting of AMUSERENR_EL0 to trap accesses from EL0 (userspace) to EL1
> + * (kernel). Therefore, firmware should still ensure accesses to AMU registers
> + * are not trapped in EL2/EL3.
> + */
> +static bool disable_amu;
> +
> +static int __init set_disable_amu(char *str)
> +{
> +	int value = 0;
> +
> +	disable_amu = get_option(&str, &value) ? !!value : true;

minor nit: You could simply use strtobool(str) here, which accepts:

disable_amu= [0/1/on/off/y/n]


> +
> +	return 0;
> +}
> +early_param("disable_amu", set_disable_amu);
> +
> +static bool has_amu(const struct arm64_cpu_capabilities *cap,
> +		       int __unused)
> +{
> +	/*
> +	 * The AMU extension is a non-conflicting feature: the kernel can
> +	 * safely run a mix of CPUs with and without support for the
> +	 * activity monitors extension. Therefore, if not disabled through
> +	 * the kernel command line early parameter, enable the capability
> +	 * to allow any late CPU to use the feature.
> +	 *
> +	 * With this feature enabled, the cpu_enable function will be called
> +	 * for all CPUs that match the criteria, including secondary and
> +	 * hotplugged, marking this feature as present on that respective CPU.
> +	 * The enable function will also print a detection message.
> +	 */
> +
> +	if (!disable_amu && !zalloc_cpumask_var(&amu_cpus, GFP_KERNEL)) {

This looks problematic. Don't we end up in allocating the memory during
"each CPU" check and thus leaking memory ? Do we really need to allocate
this dynamically ?

> +		pr_err("Activity Monitors Unit (AMU): fail to allocate memory");
> +		disable_amu = true;
> +	}
> +
> +	return !disable_amu;
> +}
> +#endif
> +
>   #ifdef CONFIG_ARM64_VHE
>   static bool runs_at_el2(const struct arm64_cpu_capabilities *entry, int __unused)
>   {
> @@ -1419,6 +1498,24 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
>   		.cpu_enable = cpu_clear_disr,
>   	},
>   #endif /* CONFIG_ARM64_RAS_EXTN */
> +#ifdef CONFIG_ARM64_AMU_EXTN
> +	{
> +		/*
> +		 * The feature is enabled by default if CONFIG_ARM64_AMU_EXTN=y.
> +		 * Therefore, don't provide .desc as we don't want the detection
> +		 * message to be shown until at least one CPU is detected to
> +		 * support the feature.
> +		 */
> +		.capability = ARM64_HAS_AMU_EXTN,
> +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> +		.matches = has_amu,
> +		.sys_reg = SYS_ID_AA64PFR0_EL1,
> +		.sign = FTR_UNSIGNED,
> +		.field_pos = ID_AA64PFR0_AMU_SHIFT,
> +		.min_field_value = ID_AA64PFR0_AMU,
> +		.cpu_enable = cpu_amu_enable,
> +	},
> +#endif /* CONFIG_ARM64_AMU_EXTN */
>   	{
>   		.desc = "Data cache clean to the PoU not required for I/D coherence",
>   		.capability = ARM64_HAS_CACHE_IDC,
> 


Thanks
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
