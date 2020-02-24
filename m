Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FAF16AF6B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GafVfZKhIvlByWlRhwCnfiOWIZtmtmcCHnGdcRfZ0Lo=; b=QexFg9AtVtN3V7S/YkImnKzqMq
	rcxomFMySjLttPD6Pi7/53RhPCG50kl+tydj7g4BUt1oGFG4z9oRCWZLR15QQfsm8AeIcS56y3PKD
	Fq2xc4o1VkUO6h+zeS1jqDZ3KX+8i8o1xbNYtxt4yJw3NtZNgC/9KPwaTDEneKn+/I/tzAEyhLC+z
	FHNZoB1dTmXO/UAc48itZm01Yp2UrJ2BkYH9mEOrh/oFlDOEdt1pK05XtDStPTTOdUSZLceUPJPyj
	5q5DNDYFfRHvFZ6e8Sx855awBpe1u/3+MslZAVfa7RxQPbeLGGlBrjE2GVw/ClBSK3bn/SuzxS62b
	GFyHyFIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Iey-0003vx-1j; Mon, 24 Feb 2020 18:40:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Iep-0003vE-De
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:40:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E67821FB;
 Mon, 24 Feb 2020 10:40:42 -0800 (PST)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B57113F703;
 Mon, 24 Feb 2020 10:40:40 -0800 (PST)
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-7-ionela.voinescu@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v4 6/7] arm64: use activity monitors for frequency
 invariance
In-reply-to: <20200224141142.25445-7-ionela.voinescu@arm.com>
Date: Mon, 24 Feb 2020 18:40:38 +0000
Message-ID: <jhjmu97ygk9.fsf@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_104043_542744_AB76EE7F 
X-CRM114-Status: GOOD (  12.54  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Ionela Voinescu writes:

> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

With the small nits below:

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
> index fa9528dfd0ce..7606cbd63517 100644
> --- a/arch/arm64/kernel/topology.c
> +++ b/arch/arm64/kernel/topology.c
> +
> +static inline int

That should be bool, seeing what it returns.

> +enable_policy_freq_counters(int cpu, cpumask_var_t valid_cpus)
> +{
> +	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
> +
> +	if (!policy) {
> +		pr_debug("CPU%d: No cpufreq policy found.\n", cpu);
> +		return false;
> +	}
> +
> +	if (cpumask_subset(policy->related_cpus, valid_cpus))
> +		cpumask_or(amu_fie_cpus, policy->related_cpus,
> +			   amu_fie_cpus);
> +
> +	cpufreq_cpu_put(policy);
> +
> +	return true;
> +}
> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 1eb81f113786..1ab2b7503d63 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -29,6 +29,14 @@ void arch_set_freq_scale(struct cpumask *cpus, unsigned long cur_freq,
>       unsigned long scale;
>       int i;
>
> +	/*
> +	 * If the use of counters for FIE is enabled, just return as we don't
> +	 * want to update the scale factor with information from CPUFREQ.
> +	 * Instead the scale factor will be updated from arch_scale_freq_tick.
> +	 */
> +	if (arch_cpu_freq_counters(cpus))
> +		return;
> +
>       scale = (cur_freq << SCHED_CAPACITY_SHIFT) / max_freq;
>
>       for_each_cpu(i, cpus)
> diff --git a/include/linux/topology.h b/include/linux/topology.h
> index eb2fe6edd73c..397aad6ae163 100644
> --- a/include/linux/topology.h
> +++ b/include/linux/topology.h
> @@ -227,5 +227,12 @@ static inline const struct cpumask *cpu_cpu_mask(int cpu)
>       return cpumask_of_node(cpu_to_node(cpu));
>  }
>
> +#ifndef arch_cpu_freq_counters
> +static __always_inline
> +bool arch_cpu_freq_counters(struct cpumask *cpus)
> +{
> +	return false;
> +}
> +#endif
>

Apologies for commenting on this only now, I had missed it in my earlier
round of review.

I would've liked to keep this contained within arm64 stuff until we agreed
on a more generic counter-driven FIE interface, but seems like we can't evade
it due to the arch_topology situation.

Would it make sense to relocate this stub to arch_topology.h instead, at
least for the time being? That way the only non-arm64 changes are condensed
in arch_topology (even if it doesn't change much in terms of header files,
since topology.h imports arch_topology.h)

>  #endif /* _LINUX_TOPOLOGY_H */

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
