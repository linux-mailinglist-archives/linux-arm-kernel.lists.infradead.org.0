Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415B215C1AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:25:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GAUzfsXtRS7I4C+K2eCKcYPByZTQVNAA9gkk4zxRP9o=; b=bDusvmDSuXvA7mqFd7fjz8umQ
	kYD4UL2I8LCAzQOsbe5xVtGvLCTnpPnJ0Ir6CeOEfrhdTGpEVf4C0DzkZbO50JE0212m/dxuctbMu
	riAnyCPkQK6A4z5Zzxtg2kKmNPCVUGGA2YDXADixQ2EQrcBqlCMAtG7BN7+6egeAwFM+rKxy7SvQq
	S1rTd0SRtZv5g3ld2NRVXSaLvPItmgDesiVLoJYLP6n+txx/NU0IeU7GRwbKK7mHhO5MDs5dwfIFU
	j3wdcVNspcQ0JUk4001IXbxUwdXdkcfnYu2lkOb97+43hOE0w2bDgO/A0n7o3xUEnMHh7ZOMuJUx0
	67KyAn2aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GMy-0004Sd-KN; Thu, 13 Feb 2020 15:25:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GMp-0004Ry-GD; Thu, 13 Feb 2020 15:25:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E55A328;
 Thu, 13 Feb 2020 07:25:24 -0800 (PST)
Received: from [10.37.12.116] (unknown [10.37.12.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 130463F68E;
 Thu, 13 Feb 2020 07:25:13 -0800 (PST)
Subject: Re: [PATCH v2 1/4] PM / EM: add devices to Energy Model
To: Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com
References: <20200206134640.11367-1-lukasz.luba@arm.com>
 <20200206134640.11367-2-lukasz.luba@arm.com>
 <62a54ec9-0491-367d-0a36-7ea32c449acc@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <6b1921bb-42c8-999f-abfa-5682e73015d5@arm.com>
Date: Thu, 13 Feb 2020 15:25:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <62a54ec9-0491-367d-0a36-7ea32c449acc@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_072527_627641_6EF911D8 
X-CRM114-Status: GOOD (  17.84  )
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, bjorn.andersson@linaro.org,
 bsegall@google.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, daniel.lezcano@linaro.org, steven.price@arm.com,
 cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de, rui.zhang@intel.com,
 alyssa.rosenzweig@collabora.com, daniel@ffwll.ch, b.zolnierkie@samsung.com,
 s.hauer@pengutronix.de, rostedt@goodmis.org, matthias.bgg@gmail.com,
 Chris.Redpath@arm.com, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 shawnguo@kernel.org, rjw@rjwysocki.net, agross@kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 ionela.voinescu@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/13/20 10:59 AM, Dietmar Eggemann wrote:
> On 06/02/2020 14:46, lukasz.luba@arm.com wrote:
>> From: Lukasz Luba <lukasz.luba@arm.com>
> 
> [..]
> 
>> @@ -26,7 +28,7 @@ framework, and interested clients reading the data from it::
> 
> s/::/: ?
> 
>>          | Thermal (IPA) |  | Scheduler (EAS) |  |     Other     |
>>          +---------------+  +-----------------+  +---------------+
>>                  |                   | em_pd_energy()    |
>> -               |                   | em_cpu_get()      |
>> +               |  em_get_pd()      | em_cpu_get()      |
>>                  +---------+         |         +---------+
> 
> em_get_pd() and em_cpu_get()? Why not em_pd_get()? em_cpu_get() is a
> specific em_get_pd(). right?

Yes. I will rename 'em_get_pd' to 'em_pd_get'

> 
> [...]
> 
>> @@ -85,13 +89,20 @@ API.
>>   2.3 Accessing performance domains
>>   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>>   
>> +There is two API functions which provide the access to the energy model:
>> +em_cpu_get() which takes CPU id as an argument and em_get_pd() with device
>> +pointer as an argument. It depends on the subsystem which interface it is
>> +going to use, but in case of CPU devices both functions return the same
>> +performance domain.
> 
> There is probably a reason why we need this specific function for CPU
> devices? The reason should be described. People might ask why
> em_get_pd() is not sufficient.

True, good point. I will extend the comment in em_cpu_get().

> 
> [...]
> 
>> - * A "performance domain" represents a group of CPUs whose performance is
>> - * scaled together. All CPUs of a performance domain must have the same
>> - * micro-architecture. Performance domains often have a 1-to-1 mapping with
>> - * CPUFreq policies.
>> + * In case of CPU device, a "performance domain" represents a group of CPUs
>> + * whose performance is scaled together. All CPUs of a performance domain
>> + * must have the same micro-architecture. Performance domains often have
>> + * a 1-to-1 mapping with CPUFreq policies.
>> + * In case of other devices the 'priv' field is unused.
>>    */
>>   struct em_perf_domain {
>> -	struct em_cap_state *table;
>> -	int nr_cap_states;
>> -	unsigned long cpus[0];
>> +	struct em_perf_state *table;
>> +	int nr_perf_states;
>> +	void *priv;
> 
> In case you go back to the variable length field plus type field to
> distingush EM devices, keep cpus[0] as the name.

OK, I will.

> 
> [..]
> 
>>   /**
>> - * em_pd_energy() - Estimates the energy consumed by the CPUs of a perf. domain
>> + * em_pd_energy() - Estimates the energy consumed by the CPUs of a perf.
>> +			domain
> 
> Why this change?

hmmm, that's odd, maybe there was 'device' then I changed it back to
'CPUs' but forgot to move the 'domain' to the old place.

> 
> [...]
> 
>> @@ -141,12 +210,12 @@ static struct em_perf_domain *em_create_pd(cpumask_t *span, int nr_states,
>>   		 */
>>   		opp_eff = freq / power;
>>   		if (opp_eff >= prev_opp_eff)
>> -			pr_warn("pd%d: hertz/watts ratio non-monotonically decreasing: em_cap_state %d >= em_cap_state%d\n",
>> -					cpu, i, i - 1);
>> +			dev_warn(dev, "energy_model: hertz/watts ratio non-monotonically decreasing: em_perf_state %d >= em_perf_state%d\n",
> 
> s/energy_model/EM ?

OK, I will rename them in all places.

Thank you for the review.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
