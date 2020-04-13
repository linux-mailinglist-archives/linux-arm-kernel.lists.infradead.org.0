Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181961A6641
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 14:19:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sExtC3lWuzIlXLoc7bdfqYa+aeYeuibxi6hiIu6SpgI=; b=nusb6OAJ5YS/m0JBq2uza/ucb
	UHyWJXZj6V5da0wBp5HcMbcI9oklbfJASwWybcnCI4nLIvN10DbbS/LBAr38gGN83iwcLx/6n4+Pq
	maX8vx8TlxvzyqABE6bPBhBjIuIf6pTh85FG2yzK5Yko5f01IXBgwtUFwR3tRnjvFxjmhOvm6mKaL
	hFvhDOYWa/ZHrp/C4L9984bXEO60UAHbad69+gJuUmXxOJbGzt2dn9bTafJsbh0YfgzXdOY7+SE4A
	ozvF9dBPePitEMtFqeMWyyyLtyNWjTnAPRwsEPWhBWpLsslY5I9fgs/b/oGGUortDttgukjlfg18I
	r2/qUl5AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNy3z-0000P9-LI; Mon, 13 Apr 2020 12:19:43 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNy3p-0000Od-BN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 12:19:34 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e9458680001>; Mon, 13 Apr 2020 05:17:44 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 13 Apr 2020 05:19:32 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 13 Apr 2020 05:19:32 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Apr
 2020 12:19:32 +0000
Received: from [10.24.37.103] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Apr
 2020 12:19:28 +0000
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
 <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
 <20200413062141.a6hmwipexhv3sctq@vireshk-i7>
From: Sumit Gupta <sumitg@nvidia.com>
Message-ID: <64b609f1-efb1-425f-a91a-27a492bd3ec4@nvidia.com>
Date: Mon, 13 Apr 2020 17:50:00 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200413062141.a6hmwipexhv3sctq@vireshk-i7>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1586780264; bh=sm196NiMqA8gyR8DT4vdRI+KvcOo8ha9TmgFSKUPb3I=;
 h=X-PGP-Universal:Subject:To:CC:References:From:Message-ID:Date:
 User-Agent:MIME-Version:In-Reply-To:X-Originating-IP:
 X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=SagSxSkltbuOB5/r68bXwwj2Py22FS0okY336BB5sSpzMGJd+D4SfPeDrbLizmuLi
 FL3tnoxu3StWADbYI1GhBsP9wJIoxZ94WO+1lfqHNV6qQjHaYITR8Dng3YGYwpsdqB
 CBgUXEv4fhMD+z8G7TsKXaGLnByZEWvjK4ygbim5H44rSzc2FCxRfvtpLLbz/8dYbD
 m8LYWPG47mTzvFPYr5EEYsjlfHTCod5MqtPdKHqrdXpPlVFyl+9IjxuoH0Lv/nnAht
 +ETx8yIwVHTH/LBs+15idwsSoSdYWZI4aixVx24qtttaWYIpxtGYZzsPt2VQtUHD+t
 gux1X9yQKzipA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_051933_398778_707B32B1 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/04/20 11:51 AM, Viresh Kumar wrote:
> External email: Use caution opening links or attachments
> 
> 
> On 09-04-20, 16:51, Sumit Gupta wrote:
>> We are using "read_counters_work" as local variable. So every invocation the
>> function will have its own copy of counters for corresponding cpu. That's
>> why are doing INIT_WORK_ONSTACK here.
> 
> Why? To support parallel calls to reading the freq ?
> 
Yes.

>>>>>>>>>> +     queue_work_on(cpu, read_counters_wq, &read_counters_work.work);
>>>>>>>>>> +     flush_work(&read_counters_work.work);
>>>>>>>>>
>>>>>>>>> Why can't this be done in current context ?
>>>>>>>>>
>>>>>>>> We used work queue instead of smp_call_function_single() to have long delay.
>>>>>>>
>>>>>>> Please explain completely, you have raised more questions than you
>>>>>>> answered :)
>>>>>>>
>>>>>>> Why do you want to have long delays ?
>>>>>>>
>>>>>> Long delay value is used to have the observation window long enough for
>>>>>> correctly reconstructing the CPU frequency considering noise.
>>>>>> In next patch version, changed delay value to 500us which in our tests is
>>>>>> considered reliable.
>>>>>
>>>>> I understand that you need to put a udelay() while reading the freq from
>>>>> hardware, that is fine, but why do you need a workqueue for that? Why can't you
>>>>> just read the values directly from the same context ?
>>>>>
>>>> The register to read frequency is per core and not accessible to other
>>>> cores. So, we have to execute the function remotely as the target core to
>>>> read frequency might be different from current.
>>>> The functions for that are smp_call_function_single or queue_work_on.
>>>> We used queue_work_on() to avoid long delay inside ipi interrupt context
>>>> with interrupts disabled.
>>>
>>> Okay, I understand this now, finally :)
>>>
>>> But if the interrupts are disabled during some call, won't workqueues face the
>>> same problem ?
>>>
>> Yes, we are trying to minimize the case.
> 
> But how do you know workqueues will perform better than
> smp_call_function_single() ? Just asking for clarity on this as normally
> everyone tries to do smp_call_function_single().
> 
This was done considering long delay value as explained previously.
Do you think that smp_call_function_single() would be better than work 
queue here?

> --
> viresh
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
