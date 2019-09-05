Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1F1AA3D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHTjKSzF+Z22T2e2rjmR1+0oBH0djDY93A40E8Ib39Q=; b=lL5ZfkzVCCEjVn
	2u53ugS7IMVhp1Tuhoku/zO9CHwLA81avcQOlojJTo3xX404trhABhES3NyeriRYAe9hM8IpG5wcw
	XH3Rh2BSh+P8Nzl2liwZH4uekOVuJpGVQz1djh6BZEPZm3wJXxtfGPwlxkwHFf6y+0r8AUQ3FehFA
	RJQ2EHvBbg0OAlgGacXQhrIOWiNwU1N9PBATZALAolOg5Rk0K1k6ZZc3oucoKH+zDSThc7/sX7gAW
	i+w5s6PgIGyAomPx7po9xwOqCS69EYaWLfoAzuCCgmoapA3cyqH4qTZxDi6991/gJvNuUiauXV5Zg
	9VxymOyf5XwKk77nLNiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rR3-00076T-P6; Thu, 05 Sep 2019 13:04:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rQs-00075O-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:04:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7892B28;
 Thu,  5 Sep 2019 06:04:13 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E37BC3F718;
 Thu,  5 Sep 2019 06:04:12 -0700 (PDT)
Date: Thu, 5 Sep 2019 14:04:11 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] KVM: arm64: vgic-v4: Move the GICv4 residency flow to be
 driven by vcpu_load/put
Message-ID: <20190905130410.GA9720@e119886-lin.cambridge.arm.com>
References: <20190903155747.219802-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903155747.219802-1-maz@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_060415_947039_8E67B08E 
X-CRM114-Status: GOOD (  30.72  )
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

Some feedback below, but mostly questions to aid my understanding...

On Tue, Sep 03, 2019 at 04:57:47PM +0100, Marc Zyngier wrote:
> When the VHE code was reworked, a lot of the vgic stuff was moved around,
> but the GICv4 residency code did stay untouched, meaning that we come
> in and out of residency on each flush/sync, which is obviously suboptimal.
> 
> To address this, let's move things around a bit:
> 
> - Residency entry (flush) moves to vcpu_load
> - Residency exit (sync) moves to vcpu_put
> - On blocking (entry to WFI), we "put"
> - On unblocking (exit from WFI, we "load"
> 
> Because these can nest (load/block/put/load/unblock/put, for example),
> we now have per-VPE tracking of the residency state.
> 
> Additionally, vgic_v4_put gains a "need doorbell" parameter, which only
> gets set to true when blocking because of a WFI. This allows a finer
> control of the doorbell, which now also gets disabled as soon as
> it gets signaled.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/irqchip/irq-gic-v4.c       |  7 +++-
>  include/kvm/arm_vgic.h             |  4 +--
>  include/linux/irqchip/arm-gic-v4.h |  2 ++
>  virt/kvm/arm/arm.c                 | 12 ++++---
>  virt/kvm/arm/vgic/vgic-v3.c        |  4 +++
>  virt/kvm/arm/vgic/vgic-v4.c        | 55 ++++++++++++++----------------
>  virt/kvm/arm/vgic/vgic.c           |  4 ---
>  virt/kvm/arm/vgic/vgic.h           |  2 --
>  8 files changed, 48 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v4.c b/drivers/irqchip/irq-gic-v4.c
> index 563e87ed0766..45969927cc81 100644
> --- a/drivers/irqchip/irq-gic-v4.c
> +++ b/drivers/irqchip/irq-gic-v4.c
> @@ -141,12 +141,17 @@ static int its_send_vpe_cmd(struct its_vpe *vpe, struct its_cmd_info *info)
>  int its_schedule_vpe(struct its_vpe *vpe, bool on)
>  {
>  	struct its_cmd_info info;
> +	int ret;
>  
>  	WARN_ON(preemptible());
>  
>  	info.cmd_type = on ? SCHEDULE_VPE : DESCHEDULE_VPE;
>  
> -	return its_send_vpe_cmd(vpe, &info);
> +	ret = its_send_vpe_cmd(vpe, &info);
> +	if (!ret)
> +		vpe->resident = on;
> +

We make an assumption here that its_schedule_vpe is the only caller of
its_send_vpe_cmd where we may pass SCHEDULE_VPE. I guess this is currently
the case.

Why do we also set the residency flag for DESCHEDULE_VPE?

And by residency we mean that interrupts are delivered to VM, instead of
doorbell?

> +	return ret;
>  }
>  
>  int its_invall_vpe(struct its_vpe *vpe)
> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
> index af4f09c02bf1..4dc58d7a0010 100644
> --- a/include/kvm/arm_vgic.h
> +++ b/include/kvm/arm_vgic.h
> @@ -396,7 +396,7 @@ int kvm_vgic_v4_set_forwarding(struct kvm *kvm, int irq,
>  int kvm_vgic_v4_unset_forwarding(struct kvm *kvm, int irq,
>  				 struct kvm_kernel_irq_routing_entry *irq_entry);
>  
> -void kvm_vgic_v4_enable_doorbell(struct kvm_vcpu *vcpu);
> -void kvm_vgic_v4_disable_doorbell(struct kvm_vcpu *vcpu);
> +int vgic_v4_load(struct kvm_vcpu *vcpu);
> +int vgic_v4_put(struct kvm_vcpu *vcpu, bool need_db);
>  
>  #endif /* __KVM_ARM_VGIC_H */
> diff --git a/include/linux/irqchip/arm-gic-v4.h b/include/linux/irqchip/arm-gic-v4.h
> index e6b155713b47..ab1396afe08a 100644
> --- a/include/linux/irqchip/arm-gic-v4.h
> +++ b/include/linux/irqchip/arm-gic-v4.h
> @@ -35,6 +35,8 @@ struct its_vpe {
>  	/* Doorbell interrupt */
>  	int			irq;
>  	irq_hw_number_t		vpe_db_lpi;
> +	/* VPE resident */
> +	bool			resident;
>  	/* VPE proxy mapping */
>  	int			vpe_proxy_event;
>  	/*
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index 35a069815baf..4e69268621b6 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -321,20 +321,24 @@ void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu)
>  	/*
>  	 * If we're about to block (most likely because we've just hit a
>  	 * WFI), we need to sync back the state of the GIC CPU interface
> -	 * so that we have the lastest PMR and group enables. This ensures
> +	 * so that we have the latest PMR and group enables. This ensures
>  	 * that kvm_arch_vcpu_runnable has up-to-date data to decide
>  	 * whether we have pending interrupts.
> +	 *
> +	 * For the same reason, we want to tell GICv4 that we need
> +	 * doorbells to be signalled, should an interrupt become pending.

As I understand, and as indicated by removal of kvm_vgic_v4_enable_doorbell
below, we've now abstracted enabling the doorbell behind the concept of a
v4_put.

Why then, do we break that abstraction by adding this comment? Surely we just
want to indicate that we're done with ITS for now - do whatever you need to do.

This would have made more sense to me if the comment above was removed in this
patch rather than added.

>  	 */
>  	preempt_disable();
>  	kvm_vgic_vmcr_sync(vcpu);
> +	vgic_v4_put(vcpu, true);
>  	preempt_enable();
> -
> -	kvm_vgic_v4_enable_doorbell(vcpu);
>  }
>  
>  void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
>  {
> -	kvm_vgic_v4_disable_doorbell(vcpu);
> +	preempt_disable();
> +	vgic_v4_load(vcpu);
> +	preempt_enable();
>  }
>  
>  int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
> diff --git a/virt/kvm/arm/vgic/vgic-v3.c b/virt/kvm/arm/vgic/vgic-v3.c
> index 8d69f007dd0c..48307a9eb1d8 100644
> --- a/virt/kvm/arm/vgic/vgic-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-v3.c
> @@ -664,6 +664,8 @@ void vgic_v3_load(struct kvm_vcpu *vcpu)
>  
>  	if (has_vhe())
>  		__vgic_v3_activate_traps(vcpu);
> +
> +	WARN_ON(vgic_v4_load(vcpu));
>  }
>  
>  void vgic_v3_vmcr_sync(struct kvm_vcpu *vcpu)
> @@ -676,6 +678,8 @@ void vgic_v3_vmcr_sync(struct kvm_vcpu *vcpu)
>  
>  void vgic_v3_put(struct kvm_vcpu *vcpu)
>  {
> +	WARN_ON(vgic_v4_put(vcpu, false));
> +
>  	vgic_v3_vmcr_sync(vcpu);
>  
>  	kvm_call_hyp(__vgic_v3_save_aprs, vcpu);
> diff --git a/virt/kvm/arm/vgic/vgic-v4.c b/virt/kvm/arm/vgic/vgic-v4.c
> index 477af6aebb97..3a8a28854b13 100644
> --- a/virt/kvm/arm/vgic/vgic-v4.c
> +++ b/virt/kvm/arm/vgic/vgic-v4.c
> @@ -85,6 +85,10 @@ static irqreturn_t vgic_v4_doorbell_handler(int irq, void *info)
>  {
>  	struct kvm_vcpu *vcpu = info;
>  
> +	/* We got the message, no need to fire again */
> +	if (!irqd_irq_disabled(&irq_to_desc(irq)->irq_data))
> +		disable_irq_nosync(irq);
> +
>  	vcpu->arch.vgic_cpu.vgic_v3.its_vpe.pending_last = true;
>  	kvm_make_request(KVM_REQ_IRQ_PENDING, vcpu);
>  	kvm_vcpu_kick(vcpu);

This is because the doorbell will fire each time any guest device interrupts,
however we only need to tell the guest just once that something has happened
right?

> @@ -192,20 +196,30 @@ void vgic_v4_teardown(struct kvm *kvm)
>  	its_vm->vpes = NULL;
>  }
>  
> -int vgic_v4_sync_hwstate(struct kvm_vcpu *vcpu)
> +int vgic_v4_put(struct kvm_vcpu *vcpu, bool need_db)
>  {
> -	if (!vgic_supports_direct_msis(vcpu->kvm))
> +	struct its_vpe *vpe = &vcpu->arch.vgic_cpu.vgic_v3.its_vpe;
> +	struct irq_desc *desc = irq_to_desc(vpe->irq);
> +
> +	if (!vgic_supports_direct_msis(vcpu->kvm) || !vpe->resident)
>  		return 0;

Are we using !vpe->resident to avoid pointlessly doing work we've
already done?

>  
> -	return its_schedule_vpe(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe, false);
> +	/*
> +	 * If blocking, a doorbell is required. Undo the nested
> +	 * disable_irq() calls...
> +	 */
> +	while (need_db && irqd_irq_disabled(&desc->irq_data))
> +		enable_irq(vpe->irq);
> +
> +	return its_schedule_vpe(vpe, false);
>  }
>  
> -int vgic_v4_flush_hwstate(struct kvm_vcpu *vcpu)
> +int vgic_v4_load(struct kvm_vcpu *vcpu)
>  {
> -	int irq = vcpu->arch.vgic_cpu.vgic_v3.its_vpe.irq;
> +	struct its_vpe *vpe = &vcpu->arch.vgic_cpu.vgic_v3.its_vpe;
>  	int err;
>  
> -	if (!vgic_supports_direct_msis(vcpu->kvm))
> +	if (!vgic_supports_direct_msis(vcpu->kvm) || vpe->resident)
>  		return 0;
>  
>  	/*
> @@ -214,11 +228,14 @@ int vgic_v4_flush_hwstate(struct kvm_vcpu *vcpu)
>  	 * doc in drivers/irqchip/irq-gic-v4.c to understand how this
>  	 * turns into a VMOVP command at the ITS level.
>  	 */
> -	err = irq_set_affinity(irq, cpumask_of(smp_processor_id()));
> +	err = irq_set_affinity(vpe->irq, cpumask_of(smp_processor_id()));
>  	if (err)
>  		return err;
>  
> -	err = its_schedule_vpe(&vcpu->arch.vgic_cpu.vgic_v3.its_vpe, true);
> +	/* Disabled the doorbell, as we're about to enter the guest */
> +	disable_irq(vpe->irq);
> +
> +	err = its_schedule_vpe(vpe, true);
>  	if (err)
>  		return err;

Given that the doorbell corresponds with vpe residency, it could make sense
to add a helper here that calls its_schedule_vpe and [disable,enable]_irq.
Though I see that vgic_v3_put calls vgic_v4_put with need_db=false. I wonder
what effect setting that to true would be for vgic_v3_put? Could it be known
that v3 won't set need_db to true?

Thanks,

Andrew Murray

>  
> @@ -226,9 +243,7 @@ int vgic_v4_flush_hwstate(struct kvm_vcpu *vcpu)
>  	 * Now that the VPE is resident, let's get rid of a potential
>  	 * doorbell interrupt that would still be pending.
>  	 */
> -	err = irq_set_irqchip_state(irq, IRQCHIP_STATE_PENDING, false);
> -
> -	return err;
> +	return irq_set_irqchip_state(vpe->irq, IRQCHIP_STATE_PENDING, false);
>  }
>  
>  static struct vgic_its *vgic_get_its(struct kvm *kvm,
> @@ -335,21 +350,3 @@ int kvm_vgic_v4_unset_forwarding(struct kvm *kvm, int virq,
>  	mutex_unlock(&its->its_lock);
>  	return ret;
>  }
> -
> -void kvm_vgic_v4_enable_doorbell(struct kvm_vcpu *vcpu)
> -{
> -	if (vgic_supports_direct_msis(vcpu->kvm)) {
> -		int irq = vcpu->arch.vgic_cpu.vgic_v3.its_vpe.irq;
> -		if (irq)
> -			enable_irq(irq);
> -	}
> -}
> -
> -void kvm_vgic_v4_disable_doorbell(struct kvm_vcpu *vcpu)
> -{
> -	if (vgic_supports_direct_msis(vcpu->kvm)) {
> -		int irq = vcpu->arch.vgic_cpu.vgic_v3.its_vpe.irq;
> -		if (irq)
> -			disable_irq(irq);
> -	}
> -}
> diff --git a/virt/kvm/arm/vgic/vgic.c b/virt/kvm/arm/vgic/vgic.c
> index 45a870cb63f5..99b02ca730a8 100644
> --- a/virt/kvm/arm/vgic/vgic.c
> +++ b/virt/kvm/arm/vgic/vgic.c
> @@ -857,8 +857,6 @@ void kvm_vgic_sync_hwstate(struct kvm_vcpu *vcpu)
>  {
>  	struct vgic_cpu *vgic_cpu = &vcpu->arch.vgic_cpu;
>  
> -	WARN_ON(vgic_v4_sync_hwstate(vcpu));
> -
>  	/* An empty ap_list_head implies used_lrs == 0 */
>  	if (list_empty(&vcpu->arch.vgic_cpu.ap_list_head))
>  		return;
> @@ -882,8 +880,6 @@ static inline void vgic_restore_state(struct kvm_vcpu *vcpu)
>  /* Flush our emulation state into the GIC hardware before entering the guest. */
>  void kvm_vgic_flush_hwstate(struct kvm_vcpu *vcpu)
>  {
> -	WARN_ON(vgic_v4_flush_hwstate(vcpu));
> -
>  	/*
>  	 * If there are no virtual interrupts active or pending for this
>  	 * VCPU, then there is no work to do and we can bail out without
> diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
> index 83066a81b16a..c7fefd6b1c80 100644
> --- a/virt/kvm/arm/vgic/vgic.h
> +++ b/virt/kvm/arm/vgic/vgic.h
> @@ -316,7 +316,5 @@ void vgic_its_invalidate_cache(struct kvm *kvm);
>  bool vgic_supports_direct_msis(struct kvm *kvm);
>  int vgic_v4_init(struct kvm *kvm);
>  void vgic_v4_teardown(struct kvm *kvm);
> -int vgic_v4_sync_hwstate(struct kvm_vcpu *vcpu);
> -int vgic_v4_flush_hwstate(struct kvm_vcpu *vcpu);
>  
>  #endif
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
