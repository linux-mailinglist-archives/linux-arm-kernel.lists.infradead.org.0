Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821585F3E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 09:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VogWOoPeIff/E5fjP1tb4Q+9qaU44sHQHmhU/Z0uX8k=; b=O2hNu2hybH3dGo
	+WwDxu5JTU4aSYjyVOrGmKa7VltcLUk0sViRQ24e9Skg8RLIWJxEnp2Mup2rvUuE7dh91a+gFWO/b
	ZQOcj8cj7+f3ZYNBRdmLW21KOBMMJoWhz+aQ6pmvWcDhT7/aHUjSVRD/yCCh0aai0M78ZyFaCUqPA
	c5dZvxBuG/LyEu+6R4sXB/jmQCmMyDGazWzmLna0RzyL54/+NzEL61QMrF1WgRVyPUP9/knpRNeIo
	Yi9hY43JQ2lBbSjvRPatxv0GR4PhWvuQqgjAlC77W/szzcFrx1vaSn+hhiF8TvhMUv/XY1pFLA2Wl
	QypKDQla9QmseObY0MrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiwKM-0002Ya-Q8; Thu, 04 Jul 2019 07:38:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiwJz-0002Xr-LY
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 07:38:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E82C8344;
 Thu,  4 Jul 2019 00:38:22 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7DE013F703;
 Thu,  4 Jul 2019 00:38:21 -0700 (PDT)
Subject: Re: [PATCH 52/59] KVM: arm64: nv: vgic: Allow userland to set VGIC
 maintenance IRQ
To: Marc Zyngier <marc.zyngier@arm.com>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
References: <20190621093843.220980-1-marc.zyngier@arm.com>
 <20190621093843.220980-53-marc.zyngier@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <23223923-125c-4d9b-eee9-071a4cf3de2a@arm.com>
Date: Thu, 4 Jul 2019 08:38:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190621093843.220980-53-marc.zyngier@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_003823_797414_ECC2321B 
X-CRM114-Status: GOOD (  26.87  )
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



On 21/06/2019 10:38, Marc Zyngier wrote:
> From: Andre Przywara <andre.przywara@arm.com>
> 
> The VGIC maintenance IRQ signals various conditions about the LRs, when
> the GIC's virtualization extension is used.
> So far we didn't need it, but nested virtualization needs to know about
> this interrupt, so add a userland interface to setup the IRQ number.
> The architecture mandates that it must be a PPI, on top of that this code
> only exports a per-device option, so the PPI is the same on all VCPUs.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> [added some bits of documentation]
> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> ---
>  .../virtual/kvm/devices/arm-vgic-v3.txt       |  9 ++++++++
>  arch/arm/include/uapi/asm/kvm.h               |  1 +
>  arch/arm64/include/uapi/asm/kvm.h             |  1 +
>  include/kvm/arm_vgic.h                        |  3 +++
>  virt/kvm/arm/vgic/vgic-kvm-device.c           | 22 +++++++++++++++++++
>  5 files changed, 36 insertions(+)
> 
> diff --git a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt b/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
> index ff290b43c8e5..c70e8f2e0c9c 100644
> --- a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
> +++ b/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
> @@ -249,3 +249,12 @@ Groups:
>    Errors:
>      -EINVAL: vINTID is not multiple of 32 or
>       info field is not VGIC_LEVEL_INFO_LINE_LEVEL
> +
> +  KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ
> +    The attr field of kvm_device_attr encodes the following values:
> +    bits:     | 31   ....    5 | 4  ....  0 |
> +    values:   |      RES0      |   vINTID   |
> +
> +    The vINTID specifies which interrupt is generated when the vGIC
> +    must generate a maintenance interrupt. This must be a PPI.
> +

Something seems off. The documentation suggests that the value of the
attribute will be between 0-15 (and other values will be masked down to
a value between 0 and 15). However, in the code the value should be
between 16 and 32 (PPI INTID) and other values are rejected.

Am I reading this wrong?

Cheers,

Julien

> diff --git a/arch/arm/include/uapi/asm/kvm.h b/arch/arm/include/uapi/asm/kvm.h
> index 4602464ebdfb..a6af45645a6d 100644
> --- a/arch/arm/include/uapi/asm/kvm.h
> +++ b/arch/arm/include/uapi/asm/kvm.h
> @@ -233,6 +233,7 @@ struct kvm_vcpu_events {
>  #define KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS 6
>  #define KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO  7
>  #define KVM_DEV_ARM_VGIC_GRP_ITS_REGS	8
> +#define KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ	9
>  #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT	10
>  #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK \
>  			(0x3fffffULL << KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT)
> diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
> index 563e2a8bae93..8e1c6ffe1b59 100644
> --- a/arch/arm64/include/uapi/asm/kvm.h
> +++ b/arch/arm64/include/uapi/asm/kvm.h
> @@ -295,6 +295,7 @@ struct kvm_vcpu_events {
>  #define KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS 6
>  #define KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO  7
>  #define KVM_DEV_ARM_VGIC_GRP_ITS_REGS 8
> +#define KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ  9
>  #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT	10
>  #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK \
>  			(0x3fffffULL << KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT)
> diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
> index 17d32c2797c0..95c6232663c3 100644
> --- a/include/kvm/arm_vgic.h
> +++ b/include/kvm/arm_vgic.h
> @@ -229,6 +229,9 @@ struct vgic_dist {
>  
>  	int			nr_spis;
>  
> +	/* The GIC maintenance IRQ for nested hypervisors. */
> +	u32			maint_irq;
> +
>  	/* base addresses in guest physical address space: */
>  	gpa_t			vgic_dist_base;		/* distributor */
>  	union {
> diff --git a/virt/kvm/arm/vgic/vgic-kvm-device.c b/virt/kvm/arm/vgic/vgic-kvm-device.c
> index 44419679f91a..dfb1d7cc66b3 100644
> --- a/virt/kvm/arm/vgic/vgic-kvm-device.c
> +++ b/virt/kvm/arm/vgic/vgic-kvm-device.c
> @@ -241,6 +241,12 @@ static int vgic_get_common_attr(struct kvm_device *dev,
>  			     VGIC_NR_PRIVATE_IRQS, uaddr);
>  		break;
>  	}
> +	case KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ: {
> +		u32 __user *uaddr = (u32 __user *)(long)attr->addr;
> +
> +		r = put_user(dev->kvm->arch.vgic.maint_irq, uaddr);
> +		break;
> +	}
>  	}
>  
>  	return r;
> @@ -627,6 +633,21 @@ static int vgic_v3_set_attr(struct kvm_device *dev,
>  		reg = tmp32;
>  		return vgic_v3_attr_regs_access(dev, attr, &reg, true);
>  	}
> +	case KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ: {
> +		u32 __user *uaddr = (u32 __user *)(long)attr->addr;
> +		u32 val;
> +
> +		if (get_user(val, uaddr))
> +			return -EFAULT;
> +
> +		/* Must be a PPI. */
> +		if ((val >= VGIC_NR_PRIVATE_IRQS) || (val < VGIC_NR_SGIS))
> +			return -EINVAL;
> +
> +		dev->kvm->arch.vgic.maint_irq = val;
> +
> +		return 0;
> +	}
>  	case KVM_DEV_ARM_VGIC_GRP_CTRL: {
>  		int ret;
>  
> @@ -712,6 +733,7 @@ static int vgic_v3_has_attr(struct kvm_device *dev,
>  	case KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS:
>  		return vgic_v3_has_attr_regs(dev, attr);
>  	case KVM_DEV_ARM_VGIC_GRP_NR_IRQS:
> +	case KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ:
>  		return 0;
>  	case KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO: {
>  		if (((attr->attr & KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK) >>
> 

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
