Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D907C127A34
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:46:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAUteVkqM7osJtFhwV7GlVuA1+oQ0PJWREHjFaWA9P0=; b=T4Jds+v0WCsiup
	jK0wJT7rZINt7qQ72DrV3lXle9I+6+dGSn7YTErm6HX/kU5SfppyqYHCfOe6dX4QD4pjiDcFInrvU
	XIAqC32MIOuabEE1mPf2fYDHzDy0Cc1R+5Ni/gsopKP0GIUci58MPvjTc9NByjBCjv0REJim0kK8f
	Fl3AGVnUKXQseLS8qyATe53tCmCcEBIC+AiptO0886Dm2m2jsvVtFJ60aWhHCqYdLV4H86+6EWXQT
	ZHXxsXkmExtoscuTlheHpFj9wxyFmGzsgd+ctxVGCuzFvIF+Ov4OXW2BjOuzYerYEQXv1agaqtEP3
	TcRftghVv3S0QEE7LdSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGjg-0007Fx-Lp; Fri, 20 Dec 2019 11:46:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGjX-0007FG-IQ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:46:17 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKBjwS0048904;
 Fri, 20 Dec 2019 05:45:58 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576842358;
 bh=1LAT3RISibOfk01ytXtrUx0VR3iDUwbFIkdeADMwoqk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GDkV/1HFebYIB2L6WL1hSEQWEbNfc3cewjTHSzYU3694cCh3ni6tX1OyxhV6NPVm8
 oHa7zN8rszg4yu+e6t3nDv5ONznshnVNQZwiYm7665D8rLXF0HerZoem6WLzfZhXMP
 32lYsKpVT/Au5RkWnSTSXGfRF8ymTE7CHmvij5uQ=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKBjwNR105382
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 05:45:58 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 05:45:58 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 05:45:58 -0600
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBjsT7026338;
 Fri, 20 Dec 2019 05:45:54 -0600
Subject: Re: [PATCH V3 2/2] drivers/irqchip: add NXP INTMUX interrupt
 multiplexer support
To: Joakim Zhang <qiangqing.zhang@nxp.com>, <maz@kernel.org>,
 <tglx@linutronix.de>, <jason@lakedaemon.net>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>
References: <1576827431-31942-1-git-send-email-qiangqing.zhang@nxp.com>
 <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <ad5165ba-24d7-ceeb-8794-cdbe4e564bd5@ti.com>
Date: Fri, 20 Dec 2019 17:15:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1576827431-31942-3-git-send-email-qiangqing.zhang@nxp.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_034615_687283_859B1B8B 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: fugang.duan@nxp.com, Shengjiu Wang <shengjiu.wang@nxp.com>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 20/12/19 1:07 PM, Joakim Zhang wrote:
> The Interrupt Multiplexer (INTMUX) expands the number of peripherals
> that can interrupt the core:
> * The INTMUX has 8 channels that are assigned to 8 NVIC interrupt slots.
> * Each INTMUX channel can receive up to 32 interrupt sources and has 1
>   interrupt output.
> * The INTMUX routes the interrupt sources to the interrupt outputs.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
> ---
>  drivers/irqchip/Kconfig          |   6 +
>  drivers/irqchip/Makefile         |   1 +
>  drivers/irqchip/irq-imx-intmux.c | 311 +++++++++++++++++++++++++++++++
>  3 files changed, 318 insertions(+)
>  create mode 100644 drivers/irqchip/irq-imx-intmux.c
> 
> diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
> index ba152954324b..7e2b1e9d0b45 100644
> --- a/drivers/irqchip/Kconfig
> +++ b/drivers/irqchip/Kconfig
> @@ -457,6 +457,12 @@ config IMX_IRQSTEER
>  	help
>  	  Support for the i.MX IRQSTEER interrupt multiplexer/remapper.
>  
> +config IMX_INTMUX
> +	def_bool y if ARCH_MXC
> +	select IRQ_DOMAIN
> +	help
> +	  Support for the i.MX INTMUX interrupt multiplexer.
> +
>  config LS1X_IRQ
>  	bool "Loongson-1 Interrupt Controller"
>  	depends on MACH_LOONGSON32
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index e806dda690ea..af976a79d1fb 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -100,6 +100,7 @@ obj-$(CONFIG_CSKY_MPINTC)		+= irq-csky-mpintc.o
>  obj-$(CONFIG_CSKY_APB_INTC)		+= irq-csky-apb-intc.o
>  obj-$(CONFIG_SIFIVE_PLIC)		+= irq-sifive-plic.o
>  obj-$(CONFIG_IMX_IRQSTEER)		+= irq-imx-irqsteer.o
> +obj-$(CONFIG_IMX_INTMUX)		+= irq-imx-intmux.o
>  obj-$(CONFIG_MADERA_IRQ)		+= irq-madera.o
>  obj-$(CONFIG_LS1X_IRQ)			+= irq-ls1x.o
>  obj-$(CONFIG_TI_SCI_INTR_IRQCHIP)	+= irq-ti-sci-intr.o
> diff --git a/drivers/irqchip/irq-imx-intmux.c b/drivers/irqchip/irq-imx-intmux.c
> new file mode 100644
> index 000000000000..94c67fdd7163
> --- /dev/null
> +++ b/drivers/irqchip/irq-imx-intmux.c
> @@ -0,0 +1,311 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// Copyright 2017 NXP
> +
> +/*                     INTMUX Block Diagram
> + *
> + *                               ________________
> + * interrupt source #  0  +---->|                |
> + *                        |     |                |
> + * interrupt source #  1  +++-->|                |
> + *            ...         | |   |   channel # 0  |--------->interrupt out # 0
> + *            ...         | |   |                |
> + *            ...         | |   |                |
> + * interrupt source # X-1 +++-->|________________|
> + *                        | | |
> + *                        | | |
> + *                        | | |  ________________
> + *                        +---->|                |
> + *                        | | | |                |
> + *                        | +-->|                |
> + *                        | | | |   channel # 1  |--------->interrupt out # 1
> + *                        | | +>|                |
> + *                        | | | |                |
> + *                        | | | |________________|
> + *                        | | |
> + *                        | | |
> + *                        | | |       ...
> + *                        | | |       ...
> + *                        | | |
> + *                        | | |  ________________
> + *                        +---->|                |
> + *                          | | |                |
> + *                          +-->|                |
> + *                            | |   channel # N  |--------->interrupt out # N
> + *                            +>|                |
> + *                              |                |
> + *                              |________________|
> + *
> + *
> + * N: Interrupt Channel Instance Number (N=7)
> + * X: Interrupt Source Number for each channel (X=32)
> + *
> + * The INTMUX interrupt multiplexer has 8 channels, each channel receives 32
> + * interrupt sources and generates 1 interrupt output.

Does the user care to which channel does the interrupt source goes to? If not,
interrupt-cells in DT can just be a single entry and the channel selection can
be controlled by the driver no? I am trying to understand why user should
specify the channel no.

Thanks and regards,
Lokesh

> + *
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/interrupt.h>
> +#include <linux/irq.h>
> +#include <linux/irqchip/chained_irq.h>
> +#include <linux/irqdomain.h>
> +#include <linux/kernel.h>
> +#include <linux/of_irq.h>
> +#include <linux/of_platform.h>
> +#include <linux/spinlock.h>
> +
> +#define CHANIER(n)	(0x10 + (0x40 * n))
> +#define CHANIPR(n)	(0x20 + (0x40 * n))
> +
> +#define CHAN_MAX_NUM		0x8
> +
> +struct intmux_irqchip_data {
> +	int			chanidx;
> +	int			irq;
> +	struct irq_domain	*domain;
> +};
> +
> +struct intmux_data {
> +	raw_spinlock_t			lock;
> +	void __iomem			*regs;
> +	struct clk			*ipg_clk;
> +	int				channum;
> +	struct intmux_irqchip_data	irqchip_data[];
> +};
> +
> +static void imx_intmux_irq_mask(struct irq_data *d)
> +{
> +	struct intmux_irqchip_data *irqchip_data = d->chip_data;
> +	int idx = irqchip_data->chanidx;
> +	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
> +						irqchip_data[idx]);
> +	unsigned long flags;
> +	void __iomem *reg;
> +	u32 val;
> +
> +	raw_spin_lock_irqsave(&data->lock, flags);
> +	reg = data->regs + CHANIER(idx);
> +	val = readl_relaxed(reg);
> +	/* disable the interrupt source of this channel */
> +	val &= ~BIT(d->hwirq);
> +	writel_relaxed(val, reg);
> +	raw_spin_unlock_irqrestore(&data->lock, flags);
> +}
> +
> +static void imx_intmux_irq_unmask(struct irq_data *d)
> +{
> +	struct intmux_irqchip_data *irqchip_data = d->chip_data;
> +	int idx = irqchip_data->chanidx;
> +	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
> +						irqchip_data[idx]);
> +	unsigned long flags;
> +	void __iomem *reg;
> +	u32 val;
> +
> +	raw_spin_lock_irqsave(&data->lock, flags);
> +	reg = data->regs + CHANIER(idx);
> +	val = readl_relaxed(reg);
> +	/* enable the interrupt source of this channel */
> +	val |= BIT(d->hwirq);
> +	writel_relaxed(val, reg);
> +	raw_spin_unlock_irqrestore(&data->lock, flags);
> +}
> +
> +static struct irq_chip imx_intmux_irq_chip = {
> +	.name		= "intmux",
> +	.irq_mask	= imx_intmux_irq_mask,
> +	.irq_unmask	= imx_intmux_irq_unmask,
> +};
> +
> +static int imx_intmux_irq_map(struct irq_domain *h, unsigned int irq,
> +			      irq_hw_number_t hwirq)
> +{
> +	irq_set_status_flags(irq, IRQ_LEVEL);
> +	irq_set_chip_data(irq, h->host_data);
> +	irq_set_chip_and_handler(irq, &imx_intmux_irq_chip, handle_level_irq);
> +
> +	return 0;
> +}
> +
> +static int imx_intmux_irq_xlate(struct irq_domain *d, struct device_node *node,
> +				const u32 *intspec, unsigned int intsize,
> +				unsigned long *out_hwirq, unsigned int *out_type)
> +{
> +	struct intmux_irqchip_data *irqchip_data = d->host_data;
> +	int idx = irqchip_data->chanidx;
> +	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
> +						irqchip_data[idx]);
> +
> +	/* two cells needed in interrupt specifier:
> +	 * the 1st cell: hw interrupt number
> +	 * the 2nd cell: channel index
> +	 */
> +	if (WARN_ON(intsize != 2))
> +		return -EINVAL;
> +
> +	if (WARN_ON(intspec[1] >= data->channum))
> +		return -EINVAL;
> +
> +	*out_hwirq = intspec[0];
> +	*out_type = IRQ_TYPE_NONE;
> +
> +	return 0;
> +}
> +
> +static int imx_intmux_irq_select(struct irq_domain *d, struct irq_fwspec *fwspec,
> +				 enum irq_domain_bus_token bus_token)
> +{
> +	struct intmux_irqchip_data *irqchip_data = d->host_data;
> +
> +	/* Not for us */
> +	if (fwspec->fwnode != d->fwnode)
> +		return false;
> +
> +	if (irqchip_data->chanidx == fwspec->param[1])
> +		return true;
> +	else
> +		return false;
> +}
> +
> +static const struct irq_domain_ops imx_intmux_domain_ops = {
> +	.map		= imx_intmux_irq_map,
> +	.xlate		= imx_intmux_irq_xlate,
> +	.select		= imx_intmux_irq_select,
> +};
> +
> +static void imx_intmux_irq_handler(struct irq_desc *desc)
> +{
> +	struct intmux_irqchip_data *irqchip_data = irq_desc_get_handler_data(desc);
> +	int idx = irqchip_data->chanidx;
> +	struct intmux_data *data = container_of(irqchip_data, struct intmux_data,
> +						irqchip_data[idx]);
> +	unsigned long irqstat;
> +	int pos, virq;
> +
> +	chained_irq_enter(irq_desc_get_chip(desc), desc);
> +
> +	/* read the interrupt source pending status of this channel */
> +	irqstat = readl_relaxed(data->regs + CHANIPR(idx));
> +
> +	for_each_set_bit(pos, &irqstat, 32) {
> +		virq = irq_find_mapping(irqchip_data->domain, pos);
> +		if (virq)
> +			generic_handle_irq(virq);
> +	}
> +
> +	chained_irq_exit(irq_desc_get_chip(desc), desc);
> +}
> +
> +static int imx_intmux_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np = pdev->dev.of_node;
> +	struct intmux_data *data;
> +	int channum;
> +	int i, ret;
> +
> +	ret = of_property_read_u32(np, "fsl,intmux_chans", &channum);
> +	if (ret) {
> +		channum = 1;
> +	} else if (channum > CHAN_MAX_NUM) {
> +		dev_err(&pdev->dev, "supports up to %d multiplex channels\n",
> +			CHAN_MAX_NUM);
> +		return -EINVAL;
> +	}
> +
> +	data = devm_kzalloc(&pdev->dev, sizeof(*data) +
> +			    channum * sizeof(data->irqchip_data[0]), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	data->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(data->regs)) {
> +		dev_err(&pdev->dev, "failed to initialize reg\n");
> +		return PTR_ERR(data->regs);
> +	}
> +
> +	data->ipg_clk = devm_clk_get(&pdev->dev, "ipg");
> +	if (IS_ERR(data->ipg_clk)) {
> +		ret = PTR_ERR(data->ipg_clk);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "failed to get ipg clk: %d\n", ret);
> +		return ret;
> +	}
> +
> +	data->channum = channum;
> +	raw_spin_lock_init(&data->lock);
> +
> +	ret = clk_prepare_enable(data->ipg_clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to enable ipg clk: %d\n", ret);
> +		return ret;
> +	}
> +
> +	for (i = 0; i < channum; i++) {
> +		data->irqchip_data[i].chanidx = i;
> +
> +		data->irqchip_data[i].irq = irq_of_parse_and_map(np, i);
> +		if (data->irqchip_data[i].irq <= 0) {
> +			ret = -EINVAL;
> +			dev_err(&pdev->dev, "failed to get irq\n");
> +			goto out;
> +		}
> +
> +		data->irqchip_data[i].domain =
> +			irq_domain_add_linear(np, 32, &imx_intmux_domain_ops,
> +					      &data->irqchip_data[i]);
> +		if (!data->irqchip_data[i].domain) {
> +			ret = -ENOMEM;
> +			dev_err(&pdev->dev, "failed to create IRQ domain\n");
> +			goto out;
> +		}
> +
> +		irq_set_chained_handler_and_data(data->irqchip_data[i].irq,
> +						 imx_intmux_irq_handler,
> +						 &data->irqchip_data[i]);
> +
> +		/* disable interrupt sources of this channel firstly */
> +		writel_relaxed(0, data->regs + CHANIER(i));
> +	}
> +
> +	platform_set_drvdata(pdev, data);
> +
> +	return 0;
> +out:
> +	clk_disable_unprepare(data->ipg_clk);
> +	return ret;
> +}
> +
> +static int imx_intmux_remove(struct platform_device *pdev)
> +{
> +	struct intmux_data *data = platform_get_drvdata(pdev);
> +	int i;
> +
> +	for (i = 0; i < data->channum; i++) {
> +		/* clear interrupt sources pending status of this channel */
> +		writel_relaxed(0, data->regs + CHANIPR(i));
> +
> +		irq_set_chained_handler_and_data(data->irqchip_data[i].irq,
> +						 NULL, NULL);
> +
> +		irq_domain_remove(data->irqchip_data[i].domain);
> +	}
> +
> +	clk_disable_unprepare(data->ipg_clk);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id imx_intmux_id[] = {
> +	{ .compatible = "fsl,imx-intmux", },
> +	{ /* sentinel */ },
> +};
> +
> +static struct platform_driver imx_intmux_driver = {
> +	.driver = {
> +		.name = "imx-intmux",
> +		.of_match_table = imx_intmux_id,
> +	},
> +	.probe = imx_intmux_probe,
> +	.remove = imx_intmux_remove,
> +};
> +builtin_platform_driver(imx_intmux_driver);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
