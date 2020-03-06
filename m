Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B7917BC35
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:54:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsNb+rusZk0xRg+N0RQdXGededyUf3KFx5dtPnjPa+8=; b=u2XERr3uQBLVws
	mAcPx4mdGc+4udAMKHWjlaaTOoLIbgDa/L1MROVqht7Z3pC4ElSTWld1+Qz0cwJSYKMznx7/wL8Fn
	dPegyJGzsxjTSRDfQak0KJOFr2yXVkNw1ZSVSssTEXSthhVURKWfwyAYxkbcZPugQFXq8pp1bpxLC
	p/zQB3FR5w7c/PmE2UfuczVH3inDluGkx5F8weUETtGGvfznUY3JmhzMkKfrkxPUE88prhXHuu+bs
	JAzv924XpPsRKyZ1vY4kzt01AdLHwR7+i5Y6V8EvoVh9tvsxYJ5Ew4YsZah9vTULCPCpkA+M/frxn
	hQJussZ0I8wZLisnKddw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABYE-000231-9Y; Fri, 06 Mar 2020 11:53:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABY7-00021s-53
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 11:53:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4756F31B;
 Fri,  6 Mar 2020 03:53:49 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EFEAA3F6C4;
 Fri,  6 Mar 2020 03:53:46 -0800 (PST)
Date: Fri, 6 Mar 2020 11:53:41 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v6 6/7] arm64: use activity monitors for frequency
 invariance
Message-ID: <20200306115341.GA44221@bogus>
References: <20200305090627.31908-1-ionela.voinescu@arm.com>
 <20200305090627.31908-7-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305090627.31908-7-ionela.voinescu@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_035351_352651_C587A160 
X-CRM114-Status: GOOD (  28.25  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, pkondeti@codeaurora.org,
 catalin.marinas@arm.com, linux-pm@vger.kernel.org, linux-doc@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, dietmar.eggemann@arm.com,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, maz@kernel.org, will@kernel.org,
 valentin.schneider@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 09:06:26AM +0000, Ionela Voinescu wrote:
> The Frequency Invariance Engine (FIE) is providing a frequency
> scaling correction factor that helps achieve more accurate
> load-tracking.
>
> So far, for arm and arm64 platforms, this scale factor has been
> obtained based on the ratio between the current frequency and the
> maximum supported frequency recorded by the cpufreq policy. The
> setting of this scale factor is triggered from cpufreq drivers by
> calling arch_set_freq_scale. The current frequency used in computation
> is the frequency requested by a governor, but it may not be the
> frequency that was implemented by the platform.
>
> This correction factor can also be obtained using a core counter and a
> constant counter to get information on the performance (frequency based
> only) obtained in a period of time. This will more accurately reflect
> the actual current frequency of the CPU, compared with the alternative
> implementation that reflects the request of a performance level from
> the OS.
>
> Therefore, implement arch_scale_freq_tick to use activity monitors, if
> present, for the computation of the frequency scale factor.
>
> The use of AMU counters depends on:
>  - CONFIG_ARM64_AMU_EXTN - depents on the AMU extension being present
>  - CONFIG_CPU_FREQ - the current frequency obtained using counter
>    information is divided by the maximum frequency obtained from the
>    cpufreq policy.
>
> While it is possible to have a combination of CPUs in the system with
> and without support for activity monitors, the use of counters for
> frequency invariance is only enabled for a CPU if all related CPUs
> (CPUs in the same frequency domain) support and have enabled the core
> and constant activity monitor counters. In this way, there is a clear
> separation between the policies for which arch_set_freq_scale (cpufreq
> based FIE) is used, and the policies for which arch_scale_freq_tick
> (counter based FIE) is used to set the frequency scale factor. For
> this purpose, a late_initcall_sync is registered to trigger validation
> work for policies that will enable or disable the use of AMU counters
> for frequency invariance. If CONFIG_CPU_FREQ is not defined, the use
> of counters is enabled on all CPUs only if all possible CPUs correctly
> support the necessary counters.
>
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/arm64/include/asm/topology.h |   9 ++
>  arch/arm64/kernel/cpufeature.c    |   4 +
>  arch/arm64/kernel/topology.c      | 180 ++++++++++++++++++++++++++++++
>  drivers/base/arch_topology.c      |  12 ++
>  include/linux/arch_topology.h     |   2 +
>  5 files changed, 207 insertions(+)
>

[...]

> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 6119e11a9f95..8d63673c1689 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -21,6 +21,10 @@
>  #include <linux/sched.h>
>  #include <linux/smp.h>
>
> +__weak bool arch_freq_counters_available(struct cpumask *cpus)
> +{
> +	return false;
> +}
>  DEFINE_PER_CPU(unsigned long, freq_scale) = SCHED_CAPACITY_SCALE;
>
>  void arch_set_freq_scale(struct cpumask *cpus, unsigned long cur_freq,
> @@ -29,6 +33,14 @@ void arch_set_freq_scale(struct cpumask *cpus, unsigned long cur_freq,
>  	unsigned long scale;
>  	int i;
>
> +	/*
> +	 * If the use of counters for FIE is enabled, just return as we don't
> +	 * want to update the scale factor with information from CPUFREQ.
> +	 * Instead the scale factor will be updated from arch_scale_freq_tick.
> +	 */
> +	if (arch_freq_counters_available(cpus))
> +		return;
> +
>  	scale = (cur_freq << SCHED_CAPACITY_SHIFT) / max_freq;
>
>  	for_each_cpu(i, cpus)
> diff --git a/include/linux/arch_topology.h b/include/linux/arch_topology.h
> index 3015ecbb90b1..1ccdddb541a7 100644
> --- a/include/linux/arch_topology.h
> +++ b/include/linux/arch_topology.h
> @@ -33,6 +33,8 @@ unsigned long topology_get_freq_scale(int cpu)
>  	return per_cpu(freq_scale, cpu);
>  }
>
> +bool arch_freq_counters_available(struct cpumask *cpus);
> +
>  struct cpu_topology {
>  	int thread_id;
>  	int core_id;

Sorry for the delay. The arch_topology part looks fine to me. For that part:

Acked-by: Sudeep Holla <sudeep.holla@arm.com>

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
