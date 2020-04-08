Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8811A1FC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 13:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EKZzdIj/ForPQRFNA4IVMKgLgL5byx+P9jAS/+ZEINo=; b=DdURO+cAotXSJgZXKxtAnoIdY
	vO3Cesgj8ZKMzieCNWttTtZK8OZtkuxim1dUAPmV0HRsjK9/ncBjhxzYHL01KS4hpYUdsUqPzxHk/
	hYdoqxl3NvrUxLKCpCKsMxj+ItObc2MLnyddKRQIJXiZT8Igmw+BfwFvpG9fHiB2G9dynv7LChocd
	N8zYhbAh8XgaWPZzjscZ2eVlWpHsMGwQW77hu3WQxySUgsaQlt+oFf+pVXIeJS6CO6/BpDWh+eYeD
	+BQfLvX8TwAiTAkMCOsRiDixnV480IY0RNG3er9gFNE5nh9XkPnhfzexnRov1P3TODiq7m3lpEabY
	FVxilGfxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8oR-0003K8-2s; Wed, 08 Apr 2020 11:24:07 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8oJ-0003JZ-QY
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 11:24:01 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e8db3e60002>; Wed, 08 Apr 2020 04:22:14 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 08 Apr 2020 04:23:57 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 08 Apr 2020 04:23:57 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 8 Apr
 2020 11:23:57 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 8 Apr 2020
 11:23:53 +0000
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
 <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
From: sumitg <sumitg@nvidia.com>
Message-ID: <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
Date: Wed, 8 Apr 2020 16:54:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586344935; bh=oYFcSb+xjYNh1lFY2wJ0O1MqXnEs9+vbafQpizW2IEQ=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=iB1I9IcXw9V27t4+8PI4OAE3+gQvSQNfry3VT4hcWVhrBiwyoP597DPogUKCkoT1T
 noPO3H03Ywg4wflAC9Ia4kxBER2iSwLeKpREetVAh7XJCFFi4XPdCIyoTlC/U5um+/
 SJXmDCIWMx0ZcCM6DWwG4RSDzDfGW6fe/qh3A1RwelVKh3QMxSx3yek/CnhqruUCBg
 /YbbOmIC5PlPUdVbHPF2LzBKgiwzdF2OiYj0HeitxVPZiVCJ+DSbg3xxEtSrFKN6YC
 nzUxvfm43RrhlWn1xmRskmWhQ928Nr3TSppfXaHBma2nW+tAxHyFzCMvVKDssd3E7r
 clyE9PtKQW0dg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_042359_867500_A6F80271 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 sumitg@nvidia.com, mperttunen@nvidia.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/04/20 11:23 AM, Viresh Kumar wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 07-04-20, 23:48, sumitg wrote:
>> On 06/04/20 8:25 AM, Viresh Kumar wrote:
>>> On 05-04-20, 00:08, sumitg wrote:
>>>> On 26/03/20 5:20 PM, Viresh Kumar wrote:
>>>>> On 03-12-19, 23:02, Sumit Gupta wrote:
>>>>>> diff --git a/drivers/cpufreq/tegra194-cpufreq.c b/drivers/cpufreq/tegra194-cpufreq.c
>>>>>> +static unsigned int tegra194_get_speed_common(u32 cpu, u32 delay)
>>>>>> +{
>>>>>> +     struct read_counters_work read_counters_work;
>>>>>> +     struct tegra_cpu_ctr c;
>>>>>> +     u32 delta_refcnt;
>>>>>> +     u32 delta_ccnt;
>>>>>> +     u32 rate_mhz;
>>>>>> +
>>>>>> +     read_counters_work.c.cpu = cpu;
>>>>>> +     read_counters_work.c.delay = delay;
>>>>>> +     INIT_WORK_ONSTACK(&read_counters_work.work, tegra_read_counters);
>>>>>> +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
>>>>>> +     flush_work(&read_counters_work.work);
>>>>>
>>>>> Why can't this be done in current context ?
>>>>>
>>>> We used work queue instead of smp_call_function_single() to have long delay.
>>>
>>> Please explain completely, you have raised more questions than you
>>> answered :)
>>>
>>> Why do you want to have long delays ?
>>>
>> Long delay value is used to have the observation window long enough for
>> correctly reconstructing the CPU frequency considering noise.
>> In next patch version, changed delay value to 500us which in our tests is
>> considered reliable.
> 
> I understand that you need to put a udelay() while reading the freq from
> hardware, that is fine, but why do you need a workqueue for that? Why can't you
> just read the values directly from the same context ?
> 
The register to read frequency is per core and not accessible to other 
cores. So, we have to execute the function remotely as the target core 
to read frequency might be different from current.
The functions for that are smp_call_function_single or queue_work_on.
We used queue_work_on() to avoid long delay inside ipi interrupt context 
with interrupts disabled.

> --
> viresh
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
