Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59F3C88E5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 14:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACNjqbF+ucucJiPP0a8vkrtYntpttmzLRrie5jO+QKY=; b=AmLYKeTX7ajEWC
	JOQzgOZSlNMiy92EaOjS7roaILa8OY+jNwXCX2X+59QxUhkoEFjCZ1f3lKDfYRF+Wj6pdl+56Nnr6
	R3zMvzdlk0/zvfIc69BpjDFA65JXVQ7dnVesoFNzvNMXHRd9UTNHJG2qeQ+54QYCegZqkQVKqOZvB
	lhejwoNUGEcaUz5T1GzG4ovwS6NNvSACo2nXtQhH8ncSoOsMJ1UWZH1wMAPGUTl/Bj0sUxaWYYpEo
	BqojqYi7y2lVF4j0OxbsV6DExq5OZsxQWvgDfMKsfEjZ+DYlM5znJQUQUnpSPqzXEQedVVzb0+CFU
	1bAvK1xZpq9RJ27p7UyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFdwG-0006kP-Il; Wed, 02 Oct 2019 12:41:04 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFdw5-0006ja-CC; Wed, 02 Oct 2019 12:40:54 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFdvv-0007Rb-6t; Wed, 02 Oct 2019 14:40:43 +0200
Date: Wed, 2 Oct 2019 13:40:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 5/7] irqchip/irq-bcm2836: Add support for the 7211
 interrupt controller
Message-ID: <20191002134041.5a181d96@why>
In-Reply-To: <20191001224842.9382-6-f.fainelli@gmail.com>
References: <20191001224842.9382-1-f.fainelli@gmail.com>
 <20191001224842.9382-6-f.fainelli@gmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 tglx@linutronix.de, jason@lakedaemon.net, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, eric@anholt.net, wahrenst@gmx.net,
 devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_054053_563859_AD4C88B8 
X-CRM114-Status: GOOD (  21.69  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE
 TREE BINDINGS" <devicetree@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 Thomas Gleixner <tglx@linutronix.de>, "moderated list:BROADCOM BCM2835 ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "moderated
 list:BROADCOM BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  1 Oct 2019 15:48:40 -0700
Florian Fainelli <f.fainelli@gmail.com> wrote:

> The root interrupt controller on 7211 is about identical to the one
> existing on BCM2836, except that the SMP cross call are done through the
> standard ARM GIC-400 interrupt controller. This interrupt controller is
> used for side band wake-up signals though.

I don't fully grasp how this thing works.

If the 7211 interrupt controller is root and the GIC is used for SGIs,
this means that the GIC outputs (IRQ/FIQ/VIRQ/VFIQ, times eight) are
connected to individual inputs to the 7211 controller. Seems totally
braindead, and unexpectedly so.

If the GIC is root and the 7211 outputs into the GIC all of its
interrupts as a secondary irqchip, it would at least match an existing
(and pretty bad) pattern.

So which one of the two is it?

> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/irqchip/irq-bcm2836.c | 25 ++++++++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-bcm2836.c b/drivers/irqchip/irq-bcm2836.c
> index 2038693f074c..77fa395c8f6b 100644
> --- a/drivers/irqchip/irq-bcm2836.c
> +++ b/drivers/irqchip/irq-bcm2836.c
> @@ -112,6 +112,8 @@ static int bcm2836_map(struct irq_domain *d, unsigned int irq,
>  		return -EINVAL;
>  	}
>  
> +	chip->flags |= IRQCHIP_MASK_ON_SUSPEND | IRQCHIP_SKIP_SET_WAKE;
> +
>  	irq_set_percpu_devid(irq);
>  	irq_domain_set_info(d, irq, hw, chip, d->host_data,
>  			    handle_percpu_devid_irq, NULL, NULL);
> @@ -216,8 +218,9 @@ static void bcm2835_init_local_timer_frequency(void)
>  	writel(0x80000000, intc.base + LOCAL_PRESCALER);
>  }
>  
> -static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
> -						      struct device_node *parent)
> +static int __init arm_irqchip_l1_intc_of_init_smp(struct device_node *node,
> +						  struct device_node *parent,
> +						  bool smp_init)
>  {
>  	intc.base = of_iomap(node, 0);
>  	if (!intc.base) {
> @@ -232,11 +235,27 @@ static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
>  	if (!intc.domain)
>  		panic("%pOF: unable to create IRQ domain\n", node);
>  
> -	bcm2836_arm_irqchip_smp_init();
> +	if (smp_init)
> +		bcm2836_arm_irqchip_smp_init();

Instead of the additional parameter and this check, why don't you just
move the smp_init() call to bcm2836_arm_irqchip_l1_intc_of_init()
instead?

>  
>  	set_handle_irq(bcm2836_arm_irqchip_handle_irq);
> +
>  	return 0;
>  }
>  
> +static int __init bcm2836_arm_irqchip_l1_intc_of_init(struct device_node *node,
> +						      struct device_node *parent)
> +{
> +	return arm_irqchip_l1_intc_of_init_smp(node, parent, true);
> +}
> +
> +static int __init bcm7211_arm_irqchip_l1_intc_of_init(struct device_node *node,
> +						      struct device_node *parent)
> +{
> +	return arm_irqchip_l1_intc_of_init_smp(node, parent, false);
> +}
> +
>  IRQCHIP_DECLARE(bcm2836_arm_irqchip_l1_intc, "brcm,bcm2836-l1-intc",
>  		bcm2836_arm_irqchip_l1_intc_of_init);
> +IRQCHIP_DECLARE(bcm7211_arm_irqchip_l1_intc, "brcm,bcm7211-l1-intc",
> +		bcm7211_arm_irqchip_l1_intc_of_init);


Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
