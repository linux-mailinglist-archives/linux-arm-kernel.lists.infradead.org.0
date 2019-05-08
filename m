Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C10151753A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S+0GKx+mpSzYyMleSO3rJvmo6AfCBaLUXiGT5myj3Ag=; b=I/WocxdEExfjYl
	enT+QpCCvxWtVGry+APmo3PHUVXqyiFbtXf1OfSHdLLbAh40DZufyhh+AZ1qv9PnQ9ol4dfq5fIi2
	mr6hF6J7p0XJJjXBDo67C3+sZqMbbQIeLKPDekO+QSU1H/VVQ9eK5UsJ6KQsJhuqo/9+namM2bN8H
	Rr9cAY1OhtM9UYcx8PxmwsH6XYVCQe8o/294okB2NOlGP+GtW6vHzHjkaCtwn1IrlNrhyomPXraYV
	H92JkLLwmMlpBN80+iUOp+wzX7LjBHxwzoAALpF0Y7ymd1lNInPWbnJuZ3B8+c1XLvbZ/MVd9TNvT
	MBO5tf9VtWg1vvsmFRcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOJ0Q-0003gc-Km; Wed, 08 May 2019 09:36:54 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOJ0J-0003fr-S4
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 09:36:49 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C7F2825680005E233F3B;
 Wed,  8 May 2019 17:36:37 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 8 May 2019
 17:36:30 +0800
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
 <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <819de863-92ff-51c5-9c35-880db4f6a922@huawei.com>
Date: Wed, 8 May 2019 17:35:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <82032e5b-0cb5-e48f-ab51-ba5d5f9dceec@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_023648_132940_0285F1C8 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, Hongbo Yao <yaohongbo@huawei.com>,
 catalin.marinas@arm.com, john.garry@huawei.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Cc Alexander.

On 2019/5/8 1:58, Jeremy Linton wrote:
> Hi,
> 
> On 5/4/19 6:06 AM, Hanjun Guo wrote:
>> Hi Jeremy, Mark,
>>
>> On 2019/5/4 7:24, Jeremy Linton wrote:
>>> This patch series enables the Arm Statistical Profiling
>>> Extension (SPE) on ACPI platforms.
>>>
>>> This is possible because ACPI 6.3 uses a previously
>>> reserved field in the MADT to store the SPE interrupt
>>> number, similarly to how the normal PMU is described.
>>> If a consistent valid interrupt exists across all the
>>> cores in the system, a platform device is registered.
>>> That then triggers the SPE module, which runs as normal.
>>>
>>> We also add the ability to parse the PPTT for IDENTICAL
>>> cores. We then use this to sanity check the single SPE
>>> device we create. This creates a bit of a problem with
>>> respect to the specification though. The specification
>>> says that its legal for multiple tree's to exist in the
>>> PPTT. We handle this fine, but what happens in the
>>> case of multiple tree's is that the lack of a common
>>> node with IDENTICAL set forces us to assume that there
>>> are multiple non-IDENTICAL cores in the machine.
>>
>> Adding this patch set on top of latest mainline kernel,
>> and tested on D06 which has the SPE feature, in boot message
>> shows it was probed successfully:
>>
>> arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]
>>
>> but when I test it with spe events such as
>>
>> perf record -c 1024 -e arm_spe_0/branch_filter=0/ -o spe ls
>>
>> it fails with:
>> failed to mmap with 12 (Cannot allocate memory),
>>
>> Confirmed that patch [0] is merged and other perf events are working
>> fine.
> 
> Its pretty easy to get into the weeds with this driver, does it work with examples like:
> 
> https://lkml.org/lkml/2018/1/14/122

No, not work at all.

SPE works on 5.0, but not work after 5.1-rc1, bisected to this commit:

5768402fd9c6 perf/ring_buffer: Use high order allocations for AUX buffers optimistically

Cced Alexander as well as Alexander is the author of above patch.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
