Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011F26207
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bHixbUKGVqJ+fr+N36bEhfBuAXYRQqUASxHJzJP1dW8=; b=k4joduA0yMHmyV
	aHzc7hdo7GOJc93v3b+HiAFztApH8aZAZzlYrXGtpcNWEV5rTjOQksve3IZZjH74c6xwn+By1t79I
	3lah5GC8at5PF1o2Z+orhoI2iBa58XMG7f0ONzTeH70ZdZqSlHAtRMVTgfxVpatmfTJvpwg8mSG2Y
	npl5yxZQqJCGVbWZvP3c5JSX/q6iHayQTs0w6HDP2h2yAc+V5b1P/jbaj9gjfr3mn8Gmy81JY+YWz
	zzmyVXRQDGvSdJtOQFxcZ1lX9Sh7/N2eCQIK9bM2peURcYGq5UkrslUpjR33tWh+HX0Ke5wf67r5i
	Ffz2i6P7PNPpjlZWjmVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTOdm-00088q-VC; Wed, 22 May 2019 10:38:34 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOaz-00054p-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1F68165C;
 Wed, 22 May 2019 03:35:40 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27A123F73F;
 Wed, 22 May 2019 03:35:39 -0700 (PDT)
Date: Wed, 22 May 2019 11:35:38 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v7 5/5] KVM: arm/arm64: support chained PMU counters
Message-ID: <20190522103537.GZ8268@e119886-lin.cambridge.arm.com>
References: <20190521155228.903-1-andrew.murray@arm.com>
 <20190521155228.903-6-andrew.murray@arm.com>
 <42142487-4059-dbfb-062c-0839c1f0ea51@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <42142487-4059-dbfb-062c-0839c1f0ea51@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033541_668208_11041C35 
X-CRM114-Status: GOOD (  34.20  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 05:31:47PM +0100, Marc Zyngier wrote:
> On 21/05/2019 16:52, Andrew Murray wrote:
> > ARMv8 provides support for chained PMU counters, where an event type
> > of 0x001E is set for odd-numbered counters, the event counter will
> > increment by one for each overflow of the preceding even-numbered
> > counter. Let's emulate this in KVM by creating a 64 bit perf counter
> > when a user chains two emulated counters together.
> > 
> > For chained events we only support generating an overflow interrupt
> > on the high counter. We use the attributes of the low counter to
> > determine the attributes of the perf event.
> > 
> > Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
> > ---
> >  include/kvm/arm_pmu.h |   2 +
> >  virt/kvm/arm/pmu.c    | 246 ++++++++++++++++++++++++++++++++++++------
> >  2 files changed, 215 insertions(+), 33 deletions(-)
> > 
> > diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
> > index b73f31baca52..8b434745500a 100644
> > --- a/include/kvm/arm_pmu.h
> > +++ b/include/kvm/arm_pmu.h
> > @@ -22,6 +22,7 @@
> >  #include <asm/perf_event.h>
> >  
> >  #define ARMV8_PMU_CYCLE_IDX		(ARMV8_PMU_MAX_COUNTERS - 1)
> > +#define ARMV8_PMU_MAX_COUNTER_PAIRS	((ARMV8_PMU_MAX_COUNTERS + 1) >> 1)
> >  
> >  #ifdef CONFIG_KVM_ARM_PMU
> >  
> > @@ -34,6 +35,7 @@ struct kvm_pmc {
> >  struct kvm_pmu {
> >  	int irq_num;
> >  	struct kvm_pmc pmc[ARMV8_PMU_MAX_COUNTERS];
> > +	DECLARE_BITMAP(chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
> >  	bool ready;
> >  	bool created;
> >  	bool irq_level;
> > diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
> > index ae1e886d4a1a..4b0981c402c6 100644
> > --- a/virt/kvm/arm/pmu.c
> > +++ b/virt/kvm/arm/pmu.c
> > @@ -25,28 +25,128 @@
> >  #include <kvm/arm_vgic.h>
> >  
> >  static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
> > +
> > +#define PERF_ATTR_CFG1_KVM_PMU_CHAINED 0x1
> > +
> > +static struct kvm_vcpu *kvm_pmc_to_vcpu(struct kvm_pmc *pmc)
> > +{
> > +	struct kvm_pmu *pmu;
> > +	struct kvm_vcpu_arch *vcpu_arch;
> > +
> > +	pmc -= pmc->idx;
> > +	pmu = container_of(pmc, struct kvm_pmu, pmc[0]);
> > +	vcpu_arch = container_of(pmu, struct kvm_vcpu_arch, pmu);
> > +	return container_of(vcpu_arch, struct kvm_vcpu, arch);
> > +}
> > +
> >  /**
> > - * kvm_pmu_get_counter_value - get PMU counter value
> > + * kvm_pmu_pmc_is_chained - determine if the pmc is chained
> > + * @pmc: The PMU counter pointer
> > + */
> > +static bool kvm_pmu_pmc_is_chained(struct kvm_pmc *pmc)
> > +{
> > +	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
> > +
> > +	return test_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
> > +}
> > +
> > +/**
> > + * kvm_pmu_pmc_is_high_counter - determine if select_idx is a high/low counter
> > + * @select_idx: The counter index
> > + */
> > +static bool kvm_pmu_pmc_is_high_counter(u64 select_idx)
> > +{
> > +	return select_idx & 0x1;
> > +}
> > +
> > +/**
> > + * kvm_pmu_get_canonical_pmc - obtain the canonical pmc
> > + * @pmc: The PMU counter pointer
> > + *
> > + * When a pair of PMCs are chained together we use the low counter (canonical)
> > + * to hold the underlying perf event.
> > + */
> > +static struct kvm_pmc *kvm_pmu_get_canonical_pmc(struct kvm_pmc *pmc)
> > +{
> > +	if (kvm_pmu_pmc_is_chained(pmc) &&
> > +	    kvm_pmu_pmc_is_high_counter(pmc->idx))
> > +		return pmc - 1;
> > +
> > +	return pmc;
> > +}
> > +
> > +/**
> > + * kvm_pmu_idx_has_chain_evtype - determine if the event type is chain
> >   * @vcpu: The vcpu pointer
> >   * @select_idx: The counter index
> >   */
> > -u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
> > +static bool kvm_pmu_idx_has_chain_evtype(struct kvm_vcpu *vcpu, u64 select_idx)
> >  {
> > -	u64 counter, reg, enabled, running;
> > -	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> > -	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> > +	u64 eventsel, reg;
> >  
> > -	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
> > -	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
> > -	counter = __vcpu_sys_reg(vcpu, reg);
> > +	select_idx |= 0x1;
> > +
> > +	if (select_idx == ARMV8_PMU_CYCLE_IDX)
> > +		return false;
> > +
> > +	reg = PMEVTYPER0_EL0 + select_idx;
> > +	eventsel = __vcpu_sys_reg(vcpu, reg) & ARMV8_PMU_EVTYPE_EVENT;
> > +
> > +	return armv8pmu_evtype_is_chain(eventsel);
> > +}
> > +
> > +/**
> > + * kvm_pmu_get_pair_counter_value - get PMU counter value
> > + * @vcpu: The vcpu pointer
> > + * @pmc: The PMU counter pointer
> > + */
> > +static u64 kvm_pmu_get_pair_counter_value(struct kvm_vcpu *vcpu,
> > +					  struct kvm_pmc *pmc)
> > +{
> > +	u64 counter, counter_high, reg, enabled, running;
> > +
> > +	if (kvm_pmu_pmc_is_chained(pmc)) {
> > +		pmc = kvm_pmu_get_canonical_pmc(pmc);
> > +		reg = PMEVCNTR0_EL0 + pmc->idx;
> > +
> > +		counter = __vcpu_sys_reg(vcpu, reg);
> > +		counter_high = __vcpu_sys_reg(vcpu, reg + 1);
> > +
> > +		counter = lower_32_bits(counter) | (counter_high << 32);
> > +	} else {
> > +		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
> > +		      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
> > +		counter = __vcpu_sys_reg(vcpu, reg);
> > +	}
> >  
> > -	/* The real counter value is equal to the value of counter register plus
> > +	/*
> > +	 * The real counter value is equal to the value of counter register plus
> >  	 * the value perf event counts.
> >  	 */
> >  	if (pmc->perf_event)
> >  		counter += perf_event_read_value(pmc->perf_event, &enabled,
> >  						 &running);
> >  
> > +	return counter;
> > +}
> > +
> > +/**
> > + * kvm_pmu_get_counter_value - get PMU counter value
> > + * @vcpu: The vcpu pointer
> > + * @select_idx: The counter index
> > + */
> > +u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
> > +{
> > +	u64 counter;
> > +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> > +	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> > +
> > +	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> > +
> > +	if (kvm_pmu_pmc_is_chained(pmc) &&
> > +	    kvm_pmu_pmc_is_high_counter(select_idx))
> > +		counter >>= 32;
> > +
> >  	return counter & pmc->bitmask;
> >  }
> >  
> > @@ -74,6 +174,7 @@ void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
> >   */
> >  static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
> >  {
> > +	pmc = kvm_pmu_get_canonical_pmc(pmc);
> >  	if (pmc->perf_event) {
> >  		perf_event_disable(pmc->perf_event);
> >  		perf_event_release_kernel(pmc->perf_event);
> > @@ -91,13 +192,24 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
> >  {
> >  	u64 counter, reg;
> >  
> > -	if (pmc->perf_event) {
> > +	pmc = kvm_pmu_get_canonical_pmc(pmc);
> > +	if (!pmc->perf_event)
> > +		return;
> > +
> > +	if (kvm_pmu_pmc_is_chained(pmc)) {
> > +		counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> > +
> > +		reg = PMEVCNTR0_EL0 + pmc->idx;
> > +		__vcpu_sys_reg(vcpu, reg) = counter & pmc->bitmask;
> > +		__vcpu_sys_reg(vcpu, reg + 1) = (counter >> 32) & pmc->bitmask;
> 
> There is something odd here: You use the same mask for both half of the
> counter. The second one doesn't make much sense, and the first one makes
> me wonder... Why isn't bitmask a 64bit quantity in this case?
> 

Yes it's incorrect, the second bitmask should have been pmc+1's bitmask. (In
the previous revision of this series the sysreg values were populated by two
calls to kvm_pmu_get_counter_value with pmc and pmc+1 - I introduced this error
when using kvm_pmu_get_pair_counter_value instead).

My rationale has been that the __vcpu_sys_reg's should represent the underlying
hardware registers. This means a 64 bit register with the first 32 bits RES0 for
PMEVCNTR<n> registers (chained or otherwise) and a 64 bit register for PMCCNTR.
We currently use the bitmask to mask off the RES0 bits in kvm_pmu_get_counter_value
when requested by access_pmu_evcntr (to match the counter width). (And thus I've
treated bitmask as the width of the counter *within* each register).

It may be possible, for chained counters, to use only the register value and
bitmask in the canonical (just as we do now for the perf_event). Thus for chained
counters the bitmask is stored in the low counter and is always 64 bits, and the
64 bit counter value is also only stored in the low counter vcpu_sys_reg register.

This means we could calculate the sample_period with the canonical bitmask (instead
of the hunk you also commented on). However it means that in kvm_pmu_get_counter_value
we'd have to mask out the RES0 bits indexes that are not the cycle counter. We
would also have to write the value of the high counter upon demotion from chained
to unchained in kvm_pmu_update_pmc_chained.

Does this seem a better approach to you?

Thanks,

Andrew Murray


> > +	} else {
> >  		counter = kvm_pmu_get_counter_value(vcpu, pmc->idx);
> >  		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
> >  		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
> >  		__vcpu_sys_reg(vcpu, reg) = counter;
> > -		kvm_pmu_release_perf_event(pmc);
> >  	}
> > +
> > +	kvm_pmu_release_perf_event(pmc);
> >  }
> >  
> >  /**
> > @@ -115,6 +227,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
> >  		pmu->pmc[i].idx = i;
> >  		pmu->pmc[i].bitmask = 0xffffffffUL;
> >  	}
> > +
> > +	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
> >  }
> >  
> >  /**
> > @@ -154,6 +268,7 @@ void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
> >  	int i;
> >  	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> >  	struct kvm_pmc *pmc;
> > +	struct perf_event *perf_event;
> >  
> >  	if (!(__vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_E) || !val)
> >  		return;
> > @@ -163,9 +278,21 @@ void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
> >  			continue;
> >  
> >  		pmc = &pmu->pmc[i];
> > +
> > +		/*
> > +		 * For high counters of chained events we must recreate the
> > +		 * perf event with the long (64bit) attribute set.
> > +		 */
> > +		if (kvm_pmu_pmc_is_chained(pmc) &&
> > +		    kvm_pmu_pmc_is_high_counter(i)) {
> > +			kvm_pmu_create_perf_event(vcpu, i);
> > +			continue;
> > +		}
> > +
> > +		pmc = kvm_pmu_get_canonical_pmc(pmc);
> >  		if (pmc->perf_event) {
> >  			perf_event_enable(pmc->perf_event);
> > -			if (pmc->perf_event->state != PERF_EVENT_STATE_ACTIVE)
> > +			if (perf_event->state != PERF_EVENT_STATE_ACTIVE)
> >  				kvm_debug("fail to enable perf event\n");
> >  		}
> >  	}
> > @@ -192,6 +319,18 @@ void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
> >  			continue;
> >  
> >  		pmc = &pmu->pmc[i];
> > +
> > +		/*
> > +		 * For high counters of chained events we must recreate the
> > +		 * perf event with the long (64bit) attribute unset.
> > +		 */
> > +		if (kvm_pmu_pmc_is_chained(pmc) &&
> > +		    kvm_pmu_pmc_is_high_counter(i)) {
> > +			kvm_pmu_create_perf_event(vcpu, i);
> > +			continue;
> > +		}
> > +
> > +		pmc = kvm_pmu_get_canonical_pmc(pmc);
> >  		if (pmc->perf_event)
> >  			perf_event_disable(pmc->perf_event);
> >  	}
> > @@ -281,17 +420,6 @@ void kvm_pmu_sync_hwstate(struct kvm_vcpu *vcpu)
> >  	kvm_pmu_update_state(vcpu);
> >  }
> >  
> > -static inline struct kvm_vcpu *kvm_pmc_to_vcpu(struct kvm_pmc *pmc)
> > -{
> > -	struct kvm_pmu *pmu;
> > -	struct kvm_vcpu_arch *vcpu_arch;
> > -
> > -	pmc -= pmc->idx;
> > -	pmu = container_of(pmc, struct kvm_pmu, pmc[0]);
> > -	vcpu_arch = container_of(pmu, struct kvm_vcpu_arch, pmu);
> > -	return container_of(vcpu_arch, struct kvm_vcpu, arch);
> > -}
> > -
> >  /**
> >   * When the perf event overflows, set the overflow status and inform the vcpu.
> >   */
> > @@ -389,13 +517,20 @@ static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
> >  static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> >  {
> >  	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> > -	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> > +	struct kvm_pmc *pmc;
> >  	struct perf_event *event;
> >  	struct perf_event_attr attr;
> >  	u64 eventsel, counter, reg, data;
> >  
> > -	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
> > -	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + select_idx;
> > +	/*
> > +	 * For chained counters the event type and filtering attributes are
> > +	 * obtained from the low/even counter. We also use this counter to
> > +	 * determine if the event is enabled/disabled.
> > +	 */
> > +	pmc = kvm_pmu_get_canonical_pmc(&pmu->pmc[select_idx]);
> > +
> > +	reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
> > +	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + pmc->idx;
> >  	data = __vcpu_sys_reg(vcpu, reg);
> >  
> >  	kvm_pmu_stop_counter(vcpu, pmc);
> > @@ -403,27 +538,43 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> >  
> >  	/* Software increment event does't need to be backed by a perf event */
> >  	if (eventsel == ARMV8_PMUV3_PERFCTR_SW_INCR &&
> > -	    select_idx != ARMV8_PMU_CYCLE_IDX)
> > +	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
> >  		return;
> >  
> >  	memset(&attr, 0, sizeof(struct perf_event_attr));
> >  	attr.type = PERF_TYPE_RAW;
> >  	attr.size = sizeof(attr);
> >  	attr.pinned = 1;
> > -	attr.disabled = !kvm_pmu_counter_is_enabled(vcpu, select_idx);
> > +	attr.disabled = !kvm_pmu_counter_is_enabled(vcpu, pmc->idx);
> >  	attr.exclude_user = data & ARMV8_PMU_EXCLUDE_EL0 ? 1 : 0;
> >  	attr.exclude_kernel = data & ARMV8_PMU_EXCLUDE_EL1 ? 1 : 0;
> >  	attr.exclude_hv = 1; /* Don't count EL2 events */
> >  	attr.exclude_host = 1; /* Don't count host events */
> > -	attr.config = (select_idx == ARMV8_PMU_CYCLE_IDX) ?
> > +	attr.config = (pmc->idx == ARMV8_PMU_CYCLE_IDX) ?
> >  		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;
> >  
> > -	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> > -	/* The initial sample period (overflow count) of an event. */
> > -	attr.sample_period = (-counter) & pmc->bitmask;
> > +	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> > +
> > +	if (kvm_pmu_idx_has_chain_evtype(vcpu, pmc->idx)) {
> > +		/**
> > +		 * The initial sample period (overflow count) of an event. For
> > +		 * chained counters we only support overflow interrupts on the
> > +		 * high counter.
> > +		 */
> > +		attr.sample_period = (-counter) & GENMASK(63, 0);
> 
> Same thing here. I wonder why the counter mask is not upgraded to 64bit,
> forcing us to compute the sample period in a different way depending on
> whether the counter is chained or not...
> 
> > +		event = perf_event_create_kernel_counter(&attr, -1, current,
> > +							 kvm_pmu_perf_overflow,
> > +							 pmc + 1);
> >  
> > -	event = perf_event_create_kernel_counter(&attr, -1, current,
> > +		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
> > +			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
> > +	} else {
> > +		/* The initial sample period (overflow count) of an event. */
> > +		attr.sample_period = (-counter) & pmc->bitmask;
> > +		event = perf_event_create_kernel_counter(&attr, -1, current,
> >  						 kvm_pmu_perf_overflow, pmc);
> > +	}
> > +
> >  	if (IS_ERR(event)) {
> >  		pr_err_once("kvm: pmu event creation failed %ld\n",
> >  			    PTR_ERR(event));
> > @@ -433,6 +584,33 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> >  	pmc->perf_event = event;
> >  }
> >  
> > +/**
> > + * kvm_pmu_update_pmc_chained - update chained bitmap
> > + * @vcpu: The vcpu pointer
> > + * @select_idx: The number of selected counter
> > + *
> > + * Update the chained bitmap based on the event type written in the
> > + * typer register.
> > + */
> > +static void kvm_pmu_update_pmc_chained(struct kvm_vcpu *vcpu, u64 select_idx)
> > +{
> > +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> > +	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> > +
> > +	if (kvm_pmu_idx_has_chain_evtype(vcpu, pmc->idx)) {
> > +		/*
> > +		 * During promotion from !chained to chained we must ensure
> > +		 * the adjacent counter is stopped and its event destroyed
> > +		 */
> > +		if (!kvm_pmu_pmc_is_chained(pmc))
> > +			kvm_pmu_stop_counter(vcpu, pmc);
> > +
> > +		set_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
> > +	} else {
> > +		clear_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
> > +	}
> > +}
> > +
> >  /**
> >   * kvm_pmu_set_counter_event_type - set selected counter to monitor some event
> >   * @vcpu: The vcpu pointer
> > @@ -452,6 +630,8 @@ void kvm_pmu_set_counter_event_type(struct kvm_vcpu *vcpu, u64 data,
> >  	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + select_idx;
> >  
> >  	__vcpu_sys_reg(vcpu, reg) = event_type;
> > +
> > +	kvm_pmu_update_pmc_chained(vcpu, select_idx);
> >  	kvm_pmu_create_perf_event(vcpu, select_idx);
> >  }
> >  
> > 
> 
> Thanks,
> 
> 	M.
> -- 
> Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
