Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D44F7DAF39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgkKHziorTFvQh8sj9gn/yLZBCipIYo72aLspx5CDQk=; b=JMvb/BTy+j8c8J
	VQldSzOP7m6jaEWaWUIqwH6ShAtLPaErb4MlCXSoG+51akA4LMY9DHwlWA2FfMoy0a0thE9cDQPIL
	JGItXP62PUx2Jj+P92uHt1NFhHmJeyILz/uZ/Bajxp4NacAW0tiR3k6mAUmJyo2sRR6QOaVOebzZ7
	Qf51U+LfIXk65z4uFEip1lPyc/kE6Bxq1r/jPEVITnhDpfs+o26pVPxyVdYJr/rw+5OI4LWWQjyLo
	xXxsdGrxfaYQ0KrqeIfvzIW2znrVzJCtbjeOJrOps4o1Jdpq4ArWBX5S5XAUmsaePDTq+mb+l0X23
	ILf17EHXZWSud8yDvV9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6So-0004VQ-Jd; Thu, 17 Oct 2019 14:09:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6SR-0004IX-QT
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:08:53 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 30357D36CEBE6D75367F;
 Thu, 17 Oct 2019 22:08:46 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 17 Oct 2019 22:08:40 +0800
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
 <ab42357e-f4f9-9019-e8d9-7e9bfe106e9e@huawei.com>
 <20191016102545.GA11386@bogus>
 <13d82e24-90bd-0c17-ef7f-aa7fec272f59@huawei.com>
 <20191016150545.GA6750@bogus>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <f1f281a4-4114-7193-369a-0062ecbd8cab@huawei.com>
Date: Thu, 17 Oct 2019 22:08:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191016150545.GA6750@bogus>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_070852_049650_53CC7C9B 
X-CRM114-Status: GOOD (  26.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "kstewart@linuxfoundation.org" <kstewart@linuxfoundation.org>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>, hushiyuan@huawei.com,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linfeilong@huawei.com, David Laight <David.Laight@ACULAB.COM>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "wuyun.wu@huawei.com" <wuyun.wu@huawei.com>, Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/10/16 23:05, Sudeep Holla wrote:
> On Wed, Oct 16, 2019 at 07:29:59PM +0800, Yunfeng Ye wrote:
>>
>>
>> On 2019/10/16 18:25, Sudeep Holla wrote:
>>> On Wed, Oct 16, 2019 at 11:22:23AM +0800, Yunfeng Ye wrote:
>>>>
>>>>
>>>> On 2019/10/16 0:23, Will Deacon wrote:
>>>>> Hi,
>>>>>
>>>>> On Sat, Sep 21, 2019 at 07:21:17PM +0800, Yunfeng Ye wrote:
>>>>>> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
>>>>>> take so long in the right case. Use usleep_range() instead of msleep(),
>>>>>> reduce the waiting time, and give a chance to busy wait before sleep.
>>>>>
>>>>> Can you elaborate on "the right case" please? It's not clear to me
>>>>> exactly what problem you're solving here.
>>>>>
>>>> The situation is that when the power is off, we have a battery to save some
>>>> information, but the battery power is limited, so we reduce the power consumption
>>>> by turning off the cores, and need fastly to complete the core shutdown. However, the
>>>> time of cpu_psci_cpu_kill() will take 10ms. We have tested the time that it does not
>>>> need 10ms, and most case is about 50us-500us. if we reduce the time of cpu_psci_cpu_kill(),
>>>> we can reduce 10% - 30% of the total time.
>>>>
>>>
>>> Have you checked why PSCI AFFINITY_INFO not returning LEVEL_OFF quickly
>>> then ? We wait for upto 5s in cpu_wait_death(worst case) before cpu_kill
>>> is called from __cpu_die.
>>>
>> When cpu_wait_death() is done, it means that the cpu core's hardware prepare to
>> die. I think not returning LEVEL_OFF quickly is that hardware need time to handle.
>> I don't know how much time it need is reasonable, but I test that it need about
>> 50us - 500us.
>>
> 
> Fair enough.
> 
>> In addition I have not meat the worst case that cpu_wait_death() need upto
>> 5s, and we only take normal case into account.
>>
> 
> Good
> 
>>
>>> Moreover I don't understand the argument here. The cpu being killed
>>> will be OFF, as soon as it can and firmware controls that and this
>>> change is not related to CPU_OFF. And this CPU calling cpu_kill can
>>> sleep and 10ms is good to enter idle states if it's idle saving power,
>>> so I fail to map the power saving you mention above.
>>>
>> We have hundreds of CPU cores that need to be shut down. For example,
>> a CPU has 200 cores, and the thread to shut down the core is in CPU 0.
>> and the thread need to shut down from core 1 to core 200. However, the
>> implementation of the kernel can only shut down cpu cores one by one, so we
>> need to wait for cpu_kill() to finish before shutting down the next
>> CPU core. If it wait for 10ms each time in cpu_kill, it will takes up
>> about 2 seconds in cpu_kill() total.
>>
> 
> OK, thanks for the illustrative example. This make sense to me now. But
> you comparing with battery powered devices confused me and I assumed
> it as some hack to optimise mobile workload.
> 
It is not mobile workload, but a arm64 server with hundreds of cpu cores.
Battery powered is a backup battery for reliability and to prevent
accidental power failure.

>>>> So change msleep (10) to usleep_range() to reduce the waiting time. In addition,
>>>> we don't want to be scheduled during the sleeping time, some threads may take a
>>>> long time and don't give up the CPU, which affects the time of core shutdown,
>>>> Therefore, we add a chance to busy-wait max 1ms.
>>>>
>>>
>>> On the other hand, usleep_range reduces the timer interval and hence
>>> increases the chance of the callee CPU not to enter deeper idle states.
>>>
>>> What am I missing here ? What's the use case or power off situation
>>> you are talking about above ?
>>>
>> As mentioned above, we are not to save power through msleep to idle state,
>> but to quickly turn off other CPU core's hardware to reduce power consumption.
> 
> You still don't provide your use-case in which this is required. I know
> this will be useful for suspend-to-ram. Do you have any other use-case
> that you need to power-off large number of CPUs like this ? Also you
> mentioned battery powered, and I don't think any battery powered device
> has 200 thread like in your example :)
> 
The use-case is like suspend-to-disk, but a little different:
In the abnormal power failure of server equipment, in order to increase
reliability, there is a backup battery for power supply. Before the battery runs out,
we need to save the key datas to the disk. In order to maintain the battery power
supply, a series of power reduction processing is needed, include which all the cores
need to be shut down quickly, we have max near 200 cores need to shutdown.

Also this modify will be useful for suspend-to-ram too.
thanks.

> You need to mention few things clearly in the commit log:
> 1. How the CPU hotplug operation is serialised in some use-case like
>    suspend-to-ram
> 2. How that may impact systems with large number of CPUs
> 3. How your change helps to improve that
> 
> It may it easy for anyone to understand the motivation for this change.
> The commit message you have doesn't give any clue on all the above and
> hence we have lot of questions.
> 
ok, thanks.

> I will respond to the original patch separately.
> 
> --
> Regards,
> Sudeep
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
