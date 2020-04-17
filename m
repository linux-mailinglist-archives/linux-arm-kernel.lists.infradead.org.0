Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B701AE240
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CBD1xC8Foheldz2u6C40ZJkcEhI8tl3YkCCBaofNOo=; b=chRzSuN3W+GQlN
	TYROmPkeSGPat4tCiaM+x8eb9YIgD8JINF3wLWTat4F7vDaYuTo23F3WxAQJihlCqCtboLH66DLqC
	Wau7tvOqtOQiWicS4Kl86lnsMIu6JFkhwGTP3/tEg/Oe784s9smx9uAMjfU5CD+DblcE+JVsZ3GCD
	RQe2qGbSzGsSqPHegFUbdYjYkWk5AmEyYfsUIfM2nPZVK3SmRqkD1+Dht056lzpJ0zNOeu9IoT4X0
	+xwHqUSCXgSPFwXjVRgUTaPMZ/eOUpDL1YRWK/iQuBCpnQxwUitE1aUUMiBB821ifjFghDTLwRQC8
	tMkkZJ8O09h/QzF4yz5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTqC-0001ap-8E; Fri, 17 Apr 2020 16:27:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTq3-0001Zt-KM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:27:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A159AC14;
 Fri, 17 Apr 2020 09:27:29 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B55C3F73D;
 Fri, 17 Apr 2020 09:27:28 -0700 (PDT)
Subject: Re: [PATCH v2 2/6] KVM: arm: vgic: Synchronize the whole guest on
 GIC{D,R}_I{S,C}ACTIVER read
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org
References: <20200417083319.3066217-1-maz@kernel.org>
 <20200417083319.3066217-3-maz@kernel.org>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Organization: ARM Ltd.
Message-ID: <321c946b-7ca1-e422-2c86-3ab121633549@arm.com>
Date: Fri, 17 Apr 2020 17:26:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200417083319.3066217-3-maz@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_092735_756044_870B867A 
X-CRM114-Status: GOOD (  28.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Julien Grall <julien@xen.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/2020 09:33, Marc Zyngier wrote:
> When a guest tries to read the active state of its interrupts,
> we currently just return whatever state we have in memory. This
> means that if such an interrupt lives in a List Register on another
> CPU, we fail to obsertve the latest active state for this interrupt.
> 
> In order to remedy this, stop all the other vcpus so that they exit
> and we can observe the most recent value for the state. This is
> similar to what we are doing for the write side of the same
> registers, and results in new MMIO handlers for userspace (which
> do not need to stop the guest, as it is supposed to be stopped
> already).

Thanks for the changes! Checked for other users of VGIC_NR_PRIVATE_IRQS,
also for not missing other ACTIVE bit register handlers.
Looks good to me!

> 
> Reported-by: Julien Grall <julien@xen.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  virt/kvm/arm/vgic/vgic-mmio-v2.c |   4 +-
>  virt/kvm/arm/vgic/vgic-mmio-v3.c |  12 ++--
>  virt/kvm/arm/vgic/vgic-mmio.c    | 100 ++++++++++++++++++++-----------
>  virt/kvm/arm/vgic/vgic-mmio.h    |   3 +
>  4 files changed, 75 insertions(+), 44 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
> index 5945f062d749..d63881f60e1a 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
> @@ -422,11 +422,11 @@ static const struct vgic_register_region vgic_v2_dist_registers[] = {
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_SET,
>  		vgic_mmio_read_active, vgic_mmio_write_sactive,
> -		NULL, vgic_mmio_uaccess_write_sactive, 1,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_ACTIVE_CLEAR,
>  		vgic_mmio_read_active, vgic_mmio_write_cactive,
> -		NULL, vgic_mmio_uaccess_write_cactive, 1,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive, 1,
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PRI,
>  		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index e72dcc454247..f2b37a081f26 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -553,11 +553,11 @@ static const struct vgic_register_region vgic_v3_dist_registers[] = {
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ISACTIVER,
>  		vgic_mmio_read_active, vgic_mmio_write_sactive,
> -		NULL, vgic_mmio_uaccess_write_sactive, 1,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 1,
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_ICACTIVER,
>  		vgic_mmio_read_active, vgic_mmio_write_cactive,
> -		NULL, vgic_mmio_uaccess_write_cactive,
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive,
>  		1, VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ_SHARED(GICD_IPRIORITYR,
>  		vgic_mmio_read_priority, vgic_mmio_write_priority, NULL, NULL,
> @@ -625,12 +625,12 @@ static const struct vgic_register_region vgic_v3_rd_registers[] = {
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ISACTIVER0,
>  		vgic_mmio_read_active, vgic_mmio_write_sactive,
> -		NULL, vgic_mmio_uaccess_write_sactive,
> -		4, VGIC_ACCESS_32bit),
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_sactive, 4,
> +		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_LENGTH_UACCESS(SZ_64K + GICR_ICACTIVER0,
>  		vgic_mmio_read_active, vgic_mmio_write_cactive,
> -		NULL, vgic_mmio_uaccess_write_cactive,
> -		4, VGIC_ACCESS_32bit),
> +		vgic_uaccess_read_active, vgic_mmio_uaccess_write_cactive, 4,
> +		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_LENGTH(SZ_64K + GICR_IPRIORITYR0,
>  		vgic_mmio_read_priority, vgic_mmio_write_priority, 32,
>  		VGIC_ACCESS_32bit | VGIC_ACCESS_8bit),
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index d085e047953f..b38e94e8f74a 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
> @@ -348,8 +348,39 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
>  	}
>  }
>  
> -unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
> -				    gpa_t addr, unsigned int len)
> +
> +/*
> + * If we are fiddling with an IRQ's active state, we have to make sure the IRQ
> + * is not queued on some running VCPU's LRs, because then the change to the
> + * active state can be overwritten when the VCPU's state is synced coming back
> + * from the guest.
> + *
> + * For shared interrupts as well as GICv3 private interrupts, we have to
> + * stop all the VCPUs because interrupts can be migrated while we don't hold
> + * the IRQ locks and we don't want to be chasing moving targets.
> + *
> + * For GICv2 private interrupts we don't have to do anything because
> + * userspace accesses to the VGIC state already require all VCPUs to be
> + * stopped, and only the VCPU itself can modify its private interrupts
> + * active state, which guarantees that the VCPU is not running.
> + */
> +static void vgic_access_active_prepare(struct kvm_vcpu *vcpu, u32 intid)
> +{
> +	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
> +	    intid >= VGIC_NR_PRIVATE_IRQS)
> +		kvm_arm_halt_guest(vcpu->kvm);
> +}
> +
> +/* See vgic_access_active_prepare */
> +static void vgic_access_active_finish(struct kvm_vcpu *vcpu, u32 intid)
> +{
> +	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
> +	    intid >= VGIC_NR_PRIVATE_IRQS)
> +		kvm_arm_resume_guest(vcpu->kvm);
> +}
> +
> +static unsigned long __vgic_mmio_read_active(struct kvm_vcpu *vcpu,
> +					     gpa_t addr, unsigned int len)
>  {
>  	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
>  	u32 value = 0;
> @@ -359,6 +390,10 @@ unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
>  	for (i = 0; i < len * 8; i++) {
>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>  
> +		/*
> +		 * Even for HW interrupts, don't evaluate the HW state as
> +		 * all the guest is interested in is the virtual state.
> +		 */
>  		if (irq->active)
>  			value |= (1U << i);
>  
> @@ -368,6 +403,29 @@ unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
>  	return value;
>  }
>  
> +unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
> +				    gpa_t addr, unsigned int len)
> +{
> +	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
> +	u32 val;
> +
> +	mutex_lock(&vcpu->kvm->lock);
> +	vgic_access_active_prepare(vcpu, intid);
> +
> +	val = __vgic_mmio_read_active(vcpu, addr, len);
> +
> +	vgic_access_active_finish(vcpu, intid);
> +	mutex_unlock(&vcpu->kvm->lock);
> +
> +	return val;
> +}
> +
> +unsigned long vgic_uaccess_read_active(struct kvm_vcpu *vcpu,
> +				    gpa_t addr, unsigned int len)
> +{
> +	return __vgic_mmio_read_active(vcpu, addr, len);
> +}
> +
>  /* Must be called with irq->irq_lock held */
>  static void vgic_hw_irq_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
>  				      bool active, bool is_uaccess)
> @@ -426,36 +484,6 @@ static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
>  		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>  }
>  
> -/*
> - * If we are fiddling with an IRQ's active state, we have to make sure the IRQ
> - * is not queued on some running VCPU's LRs, because then the change to the
> - * active state can be overwritten when the VCPU's state is synced coming back
> - * from the guest.
> - *
> - * For shared interrupts, we have to stop all the VCPUs because interrupts can
> - * be migrated while we don't hold the IRQ locks and we don't want to be
> - * chasing moving targets.
> - *
> - * For private interrupts we don't have to do anything because userspace
> - * accesses to the VGIC state already require all VCPUs to be stopped, and
> - * only the VCPU itself can modify its private interrupts active state, which
> - * guarantees that the VCPU is not running.
> - */
> -static void vgic_change_active_prepare(struct kvm_vcpu *vcpu, u32 intid)
> -{
> -	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
> -	    intid >= VGIC_NR_PRIVATE_IRQS)
> -		kvm_arm_halt_guest(vcpu->kvm);
> -}
> -
> -/* See vgic_change_active_prepare */
> -static void vgic_change_active_finish(struct kvm_vcpu *vcpu, u32 intid)
> -{
> -	if (vcpu->kvm->arch.vgic.vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3 ||
> -	    intid >= VGIC_NR_PRIVATE_IRQS)
> -		kvm_arm_resume_guest(vcpu->kvm);
> -}
> -
>  static void __vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
>  				      gpa_t addr, unsigned int len,
>  				      unsigned long val)
> @@ -477,11 +505,11 @@ void vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
>  	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
>  
>  	mutex_lock(&vcpu->kvm->lock);
> -	vgic_change_active_prepare(vcpu, intid);
> +	vgic_access_active_prepare(vcpu, intid);
>  
>  	__vgic_mmio_write_cactive(vcpu, addr, len, val);
>  
> -	vgic_change_active_finish(vcpu, intid);
> +	vgic_access_active_finish(vcpu, intid);
>  	mutex_unlock(&vcpu->kvm->lock);
>  }
>  
> @@ -514,11 +542,11 @@ void vgic_mmio_write_sactive(struct kvm_vcpu *vcpu,
>  	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
>  
>  	mutex_lock(&vcpu->kvm->lock);
> -	vgic_change_active_prepare(vcpu, intid);
> +	vgic_access_active_prepare(vcpu, intid);
>  
>  	__vgic_mmio_write_sactive(vcpu, addr, len, val);
>  
> -	vgic_change_active_finish(vcpu, intid);
> +	vgic_access_active_finish(vcpu, intid);
>  	mutex_unlock(&vcpu->kvm->lock);
>  }
>  
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.h b/virt/kvm/arm/vgic/vgic-mmio.h
> index 5af2aefad435..30713a44e3fa 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.h
> +++ b/virt/kvm/arm/vgic/vgic-mmio.h
> @@ -152,6 +152,9 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
>  unsigned long vgic_mmio_read_active(struct kvm_vcpu *vcpu,
>  				    gpa_t addr, unsigned int len);
>  
> +unsigned long vgic_uaccess_read_active(struct kvm_vcpu *vcpu,
> +				    gpa_t addr, unsigned int len);
> +
>  void vgic_mmio_write_cactive(struct kvm_vcpu *vcpu,
>  			     gpa_t addr, unsigned int len,
>  			     unsigned long val);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
