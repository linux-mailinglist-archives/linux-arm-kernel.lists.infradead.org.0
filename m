Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C535C98116
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UJz8ZXATb2alpoIh8Ml0a7M7ErrfSCx7zqA0j+FMhrQ=; b=MtIURfY+6xVHMlNv8xAQLOVog
	IlCI5MAS7OJzEaB/Rl/njwSlliNaYxb9pV7JpnCY+X7pn4nupMVx3qfOx4V2NNgnUQj5J9gUtfLAf
	MiJnL0DSYvzclgGrbz64qmr62g07pyz47s6r9oyvGytuOmyu/b8GMDGqt8Yfz/e7atP+TONaqG9Zh
	0GMivr6nVjrSS2FjroFwzW1qyYXMPBd2bR0vJgh78C4AECTSKUxflqi5CRvad7wGt/aipjrpTeY2B
	AdEdOpSfbeNzYeX4ygr6z9QSCfV/djO3laLu5aaCepzM44lV3PICj5dAFC1x3Bggd+fX5YA88B05t
	4vx0wROog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UDT-0004oF-9l; Wed, 21 Aug 2019 17:16:11 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0UDJ-0004nn-01
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:16:03 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 4E068F0E5ADC9F5C3594;
 Thu, 22 Aug 2019 01:15:50 +0800 (CST)
Received: from [127.0.0.1] (10.184.12.158) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Thu, 22 Aug 2019
 01:15:42 +0800
Subject: Re: [RESEND PATCH] KVM: arm: VGIC: properly initialise private IRQ
 affinity
To: Andre Przywara <andre.przywara@arm.com>, Marc Zyngier
 <marc.zyngier@arm.com>
References: <20190821170052.169065-1-andre.przywara@arm.com>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <6d2ff99a-a97b-bb4d-3df1-8e22e804aa6a@huawei.com>
Date: Thu, 22 Aug 2019 01:13:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:64.0) Gecko/20100101
 Thunderbird/64.0
MIME-Version: 1.0
In-Reply-To: <20190821170052.169065-1-andre.przywara@arm.com>
Content-Language: en-US
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_101601_631656_B6C586BE 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Dave Martin <dave.martin@arm.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 Christoffer Dall <christoffer.dall@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/22 1:00, Andre Przywara wrote:
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
> Fix both issues by only initialising vgic_irq->targets for a vGICv2 guest,
> and by initialising vgic_irq->mpdir for vGICv3 guests instead. We can't
> use the actual MPIDR for that, as the VCPU's system register is not
> initialised at this point yet. This is not really an issue, as ->mpidr
> is just used for the debugfs output and the IROUTER MMIO register, which
> does not exist in redistributors (dealing with SGIs and PPIs).
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reported-by: Dave Martin <dave.martin@arm.com>
> ---
> Hi,
> 
> this came up here again, I think it fell through the cracks back in
> March:
> http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/637209.html
> 
> Cheers,
> Andre.
> 
>   virt/kvm/arm/vgic/vgic-init.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> index 80127ca9269f..8bce2f75e0c1 100644
> --- a/virt/kvm/arm/vgic/vgic-init.c
> +++ b/virt/kvm/arm/vgic/vgic-init.c
> @@ -210,7 +210,6 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
>   		irq->intid = i;
>   		irq->vcpu = NULL;
>   		irq->target_vcpu = vcpu;
> -		irq->targets = 1U << vcpu->vcpu_id;
>   		kref_init(&irq->refcount);
>   		if (vgic_irq_is_sgi(i)) {
>   			/* SGIs */
> @@ -221,10 +220,14 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
>   			irq->config = VGIC_CONFIG_LEVEL;
>   		}
>   
> -		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3)
> +		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {

I still think that if user-space create VCPUs before vGIC (like what
Qemu does), the actual vGIC model will be unknown here. The UBSAN
warning will still show up when booting a vGIC-v3 guest (with Qemu).


Thanks,
zenghui

>   			irq->group = 1;
> -		else
> +			/* The actual MPIDR is not initialised at this point. */
> +			irq->mpidr = 0;
> +		} else {
>   			irq->group = 0;
> +			irq->targets = 1U << vcpu->vcpu_id;
> +		}
>   	}
>   
>   	if (!irqchip_in_kernel(vcpu->kvm))
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
