Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22896162299
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 09:47:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QlExuJuoXN19kKxV8TU1adfgN+ApOdZGsJF/55qaFRQ=; b=U+8+jpqr+PvsfM7nHGrORHMYV
	xnIAV65SrOXYE5gPMP99M2WLGsPijNBrGpNrwEDqEiYoAno3hVB028rJhuG2T5T+XJmFPxzPLvsaP
	0NILMefCJLpJBgU6YDVQFSsuabUGb83YbJcbqexu2V0U5gDetyJY1A5NAxAXnR1oOXNaGzy0fu2Kq
	xkOnxbUGfEoy6k7SixCMBMMUz7uuBXz4id49U8FIvHcB6jGaFnjsT+D/i0AbHXQsK2LNbucp1KaRk
	tFhJ6NTctw3Sq/pe7nqa2MdVkDWO5wzwGlbe736ZHhC+JmhHne/N241G02M7WX+5fhdQye6yNlYIm
	iAqUZSn1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3yXF-0000Lc-6s; Tue, 18 Feb 2020 08:47:17 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3yX4-0000K3-QB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 08:47:08 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 91E34EA84E46E844F2CB;
 Tue, 18 Feb 2020 16:46:58 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 18 Feb 2020
 16:46:51 +0800
Subject: Re: [PATCH v4 15/20] KVM: arm64: GICv4.1: Add direct injection
 capability to SGI registers
To: Marc Zyngier <maz@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-16-maz@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5e744173-5d7a-98b7-e44d-d1f8c47b3e3c@huawei.com>
Date: Tue, 18 Feb 2020 16:46:50 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200214145736.18550-16-maz@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_004707_191994_414DB3DC 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>, Thomas
 Gleixner <tglx@linutronix.de>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 2020/2/14 22:57, Marc Zyngier wrote:
> Most of the GICv3 emulation code that deals with SGIs now has to be
> aware of the v4.1 capabilities in order to benefit from it.
> 
> Add such support, keyed on the interrupt having the hw flag set and
> being a SGI.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   virt/kvm/arm/vgic/vgic-mmio-v3.c | 15 +++++-
>   virt/kvm/arm/vgic/vgic-mmio.c    | 88 ++++++++++++++++++++++++++++++--
>   2 files changed, 96 insertions(+), 7 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index ebc218840fc2..de89da76a379 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -6,6 +6,7 @@
>   #include <linux/irqchip/arm-gic-v3.h>
>   #include <linux/kvm.h>
>   #include <linux/kvm_host.h>
> +#include <linux/interrupt.h>
>   #include <kvm/iodev.h>
>   #include <kvm/arm_vgic.h>
>   
> @@ -942,8 +943,18 @@ void vgic_v3_dispatch_sgi(struct kvm_vcpu *vcpu, u64 reg, bool allow_group1)
>   		 * generate interrupts of either group.
>   		 */
>   		if (!irq->group || allow_group1) {
> -			irq->pending_latch = true;
> -			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +			if (!irq->hw) {
> +				irq->pending_latch = true;
> +				vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +			} else {
> +				/* HW SGI? Ask the GIC to inject it */
> +				int err;
> +				err = irq_set_irqchip_state(irq->host_irq,
> +							    IRQCHIP_STATE_PENDING,
> +							    true);
> +				WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
> +				raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +			}
>   		} else {
>   			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>   		}
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index d656ebd5f9d4..0a1fb61e5b89 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
> @@ -5,6 +5,8 @@
>   
>   #include <linux/bitops.h>
>   #include <linux/bsearch.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
>   #include <linux/kvm.h>
>   #include <linux/kvm_host.h>
>   #include <kvm/iodev.h>
> @@ -59,6 +61,11 @@ unsigned long vgic_mmio_read_group(struct kvm_vcpu *vcpu,
>   	return value;
>   }
>   
> +static void vgic_update_vsgi(struct vgic_irq *irq)
> +{
> +	WARN_ON(its_prop_update_vsgi(irq->host_irq, irq->priority, irq->group));
> +}
> +
>   void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
>   			   unsigned int len, unsigned long val)
>   {
> @@ -71,7 +78,12 @@ void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
>   
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>   		irq->group = !!(val & BIT(i));
> -		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			vgic_update_vsgi(irq);
> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +		} else {
> +			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +		}
>   
>   		vgic_put_irq(vcpu->kvm, irq);
>   	}
> @@ -113,7 +125,21 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
>   		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>   
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> -		if (vgic_irq_is_mapped_level(irq)) {
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			if (!irq->enabled) {
> +				struct irq_data *data;
> +
> +				irq->enabled = true;
> +				data = &irq_to_desc(irq->host_irq)->irq_data;
> +				while (irqd_irq_disabled(data))
> +					enable_irq(irq->host_irq);
> +			}
> +
> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +			vgic_put_irq(vcpu->kvm, irq);
> +
> +			continue;
> +		} else if (vgic_irq_is_mapped_level(irq)) {
>   			bool was_high = irq->line_level;
>   
>   			/*
> @@ -148,6 +174,8 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
>   		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>   
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid) && irq->enabled)
> +			disable_irq_nosync(irq->host_irq);
>   
>   		irq->enabled = false;
>   
> @@ -167,10 +195,22 @@ unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
>   	for (i = 0; i < len * 8; i++) {
>   		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>   		unsigned long flags;
> +		bool val;
>   
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> -		if (irq_is_pending(irq))
> -			value |= (1U << i);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			int err;
> +
> +			val = false;
> +			err = irq_get_irqchip_state(irq->host_irq,
> +						    IRQCHIP_STATE_PENDING,
> +						    &val);
> +			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
> +		} else {
> +			val = irq_is_pending(irq);
> +		}
> +
> +		value |= ((u32)val << i);
>   		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>   
>   		vgic_put_irq(vcpu->kvm, irq);
> @@ -227,6 +267,21 @@ void vgic_mmio_write_spending(struct kvm_vcpu *vcpu,
>   		}
>   
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			/* HW SGI? Ask the GIC to inject it */
> +			int err;
> +			err = irq_set_irqchip_state(irq->host_irq,
> +						    IRQCHIP_STATE_PENDING,
> +						    true);
> +			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
> +
> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +			vgic_put_irq(vcpu->kvm, irq);
> +
> +			continue;
> +		}
> +
>   		if (irq->hw)
>   			vgic_hw_irq_spending(vcpu, irq, is_uaccess);
>   		else

Should we consider taking the GICv4.1 support into uaccess_{read/write}
callbacks for GICR_ISPENDR0 so that userspace can properly save/restore
the pending state of GICv4.1 vSGIs?

I *think* we can do it because on restoration, GICD_CTLR(.nASSGIreq) is
restored before GICR_ISPENDR0.  So we know whether we're restoring
pending for vSGIs, and we can restore it to the HW level if v4.1 is
supported by GIC. Otherwise restore it by the normal way.

And saving is easy with the get_irqchip_state callback, right?

> @@ -281,6 +336,20 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
>   
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>   
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			/* HW SGI? Ask the GIC to inject it */

"Ask the GIC to clear its pending state" :-)


Thanks,
Zenghui

> +			int err;
> +			err = irq_set_irqchip_state(irq->host_irq,
> +						    IRQCHIP_STATE_PENDING,
> +						    false);
> +			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
> +
> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +			vgic_put_irq(vcpu->kvm, irq);
> +
> +			continue;
> +		}
> +
>   		if (irq->hw)
>   			vgic_hw_irq_cpending(vcpu, irq, is_uaccess);
>   		else
> @@ -330,8 +399,15 @@ static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
>   
>   	raw_spin_lock_irqsave(&irq->irq_lock, flags);
>   
> -	if (irq->hw) {
> +	if (irq->hw && !vgic_irq_is_sgi(irq->intid)) {
>   		vgic_hw_irq_change_active(vcpu, irq, active, !requester_vcpu);
> +	} else if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +		/*
> +		 * GICv4.1 VSGI feature doesn't track an active state,
> +		 * so let's not kid ourselves, there is nothing we can
> +		 * do here.
> +		 */
> +		irq->active = false;
>   	} else {
>   		u32 model = vcpu->kvm->arch.vgic.vgic_model;
>   		u8 active_source;
> @@ -505,6 +581,8 @@ void vgic_mmio_write_priority(struct kvm_vcpu *vcpu,
>   		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>   		/* Narrow the priority range to what we actually support */
>   		irq->priority = (val >> (i * 8)) & GENMASK(7, 8 - VGIC_PRI_BITS);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid))
> +			vgic_update_vsgi(irq);
>   		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>   
>   		vgic_put_irq(vcpu->kvm, irq);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
