Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5193915BE33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:02:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDm88uYuOu2VQrooxPKNR9xJHdJj5VaIHVmeOh277YY=; b=emPrG0+vsBeSa7
	Ovq0dIoJ4OAJcZjrYjQqX9TpK6Z3gMNrWlfQYBpm9a9pgJ60mv1SOtLmi5rNOZMGKXWQ+12kLqTpV
	b1YtsXQMsT4XRqe1ZNaq+ftx4X6+De0ujv9xWpucGSnruKBsQKvN7gzGf/nChBSosde2EPdjCLZGQ
	S3anXe0Mri+W6pUgw3FQM6/xnDjETwlpq5LsOR0iPg1XdmOx9sZfvNJs0DvA/NPXr4UJj/NvuoHyk
	UaVTC23WnLNQZ0OEUeIXUdd/3mIxhBf06oUBBvDov4NjWbHZRzcohLAwvxb+zegs5QyKl7WnIu7b3
	1obPlIjfjF/JWigcdvPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DC8-0003vz-RW; Thu, 13 Feb 2020 12:02:13 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DBO-0003Uq-Bl
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:01:28 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1j2DBK-0000AB-2E; Thu, 13 Feb 2020 13:01:22 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id B69E71013A6; Thu, 13 Feb 2020 13:01:21 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>, jason@lakedaemon.net,
 maz@kernel.org, michal.simek@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3] irqchip: xilinx: Add support for multiple instances
In-Reply-To: <20200211190303.7991-1-mubin.usman.sayyed@xilinx.com>
References: <20200211190303.7991-1-mubin.usman.sayyed@xilinx.com>
Date: Thu, 13 Feb 2020 13:01:21 +0100
Message-ID: <871rqy3dda.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_040126_558908_410DD62C 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>, anirudha.sarangi@xilinx.com,
 siva.durga.paladugu@xilinx.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mubin,

Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com> writes:

> From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
>
> This patch adds support for multiple instances of

git grep 'This patch' Documentation/process/submitting-patches.rst

> xilinx interrupt controller. Below configurations are
> supported by driver,
>
> - peripheral->xilinx-intc->xilinx-intc->gic
> - peripheral->xilinx-intc->xilinx-intc

This is really not much of an explanation.

> Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>

This Signed-off-by chain is incorrect. See chapter 11 and 12 in the same
document.

> @@ -38,29 +38,32 @@ struct xintc_irq_chip {
>  	void		__iomem *base;
>  	struct		irq_domain *root_domain;
>  	u32		intr_mask;
> +	struct		irq_chip *intc_dev;
> +	u32		nr_irq;
>  };
>  
> -static struct xintc_irq_chip *xintc_irqc;
> +static struct xintc_irq_chip *primary_intc;
>  
> -static void xintc_write(int reg, u32 data)
> +static void xintc_write(struct xintc_irq_chip *irqc, int reg, u32 data)
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
> +	unsigned long mask = BIT(d->hwirq);
> +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);

Please order your local variables in reverse fir tree order:

	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
        unsigned long mask = BIT(d->hwirq);

which is the preferred coding style in this subsystem and way simpler to
read.

>  static void intc_mask_ack(struct irq_data *d)
>  {
> -	unsigned long mask = 1 << d->hwirq;
> +	unsigned long mask = BIT(d->hwirq);
> +	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);

Ditto.
  
>  	pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
> -	xintc_write(CIE, mask);
> -	xintc_write(IAR, mask);
> +	xintc_write(irqc, CIE, mask);
> +	xintc_write(irqc, IAR, mask);
>  }
> +static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
> +{
> +	u32 hwirq;
> +	unsigned int irq = 0;

Same.

> +	hwirq = xintc_read(irqc, IVR);
> +	if (hwirq != -1U)
> +		irq = irq_find_mapping(irqc->root_domain, hwirq);
> +
> +	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);

Are these pr_debugs all over the please really required? I can
understand that you use them for development, but are they useful once
the stuff works?

> +	return irq;
> +}
> +
>  unsigned int xintc_get_irq(void)
>  {
> -	unsigned int hwirq, irq = -1;
> +	u32 hwirq;
> +	unsigned int irq = -1;

See above.
 
> -	hwirq = xintc_read(IVR);
> +	hwirq = xintc_read(primary_intc, IVR);
>  	if (hwirq != -1U)
> -		irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
> +		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
>  
>  	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
>  
> @@ -138,12 +164,14 @@ static const struct irq_domain_ops xintc_irq_domain_ops = {
>  static void xil_intc_irq_handler(struct irq_desc *desc)
>  {
>  	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct xintc_irq_chip *irqc =
> +		irq_data_get_irq_handler_data(&desc->irq_data);

Please avoid these ugly line breaks and put the initialization of the
variable in to the code below the declaration.

>  	/* Turn on the Master Enable. */
> -	xintc_write(MER, MER_HIE | MER_ME);
> -	if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
> +	xintc_write(irqc, MER, MER_HIE | MER_ME);
> +	if (!(xintc_read(irqc, MER) & (MER_HIE | MER_ME))) {
>  		static_branch_enable(&xintc_is_be);

I see it's existing logic, but this lacks a comment how it's determined
that xintc is big endian. Looks like some weird "write works?"
probing. Why?

> +	xintc_write(irqc, MER, MER_HIE | MER_ME);

So this writes MER_HIE | MER_ME into MER

> +	if (!(xintc_read(irqc, MER) & (MER_HIE | MER_ME))) {

but this checks just whether ONE of the bits is set. Shouldn't it check
for MER == (MER_HIE | MER_ME), i.e. read back what was written?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
