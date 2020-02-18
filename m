Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05938162393
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 10:41:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A1Lg8bjbJ3GmYaSmP4HEkCrBuETYQym9h22Rlem1c9I=; b=DIDwNOG7pj7z4OtqSOrhRfBir
	+KEn8Ov8y0s14KRUr6ccg9Go2pOn9VIsjkCBokU91doCL9eIaMXR+2RLxNSt8789ikWSPVvtcGFZt
	Ao2PW9wRJIb7NDSa+kbseXPd3NMFQwTwFsH0pq8R2RC9lOaBbWw+41xYRklJyvFHW/CTk2uDeqOEF
	I0uBhW2LRI//LSozeRMUiHZIYviMFr+2NvpUkP/QjRigq96AGCesU601O3SVQoz85XOhpus68SM3q
	AUpzJNit+swawU+COG0cW1h61crULZmYyYACZl7cjXgOseuheB09+3i1426VTY55FAzNDQCY/3OvJ
	gyDJyOdRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3zNl-0007zV-1j; Tue, 18 Feb 2020 09:41:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3zNc-0007z9-37
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 09:41:25 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DD0B206E2;
 Tue, 18 Feb 2020 09:41:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582018883;
 bh=pw2K2224fxAUUaU2pI7bCCAGARvYwAr/+j4AL8lzv6w=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GmI7V+jCtJhHkYvf4HXGGzSEsYsfOzgmCu765k6xM+smhJ7mh6vMw8EYwP4Hsufgn
 655ZVvHXc6u771KnpaXry8XvfnzEtLmSzU58yi1yCeoAYwpwYC9/PSiGwOH3fhf/bx
 6NW2F6jvTfBa9qzn2iHs0zd9iTrSYQijRxt5MUPw=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j3zNZ-006BTx-Rj; Tue, 18 Feb 2020 09:41:21 +0000
MIME-Version: 1.0
Date: Tue, 18 Feb 2020 09:41:21 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v4 15/20] KVM: arm64: GICv4.1: Add direct injection
 capability to SGI registers
In-Reply-To: <5e744173-5d7a-98b7-e44d-d1f8c47b3e3c@huawei.com>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-16-maz@kernel.org>
 <5e744173-5d7a-98b7-e44d-d1f8c47b3e3c@huawei.com>
Message-ID: <fb5cd47ffec8db887d442e1e23ffc0db@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com, jason@lakedaemon.net,
 rrichter@marvell.com, tglx@linutronix.de, eric.auger@redhat.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_014124_171109_214F8642 
X-CRM114-Status: GOOD (  19.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Eric Auger <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-18 08:46, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/2/14 22:57, Marc Zyngier wrote:
>> Most of the GICv3 emulation code that deals with SGIs now has to be
>> aware of the v4.1 capabilities in order to benefit from it.
>> 
>> Add such support, keyed on the interrupt having the hw flag set and
>> being a SGI.
>> 
>> Signed-off-by: Marc Zyngier <maz@kernel.org>
>> ---
>>   virt/kvm/arm/vgic/vgic-mmio-v3.c | 15 +++++-
>>   virt/kvm/arm/vgic/vgic-mmio.c    | 88 
>> ++++++++++++++++++++++++++++++--
>>   2 files changed, 96 insertions(+), 7 deletions(-)
>> 
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c 
>> b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> index ebc218840fc2..de89da76a379 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
>> @@ -6,6 +6,7 @@
>>   #include <linux/irqchip/arm-gic-v3.h>
>>   #include <linux/kvm.h>
>>   #include <linux/kvm_host.h>
>> +#include <linux/interrupt.h>
>>   #include <kvm/iodev.h>
>>   #include <kvm/arm_vgic.h>
>>   @@ -942,8 +943,18 @@ void vgic_v3_dispatch_sgi(struct kvm_vcpu 
>> *vcpu, u64 reg, bool allow_group1)
>>   		 * generate interrupts of either group.
>>   		 */
>>   		if (!irq->group || allow_group1) {
>> -			irq->pending_latch = true;
>> -			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>> +			if (!irq->hw) {
>> +				irq->pending_latch = true;
>> +				vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>> +			} else {
>> +				/* HW SGI? Ask the GIC to inject it */
>> +				int err;
>> +				err = irq_set_irqchip_state(irq->host_irq,
>> +							    IRQCHIP_STATE_PENDING,
>> +							    true);
>> +				WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
>> +				raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>> +			}
>>   		} else {
>>   			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>>   		}
>> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c 
>> b/virt/kvm/arm/vgic/vgic-mmio.c
>> index d656ebd5f9d4..0a1fb61e5b89 100644
>> --- a/virt/kvm/arm/vgic/vgic-mmio.c
>> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
>> @@ -5,6 +5,8 @@
>>     #include <linux/bitops.h>
>>   #include <linux/bsearch.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/irq.h>
>>   #include <linux/kvm.h>
>>   #include <linux/kvm_host.h>
>>   #include <kvm/iodev.h>
>> @@ -59,6 +61,11 @@ unsigned long vgic_mmio_read_group(struct kvm_vcpu 
>> *vcpu,
>>   	return value;
>>   }
>>   +static void vgic_update_vsgi(struct vgic_irq *irq)
>> +{
>> +	WARN_ON(its_prop_update_vsgi(irq->host_irq, irq->priority, 
>> irq->group));
>> +}
>> +
>>   void vgic_mmio_write_group(struct kvm_vcpu *vcpu, gpa_t addr,
>>   			   unsigned int len, unsigned long val)
>>   {
>> @@ -71,7 +78,12 @@ void vgic_mmio_write_group(struct kvm_vcpu *vcpu, 
>> gpa_t addr,
>>     		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>>   		irq->group = !!(val & BIT(i));
>> -		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +			vgic_update_vsgi(irq);
>> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>> +		} else {
>> +			vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>> +		}
>>     		vgic_put_irq(vcpu->kvm, irq);
>>   	}
>> @@ -113,7 +125,21 @@ void vgic_mmio_write_senable(struct kvm_vcpu 
>> *vcpu,
>>   		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>>     		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>> -		if (vgic_irq_is_mapped_level(irq)) {
>> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +			if (!irq->enabled) {
>> +				struct irq_data *data;
>> +
>> +				irq->enabled = true;
>> +				data = &irq_to_desc(irq->host_irq)->irq_data;
>> +				while (irqd_irq_disabled(data))
>> +					enable_irq(irq->host_irq);
>> +			}
>> +
>> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>> +			vgic_put_irq(vcpu->kvm, irq);
>> +
>> +			continue;
>> +		} else if (vgic_irq_is_mapped_level(irq)) {
>>   			bool was_high = irq->line_level;
>>     			/*
>> @@ -148,6 +174,8 @@ void vgic_mmio_write_cenable(struct kvm_vcpu 
>> *vcpu,
>>   		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>>     		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>> +		if (irq->hw && vgic_irq_is_sgi(irq->intid) && irq->enabled)
>> +			disable_irq_nosync(irq->host_irq);
>>     		irq->enabled = false;
>>   @@ -167,10 +195,22 @@ unsigned long vgic_mmio_read_pending(struct 
>> kvm_vcpu *vcpu,
>>   	for (i = 0; i < len * 8; i++) {
>>   		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>>   		unsigned long flags;
>> +		bool val;
>>     		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>> -		if (irq_is_pending(irq))
>> -			value |= (1U << i);
>> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +			int err;
>> +
>> +			val = false;
>> +			err = irq_get_irqchip_state(irq->host_irq,
>> +						    IRQCHIP_STATE_PENDING,
>> +						    &val);
>> +			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
>> +		} else {
>> +			val = irq_is_pending(irq);
>> +		}
>> +
>> +		value |= ((u32)val << i);
>>   		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>>     		vgic_put_irq(vcpu->kvm, irq);
>> @@ -227,6 +267,21 @@ void vgic_mmio_write_spending(struct kvm_vcpu 
>> *vcpu,
>>   		}
>>     		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>> +
>> +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +			/* HW SGI? Ask the GIC to inject it */
>> +			int err;
>> +			err = irq_set_irqchip_state(irq->host_irq,
>> +						    IRQCHIP_STATE_PENDING,
>> +						    true);
>> +			WARN_RATELIMIT(err, "IRQ %d", irq->host_irq);
>> +
>> +			raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
>> +			vgic_put_irq(vcpu->kvm, irq);
>> +
>> +			continue;
>> +		}
>> +
>>   		if (irq->hw)
>>   			vgic_hw_irq_spending(vcpu, irq, is_uaccess);
>>   		else
> 
> Should we consider taking the GICv4.1 support into uaccess_{read/write}
> callbacks for GICR_ISPENDR0 so that userspace can properly save/restore
> the pending state of GICv4.1 vSGIs?
> 
> I *think* we can do it because on restoration, GICD_CTLR(.nASSGIreq) is
> restored before GICR_ISPENDR0.  So we know whether we're restoring
> pending for vSGIs, and we can restore it to the HW level if v4.1 is
> supported by GIC. Otherwise restore it by the normal way.
> 
> And saving is easy with the get_irqchip_state callback, right?

Yes, this should be pretty easy to do, but I haven't completely worked 
out
the ordering dependencies (you're way ahead of me here!).

There is still a chance that userspace will play with us trying to set 
and
reset nASSGIreq, so we need to define what is acceptable...

> 
>> @@ -281,6 +336,20 @@ void vgic_mmio_write_cpending(struct kvm_vcpu 
>> *vcpu,
>>     		raw_spin_lock_irqsave(&irq->irq_lock, flags);
>>   +		if (irq->hw && vgic_irq_is_sgi(irq->intid)) {
>> +			/* HW SGI? Ask the GIC to inject it */
> 
> "Ask the GIC to clear its pending state" :-)

One day, I'll ban copy/paste from my editor... ;-)

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
