Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC32E255F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wIox+HZ3qcYYqYrKzPGH34QgSgwgkFDg9XIg+caGkc=; b=VPaNO+/QNLW529
	JZx/ETkGREUfCeidbNrOK9F3aDKZtUqL4EZxwhnI316hbCTHLkO7rV+f4Oeu8aLzd1L/qyz2NB7cO
	9PO9pcTcr0g7JrdqMREw8f9S2HymFHdW44KnarEgPTjlGoKfMfETNjYRNwJ6gPWrRu8HqVY/n/KUi
	lpCyWDccDKGPV6yOYOpXtKTIh7kyTQ9JAsD7wR7uwDtu0mnuykc99Vmkx79qIIjRo3kfAzPskB30Y
	8Mc7Tq4i/gdwDjDyx31cwsvOqcXCg77ZQbhCj5OrtvdhF3oN3yxIYAQjBqrod6y2VMA5OwhWCtI/D
	Rtbbu2SrngtEDMz4nIpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7t4-0005kD-6s; Tue, 21 May 2019 16:45:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7sf-0005Sv-58
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:44:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60B49374;
 Tue, 21 May 2019 09:44:48 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EAC5F3F718;
 Tue, 21 May 2019 09:44:47 -0700 (PDT)
Date: Tue, 21 May 2019 17:44:46 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Xiang Zheng <zhengxiang9@huawei.com>
Subject: Re: [PATCH] KVM: ARM64: Update perf event when setting PMU count value
Message-ID: <20190521164445.GW8268@e119886-lin.cambridge.arm.com>
References: <20190519100559.7188-1-zhengxiang9@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190519100559.7188-1-zhengxiang9@huawei.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_094449_526076_16ADE309 
X-CRM114-Status: GOOD (  24.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: marc.zyngier@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 19, 2019 at 06:05:59PM +0800, Xiang Zheng wrote:
> Guest will adjust the sample period and set PMU counter value when
> it takes a long time to handle the PMU interrupts.
> 
> However, we don't have a corresponding change on the virtual PMU
> which is emulated via a perf event. It could cause a large number
> of PMU interrupts injected to guest. Then guest will get hang for
> handling these interrupts.

Yes this is indeed an issue. I believe I've addressed this in my 'chained
pmu' series - the relevant patch is here...

https://lists.cs.columbia.edu/pipermail/kvmarm/2019-May/035933.html

Some other comments below.

> 
> So update the sample_period of perf event if the counter value is
> changed to avoid this case.
> 
> Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
> ---
>  virt/kvm/arm/pmu.c | 54 +++++++++++++++++++++++++++++++++++++++++++++---------
>  1 file changed, 45 insertions(+), 9 deletions(-)
> 
> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> index 1c5b76c..cbad3ec 100644
> --- a/virt/kvm/arm/pmu.c
> +++ b/virt/kvm/arm/pmu.c
> @@ -24,6 +24,11 @@
>  #include <kvm/arm_pmu.h>
>  #include <kvm/arm_vgic.h>
>  
> +static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc);
> +static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
> +						    struct kvm_pmc *pmc,
> +						    struct perf_event_attr *attr);
> +
>  /**
>   * kvm_pmu_get_counter_value - get PMU counter value
>   * @vcpu: The vcpu pointer
> @@ -57,11 +62,29 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>   */
>  void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
>  {
> -	u64 reg;
> +	u64 reg, counter, old_sample_period;
> +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> +	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> +	struct perf_event *event;
> +	struct perf_event_attr attr;
>  
>  	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
>  	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
>  	__vcpu_sys_reg(vcpu, reg) += (s64)val - kvm_pmu_get_counter_value(vcpu, select_idx);
> +
> +	if (pmc->perf_event) {
> +		attr = pmc->perf_event->attr;
> +		old_sample_period = attr.sample_period;
> +		counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> +		attr.sample_period = (-counter) & pmc->bitmask;
> +		if (attr.sample_period == old_sample_period)
> +			return;

I'd be interested to know how often this would evaluate to true.

> +
> +		kvm_pmu_stop_counter(vcpu, pmc);
> +		event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);

I'm not sure it's necessary to change the prototype of kvm_pmu_create_perf_event
as this function will recalculate the sample period based on the updated counter
value anyway.

Thanks,

Andrew Murray

> +		if (event)
> +			pmc->perf_event = event;
> +	}
>  }
>  
>  /**
> @@ -303,6 +326,24 @@ static void kvm_pmu_perf_overflow(struct perf_event *perf_event,
>  	}
>  }
>  
> +static struct perf_event *kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu,
> +						    struct kvm_pmc *pmc,
> +						    struct perf_event_attr *attr)
> +{
> +	struct perf_event *event;
> +
> +	event = perf_event_create_kernel_counter(attr, -1, current,
> +						 kvm_pmu_perf_overflow, pmc);
> +
> +	if (IS_ERR(event)) {
> +		pr_err_once("kvm: pmu event creation failed %ld\n",
> +			    PTR_ERR(event));
> +		return NULL;
> +	}
> +
> +	return event;
> +}
> +
>  /**
>   * kvm_pmu_software_increment - do software increment
>   * @vcpu: The vcpu pointer
> @@ -416,15 +457,10 @@ void kvm_pmu_set_counter_event_type(struct kvm_vcpu *vcpu, u64 data,
>  	/* The initial sample period (overflow count) of an event. */
>  	attr.sample_period = (-counter) & pmc->bitmask;
>  
> -	event = perf_event_create_kernel_counter(&attr, -1, current,
> -						 kvm_pmu_perf_overflow, pmc);
> -	if (IS_ERR(event)) {
> -		pr_err_once("kvm: pmu event creation failed %ld\n",
> -			    PTR_ERR(event));
> -		return;
> -	}
> +	event = kvm_pmu_create_perf_event(vcpu, pmc, &attr);
>  
> -	pmc->perf_event = event;
> +	if (event)
> +		pmc->perf_event = event;
>  }
>  
>  bool kvm_arm_support_pmu_v3(void)
> -- 
> 1.8.3.1
> 
> 
> _______________________________________________
> kvmarm mailing list
> kvmarm@lists.cs.columbia.edu
> https://lists.cs.columbia.edu/mailman/listinfo/kvmarm

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
