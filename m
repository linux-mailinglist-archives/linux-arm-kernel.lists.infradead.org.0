Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2E248E6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oBaymYnB66s9dBm+rp4T550kGS9oJBqu+D8eF4tc/U=; b=tB4xVnoyaLKBJe
	kT37axl5QhZC9/M+3XSAYoFz9fRRN4FNGqZqe/h0yRZWEkkz1rffz7XvMwDMV9T894VX0TZClvlEb
	IL56HE5HoWmjCv5bwIcgr698TtrPbdrj4x48ypiZTcPUarlhzRoyMedlqqbbSQzo8aIO1lPGxX3ME
	SC4svG76tjzGpdD4BOrjskELLIELIJ3tU3Cb7SFd9K0LwouK2cmrsgXWqnXpXKb3A21NSaVT41KL8
	FMpbVNTYC3fCQ1UoqWonFPWmOricNGPSxsCyCNsnZKFIG4uqG/AOT00Vc1mADP4kE9aGY1f7vI2Y/
	s09HxspOl3zXDhoCeRAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxFl-0000e1-58; Mon, 17 Jun 2019 19:25:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxFS-0000d9-Cp
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:25:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9F482B;
 Mon, 17 Jun 2019 12:24:56 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A64B3F246;
 Mon, 17 Jun 2019 12:24:56 -0700 (PDT)
Date: Mon, 17 Jun 2019 20:24:54 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiang Zheng <zhengxiang9@huawei.com>
Subject: Re: [PATCH] KVM: ARM64: Update perf event when setting PMU count value
Message-ID: <20190617192454.GO20984@e119886-lin.cambridge.arm.com>
References: <20190519100559.7188-1-zhengxiang9@huawei.com>
 <20190521164445.GW8268@e119886-lin.cambridge.arm.com>
 <482838e5-64a4-ef99-2e51-4b58e18ba4b4@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <482838e5-64a4-ef99-2e51-4b58e18ba4b4@huawei.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_122458_529010_1F218BF4 
X-CRM114-Status: GOOD (  29.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wed, Jun 12, 2019 at 09:47:05PM +0800, Xiang Zheng wrote:
> 
> On 2019/5/22 0:44, Andrew Murray wrote:
> > On Sun, May 19, 2019 at 06:05:59PM +0800, Xiang Zheng wrote:
> >> Guest will adjust the sample period and set PMU counter value when
> >> it takes a long time to handle the PMU interrupts.
> >>
> >> However, we don't have a corresponding change on the virtual PMU
> >> which is emulated via a perf event. It could cause a large number
> >> of PMU interrupts injected to guest. Then guest will get hang for
> >> handling these interrupts.
> > 
> > Yes this is indeed an issue. I believe I've addressed this in my 'chained
> > pmu' series - the relevant patch is here...
> > 
> > https://lists.cs.columbia.edu/pipermail/kvmarm/2019-May/035933.html
> > 
> > Some other comments below.
> > 
> 
> Sorry for that I didn't notice your patches...
> I will test your patch series.

Thanks.

> 
> >>
> >> So update the sample_period of perf event if the counter value is
> >> changed to avoid this case.
> >>
> >> Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
> >> ---
> >>  virt/kvm/arm/pmu.c | 54 +++++++++++++++++++++++++++++++++++++++++++++---------
> >>  1 file changed, 45 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> >> index 1c5b76c..cbad3ec 100644
> >> --- a/virt/kvm/arm/pmu.c
> >> +++ b/virt/kvm/arm/pmu.c
> >> @@ -24,6 +24,11 @@
> >>  #include <kvm/arm_pmu.h>
> >>  #include <kvm/arm_vgic.h>
> >>  
> >> +static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc);
> >> +static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
> >> +						    struct kvm_pmc *pmc,
> >> +						    struct perf_event_attr *attr);
> >> +
> >>  /**
> >>   * kvm_pmu_get_counter_value - get PMU counter value
> >>   * @vcpu: The vcpu pointer
> >> @@ -57,11 +62,29 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
> >>   */
> >>  void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
> >>  {
> >> -	u64 reg;
> >> +	u64 reg, counter, old_sample_period;
> >> +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> >> +	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> >> +	struct perf_event *event;
> >> +	struct perf_event_attr attr;
> >>  
> >>  	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
> >>  	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
> >>  	__vcpu_sys_reg(vcpu, reg) += (s64)val - kvm_pmu_get_counter_value(vcpu, select_idx);
> >> +
> >> +	if (pmc->perf_event) {
> >> +		attr = pmc->perf_event->attr;
> >> +		old_sample_period = attr.sample_period;
> >> +		counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> >> +		attr.sample_period = (-counter) & pmc->bitmask;
> >> +		if (attr.sample_period == old_sample_period)
> >> +			return;
> > 
> > I'd be interested to know how often this would evaluate to true.
> > 
> 
> I have counted it while running my test script, the result shows that there are 1552288
> times evaluated to true and 8294235 times not.
> 
> I think different testcases may produce different results.

You may find that this occurs more often when you are using pinned events, e.g.
when the counter is pinned to a process. When this happens perf stops and starts
the counter each time the process is switched in/out. The ARM pmu
(drivers/perf/arm_pmu.c) resets the period each time the counter is restarted
(armpmu_start), and thus rewrites the same value to the hardware counter (I think).

If you run "perf stat -e instructions" you'll probably find the number reduces.

I guess there is a balance between doing unnecessary work (recreating the kernel
event) and code complexity here. However there is scope for similar optimisations
such as not recreating the event when someone writes the same event type 
(kvm_pmu_set_counter_event_type).

> 
> >> +
> >> +		kvm_pmu_stop_counter(vcpu, pmc);
> >> +		event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
> > 
> > I'm not sure it's necessary to change the prototype of kvm_pmu_create_perf_event
> > as this function will recalculate the sample period based on the updated counter
> > value anyway.
> > 
> 
> In this patch, kvm_pmu_create_perf_event() will not recalculate the sample period. Maybe
> you confuse it with your patch.:)

Yes sorry!

Thanks,

Andrew Murray

> 
> > Thanks,
> > 
> > Andrew Murray
> > 
> >> +		if (event)
> >> +			pmc->perf_event = event;
> >> +	}
> >>  }
> >>  
> >>  /**
> >> @@ -303,6 +326,24 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
> >>  	}
> >>  }
> >>  
> >> +static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
> >> +						    struct kvm_pmc *pmc,
> >> +						    struct perf_event_attr *attr)
> >> +{
> >> +	struct perf_event *event;
> >> +
> >> +	event = perf_event_create_kernel_counter(attr, -1, current,
> >> +						 kvm_pmu_perf_overflow, pmc);
> >> +
> >> +	if (IS_ERR(event)) {
> >> +		pr_err_once("kvm: pmu event creation failed %ld\n",
> >> +			    PTR_ERR(event));
> >> +		return NULL;
> >> +	}
> >> +
> >> +	return event;
> >> +}
> >> +
> >>  /**
> >>   * kvm_pmu_software_increment - do software increment
> >>   * @vcpu: The vcpu pointer
> >> @@ -416,15 +457,10 @@ void kvm_pmu_set_counter_event_type(struct kvm_vcpu *vcpu, u64 data,
> >>  	/* The initial sample period (overflow count) of an event. */
> >>  	attr.sample_period = (-counter) & pmc->bitmask;
> >>  
> >> -	event = perf_event_create_kernel_counter(&attr, -1, current,
> >> -						 kvm_pmu_perf_overflow, pmc);
> >> -	if (IS_ERR(event)) {
> >> -		pr_err_once("kvm: pmu event creation failed %ld\n",
> >> -			    PTR_ERR(event));
> >> -		return;
> >> -	}
> >> +	event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
> >>  
> >> -	pmc->perf_event = event;
> >> +	if (event)
> >> +		pmc->perf_event = event;
> >>  }
> >>  
> >>  bool kvm_arm_support_pmu_v3(void)
> >> -- 
> >> 1.8.3.1
> >>
> >>
> >> _______________________________________________
> >> kvmarm mailing list
> >> kvmarm@lists.cs.columbia.edu
> >> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm
> > 
> > .
> > 
> -- 
> 
> Thanks,
> Xiang
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
