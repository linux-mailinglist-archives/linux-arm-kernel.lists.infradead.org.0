Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D327DA19
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jfgSx5wDLZPMx57K9sr9D24wlqr1Vb6Hk5+i/K8SZ1I=; b=bGSS0xDzCI5kYxbc40k2VJeOT
	OPMGvPNoK0P7zkCO223HkzvJu+6BlV5PCHDxrfpZJnESlHWMcMDBxrei0VKWs1BaVeNwFbCMtQYJI
	jvSdZUWvV4OLPL2majuSeGi3slUPiHu3E63zNMIO/4EBO2xlW2tUSdfLc5hqApgWCd1m2BBZeg0wH
	C/PpAW+ADAYt6g58WqeoQgNPJPeM9KPoNJCm9+pTnAjNEmtusgt39foVZxRGeQBYIQCcSKZvWLVY1
	OJc43nu3C8DO83J5Iw0uF8bORcHRvDeG3zRTypMhegGr0fC7P/9S1xBcf5uJlHyeqHsvyNtfD9ub0
	dq5uAER0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht95U-0006F5-F5; Thu, 01 Aug 2019 11:17:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ht95H-0006El-M3
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C2791570;
 Thu,  1 Aug 2019 04:17:23 -0700 (PDT)
Received: from [10.32.8.205] (unknown [10.32.8.205])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAD013F575;
 Thu,  1 Aug 2019 04:17:21 -0700 (PDT)
Subject: Re: [PATCH 2/2] perf/smmuv3: Validate groups for global filtering
To: Will Deacon <will@kernel.org>
References: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
 <1921604dc4cd820363ccf728ade6508e0987e082.1564580090.git.robin.murphy@arm.com>
 <20190801105607.aizjw4l7rvi7vnpw@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e7584ab2-275a-98ce-d2d4-248815d6451c@arm.com>
Date: Thu, 1 Aug 2019 12:17:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190801105607.aizjw4l7rvi7vnpw@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_041723_766496_13202065 
X-CRM114-Status: GOOD (  20.19  )
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 shameerali.kolothum.thodi@huawei.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-01 11:56 am, Will Deacon wrote:
> On Wed, Jul 31, 2019 at 02:37:42PM +0100, Robin Murphy wrote:
>> With global filtering, it becomes possible for users to construct
>> self-contradictory groups with conflicting filters. Make sure we
>> cover that when initially validating events.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/perf/arm_smmuv3_pmu.c | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
>> index dd40df2ac895..e1e41d2fea94 100644
>> --- a/drivers/perf/arm_smmuv3_pmu.c
>> +++ b/drivers/perf/arm_smmuv3_pmu.c
>> @@ -324,6 +324,8 @@ static int smmu_pmu_event_init(struct perf_event *event)
>>   	struct device *dev = smmu_pmu->dev;
>>   	struct perf_event *sibling;
>>   	int group_num_events = 1;
>> +	bool has_filter;
>> +	u32 filter_span, filter_sid;
>>   	u16 event_id;
>>   
>>   	if (event->attr.type != event->pmu->type)
>> @@ -354,6 +356,10 @@ static int smmu_pmu_event_init(struct perf_event *event)
>>   		return -EINVAL;
>>   	}
>>   
>> +	has_filter = get_filter_enable(event);
>> +	filter_span = get_filter_span(event);
>> +	filter_sid = get_filter_stream_id(event);
>> +
>>   	for_each_sibling_event(sibling, event->group_leader) {
>>   		if (sibling->pmu != event->pmu &&
>>   		    !is_software_event(sibling)) {
>> @@ -363,6 +369,16 @@ static int smmu_pmu_event_init(struct perf_event *event)
>>   
>>   		if (++group_num_events >= smmu_pmu->num_counters)
>>   			return -EINVAL;
>> +
>> +		if (smmu_pmu->global_filter) {
>> +			if (has_filter != (bool)get_filter_enable(sibling))
>> +				return -EINVAL;
>> +
>> +			if (has_filter &&
>> +			    (filter_span != get_filter_span(sibling) ||
>> +			    filter_sid != get_filter_stream_id (sibling)))
>> +				return -EINVAL;
>> +		}
> 
> Can we avoid duplicating the validation logic from
> smmu_pmu_apply_event_filter() by adding the group to a fake PMU, like we
> do for the CPU PMU and the DSU PMU? You'll probably need to do a bit
> of surgery on 'struct smmu_pmu' to move out the bits you need, but I
> think it would be better that way.

Given that apply_event_filter() includes the actual register writes, I 
have a strong feeling that down that road lies madness. However, on a 
second look, I see no reason not to factor out the global filter 
validation part for reuse, and in fact I think we can even save 
explicitly tracking global_filter_{span,sid} that way. I'll give it a try.

Robin.

(and hopefully the promise of a respin will let us all overlook the 
obvious "forgot to update the condition when I changed my mind about the 
count" error in patch #1...)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
