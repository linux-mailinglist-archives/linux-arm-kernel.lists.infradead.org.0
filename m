Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996E9D8BAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/qi7UMi2ZYxgJcPq58nl8OXP8AYqZRf159hVPsGK4bY=; b=GNIm812dzelbYjAE18zSudBQV
	pqaYeRvYsJpsyMbovRiTRfyswoP7T7S6lQEroBSf5uVyphjp8eIP4nQS5LBwaWNiYE9ld1QBlmfRv
	yyloldnthIxdh+s2wIhkUUEtlRxx8lt4MX2wAEoXJsJo2A44HRExeOgorEEVL/XtoF1nLbpYWfgBd
	no5x+a3yuxj7sxzcQ6/Xo7yRDLpUSNptjkwRCxZFmrdVWUeOTxjOqrBvQjg5mkAw6odfjXFoMtrPF
	NWdaZ6sIO/ZmBkiJADE5kNsoRu9JHPFY6IRwdjdSUsrvcoBsx/nb9dWIVdAd/yFfUsSG06yz2NZuA
	DIj7TJsYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKeyj-0002TQ-A7; Wed, 16 Oct 2019 08:48:21 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeya-0002S4-H3
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:48:14 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8F356CBF38CF2F34D498;
 Wed, 16 Oct 2019 16:47:59 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.179) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0;
 Wed, 16 Oct 2019 16:47:53 +0800
Subject: Re: [RFC PATCH 0/6] SMMUv3 PMCG IMP DEF event support
To: Robin Murphy <robin.murphy@arm.com>, <lorenzo.pieralisi@arm.com>,
 <guohanjun@huawei.com>, <sudeep.holla@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
 <66a3ce9f-d3cd-110f-7353-46e6eaf25b7c@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <1d546b4b-a2ad-49da-b532-951232093a9f@huawei.com>
Date: Wed, 16 Oct 2019 09:47:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <66a3ce9f-d3cd-110f-7353-46e6eaf25b7c@arm.com>
X-Originating-IP: [10.202.227.179]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_014812_737910_5115F459 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: nleeder@codeaurora.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/10/2019 19:00, Robin Murphy wrote:
> Hi John,
>
> On 30/09/2019 15:33, John Garry wrote:
>> This patchset adds IMP DEF event support for the SMMUv3 PMCG.
>>
>> It is marked as an RFC as the method to identify the PMCG implementation
>> may be a quite disliked. And, in general, the series is somewhat
>> incomplete.
>>
>> So the background is that the PMCG supports IMP DEF events, yet we
>> have no
>> method to identify the PMCG to know the IMP DEF events.
>>
>> A method for identifying the PMCG implementation could be using
>> PMDEVARCH, but we cannot rely on this being set properly, as whether this
>> is implemented is not defined in SMMUv3 spec.
>>
>> Another method would be perf event aliasing, but this method of event
>> matching is based on CPU id, which would not guarantee same
>> uniqueness as PMCG implementation.
>>
>> Yet another method could be to continue using ACPI OEM ID in the IORT
>> code, but this does not scale. And it is not suitable if we ever add DT
>> support to the PMCG driver.
>>
>> The method used in this series is based on matching on the parent SMMUv3
>> IIDR. We store this IIDR contents in the arm smmu structure as the first
>> element, which means that we don't have to expose SMMU APIs - this is
>> the part which may be disliked.
>>
>> The final two patches switch the pre-existing PMCG model identification
>> from ACPI OEM ID to the same parent SMMUv3 IIDR matching.
>>
>> For now, we only consider SMMUv3' nodes being the associated node for
>> PMCG.
>

Hi Robin,

> Two significant concerns right off the bat:
>
> - It seems more common than not for silicon designers to fail to
> implement IIDR correctly, so it's only a matter of time before
> inevitably needing to bring back some firmware-level identifier
> abstraction (if not already - does Hi161x have PMCGs?)

Maybe there's a way that we can switch to this method, and leave the 
door open for an easy way to support firmware-level identifier again, if 
ever needed. I'm not too pushed - this was secondary to just allowing 
the PMCG driver know the associated SMMU model.

And, no, hi161x does not have any PMCGs.

>
> - This seems like a step in entirely the wrong direction for supporting
>.

So to support PMCGs that reference a Named Component or Root Complex, I 
thought that the IORT parsing code would have to do some secondary 
lookup to the associated SMMU, through the Named Component or Root 
Complex node.

What was your idea here?

Note: I do acknowledge that an overall issue is that we assume all PMCG 
IMP DEF events are same for a given SMMU model.

>
> Interpreting the Node Reference is definitely a welcome improvement over
> matching table headers, but absent a truly compelling argument to the
> contrary, I'd rather retain the "PMCG model" abstraction in between that
> and the driver itself (especially since those can trivially be hung off
> compatibles once it comes to DT support).

For DT, I would assume that we just use compatible strings would allow 
us to identify the PMCG model.

On a related matter, is there still a need to deal with scenarios of the 
PMCG being located within the SMMU register map? As you may remember, we 
did have this issue but relocated the PMCG to outside the SMMU register 
map in a later chip rev.

Cheers,
John

>
> Thanks,
> Robin.
>
>>
>> John Garry (6):
>>    ACPI/IORT: Set PMCG device parent
>>    iommu/arm-smmu-v3: Record IIDR in arm_smmu_device structure
>>    perf/smmuv3: Retrieve parent SMMUv3 IIDR
>>    perf/smmuv3: Support HiSilicon hip08 (hi1620) IMP DEF events
>>    perf/smmuv3: Match implementation options based on parent SMMU IIDR
>>    ACPI/IORT: Drop code to set the PMCG software-defined model
>>
>>   drivers/acpi/arm64/iort.c     | 69 ++++++++++++++--------------
>>   drivers/iommu/arm-smmu-v3.c   |  5 +++
>>   drivers/perf/arm_smmuv3_pmu.c | 84 ++++++++++++++++++++++++++++++-----
>>   include/linux/acpi_iort.h     |  8 ----
>>   4 files changed, 112 insertions(+), 54 deletions(-)
>>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
