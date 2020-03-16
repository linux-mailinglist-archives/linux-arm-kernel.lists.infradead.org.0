Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A73186D29
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 15:34:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IgVnxhroN97tzZm63A1PCdL2U3PWP3uNB2AE8uTbpQM=; b=q6kkfeGNu9Qn3ihBrspXkDa1N
	xJnzmxyeIWB1OFkiu9qdc67D12i5kl2gSrG+iFL26dzq92yxjgqi8dhv8mu8wj00zjRoNpf1UX0U4
	sKFt2NWS8iyGGiZKYiB5+LE8/iWd4NjSPsWhCZ6tvC6tcLuRnkT4qrWfpeT5tbuuce/+vRRWkWIUM
	baT/lfkymvgrV4ezZZ4ewJZANHLJHgx6DYsi89OlvXkDwK9C6v0nixIdumclBv1Hvjf5ZhVm4F05K
	5FieWI9hJ98e/uj0018HAcrcOtT0D5groC9v65pvdWqpHSHiwZAy7EkZJ52SusEkuoku+CUtiuYgV
	Te8E50RpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqp8-0006Yz-Hw; Mon, 16 Mar 2020 14:34:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqog-0006FD-2J
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 14:34:08 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 413582051A;
 Mon, 16 Mar 2020 14:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584369244;
 bh=uMF3QsbME7AEQLIGa4it4F+7gI7S9iWWCO7lcyAp5HI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=HSv8Cm2r8XV3m93SmiqNJ1nWMcnKG4gI9XG3V1wG7Uu2Y+srI21d/OIJjkZVLWEpV
 1Xl0M+gKXvEHXXk0QqmN1mqGibRmMDE9cC8YtW+9hmABBCA+MDItqQdyAfZOevIbeH
 SIloO7iYnJQBr/xMLhYAaCoVGd06DQFEx4VLvzA8=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jDqoc-00D655-Fc; Mon, 16 Mar 2020 14:34:02 +0000
MIME-Version: 1.0
Date: Mon, 16 Mar 2020 14:34:02 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
Subject: Re: [PATCH v4 1/3] irqchip: xilinx: Add support for multiple instances
In-Reply-To: <20200316135447.30162-2-mubin.usman.sayyed@xilinx.com>
References: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
 <20200316135447.30162-2-mubin.usman.sayyed@xilinx.com>
Message-ID: <be19cec70f79e10483bd8da592b5a924@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mubin.usman.sayyed@xilinx.com, tglx@linutronix.de,
 jason@lakedaemon.net, michals@xilinx.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, sivadur@xilinx.com, anirudh@xilinx.com,
 anirudha.sarangi@xilinx.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_073406_212261_B8100B58 
X-CRM114-Status: GOOD (  27.50  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, Anirudha Sarangi <anirudha.sarangi@xilinx.com>,
 sivadur@xilinx.com, linux-kernel@vger.kernel.org, michals@xilinx.com,
 anirudh@xilinx.com, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-03-16 13:54, Mubin Usman Sayyed wrote:
> From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> 
> Added support for cascaded interrupt controllers.
> 
> Following cascaded configurations have been tested,
> 
> - peripheral->xilinx-intc->xilinx-intc->gic->Cortexa53 processor
>   on zcu102 board
> - peripheral->xilinx-intc->xilinx-intc->microblaze processor
>   on kcu105 board
> 
> Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> ---
> Changes for v4:
> 	- Fixed review comments from Thomas - updated commit
> 	  message, variable declarations changed to reverse
> 	  fir tree and cleaned up some code.
> 
> Changes for v3:
> 	- Modified prototype of xintc_write/xintc_read
> 	- Fixed review comments regarding indentation/variable
> 	  names, used BIT
> 	- Modified xintc_get_irq_local to return 0
> 	  in case of failure/no pending interrupts
> 	- Fixed return type of xintc_read
> 	- Reverted changes related to device name and
> 	  kept intc_dev as static
> 
> Changes for v2:
>         - Removed write_fn/read_fn hooks, used xintc_write/
> 	  xintc_read directly
>         - Moved primary_intc declaration after xintc_irq_chip
> ---
>  drivers/irqchip/irq-xilinx-intc.c | 121 ++++++++++++++++++------------
>  1 file changed, 71 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-xilinx-intc.c
> b/drivers/irqchip/irq-xilinx-intc.c
> index e3043ded8973..65b77720ef2e 100644
> --- a/drivers/irqchip/irq-xilinx-intc.c
> +++ b/drivers/irqchip/irq-xilinx-intc.c
> @@ -38,29 +38,32 @@ struct xintc_irq_chip {
>  	void		__iomem *base;
>  	struct		irq_domain *root_domain;
>  	u32		intr_mask;
> +	struct		irq_chip *intc_dev;

What is the need for this pointer? As far as I can see, all the 
interrupts
have the same callbacks, and even then, there should be no need to keep
a pointer to that.

> +	u32		nr_irq;
>  };
> 
> -static struct xintc_irq_chip *xintc_irqc;
> +static struct xintc_irq_chip *primary_intc;
> 
> -static void xintc_write(int reg, u32 data)
> +static void xintc_write(struct xintc_irq_chip *irqc, int reg, u32 
> data)
>  {
>  	if (static_branch_unlikely(&xintc_is_be))
> -		iowrite32be(data, xintc_irqc->base + reg);
> +		iowrite32be(data, irqc->base + reg);
>  	else
> -		iowrite32(data, xintc_irqc->base + reg);
> +		iowrite32(data, irqc->base + reg);
>  }
> 
> -static unsigned int xintc_read(int reg)
> +static u32 xintc_read(struct xintc_irq_chip *irqc, int reg)
>  {
>  	if (static_branch_unlikely(&xintc_is_be))
> -		return ioread32be(xintc_irqc->base + reg);
> +		return ioread32be(irqc->base + reg);
>  	else
> -		return ioread32(xintc_irqc->base + reg);
> +		return ioread32(irqc->base + reg);
>  }
> 
>  static void intc_enable_or_unmask(struct irq_data *d)
>  {
> -	unsigned long mask = 1 << d->hwirq;
> +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> +	unsigned long mask = BIT(d->hwirq);
> 
>  	pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);
> 
> @@ -69,30 +72,35 @@ static void intc_enable_or_unmask(struct irq_data 
> *d)
>  	 * acks the irq before calling the interrupt handler
>  	 */
>  	if (irqd_is_level_type(d))
> -		xintc_write(IAR, mask);
> +		xintc_write(irqc, IAR, mask);
> 
> -	xintc_write(SIE, mask);
> +	xintc_write(irqc, SIE, mask);
>  }
> 
>  static void intc_disable_or_mask(struct irq_data *d)
>  {
> +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> +
>  	pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
> -	xintc_write(CIE, 1 << d->hwirq);
> +	xintc_write(irqc, CIE, BIT(d->hwirq));
>  }
> 
>  static void intc_ack(struct irq_data *d)
>  {
> +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> +
>  	pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
> -	xintc_write(IAR, 1 << d->hwirq);
> +	xintc_write(irqc, IAR, BIT(d->hwirq));
>  }
> 
>  static void intc_mask_ack(struct irq_data *d)
>  {
> -	unsigned long mask = 1 << d->hwirq;
> +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
> +	unsigned long mask = BIT(d->hwirq);
> 
>  	pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
> -	xintc_write(CIE, mask);
> -	xintc_write(IAR, mask);
> +	xintc_write(irqc, CIE, mask);
> +	xintc_write(irqc, IAR, mask);
>  }
> 
>  static struct irq_chip intc_dev = {
> @@ -103,13 +111,28 @@ static struct irq_chip intc_dev = {
>  	.irq_mask_ack = intc_mask_ack,
>  };
> 
> +static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
> +{
> +	unsigned int irq = 0;
> +	u32 hwirq;
> +
> +	hwirq = xintc_read(irqc, IVR);
> +	if (hwirq != -1U)
> +		irq = irq_find_mapping(irqc->root_domain, hwirq);
> +
> +	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> +
> +	return irq;
> +}
> +
>  unsigned int xintc_get_irq(void)
>  {
> -	unsigned int hwirq, irq = -1;
> +	unsigned int irq = -1;
> +	u32 hwirq;
> 
> -	hwirq = xintc_read(IVR);
> +	hwirq = xintc_read(primary_intc, IVR);
>  	if (hwirq != -1U)
> -		irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
> +		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
> 
>  	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> 
> @@ -118,15 +141,18 @@ unsigned int xintc_get_irq(void)
> 
>  static int xintc_map(struct irq_domain *d, unsigned int irq,
> irq_hw_number_t hw)
>  {
> -	if (xintc_irqc->intr_mask & (1 << hw)) {
> -		irq_set_chip_and_handler_name(irq, &intc_dev,
> -						handle_edge_irq, "edge");
> +	struct xintc_irq_chip *irqc = d->host_data;
> +
> +	if (irqc->intr_mask & BIT(hw)) {
> +		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
> +					      handle_edge_irq, "edge");
>  		irq_clear_status_flags(irq, IRQ_LEVEL);
>  	} else {
> -		irq_set_chip_and_handler_name(irq, &intc_dev,
> -						handle_level_irq, "level");
> +		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
> +					      handle_level_irq, "level");
>  		irq_set_status_flags(irq, IRQ_LEVEL);
>  	}
> +	irq_set_chip_data(irq, irqc);
>  	return 0;
>  }
> 
> @@ -138,12 +164,14 @@ static const struct irq_domain_ops
> xintc_irq_domain_ops = {
>  static void xil_intc_irq_handler(struct irq_desc *desc)
>  {
>  	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct xintc_irq_chip *irqc;
>  	u32 pending;
> 
> +	irqc = irq_data_get_irq_handler_data(&desc->irq_data);
>  	chained_irq_enter(chip, desc);
>  	do {
> -		pending = xintc_get_irq();
> -		if (pending == -1U)
> +		pending = xintc_get_irq_local(irqc);
> +		if (pending == 0U)

nit: I don't think we need to consider the sign of zero.

>  			break;
>  		generic_handle_irq(pending);
>  	} while (true);
> @@ -153,28 +181,19 @@ static void xil_intc_irq_handler(struct irq_desc 
> *desc)
>  static int __init xilinx_intc_of_init(struct device_node *intc,
>  					     struct device_node *parent)
>  {
> -	u32 nr_irq;
> -	int ret, irq;
>  	struct xintc_irq_chip *irqc;
> -
> -	if (xintc_irqc) {
> -		pr_err("irq-xilinx: Multiple instances aren't supported\n");
> -		return -EINVAL;
> -	}
> +	int ret, irq;
> 
>  	irqc = kzalloc(sizeof(*irqc), GFP_KERNEL);
>  	if (!irqc)
>  		return -ENOMEM;
> -
> -	xintc_irqc = irqc;
> -
>  	irqc->base = of_iomap(intc, 0);
>  	BUG_ON(!irqc->base);
> 
> -	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &nr_irq);
> +	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", 
> &irqc->nr_irq);
>  	if (ret < 0) {
>  		pr_err("irq-xilinx: unable to read xlnx,num-intr-inputs\n");
> -		goto err_alloc;
> +		goto error;
>  	}
> 
>  	ret = of_property_read_u32(intc, "xlnx,kind-of-intr", 
> &irqc->intr_mask);
> @@ -183,34 +202,35 @@ static int __init xilinx_intc_of_init(struct
> device_node *intc,
>  		irqc->intr_mask = 0;
>  	}
> 
> -	if (irqc->intr_mask >> nr_irq)
> +	if (irqc->intr_mask >> irqc->nr_irq)
>  		pr_warn("irq-xilinx: mismatch in kind-of-intr param\n");
> 
>  	pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
> -		intc, nr_irq, irqc->intr_mask);
> +		intc, irqc->nr_irq, irqc->intr_mask);
> 
> +	irqc->intc_dev = &intc_dev;

Based on the above, this should go.

> 
>  	/*
>  	 * Disable all external interrupts until they are
>  	 * explicity requested.
>  	 */
> -	xintc_write(IER, 0);
> +	xintc_write(irqc, IER, 0);
> 
>  	/* Acknowledge any pending interrupts just in case. */
> -	xintc_write(IAR, 0xffffffff);
> +	xintc_write(irqc, IAR, 0xffffffff);
> 
>  	/* Turn on the Master Enable. */
> -	xintc_write(MER, MER_HIE | MER_ME);
> -	if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
> +	xintc_write(irqc, MER, MER_HIE | MER_ME);
> +	if (xintc_read(irqc, MER) != (MER_HIE | MER_ME)) {
>  		static_branch_enable(&xintc_is_be);
> -		xintc_write(MER, MER_HIE | MER_ME);
> +		xintc_write(irqc, MER, MER_HIE | MER_ME);
>  	}
> 
> -	irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
> +	irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
>  						  &xintc_irq_domain_ops, irqc);
>  	if (!irqc->root_domain) {
>  		pr_err("irq-xilinx: Unable to create IRQ domain\n");
> -		goto err_alloc;
> +		goto error;
>  	}
> 
>  	if (parent) {
> @@ -222,16 +242,17 @@ static int __init xilinx_intc_of_init(struct
> device_node *intc,
>  		} else {
>  			pr_err("irq-xilinx: interrupts property not in DT\n");
>  			ret = -EINVAL;
> -			goto err_alloc;
> +			goto error;
>  		}
>  	} else {
> -		irq_set_default_host(irqc->root_domain);
> +		primary_intc = irqc;
> +		irq_set_default_host(primary_intc->root_domain);

Do you still need this irq_set_default_host() horror? I thought 
microblaze
was fully DT-ified and didn't need this. The use of a non-legacy domain 
tends
to confirm this.

>  	}
> 
>  	return 0;
> 
> -err_alloc:
> -	xintc_irqc = NULL;
> +error:
> +	iounmap(irqc->base);
>  	kfree(irqc);
>  	return ret;

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
