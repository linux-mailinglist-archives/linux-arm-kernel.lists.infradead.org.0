Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8E8EC194
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 12:12:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0BGzkgIz/QjpH97i6JM3YIsMFTDKazpugSAudzjsc9c=; b=pko4pNbLZm32vGopjyhbKWvEZ
	W/iCMG2FceZdrtug1s8XLogJ3ljL6InSQ/J3SlphA0rgYiCmWwjh2p/FONEM+Vvfv6iIxEILjN6E3
	l6zk3PW/b1oh4aicgPH+iDXO0Z4qlnujGlHLO5efGwOeSyVnKjA0NW+XSsP4ZKWD+UEqmoK8tMECd
	2p5yC3t1+f+mJvV4UsQmpOdbrWTYGFgdNGojMKkU3t8A+S/S+dysqh7PfRjptiZtpNLeBmtokrIFX
	Yp0XOhb9QxZO2mgfcCDNpRdMwEtn49O9K5Nc2GPZ/oXQEVjph+kxqplSOFqNyu6W/GDU8pKtqPSwH
	blbZuwerQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQUqb-0008WU-8n; Fri, 01 Nov 2019 11:12:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQUqP-0008UT-Ma
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 11:11:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8150C46A;
 Fri,  1 Nov 2019 04:11:50 -0700 (PDT)
Received: from [192.168.1.124] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2D683F6C4;
 Fri,  1 Nov 2019 04:11:49 -0700 (PDT)
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
To: Will Deacon <will@kernel.org>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck> <20191101085319.GA3508@blommer>
 <20191101103616.GA2392@willie-the-truck>
 <ddb8d44c-d7cc-5080-1cbc-59f758b699ae@arm.com>
 <20191101105557.GC2392@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7b1e730e-9083-75b9-f1bc-7d84c686c97c@arm.com>
Date: Fri, 1 Nov 2019 11:11:49 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20191101105557.GC2392@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_041153_823904_025FB50F 
X-CRM114-Status: GOOD (  15.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-01 10:55 am, Will Deacon wrote:
> On Fri, Nov 01, 2019 at 10:54:21AM +0000, Robin Murphy wrote:
>> On 2019-11-01 10:36 am, Will Deacon wrote:
>>> On Fri, Nov 01, 2019 at 08:53:19AM +0000, Mark Rutland wrote:
>>>> On Thu, Oct 31, 2019 at 04:08:04PM +0000, Will Deacon wrote:
>>>>> On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
>>>>>> For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
>>>>>> &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
>>>>>> to simplify the armv8_pmuv3_event_attrs.
>>>>>>
>>>>>> Cc: Will Deacon <will@kernel.org>
>>>>>> Cc: Mark Rutland <mark.rutland@arm.com>
>>>>>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>>>>>> ---
>>>>>>    arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
>>>>>>    1 file changed, 65 insertions(+), 124 deletions(-)
>>>>>>
>>>>>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>>>>>> index a0b4f1bca491..d0f084939bcf 100644
>>>>>> --- a/arch/arm64/kernel/perf_event.c
>>>>>> +++ b/arch/arm64/kernel/perf_event.c
>>>>>> @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
>>>>>>    }
>>>>>
>>>>> [...]
>>>>>
>>>>>> +	(&((struct perf_pmu_events_attr[]) { \
>>>>>> +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>>>>>> +		  .id = config, } \
>>>>>> +	})[0].attr.attr)
>>>>>
>>>>> I don't get the need for the array here. Why can't you do:
>>>>>
>>>>> 	(&((struct perf_pmu_events_attr) {
>>>>> 		.attr = ...,
>>>>> 		.id = ...,
>>>>> 	}).attr.attr)
>>>>
>>>> You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
>>>>
>>>> #define ARMV8_EVENT_ATTR(name, config) \
>>>> 	(&((struct perf_pmu_events_attr) { \
>>>> 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>>>> 		.id = config, \
>>>> 	}.attr.attr))
>>>> ... which compiles for me.
>>>
>>> Weird, the following compiles fine for me with both GCC and clang:
>>>
>>> #define ARMV8_EVENT_ATTR(name, config)						\
>>> 	(&((struct perf_pmu_events_attr) {					\
>>> 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),	\
>>> 		.id = config,							\
>>> 	}).attr.attr)
>>
>> You know that the expressions are equivalent because unary "&" has lower
>> precedence than ".", right? ;)
> 
> Right, which is why it's weird that Shaokun claims that the version I posted
> doesn't compile. I assume it didn't build for Mark either, hence his extra
> brackets.

Because different compilers have different ideas of whether "obj" is a 
valid thing to dereference at all, regardless of where you put 
parentheses. From what I remember, the array trick was the only way to 
convince older GCCs to treat the floating struct initialiser as an 
actual object definition. I guess newer versions are a bit more lenient.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
