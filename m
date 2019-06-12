Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6002A42844
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0UquIQXy9F7LVUGMGYNQHU3dwIHnpkBI45BhCY+aeI=; b=mj9iyAGSXEd68N
	NEEfl0QSfjYCc3ckZ3ekNJGaoxw+yYaJP9DRX4aWAA6a/hjKrXdDH5J0rZUUAFSKGK7IdVvEfScM1
	D98Ef6XuZi5giDPHdzW6TklPdCAsfj7PXbDu8oDU4/G7xE79E4MyWaYah8vvSHgS5frDPFC5bpoII
	pYxtWdDW4ROQIZjrksWqDVdvHgboE3jHBhqfp8BY+uQnyeuS0JYxUN0JpqPU7rmZ8f9nDM4b+BgYO
	BD8YBRdT3B36A4+EaadMxH6uSC3titlwAOngEpHddaNlL+RFT1zyz1+6u7y2b8UjOytldEZGOicDP
	7eN6oNmPMKZhtHC6tznw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3nD-0000rJ-CB; Wed, 12 Jun 2019 13:59:59 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3n2-0000fE-72
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:59:50 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id F36B1AAB7E15BB89D9AB;
 Wed, 12 Jun 2019 21:47:25 +0800 (CST)
Received: from [127.0.0.1] (10.177.29.32) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 12 Jun 2019
 21:47:19 +0800
From: Xiang Zheng <zhengxiang9@huawei.com>
Subject: Re: [PATCH] KVM: ARM64: Update perf event when setting PMU count value
To: Andrew Murray <andrew.murray@arm.com>
References: <20190519100559.7188-1-zhengxiang9@huawei.com>
 <20190521164445.GW8268@e119886-lin.cambridge.arm.com>
Message-ID: <482838e5-64a4-ef99-2e51-4b58e18ba4b4@huawei.com>
Date: Wed, 12 Jun 2019 21:47:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190521164445.GW8268@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.29.32]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_065948_501335_64A6E5C4 
X-CRM114-Status: GOOD (  21.99  )
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
Cc: marc.zyngier@arm.com, Wang Haibin <wanghaibin.wang@huawei.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2019/5/22 0:44, Andrew Murray wrote:
> On Sun, May 19, 2019 at 06:05:59PM +0800, Xiang Zheng wrote:
>> Guest will adjust the sample period and set PMU counter value when
>> it takes a long time to handle the PMU interrupts.
>>
>> However, we don't have a corresponding change on the virtual PMU
>> which is emulated via a perf event. It could cause a large number
>> of PMU interrupts injected to guest. Then guest will get hang for
>> handling these interrupts.
> 
> Yes this is indeed an issue. I believe I've addressed this in my 'chained
> pmu' series - the relevant patch is here...
> 
> https://lists.cs.columbia.edu/pipermail/kvmarm/2019-May/035933.html
> 
> Some other comments below.
> 

Sorry for that I didn't notice your patches...
I will test your patch series.

>>
>> So update the sample_period of perf event if the counter value is
>> changed to avoid this case.
>>
>> Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
>> ---
>>  virt/kvm/arm/pmu.c | 54 +++++++++++++++++++++++++++++++++++++++++++++---------
>>  1 file changed, 45 insertions(+), 9 deletions(-)
>>
>> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
>> index 1c5b76c..cbad3ec 100644
>> --- a/virt/kvm/arm/pmu.c
>> +++ b/virt/kvm/arm/pmu.c
>> @@ -24,6 +24,11 @@
>>  #include <kvm/arm_pmu.h>
>>  #include <kvm/arm_vgic.h>
>>  
>> +static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc);
>> +static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
>> +						    struct kvm_pmc *pmc,
>> +						    struct perf_event_attr *attr);
>> +
>>  /**
>>   * kvm_pmu_get_counter_value - get PMU counter value
>>   * @vcpu: The vcpu pointer
>> @@ -57,11 +62,29 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>>   */
>>  void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
>>  {
>> -	u64 reg;
>> +	u64 reg, counter, old_sample_period;
>> +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
>> +	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
>> +	struct perf_event *event;
>> +	struct perf_event_attr attr;
>>  
>>  	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
>>  	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
>>  	__vcpu_sys_reg(vcpu, reg) += (s64)val - kvm_pmu_get_counter_value(vcpu, select_idx);
>> +
>> +	if (pmc->perf_event) {
>> +		attr = pmc->perf_event->attr;
>> +		old_sample_period = attr.sample_period;
>> +		counter = kvm_pmu_get_counter_value(vcpu, select_idx);
>> +		attr.sample_period = (-counter) & pmc->bitmask;
>> +		if (attr.sample_period == old_sample_period)
>> +			return;
> 
> I'd be interested to know how often this would evaluate to true.
> 

I have counted it while running my test script, the result shows that there are 1552288
times evaluated to true and 8294235 times not.

I think different testcases may produce different results.

>> +
>> +		kvm_pmu_stop_counter(vcpu, pmc);
>> +		event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
> 
> I'm not sure it's necessary to change the prototype of kvm_pmu_create_perf_event
> as this function will recalculate the sample period based on the updated counter
> value anyway.
> 

In this patch, kvm_pmu_create_perf_event() will not recalculate the sample period. Maybe
you confuse it with your patch.:)

> Thanks,
> 
> Andrew Murray
> 
>> +		if (event)
>> +			pmc->perf_event = event;
>> +	}
>>  }
>>  
>>  /**
>> @@ -303,6 +326,24 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
>>  	}
>>  }
>>  
>> +static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
>> +						    struct kvm_pmc *pmc,
>> +						    struct perf_event_attr *attr)
>> +{
>> +	struct perf_event *event;
>> +
>> +	event = perf_event_create_kernel_counter(attr, -1, current,
>> +						 kvm_pmu_perf_overflow, pmc);
>> +
>> +	if (IS_ERR(event)) {
>> +		pr_err_once("kvm: pmu event creation failed %ld\n",
>> +			    PTR_ERR(event));
>> +		return NULL;
>> +	}
>> +
>> +	return event;
>> +}
>> +
>>  /**
>>   * kvm_pmu_software_increment - do software increment
>>   * @vcpu: The vcpu pointer
>> @@ -416,15 +457,10 @@ void kvm_pmu_set_counter_event_type(struct kvm_vcpu *vcpu, u64 data,
>>  	/* The initial sample period (overflow count) of an event. */
>>  	attr.sample_period = (-counter) & pmc->bitmask;
>>  
>> -	event = perf_event_create_kernel_counter(&attr, -1, current,
>> -						 kvm_pmu_perf_overflow, pmc);
>> -	if (IS_ERR(event)) {
>> -		pr_err_once("kvm: pmu event creation failed %ld\n",
>> -			    PTR_ERR(event));
>> -		return;
>> -	}
>> +	event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
>>  
>> -	pmc->perf_event = event;
>> +	if (event)
>> +		pmc->perf_event = event;
>>  }
>>  
>>  bool kvm_arm_support_pmu_v3(void)
>> -- 
>> 1.8.3.1
>>
>>
>> _______________________________________________
>> kvmarm mailing list
>> kvmarm@lists.cs.columbia.edu
>> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm
> 
> .
> 
-- 

Thanks,
Xiang



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
