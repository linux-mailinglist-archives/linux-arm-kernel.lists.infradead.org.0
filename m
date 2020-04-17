Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B31ADC14
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 13:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNcE4MnB/5vAS5mnEqEA1NckjM8OcUKpT1uPRoOaZtA=; b=gYz3hUl63m81BP
	uEu5uUlGAMdqIeuoqv0EUNUDMzpU5ryY62xgnWCebjGqtOZBGbbgYD8Y3cJrIViK4mAsRFWIF/H+i
	qgxwnkDD+0E8UXs+kjqTYr/l/hadyigdfwnQiG+iQCvqdM8D3cGerPrRpuF0WxV6CglensUqLccJM
	q+2FvkKGPXrI2M2QWmqLZPTqXASj78rpwVa5WWaSy8yTuHxqGqoaTGfYE25rK1en84uzifmKVZuFU
	ROoZDoLgzIVnIhtIuqj1SABxGKtXazxaYiqMCSAm3T4qJ9yScviAzzr1JxzhdATHEpOwzLddZwSVV
	9VCT5L/+m6bZ9kv34raw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPP4i-0004j9-N3; Fri, 17 Apr 2020 11:22:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPP4X-0004hx-VR
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 11:22:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A059C14;
 Fri, 17 Apr 2020 04:22:13 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA5BB3F6C4;
 Fri, 17 Apr 2020 04:22:11 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] KVM: arm: vgic-v2: Only use the virtual state when
 userspace accesses pending bits
To: Marc Zyngier <maz@kernel.org>
References: <20200417083319.3066217-1-maz@kernel.org>
 <20200417083319.3066217-5-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <4133d5f2-ed0e-9c4a-8a66-953fb6bf6e70@arm.com>
Date: Fri, 17 Apr 2020 12:22:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200417083319.3066217-5-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_042214_100267_D22FF51B 
X-CRM114-Status: GOOD (  15.63  )
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
Cc: Julien Grall <julien@xen.org>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <Andre.Przywara@arm.com>, Eric Auger <eric.auger@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 17/04/2020 09:33, Marc Zyngier wrote:
> There is no point in accessing the HW when writing to any of the
> ISPENDR/ICPENDR registers from userspace, as only the guest should
> be allowed to change the HW state.
> 
> Introduce new userspace-specific accessors that deal solely with
> the virtual state. Note that the API differs from that of GICv3,
> where userspace exclusively uses ISPENDR to set the state. Too
> bad we can't reuse it.

> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v2.c b/virt/kvm/arm/vgic/vgic-mmio-v2.c
> index f51c6e939c76..a016f07adc28 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v2.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v2.c
> @@ -417,10 +417,12 @@ static const struct vgic_register_region vgic_v2_dist_registers[] = {
>  		NULL, vgic_uaccess_write_cenable, 1,
>  		VGIC_ACCESS_32bit),
>  	REGISTER_DESC_WITH_BITS_PER_IRQ(GIC_DIST_PENDING_SET,
> -		vgic_mmio_read_pending, vgic_mmio_write_spending, NULL, NULL, 1,
> +		vgic_mmio_read_pending, vgic_mmio_write_spending,
> +		NULL, vgic_uaccess_write_spending, 1,
>  		VGIC_ACCESS_32bit),

vgic_mmio_write_spending() has some homebrew detection for is_uaccess, which causes
vgic_hw_irq_spending() to do nothing. Isn't that now dead-code with this change?


> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index 6e30034d1464..f1927ae02d2e 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
> @@ -321,6 +321,27 @@ void vgic_mmio_write_spending(struct kvm_vcpu *vcpu,

> +int vgic_uaccess_write_spending(struct kvm_vcpu *vcpu,
> +				gpa_t addr, unsigned int len,
> +				unsigned long val)
> +{
> +	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
> +	int i;
> +	unsigned long flags;
> +
> +	for_each_set_bit(i, &val, len * 8) {
> +		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

vgic_mmio_write_spending() has:
|	/* GICD_ISPENDR0 SGI bits are WI *

and bales out early. Is GIC_DIST_PENDING_SET the same register?
(If so, shouldn't that be true for PPI too?)


> +		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +		irq->pending_latch = true;
> +		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
> +
> +		vgic_put_irq(vcpu->kvm, irq);
> +	}
> +
> +	return 0;
> +}

> @@ -390,6 +411,26 @@ void vgic_mmio_write_cpending(struct kvm_vcpu *vcpu,

> +int vgic_uaccess_write_cpending(struct kvm_vcpu *vcpu,
> +				gpa_t addr, unsigned int len,
> +				unsigned long val)
> +{
> +	u32 intid = VGIC_ADDR_TO_INTID(addr, 1);
> +	int i;
> +	unsigned long flags;
> +
> +	for_each_set_bit(i, &val, len * 8) {
> +		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);

Same dumb question about GICD_ICPENDR0!?

> +		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +		irq->pending_latch = false;
> +		raw_spin_unlock_irqrestore(&irq->irq_lock, flags);
> +
> +		vgic_put_irq(vcpu->kvm, irq);
> +	}
> +
> +	return 0;
> +}


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
