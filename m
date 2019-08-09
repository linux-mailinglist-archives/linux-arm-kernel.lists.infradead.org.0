Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEFF872B7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKWQZm9Y3pTCmFLHTtKhEJEO1D6hAPwgpzZOAGad1uc=; b=E8gywS/HHHX2Ww
	0K+kEAJQpfUmxYDucZpF+Ryz7C1GQrdU8irntbx8rAyNrhp6m93SSKnh88Q5osqQXpgQvbrHvzu/p
	+uRQouA4TyY5SQUr5LkCb/StqEnSSNEvt3yP1c7/A9NY8NqcukerdFEdE8sKKfMnHkS1yfVCoES+P
	kGSrnOxrH/EPBkpakLvOxRPfJJ/5lRgs7l5qbpfaYov9eR9TRaXVJdm8pEJVE1Wio5D/fpCQdLZCK
	9ijV0MAcYd+XBanjEK7ad1CwyMjhdGpdBQt2JwlH83tspP35kc3Yq7cBH8maRu7hg7djdvYCXbSWu
	DvMJyXpwLV6LbAXud7DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvz1r-0006CR-Ln; Fri, 09 Aug 2019 07:09:35 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvz1N-0006Be-Oi
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:09:08 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1hvz1H-0002zE-LG; Fri, 09 Aug 2019 09:08:59 +0200
Date: Fri, 9 Aug 2019 08:08:56 +0100
From: Marc Zyngier <maz@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Subject: Re: [PATCH] KVM: arm/arm64: vgic: Reevaluate level sensitive
 interrupts on enable
Message-ID: <20190809080856.61ab570b@why>
In-Reply-To: <1565171600-11082-1-git-send-email-alexandru.elisei@arm.com>
References: <1565171600-11082-1-git-send-email-alexandru.elisei@arm.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: alexandru.elisei@arm.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, andre.przywara@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_000905_952234_317A2557 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: andre.przywara@arm.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  7 Aug 2019 10:53:20 +0100
Alexandru Elisei <alexandru.elisei@arm.com> wrote:

> A HW mapped level sensitive interrupt asserted by a device will not be put
> into the ap_list if it is disabled at the VGIC level. When it is enabled
> again, it will be inserted into the ap_list and written to a list register
> on guest entry regardless of the state of the device.
> 
> We could argue that this can also happen on real hardware, when the command
> to enable the interrupt reached the GIC before the device had the chance to
> de-assert the interrupt signal; however, we emulate the distributor and
> redistributors in software and we can do better than that.
> 
> Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
> ---
>  virt/kvm/arm/vgic/vgic-mmio.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/virt/kvm/arm/vgic/vgic-mmio.c b/virt/kvm/arm/vgic/vgic-mmio.c
> index 3ba7278fb533..44efc2ff863f 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio.c
> @@ -113,6 +113,22 @@ void vgic_mmio_write_senable(struct kvm_vcpu *vcpu,
>  		struct vgic_irq *irq = vgic_get_irq(vcpu->kvm, vcpu, intid + i);
>  
>  		raw_spin_lock_irqsave(&irq->irq_lock, flags);
> +		if (vgic_irq_is_mapped_level(irq)) {
> +			bool was_high = irq->line_level;
> +
> +			/*
> +			 * We need to update the state of the interrupt because
> +			 * the guest might have changed the state of the device
> +			 * while the interrupt was disabled at the VGIC level.
> +			 */
> +			irq->line_level = vgic_get_phys_line_level(irq);
> +			/*
> +			 * Deactivate the physical interrupt so the GIC will let
> +			 * us know when it is asserted again.
> +			 */
> +			if (!irq->active && was_high && !irq->line_level)
> +				vgic_irq_set_phys_active(irq, false);
> +		}
>  		irq->enabled = true;
>  		vgic_queue_irq_unlock(vcpu->kvm, irq, flags);
>  


Applied, thanks.

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
