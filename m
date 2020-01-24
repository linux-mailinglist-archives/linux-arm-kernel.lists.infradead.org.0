Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68079147668
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 02:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YGfMOT+Whgt22vzAQKrC0bnZ7tHLqHbspvdVqwWCSHk=; b=bKFTaj/e05d6h0oP8ozG3NXph
	73vLAw2P5HlnXTHrLb/xtOFGkwinADQmamFwWjYoy47WImVguGA2TmgNR9cUbfRiW+3Xaor7uXu5t
	65kk8GaSyWg7uT3JtqpA14evyW2Kzc1KIu5j5NxXxnl3HG0tl7bl4aOvcA4dWvko2R8g+Ur7ctipe
	DVpWKWNV3T6TTSGlaHinUSpMbmVCHjpYZ9aWab4UNW58HORRFozaI2ggYaZIZ/fhbGPwq32XUp3gy
	pua4vGkb+JyFjN+Ohb1Uaaa8xvPEj/5kPjHy6ttGPoEDODmVKlPiHo0/YXYPtI7j3EkUo23gjkLRM
	NTPP6Q9Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iundX-0004GY-MI; Fri, 24 Jan 2020 01:19:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iundL-0004Fi-VQ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 01:19:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE6A6328;
 Thu, 23 Jan 2020 17:19:38 -0800 (PST)
Received: from [10.37.12.50] (unknown [10.37.12.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A0D2E3F68E;
 Thu, 23 Jan 2020 17:19:35 -0800 (PST)
Subject: Re: [PATCH v2 6/6] arm64: use activity monitors for frequency
 invariance
To: Ionela Voinescu <ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-7-ionela.voinescu@arm.com>
 <0ca05a2d-918b-0c70-6dc6-ef1f5f58f388@arm.com>
 <20200123170716.GA28719@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <bddfdb83-c6cb-a809-8781-80e1117a2d6c@arm.com>
Date: Fri, 24 Jan 2020 01:19:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200123170716.GA28719@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_171940_097973_C47C9302 
X-CRM114-Status: GOOD (  48.25  )
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 peterz@infradead.org, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 1/23/20 5:07 PM, Ionela Voinescu wrote:
> Hi Lukasz,
> 
> Thank you for taking a look over the patches.
> 
> On Thursday 23 Jan 2020 at 11:49:29 (+0000), Lukasz Luba wrote:
>> Hi Ionela,
>>
>> Please find my few comments below.
>>
>> On 12/18/19 6:26 PM, Ionela Voinescu wrote:
>>> The Frequency Invariance Engine (FIE) is providing a frequency
>>> scaling correction factor that helps achieve more accurate
>>> load-tracking.
>>>
>>> So far, for arm and arm64 platforms, this scale factor has been
>>> obtained based on the ratio between the current frequency and the
>>> maximum supported frequency recorded by the cpufreq policy. The
>>> setting of this scale factor is triggered from cpufreq drivers by
>>> calling arch_set_freq_scale. The current frequency used in computation
>>> is the frequency requested by a governor, but it may not be the
>>> frequency that was implemented by the platform.
>>>
>>> This correction factor can also be obtained using a core counter and a
>>> constant counter to get information on the performance (frequency based
>>> only) obtained in a period of time. This will more accurately reflect
>>> the actual current frequency of the CPU, compared with the alternative
>>> implementation that reflects the request of a performance level from
>>> the OS.
>>>
>>> Therefore, implement arch_scale_freq_tick to use activity monitors, if
>>> present, for the computation of the frequency scale factor.
>>>
>>> The use of AMU counters depends on:
>>>    - CONFIG_ARM64_AMU_EXTN - depents on the AMU extension being present
>>>    - CONFIG_CPU_FREQ - the current frequency obtained using counter
>>>      information is divided by the maximum frequency obtained from the
>>>      cpufreq policy.
>>>
>>> While it is possible to have a combination of CPUs in the system with
>>> and without support for activity monitors, the use of counters for
>>> frequency invariance is only enabled for a CPU, if all related CPUs
>>> (CPUs in the same frequency domain) support and have enabled the core
>>
>> This looks like an edge case scenario, for which we are designing the
>> whole machinery with workqueues. AFAIU we cannot run the code in
>> arch_set_freq_scale() and you want to be check all CPUs upfront.
>>
> 
> Unfortunately, I don't believe it to be be an edge-case. Given that this
> is an optional feature, I do believe that people might skip on
> implementing it on some CPUs(LITTLEs) while keeping it for CPUs(bigs)
> where power and thermal mitigation is more probable to happen in firmware.
> This is the main reason to be conservative in the validation of CPUs and
> cpufreq policies.
> 
> In regards to arch_set_freq_scale, I want to be able to tell, when that
> function is called, if I should return a scale factor based on cpufreq
> for the current policy. If activity monitors are useable for the CPUs in
> the full policy, than I'm bailing out and leave the AMU FIE machinery
> set the scale factor. Unfortunately this works at policy granularity.
> 
> This could  be done in a nicer way by setting the scale factor per cpu
> and not for all CPUs in a policy in this arch_set_freq_scale function.
> But this would require some rewriting for the full frequency invariance
> support in drivers which we've talked about for a while but it was not
> the purpose of this patch set. But it would eliminate the policy
> verification I do with the second workqueue.
> 
>> Maybe you can just wait till all CPUs boot and then set the proper
>> flags and finish initialization. Something like:
>> per_cpu(s8, amu_feat) /* form the patch 1/6 */
>> OR
>> per_cpu(u8, amu_scale_freq) /* from this patch */
>> with maybe some values:
>> 0 - not checked yet
>> 1 - checked and present
>> -1 - checked and not available
>> -2 - checked but in conflict with others in the freq domain
>> -3..-k - other odd configurations
>>
>> could potentially eliminate the need of workqueues.
>>
>> Then, if we could trigger this from i.e. late_initcall, the CPUs
>> should be online and you can validate them.
>>
> 
> I did initially give such a state machine a try but it proved to be
> quite messy. A big reason for this is that the activity monitors unit
> has multiple counters that can be used for different purposes.
> 
> The amu_feat per_cpu variable only flags that you have the AMU present
> for potential users (in this case FIE) to validate the counters they
> need for their respective usecase. For this reason I don't want to
> overload the meaning of amu_feat. For the same reason I'm not doing the
> validation of the counters in a generic way, but I'm tying it to the
> usecase for particular counters. For example, it would not matter if
> the instructions retired counter is not enabled from firmware for the
> usecase of FIE. For frequency invariance we only need the core and
> constant cycle counters and I'm making it the job of the user (arm64
> topology code) to do the checking.
> 
> Secondly, for amu_scale_freq I could have added such a state machine,
> but I did not think it was useful. The only thing it would change is
> that I would not have to use the cpu_amu_fie variable in the data
> structure that gets passed to the work functions. The only way I would
> eliminate the second workqueue was if I did not do a check of all CPUs
> in a policy, as described above, and rewrite frequency invariance to
> work at CPU granularity and not policy granularity. This would eliminate
> the dependency on cpufreq policy all-together, so it would be worth
> doing if only for this reason alone :).
> 
> But even in that case, it's probably not needed to have more than two
> states for amu_freq_scale.
> 
> What do you think?

I think currently we are the only users for this AMU and if there will
be another in the future, then we can start thinking about his proposed
changes. Let's cross that bridge when we come to it.

Regarding the code, in the arch/arm64/cpufeature.c you can already
read the cycle registers. All the CPUs are going through that code
during start. If you use this fact in the late_initcall() all CPUs
should be checked and you can just ask for cpufreq policy, calculate the 
max_freq ratio, set the per cpu config value to 'ready' state.

Something like in the code below, it is on top of your patch set.

------------------------>8-------------------------------------


diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index c639b3e052d7..837ea46d8867 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1168,19 +1168,26 @@ static bool has_hw_dbm(const struct 
arm64_cpu_capabilities *cap,
   * from the current cpu.
   *  - cpu_has_amu_feat()
   */
-static DEFINE_PER_CPU_READ_MOSTLY(u8, amu_feat);
-
-inline bool cpu_has_amu_feat(void)
-{
-	return !!this_cpu_read(amu_feat);
-}
+DECLARE_PER_CPU(u64, arch_const_cycles_prev);
+DECLARE_PER_CPU(u64, arch_core_cycles_prev);
+DECLARE_PER_CPU(u8, amu_scale_freq);

  static void cpu_amu_enable(struct arm64_cpu_capabilities const *cap)
  {
+	u64 core_cnt, const_cnt;
+
  	if (has_cpuid_feature(cap, SCOPE_LOCAL_CPU)) {
  		pr_info("detected CPU%d: Activity Monitors Unit (AMU)\n",
  			smp_processor_id());
-		this_cpu_write(amu_feat, 1);
+		core_cnt = read_sysreg_s(SYS_AMEVCNTR0_CORE_EL0);
+		const_cnt = read_sysreg_s(SYS_AMEVCNTR0_CONST_EL0);
+
+		this_cpu_write(arch_core_cycles_prev, core_cnt);
+		this_cpu_write(arch_const_cycles_prev, const_cnt);
+
+		this_cpu_write(amu_scale_freq, 1);
+	} else {
+		this_cpu_write(amu_scale_freq, 2);
  	}
  }

diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
index 61f8264afec9..95b34085ae64 100644
--- a/arch/arm64/kernel/topology.c
+++ b/arch/arm64/kernel/topology.c
@@ -144,8 +144,8 @@ static struct cpu_amu_work __percpu *works;
  static cpumask_var_t cpus_to_visit;

  static DEFINE_PER_CPU_READ_MOSTLY(unsigned long, arch_max_freq_scale);
-static DEFINE_PER_CPU(u64, arch_const_cycles_prev);
-static DEFINE_PER_CPU(u64, arch_core_cycles_prev);
+DEFINE_PER_CPU(u64, arch_const_cycles_prev);
+DEFINE_PER_CPU(u64, arch_core_cycles_prev);
  DECLARE_PER_CPU(u8, amu_scale_freq);

  static void cpu_amu_fie_init_workfn(struct work_struct *work)
@@ -323,12 +323,64 @@ static int __init 
register_fie_counters_cpufreq_notifier(void)
  }
  core_initcall(register_fie_counters_cpufreq_notifier);

+static int __init init_amu_feature(void)
+{
+	struct cpufreq_policy *policy;
+	struct cpumask *checked_cpus;
+	int count, total;
+	int cpu, i;
+	s8 amu_config;
+	u64 ratio;
+
+	checked_cpus = kzalloc(cpumask_size(), GFP_KERNEL);
+	if (!checked_cpus)
+		return -ENOMEM;
+
+	for_each_possible_cpu(cpu) {
+		if (cpumask_test_cpu(cpu, checked_cpus))
+			continue;
+
+		policy = cpufreq_cpu_get(cpu);
+		if (!policy) {
+			pr_warn("No cpufreq policy found for CPU%d\n", cpu);
+			continue;
+		}
+
+		count = total = 0;
+
+		for_each_cpu(i, policy->related_cpus) {
+			amu_config = per_cpu(amu_scale_freq, i);
+			if (amu_config == 1)
+				count++;
+			total++;
+		}
+
+		amu_config = (total == count) ? 3 : 4;
+
+		ratio = (u64)arch_timer_get_rate() << (2 * SCHED_CAPACITY_SHIFT);
+		ratio = div64_u64(ratio, policy->cpuinfo.max_freq * 1000);
+
+		for_each_cpu(i, policy->related_cpus) {
+			per_cpu(arch_max_freq_scale, i) = (unsigned long)ratio;
+			per_cpu(amu_scale_freq, i) = amu_config;
+			cpumask_set_cpu(i, checked_cpus);
+		}
+
+		cpufreq_cpu_put(policy);
+	}
+
+	kfree(checked_cpus);
+
+	return 0;
+}
+late_initcall(init_amu_feature);
+
  void topology_scale_freq_tick(void)
  {
  	u64 prev_core_cnt, prev_const_cnt;
  	u64 core_cnt, const_cnt, scale;

-	if (!this_cpu_read(amu_scale_freq))
+	if (this_cpu_read(amu_scale_freq) != 3)
  		return;

  	const_cnt = read_sysreg_s(SYS_AMEVCNTR0_CONST_EL0);


-------------------------8<------------------------------------

Regards,
Lukasz

> 
> Thank you,
> Ionela.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
