Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A365B12A165
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:42:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vm1x80aHjXsGmp0ijnkvCrJ8SY+8n8bM9fYQ4g8d3/w=; b=alZqHiSHenL2ERTYjZRs3BA1y
	I65hTE4oR1t7hQNsrnm3Cus0gnsQ8FpH8dWCcENjmxwA7sefXdsLFEcgK5sRt24FibF1ojYqZ2NQX
	LqzWcvn8IFW6Xkln7CH3nVvoVcr9+EqUhygSqUfjTJ2vKiPVmVV3viEwPljsPBm4bQGhoARA1sMI6
	klD5kccKAEP986yR5W5wOek3C7cdHg8ZDWhcgM8t5NJWvUSx+78+YnC1WIbCfvQZ3Ur2ahv8WrOeQ
	22z4Vz+CanLx+qrAWPZ+yNcmEPfFmH86viPVZbBgAX/nh6GETrO2Ht+5KFKBZLFovpRdQ/G+3aAHy
	C73ng6z2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijjWB-0004k8-Q3; Tue, 24 Dec 2019 12:42:31 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijjVo-0004Uw-0f
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:42:10 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1ijjVi-0003E0-PA; Tue, 24 Dec 2019 13:42:02 +0100
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v2 14/18] KVM: arm64: spe: Provide guest virtual
 interrupts for SPE
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Tue, 24 Dec 2019 12:42:02 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191224115031.GG42593@e119886-lin.cambridge.arm.com>
References: <20191220143025.33853-1-andrew.murray@arm.com>
 <20191220143025.33853-15-andrew.murray@arm.com>
 <867e2oimw9.wl-maz@kernel.org>
 <20191224115031.GG42593@e119886-lin.cambridge.arm.com>
Message-ID: <1f3fbff6c9db0f14c92a6e3fb800fa0f@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: andrew.murray@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_044208_224685_65E18347 
X-CRM114-Status: GOOD (  29.28  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: kvm@vger.kernel.org, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-24 11:50, Andrew Murray wrote:
> On Sun, Dec 22, 2019 at 12:07:50PM +0000, Marc Zyngier wrote:
>> On Fri, 20 Dec 2019 14:30:21 +0000,
>> Andrew Murray <andrew.murray@arm.com> wrote:
>> >
>> > Upon the exit of a guest, let's determine if the SPE device has 
>> generated
>> > an interrupt - if so we'll inject a virtual interrupt to the 
>> guest.
>> >
>> > Upon the entry and exit of a guest we'll also update the state of 
>> the
>> > physical IRQ such that it is active when a guest interrupt is 
>> pending
>> > and the guest is running.
>> >
>> > Finally we map the physical IRQ to the virtual IRQ such that the 
>> guest
>> > can deactivate the interrupt when it handles the interrupt.
>> >
>> > Signed-off-by: Andrew Murray <andrew.murray@arm.com>
>> > ---
>> >  include/kvm/arm_spe.h |  6 ++++
>> >  virt/kvm/arm/arm.c    |  5 ++-
>> >  virt/kvm/arm/spe.c    | 71 
>> +++++++++++++++++++++++++++++++++++++++++++
>> >  3 files changed, 81 insertions(+), 1 deletion(-)
>> >
>> > diff --git a/include/kvm/arm_spe.h b/include/kvm/arm_spe.h
>> > index 9c65130d726d..91b2214f543a 100644
>> > --- a/include/kvm/arm_spe.h
>> > +++ b/include/kvm/arm_spe.h
>> > @@ -37,6 +37,9 @@ static inline bool kvm_arm_support_spe_v1(void)
>> >  						      ID_AA64DFR0_PMSVER_SHIFT);
>> >  }
>> >
>> > +void kvm_spe_flush_hwstate(struct kvm_vcpu *vcpu);
>> > +inline void kvm_spe_sync_hwstate(struct kvm_vcpu *vcpu);
>> > +
>> >  int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu,
>> >  			    struct kvm_device_attr *attr);
>> >  int kvm_arm_spe_v1_get_attr(struct kvm_vcpu *vcpu,
>> > @@ -49,6 +52,9 @@ int kvm_arm_spe_v1_enable(struct kvm_vcpu 
>> *vcpu);
>> >  #define kvm_arm_support_spe_v1()	(false)
>> >  #define kvm_arm_spe_irq_initialized(v)	(false)
>> >
>> > +static inline void kvm_spe_flush_hwstate(struct kvm_vcpu *vcpu) 
>> {}
>> > +static inline void kvm_spe_sync_hwstate(struct kvm_vcpu *vcpu) {}
>> > +
>> >  static inline int kvm_arm_spe_v1_set_attr(struct kvm_vcpu *vcpu,
>> >  					  struct kvm_device_attr *attr)
>> >  {
>> > diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
>> > index 340d2388ee2c..a66085c8e785 100644
>> > --- a/virt/kvm/arm/arm.c
>> > +++ b/virt/kvm/arm/arm.c
>> > @@ -741,6 +741,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu 
>> *vcpu, struct kvm_run *run)
>> >  		preempt_disable();
>> >
>> >  		kvm_pmu_flush_hwstate(vcpu);
>> > +		kvm_spe_flush_hwstate(vcpu);
>> >
>> >  		local_irq_disable();
>> >
>> > @@ -782,6 +783,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu 
>> *vcpu, struct kvm_run *run)
>> >  		    kvm_request_pending(vcpu)) {
>> >  			vcpu->mode = OUTSIDE_GUEST_MODE;
>> >  			isb(); /* Ensure work in x_flush_hwstate is committed */
>> > +			kvm_spe_sync_hwstate(vcpu);
>> >  			kvm_pmu_sync_hwstate(vcpu);
>> >  			if (static_branch_unlikely(&userspace_irqchip_in_use))
>> >  				kvm_timer_sync_hwstate(vcpu);
>> > @@ -816,11 +818,12 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu 
>> *vcpu, struct kvm_run *run)
>> >  		kvm_arm_clear_debug(vcpu);
>> >
>> >  		/*
>> > -		 * We must sync the PMU state before the vgic state so
>> > +		 * We must sync the PMU and SPE state before the vgic state so
>> >  		 * that the vgic can properly sample the updated state of the
>> >  		 * interrupt line.
>> >  		 */
>> >  		kvm_pmu_sync_hwstate(vcpu);
>> > +		kvm_spe_sync_hwstate(vcpu);
>>
>> The *HUGE* difference is that the PMU is purely a virtual interrupt,
>> while you're trying to deal with a HW interrupt here.
>>
>> >
>> >  		/*
>> >  		 * Sync the vgic state before syncing the timer state because
>> > diff --git a/virt/kvm/arm/spe.c b/virt/kvm/arm/spe.c
>> > index 83ac2cce2cc3..097ed39014e4 100644
>> > --- a/virt/kvm/arm/spe.c
>> > +++ b/virt/kvm/arm/spe.c
>> > @@ -35,6 +35,68 @@ int kvm_arm_spe_v1_enable(struct kvm_vcpu 
>> *vcpu)
>> >  	return 0;
>> >  }
>> >
>> > +static inline void set_spe_irq_phys_active(struct 
>> arm_spe_kvm_info *info,
>> > +					   bool active)
>> > +{
>> > +	int r;
>> > +	r = irq_set_irqchip_state(info->physical_irq, 
>> IRQCHIP_STATE_ACTIVE,
>> > +				  active);
>> > +	WARN_ON(r);
>> > +}
>> > +
>> > +void kvm_spe_flush_hwstate(struct kvm_vcpu *vcpu)
>> > +{
>> > +	struct kvm_spe *spe = &vcpu->arch.spe;
>> > +	bool phys_active = false;
>> > +	struct arm_spe_kvm_info *info = arm_spe_get_kvm_info();
>> > +
>> > +	if (!kvm_arm_spe_v1_ready(vcpu))
>> > +		return;
>> > +
>> > +	if (irqchip_in_kernel(vcpu->kvm))
>> > +		phys_active = kvm_vgic_map_is_active(vcpu, spe->irq_num);
>> > +
>> > +	phys_active |= spe->irq_level;
>> > +
>> > +	set_spe_irq_phys_active(info, phys_active);
>>
>> So you're happy to mess with the HW interrupt state even when you
>> don't have a HW irqchip? If you are going to copy paste the timer 
>> code
>> here, you'd need to support it all the way (no, don't).
>>
>> > +}
>> > +
>> > +void kvm_spe_sync_hwstate(struct kvm_vcpu *vcpu)
>> > +{
>> > +	struct kvm_spe *spe = &vcpu->arch.spe;
>> > +	u64 pmbsr;
>> > +	int r;
>> > +	bool service;
>> > +	struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
>> > +	struct arm_spe_kvm_info *info = arm_spe_get_kvm_info();
>> > +
>> > +	if (!kvm_arm_spe_v1_ready(vcpu))
>> > +		return;
>> > +
>> > +	set_spe_irq_phys_active(info, false);
>> > +
>> > +	pmbsr = ctxt->sys_regs[PMBSR_EL1];
>> > +	service = !!(pmbsr & BIT(SYS_PMBSR_EL1_S_SHIFT));
>> > +	if (spe->irq_level == service)
>> > +		return;
>> > +
>> > +	spe->irq_level = service;
>> > +
>> > +	if (likely(irqchip_in_kernel(vcpu->kvm))) {
>> > +		r = kvm_vgic_inject_irq(vcpu->kvm, vcpu->vcpu_id,
>> > +					spe->irq_num, service, spe);
>> > +		WARN_ON(r);
>> > +	}
>> > +}
>> > +
>> > +static inline bool kvm_arch_arm_spe_v1_get_input_level(int 
>> vintid)
>> > +{
>> > +	struct kvm_vcpu *vcpu = kvm_arm_get_running_vcpu();
>> > +	struct kvm_spe *spe = &vcpu->arch.spe;
>> > +
>> > +	return spe->irq_level;
>> > +}
>>
>> This isn't what such a callback is for. It is supposed to sample the
>> HW, an nothing else.
>>
>> > +
>> >  static int kvm_arm_spe_v1_init(struct kvm_vcpu *vcpu)
>> >  {
>> >  	if (!kvm_arm_support_spe_v1())
>> > @@ -48,6 +110,7 @@ static int kvm_arm_spe_v1_init(struct kvm_vcpu 
>> *vcpu)
>> >
>> >  	if (irqchip_in_kernel(vcpu->kvm)) {
>> >  		int ret;
>> > +		struct arm_spe_kvm_info *info;
>> >
>> >  		/*
>> >  		 * If using the SPE with an in-kernel virtual GIC
>> > @@ -57,10 +120,18 @@ static int kvm_arm_spe_v1_init(struct 
>> kvm_vcpu *vcpu)
>> >  		if (!vgic_initialized(vcpu->kvm))
>> >  			return -ENODEV;
>> >
>> > +		info = arm_spe_get_kvm_info();
>> > +		if (!info->physical_irq)
>> > +			return -ENODEV;
>> > +
>> >  		ret = kvm_vgic_set_owner(vcpu, vcpu->arch.spe.irq_num,
>> >  					 &vcpu->arch.spe);
>> >  		if (ret)
>> >  			return ret;
>> > +
>> > +		ret = kvm_vgic_map_phys_irq(vcpu, info->physical_irq,
>> > +					    vcpu->arch.spe.irq_num,
>> > +					    kvm_arch_arm_spe_v1_get_input_level);
>>
>> You're mapping the interrupt int the guest, and yet you have never
>> forwarded the interrupt the first place. All this flow is only going
>> to wreck the host driver as soon as an interrupt occurs.
>>
>> I think you should rethink the interrupt handling altogether. It 
>> would
>> make more sense if the interrupt was actually completely
>> virtualized. If you can isolate the guest state and compute the
>> interrupt state in SW (and from the above, it seems that you can),
>> then you shouldn't mess with the whole forwarding *at all*, as it
>> isn't designed for devices shared between host and guests.
>
> Yes it's possible to read SYS_PMBSR_EL1_S_SHIFT and determine if SPE 
> wants
> service. If I understand correctly, you're suggesting on entry/exit 
> to the
> guest we determine this and inject an interrupt to the guest. As well 
> as
> removing the kvm_vgic_map_phys_irq mapping to the physical interrupt?

The mapping only makes sense for devices that have their interrupt
forwarded to a vcpu, where the expected flow is that the interrupt
is taken on the host with a normal interrupt handler and then
injected in the guest (you still have to manage the active state
though). The basic assumption is that such a device is entirely
owned by KVM.

Here, you're abusing the mapping interface: you don't have an
interrupt handler (the host SPE driver owns it), the interrupt
isn't forwarded, and yet you're messing with the active state.
None of that is expected, and you are in uncharted territory
as far as KVM is concerned.

What bothers me the most is that this looks a lot like a previous
implementation of the timers, and we had all the problems in the
world to keep track of the interrupt state *and* have a reasonable
level of performance (hitting the redistributor on the fast path
is a performance killer).

> My understanding was that I needed knowledge of the physical SPE 
> interrupt
> number so that I could prevent the host SPE driver from getting 
> spurious
> interrupts due to guest use of the SPE.

You can't completely rule out the host getting interrupted. Even if you 
set
PMBSR_EL1.S to zero, there is no guarantee that the host will not 
observe
the interrupt anyway (the GIC architecture doesn't tell you how quickly
it will be retired, if ever). The host driver already checks for this
anyway.

What you need to ensure is that PMBSR_EL1.S being set on guest entry
doesn't immediately kick you out of the guest and prevent forward
progress. This is why you need to manage the active state.

The real question is: how quickly do you want to react to a SPE
interrupt firing while in a guest?

If you want to take it into account as soon as it fires, then you need
to eagerly save/restore the active state together with the SPE state on
each entry/exit, and performance will suffer. This is what you are
currently doing.

If you're OK with evaluating the interrupt status on exit, but without
the interrupt itself causing an exit, then you can simply manage it
as a purely virtual interrupt, and just deal with the active state
in load/put (set the interrupt as active on load, clear it on put).

Given that SPE interrupts always indicate that profiling has stopped,
this only affects the size of the black hole, and I'm inclined to do
the latter.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
