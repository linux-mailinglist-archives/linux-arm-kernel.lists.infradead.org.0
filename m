Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAD1FAE4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fREMK/7o9lLduTqi7qnfLVKttgSg43X95L+ICRLQpks=; b=i7OzhMhBeihipD
	SwT3650UhgN279mwycObKCT0HEqMfLCM1r7D9U76H8qSw6GLFMcGF1f8jU10KlN+uckbjIy8obOm9
	01BQs2BkI2tuI1qq1+Jp2Aly+gxYnRYy0931xijgpF6jVtDBXk0LiqiqkNMo9JPsTupE3Z+rnwIMA
	MOWnThMfk+lHYpH5sUHaSFCKuG1RT+2cm2CHGOaoKeymMEys6q5IWfW+zZjtpllHPeteC8CE9Qx+S
	xeBnxm6VB0u6uHRVut9URBob9TG2jDKQPr51K1ZKxo8IR91OGOyZUGfso+Byeewy+8+24Fkc/U9uU
	VM8iTObZ3UI7lRnGrPfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpfc-00009n-7P; Wed, 13 Nov 2019 10:14:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpfP-00008R-Pj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:14:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DA7BD7A7;
 Wed, 13 Nov 2019 02:14:24 -0800 (PST)
Received: from [10.1.196.63] (e123195-lin.cambridge.arm.com [10.1.196.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC2B83F534;
 Wed, 13 Nov 2019 02:14:23 -0800 (PST)
Subject: Re: [kvm-unit-tests PATCH 15/17] arm: gic: Provide FIQ handler
To: Andre Przywara <andre.przywara@arm.com>, Andrew Jones
 <drjones@redhat.com>, Paolo Bonzini <pbonzini@redhat.com>
References: <20191108144240.204202-1-andre.przywara@arm.com>
 <20191108144240.204202-16-andre.przywara@arm.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <efbf58a2-9f9d-b3b6-626f-e7bb3b5707a2@arm.com>
Date: Wed, 13 Nov 2019 10:14:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191108144240.204202-16-andre.przywara@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_021427_897505_F9C9B5A2 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marc Zyngier <maz@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/8/19 2:42 PM, Andre Przywara wrote:
> When configuring an interrupt as Group 0, we can ask the GIC to deliver
> them as a FIQ. For this we need a separate exception handler.
>
> Provide this to be used later.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arm/gic.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arm/gic.c b/arm/gic.c
> index c68b5b5..6756850 100644
> --- a/arm/gic.c
> +++ b/arm/gic.c
> @@ -178,6 +178,30 @@ static void irq_handler(struct pt_regs *regs __unused)
>  	smp_wmb(); /* pairs with rmb in check_acked */
>  }
>  
> +static inline void fiq_handler(struct pt_regs *regs __unused)
> +{
> +	u32 irqstat = gic_read_iar(0);
> +	u32 irqnr = gic_iar_irqnr(irqstat);
> +
> +	if (irqnr == GICC_INT_SPURIOUS) {
> +		++spurious[smp_processor_id()];
> +		smp_wmb();
> +		return;
> +	}
> +
> +	gic_write_eoir(irqstat, 0);
> +
> +	smp_rmb(); /* pairs with wmb in stats_reset */
> +	++acked[smp_processor_id()];
> +	if (irqnr < GIC_NR_PRIVATE_IRQS) {
> +		check_ipi_sender(irqstat);
> +		check_irqnr(irqnr, IPI_IRQ);
> +	} else {
> +		check_irqnr(irqnr, SPI_IRQ);
> +	}
> +	smp_wmb(); /* pairs with rmb in check_acked */
> +}

If I'm not mistaken, this is identical to irq_handler, with the exception that
gic_read_iar and gic_write_eoir take group 0 as argument here. Maybe we can
abstract the common code into a function that takes the group as the argument?
What do you think?

Thanks,
Alex
> +
>  static void gicv2_ipi_send_self(void)
>  {
>  	writel(2 << 24 | IPI_IRQ, gicv2_dist_base() + GICD_SGIR);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
