Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F4057ED804
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 04:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6jxUnmbQYkFTY4dCEX6/gmYcp/Oxzh9OeS22KcQupO0=; b=hZZit5UTYgW3u2
	3M6xxt4FIjbg3j9NLOl8IUs/O3WUf1mpPSisK182TdtH0A83TJV1gAqUSVqeJ9U9OBaM+0WKQ70j5
	SpfBpyqjzopdPE5dB2XX1LS9BrMLxL7THdRojMmtB7Hw9CvTzrILEuQKUl+IPjl5McNNdmvqaQhSI
	UwL9C9W4eyvXK4IEnu+Ximw2+iB5WUsyhsnBhXrG5VwC5YveCmm7VdcYBPP+CNcw37lfgxLS3+VQe
	opoEMJgAZIVDHKWjbCPyLRBKRsGZQXnd6zcwyEefMZPK2qgJMaW1FSImtRl7g6EIDLRrchM5Hv+QK
	RNswAq33kiiGp8cIUfPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRStZ-0002EF-Te; Mon, 04 Nov 2019 03:19:09 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRStQ-0002Dr-2S
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 03:19:02 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0529E92CFD0DA0A73F3C;
 Mon,  4 Nov 2019 11:18:54 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Mon, 4 Nov 2019
 11:18:53 +0800
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck> <20191101085319.GA3508@blommer>
 <20191101103616.GA2392@willie-the-truck>
 <ddb8d44c-d7cc-5080-1cbc-59f758b699ae@arm.com>
 <20191101105557.GC2392@willie-the-truck>
 <00880214-70ea-d374-7a42-fa25e8c21cb6@hisilicon.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <b32231d5-550e-d79e-4211-5b174a2384f6@hisilicon.com>
Date: Mon, 4 Nov 2019 11:18:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <00880214-70ea-d374-7a42-fa25e8c21cb6@hisilicon.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_191900_276294_A30BE4A9 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2019/11/4 9:02, Shaokun Zhang wrote:
> Hi Will,
> 
> On 2019/11/1 18:55, Will Deacon wrote:
>> On Fri, Nov 01, 2019 at 10:54:21AM +0000, Robin Murphy wrote:
>>> On 2019-11-01 10:36 am, Will Deacon wrote:
>>>> On Fri, Nov 01, 2019 at 08:53:19AM +0000, Mark Rutland wrote:
>>>>> On Thu, Oct 31, 2019 at 04:08:04PM +0000, Will Deacon wrote:
>>>>>> On Wed, Oct 30, 2019 at 11:46:17AM +0800, Shaokun Zhang wrote:
>>>>>>> For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
>>>>>>> &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
>>>>>>> to simplify the armv8_pmuv3_event_attrs.
>>>>>>>
>>>>>>> Cc: Will Deacon <will@kernel.org>
>>>>>>> Cc: Mark Rutland <mark.rutland@arm.com>
>>>>>>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>>>>>>> ---
>>>>>>>   arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
>>>>>>>   1 file changed, 65 insertions(+), 124 deletions(-)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>>>>>>> index a0b4f1bca491..d0f084939bcf 100644
>>>>>>> --- a/arch/arm64/kernel/perf_event.c
>>>>>>> +++ b/arch/arm64/kernel/perf_event.c
>>>>>>> @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
>>>>>>>   }
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +	(&((struct perf_pmu_events_attr[]) { \
>>>>>>> +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>>>>>>> +		  .id = config, } \
>>>>>>> +	})[0].attr.attr)
>>>>>>
>>>>>> I don't get the need for the array here. Why can't you do:
>>>>>>
>>>>>> 	(&((struct perf_pmu_events_attr) {
>>>>>> 		.attr = ...,
>>>>>> 		.id = ...,
>>>>>> 	}).attr.attr)
>>>>>
>>>>> You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
>>>>>
>>>>> #define ARMV8_EVENT_ATTR(name, config) \
>>>>> 	(&((struct perf_pmu_events_attr) { \
>>>>> 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>>>>> 		.id = config, \
>>>>> 	}.attr.attr))
>>>>> ... which compiles for me.
>>>>
>>>> Weird, the following compiles fine for me with both GCC and clang:
>>>>
>>>> #define ARMV8_EVENT_ATTR(name, config)						\
>>>> 	(&((struct perf_pmu_events_attr) {					\
>>>> 		.attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),	\
>>>> 		.id = config,							\
>>>> 	}).attr.attr)
>>>
>>> You know that the expressions are equivalent because unary "&" has lower
>>> precedence than ".", right? ;)
>>
>> Right, which is why it's weird that Shaokun claims that the version I posted
>> doesn't compile. I assume it didn't build for Mark either, hence his extra
> 
> The GCC version is gcc (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609.
> It's a little old ;-)

Sorry for my noise, it's my mistake that I forgot to remove the brackets when deleted the array.
 #define ARMV8_EVENT_ATTR(name, config) \
-       (&((struct perf_pmu_events_attr[]) { \
+       (&((struct perf_pmu_events_attr) { \
                { .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
                  .id = config, } \
-       })[0].attr.attr)
+       }).attr.attr)

It works now if I follow your proposal completely.:-P

Thanks,
Shaokun

> 
> Thanks,
> Shaokun
> 
>> brackets.
>>
>> Will
>>
>> .
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
