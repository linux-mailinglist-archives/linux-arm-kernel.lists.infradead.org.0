Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A67B10C651
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 11:02:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWeyLcHEpnGM1TrzTrR1+RIYPvr3+3iwZILWGOpXAmE=; b=ErkrM2fi92g8Z4
	Bcu4qYnDYRjV2m5jUl4kuXJicGH23ebzhoh54SQumZeNS1+ko/c2d52GzjvGvr+J1Q11Mz0YsDgBv
	+6Cew+QqHFECGqXssl3b2YzmgqjAEv76Kw7sCwiQU/Agbz+dL5UDxWz2DTdz0R98pT9mJLkI8IWiu
	oMJzxH3TsFrgLj6mHjQDQAoS3fwBpgDcPllLcvelynFjdYXWC3l8BB244GMfmTx7O1y8Ib6JAJHZM
	xDRKeE0mkFsRwtZg6Ie73EB5Y6pUaHz8BP+uqgyusNKb2qafFjQHw5Rxy1wPAHisrXSE+TzrFdhx/
	xM7kKFEPSfxBEJMgfiog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaGcX-0005KO-H4; Thu, 28 Nov 2019 10:01:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaGcO-0005Je-02
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 10:01:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90F1B1FB;
 Thu, 28 Nov 2019 02:01:46 -0800 (PST)
Received: from [192.168.0.9] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 130FA3F6C4;
 Thu, 28 Nov 2019 02:01:44 -0800 (PST)
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
To: Viresh Kumar <viresh.kumar@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus> <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
 <20191127133200.GE29301@bogus> <a60cab69-4d47-d418-94bd-74630bf9e846@arm.com>
 <20191127154029.GA4826@bogus> <20191128023116.3skwbeowk7wtjaxc@vireshk-i7>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <0e1cf1c3-3790-3032-2843-04a112de1411@arm.com>
Date: Thu, 28 Nov 2019 11:01:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191128023116.3skwbeowk7wtjaxc@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_020148_080669_5DA67010 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 03:31, Viresh Kumar wrote:
> On 27-11-19, 15:40, Sudeep Holla wrote:
>> diff --git i/arch/arm/mach-vexpress/spc.c w/arch/arm/mach-vexpress/spc.c
>> index 354e0e7025ae..e0e2e789a0b7 100644
>> --- i/arch/arm/mach-vexpress/spc.c
>> +++ w/arch/arm/mach-vexpress/spc.c
>> @@ -551,8 +551,9 @@ static struct clk *ve_spc_clk_register(struct device *cpu_dev)
>>
>>  static int __init ve_spc_clk_init(void)
>>  {
>> -       int cpu;
>> +       int cpu, cluster;
>>         struct clk *clk;
>> +       bool init_opp_table[MAX_CLUSTERS] = { false };
>>
>>         if (!info)
>>                 return 0; /* Continue only if SPC is initialised */
>> @@ -578,8 +579,17 @@ static int __init ve_spc_clk_init(void)
>>                         continue;
>>                 }
>>
>> +               cluster = topology_physical_package_id(cpu_dev->id);
>> +               if (init_opp_table[cluster])
>> +                       continue;
>> +
>>                 if (ve_init_opp_table(cpu_dev))
>>                         pr_warn("failed to initialise cpu%d opp table\n", cpu);
>> +               else if (dev_pm_opp_set_sharing_cpus(cpu_dev,
>> +                        topology_core_cpumask(cpu_dev->id)))
>> +                       pr_warn("failed to mark OPPs shared for cpu%d\n", cpu);
>> +
>> +               init_opp_table[cluster] = true;
>>         }
>>
>>         platform_device_register_simple("vexpress-spc-cpufreq", -1, NULL, 0);
>> diff --git i/drivers/cpufreq/vexpress-spc-cpufreq.c w/drivers/cpufreq/vexpress-spc-cpufreq.c
>> index 506e3f2bf53a..83c85d3d67e3 100644
>> --- i/drivers/cpufreq/vexpress-spc-cpufreq.c
>> +++ w/drivers/cpufreq/vexpress-spc-cpufreq.c
>> @@ -434,7 +434,7 @@ static int ve_spc_cpufreq_init(struct cpufreq_policy *policy)
>>         if (cur_cluster < MAX_CLUSTERS) {
>>                 int cpu;
>>
>> -               cpumask_copy(policy->cpus, topology_core_cpumask(policy->cpu));
>> +               dev_pm_opp_get_sharing_cpus(cpu_dev, policy->cpus);
>>
>>                 for_each_cpu(cpu, policy->cpus)
>>                         per_cpu(physical_cluster, cpu) = cur_cluster;
> 
> This is a better *work-around* I would say, as we can't break it the
> way I explained earlier :)

I do agree. Tested CPU hp stress on TC2 and it looks good.

Tested-by: Dietmar Eggemann <dietmar.eggemann@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
