Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FF01A3316
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 13:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QaOv2GtSi2ga7Pq9kbMKkudGV1JNqzwoTGerVYBmi1A=; b=bN0fybgghtZmt1xsWcuQx//Kr
	RkM4JORB1stN4D/IQVqe/Hp/drwXNozGTcDGv6ADlWP8amqEx3t7RqlVCAiPPLLZkRbkvj2UJ74GG
	x2fNJpheEAdC/DB9I2xj5UuLU6+MrEKg2aKAn1UFAcIp/8YmEHkkHp3N3aoYEZjXB4Zp6GWwaLgKa
	CXi8YHWg3oByx7qLtev4WYwG2zpxD5Y1Nzn2fXBAPHxFTZYxr203xK9DWzQ1WSWjJ44jytZBINbzp
	6g6z5Kl80QQc01MBNaNeh0KTdf/L21kko/MYKTHVGe0bBExDTt2UXGBMomAAy9qVH0hjoEC8d1+KE
	WdoVJfFAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVF3-0005MI-Hk; Thu, 09 Apr 2020 11:21:05 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVEt-0005LO-QO
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 11:20:57 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8f04ae0000>; Thu, 09 Apr 2020 04:19:10 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Thu, 09 Apr 2020 04:20:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Thu, 09 Apr 2020 04:20:54 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Apr
 2020 11:20:54 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 9 Apr 2020
 11:20:49 +0000
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
 <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
 <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
 <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
From: Sumit Gupta <sumitg@nvidia.com>
Message-ID: <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
Date: Thu, 9 Apr 2020 16:51:13 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586431150; bh=qMj+7UqSwh6oU1fngw5KoRbQ6xPzFrPcGepKTB1mVZk=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=Rjpp4cG4bDTXrC6kQByGu9sXXULFmZfKueFslkBwG7MqdgPN4ewhwHCClI/UlFr1d
 g6vaC3CTN0fXLX0i7vcueUHYBa25tt4wGFjyidi3w7T5dnKEKSkoMJcZV9z4/bmhVs
 ByaVYwf6aGGyg/syi9vdzrlI0cpmWKa+OxAwB+FqGzoMZlKD5d9KQf2CT/hL1Uh/Tu
 2nOWyBtV7AD4CnOOCSnc98IrrljSfAXLEYGcPAfN1pzi0zi604lvPQev+KkSPctUtk
 +yX1OQGsBistlrxX97ZqQNJ+K8RFRHUawTd+BDj+Q70YcTWAnUTMU629pspUBI7unW
 Ic82eu3GUyjkg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_042055_861320_2A2B978E 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 Sumit Gupta <sumitg@nvidia.com>, mperttunen@nvidia.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/04/20 1:14 PM, Viresh Kumar wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 08-04-20, 16:54, sumitg wrote:
>>
>>
>> On 08/04/20 11:23 AM, Viresh Kumar wrote:
>>> External email: Use caution opening links or attachments
>>>
>>>
>>> On 07-04-20, 23:48, sumitg wrote:
>>>> On 06/04/20 8:25 AM, Viresh Kumar wrote:
>>>>> On 05-04-20, 00:08, sumitg wrote:
>>>>>> On 26/03/20 5:20 PM, Viresh Kumar wrote:
>>>>>>> On 03-12-19, 23:02, Sumit Gupta wrote:
>>>>>>>> diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
>>>>>>>> +static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
>>>>>>>> +{
>>>>>>>> +     struct read_counters_work read_counters_work;
>>>>>>>> +     struct tegra_cpu_ctr c;
>>>>>>>> +     u32 delta_refcnt;
>>>>>>>> +     u32 delta_ccnt;
>>>>>>>> +     u32 rate_mhz;
>>>>>>>> +
>>>>>>>> +     read_counters_work.c.cpu = cpu;
>>>>>>>> +     read_counters_work.c.delay = delay;
>>>>>>>> +     INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);
> 
> Initialize the work only once from init routine.
> 
We are using "read_counters_work" as local variable. So every invocation 
the function will have its own copy of counters for corresponding cpu. 
That's why are doing INIT_WORK_ONSTACK here.

>>>>>>>> +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
>>>>>>>> +     flush_work(&read_counters_work.work);
>>>>>>>
>>>>>>> Why can't this be done in current context ?
>>>>>>>
>>>>>> We used work queue instead of smp_call_function_single() to have long delay.
>>>>>
>>>>> Please explain completely, you have raised more questions than you
>>>>> answered :)
>>>>>
>>>>> Why do you want to have long delays ?
>>>>>
>>>> Long delay value is used to have the observation window long enough for
>>>> correctly reconstructing the CPU frequency considering noise.
>>>> In next patch version, changed delay value to 500us which in our tests is
>>>> considered reliable.
>>>
>>> I understand that you need to put a udelay() while reading the freq from
>>> hardware, that is fine, but why do you need a workqueue for that? Why can't you
>>> just read the values directly from the same context ?
>>>
>> The register to read frequency is per core and not accessible to other
>> cores. So, we have to execute the function remotely as the target core to
>> read frequency might be different from current.
>> The functions for that are smp_call_function_single or queue_work_on.
>> We used queue_work_on() to avoid long delay inside ipi interrupt context
>> with interrupts disabled.
> 
> Okay, I understand this now, finally :)
> 
> But if the interrupts are disabled during some call, won't workqueues face the
> same problem ?
> 
Yes, we are trying to minimize the case.

> --
> viresh
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
