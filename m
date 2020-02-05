Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356401535A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 17:53:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0Cx9r0pD6NuPOrK75+HFoJ6Ky8yxlvIV2T2GAcC+b9M=; b=kg6ju6liNvzA/VfH3tZIVspwO
	1cbp4W22FRzHIc797FFPH5kx8KweJ++Lc+eW7KERb2Ee8ZI0aT9WlATU3Sp8jmekjWzmEOcYj6Hma
	/oQWU5EDybLes/bao9vZQvq/jayRQ+hb2Ku/r40IwBgt59IjD5ZBCxqwzz/hiu36jDpqAH9hibH7Q
	HCJ0sUl2UPsy7F6Av6MfsVgyl/J9SXpWFKsjDDTsjPLUPrwaMjWUTH5T+FV6mCTmhjTdgXx+thC8U
	pkScS5R1U7rnz2beNOvaNQAs0PC8mqXLIyVmbMZWyjupfhCS4PpIj6PkeyZVZIGaaQfAoP88DaLie
	aoYis0P1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izNvQ-0003XM-Ow; Wed, 05 Feb 2020 16:53:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izNvI-0003Wx-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 16:53:10 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A4F020674;
 Wed,  5 Feb 2020 16:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580921588;
 bh=4cWbwj35Yp2/oQgyw/zaU8922FboviBEiLI82FkjhSs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=STLAoMIRYUltMGypPs5kpEQWqZMvZtijrZjtFtNxTONLOkbYzv6L+4sdAaMUfsetc
 yE2VH7Yz0oBs/SFeJpNDVUJ+NcEBvjohbvLdCexcNq3SGfsv/c2LpzdEedjsx/EJEg
 Zj/vtKCOwG0QPpLa+y6Wcqxz0ixm5q0x6kPostqs=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izNvG-003AXo-54; Wed, 05 Feb 2020 16:53:06 +0000
MIME-Version: 1.0
Date: Wed, 05 Feb 2020 16:53:06 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
In-Reply-To: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
Message-ID: <b8e7b9120bc6cd306bda3347cde117ff@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: mubin.usman.sayyed@xilinx.com, tglx@linutronix.de,
 jason@lakedaemon.net, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 siva.durga.paladugu@xilinx.com, anirudha.sarangi@xilinx.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_085308_941341_15013958 
X-CRM114-Status: GOOD (  27.55  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jason@lakedaemon.net, anirudha.sarangi@xilinx.com,
 linux-kernel@vger.kernel.org, michal.simek@xilinx.com, tglx@linutronix.de,
 siva.durga.paladugu@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-05 14:05, Mubin Usman Sayyed wrote:
> From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> 
> This patch adds support for multiple instances of
> xilinx interrupt controller. Below configurations are
> supported by driver,
> 
> - peripheral->xilinx-intc->xilinx-intc->gic
> - peripheral->xilinx-intc->xilinx-intc
> 
> Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> ---
> Changes for v2:
>         - Removed write_fn/read_fn hooks, used xintc_write/
>           xintc_read directly
>         - Moved primary_intc declaration after xintc_irq_chip
> ---
>  drivers/irqchip/irq-xilinx-intc.c | 121 
> +++++++++++++++++++++++---------------
>  1 file changed, 73 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-xilinx-intc.c
> b/drivers/irqchip/irq-xilinx-intc.c
> index e3043de..14cb630 100644
> --- a/drivers/irqchip/irq-xilinx-intc.c
> +++ b/drivers/irqchip/irq-xilinx-intc.c
> @@ -38,29 +38,32 @@ struct xintc_irq_chip {
>         void            __iomem *base;
>         struct          irq_domain *root_domain;
>         u32             intr_mask;
> +       struct                  irq_chip *intc_dev;
> +       u32                             nr_irq;
>  };
> 
> -static struct xintc_irq_chip *xintc_irqc;
> +static struct xintc_irq_chip *primary_intc;
> 
> -static void xintc_write(int reg, u32 data)
> +static void xintc_write(void __iomem *addr, u32 data)
>  {
>         if (static_branch_unlikely(&xintc_is_be))
> -               iowrite32be(data, xintc_irqc->base + reg);
> +               iowrite32be(data, addr);
>         else
> -               iowrite32(data, xintc_irqc->base + reg);
> +               iowrite32(data, addr);
>  }
> 
> -static unsigned int xintc_read(int reg)
> +static unsigned int xintc_read(void __iomem *addr)

Since you are changing this, please change the return value to reflect
the size of what you're returning (u32 instead of unsigned int).

>  {
>         if (static_branch_unlikely(&xintc_is_be))
> -               return ioread32be(xintc_irqc->base + reg);
> +               return ioread32be(addr);
>         else
> -               return ioread32(xintc_irqc->base + reg);
> +               return ioread32(addr);
>  }
> 
>  static void intc_enable_or_unmask(struct irq_data *d)
>  {
>         unsigned long mask = 1 << d->hwirq;
> +       struct xintc_irq_chip *local_intc = 
> irq_data_get_irq_chip_data(d);
> 
>         pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);
> 
> @@ -69,47 +72,57 @@ static void intc_enable_or_unmask(struct irq_data 
> *d)
>          * acks the irq before calling the interrupt handler
>          */
>         if (irqd_is_level_type(d))
> -               xintc_write(IAR, mask);
> +               xintc_write(local_intc->base + IAR, mask);
> 
> -       xintc_write(SIE, mask);
> +       xintc_write(local_intc->base + SIE, mask);
>  }
> 
>  static void intc_disable_or_mask(struct irq_data *d)
>  {
> +       struct xintc_irq_chip *local_intc = 
> irq_data_get_irq_chip_data(d);
> +
>         pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
> -       xintc_write(CIE, 1 << d->hwirq);
> +       xintc_write(local_intc->base + CIE, 1 << d->hwirq);
>  }
> 
>  static void intc_ack(struct irq_data *d)
>  {
> +       struct xintc_irq_chip *local_intc = 
> irq_data_get_irq_chip_data(d);
> +
>         pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
> -       xintc_write(IAR, 1 << d->hwirq);
> +       xintc_write(local_intc->base + IAR, 1 << d->hwirq);
>  }
> 
>  static void intc_mask_ack(struct irq_data *d)
>  {
>         unsigned long mask = 1 << d->hwirq;
> +       struct xintc_irq_chip *local_intc = 
> irq_data_get_irq_chip_data(d);
> 
>         pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
> -       xintc_write(CIE, mask);
> -       xintc_write(IAR, mask);
> +       xintc_write(local_intc->base + CIE, mask);
> +       xintc_write(local_intc->base + IAR, mask);
>  }
> 
> -static struct irq_chip intc_dev = {
> -       .name = "Xilinx INTC",
> -       .irq_unmask = intc_enable_or_unmask,
> -       .irq_mask = intc_disable_or_mask,
> -       .irq_ack = intc_ack,
> -       .irq_mask_ack = intc_mask_ack,
> -};
> +static unsigned int xintc_get_irq_local(struct xintc_irq_chip 
> *local_intc)
> +{
> +       int hwirq, irq = -1;

Type consistency for hwirq.

> +
> +       hwirq = xintc_read(local_intc->base + IVR);
> +       if (hwirq != -1U)
> +               irq = irq_find_mapping(local_intc->root_domain, hwirq);
> +
> +       pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> +
> +       return irq;

That now gives you both -1 and 0 for error values. Please stick with 0.

> +}
> 
>  unsigned int xintc_get_irq(void)
>  {
> -       unsigned int hwirq, irq = -1;
> +       int hwirq, irq = -1;
> 
> -       hwirq = xintc_read(IVR);
> +       hwirq = xintc_read(primary_intc->base + IVR);
>         if (hwirq != -1U)
> -               irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
> +               irq = irq_find_mapping(primary_intc->root_domain, 
> hwirq);
> 
>         pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);

I have the ugly feeling I'm reading the same code twice... Surely you 
can
make these two functions common code.

> 
> @@ -118,15 +131,18 @@ unsigned int xintc_get_irq(void)
> 
>  static int xintc_map(struct irq_domain *d, unsigned int irq,
> irq_hw_number_t hw)
>  {
> -       if (xintc_irqc->intr_mask & (1 << hw)) {
> -               irq_set_chip_and_handler_name(irq, &intc_dev,
> +       struct xintc_irq_chip *local_intc = d->host_data;
> +
> +       if (local_intc->intr_mask & (1 << hw)) {

BIT(hw)

> +               irq_set_chip_and_handler_name(irq, 
> local_intc->intc_dev,
>                                                 handle_edge_irq, 
> "edge");
>                 irq_clear_status_flags(irq, IRQ_LEVEL);
>         } else {
> -               irq_set_chip_and_handler_name(irq, &intc_dev,
> +               irq_set_chip_and_handler_name(irq, 
> local_intc->intc_dev,
>                                                 handle_level_irq, 
> "level");
>                 irq_set_status_flags(irq, IRQ_LEVEL);
>         }
> +       irq_set_chip_data(irq, local_intc);
>         return 0;
>  }
> 
> @@ -138,11 +154,13 @@ static const struct irq_domain_ops
> xintc_irq_domain_ops = {
>  static void xil_intc_irq_handler(struct irq_desc *desc)
>  {
>         struct irq_chip *chip = irq_desc_get_chip(desc);
> +       struct xintc_irq_chip *local_intc =
> +               irq_data_get_irq_handler_data(&desc->irq_data);
>         u32 pending;
> 
>         chained_irq_enter(chip, desc);
>         do {
> -               pending = xintc_get_irq();
> +               pending = xintc_get_irq_local(local_intc);
>                 if (pending == -1U)
>                         break;
>                 generic_handle_irq(pending);
> @@ -153,28 +171,20 @@ static void xil_intc_irq_handler(struct irq_desc 
> *desc)
>  static int __init xilinx_intc_of_init(struct device_node *intc,
>                                              struct device_node 
> *parent)
>  {
> -       u32 nr_irq;
>         int ret, irq;
>         struct xintc_irq_chip *irqc;
> -
> -       if (xintc_irqc) {
> -               pr_err("irq-xilinx: Multiple instances aren't 
> supported\n");
> -               return -EINVAL;
> -       }
> +       struct irq_chip *intc_dev;
> 
>         irqc = kzalloc(sizeof(*irqc), GFP_KERNEL);
>         if (!irqc)
>                 return -ENOMEM;
> -
> -       xintc_irqc = irqc;
> -
>         irqc->base = of_iomap(intc, 0);
>         BUG_ON(!irqc->base);
> 
> -       ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", 
> &nr_irq);
> +       ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", 
> &irqc->nr_irq);
>         if (ret < 0) {
>                 pr_err("irq-xilinx: unable to read 
> xlnx,num-intr-inputs\n");
> -               goto err_alloc;
> +               goto error;
>         }
> 
>         ret = of_property_read_u32(intc, "xlnx,kind-of-intr", 
> &irqc->intr_mask);
> @@ -183,30 +193,42 @@ static int __init xilinx_intc_of_init(struct
> device_node *intc,
>                 irqc->intr_mask = 0;
>         }
> 
> -       if (irqc->intr_mask >> nr_irq)
> +       if (irqc->intr_mask >> irqc->nr_irq)
>                 pr_warn("irq-xilinx: mismatch in kind-of-intr 
> param\n");
> 
>         pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
> -               intc, nr_irq, irqc->intr_mask);
> +               intc, irqc->nr_irq, irqc->intr_mask);
> +
> +       intc_dev = kzalloc(sizeof(*intc_dev), GFP_KERNEL);
> +       if (!intc_dev) {
> +               ret = -ENOMEM;
> +               goto error;
> +       }
> 
> +       intc_dev->name = intc->full_name;

No. The world doesn't need to see the OF path of your interrupt 
controller in /proc/cpuinfo.
The name that was there before was perfectly descriptive, please stick 
to it.

> +       intc_dev->irq_unmask = intc_enable_or_unmask,
> +       intc_dev->irq_mask = intc_disable_or_mask,
> +       intc_dev->irq_ack = intc_ack,
> +       intc_dev->irq_mask_ack = intc_mask_ack,

And this structure should stay static, as it was before.

> +       irqc->intc_dev = intc_dev;
> 
>         /*
>          * Disable all external interrupts until they are
>          * explicity requested.
>          */
> -       xintc_write(IER, 0);
> +       xintc_write(irqc->base + IER, 0);
> 
>         /* Acknowledge any pending interrupts just in case. */
> -       xintc_write(IAR, 0xffffffff);
> +       xintc_write(irqc->base + IAR, 0xffffffff);
> 
>         /* Turn on the Master Enable. */
> -       xintc_write(MER, MER_HIE | MER_ME);
> -       if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
> +       xintc_write(irqc->base + MER, MER_HIE | MER_ME);
> +       if (!(xintc_read(irqc->base + MER) & (MER_HIE | MER_ME))) {
>                 static_branch_enable(&xintc_is_be);
> -               xintc_write(MER, MER_HIE | MER_ME);
> +               xintc_write(irqc->base + MER, MER_HIE | MER_ME);
>         }
> 
> -       irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
> +       irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
>                                                   
> &xintc_irq_domain_ops, irqc);
>         if (!irqc->root_domain) {
>                 pr_err("irq-xilinx: Unable to create IRQ domain\n");
> @@ -225,13 +247,16 @@ static int __init xilinx_intc_of_init(struct
> device_node *intc,
>                         goto err_alloc;
>                 }
>         } else {
> -               irq_set_default_host(irqc->root_domain);
> +               primary_intc = irqc;
> +               irq_set_default_host(primary_intc->root_domain);
>         }
> 
>         return 0;
> 
>  err_alloc:
> -       xintc_irqc = NULL;
> +       kfree(intc_dev);
> +error:
> +       iounmap(irqc->base);
>         kfree(irqc);
>         return ret;
> 
> --
> 2.7.4
> 
> This email and any attachments are intended for the sole use of the
> named recipient(s) and contain(s) confidential information that may be
> proprietary, privileged or copyrighted under applicable law. If you
> are not the intended recipient, do not read, copy, or forward this
> email message or any attachments. Delete this email message and any
> attachments immediately.

Please tell your employer to fix their email server.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
