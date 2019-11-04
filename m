Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E200BED763
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 03:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4E+BbvQ4pH4/yy3FSejz0OOj3rKJF5xxh6VHotd4hY=; b=kw4lp+iWvVc5tA
	H/FRmsB+YSqUY/Zk3PncRwrwPHo9hZ1pjtDuC+Xg2DwDCLEJMTuQvxp2BNrdFg0OSpjdQLe4qFnFG
	Roued3rLSMSqeZnUA4TLh2k4Rq48T1vt+uHoeeFWvkuMJ9ceKjO9u8VJ5YCCYwitoA6iSkPj2f9bF
	fjDVH6PRWYFkX8PUWUxJQEnS2TXUQpiCHzxs3KdJCVaXLpUkb9vCwvlH4gG+vL5qHJJBpnSy3HRAn
	YgDMfrc4Vbcsct3weIXRSUNx/1xxXjZOodestbq8i2Pzs7Fo521b6mAOKXBzbDKjedh1fLUd8IhNO
	P3sFfYEFvA8zO/vAdIfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRRhP-0004I1-CW; Mon, 04 Nov 2019 02:02:31 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRRhH-0004H1-D1
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 02:02:25 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6F104AC0AF1BEAE267E5;
 Mon,  4 Nov 2019 10:02:16 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Mon, 4 Nov 2019
 10:02:15 +0800
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
To: Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191031160804.GA28325@willie-the-truck> <20191101085319.GA3508@blommer>
 <20191101103616.GA2392@willie-the-truck>
 <ddb8d44c-d7cc-5080-1cbc-59f758b699ae@arm.com>
 <20191101105557.GC2392@willie-the-truck>
 <7b1e730e-9083-75b9-f1bc-7d84c686c97c@arm.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <181d59c8-6252-c01c-79a9-364158be7105@hisilicon.com>
Date: Mon, 4 Nov 2019 10:02:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <7b1e730e-9083-75b9-f1bc-7d84c686c97c@arm.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_180223_610029_EB6CB335 
X-CRM114-Status: GOOD (  13.83  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On 2019/11/1 19:11, Robin Murphy wrote:
> On 2019-11-01 10:55 am, Will Deacon wrote:
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
>>>>>>>    arch/arm64/kernel/perf_event.c | 189 ++++++++++++++---------------------------
>>>>>>>    1 file changed, 65 insertions(+), 124 deletions(-)
>>>>>>>
>>>>>>> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
>>>>>>> index a0b4f1bca491..d0f084939bcf 100644
>>>>>>> --- a/arch/arm64/kernel/perf_event.c
>>>>>>> +++ b/arch/arm64/kernel/perf_event.c
>>>>>>> @@ -159,132 +159,73 @@ armv8pmu_events_sysfs_show(struct device *dev,
>>>>>>>    }
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +    (&((struct perf_pmu_events_attr[]) { \
>>>>>>> +        { .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>>>>>>> +          .id = config, } \
>>>>>>> +    })[0].attr.attr)
>>>>>>
>>>>>> I don't get the need for the array here. Why can't you do:
>>>>>>
>>>>>>     (&((struct perf_pmu_events_attr) {
>>>>>>         .attr = ...,
>>>>>>         .id = ...,
>>>>>>     }).attr.attr)
>>>>>
>>>>> You need want &(obj.attr.attr) rather than &(obj).attr.attr, i.e.
>>>>>
>>>>> #define ARMV8_EVENT_ATTR(name, config) \
>>>>>     (&((struct perf_pmu_events_attr) { \
>>>>>         .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>>>>>         .id = config, \
>>>>>     }.attr.attr))
>>>>> ... which compiles for me.
>>>>
>>>> Weird, the following compiles fine for me with both GCC and clang:
>>>>
>>>> #define ARMV8_EVENT_ATTR(name, config)                        \
>>>>     (&((struct perf_pmu_events_attr) {                    \
>>>>         .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL),    \
>>>>         .id = config,                            \
>>>>     }).attr.attr)
>>>
>>> You know that the expressions are equivalent because unary "&" has lower
>>> precedence than ".", right? ;)
>>
>> Right, which is why it's weird that Shaokun claims that the version I posted
>> doesn't compile. I assume it didn't build for Mark either, hence his extra
>> brackets.
> 
> Because different compilers have different ideas of whether "obj" is a valid thing to dereference at all, regardless of where you put parentheses. From what I remember, the array trick was the only way to convince older GCCs to treat the floating struct initialiser as an actual object definition. I guess newer versions are a bit more lenient.
> 

Thanks for your detailed explanations, sounds great! Both GCC 5.4 and 7.3 are
unhappy without the array trick.

Thanks,
Shaokun

> Robin.
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
