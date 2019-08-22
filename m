Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0709955A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 15:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtMIVs7OY881NsH5Q/sa/cZvqxP4nQnwaoRZgHJdLmI=; b=cLZCBV+kCKJid6
	KNnxzHQVgCPwuc/0hhv6AAIzGyH3bVL101i/au9B83MAyHcvGwSsFFOr5n3/D0/I39RWO5Vizvo09
	oYFVjOWZ8Rmd4KKeBEEz263WvTjyeIo8bUS3W5ulsMsA955jpR/ag6WYMXARt5SVG/psZ5FxNUIoP
	8IXaocDhKGRyz5zUEuI09YscKHketyH1+Myz9NPLR2GQVgCBgB3NHAiwA7tAVEGtKj0iD0S+I0Diu
	ow3kFYj18dCiovQxy674Ds710dRBH4qogPjTVbpK/bJ4I3NQmLH9kVydHYgJmIlbvXVLU+izLZu+X
	9JdjSNZoJ+p7OqvHzEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nMQ-0000Wb-Mj; Thu, 22 Aug 2019 13:42:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nMD-0000KD-Jp
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 13:42:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2827D337;
 Thu, 22 Aug 2019 06:42:28 -0700 (PDT)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1AF093F73D;
 Thu, 22 Aug 2019 06:42:26 -0700 (PDT)
Date: Thu, 22 Aug 2019 14:42:24 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [RESEND PATCH] KVM: arm: VGIC: properly initialise private IRQ
 affinity
Message-ID: <20190822144224.12d51380@donnerap.cambridge.arm.com>
In-Reply-To: <6d2ff99a-a97b-bb4d-3df1-8e22e804aa6a@huawei.com>
References: <20190821170052.169065-1-andre.przywara@arm.com>
 <6d2ff99a-a97b-bb4d-3df1-8e22e804aa6a@huawei.com>
Organization: ARM
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_064229_746189_687D575F 
X-CRM114-Status: GOOD (  24.32  )
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Julien Grall <julien.grall@arm.com>, Dave Martin <dave.martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 01:13:32 +0800
Zenghui Yu <yuzenghui@huawei.com> wrote:

Hi,

> On 2019/8/22 1:00, Andre Przywara wrote:
> > At the moment we initialise the target *mask* of a virtual IRQ to the
> > VCPU it belongs to, even though this mask is only defined for GICv2 and
> > quickly runs out of bits for many GICv3 guests.
> > This behaviour triggers an UBSAN complaint for more than 32 VCPUs:
> > ------
> > [ 5659.462377] UBSAN: Undefined behaviour in virt/kvm/arm/vgic/vgic-init.c:223:21
> > [ 5659.471689] shift exponent 32 is too large for 32-bit type 'unsigned int'
> > ------
> > Also for GICv3 guests the reporting of TARGET in the "vgic-state" debugfs
> > dump is wrong, due to this very same problem.
> > 
> > Fix both issues by only initialising vgic_irq->targets for a vGICv2 guest,
> > and by initialising vgic_irq->mpdir for vGICv3 guests instead. We can't
> > use the actual MPIDR for that, as the VCPU's system register is not
> > initialised at this point yet. This is not really an issue, as ->mpidr
> > is just used for the debugfs output and the IROUTER MMIO register, which
> > does not exist in redistributors (dealing with SGIs and PPIs).
> > 
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > Reported-by: Dave Martin <dave.martin@arm.com>
> > ---
> > Hi,
> > 
> > this came up here again, I think it fell through the cracks back in
> > March:
> > http://lists.infradead.org/pipermail/linux-arm-kernel/2019-March/637209.html
> > 
> > Cheers,
> > Andre.
> > 
> >   virt/kvm/arm/vgic/vgic-init.c | 9 ++++++---
> >   1 file changed, 6 insertions(+), 3 deletions(-)
> > 
> > diff --git a/virt/kvm/arm/vgic/vgic-init.c b/virt/kvm/arm/vgic/vgic-init.c
> > index 80127ca9269f..8bce2f75e0c1 100644
> > --- a/virt/kvm/arm/vgic/vgic-init.c
> > +++ b/virt/kvm/arm/vgic/vgic-init.c
> > @@ -210,7 +210,6 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
> >   		irq->intid = i;
> >   		irq->vcpu = NULL;
> >   		irq->target_vcpu = vcpu;
> > -		irq->targets = 1U << vcpu->vcpu_id;
> >   		kref_init(&irq->refcount);
> >   		if (vgic_irq_is_sgi(i)) {
> >   			/* SGIs */
> > @@ -221,10 +220,14 @@ int kvm_vgic_vcpu_init(struct kvm_vcpu *vcpu)
> >   			irq->config = VGIC_CONFIG_LEVEL;
> >   		}
> >   
> > -		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3)
> > +		if (dist->vgic_model == KVM_DEV_TYPE_ARM_VGIC_V3) {  
> 
> I still think that if user-space create VCPUs before vGIC (like what
> Qemu does), the actual vGIC model will be unknown here. The UBSAN
> warning will still show up when booting a vGIC-v3 guest (with Qemu).

Yes, you are right. I vaguely remembered this issue, but couldn't find anything on the list about it. So thanks for the heads up!

So I think I have a solution, where we drop the initialisation part here altogether, instead initialise mpdir/targets together with the group in vgic_init(). Unless there is some code which needs irq->group before that point?

Will send a patch shortly.

Cheers,
Andre.

> >   			irq->group = 1;
> > -		else
> > +			/* The actual MPIDR is not initialised at this point. */
> > +			irq->mpidr = 0;
> > +		} else {
> >   			irq->group = 0;
> > +			irq->targets = 1U << vcpu->vcpu_id;
> > +		}
> >   	}
> >   
> >   	if (!irqchip_in_kernel(vcpu->kvm))
> >   
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
