Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0726184CF1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 17:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sM1XS7TxhOz4IVGFcXfY9JDLF2yNNg0fxQHFgewdmGQ=; b=hEqIYaxikb3k3gcSveMWCc/bN
	cEohxUyyXAHEelOKD09d5RjMcvJMRX7jmrJ08tTLEcX23OLEWq+P0W/3ZnZAqPmSQ7nGDM6ez3dX2
	eUfhApuMpoabrRtLSbIBMS8J2KN/Mf8KX13CrNKvOPkjs+BxoVjyD7o+33/i6ntJ8K37dmQW0FZsK
	QkdlDbZaZZxMZAmVtpX1bPX7V3p+9rd8JB3UsZkhFtVli/KbJeNr5f/I3DbZqw1BUHyi6Iv0ngZRK
	J3bkb8AmrF7OIGeRO0tjNAF8jtmF7VRdks1L/FtmlzX2VqayvjKo5x9EFclRUPzGKDeGruAm5hO/s
	cNMveFszg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnVR-0004Ur-UJ; Fri, 13 Mar 2020 16:49:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnVD-0004Tp-1k; Fri, 13 Mar 2020 16:49:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79D8A31B;
 Fri, 13 Mar 2020 09:49:36 -0700 (PDT)
Received: from [10.37.12.40] (unknown [10.37.12.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 393343F534;
 Fri, 13 Mar 2020 09:49:26 -0700 (PDT)
Subject: Re: [PATCH v4 1/4] PM / EM: add devices to Energy Model
To: Quentin Perret <qperret@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-2-lukasz.luba@arm.com>
 <20200313100407.GA144499@google.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <bd1233f4-6e8b-23d1-e5aa-7c904fbd1bb3@arm.com>
Date: Fri, 13 Mar 2020 16:49:24 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200313100407.GA144499@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_094939_138095_0F57236C 
X-CRM114-Status: GOOD (  28.80  )
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Quentin,

On 3/13/20 10:04 AM, Quentin Perret wrote:
> Hi Lukasz,
> 
> On Monday 09 Mar 2020 at 13:41:14 (+0000), Lukasz Luba wrote:
> <snip>
>> diff --git a/drivers/opp/of.c b/drivers/opp/of.c
>> index 9cd8f0adacae..0efd6cf6d023 100644
>> --- a/drivers/opp/of.c
>> +++ b/drivers/opp/of.c
>> @@ -1047,9 +1047,8 @@ EXPORT_SYMBOL_GPL(dev_pm_opp_get_of_node);
>>    * calculation failed because of missing parameters, 0 otherwise.
>>    */
>>   static int __maybe_unused _get_cpu_power(unsigned long *mW, unsigned long *kHz,
>> -					 int cpu)
>> +					 struct device *cpu_dev)
>>   {
>> -	struct device *cpu_dev;
>>   	struct dev_pm_opp *opp;
>>   	struct device_node *np;
>>   	unsigned long mV, Hz;
>> @@ -1057,10 +1056,6 @@ static int __maybe_unused _get_cpu_power(unsigned long *mW, unsigned long *kHz,
>>   	u64 tmp;
>>   	int ret;
>>   
>> -	cpu_dev = get_cpu_device(cpu);
>> -	if (!cpu_dev)
>> -		return -ENODEV;
>> -
>>   	np = of_node_get(cpu_dev->of_node);
>>   	if (!np)
>>   		return -EINVAL;
>> @@ -1128,6 +1123,6 @@ void dev_pm_opp_of_register_em(struct cpumask *cpus)
>>   	if (ret || !cap)
>>   		return;
>>   
>> -	em_register_perf_domain(cpus, nr_opp, &em_cb);
>> +	em_register_perf_domain(cpu_dev, nr_opp, &em_cb, cpus);
> 
> Any reason for not checking the return value here ? You added a nice
> check in scmi_get_cpu_power(), perhaps do the same thing here ?

I have tried to avoid changing the function to 'return int' in this
patch. It is changed in the 2/4 where it gets the proper return.

The 2/4 patch touches a few drivers which use the function
dev_pm_opp_of_register_em(), mainly the new arguments, but also the
return type in one patch (for consistency). It would need some ACKs
from maintainers making sure to sync their trees with that patch
(to avoid getting merge conflicts at some late stages).

> 
>>   }
>>   EXPORT_SYMBOL_GPL(dev_pm_opp_of_register_em);
>> diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
>> index fe83d7a210d4..fcf2dab1b3b8 100644
>> --- a/drivers/thermal/cpufreq_cooling.c
>> +++ b/drivers/thermal/cpufreq_cooling.c
>> @@ -333,18 +333,18 @@ static inline bool em_is_sane(struct cpufreq_cooling_device *cpufreq_cdev,
>>   		return false;
>>   
>>   	policy = cpufreq_cdev->policy;
>> -	if (!cpumask_equal(policy->related_cpus, to_cpumask(em->cpus))) {
>> +	if (!cpumask_equal(policy->related_cpus, em_span_cpus(em))) {
>>   		pr_err("The span of pd %*pbl is misaligned with cpufreq policy %*pbl\n",
>> -			cpumask_pr_args(to_cpumask(em->cpus)),
>> +			cpumask_pr_args(em_span_cpus(em)),
>>   			cpumask_pr_args(policy->related_cpus));
>>   		return false;
>>   	}
>>   
>>   	nr_levels = cpufreq_cdev->max_level + 1;
>> -	if (em->nr_cap_states != nr_levels) {
>> +	if (em->nr_perf_states != nr_levels) {
>>   		pr_err("The number of cap states in pd %*pbl (%u) doesn't match the number of cooling levels (%u)\n",
> 
> s/cap states/performance states

missed it, thanks

> 
>> -			cpumask_pr_args(to_cpumask(em->cpus)),
>> -			em->nr_cap_states, nr_levels);
>> +			cpumask_pr_args(em_span_cpus(em)),
>> +			em->nr_perf_states, nr_levels);
>>   		return false;
>>   	}
> 
> <snip>
>> +static int em_create_perf_table(struct device *dev, struct em_perf_domain *pd,
>> +				int nr_states, struct em_data_callback *cb)
>>   {
>>   	unsigned long opp_eff, prev_opp_eff = ULONG_MAX;
>>   	unsigned long power, freq, prev_freq = 0;
>> -	int i, ret, cpu = cpumask_first(span);
>> -	struct em_cap_state *table;
>> -	struct em_perf_domain *pd;
>> +	struct em_perf_state *table;
>> +	int i, ret;
>>   	u64 fmax;
>>   
>> -	if (!cb->active_power)
>> -		return NULL;
>> -
>> -	pd = kzalloc(sizeof(*pd) + cpumask_size(), GFP_KERNEL);
>> -	if (!pd)
>> -		return NULL;
>> -
>>   	table = kcalloc(nr_states, sizeof(*table), GFP_KERNEL);
>>   	if (!table)
>> -		goto free_pd;
>> +		return -ENOMEM;
>>   
>> -	/* Build the list of capacity states for this performance domain */
>> +	/* Build the list of performance states for this performance domain */
>>   	for (i = 0, freq = 0; i < nr_states; i++, freq++) {
>>   		/*
>>   		 * active_power() is a driver callback which ceils 'freq' to
>> -		 * lowest capacity state of 'cpu' above 'freq' and updates
>> +		 * lowest performance state of 'dev' above 'freq' and updates
>>   		 * 'power' and 'freq' accordingly.
>>   		 */
>> -		ret = cb->active_power(&power, &freq, cpu);
>> +		ret = cb->active_power(&power, &freq, dev);
>>   		if (ret) {
>> -			pr_err("pd%d: invalid cap. state: %d\n", cpu, ret);
>> +			dev_err(dev, "EM: invalid perf. state: %d\n",
>> +				ret);
> 
> Not easy to figure out which device has a problem with this. I'm
> guessing you went that way since this is called before ida_simple_get() ?

Yes we now have pd0, for cpu0, but pd1 for i.e. cpu4

> Could that be refactored to make the error message more useful ?

So I have changed this in all palaces for consistency, not worrying
about the 'pdID'. I thought getting ID earlier an then making cleanup
code just for debug print purpose is probably not helping much in
hunting the real problem if it occur, but cleaner code is better to
maintain.

We would have consistent information for which cpu device it occurred,
all the logs look the same:

[    5.391193] cpu cpu0: EM: hertz/watts ratio non-monotonically 
decreasing: em_perf_state 11 >= em_perf_state10
[    5.394230] cpu cpu0: EM: created perf domain pd0

and this one would look like:

[    5.391193] cpu cpu0: EM: invalid perf. state: -22


> 
>>   			goto free_cs_table;
>>   		}
> 
> <snip>
>> +/**
>> + * em_unregister_perf_domain() - Unregister Energy Model (EM) for the device
>> + * @dev		: Device for which the EM is registered
>> + *
>> + * Try to unregister the EM for the specified device (it checks current
>> + * reference counter). The EM for CPUs will not be freed.
>> + */
>> +void em_unregister_perf_domain(struct device *dev)
>> +{
>> +	struct em_device *em_dev, *tmp;
>> +
>> +	if (IS_ERR_OR_NULL(dev))
>> +		return;
>> +
>> +	/* We don't support freeing CPU structures in hotplug */
>> +	if (_is_cpu_device(dev))
>> +		return;
> 
> Can we WARN() here ?

Well if someone would add EM to its platform and call this in
hotplug, which is used as cooling method, will see a lot of warnings.
I would rather avoid stressing people with this kind of warnings.
This is under control and nothing really happens even when they
do hotplug very often, like LTP stress tests.

I agree to add a print there but warning for me is when something
is not OK and should be investigated.
I would prefer dev_dbg_once() to print thet the EM is not going to be
removed. This will also not pollute dmesg in many logs.

> 
>> +
>> +	mutex_lock(&em_pd_mutex);
>> +
>> +	if (list_empty(&em_pd_dev_list)) {
>> +		mutex_unlock(&em_pd_mutex);
>> +		return;
>> +	}
>> +
>> +	list_for_each_entry_safe(em_dev, tmp, &em_pd_dev_list, em_dev_list) {
>> +		if (em_dev->dev == dev) {
>> +			kref_put(&em_dev->kref, _em_release);
>> +			break;
>> +		}
>> +	}
>> +
>> +	mutex_unlock(&em_pd_mutex);
>> +}
>> +EXPORT_SYMBOL_GPL(em_unregister_perf_domain);
> 
> Otherwise this looks pretty good to me. So, with these small nits
> addressed:
> 
>    Acked-by: Quentin Perret <qperret@google.com>

Thank you for the ACK.

> 
> Thanks!
> Quentin
> 

So these small changes will be present in v5. I have to wait a few
days because there is one change to devfreq_cooling.c queuing and I will
send v5 with updated patch 3/4 rebased on top.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
