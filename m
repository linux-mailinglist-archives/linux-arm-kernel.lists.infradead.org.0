Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E0DD8F72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 13:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3LBXMocJwqRq2R27Wjl3enqGZRPojEWfXXWIIzyfec=; b=epgTYlM9DQlt8+
	OMWwWDPsUz/K7v/1AGM+uwXZ5vaulxg6EeV1PCXLkhNpDnh/bbW1kkcP02jv383FGCT5r27UMOIlE
	5B3vr5xyxVAPmKSWSUhvpGmVNIm/wIj7P39LeCFI+lhbUAGwdww7txPXK/7UjN/EG1gfKUdHwxEw0
	xqcLhU/PrXE7zNQda7ASKXWjp0SxqG+LzXSw1Tyv44wG+SfSWCW9GfkQwgUPvL0t6UBgdtEjLrQYw
	55WNen4NyK8B5BHD8qEPpeEbFD8uq06PTfesf0CIGG6Mlz5JoOnmDszM6iwpokX53tnIofZe67upW
	2DmZmqMXLXfo+gF2gdcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKhVg-0007OW-Ac; Wed, 16 Oct 2019 11:30:32 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKhVR-0007Fm-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 11:30:19 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E10A368E0175608A4F90;
 Wed, 16 Oct 2019 19:30:15 +0800 (CST)
Received: from [127.0.0.1] (10.177.251.225) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 16 Oct 2019 19:30:07 +0800
Subject: Re: [PATCH V2] arm64: psci: Reduce waiting time of cpu_psci_cpu_kill()
To: Sudeep Holla <sudeep.holla@arm.com>
References: <18068756-0f39-6388-3290-cf03746e767d@huawei.com>
 <20191015162358.bt5rffidkv2j4xqb@willie-the-truck>
 <ab42357e-f4f9-9019-e8d9-7e9bfe106e9e@huawei.com>
 <20191016102545.GA11386@bogus>
From: Yunfeng Ye <yeyunfeng@huawei.com>
Message-ID: <13d82e24-90bd-0c17-ef7f-aa7fec272f59@huawei.com>
Date: Wed, 16 Oct 2019 19:29:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20191016102545.GA11386@bogus>
Content-Language: en-US
X-Originating-IP: [10.177.251.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_043017_880329_BC195C5F 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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



On 2019/10/16 18:25, Sudeep Holla wrote:
> On Wed, Oct 16, 2019 at 11:22:23AM +0800, Yunfeng Ye wrote:
>>
>>
>> On 2019/10/16 0:23, Will Deacon wrote:
>>> Hi,
>>>
>>> On Sat, Sep 21, 2019 at 07:21:17PM +0800, Yunfeng Ye wrote:
>>>> If psci_ops.affinity_info() fails, it will sleep 10ms, which will not
>>>> take so long in the right case. Use usleep_range() instead of msleep(),
>>>> reduce the waiting time, and give a chance to busy wait before sleep.
>>>
>>> Can you elaborate on "the right case" please? It's not clear to me
>>> exactly what problem you're solving here.
>>>
>> The situation is that when the power is off, we have a battery to save some
>> information, but the battery power is limited, so we reduce the power consumption
>> by turning off the cores, and need fastly to complete the core shutdown. However, the
>> time of cpu_psci_cpu_kill() will take 10ms. We have tested the time that it does not
>> need 10ms, and most case is about 50us-500us. if we reduce the time of cpu_psci_cpu_kill(),
>> we can reduce 10% - 30% of the total time.
>>
> 
> Have you checked why PSCI AFFINITY_INFO not returning LEVEL_OFF quickly
> then ? We wait for upto 5s in cpu_wait_death(worst case) before cpu_kill
> is called from __cpu_die.
> 
When cpu_wait_death() is done, it means that the cpu core's hardware prepare to
die. I think not returning LEVEL_OFF quickly is that hardware need time to handle.
I don't know how much time it need is reasonable, but I test that it need about
50us - 500us.

In addition I have not meat the worst case that cpu_wait_death() need upto 5s, and
we only take normal case into account.

thanks.

> Moreover I don't understand the argument here. The cpu being killed
> will be OFF, as soon as it can and firmware controls that and this
> change is not related to CPU_OFF. And this CPU calling cpu_kill can
> sleep and 10ms is good to enter idle states if it's idle saving power,
> so I fail to map the power saving you mention above.
> 
We have hundreds of CPU cores that need to be shut down. For example,
a CPU has 200 cores, and the thread to shut down the core is in CPU 0.
and the thread need to shut down from core 1 to core 200. However, the
implementation of the kernel can only shut down cpu cores one by one, so we
need to wait for cpu_kill() to finish before shutting down the next
CPU core. If it wait for 10ms each time in cpu_kill, it will takes up
about 2 seconds in cpu_kill() total.

It is not to save power through msleep to idle state, but to quickly
turn off other CPU core's hardware to reduce power consumption.

thanks.

>> So change msleep (10) to usleep_range() to reduce the waiting time. In addition,
>> we don't want to be scheduled during the sleeping time, some threads may take a
>> long time and don't give up the CPU, which affects the time of core shutdown,
>> Therefore, we add a chance to busy-wait max 1ms.
>>
> 
> On the other hand, usleep_range reduces the timer interval and hence
> increases the chance of the callee CPU not to enter deeper idle states.
> 
> What am I missing here ? What's the use case or power off situation
> you are talking about above ?
> 
As mentioned above, we are not to save power through msleep to idle state,  but to quickly
turn off other CPU core's hardware to reduce power consumption.

>>
>>> I've also added Sudeep to the thread, since I'd like his ack on the change.
>>>
> 
> Thanks Will.
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
