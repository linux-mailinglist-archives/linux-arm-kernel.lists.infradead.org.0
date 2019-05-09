Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C046189AB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 14:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/WP7fxgs7EypeeT2x+uGuMBRA9LfmX69U9cFzla6+w=; b=IzLERjfmL9mQVT
	zbor2TzXhyTNfegw3/hksmSVlNDsehM9PjfMeFYN10k7MXz50eyhpwezVQbkEtMWkv6G52dOTb/Te
	WK0klqi6WpdQsra7vNFMP9YBFD0qgbSWbnSOs56nDdV+Dv3cQJOdP7/1JccjmJoGacIipgf8YU6CM
	hb/baGZ1beivyr71yJReSKkoJGBJqYIPuGKlOwLMKAKDAohk9U9i453/RN0mmTMLdcWKzHh+909cg
	8kWckaw2gtHOInvtUi/LvCm9QXWqcGRtMnuP0lxS+neZFUNMWo2TVnKvOiQ6w+H5iz4B6BWLJRiq6
	iH3kyKW5J8reJBiPoF5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOi5g-00080g-Tk; Thu, 09 May 2019 12:24:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOi5Y-000809-MT
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 12:23:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 364B2A78;
 Thu,  9 May 2019 05:23:47 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC4A93F7BD;
 Thu,  9 May 2019 05:23:46 -0700 (PDT)
Date: Thu, 9 May 2019 13:23:44 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Julien Thierry <julien.thierry@arm.com>
Subject: Re: [PATCH v5 5/5] KVM: arm/arm64: support chained PMU counters
Message-ID: <20190509122344.GG8268@e119886-lin.cambridge.arm.com>
References: <20190501163131.43175-1-andrew.murray@arm.com>
 <20190501163131.43175-6-andrew.murray@arm.com>
 <f5579140-9ec0-6ffe-78ff-c1cd757a4198@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5579140-9ec0-6ffe-78ff-c1cd757a4198@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_052352_751449_6551CB90 
X-CRM114-Status: GOOD (  41.93  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 10:22:18AM +0100, Julien Thierry wrote:
> Hi Andrew,
> 
> I have a few remarks. I don't think it's anything major, nor that the
> approach need to be changed.

:) Thanks for the responsive review.

> 
> On 01/05/2019 17:31, Andrew Murray wrote:
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
> >  virt/kvm/arm/pmu.c    | 242 ++++++++++++++++++++++++++++++++++++------
> >  2 files changed, 214 insertions(+), 30 deletions(-)
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
> > index ae1e886d4a1a..91f098ca6b28 100644
> > --- a/virt/kvm/arm/pmu.c
> > +++ b/virt/kvm/arm/pmu.c
> > @@ -25,28 +25,130 @@
> >  #include <kvm/arm_vgic.h>
> >  
> >  static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
> > +
> > +#define PERF_ATTR_CFG1_KVM_PMU_CHAINED 0x1
> > +
> > +static struct kvm_vcpu *kvm_pmc_to_vcpu(struct kvm_pmc *pmc)> +{
> > +	struct kvm_pmu *pmu;
> > +	struct kvm_vcpu_arch *vcpu_arch;
> > +
> > +	pmc -= pmc->idx;
> > +	pmu = container_of(pmc, struct kvm_pmu, pmc[0]);
> 
> Nit: The only caller of this seems to only require access to the pmu
> that the pmc belongs to. So we could change the function and stop here.

Actually kvm_pmu_perf_overflow uses this function for access to vcpu.

This function, kvm_pmc_to_vcpu, was moved to the top of this file, so it
had one other user not shown in this diff.

> 
> 
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
> > +	if (kvm_pmu_pmc_is_chained(pmc) && (pmc->idx & 1))
> 
> Nit: It's a bit odd that you have that function right above that tests
> if an index is high counter but don't use it here.

Odd indeed - I'll fix that up straight away.

> 
> > +		return pmc - 1;
> > +
> > +	return pmc;
> > +}
> > +
> > +/**
> > + * kvm_pmu_event_is_chained - determine if the event type is chain
> >   * @vcpu: The vcpu pointer
> >   * @select_idx: The counter index
> >   */
> > -u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
> > +static bool kvm_pmu_event_is_chained(struct kvm_vcpu *vcpu, u64 select_idx)
> 
> Nit: I found myself easily confused between kvm_pmu_event_is_chained()
> and kvm_pmu_pmc_is_chained(). Naming is also a bit odd because
> kvm_pmu_event_is_chained() doesn't operate on a perf_event.

Ah, the _event_ was referring to the evtype...

> 
> Could we name it kvm_pmu_idx_has_chain_evtype() or
> kvm_pmu_cnt_in_chain_evtype() ?

kvm_pmu_idx_has_chain_evtype sounds good to me - this seems much clearer.

> 
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
> > +	pmc = kvm_pmu_get_canonical_pmc(pmc);
> 
> kvm_pmu_pmc_is_chained() works both on the canonical and high counter
> doesn't it? We could only "retrieve" the canonical one when we know we
> have a chained counter.
> 
> Makes a bit less operations in the case of non-chained counters (modulo
> compiler optimizations).

That's right, actually Marc's original suggestion [1] took the approach you
suggest here.

I think the biggest effect here is that of readability. I'll take your
suggestion and only retrieve the canonical when we need it. However as we
often overwrite the pmc pointer in an if statement of the function (and later
use it outside the if statement) - I think it's clearer to reinstate the
kvm_pmu_{set,get}_perf_event functions I dropped (but also part of Marc's
suggestion). I think this is a helpful abstraction, even though it adds some
more cycles.

> 
> > +	if (kvm_pmu_pmc_is_chained(pmc)) {
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
> > +	if (!kvm_pmu_pmc_is_chained(pmc))
> > +		counter &= pmc->bitmask;
> 
> This part seems a bit weird to me, especially since the mask is applied
> unconditionally right after in kvm_pmu_get_counter_value(). (And is
> applied as well for non-chained counters in the only other called of
> this function).
> 
> Maybe we can drop this?

I considered this before sending this series, my rationale for keeping it was
that kvm_pmu_get_pair_counter_value would return an incorrect value (i.e.
without the mask) and thus not true to the functions name. However this is a
static function with one user that applies a mask - so I'm happy to drop this.

> 
> > +
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
> > @@ -74,6 +176,8 @@ void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
> >   */
> >  static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
> >  {
> > +	pmc = kvm_pmu_get_canonical_pmc(pmc);
> > +
> >  	if (pmc->perf_event) {
> >  		perf_event_disable(pmc->perf_event);
> >  		perf_event_release_kernel(pmc->perf_event);
> > @@ -89,15 +193,27 @@ static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
> >   */
> >  static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
> >  {
> > -	u64 counter, reg;
> > +	u64 counter, counter_low, counter_high, reg;
> >  
> > -	if (pmc->perf_event) {
> > +	pmc = kvm_pmu_get_canonical_pmc(pmc);
> > +	if (!pmc->perf_event)
> > +		return;
> > +
> > +	if (kvm_pmu_pmc_is_chained(pmc)) {
> > +		counter_low = kvm_pmu_get_counter_value(vcpu, pmc->idx);
> > +		counter_high = kvm_pmu_get_counter_value(vcpu, pmc->idx + 1);
> > +
> > +		reg = PMEVCNTR0_EL0 + pmc->idx;
> > +		__vcpu_sys_reg(vcpu, reg) = counter_low;
> > +		__vcpu_sys_reg(vcpu, reg + 1) = counter_high;
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
> > @@ -115,6 +231,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
> >  		pmu->pmc[i].idx = i;
> >  		pmu->pmc[i].bitmask = 0xffffffffUL;
> >  	}
> > +
> > +	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
> >  }
> >  
> >  /**
> > @@ -162,7 +280,18 @@ void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
> >  		if (!(val & BIT(i)))
> >  			continue;
> >  
> > -		pmc = &pmu->pmc[i];
> > +		pmc = kvm_pmu_get_canonical_pmc(&pmu->pmc[i]);
> 
> kvm_pmu_pmc_is_chained() works on both counters of a pair, and if we
> have a non-canonical counter (i.e. high counter of a chain), we do a
> "continue;", so I don't think we need to retrieve the canonical pmc here.

By reintroducing the kvm_pmu_get_perf_event we can avoid calling
kvm_pmu_get_canonical_pmc here now.

> 
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
> >  		if (pmc->perf_event) {
> >  			perf_event_enable(pmc->perf_event);
> >  			if (pmc->perf_event->state != PERF_EVENT_STATE_ACTIVE)
> > @@ -191,7 +320,18 @@ void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
> >  		if (!(val & BIT(i)))
> >  			continue;
> >  
> > -		pmc = &pmu->pmc[i];
> > +		pmc = kvm_pmu_get_canonical_pmc(&pmu->pmc[i]);
> 
> Same.
> 
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
> >  		if (pmc->perf_event)
> >  			perf_event_disable(pmc->perf_event);
> >  	}
> > @@ -281,17 +421,6 @@ void kvm_pmu_sync_hwstate(struct kvm_vcpu *vcpu)
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
> > @@ -389,11 +518,19 @@ static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
> >  static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> >  {
> >  	struct kvm_pmu *pmu = &vcpu->arch.pmu;
> > -	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
> > +	struct kvm_pmc *pmc = kvm_pmu_get_canonical_pmc(&pmu->pmc[select_idx]);
> >  	struct perf_event *event;
> >  	struct perf_event_attr attr;
> >  	u64 eventsel, counter, reg, data;
> >  
> > +	/*
> > +	 * For chained counters the event type and filtering attributes are
> > +	 * obtained from the low/even counter. We also use this counter to
> > +	 * determine if the event is enabled/disabled.
> > +	 */
> > +	if (kvm_pmu_event_is_chained(vcpu, select_idx))
> > +		select_idx &= ~1UL;
> > +
> 
> With both this and the pmc initialization it feels like we're doing
> double the work/open coding things.
> 
> You could delay initialization of pmc here, after adjusting the
> selec_idx to:
> 
> 	pmc = pmu->pmc[select_idx];
> 

Yes makes sense.

> >  	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
> >  	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + select_idx;
> >  	data = __vcpu_sys_reg(vcpu, reg);
> > @@ -418,12 +555,28 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
> >  	attr.config = (select_idx == ARMV8_PMU_CYCLE_IDX) ?
> >  		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;
> >  
> > -	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
> > -	/* The initial sample period (overflow count) of an event. */
> > -	attr.sample_period = (-counter) & pmc->bitmask;
> > +	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
> > +
> > +	if (kvm_pmu_event_is_chained(vcpu, pmc->idx)) {
> 
> Nit: At that point I feel like kvm_pmu_pmc_is_chained() is a simpler
> operation. (If we update the evtype we call the create function again
> after setting the pair bitmap anyway, right?)

That's correct, we can also do it for the test that updates the select_idx
earlier in this function too.

> 
> Cheers,
> 
> -- 
> Julien Thierry

[1] https://lists.cs.columbia.edu/pipermail/kvmarm/2019-April/035642.html

Thanks,

Andrew Murray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
