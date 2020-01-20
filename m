Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50020142E13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FrW2tzykZyH8StqBRpT3nK49Y8fDOANvTRrcWU4E+KA=; b=W8jUrp0wGHGbAeyMN5jEsNl9u
	kxNT55kKoCB/IUWIsO1bVui/4QUrUiclydkUygtxb5WB2pbZuhkYMFDs0hhrID6Vh0yVGb0olOk+C
	Gv+e/tHMMg68nOe6kxQdMhHOM98pmELtHqdBRc1FHFTfiYw0NdDy4pCYfo6uSsA6hdsEhckpowtZA
	Sm3sNUDwQOdbm/bxvuMEqwcv+36Psz5GmjCCo6dTiKU65rVvDFVOsAcRlwjNdTQtQZKzSZS6M1mjA
	feTg1sUCJoH5SdO3YawCtlYNQ/NeN7S3Hc3Bb+avYZCICLaPkPWLsVvBuhUGL2bXbRQ5CWCwE8H29
	KCL2GCZrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYPt-000522-Kp; Mon, 20 Jan 2020 14:52:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYPe-000500-K5; Mon, 20 Jan 2020 14:52:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2545930E;
 Mon, 20 Jan 2020 06:52:20 -0800 (PST)
Received: from [10.37.12.169] (unknown [10.37.12.169])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D71C33F52E;
 Mon, 20 Jan 2020 06:52:09 -0800 (PST)
Subject: Re: [PATCH 1/4] PM / EM: and devices to Energy Model
To: Quentin Perret <qperret@google.com>
References: <20200116152032.11301-1-lukasz.luba@arm.com>
 <20200116152032.11301-2-lukasz.luba@arm.com>
 <20200117105437.GA211774@google.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <40587d98-0e8d-cbac-dbf5-d26501d47a8c@arm.com>
Date: Mon, 20 Jan 2020 14:52:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200117105437.GA211774@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_065222_747034_30382638 
X-CRM114-Status: GOOD (  22.40  )
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
Cc: nm@ti.com, juri.lelli@redhat.com, daniel.lezcano@linaro.org,
 peterz@infradead.org, viresh.kumar@linaro.org, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, khilman@kernel.org,
 agross@kernel.org, b.zolnierkie@samsung.com, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, linux-imx@nxp.com,
 rui.zhang@intel.com, kernel-team@android.com, mgorman@suse.de, daniel@ffwll.ch,
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, shawnguo@kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, ionela.voinescu@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Quentin,

On 1/17/20 10:54 AM, Quentin Perret wrote:
> Hey Lukasz,
> 
> Still reading through this, but with small changes, this looks pretty
> good to me.
> 
> On Thursday 16 Jan 2020 at 15:20:29 (+0000), lukasz.luba@arm.com wrote:
>> +int em_register_perf_domain(struct device *dev, unsigned int nr_states,
>> +			struct em_data_callback *cb)
>>   {
>>   	unsigned long cap, prev_cap = 0;
>>   	struct em_perf_domain *pd;
>> -	int cpu, ret = 0;
>> +	struct em_device *em_dev;
>> +	cpumask_t *span = NULL;
>> +	int cpu, ret;
>>   
>> -	if (!span || !nr_states || !cb)
>> +	if (!dev || !nr_states || !cb || !cb->active_power)
> 
> Nit: you check !cb->active_power in em_create_pd() too I think, so only
> one of the two is needed.

good point, thanks

> 
>>   		return -EINVAL;
>>   
>> -	/*
>> -	 * Use a mutex to serialize the registration of performance domains and
>> -	 * let the driver-defined callback functions sleep.
>> -	 */
>>   	mutex_lock(&em_pd_mutex);
>>   
>> -	for_each_cpu(cpu, span) {
>> -		/* Make sure we don't register again an existing domain. */
>> -		if (READ_ONCE(per_cpu(em_data, cpu))) {
>> +	if (_is_cpu_device(dev)) {
>> +		span = kzalloc(cpumask_size(), GFP_KERNEL);
>> +		if (!span) {
>> +			mutex_unlock(&em_pd_mutex);
>> +			return -ENOMEM;
>> +		}
>> +
>> +		ret = dev_pm_opp_get_sharing_cpus(dev, span);
>> +		if (ret)
>> +			goto free_cpumask;
> 
> That I think should be changed. This creates some dependency on PM_OPP
> for the EM framework. And in fact, the reason we came up with PM_EM was
> precisely to not depend on PM_OPP which was deemed too Arm-specific.
> 
> Suggested alternative: have two registration functions like so:
> 
> 	int em_register_dev_pd(struct device *dev, unsigned int nr_states,
> 			       struct em_data_callback *cb);
> 	int em_register_cpu_pd(cpumask_t *span, unsigned int nr_states,
> 			       struct em_data_callback *cb);

Interesting, in the internal review Dietmar asked me to remove these two
functions. I had the same idea, which would simplify a bit the
registration and it does not need to check the dev->bus if it is CPU.

Unfortunately, we would need also two function in drivers/opp/of.c:
dev_pm_opp_of_register_cpu_em(policy->cpus);
and
dev_pm_opp_of_register_dev_em(dev);

Thus, I have created only one registration function, which you can see
in this patch set.

What do you think Dietmar?

> 
> where em_register_cpu_pd() does the CPU-specific work and then calls
> em_register_dev_pd() (instead of having that big if (_is_cpu_device(dev))
> as you currently have). Would that work ?

Yes, I think you made a good point with this OPP dependency, which we
could avoid when we implement these two registration functions.

> 
> Another possibility would be to query CPUFreq instead of PM_OPP to get
> the mask, but I'd need to look again at the driver registration path in
> CPUFreq to see if the policy masks have been populated when we enter
> PM_EM ... I am not sure if this is the case, but it's worth having a
> look too.

The policy mask is populated, our registration function is called at
the end of the init code of CPUfreq drivers. I will check this option.

> 
> Thanks,
> Quentin
> 

Thank you for your comments.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
