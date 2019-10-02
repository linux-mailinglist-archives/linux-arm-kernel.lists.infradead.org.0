Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEE7C8957
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:13:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bcBW+xysAGEC25kcEXyycRuMbFe/bqGM0KnO3phR+bk=; b=DX5hg0kR+/b9nG
	yxtaL+reXV3dHmRs7yfArLlqWsg/q+KfxGuxPO3l3+T+EDgxbJ03Zn+7zNkQSRF4ZY3/qzrpekIv1
	Tg+G+49b1KW/I9FAuprqPtpI/amWmtIkP577Jr71+eMpT+02hqcXFBmOMH2TipQPU83di06DGu2I0
	riHsS+mTi5gVzbwxlzzcuIQBJLbJqD+LpzBsdF35wLVtY5+lyqlgpwpyv1UDwwCKBbu867jiHF5pb
	0Uy98L4DJCUibPaMsZ92tCABQQbeJ8Ry11ZYZFO1bVA/gjueeQXrTkuhq/vX9B+lYr6UyXZyoWwWH
	LpK81lNqw/k1JJ+woLww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeRC-0001q7-TZ; Wed, 02 Oct 2019 13:13:02 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeR1-0001or-Hb
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:12:53 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iFeQz-0007xK-Pn; Wed, 02 Oct 2019 15:12:49 +0200
Date: Wed, 2 Oct 2019 14:12:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [RFC PATCH 2/2] irqchip/ti-sci-intr: Add support for INTR being
 a parent to INTR
Message-ID: <20191002141248.213c997a@why>
In-Reply-To: <20190923042405.26064-3-lokeshvutla@ti.com>
References: <20190923042405.26064-1-lokeshvutla@ti.com>
 <20190923042405.26064-3-lokeshvutla@ti.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: lokeshvutla@ti.com, linux-arm-kernel@lists.infradead.org,
 nm@ti.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_061251_730517_A48C1F97 
X-CRM114-Status: GOOD (  27.92  )
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
Cc: Nishanth Menon <nm@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 23 Sep 2019 09:54:05 +0530
Lokesh Vutla <lokeshvutla@ti.com> wrote:

> Driver assumes that Interrupt parent to Interrupt router is always GIC.
> This is not true always and a Interrupt Router can be a parent to
> Interrupt Router. Update the driver to detect the parent and request the
> parent irqs accordingly.
> 
> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
> ---
>  drivers/irqchip/irq-ti-sci-intr.c | 137 ++++++++++++++++++------------
>  1 file changed, 82 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-ti-sci-intr.c b/drivers/irqchip/irq-ti-sci-intr.c
> index 59d51a20bbd8..1d8aaa871798 100644
> --- a/drivers/irqchip/irq-ti-sci-intr.c
> +++ b/drivers/irqchip/irq-ti-sci-intr.c
> @@ -17,29 +17,18 @@
>  #include <linux/of_irq.h>
>  #include <linux/soc/ti/ti_sci_protocol.h>
>  
> -#define TI_SCI_DEV_ID_MASK	0xffff
> -#define TI_SCI_DEV_ID_SHIFT	16
> -#define TI_SCI_IRQ_ID_MASK	0xffff
> -#define TI_SCI_IRQ_ID_SHIFT	0
> -#define HWIRQ_TO_DEVID(hwirq)	(((hwirq) >> (TI_SCI_DEV_ID_SHIFT)) & \
> -				 (TI_SCI_DEV_ID_MASK))
> -#define HWIRQ_TO_IRQID(hwirq)	((hwirq) & (TI_SCI_IRQ_ID_MASK))
> -#define TO_HWIRQ(dev, index)	((((dev) & TI_SCI_DEV_ID_MASK) << \
> -				 TI_SCI_DEV_ID_SHIFT) | \
> -				((index) & TI_SCI_IRQ_ID_MASK))
> -
>  /**
>   * struct ti_sci_intr_irq_domain - Structure representing a TISCI based
>   *				   Interrupt Router IRQ domain.
>   * @sci:	Pointer to TISCI handle
> - * @dst_irq:	TISCI resource pointer representing GIC irq controller.
> - * @dst_id:	TISCI device ID of the GIC irq controller.
> + * @out_irqs:	TISCI resource pointer representing INTR irqs.
> + * @pdev:	Pointer to platform device.
>   * @type:	Specifies the trigger type supported by this Interrupt Router
>   */
>  struct ti_sci_intr_irq_domain {
>  	const struct ti_sci_handle *sci;
> -	struct ti_sci_resource *dst_irq;
> -	u32 dst_id;
> +	struct ti_sci_resource *out_irqs;
> +	struct platform_device *pdev;
>  	u32 type;
>  };
>  
> @@ -70,15 +59,43 @@ static int ti_sci_intr_irq_domain_translate(struct irq_domain *domain,
>  {
>  	struct ti_sci_intr_irq_domain *intr = domain->host_data;
>  
> -	if (fwspec->param_count != 2)
> +	if (fwspec->param_count != 1)
>  		return -EINVAL;

As I said in reply to the first patch, this breaks badly. Except that
this time this is a new kernel on an old DT.

>  
> -	*hwirq = TO_HWIRQ(fwspec->param[0], fwspec->param[1]);
> +	*hwirq = fwspec->param[0];
>  	*type = intr->type;
>  
>  	return 0;
>  }
>  
> +static int ti_sci_intr_xlate_irq(struct ti_sci_intr_irq_domain *intr,
> +				 u32 irq, bool to_parent_hwirq)
> +{
> +	struct device_node *np = dev_of_node(&intr->pdev->dev);
> +	u32 base, pbase, size, len;
> +	const __be32 *range;
> +
> +	range = of_get_property(np, "interrupt-ranges", &len);
> +	if (!range)
> +		return irq;
> +
> +	for (len /= sizeof(*range); len >= 3; len -= 3) {
> +		base = be32_to_cpu(*range++);
> +		pbase = be32_to_cpu(*range++);
> +		size = be32_to_cpu(*range++);
> +
> +		if (to_parent_hwirq) {
> +			if (base <= irq && irq < base + size)
> +				return irq - base + pbase;
> +		} else {
> +			if (pbase <= irq && irq < pbase + size)
> +				return irq - pbase + base;
> +		}

Using the same function to compute two different things is really ugly.
It'd be nicer if you had xlate_hwirq_to_parent() and
xlate_parent_to_hwirq(), each one doing their job.

Also, it isn't clear to me why there is only a single tuple in the
interrupt-ranges property. Is it a guarantee that you'll never have
multiple ranges?

> +	}
> +
> +	return -ENOENT;
> +}
> +
>  /**
>   * ti_sci_intr_irq_domain_free() - Free the specified IRQs from the domain.
>   * @domain:	Domain to which the irqs belong
> @@ -90,56 +107,72 @@ static void ti_sci_intr_irq_domain_free(struct irq_domain *domain,
>  {
>  	struct ti_sci_intr_irq_domain *intr = domain->host_data;
>  	struct irq_data *data, *parent_data;
> -	u16 dev_id, irq_index;
> +	int out_irq;
>  
>  	parent_data = irq_domain_get_irq_data(domain->parent, virq);
> +	out_irq = ti_sci_intr_xlate_irq(intr, parent_data->hwirq, false);
>  	data = irq_domain_get_irq_data(domain, virq);
> -	irq_index = HWIRQ_TO_IRQID(data->hwirq);
> -	dev_id = HWIRQ_TO_DEVID(data->hwirq);
>  
> -	intr->sci->ops.rm_irq_ops.free_irq(intr->sci, dev_id, irq_index,
> -					   intr->dst_id, parent_data->hwirq);
> -	ti_sci_release_resource(intr->dst_irq, parent_data->hwirq);
> +	intr->sci->ops.rm_irq_ops.free_irq(intr->sci,
> +					   intr->pdev->id, data->hwirq,
> +					   intr->pdev->id, out_irq);
> +	ti_sci_release_resource(intr->out_irqs, out_irq);
>  	irq_domain_free_irqs_parent(domain, virq, 1);
>  	irq_domain_reset_irq_data(data);
>  }
>  
>  /**
> - * ti_sci_intr_alloc_gic_irq() - Allocate GIC specific IRQ
> + * ti_sci_intr_alloc_parent_irq() - Allocate parent IRQ
>   * @domain:	Pointer to the interrupt router IRQ domain
>   * @virq:	Corresponding Linux virtual IRQ number
>   * @hwirq:	Corresponding hwirq for the IRQ within this IRQ domain
>   *
>   * Returns 0 if all went well else appropriate error pointer.
>   */
> -static int ti_sci_intr_alloc_gic_irq(struct irq_domain *domain,
> -				     unsigned int virq, u32 hwirq)
> +static int ti_sci_intr_alloc_parent_irq(struct irq_domain *domain,
> +					unsigned int virq, u32 hwirq)
>  {
>  	struct ti_sci_intr_irq_domain *intr = domain->host_data;
> +	struct device_node *parent_node;
>  	struct irq_fwspec fwspec;
> -	u16 dev_id, irq_index;
> -	u16 dst_irq;
> -	int err;
> +	u16 out_irq, p_hwirq;
> +	int err = 0;
>  
> -	dev_id = HWIRQ_TO_DEVID(hwirq);
> -	irq_index = HWIRQ_TO_IRQID(hwirq);
> -
> -	dst_irq = ti_sci_get_free_resource(intr->dst_irq);
> -	if (dst_irq == TI_SCI_RESOURCE_NULL)
> +	out_irq = ti_sci_get_free_resource(intr->out_irqs);
> +	if (out_irq == TI_SCI_RESOURCE_NULL)
>  		return -EINVAL;
>  
> -	fwspec.fwnode = domain->parent->fwnode;
> -	fwspec.param_count = 3;
> -	fwspec.param[0] = 0;	/* SPI */
> -	fwspec.param[1] = dst_irq - 32; /* SPI offset */
> -	fwspec.param[2] = intr->type;
> +	p_hwirq = ti_sci_intr_xlate_irq(intr, out_irq, true);
> +	if (p_hwirq < 0)
> +		goto err_irqs;
> +
> +	parent_node = of_irq_find_parent(dev_of_node(&intr->pdev->dev));
> +	fwspec.fwnode = of_node_to_fwnode(parent_node);
> +	if (of_property_read_u32(parent_node, "#interrupt-cells",
> +				 &fwspec.param_count))
> +		goto err_irqs;
> +
> +	if (fwspec.param_count == 1) {
> +		/* Parent is Interrupt Router */
> +		fwspec.param[0] = p_hwirq;
> +	} else if (fwspec.param_count == 3) {
> +		/* Parent is GIC */
> +		fwspec.param[0] = 0;	/* SPI */
> +		fwspec.param[1] = p_hwirq; /* SPI offset */
> +		fwspec.param[2] = intr->type;
> +	} else {

It really looks like you're flipping a coin and hope to hit the right
backend. It feels terribly fragile, and it would be a lot simpler if
the firmware actually exposed the "type" of parent controller, rather
than this guesswork.

> +		/* Invalid parent */
> +		dev_err(&intr->pdev->dev, "Unknown IRQ parent to INTR\n");
> +		goto err_irqs;
> +	}
>  
>  	err = irq_domain_alloc_irqs_parent(domain, virq, 1, &fwspec);
>  	if (err)
>  		goto err_irqs;
>  
> -	err = intr->sci->ops.rm_irq_ops.set_irq(intr->sci, dev_id, irq_index,
> -						intr->dst_id, dst_irq);
> +	err = intr->sci->ops.rm_irq_ops.set_irq(intr->sci,
> +						intr->pdev->id, hwirq,
> +						intr->pdev->id, out_irq);
>  	if (err)
>  		goto err_msg;
>  
> @@ -148,7 +181,7 @@ static int ti_sci_intr_alloc_gic_irq(struct irq_domain *domain,
>  err_msg:
>  	irq_domain_free_irqs_parent(domain, virq, 1);
>  err_irqs:
> -	ti_sci_release_resource(intr->dst_irq, dst_irq);
> +	ti_sci_release_resource(intr->out_irqs, out_irq);
>  	return err;
>  }
>  
> @@ -174,7 +207,7 @@ static int ti_sci_intr_irq_domain_alloc(struct irq_domain *domain,
>  	if (err)
>  		return err;
>  
> -	err = ti_sci_intr_alloc_gic_irq(domain, virq, hwirq);
> +	err = ti_sci_intr_alloc_parent_irq(domain, virq, hwirq);
>  	if (err)
>  		return err;
>  
> @@ -214,6 +247,7 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
>  	if (!intr)
>  		return -ENOMEM;
>  
> +	intr->pdev = pdev;
>  	ret = of_property_read_u32(dev_of_node(dev), "ti,intr-trigger-type",
>  				   &intr->type);
>  	if (ret) {
> @@ -230,19 +264,10 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	ret = of_property_read_u32(dev_of_node(dev), "ti,sci-dst-id",
> -				   &intr->dst_id);
> -	if (ret) {
> -		dev_err(dev, "missing 'ti,sci-dst-id' property\n");
> -		return -EINVAL;
> -	}
> -
> -	intr->dst_irq = devm_ti_sci_get_of_resource(intr->sci, dev,
> -						    intr->dst_id,
> -						    "ti,sci-rm-range-girq");
> -	if (IS_ERR(intr->dst_irq)) {
> +	intr->out_irqs = devm_ti_sci_get_irq_range(intr->sci, dev);
> +	if (IS_ERR(intr->out_irqs)) {
>  		dev_err(dev, "Destination irq resource allocation failed\n");
> -		return PTR_ERR(intr->dst_irq);
> +		return PTR_ERR(intr->out_irqs);
>  	}
>  
>  	domain = irq_domain_add_hierarchy(parent_domain, 0, 0, dev_of_node(dev),
> @@ -252,6 +277,8 @@ static int ti_sci_intr_irq_domain_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  	}
>  
> +	dev_info(dev, "Interrupt Router %d domain created\n", pdev->id);
> +
>  	return 0;
>  }
>  

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
