Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BED119F6F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=otSBcCibHRuLh5Uzky25E2bk14gx6QnltJ2/eFv1sIU=; b=ldytrzBFEMVEtik117UoHc+QW
	kHkQp0Fm/qmI2rtffATCWc9Tk3WopQTf+Wdvo3aNMoSm0o/Y+xJkch+Hbv+pbLf0oSxucQkcDdSGs
	fLkvSRK6L2HYuXsUoSU9p1rfeJECZg/N+PuuGnWa2+JSGSsoEDuKQIExfJjmuP5F10uv5UdL7HXdc
	JHxm4BB6DBgUEqAxK/8N2QEy2a0z5po/1SshA8perqRf0WYiUk+3wLDGuyXLe2JW2o/bccz/sEKua
	1ToGlEqlTJJJSGl9zWnR1BewCY48+sOHUEA56O5vAaXlbUwq0dAS1BW+SckJlZng/pT57HH+i7kYG
	CUPsJrDRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRpT-0001FB-84; Mon, 06 Apr 2020 13:30:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRpL-0000TE-Vr; Mon, 06 Apr 2020 13:30:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 313E231B;
 Mon,  6 Apr 2020 06:30:09 -0700 (PDT)
Received: from [10.37.12.4] (unknown [10.37.12.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC4473F7D8;
 Mon,  6 Apr 2020 06:29:58 -0700 (PDT)
Subject: Re: [PATCH v5 1/5] PM / EM: add devices to Energy Model
To: Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-omap@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-imx@nxp.com
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-2-lukasz.luba@arm.com>
 <09b680a5-a118-8c6e-0ae1-03ab5f10c573@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <cb7f670a-a04f-ba6f-1486-0421f3cce2e9@arm.com>
Date: Mon, 6 Apr 2020 14:29:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <09b680a5-a118-8c6e-0ae1-03ab5f10c573@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_063012_119729_2351BD5B 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, orjan.eide@arm.com, daniel@ffwll.ch,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de, rostedt@goodmis.org,
 matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com, airlied@linux.ie,
 javi.merino@arm.com, tomeu.vizoso@collabora.com, qperret@google.com,
 sboyd@kernel.org, mka@chromium.org, rdunlap@infradead.org, rjw@rjwysocki.net,
 agross@kernel.org, kernel@pengutronix.de, sudeep.holla@arm.com,
 patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

Thank you for the review.

On 4/3/20 5:05 PM, Daniel Lezcano wrote:
> 
> Hi Lukasz,
> 
> 
> On 18/03/2020 12:45, Lukasz Luba wrote:
>> Add support of other devices into the Energy Model framework not only the
>> CPUs. Change the interface to be more unified which can handle other
>> devices as well.
> 
> thanks for taking care of that. Overall I like the changes in this patch
> but it hard to review in details because the patch is too big :/
> 
> Could you split this patch into smaller ones?
> 
> eg. (at your convenience)
> 
>   - One patch renaming s/cap/perf/
> 
>   - One patch adding a new function:
> 
>      em_dev_register_perf_domain(struct device *dev,
> 				unsigned int nr_states,
> 				struct em_data_callback *cb);
> 
>     (+ EXPORT_SYMBOL_GPL)
> 
>      And em_register_perf_domain() using it.
> 
>   - One converting the em_register_perf_domain() user to
> 	em_dev_register_perf_domain
> 
>   - One adding the different new 'em' functions
> 
>   - And finally one removing em_register_perf_domain().

I agree and will do the split. I could also break the dependencies
for future easier merge.

> 
> 
>> Acked-by: Quentin Perret <qperret@google.com>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
>> ---
> 
> [ ... ]
> 
>>   2. Core APIs
>> @@ -70,14 +72,16 @@ CONFIG_ENERGY_MODEL must be enabled to use the EM framework.
>>   Drivers are expected to register performance domains into the EM framework by
>>   calling the following API::
>>   
>> -  int em_register_perf_domain(cpumask_t *span, unsigned int nr_states,
>> -			      struct em_data_callback *cb);
>> +  int em_register_perf_domain(struct device *dev, unsigned int nr_states,
>> +		struct em_data_callback *cb, cpumask_t *cpus);
> 
> Isn't possible to get rid of this cpumask by using
> cpufreq_cpu_get() which returns the cpufreq's policy and from their get
> the related cpus ?

We had similar thoughts with Quentin and I've checked this.
Unfortunately, if the policy is a 'new policy' [1] it gets
allocated and passed into cpufreq driver ->init(policy) [2].
Then that policy is set into per_cpu pointer for each related_cpu [3]:

for_each_cpu(j, policy->related_cpus)
	per_cpu(cpufreq_cpu_data, j) = policy;


Thus, any calls of functions (i.e. cpufreq_cpu_get()) which try to
take this ptr before [3] won't work.

We are trying to register EM from cpufreq_driver->init(policy) and the
per_cpu policy is likely to be not populated at that phase.

Regards,
Lukasz

[1] 
https://elixir.bootlin.com/linux/latest/source/drivers/cpufreq/cpufreq.c#L1328
[2] 
https://elixir.bootlin.com/linux/latest/source/drivers/cpufreq/cpufreq.c#L1350
[3] 
https://elixir.bootlin.com/linux/latest/source/drivers/cpufreq/cpufreq.c#L1374



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
