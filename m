Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1402C9A00B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 21:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLro/O9aARvTKD14MjohuVlg6GIq2GqTsSihg+gbLYo=; b=M1nFXOl8IKPnbz
	ZDIh8JBQwf1EZUsrZiNKKjT0+WTXAtXc+xipm6XAhuDthcbob+FuID5AEUNxodUnfGOYO7qFcH2Ks
	L2ygv0U+mE1EbMRqUrJdcgxH42ASle7gY4TJXofs9sbRJony2h4VlWw7+3AaHlIiRX3CFjjYr4fa3
	3WcL6EZFnZjaxk0LwkOc67n/QX/InHEEXJ+kqYg8XcG8s/DKYX4PnKDxz4AUI+W3MpvrWDO0W2yrj
	uSNVUcFeIgo4FMFz3XALRS8i3eDSpCuxH4sWg23ZRMRVLdOxhbR+wtzJ5/raDeG1eeor8UtWxM7vz
	Z0faAXL2L5UYv9PvBwVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0smm-0007w0-7A; Thu, 22 Aug 2019 19:30:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0smZ-00071C-2C
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:30:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40773337;
 Thu, 22 Aug 2019 12:29:59 -0700 (PDT)
Received: from why (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 14A783F706;
 Thu, 22 Aug 2019 12:29:57 -0700 (PDT)
Date: Thu, 22 Aug 2019 20:29:54 +0100
From: Marc Zyngier <marc.zyngier@arm.com>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH v2] KVM: arm: VGIC: properly initialise private IRQ
 affinity
Message-ID: <20190822202954.48239e0e@why>
In-Reply-To: <20190822170510.167076-1-andre.przywara@arm.com>
References: <20190822170510.167076-1-andre.przywara@arm.com>
Organization: ARM Ltd
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_123003_228710_58EE78F7 
X-CRM114-Status: GOOD (  23.21  )
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
Cc: Julien Grall <julien.grall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Christoffer Dall <christoffer.dall@arm.com>,
 linux-arm-kernel@lists.infradead.org, Dave Martin <dave.martin@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 18:05:10 +0100
Andre Przywara <andre.przywara@arm.com> wrote:

> At the moment we initialise the target *mask* of a virtual IRQ to the
> VCPU it belongs to, even though this mask is only defined for GICv2 and
> quickly runs out of bits for many GICv3 guests.
> This behaviour triggers an UBSAN complaint for more than 32 VCPUs:
> ------
> [ 5659.462377] UBSAN: Undefined behaviour in virt/kvm/arm/vgic/vgic-init.c:223:21
> [ 5659.471689] shift exponent 32 is too large for 32-bit type 'unsigned int'
> ------
> Also for GICv3 guests the reporting of TARGET in the "vgic-state" debugfs
> dump is wrong, due to this very same problem.
> 
> Because there is no requirement to create the VGIC device before the
> VCPUs (and QEMU actually does it the other way round), we can't safely
> initialise mpidr or targets in kvm_vgic_vcpu_init(). But since we touch
> every private IRQ for each VCPU anyway later (in vgic_init()), we can
> just move the initialisation of those fields into there, where we
> definitely know the VGIC type.
> 
> On the way make sure we really have either a VGICv2 or a VGICv3 device,
> since the former checks was just checking for "VGICv3 or not", silently
> ignoring the uninitialised case.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reported-by: Dave Martin <dave.martin@arm.com>
> ---
> Hi,
> 
> tested with 4, 8 and 33 VCPUs with kvmtool and QEMU, on a GICv2 and a
> GICv3 machine.
> Also briefly tested localhost migration on the GICv3 machine w/ 33
> VCPUs, although I think all IRQs are group 1.
> 
> Cheers,
> Andre
> 
>  virt/kvm/arm/vgic/vgic-init.c | 28 ++++++++++++++++++----------
>  1 file changed, 18 insertions(+), 10 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> index 80127ca9269f..413fb6a5525c 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -8,6 +8,7 @@
>  #include <linux/cpu.h>
>  #include <linux/kvm_host.h>
>  #include <kvm/arm_vgic.h>
> +#include <asm/kvm_emulate.h>
>  #include <asm/kvm_mmu.h>
>  #include "vgic.h"
>  
> @@ -165,12 +166,17 @@ static int kvm_vgic_dist_init(struct kvm *kvm, unsigned int nr_spis)
>  		irq->vcpu = NULL;
>  		irq->target_vcpu = vcpu0;
>  		kref_init(&irq->refcount);
> -		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V2) {
> +		switch (dist->vgic_model) {
> +		case KVM_DEV_TYPE_ARM_VGIC_V2:
>  			irq->targets = 0;
>  			irq->group = 0;
> -		} else {
> +			break;
> +		case KVM_DEV_TYPE_ARM_VGIC_V3:
>  			irq->mpidr = 0;
>  			irq->group = 1;
> +			break;
> +		default:
> +			BUG_ON(1);
>  		}
>  	}
>  	return 0;
> @@ -210,7 +216,6 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
>  		irq->intid = i;
>  		irq->vcpu = NULL;
>  		irq->target_vcpu = vcpu;
> -		irq->targets = 1U << vcpu->vcpu_id;
>  		kref_init(&irq->refcount);
>  		if (vgic_irq_is_sgi(i)) {
>  			/* SGIs */
> @@ -220,11 +225,6 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
>  			/* PPIs */
>  			irq->config = VGIC_CONFIG_LEVEL;
>  		}
> -
> -		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3)
> -			irq->group = 1;
> -		else
> -			irq->group = 0;
>  	}
>  
>  	if (!irqchip_in_kernel(vcpu->kvm))
> @@ -287,10 +287,18 @@ int vgic_init(struct kvm *kvm)
>  
>  		for (i = 0; i < VGIC_NR_PRIVATE_IRQS; i++) {
>  			struct vgic_irq *irq = &vgic_cpu->private_irqs[i];
> -			if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3)
> +			switch (dist->vgic_model) {
> +			case KVM_DEV_TYPE_ARM_VGIC_V3:
>  				irq->group = 1;
> -			else
> +				irq->mpidr = kvm_vcpu_get_mpidr_aff(vcpu);
> +				break;
> +			case KVM_DEV_TYPE_ARM_VGIC_V2:
>  				irq->group = 0;
> +				irq->targets = 1U << idx;
> +				break;
> +			default:
> +				BUG_ON(1);
> +			}
>  		}
>  	}
>  

Please drop the BUG_ON()s. If something is unexpected, just fail to
init the guest, but don't kill the box.

Thanks,

	M.

-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
