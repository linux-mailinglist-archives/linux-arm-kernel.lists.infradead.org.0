Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CAB5E7AE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 17:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1PNa+9OrIlNkyymX9mw3SVZVURpujb1ba1vcPCrfbA=; b=qDgLRuerp9zIRn
	TNmYqr8u0HsMCmpgKkrffVSx0mNyJ28C4e0G1f/R3WBj0xWGcpia2PRakBWIi5fod3FC5TZLkqjOf
	5itjR/8LCRq4r7wta0BjzRmMl3cvkPUGhoSstEFj6s3rqNkS8L8YCyK4tI5wqyLTuML8xyA75F8c1
	Lc/L6DHhSgVFtPMeomQQ3vsv7sh+54TuwBirb5eGgU4LwHivBBpCLPKBpowHGjPYHRD6By3hoac8v
	bZQV0PuLaQ+P1rJWcT5zrlXBbSqvJSCzaKx+s+LJf+q7cv9Y6wgGCywQ84vaIbNFGb/67LNpKEvT5
	wbChjEnvhaRPD6q9hXGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hih4T-0007Pd-Ly; Wed, 03 Jul 2019 15:21:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hih4F-0007Ov-6x
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 15:21:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D72EB360;
 Wed,  3 Jul 2019 08:21:04 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 95E273F718;
 Wed,  3 Jul 2019 08:21:03 -0700 (PDT)
Subject: Re: [PATCH 13/59] KVM: arm64: nv: Handle virtual EL2 registers in
 vcpu_read/write_sys_reg()
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-14-marc.zyngier@arm.com>
 <01c91e35-1f0d-0da8-ea0c-7b901753e6f0@arm.com>
 <0263a76b-500a-c14b-1f7e-41e1e6043fe7@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <a2a37dfd-f98b-f11c-1b8d-30cabd6d8ed0@arm.com>
Date: Wed, 3 Jul 2019 16:21:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0263a76b-500a-c14b-1f7e-41e1e6043fe7@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_082107_352325_7102C1B1 
X-CRM114-Status: GOOD (  23.92  )
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/07/2019 13:15, Marc Zyngier wrote:
> On 24/06/2019 13:42, Julien Thierry wrote:
>>
>>
>> On 06/21/2019 10:37 AM, Marc Zyngier wrote:
>>> From: Andre Przywara <andre.przywara@arm.com>
>>>
>>> KVM internally uses accessor functions when reading or writing the
>>> guest's system registers. This takes care of accessing either the stored
>>> copy or using the "live" EL1 system registers when the host uses VHE.
>>>
>>> With the introduction of virtual EL2 we add a bunch of EL2 system
>>> registers, which now must also be taken care of:
>>> - If the guest is running in vEL2, and we access an EL1 sysreg, we must
>>>   revert to the stored version of that, and not use the CPU's copy.
>>> - If the guest is running in vEL1, and we access an EL2 sysreg, we must
>>>   also use the stored version, since the CPU carries the EL1 copy.
>>> - Some EL2 system registers are supposed to affect the current execution
>>>   of the system, so we need to put them into their respective EL1
>>>   counterparts. For this we need to define a mapping between the two.
>>>   This is done using the newly introduced struct el2_sysreg_map.
>>> - Some EL2 system registers have a different format than their EL1
>>>   counterpart, so we need to translate them before writing them to the
>>>   CPU. This is done using an (optional) translate function in the map.
>>> - There are the three special registers SP_EL2, SPSR_EL2 and ELR_EL2,
>>>   which need some separate handling.
>>>
>>> All of these cases are now wrapped into the existing accessor functions,
>>> so KVM users wouldn't need to care whether they access EL2 or EL1
>>> registers and also which state the guest is in.
>>>
>>> This handles what was formerly known as the "shadow state" dynamically,
>>> without requiring a separate copy for each vCPU EL.
>>>
>>> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
>>> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
>>> ---
>>>  arch/arm64/include/asm/kvm_emulate.h |   6 +
>>>  arch/arm64/include/asm/kvm_host.h    |   5 +
>>>  arch/arm64/kvm/sys_regs.c            | 163 +++++++++++++++++++++++++++
>>>  3 files changed, 174 insertions(+)
>>>
>>> diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
>>> index c43aac5fed69..f37006b6eec4 100644
>>> --- a/arch/arm64/include/asm/kvm_emulate.h
>>> +++ b/arch/arm64/include/asm/kvm_emulate.h
>>> @@ -70,6 +70,12 @@ void kvm_emulate_nested_eret(struct kvm_vcpu *vcpu);
>>>  int kvm_inject_nested_sync(struct kvm_vcpu *vcpu, u64 esr_el2);
>>>  int kvm_inject_nested_irq(struct kvm_vcpu *vcpu);
>>>  
>>> +u64 translate_tcr(u64 tcr);
>>> +u64 translate_cptr(u64 tcr);
>>> +u64 translate_sctlr(u64 tcr);
>>> +u64 translate_ttbr0(u64 tcr);
>>> +u64 translate_cnthctl(u64 tcr);
>>> +
>>>  static inline bool vcpu_el1_is_32bit(struct kvm_vcpu *vcpu)
>>>  {
>>>  	return !(vcpu->arch.hcr_el2 & HCR_RW);
>>> diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
>>> index 2d4290d2513a..dae9c42a7219 100644
>>> --- a/arch/arm64/include/asm/kvm_host.h
>>> +++ b/arch/arm64/include/asm/kvm_host.h
>>> @@ -217,6 +217,11 @@ enum vcpu_sysreg {
>>>  	NR_SYS_REGS	/* Nothing after this line! */
>>>  };
>>>  
>>> +static inline bool sysreg_is_el2(int reg)
>>> +{
>>> +	return reg >= FIRST_EL2_SYSREG && reg < NR_SYS_REGS;
>>> +}
>>> +
>>>  /* 32bit mapping */
>>>  #define c0_MPIDR	(MPIDR_EL1 * 2)	/* MultiProcessor ID Register */
>>>  #define c0_CSSELR	(CSSELR_EL1 * 2)/* Cache Size Selection Register */
>>> diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
>>> index 693dd063c9c2..d024114da162 100644
>>> --- a/arch/arm64/kvm/sys_regs.c
>>> +++ b/arch/arm64/kvm/sys_regs.c
>>> @@ -76,11 +76,142 @@ static bool write_to_read_only(struct kvm_vcpu *vcpu,
>>>  	return false;
>>>  }
>>>  
>>> +static u64 tcr_el2_ips_to_tcr_el1_ps(u64 tcr_el2)
>>> +{
>>> +	return ((tcr_el2 & TCR_EL2_PS_MASK) >> TCR_EL2_PS_SHIFT)
>>> +		<< TCR_IPS_SHIFT;
>>> +}
>>> +
>>> +u64 translate_tcr(u64 tcr)
>>> +{
>>> +	return TCR_EPD1_MASK |				/* disable TTBR1_EL1 */
>>> +	       ((tcr & TCR_EL2_TBI) ? TCR_TBI0 : 0) |
>>> +	       tcr_el2_ips_to_tcr_el1_ps(tcr) |
>>> +	       (tcr & TCR_EL2_TG0_MASK) |
>>> +	       (tcr & TCR_EL2_ORGN0_MASK) |
>>> +	       (tcr & TCR_EL2_IRGN0_MASK) |
>>> +	       (tcr & TCR_EL2_T0SZ_MASK);
>>> +}
>>> +
>>> +u64 translate_cptr(u64 cptr_el2)
>>> +{
>>> +	u64 cpacr_el1 = 0;
>>> +
>>> +	if (!(cptr_el2 & CPTR_EL2_TFP))
>>> +		cpacr_el1 |= CPACR_EL1_FPEN;
>>> +	if (cptr_el2 & CPTR_EL2_TTA)
>>> +		cpacr_el1 |= CPACR_EL1_TTA;
>>> +	if (!(cptr_el2 & CPTR_EL2_TZ))
>>> +		cpacr_el1 |= CPACR_EL1_ZEN;
>>> +
>>> +	return cpacr_el1;
>>> +}
>>> +
>>> +u64 translate_sctlr(u64 sctlr)
>>> +{
>>> +	/* Bit 20 is RES1 in SCTLR_EL1, but RES0 in SCTLR_EL2 */
>>> +	return sctlr | BIT(20);
>>> +}
>>> +
>>> +u64 translate_ttbr0(u64 ttbr0)
>>> +{
>>> +	/* Force ASID to 0 (ASID 0 or RES0) */
>>> +	return ttbr0 & ~GENMASK_ULL(63, 48);
>>> +}
>>> +
>>> +u64 translate_cnthctl(u64 cnthctl)
>>> +{
>>> +	return ((cnthctl & 0x3) << 10) | (cnthctl & 0xfc);
>>> +}
>>> +
>>> +#define EL2_SYSREG(el2, el1, translate)	\
>>> +	[el2 - FIRST_EL2_SYSREG] = { el2, el1, translate }
>>> +#define PURE_EL2_SYSREG(el2) \
>>> +	[el2 - FIRST_EL2_SYSREG] = { el2,__INVALID_SYSREG__, NULL }
>>> +/*
>>> + * Associate vEL2 registers to their EL1 counterparts on the CPU.
>>> + * The translate function can be NULL, when the register layout is identical.
>>> + */
>>> +struct el2_sysreg_map {
>>> +	int sysreg;	/* EL2 register index into the array above */
>>> +	int mapping;	/* associated EL1 register */
>>> +	u64 (*translate)(u64 value);
>>> +} nested_sysreg_map[NR_SYS_REGS - FIRST_EL2_SYSREG] = {
>>> +	PURE_EL2_SYSREG( VPIDR_EL2 ),
>>> +	PURE_EL2_SYSREG( VMPIDR_EL2 ),
>>> +	PURE_EL2_SYSREG( ACTLR_EL2 ),
>>> +	PURE_EL2_SYSREG( HCR_EL2 ),
>>> +	PURE_EL2_SYSREG( MDCR_EL2 ),
>>> +	PURE_EL2_SYSREG( HSTR_EL2 ),
>>> +	PURE_EL2_SYSREG( HACR_EL2 ),
>>> +	PURE_EL2_SYSREG( VTTBR_EL2 ),
>>> +	PURE_EL2_SYSREG( VTCR_EL2 ),
>>> +	PURE_EL2_SYSREG( RVBAR_EL2 ),
>>> +	PURE_EL2_SYSREG( RMR_EL2 ),
>>> +	PURE_EL2_SYSREG( TPIDR_EL2 ),
>>> +	PURE_EL2_SYSREG( CNTVOFF_EL2 ),
>>> +	PURE_EL2_SYSREG( CNTHCTL_EL2 ),
>>> +	PURE_EL2_SYSREG( HPFAR_EL2 ),
>>> +	EL2_SYSREG(      SCTLR_EL2,  SCTLR_EL1,      translate_sctlr ),
>>> +	EL2_SYSREG(      CPTR_EL2,   CPACR_EL1,      translate_cptr  ),
>>> +	EL2_SYSREG(      TTBR0_EL2,  TTBR0_EL1,      translate_ttbr0 ),
>>> +	EL2_SYSREG(      TTBR1_EL2,  TTBR1_EL1,      NULL            ),
>>> +	EL2_SYSREG(      TCR_EL2,    TCR_EL1,        translate_tcr   ),
>>> +	EL2_SYSREG(      VBAR_EL2,   VBAR_EL1,       NULL            ),
>>> +	EL2_SYSREG(      AFSR0_EL2,  AFSR0_EL1,      NULL            ),
>>> +	EL2_SYSREG(      AFSR1_EL2,  AFSR1_EL1,      NULL            ),
>>> +	EL2_SYSREG(      ESR_EL2,    ESR_EL1,        NULL            ),
>>> +	EL2_SYSREG(      FAR_EL2,    FAR_EL1,        NULL            ),
>>> +	EL2_SYSREG(      MAIR_EL2,   MAIR_EL1,       NULL            ),
>>> +	EL2_SYSREG(      AMAIR_EL2,  AMAIR_EL1,      NULL            ),
>>> +};
>>> +
>>> +static
>>> +const struct el2_sysreg_map *find_el2_sysreg(const struct el2_sysreg_map *map,
>>> +					     int reg)
>>> +{
>>> +	const struct el2_sysreg_map *entry;
>>> +
>>> +	if (!sysreg_is_el2(reg))
>>> +		return NULL;
>>> +
>>> +	entry = &nested_sysreg_map[reg - FIRST_EL2_SYSREG];
>>> +	if (entry->sysreg == __INVALID_SYSREG__)
>>> +		return NULL;
>>> +
>>> +	return entry;
>>> +}
>>> +
>>>  u64 vcpu_read_sys_reg(const struct kvm_vcpu *vcpu, int reg)
>>>  {
>>> +
>>>  	if (!vcpu->arch.sysregs_loaded_on_cpu)
>>>  		goto immediate_read;
>>>  
>>> +	if (unlikely(sysreg_is_el2(reg))) {
>>> +		const struct el2_sysreg_map *el2_reg;
>>> +
>>> +		if (!is_hyp_ctxt(vcpu))
>>> +			goto immediate_read;
>>> +
>>> +		el2_reg = find_el2_sysreg(nested_sysreg_map, reg);
>>> +		if (el2_reg) {
>>> +			/*
>>> +			 * If this register does not have an EL1 counterpart,
>>> +			 * then read the stored EL2 version.
>>> +			 */
>>> +			if (el2_reg->mapping == __INVALID_SYSREG__)
>>
>> In this patch, find_el2_sysreg returns NULL for PURE_EL2 registers. So
> 
> That's not how I read this code. You get NULL if the the EL2 sysreg is
> set to __INVALID_SYSREG__, of which there is no occurrence (yeah, dead
> code).
> 

Ah yes, as you guessed, I got confused between ->sysreg and ->mapping.
Something must have gotten in my eyes when I was doing the review!

You can ignore my comments on patch then!

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
