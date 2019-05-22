Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB23B26336
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 13:51:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZazyOPxbFWxI4j9S/VZapcsXf2z4m9qIEYjHXO+LmI=; b=Kg+deVUDj3dkp5
	e3+sSgUa4IsqZP1tk2vZUs4KXbTnb4T29wu67O38Qc/bhkwVvw/YfsBXoGBAAyEU3RMr2unuobIzW
	w1LBbIWeDDdaaNOVrQoKiq4EDrPRfUFuuWErEcJ2TdDKHJOTh6rBtgRIQpdG+WkWyKJ5q17SsPAE5
	nymYAeYQWmTXpKVKEQB8tk4SZSl4ivmQLx9KUE4uwvKFUDwGPpJVDOXR+ZUEzqkTR+EgOEUHc/Irq
	aU8PxeoKwol/tfSJb/33I4MloYHZZhS7+BDYFak3CmkHyrpHELBbjESFRLC3E8u+guIgtX5rIWwl1
	4k3vaJRinKUq5gYxqCKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTPlx-00049e-Fx; Wed, 22 May 2019 11:51:05 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTPll-00049K-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 11:50:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A88E80D;
 Wed, 22 May 2019 04:50:52 -0700 (PDT)
Received: from [10.1.197.61] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B597E3F575; Wed, 22 May 2019 04:50:47 -0700 (PDT)
Subject: Re: [PATCH v7 5/5] KVM: arm/arm64: support chained PMU counters
To: Andrew Murray <andrew.murray@arm.com>
References: <20190521155228.903-1-andrew.murray@arm.com>
 <20190521155228.903-6-andrew.murray@arm.com>
 <42142487-4059-dbfb-062c-0839c1f0ea51@arm.com>
 <20190522103537.GZ8268@e119886-lin.cambridge.arm.com>
From: Marc Zyngier <marc.zyngier@arm.com>
Openpgp: preference=signencrypt
Autocrypt: addr=marc.zyngier@arm.com; prefer-encrypt=mutual; keydata=
 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
Organization: ARM Ltd
Message-ID: <37b16e12-cc0e-1d27-17f9-9bd1a326610f@arm.com>
Date: Wed, 22 May 2019 12:50:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522103537.GZ8268@e119886-lin.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_045057_854708_D0891590 
X-CRM114-Status: GOOD (  28.38  )
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

On 22/05/2019 11:35, Andrew Murray wrote:
> On Tue, May 21, 2019 at 05:31:47PM +0100, Marc Zyngier wrote:
>> On 21/05/2019 16:52, Andrew Murray wrote:
>>> ARMv8 provides support for chained PMU counters, where an event type
>>> of 0x001E is set for odd-numbered counters, the event counter will
>>> increment by one for each overflow of the preceding even-numbered
>>> counter. Let's emulate this in KVM by creating a 64 bit perf counter
>>> when a user chains two emulated counters together.
>>>
>>> For chained events we only support generating an overflow interrupt
>>> on the high counter. We use the attributes of the low counter to
>>> determine the attributes of the perf event.
>>>
>>> Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
>>> Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>>> ---
>>>  include/kvm/arm_pmu.h |   2 +
>>>  virt/kvm/arm/pmu.c    | 246 ++++++++++++++++++++++++++++++++++++------
>>>  2 files changed, 215 insertions(+), 33 deletions(-)
>>>
>>> diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
>>> index b73f31baca52..8b434745500a 100644
>>> --- a/include/kvm/arm_pmu.h
>>> +++ b/include/kvm/arm_pmu.h
>>> @@ -22,6 +22,7 @@
>>>  #include <asm/perf_event.h>
>>>  
>>>  #define ARMV8_PMU_CYCLE_IDX		(ARMV8_PMU_MAX_COUNTERS - 1)
>>> +#define ARMV8_PMU_MAX_COUNTER_PAIRS	((ARMV8_PMU_MAX_COUNTERS + 1) >> 1)
>>>  
>>>  #ifdef CONFIG_KVM_ARM_PMU
>>>  
>>> @@ -34,6 +35,7 @@ struct kvm_pmc {
>>>  struct kvm_pmu {
>>>  	int irq_num;
>>>  	struct kvm_pmc pmc[ARMV8_PMU_MAX_COUNTERS];
>>> +	DECLARE_BITMAP(chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
>>>  	bool ready;
>>>  	bool created;
>>>  	bool irq_level;
>>> diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
>>> index ae1e886d4a1a..4b0981c402c6 100644
>>> --- a/virt/kvm/arm/pmu.c
>>> +++ b/virt/kvm/arm/pmu.c
>>> @@ -25,28 +25,128 @@
>>>  #include <kvm/arm_vgic.h>
>>>  
>>>  static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
>>> +
>>> +#define PERF_ATTR_CFG1_KVM_PMU_CHAINED 0x1
>>> +
>>> +static struct kvm_vcpu *kvm_pmc_to_vcpu(struct kvm_pmc *pmc)
>>> +{
>>> +	struct kvm_pmu *pmu;
>>> +	struct kvm_vcpu_arch *vcpu_arch;
>>> +
>>> +	pmc -= pmc->idx;
>>> +	pmu = container_of(pmc, struct kvm_pmu, pmc[0]);
>>> +	vcpu_arch = container_of(pmu, struct kvm_vcpu_arch, pmu);
>>> +	return container_of(vcpu_arch, struct kvm_vcpu, arch);
>>> +}
>>> +
>>>  /**
>>> - * kvm_pmu_get_counter_value - get PMU counter value
>>> + * kvm_pmu_pmc_is_chained - determine if the pmc is chained
>>> + * @pmc: The PMU counter pointer
>>> + */
>>> +static bool kvm_pmu_pmc_is_chained(struct kvm_pmc *pmc)
>>> +{
>>> +	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
>>> +
>>> +	return test_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
>>> +}
>>> +
>>> +/**
>>> + * kvm_pmu_pmc_is_high_counter - determine if select_idx is a high/low counter
>>> + * @select_idx: The counter index
>>> + */
>>> +static bool kvm_pmu_pmc_is_high_counter(u64 select_idx)
>>> +{
>>> +	return select_idx & 0x1;
>>> +}
>>> +
>>> +/**
>>> + * kvm_pmu_get_canonical_pmc - obtain the canonical pmc
>>> + * @pmc: The PMU counter pointer
>>> + *
>>> + * When a pair of PMCs are chained together we use the low counter (canonical)
>>> + * to hold the underlying perf event.
>>> + */
>>> +static struct kvm_pmc *kvm_pmu_get_canonical_pmc(struct kvm_pmc *pmc)
>>> +{
>>> +	if (kvm_pmu_pmc_is_chained(pmc) &&
>>> +	    kvm_pmu_pmc_is_high_counter(pmc->idx))
>>> +		return pmc - 1;
>>> +
>>> +	return pmc;
>>> +}
>>> +
>>> +/**
>>> + * kvm_pmu_idx_has_chain_evtype - determine if the event type is chain
>>>   * @vcpu: The vcpu pointer
>>>   * @select_idx: The counter index
>>>   */
>>> -u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>>> +static bool kvm_pmu_idx_has_chain_evtype(struct kvm_vcpu *vcpu, u64 select_idx)
>>>  {
>>> -	u64 counter, reg, enabled, running;
>>> -	struct kvm_pmu *pmu = &vcpu->arch.pmu;
>>> -	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
>>> +	u64 eventsel, reg;
>>>  
>>> -	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
>>> -	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
>>> -	counter = __vcpu_sys_reg(vcpu, reg);
>>> +	select_idx |= 0x1;
>>> +
>>> +	if (select_idx == ARMV8_PMU_CYCLE_IDX)
>>> +		return false;
>>> +
>>> +	reg = PMEVTYPER0_EL0 + select_idx;
>>> +	eventsel = __vcpu_sys_reg(vcpu, reg) & ARMV8_PMU_EVTYPE_EVENT;
>>> +
>>> +	return armv8pmu_evtype_is_chain(eventsel);
>>> +}
>>> +
>>> +/**
>>> + * kvm_pmu_get_pair_counter_value - get PMU counter value
>>> + * @vcpu: The vcpu pointer
>>> + * @pmc: The PMU counter pointer
>>> + */
>>> +static u64 kvm_pmu_get_pair_counter_value(struct kvm_vcpu *vcpu,
>>> +					  struct kvm_pmc *pmc)
>>> +{
>>> +	u64 counter, counter_high, reg, enabled, running;
>>> +
>>> +	if (kvm_pmu_pmc_is_chained(pmc)) {
>>> +		pmc = kvm_pmu_get_canonical_pmc(pmc);
>>> +		reg = PMEVCNTR0_EL0 + pmc->idx;
>>> +
>>> +		counter = __vcpu_sys_reg(vcpu, reg);
>>> +		counter_high = __vcpu_sys_reg(vcpu, reg + 1);
>>> +
>>> +		counter = lower_32_bits(counter) | (counter_high << 32);
>>> +	} else {
>>> +		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
>>> +		      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
>>> +		counter = __vcpu_sys_reg(vcpu, reg);
>>> +	}
>>>  
>>> -	/* The real counter value is equal to the value of counter register plus
>>> +	/*
>>> +	 * The real counter value is equal to the value of counter register plus
>>>  	 * the value perf event counts.
>>>  	 */
>>>  	if (pmc->perf_event)
>>>  		counter += perf_event_read_value(pmc->perf_event, &enabled,
>>>  						 &running);
>>>  
>>> +	return counter;
>>> +}
>>> +
>>> +/**
>>> + * kvm_pmu_get_counter_value - get PMU counter value
>>> + * @vcpu: The vcpu pointer
>>> + * @select_idx: The counter index
>>> + */
>>> +u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
>>> +{
>>> +	u64 counter;
>>> +	struct kvm_pmu *pmu = &vcpu->arch.pmu;
>>> +	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
>>> +
>>> +	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
>>> +
>>> +	if (kvm_pmu_pmc_is_chained(pmc) &&
>>> +	    kvm_pmu_pmc_is_high_counter(select_idx))
>>> +		counter >>= 32;
>>> +
>>>  	return counter & pmc->bitmask;
>>>  }
>>>  
>>> @@ -74,6 +174,7 @@ void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
>>>   */
>>>  static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
>>>  {
>>> +	pmc = kvm_pmu_get_canonical_pmc(pmc);
>>>  	if (pmc->perf_event) {
>>>  		perf_event_disable(pmc->perf_event);
>>>  		perf_event_release_kernel(pmc->perf_event);
>>> @@ -91,13 +192,24 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
>>>  {
>>>  	u64 counter, reg;
>>>  
>>> -	if (pmc->perf_event) {
>>> +	pmc = kvm_pmu_get_canonical_pmc(pmc);
>>> +	if (!pmc->perf_event)
>>> +		return;
>>> +
>>> +	if (kvm_pmu_pmc_is_chained(pmc)) {
>>> +		counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
>>> +
>>> +		reg = PMEVCNTR0_EL0 + pmc->idx;
>>> +		__vcpu_sys_reg(vcpu, reg) = counter & pmc->bitmask;
>>> +		__vcpu_sys_reg(vcpu, reg + 1) = (counter >> 32) & pmc->bitmask;
>>
>> There is something odd here: You use the same mask for both half of the
>> counter. The second one doesn't make much sense, and the first one makes
>> me wonder... Why isn't bitmask a 64bit quantity in this case?
>>
> 
> Yes it's incorrect, the second bitmask should have been pmc+1's bitmask. (In
> the previous revision of this series the sysreg values were populated by two
> calls to kvm_pmu_get_counter_value with pmc and pmc+1 - I introduced this error
> when using kvm_pmu_get_pair_counter_value instead).
> 
> My rationale has been that the __vcpu_sys_reg's should represent the underlying
> hardware registers. This means a 64 bit register with the first 32 bits RES0 for
> PMEVCNTR<n> registers (chained or otherwise) and a 64 bit register for PMCCNTR.
> We currently use the bitmask to mask off the RES0 bits in kvm_pmu_get_counter_value
> when requested by access_pmu_evcntr (to match the counter width). (And thus I've
> treated bitmask as the width of the counter *within* each register).

Well, the truncation is a property of the counter registers, and that's
what we should honor. The bitmask is a property associated to the perf
event, allowing us to only consider the useful bits.

> It may be possible, for chained counters, to use only the register value and
> bitmask in the canonical (just as we do now for the perf_event). Thus for chained
> counters the bitmask is stored in the low counter and is always 64 bits, and the
> 64 bit counter value is also only stored in the low counter vcpu_sys_reg register.
> 
> This means we could calculate the sample_period with the canonical bitmask (instead
> of the hunk you also commented on). However it means that in kvm_pmu_get_counter_value
> we'd have to mask out the RES0 bits indexes that are not the cycle counter. We
> would also have to write the value of the high counter upon demotion from chained
> to unchained in kvm_pmu_update_pmc_chained.
> 
> Does this seem a better approach to you?

It would be much better. It would certainly make it clear that there is
a difference between the perf_event and the emulated counter.

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
