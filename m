Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1862C18C8C5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 09:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdmWgxW5j9A/E3cDvaQ1NJ2kXkcsoONP6+BGsvk00N4=; b=g/2iCVHu50NoLv
	HK80T1yCnMo2glPwQ0NAZ6CEff8xZCpADayfYn1moYY0dkrYX4lDxvT01VIGAjiv8932NDhhIkne6
	rhF4W6g8Wn9IeoYQ/OcwhBZVYCjGsfSrS5xGa7YjtumlZBjHs7wcPHcjZHWr0CwDf/ykyWqZHkstt
	F1yY2UFZ/f6Bq4uMh65WQoTj8MPRZ96HxorpbL8Xv5l9J8Tzia983oX+rakcD4A7gZ5n3M5t6EzKS
	uiwiIi/XxP5NdTuFrqnlVwbYBwA6yWxWQpRjbCwE5A/Rk2hZeicc6lfbH9x5+SpMIs4NdNuRoDiql
	U109HhWBtoCsc2zThETg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFCl5-00032C-IY; Fri, 20 Mar 2020 08:11:59 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFCkw-00031V-KU
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 08:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584691909;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6VHdEsmEEgE8SwVWsTdpGDee8R02Hql0h9BY1woGGU8=;
 b=asi82RrR+Yj75bY6fUJZUMxisdbBdNjdeWnvA7twn8QjjEY/LuYLKXKXgJWvi602zDgLJJ
 1gDDXhDUUhpSIzZEUHkQ0w/vM4VSjTsmCZeSUSnC8yOF0wZp+sx6tXlYwBNi+KKwXW6wQB
 fXw4k+vY7+xJaj5OsZuwBlPSSUtHrEE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-FIDUR_0cOtqXMMLlfsS8ig-1; Fri, 20 Mar 2020 04:11:45 -0400
X-MC-Unique: FIDUR_0cOtqXMMLlfsS8ig-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0D0D13EA;
 Fri, 20 Mar 2020 08:11:42 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A5F299472;
 Fri, 20 Mar 2020 08:11:39 +0000 (UTC)
Subject: Re: [PATCH v5 18/23] KVM: arm64: GICv4.1: Add direct injection
 capability to SGI registers
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-19-maz@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <06705d70-0f99-e719-af52-1a5f778562d8@redhat.com>
Date: Fri, 20 Mar 2020 09:11:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20200304203330.4967-19-maz@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_011150_751149_0C49BDC8 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,
On 3/4/20 9:33 PM, Marc Zyngier wrote:
> Most of the GICv3 emulation code that deals with SGIs now has to be
> aware of the v4.1 capabilities in order to benefit from it.
> 
> Add such support, keyed on the interrupt having the hw flag set and
> being a SGI.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  virt/kvm/arm/vgic/vgic-mmio-v3.c | 15 +++++-
>  virt/kvm/arm/vgic/vgic-mmio.c    | 88 ++++++++++++++++++++++++++++++--
>  2 files changed, 96 insertions(+), 7 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index ebc218840fc2..de89da76a379 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -6,6 +6,7 @@
>  #include <linux/irqchip/arm-gic-v3.h>
>  #include <linux/kvm.h>
>  #include <linux/kvm_host.h>
> +#include <linux/interrupt.h>
>  #include <kvm/iodev.h>
>  #include <kvm/arm_vgic.h>
>  
> @@ -942,8 +943,18 @@ void vgic_v3_dispatch_sgi(struct kvm_vcpu *vcpu, u64 reg, bool allow_group1)
>  		 * generate interrupts of either group.
>  		 */
>  		if (!irq->group || allow_group1) {
> -			irq->pending_latch = true;
> -			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +			if (!irq->hw) {
> +				irq->pending_latch = true;
> +				vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +			} else {
> +				/* HW SGI? Ask the GIC to inject it */
> +				int err;
nit: add line
> +				err = irq_set_irqchip_state(irq->host_irq,
> +							    IRQCHIP_STATE_PENDING,
> +							    true);
> +				WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
> +				raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +			}
>  		} else {
>  			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>  		}
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index 97fb2a40e6ba..2199302597fa 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
> @@ -5,6 +5,8 @@
>  
>  #include <linux/bitops.h>
>  #include <linux/bsearch.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
>  #include <linux/kvm.h>
>  #include <linux/kvm_host.h>
>  #include <kvm/iodev.h>
> @@ -59,6 +61,11 @@ unsigned long vgic_mmio_read_group(struct kvm_vcpu *vcpu,
>  	return value;
>  }
>  
> +static void vgic_update_vsgi(struct vgic_irq *irq)
> +{
> +	WARN_ON(its_prop_update_vsgi(irq->host_irq, irq->priority, irq->group));
> +}
> +
>  void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
>  			   unsigned int len, unsigned long val)
>  {
> @@ -71,7 +78,12 @@ void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>  		irq->group = !!(val & BIT(i));
> -		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			vgic_update_vsgi(irq);
> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +		} else {
> +			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +		}
>  
>  		vgic_put_irq(vcpu->kvm, irq);
>  	}
> @@ -113,7 +125,21 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> -		if (vgic_irq_is_mapped_level(irq)) {
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			if (!irq->enabled) {
> +				struct irq_data *data;
> +
> +				irq->enabled = true;
> +				data = &irq_to_desc(irq->host_irq)->irq_data;
> +				while (irqd_irq_disabled(data))
> +					enable_irq(irq->host_irq);
could you explain me why the while() is requested?
> +			}
> +
> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +			vgic_put_irq(vcpu->kvm, irq);
> +
> +			continue;
> +		} else if (vgic_irq_is_mapped_level(irq)) {
>  			bool was_high = irq->line_level;
>  
>  			/*
> @@ -148,6 +174,8 @@ void vgic_mmio_write_cenable(struct kvm_vcpu *vcpu,
>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid) && irq->enabled)
> +			disable_irq_nosync(irq->host_irq);
>  
>  		irq->enabled = false;
>  
> @@ -167,10 +195,22 @@ unsigned long vgic_mmio_read_pending(struct kvm_vcpu *vcpu,
>  	for (i = 0; i < len * 8; i++) {
>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>  		unsigned long flags;
> +		bool val;
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
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
>  		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>  
>  		vgic_put_irq(vcpu->kvm, irq);
> @@ -215,6 +255,21 @@ void vgic_mmio_write_spending(struct kvm_vcpu *vcpu,
>  		}
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			/* HW SGI? Ask the GIC to inject it */
> +			int err;
nit: extra line
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
>  		if (irq->hw)
>  			vgic_hw_irq_spending(vcpu, irq, is_uaccess);
>  		else
> @@ -269,6 +324,20 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>  
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +			/* HW SGI? Ask the GIC to clear its pending bit */
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
>  		if (irq->hw)
>  			vgic_hw_irq_cpending(vcpu, irq, is_uaccess);
>  		else
> @@ -318,8 +387,15 @@ static void vgic_mmio_change_active(struct kvm_vcpu *vcpu, struct vgic_irq *irq,
>  
>  	raw_spin_lock_irqsave(&irq->irq_lock, flags);
>  
> -	if (irq->hw) {
> +	if (irq->hw && !vgic_irq_is_sgi(irq->intid)) {
>  		vgic_hw_irq_change_active(vcpu, irq, active, !requester_vcpu);
> +	} else if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
> +		/*
> +		 * GICv4.1 VSGI feature doesn't track an active state,
> +		 * so let's not kid ourselves, there is nothing we can
> +		 * do here.
> +		 */
> +		irq->active = false;
>  	} else {
>  		u32 model = vcpu->kvm->arch.vgic.vgic_model;
>  		u8 active_source;
> @@ -493,6 +569,8 @@ void vgic_mmio_write_priority(struct kvm_vcpu *vcpu,
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>  		/* Narrow the priority range to what we actually support */
>  		irq->priority = (val >> (i * 8)) & GENMASK(7, 8 - VGIC_PRI_BITS);
> +		if (irq->hw && vgic_irq_is_sgi(irq->intid))
> +			vgic_update_vsgi(irq);
>  		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>  
>  		vgic_put_irq(vcpu->kvm, irq);
> 
Reviewed-by: Eric Auger <eric.auger@redhat.com>

Thanks

Eric


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
