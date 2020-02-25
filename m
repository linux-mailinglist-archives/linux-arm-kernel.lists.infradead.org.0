Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FEE16BE1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aRLd0E6b2saBHYKKhGSArbNaRbXgykA1ucINF6SzlgY=; b=BEornQPg73KQ59aESbaRDz3kZ
	0cq0T/n3gWo6o7xfxydHJyYCtILMeGKW+HwjpPv1N7fIkXQUkS8jsHah8CSUUmujU8gCczy43JtAb
	C18dPBfDzOgQ+VNU2jC6RLPbnMhObHnZXqXjHZXtkBEFZXBU9ASF0AxbZOnNVt8H2d45lDE2EjKf7
	SSqb8tEQK+DjWb8F9tp7nfib2I2pw6gplN+8aktxhQDf6+PVfN5UpSNT7Pdt9Xa5J9V1iV68mbYvi
	1xYfF5RKwwhZOAV3osXneLFBzplLvcpd988Uw440gTNPN+1OgbGbjnwv/cvhPCYC4dZehS03PzeWr
	AiCo0U1dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6X04-0001R3-PV; Tue, 25 Feb 2020 09:59:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Wzw-0001QS-0r
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:59:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A46E230E;
 Tue, 25 Feb 2020 01:59:26 -0800 (PST)
Received: from [10.37.12.155] (unknown [10.37.12.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B6BFF3F6CF;
 Tue, 25 Feb 2020 01:59:22 -0800 (PST)
Subject: Re: [PATCH v4 6/7] arm64: use activity monitors for frequency
 invariance
To: Valentin Schneider <valentin.schneider@arm.com>,
 Ionela Voinescu <ionela.voinescu@arm.com>
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-7-ionela.voinescu@arm.com> <jhjmu97ygk9.fsf@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <18604cef-1e26-96a6-38b3-ab03b1b53b48@arm.com>
Date: Tue, 25 Feb 2020 09:59:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <jhjmu97ygk9.fsf@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_015928_152348_5CED10D3 
X-CRM114-Status: GOOD (  18.00  )
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
 mingo@redhat.com, viresh.kumar@linaro.org, sudeep.holla@arm.com,
 will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/24/20 6:40 PM, Valentin Schneider wrote:
> 
> Ionela Voinescu writes:
> 
>> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>> Cc: Will Deacon <will@kernel.org>
>> Cc: Sudeep Holla <sudeep.holla@arm.com>
> 
> With the small nits below:
> 
> Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>
> 
>> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
>> index fa9528dfd0ce..7606cbd63517 100644
>> --- a/arch/arm64/kernel/topology.c
>> +++ b/arch/arm64/kernel/topology.c
>> +
>> +static inline int
> 
> That should be bool, seeing what it returns.
> 
>> +enable_policy_freq_counters(int cpu, cpumask_var_t valid_cpus)
>> +{
>> +	struct cpufreq_policy *policy = cpufreq_cpu_get(cpu);
>> +
>> +	if (!policy) {
>> +		pr_debug("CPU%d: No cpufreq policy found.\n", cpu);
>> +		return false;
>> +	}
>> +
>> +	if (cpumask_subset(policy->related_cpus, valid_cpus))
>> +		cpumask_or(amu_fie_cpus, policy->related_cpus,
>> +			   amu_fie_cpus);
>> +
>> +	cpufreq_cpu_put(policy);
>> +
>> +	return true;
>> +}
>> diff --git a/drivers/base/arch_topology.c b/drivers/base/arch_topology.c
>> index 1eb81f113786..1ab2b7503d63 100644
>> --- a/drivers/base/arch_topology.c
>> +++ b/drivers/base/arch_topology.c
>> @@ -29,6 +29,14 @@ void arch_set_freq_scale(struct cpumask *cpus, unsigned long cur_freq,
>>        unsigned long scale;
>>        int i;
>>
>> +	/*
>> +	 * If the use of counters for FIE is enabled, just return as we don't
>> +	 * want to update the scale factor with information from CPUFREQ.
>> +	 * Instead the scale factor will be updated from arch_scale_freq_tick.
>> +	 */
>> +	if (arch_cpu_freq_counters(cpus))
>> +		return;
>> +
>>        scale = (cur_freq << SCHED_CAPACITY_SHIFT) / max_freq;
>>
>>        for_each_cpu(i, cpus)
>> diff --git a/include/linux/topology.h b/include/linux/topology.h
>> index eb2fe6edd73c..397aad6ae163 100644
>> --- a/include/linux/topology.h
>> +++ b/include/linux/topology.h
>> @@ -227,5 +227,12 @@ static inline const struct cpumask *cpu_cpu_mask(int cpu)
>>        return cpumask_of_node(cpu_to_node(cpu));
>>   }
>>
>> +#ifndef arch_cpu_freq_counters
>> +static __always_inline
>> +bool arch_cpu_freq_counters(struct cpumask *cpus)
>> +{
>> +	return false;
>> +}
>> +#endif
>>
> 
> Apologies for commenting on this only now, I had missed it in my earlier
> round of review.
> 
> I would've liked to keep this contained within arm64 stuff until we agreed
> on a more generic counter-driven FIE interface, but seems like we can't evade
> it due to the arch_topology situation.
> 
> Would it make sense to relocate this stub to arch_topology.h instead, at
> least for the time being? That way the only non-arm64 changes are condensed
> in arch_topology (even if it doesn't change much in terms of header files,
> since topology.h imports arch_topology.h)

Or make it as a 'weak' and place it just above the arch_set_freq_scale()
in arch_topology.c, not touching headers?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
