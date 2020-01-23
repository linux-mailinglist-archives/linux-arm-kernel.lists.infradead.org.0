Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EDF14673A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:50:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/eeE9YecxFuDRZxAC8LP2d1nZRzNOlum0oin/HTTCdY=; b=osDfOVsBk7rRJPccUOJPTK5sN
	48OocL1gVFXtFZQCeKi9x3BnBGguxJl1rehjmxOgFXLUtI/SyhZ26D40+6TwAkN8MNGqeRwDERgid
	Vx9z0vWLYjAjHQu3OH97uxXpylQbuMwKm7mlNrDD0FEr2Qirx2Ha2pSi4/dvRdhQSnQjSWmYfcExZ
	ZfCnlY/Y6BPmu9TAGXVcETN53k47kA6fVoOwAxMwdGxugWDrUt9o6wHv2JeYvl8vGCQOJqXLa7wLj
	qGubuahUpWmfOndaQfNd8886iPkd3IOmHrGLjoe0HYAkL6DIhbu1RVmc3oY6PTspIZoEvWwI75n9y
	2LOULlr7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuazg-00054N-JW; Thu, 23 Jan 2020 11:49:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuazR-00053U-RT
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:49:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 24C03328;
 Thu, 23 Jan 2020 03:49:35 -0800 (PST)
Received: from [10.37.12.160] (unknown [10.37.12.160])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E5E53F6C4;
 Thu, 23 Jan 2020 03:49:31 -0800 (PST)
From: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
To: Ionela Voinescu <ionela.voinescu@arm.com>, catalin.marinas@arm.com,
 will@kernel.org, mark.rutland@arm.com, maz@kernel.org,
 suzuki.poulose@arm.com, sudeep.holla@arm.com, dietmar.eggemann@arm.com
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
Message-ID: <0ca05a2d-918b-0c70-6dc6-ef1f5f58f388@arm.com>
Date: Thu, 23 Jan 2020 11:49:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191218182607.21607-7-ionela.voinescu@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_034937_976710_0A27C579 
X-CRM114-Status: GOOD (  39.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

Please find my few comments below.

On 12/18/19 6:26 PM, Ionela Voinescu wrote:
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
>   - CONFIG_ARM64_AMU_EXTN - depents on the AMU extension being present
>   - CONFIG_CPU_FREQ - the current frequency obtained using counter
>     information is divided by the maximum frequency obtained from the
>     cpufreq policy.
> 
> While it is possible to have a combination of CPUs in the system with
> and without support for activity monitors, the use of counters for
> frequency invariance is only enabled for a CPU, if all related CPUs
> (CPUs in the same frequency domain) support and have enabled the core

This looks like an edge case scenario, for which we are designing the
whole machinery with workqueues. AFAIU we cannot run the code in
arch_set_freq_scale() and you want to be check all CPUs upfront.

Maybe you can just wait till all CPUs boot and then set the proper
flags and finish initialization. Something like:
per_cpu(s8, amu_feat) /* form the patch 1/6 */
OR
per_cpu(u8, amu_scale_freq) /* from this patch */
with maybe some values:
0 - not checked yet
1 - checked and present
-1 - checked and not available
-2 - checked but in conflict with others in the freq domain
-3..-k - other odd configurations

could potentially eliminate the need of workqueues.

Then, if we could trigger this from i.e. late_initcall, the CPUs
should be online and you can validate them.

> and constant activity monitor counters. In this way, there is a clear
> separation between the policies for which arch_set_freq_scale
> (cpufreq based FIE) is used, and the policies for which
> arch_scale_freq_tick (counter based FIE) is used to set the frequency
> scale factor. For this purpose, a cpufreq notifier is registered to
> trigger validation work for CPUs and policies at policy creation that
> will enable or disable the use of AMU counters for frequency invariance.
> 
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   arch/arm64/include/asm/topology.h |   9 ++
>   arch/arm64/kernel/topology.c      | 233 ++++++++++++++++++++++++++++++
>   drivers/base/arch_topology.c      |  16 ++
>   3 files changed, 258 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/topology.h b/arch/arm64/include/asm/topology.h
> index a4d945db95a2..98412dd27565 100644
> --- a/arch/arm64/include/asm/topology.h
> +++ b/arch/arm64/include/asm/topology.h
> @@ -19,6 +19,15 @@ int pcibus_to_node(struct pci_bus *bus);
>   /* Replace task scheduler's default frequency-invariant accounting */
>   #define arch_scale_freq_capacity topology_get_freq_scale
>   
> +#if defined(CONFIG_ARM64_AMU_EXTN) && defined(CONFIG_CPU_FREQ)
> +void topology_scale_freq_tick(void);
> +/*
> + * Replace task scheduler's default counter-based frequency-invariance
> + * scale factor setting.
> + */
> +#define arch_scale_freq_tick topology_scale_freq_tick
> +#endif
> +
>   /* Replace task scheduler's default cpu-invariant accounting */
>   #define arch_scale_cpu_capacity topology_get_cpu_scale
>   
> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
> index fa9528dfd0ce..61f8264afec9 100644
> --- a/arch/arm64/kernel/topology.c
> +++ b/arch/arm64/kernel/topology.c
> @@ -14,6 +14,7 @@
>   #include <linux/acpi.h>
>   #include <linux/arch_topology.h>
>   #include <linux/cacheinfo.h>
> +#include <linux/cpufreq.h>
>   #include <linux/init.h>
>   #include <linux/percpu.h>
>   
> @@ -120,4 +121,236 @@ int __init parse_acpi_topology(void)
>   }
>   #endif
>   
> +#if defined(CONFIG_ARM64_AMU_EXTN) && defined(CONFIG_CPU_FREQ)
>   
> +#undef pr_fmt
> +#define pr_fmt(fmt) "AMU: " fmt
> +
> +static void init_fie_counters_done_workfn(struct work_struct *work);
> +static DECLARE_WORK(init_fie_counters_done_work,
> +		    init_fie_counters_done_workfn);
> +
> +static struct workqueue_struct *policy_amu_fie_init_wq;
> +static struct workqueue_struct *cpu_amu_fie_init_wq;
> +
> +struct cpu_amu_work {
> +	struct work_struct cpu_work;
> +	struct work_struct policy_work;
> +	unsigned int cpuinfo_max_freq;
> +	struct cpumask policy_cpus;
> +	bool cpu_amu_fie;
> +};
> +static struct cpu_amu_work __percpu *works;
> +static cpumask_var_t cpus_to_visit;
> +
> +static DEFINE_PER_CPU_READ_MOSTLY(unsigned long, arch_max_freq_scale);
> +static DEFINE_PER_CPU(u64, arch_const_cycles_prev);
> +static DEFINE_PER_CPU(u64, arch_core_cycles_prev);
> +DECLARE_PER_CPU(u8, amu_scale_freq);
> +
> +static void cpu_amu_fie_init_workfn(struct work_struct *work)
> +{
> +	u64 core_cnt, const_cnt, ratio;
> +	struct cpu_amu_work *amu_work;
> +	int cpu = smp_processor_id();
> +
> +	if (!cpu_has_amu_feat()) {
> +		pr_debug("CPU%d: counters are not supported.\n", cpu);
> +		return;
> +	}
> +
> +	core_cnt = read_sysreg_s(SYS_AMEVCNTR0_CORE_EL0);
> +	const_cnt = read_sysreg_s(SYS_AMEVCNTR0_CONST_EL0);
> +
> +	if (unlikely(!core_cnt || !const_cnt)) {
> +		pr_err("CPU%d: cycle counters are not enabled.\n", cpu);
> +		return;
> +	}
> +
> +	amu_work = container_of(work, struct cpu_amu_work, cpu_work);
> +	if (unlikely(!(amu_work->cpuinfo_max_freq))) {
> +		pr_err("CPU%d: invalid maximum frequency.\n", cpu);
> +		return;
> +	}
> +
> +	/*
> +	 * Pre-compute the fixed ratio between the frequency of the
> +	 * constant counter and the maximum frequency of the CPU (hz).
> +	 */
> +	ratio = (u64)arch_timer_get_rate() << (2 * SCHED_CAPACITY_SHIFT);
> +	ratio = div64_u64(ratio, amu_work->cpuinfo_max_freq * 1000);
> +	this_cpu_write(arch_max_freq_scale, (unsigned long)ratio);
> +
> +	this_cpu_write(arch_core_cycles_prev, core_cnt);
> +	this_cpu_write(arch_const_cycles_prev, const_cnt);
> +	amu_work->cpu_amu_fie = true;
> +}
> +
> +static void policy_amu_fie_init_workfn(struct work_struct *work)
> +{
> +	struct cpu_amu_work *amu_work;
> +	u8 enable;
> +	int cpu;
> +
> +	amu_work = container_of(work, struct cpu_amu_work, policy_work);
> +
> +	flush_workqueue(cpu_amu_fie_init_wq);
> +
> +	for_each_cpu(cpu, &amu_work->policy_cpus)
> +		if (!(per_cpu_ptr(works, cpu)->cpu_amu_fie))
> +			break;
> +
> +	enable = (cpu >= nr_cpu_ids) ? 1 : 0;
> +
> +	for_each_cpu(cpu, &amu_work->policy_cpus)
> +		per_cpu(amu_scale_freq, cpu) = enable;
> +
> +	pr_info("CPUs[%*pbl]: counters %s be used for FIE.",
> +		cpumask_pr_args(&amu_work->policy_cpus),
> +		enable ? "will" : "WON'T");
> +}
> +
> +static int init_fie_counters_callback(struct notifier_block *nb,
> +				      unsigned long val,
> +				      void *data)
> +{
> +	struct cpufreq_policy *policy = data;
> +	struct cpu_amu_work *work;
> +	int cpu;
> +
> +	if (val != CPUFREQ_CREATE_POLICY)
> +		return 0;
> +
> +	/* Return if not all related CPUs are online */
> +	if (!cpumask_equal(policy->cpus, policy->related_cpus)) {
> +		pr_info("CPUs[%*pbl]: counters WON'T be used for FIE.",
> +			cpumask_pr_args(policy->related_cpus));
> +		return 0;
> +	}
> +
> +	/*
> +	 * Queue functions on all online CPUs from policy to:
> +	 *  - Check support and enablement for AMU counters
> +	 *  - Store system freq to max freq ratio per cpu
> +	 *  - Flag CPU as valid for use of counters for FIE
> +	 */
> +	for_each_cpu(cpu, policy->cpus) {
> +		work = per_cpu_ptr(works, cpu);
> +		work->cpuinfo_max_freq = policy->cpuinfo.max_freq;
> +		work->cpu_amu_fie = false;
> +		INIT_WORK(&work->cpu_work, cpu_amu_fie_init_workfn);
> +		queue_work_on(cpu, cpu_amu_fie_init_wq, &work->cpu_work);
> +	}
> +
> +	/*
> +	 * Queue function to validate support at policy level:
> +	 *  - Flush all work on online policy CPUs
> +	 *  - Verify that all online policy CPUs are flagged as
> +	 *    valid for use of counters for FIE
> +	 *  - Enable or disable use of counters for FIE on CPUs
> +	 */
> +	work = per_cpu_ptr(works, cpumask_first(policy->cpus));
> +	cpumask_copy(&work->policy_cpus, policy->cpus);
> +	INIT_WORK(&work->policy_work, policy_amu_fie_init_workfn);
> +	queue_work(policy_amu_fie_init_wq, &work->policy_work);
> +
> +	cpumask_andnot(cpus_to_visit, cpus_to_visit, policy->cpus);
> +	if (cpumask_empty(cpus_to_visit))
> +		schedule_work(&init_fie_counters_done_work);
> +
> +	return 0;
> +}
> +
> +static struct notifier_block init_fie_counters_notifier = {
> +	.notifier_call = init_fie_counters_callback,
> +};
> +
> +static void init_fie_counters_done_workfn(struct work_struct *work)
> +{
> +	cpufreq_unregister_notifier(&init_fie_counters_notifier,
> +				    CPUFREQ_POLICY_NOTIFIER);
> +
> +	/*
> +	 * Destroy policy_amu_fie_init_wq first to ensure all policy
> +	 * work is finished, which includes flushing of the per-CPU
> +	 * work, before cpu_amu_fie_init_wq is destroyed.
> +	 */
> +	destroy_workqueue(policy_amu_fie_init_wq);
> +	destroy_workqueue(cpu_amu_fie_init_wq);
> +
> +	free_percpu(works);
> +	free_cpumask_var(cpus_to_visit);
> +}
> +
> +static int __init register_fie_counters_cpufreq_notifier(void)
> +{
> +	int ret = -ENOMEM;
> +
> +	if (!alloc_cpumask_var(&cpus_to_visit, GFP_KERNEL))
> +		goto out;
> +
> +	cpumask_copy(cpus_to_visit, cpu_possible_mask);
> +
> +	cpu_amu_fie_init_wq = create_workqueue("cpu_amu_fie_init_wq");
> +	if (!cpu_amu_fie_init_wq)
> +		goto free_cpumask;
> +
> +	policy_amu_fie_init_wq = create_workqueue("policy_amu_fie_init_wq");
> +	if (!cpu_amu_fie_init_wq)
> +		goto free_cpu_wq;
> +
> +	works = alloc_percpu(struct cpu_amu_work);
> +	if (!works)
> +		goto free_policy_wq;
> +
> +	ret = cpufreq_register_notifier(&init_fie_counters_notifier,
> +					CPUFREQ_POLICY_NOTIFIER);
> +	if (ret)
> +		goto free_works;
> +
> +	return 0;
> +
> +free_works:
> +	free_percpu(works);
> +free_policy_wq:
> +	destroy_workqueue(policy_amu_fie_init_wq);
> +free_cpu_wq:
> +	destroy_workqueue(cpu_amu_fie_init_wq);
> +free_cpumask:
> +	free_cpumask_var(cpus_to_visit);
> +out:
> +	return ret;
> +}
> +core_initcall(register_fie_counters_cpufreq_notifier);

If we move it to a bit later stage maybe it could solve the
issue with not-all-CPUs-online? Is it needed at this stage?
The device_initcall or late_initcall is not an option for it?


> +
> +void topology_scale_freq_tick(void)
> +{
> +	u64 prev_core_cnt, prev_const_cnt;
> +	u64 core_cnt, const_cnt, scale;
> +
> +	if (!this_cpu_read(amu_scale_freq))
> +		return;
> +
> +	const_cnt = read_sysreg_s(SYS_AMEVCNTR0_CONST_EL0);
> +	core_cnt = read_sysreg_s(SYS_AMEVCNTR0_CORE_EL0);
> +	prev_const_cnt = this_cpu_read(arch_const_cycles_prev);
> +	prev_core_cnt = this_cpu_read(arch_core_cycles_prev);
> +
> +	if (unlikely(core_cnt <= prev_core_cnt ||
> +		     const_cnt <= prev_const_cnt))
> +		goto store_and_exit;
> +
> +	scale = core_cnt - prev_core_cnt;
> +	scale *= this_cpu_read(arch_max_freq_scale);
> +	scale = div64_u64(scale >> SCHED_CAPACITY_SHIFT,
> +			  const_cnt - prev_const_cnt);
> +
> +	scale = min_t(unsigned long, scale, SCHED_CAPACITY_SCALE);
> +	this_cpu_write(freq_scale, (unsigned long)scale);
> +
> +store_and_exit:
> +	this_cpu_write(arch_core_cycles_prev, core_cnt);
> +	this_cpu_write(arch_const_cycles_prev, const_cnt);
> +}
> +
> +#endif
> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
> index 1eb81f113786..3ae6091d845e 100644
> --- a/drivers/base/arch_topology.c
> +++ b/drivers/base/arch_topology.c
> @@ -23,12 +23,28 @@
>   
>   DEFINE_PER_CPU(unsigned long, freq_scale) = SCHED_CAPACITY_SCALE;
>   
> +#if defined(CONFIG_ARM64_AMU_EXTN) && defined(CONFIG_CPU_FREQ)
> +DEFINE_PER_CPU_READ_MOSTLY(u8, amu_scale_freq);
> +#endif
> +
>   void arch_set_freq_scale(struct cpumask *cpus, unsigned long cur_freq,
>   			 unsigned long max_freq)
>   {
>   	unsigned long scale;
>   	int i;
>   
> +#if defined(CONFIG_ARM64_AMU_EXTN) && defined(CONFIG_CPU_FREQ)

This kind of #ifdef is probably not the best option inside drivers/base/
The function is called from cpufreq drivers, could we react earlier
and keep this function untouched?


> +	/*
> +	 * This function will only be called from CPUFREQ drivers.
> +	 * If the use of counters for FIE is enabled, establish if a CPU,
> +	 * the first one, supports counters and if they are valid. If they
> +	 * are, just return as we don't want to update with information
> +	 * from CPUFREQ. In this case the scale factor will be updated
> +	 * from arch_scale_freq_tick.
> +	 */
> +	if (per_cpu(amu_scale_freq, cpumask_first(cpus)))
> +		return;
> +#endif
>   	scale = (cur_freq << SCHED_CAPACITY_SHIFT) / max_freq;
>   
>   	for_each_cpu(i, cpus)
> 


Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
