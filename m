Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 507B8184D51
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 18:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HltQwe0/8gb0r9ZpIvwY0U5//O7opXJX8SmOt6z4jYI=; b=tPAgquu4rzBHewTgZv8T1pmaj
	IoaCMsNkcE1g4oguzOIOmrHuJbjTm4dsSXuclqZ+urZIK3HiZfBvmingyVpg85xS9+IOYBpEdtcqT
	Kw7oNLQxIwfmFuoynOGMQZbnGNyRagfwoJ+tvUUf55rZm0PXJrLT30O+bZCYv/PgoA0CeLLVuyW3L
	PZ/DDLVMdSLqoKNGgnhy/don4zo3ClLi/qrPLciC7TDDo94tGiDlu86th7sQu/LaHVHr6jSCmhSMf
	yNE0Inclx8N8Rf7mppQVuei/1/rt1/f3eO15oOdKd7ajaCkU9jJ8KKSkbVX6hlXWJb98xZ9wjQYbd
	4PLk+BiiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnqz-0007EN-Jg; Fri, 13 Mar 2020 17:12:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnqp-0007DJ-AN; Fri, 13 Mar 2020 17:12:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5810B31B;
 Fri, 13 Mar 2020 10:11:58 -0700 (PDT)
Received: from [10.37.12.40] (unknown [10.37.12.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F1D6B3F534;
 Fri, 13 Mar 2020 10:11:47 -0700 (PDT)
Subject: Re: [PATCH v4 2/4] OPP: change parameter to device pointer in
 dev_pm_opp_of_register_em()
To: Quentin Perret <qperret@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-3-lukasz.luba@arm.com>
 <20200313101524.GA150397@google.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <3ac8ebf8-9db0-d168-8b80-f7f5ba345f86@arm.com>
Date: Fri, 13 Mar 2020 17:11:45 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200313101524.GA150397@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_101159_399270_B3596300 
X-CRM114-Status: GOOD (  13.29  )
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



On 3/13/20 10:15 AM, Quentin Perret wrote:
> On Monday 09 Mar 2020 at 13:41:15 (+0000), Lukasz Luba wrote:
>> diff --git a/drivers/cpufreq/cpufreq-dt.c b/drivers/cpufreq/cpufreq-dt.c
>> index d2b5f062a07b..676b56424886 100644
>> --- a/drivers/cpufreq/cpufreq-dt.c
>> +++ b/drivers/cpufreq/cpufreq-dt.c
>> @@ -275,7 +275,9 @@ static int cpufreq_init(struct cpufreq_policy *policy)
>>   	policy->cpuinfo.transition_latency = transition_latency;
>>   	policy->dvfs_possible_from_any_cpu = true;
>>   
>> -	dev_pm_opp_of_register_em(policy->cpus);
>> +	ret = dev_pm_opp_of_register_em(cpu_dev, policy->cpus);
>> +	if (ret)
>> +		dev_dbg(cpu_dev, "Couldn't register Energy Model %d\n", ret);
>>   
>>   	return 0;
> 
> Ah, that answers my comment on patch 01. You're adding the error
> messages here.
> 
> Isn't this more boilerplate for the drivers ? All they do is print the
> same debug message. Maybe just move it inside dev_pm_opp_of_register_em
> directly ?
> 

Agree. I could add a 'fail' label in dev_pm_opp_of_register_em
something like:

--------------------------------->8----------------
dev_pm_opp_of_register_em
...
	nr_opp = dev_pm_opp_get_opp_count(dev);
	if (nr_opp <= 0) {
		ret = -EINVAL;
		goto fail;
	}

...
	ret = em_register_perf_domain()
	if (ret)
		goto fail;

	return 0;

fail:
	dev_dbg(cpu_dev, "Couldn't register Energy Model %d\n", ret);
	return ret
------------------------8<-----------------

Makes more sense, agree, thank you for your suggestion.

I will remove this
   if (ret)
	dev_dbg(cpu_dev, "Couldn't register Energy Model %d\n", ret);
from the cpufreq drivers.


Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
