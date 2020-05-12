Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10231CF320
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 13:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sLIEMI28NftzIudibaO4Pp1uQABlOHmlXwTT1YFiAm4=; b=qJ861Pl0CyEJR72HdsSL4fERc
	U6Azsd0nMIyuqAv/+2yg2uMInnqhLePDio79beJ2C8P+jMM4yJTmaC5MIEblDZNFC/pMyhNPP8c1Q
	/WC9C7Z9CevPbpBKSs8BXOVKcVo5reXv1o577/V2bKzRx79zgr7qCJQvFEGx1m4EVSi6Bd/jLqxqo
	OB7ulJcs2Eyak7NShe8NvPhHGRaPry1Z9oKGNoX93PyErDmzh5olOSE6lhRXuEScK2wNwO7+TxjBd
	M88ogQvz6IFroW4csr3Qfxuh9iPO4vWijhwENHK1zvrkNry4mfUFyTF+vRTIvG69zbhaCoUXP0DPB
	4k7rXUloQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYSop-0007Fh-SZ; Tue, 12 May 2020 11:11:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYSoh-0007FC-GJ; Tue, 12 May 2020 11:11:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9E0930E;
 Tue, 12 May 2020 04:11:18 -0700 (PDT)
Received: from [10.37.12.83] (unknown [10.37.12.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BB2703F71E;
 Tue, 12 May 2020 04:11:08 -0700 (PDT)
Subject: Re: [PATCH v7 03/15] PM / EM: update callback structure and add
 device pointer
To: Quentin Perret <qperret@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-4-lukasz.luba@arm.com>
 <20200511115722.GA13741@google.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <a2c20b82-58e3-a2ef-2d8d-edbaf05277ec@arm.com>
Date: Tue, 12 May 2020 12:11:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200511115722.GA13741@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_041119_585938_150368EE 
X-CRM114-Status: GOOD (  16.73  )
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
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Quentin,

On 5/11/20 12:57 PM, Quentin Perret wrote:
> On Monday 11 May 2020 at 12:19:00 (+0100), Lukasz Luba wrote:
>> diff --git a/drivers/cpufreq/scmi-cpufreq.c b/drivers/cpufreq/scmi-cpufreq.c
>> index 61623e2ff149..11ee24e06d12 100644
>> --- a/drivers/cpufreq/scmi-cpufreq.c
>> +++ b/drivers/cpufreq/scmi-cpufreq.c
>> @@ -103,17 +103,12 @@ scmi_get_sharing_cpus(struct device *cpu_dev, struct cpumask *cpumask)
>>   }
>>   
>>   static int __maybe_unused
>> -scmi_get_cpu_power(unsigned long *power, unsigned long *KHz, int cpu)
>> +scmi_get_cpu_power(unsigned long *power, unsigned long *KHz,
>> +		   struct device *cpu_dev)
>>   {
>> -	struct device *cpu_dev = get_cpu_device(cpu);
>>   	unsigned long Hz;
>>   	int ret, domain;
>>   
>> -	if (!cpu_dev) {
>> -		pr_err("failed to get cpu%d device\n", cpu);
>> -		return -ENODEV;
>> -	}
>> -
>>   	domain = handle->perf_ops->device_domain_id(cpu_dev);
>>   	if (domain < 0)
>>   		return domain;
>> @@ -200,7 +195,7 @@ static int scmi_cpufreq_init(struct cpufreq_policy *policy)
>>   
>>   	policy->fast_switch_possible = true;
>>   
>> -	em_register_perf_domain(policy->cpus, nr_opp, &em_cb);
> 
> So this one has no users after this patch right? I suppose you could
> squash patch 05 in this one. But no big deal.

Yes, it was tricky to me to decide the splits suggested by Daniel and
this is the example. I had to introduce the em_dev_register_perf_domain
and make clients of it before I remove the old em_register_perf_domain
completely. I agree it could also go with the patch 5, but it does not
harm to be here.

> 
> Acked-by: Quentin Perret <qperret@google.com>

Thank you for this ACKs and the earlier.

Regards,
Lukasz

> 
>> +	em_dev_register_perf_domain(cpu_dev, nr_opp, &em_cb, policy->cpus);
>>   
>>   	return 0;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
