Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C6D1B5F2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 17:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QjB2Ob703fXSnbRnCEH5kvDn6TU0x23UfQPRS2Grs28=; b=BJbL4riR6Kb+QjFloDiKKSAli
	gq36dUssPFpRy0BD474x0u17PbK+bzpD5DzwVuWkV7fNYChPbhG9vvhTEotAe0sfVg+udc5cLqW+N
	01WQCsptDmnWmEAsvogi6kV3EpHCUNnWp6NoIiHkeKGrrQufLHS2hQlNIGUfaX5b5ajnSrUDPvmI7
	F5io7+rdeYddQs+Cg8bYh1l8FXsNAaBDrmcV2jVYtrDQnFvqWO5Oj+iu8eBE42R6AU3TsFtn/p3Uc
	emBBSh79rjJv40LKJQPNZ+pMi3h2dd/H9dMP6cAKOr7NBhHUyacIXvmTUKHEUqA5plopRaa5c7xFE
	+dGTTJhSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdmc-0002q9-OA; Thu, 23 Apr 2020 15:28:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdmS-0002p2-P2; Thu, 23 Apr 2020 15:28:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B5E031B;
 Thu, 23 Apr 2020 08:28:46 -0700 (PDT)
Received: from [10.37.12.89] (unknown [10.37.12.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E87B3F6CF;
 Thu, 23 Apr 2020 08:28:21 -0700 (PDT)
Subject: Re: [PATCH v6 03/10] PM / EM: update callback structure and add
 device pointer
To: Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20200410084210.24932-1-lukasz.luba@arm.com>
 <20200410084210.24932-4-lukasz.luba@arm.com>
 <20200423132243.GA65632@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <245720a0-c812-ccc8-235e-6eed6f216e4b@arm.com>
Date: Thu, 23 Apr 2020 16:28:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200423132243.GA65632@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_082848_898511_4D9420AC 
X-CRM114-Status: GOOD (  17.97  )
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
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, b.zolnierkie@samsung.com,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Daniel,

On 4/23/20 2:22 PM, Daniel Lezcano wrote:
> On Fri, Apr 10, 2020 at 09:42:03AM +0100, Lukasz Luba wrote:
>> The Energy Model framework is going to support devices other that CPUs. In
>> order to make this happen change the callback function and add pointer to
>> a device as an argument.
>>
>> Update the related users to use new function and new callback from the
>> Energy Model.
>>
>> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
>> ---
> 
> [ ... ]
> 
>> +static struct em_perf_domain *
>> +em_create_pd(struct device *dev, int nr_states, struct em_data_callback *cb,
>> +	     cpumask_t *span)
>>   {
>>   	unsigned long opp_eff, prev_opp_eff = ULONG_MAX;
>>   	unsigned long power, freq, prev_freq = 0;
>> @@ -106,7 +107,7 @@ static struct em_perf_domain *em_create_pd(cpumask_t *span, int nr_states,
>>   		 * lowest performance state of 'cpu' above 'freq' and updates
>>   		 * 'power' and 'freq' accordingly.
>>   		 */
>> -		ret = cb->active_power(&power, &freq, cpu);
>> +		ret = cb->active_power(&power, &freq, dev);
>>   		if (ret) {
>>   			pr_err("pd%d: invalid perf. state: %d\n", cpu, ret);
>>   			goto free_ps_table;
> 
> Why are the changes 'cpu' to 'dev' in the patch 4/10 instead of this one ?

The patch 4/10 is quite big and I didn't want to put also this change in
there. I thought for readability it would be better to have a separate
patch with self-contained change (or I got your suggestion too strict).

In this patch I just wanted to show more precisely that this function
callback 'active_power' which is used by 2 users (currently):
cpufreq/scmi-cpufreq.c and opp/of.c
is going to change an argument and these files are affected.

The 4/10 changes a lot lines, while first 3 patches can be treated as
a preparation for the upcoming major change (4/10).

Thank you for the review.

Regards,
Lukasz

> 
>> @@ -237,7 +238,7 @@ int em_dev_register_perf_domain(struct device *dev, unsigned int nr_states,
>>   	}
>>   
>>   	/* Create the performance domain and add it to the Energy Model. */
>> -	pd = em_create_pd(span, nr_states, cb);
>> +	pd = em_create_pd(dev, nr_states, cb, span);
>>   	if (!pd) {
>>   		ret = -EINVAL;
>>   		goto unlock;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
