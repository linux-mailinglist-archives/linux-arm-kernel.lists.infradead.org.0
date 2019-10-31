Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD6EEABB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 09:46:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2J9K8Zk9tcG1E55FzNGza4toF/w+y6OUwNWIk7sCQU=; b=C2vY/q0DUzIPeE
	98gDq8+voyTa63hfDNkDJ1uUu75ItWyvhtEy3UpgsnVZ5yvCzZ/CIlrKHzxzCAUaTzXOH9HfCHj4+
	x8iek/6yhs4KbQOWtNTK8X6zaHvAPCv5qlUTWCLp4TJcc+H5a7YF18UqnjSnDjGADjaMqk8IAJk9N
	T7nyn5Pk9SyzDSGAFr98Fd1WczwaircvfE2b+RKg+xBkfKWcycOzotV+oUlv3NKqDo2QPJ2pHB6CH
	AZhv54b9EWTmN3Wj410IZU+AVsQhuHZB2TYlneRkexN5Qi52hHYRX/aDV1O/PTcopTfLwnWvz/Emz
	SQAr+HBzjAjfdYbuQq3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ65r-0002Tv-9u; Thu, 31 Oct 2019 08:46:11 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ65i-0002TN-Sf
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 08:46:04 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7E79336CC2BF1554C2DA;
 Thu, 31 Oct 2019 16:45:58 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Thu, 31 Oct 2019
 16:45:52 +0800
Subject: Re: [PATCH] arm64: perf: Simplify the ARMv8 PMUv3 event attributes
To: Richard Henderson <richard.henderson@linaro.org>,
 <linux-arm-kernel@lists.infradead.org>
References: <1572407177-48229-1-git-send-email-zhangshaokun@hisilicon.com>
 <b603fc49-01f5-b5b4-7c2c-5f0bc53b6fc1@linaro.org>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <a503b65c-3bf1-83d5-08ba-3f25c880ba97@hisilicon.com>
Date: Thu, 31 Oct 2019 16:45:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <b603fc49-01f5-b5b4-7c2c-5f0bc53b6fc1@linaro.org>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_014603_103250_BF294233 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Richard,

Thanks your comments and Mark has helped to reply some.

On 2019/10/30 21:34, Richard Henderson wrote:
> On 10/30/19 4:46 AM, Shaokun Zhang wrote:
>> For each PMU event, there is a ARMV8_EVENT_ATTR(xx, XX) and
>> &armv8_event_attr_xx.attr.attr. Let's redefine the ARMV8_EVENT_ATTR
>> to simplify the armv8_pmuv3_event_attrs.
> ...
>>  #define ARMV8_EVENT_ATTR(name, config) \
>> +	(&((struct perf_pmu_events_attr[]) { \
>> +		{ .attr = __ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL), \
>> +		  .id = config, } \
>> +	})[0].attr.attr)
>>  
>>  static struct attribute *armv8_pmuv3_event_attrs[] = {
>> +	ARMV8_EVENT_ATTR(sw_incr, ARMV8_PMUV3_PERFCTR_SW_INCR),
> 
> You do realize this creates complete perf_pmu_events_attr structures, most of
> which is unused and unreachable, right?
> 
> Also, why not take the opportunity to assert that the armv8_pmuv3_event_attrs
> array cannot get out of sync with the ARMV8_PMUV3_* defines?
> 

For my initial purpose: remove the &armv8_event_attr_xx.attr.attr and only
maintain the armv8_pmuv3_event_attrs array directly when we want to add one new
PMU event. For example:
#define ARMV8_PMUV3_PERFCTR_OP_RETIRED 		0x3A
.....
static struct attribute *armv8_pmuv3_event_attrs[] = {
	......
	ARMV8_EVENT_ATTR(op_retired, ARMV8_PMUV3_PERFCTR_OP_RETIRED),
	NULL,
};

Thanks,
Shaokun

> Slightly better would seem to be
> 
> #define ARMV8_EVENT_ATTR(name, config) \
> 	[config] = &((struct device_attribute) \
> 		__ATTR(name, 0444, armv8pmu_events_sysfs_show, NULL)).attr
> 
> though I'm not sure why __ATTR is particularly desired above
> 
> #define ARMV8_EVENT_ATTR(name, config)      \
> 	[config] = &(struct attribute){     \
> 		.name = __stringify(name),  \
> 		.mode = 0444,               \
> 	}
> 
> 
> r~
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
