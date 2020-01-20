Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFEF14287F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 11:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XFqjYyhLIBueJw44+Ao3bbEetFiP1N7WOXF5jNCFcA0=; b=NyIBJxnjeJnjCcRuPsKMgmTG8
	upIe/xLjAm43qibLtSmZjUyUvpucQEOcqUxWACvinQFyt1n2nX45GVOd/Cz8XPatdB+q6Q5shdNYt
	eqCVTrP/6xl5fnDurGQMxLISnxsjmTbmmg5N+PCHxgkIkq8jh4nUrxVRMZTXo6jY+tgzVLwmj5oxf
	wmYe47lf5Tqnl0VsUdj5bYWoN0L9wpbfwKZye06gETpJlg3y9fj61EQlNYXXvaivGJ3yMmBYVOzib
	xulDmeWfzAzF5nhK/2bK7ctp3qHk44ZwS4EZSAxEx+gJHknKTnkfjdkdTMIyLgXZaSo2nEkqPjoUq
	marUNst2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itUfX-0006L8-6Z; Mon, 20 Jan 2020 10:52:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itUfH-0006KT-6v
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 10:52:20 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 52A1020674;
 Mon, 20 Jan 2020 10:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579517534;
 bh=pLgQq4NA4AhTYKsUQU3iN4S4KqE2oz5wJEkovbGbO1Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PRikNbwUcQfcvOaXvX6DHwrKAmLOjuFp8TwxP18nLPNI+bXn7WiZTqSK+jVYH221t
 /TrxivKas0W6Spk3qyOzTX66OSE6gQH+cSs3DXzTcoQ+5Dsxw/kxx/7KdBa/aAyOT8
 OLS2Fmg9P44IB4MO8qlr+0+RfUgjTC0NV1bMAf0U=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1itUfE-000F0N-KJ; Mon, 20 Jan 2020 10:52:12 +0000
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 11:52:12 +0100
From: Marc Zyngier <maz@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 1/9] irqchip/sun6i-r: Switch to a stacked irqchip driver
In-Reply-To: <20200113044936.26038-2-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
 <20200113044936.26038-2-samuel@sholland.org>
Message-ID: <22bbdefdc0060e1eacb2c3a41dffebe4@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: samuel@sholland.org, tglx@linutronix.de,
 jason@lakedaemon.net, robh+dt@kernel.org, mark.rutland@arm.com,
 mripard@kernel.org, wens@csie.org, linux@armlinux.org.uk,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_025215_302431_2FC507B3 
X-CRM114-Status: GOOD (  36.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-sunxi@googlegroups.com, Russell King <linux@armlinux.org.uk>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Samuel,

On 2020-01-13 05:49, Samuel Holland wrote:
> The R_INTC in the A31 and newer sun8i/sun50i SoCs is more similar to 
> the
> original sun4i interrupt controller than the sun7i/sun9i NMI 
> controller.
> It is used for two distinct purposes:
>  1) To control the trigger and mask for the NMI input pin
>  2) To provide the interrupt input for the ARISC coprocessor
> 
> As this interrupt controller is not documented, information about it
> comes from reverse-engineering the BSP-provided ARISC firmware.
> 
> Like the original sun4i interrupt controller, it has:
>  - A VECTOR_REG at 0x00 (configurable via the BASE_ADDR_REG at 0x04)
>  - A NMI_CTRL_REG, PENDING_REG, and ENABLE_REG as used by both the
>    sun4i and sunxi-nmi drivers
>  - A MASK_REG at 0x50
> 
> Differences from the sun4i interrupt controller appear to be:
>  - It is only known to have one register of each kind (max 32 inputs)
>  - There is no FIQ-related logic
>  - There is no interrupt priority logic
> 
> In order to fulfill its two purposes, this hardware block combines two
> types of IRQs. First, the NMI pin is routed to the "IRQ 0" input on 
> this
> chip, with a trigger type controlled by the NMI_CTRL_REG. The (masked)
> "IRQ 0 pending" output from this chip is then routed to a non-maskable
> SPI IRQ input on the GIC, as IRQ_TYPE_LEVEL_HIGH. In other words, bit 0

I object to the "non-maskable" wording here. It may be non-maskable
at this irqchip level (and yet you seem to have code to that effect),
but the GIC definitely should be able to mask things.

> of ENABLE_REG and MASK_REG *do* affect the IRQs seen at the GIC.
> 
> The NMI is then followed by a contiguous block of (at least) 15 IRQ
> inputs that are connected *in parallel* to both R_INTC and the GIC. Or
> in other words, the other bits of ENABLE_REG and MASK_REG *do not*
> affect the IRQs seen at the GIC.
> 
> Finally, the global "IRQ pending" output from R_INTC is connected to 
> the
> "external interrupt" input of the ARISC CPU (an OR1200).
> 
> Because of the 1:1 correspondence between R_INTC and GIC inputs, this 
> is
> a perfect scenario for using a stacked irqchip driver. We want to hook
> into enabling/disabling/masking IRQs to add more features to the GIC
> (specifically to allow masking the NMI and setting its trigger type),
> but we don't need to actually *handle* the IRQ.
> 
> And since R_INTC is in the always-on power domain, and its output is
> connected directly in to the power management coprocessor, a stacked
> irqchip driver provides a simple way to add wakeup support to this set
> of IRQs. That is a future patch; for now, just the NMI is moved over.
> 
> This driver keeps the same DT binding as the existing driver. The
> "interrupt" property of the R_INTC node is used to determine 1) the
> offset between GIC and R_INTC hwirq numbers and 2) the type of trigger
> between the R_INTC "IRQ 0 pending" output and the GIC NMI input.
> 
> This commit mostly reverts commit 173bda53b340 ("irqchip/sunxi-nmi:
> Support sun6i-a31-r-intc compatible").
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  arch/arm/mach-sunxi/Kconfig     |   1 +
>  arch/arm64/Kconfig.platforms    |   1 +
>  drivers/irqchip/Makefile        |   1 +
>  drivers/irqchip/irq-sun6i-r.c   | 220 ++++++++++++++++++++++++++++++++
>  drivers/irqchip/irq-sunxi-nmi.c |  26 +---
>  5 files changed, 226 insertions(+), 23 deletions(-)
>  create mode 100644 drivers/irqchip/irq-sun6i-r.c
> 
> diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
> index eeadb1a4dcfe..ef1cc25902b5 100644
> --- a/arch/arm/mach-sunxi/Kconfig
> +++ b/arch/arm/mach-sunxi/Kconfig
> @@ -6,6 +6,7 @@ menuconfig ARCH_SUNXI
>  	select CLKSRC_MMIO
>  	select GENERIC_IRQ_CHIP
>  	select GPIOLIB
> +	select IRQ_DOMAIN_HIERARCHY
>  	select PINCTRL
>  	select PM_OPP
>  	select SUN4I_TIMER
> diff --git a/arch/arm64/Kconfig.platforms 
> b/arch/arm64/Kconfig.platforms
> index 16d761475a86..d282d0a1d17d 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -17,6 +17,7 @@ config ARCH_SUNXI
>  	bool "Allwinner sunxi 64-bit SoC Family"
>  	select ARCH_HAS_RESET_CONTROLLER
>  	select GENERIC_IRQ_CHIP
> +	select IRQ_DOMAIN_HIERARCHY
>  	select PINCTRL
>  	select RESET_CONTROLLER
>  	help
> diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> index cc7c43932f16..41996d98c30a 100644
> --- a/drivers/irqchip/Makefile
> +++ b/drivers/irqchip/Makefile
> @@ -24,6 +24,7 @@ obj-$(CONFIG_OR1K_PIC)			+= irq-or1k-pic.o
>  obj-$(CONFIG_ORION_IRQCHIP)		+= irq-orion.o
>  obj-$(CONFIG_OMAP_IRQCHIP)		+= irq-omap-intc.o
>  obj-$(CONFIG_ARCH_SUNXI)		+= irq-sun4i.o
> +obj-$(CONFIG_ARCH_SUNXI)		+= irq-sun6i-r.o
>  obj-$(CONFIG_ARCH_SUNXI)		+= irq-sunxi-nmi.o
>  obj-$(CONFIG_ARCH_SPEAR3XX)		+= spear-shirq.o
>  obj-$(CONFIG_ARM_GIC)			+= irq-gic.o irq-gic-common.o
> diff --git a/drivers/irqchip/irq-sun6i-r.c 
> b/drivers/irqchip/irq-sun6i-r.c
> new file mode 100644
> index 000000000000..37b6e9c60bf8
> --- /dev/null
> +++ b/drivers/irqchip/irq-sun6i-r.c
> @@ -0,0 +1,220 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +//
> +// Allwinner A31 and newer SoCs R_INTC driver
> +//
> +
> +#include <linux/irq.h>
> +#include <linux/irqchip.h>
> +#include <linux/irqdomain.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +#define NMI_HWIRQ		0
> +
> +#define SUN6I_R_INTC_NR_IRQS	16
> +
> +#define SUN6I_R_INTC_CTRL	0x0c
> +#define SUN6I_R_INTC_PENDING	0x10
> +#define SUN6I_R_INTC_ENABLE	0x40
> +#define SUN6I_R_INTC_MASK	0x50
> +
> +enum {
> +	SUNXI_SRC_TYPE_LEVEL_LOW = 0,
> +	SUNXI_SRC_TYPE_EDGE_FALLING,
> +	SUNXI_SRC_TYPE_LEVEL_HIGH,
> +	SUNXI_SRC_TYPE_EDGE_RISING,
> +};

It is unusual to use an enum for values that get directly programmed
into the HW.

> +
> +static void __iomem *base;
> +static irq_hw_number_t parent_offset;
> +static u32 parent_type;
> +
> +static void sun6i_r_intc_irq_enable(struct irq_data *data)
> +{
> +	if (data->hwirq == NMI_HWIRQ)
> +		writel(BIT(NMI_HWIRQ), base + SUN6I_R_INTC_ENABLE);

Please consider using _relaxed() accessors.

> +
> +	irq_chip_enable_parent(data);
> +}
> +
> +static void sun6i_r_intc_irq_disable(struct irq_data *data)
> +{
> +	if (data->hwirq == NMI_HWIRQ)
> +		writel(0, base + SUN6I_R_INTC_ENABLE);
> +
> +	irq_chip_disable_parent(data);
> +}
> +
> +static void sun6i_r_intc_irq_mask(struct irq_data *data)
> +{
> +	if (data->hwirq == NMI_HWIRQ)
> +		writel(BIT(NMI_HWIRQ), base + SUN6I_R_INTC_MASK);
> +
> +	irq_chip_mask_parent(data);
> +}
> +
> +static void sun6i_r_intc_irq_unmask(struct irq_data *data)
> +{
> +	if (data->hwirq == NMI_HWIRQ)
> +		writel(0, base + SUN6I_R_INTC_MASK);
> +
> +	irq_chip_unmask_parent(data);
> +}
> +
> +static void sun6i_r_intc_irq_eoi(struct irq_data *data)
> +{
> +	if (data->hwirq == NMI_HWIRQ)
> +		writel(BIT(NMI_HWIRQ), base + SUN6I_R_INTC_PENDING);

Are you sure about this? Clearing the pending bit is not quite an EOI.
It won't hurt a level interrupt, but could be pretty deadly with
edge signaling (you'd loose that interrupt). But does this register
actually latch the input until you clear it? Or does it follow the
level of its input?

> +
> +	irq_chip_eoi_parent(data);
> +}
> +
> +static int sun6i_r_intc_irq_set_type(struct irq_data *data, unsigned 
> int type)
> +{
> +	if (data->hwirq == NMI_HWIRQ) {
> +		u32 src_type;
> +
> +		switch (type) {
> +		case IRQ_TYPE_EDGE_FALLING:
> +			src_type = SUNXI_SRC_TYPE_EDGE_FALLING;
> +			break;
> +		case IRQ_TYPE_EDGE_RISING:
> +			src_type = SUNXI_SRC_TYPE_EDGE_RISING;
> +			break;
> +		case IRQ_TYPE_LEVEL_HIGH:
> +			src_type = SUNXI_SRC_TYPE_LEVEL_HIGH;
> +			break;
> +		case IRQ_TYPE_NONE:

What does "IRQ_TYPE_NONE" mean here?

> +		case IRQ_TYPE_LEVEL_LOW:
> +			src_type = SUNXI_SRC_TYPE_LEVEL_LOW;
> +			break;
> +		default:
> +			pr_err("%pOF: invalid trigger type %d for IRQ %d\n",
> +			       irq_domain_get_of_node(data->domain), type,
> +			       data->irq);
> +			return -EBADR;
> +		}
> +		writel(src_type, base + SUN6I_R_INTC_CTRL);
> +
> +		irqd_set_trigger_type(data, type);

It is odd to update this from a driver. Specially that you change it
before finding out if the parent call has succeeded or not.

> +
> +		/* Send the R_INTC -> GIC trigger type to the GIC driver. */
> +		type = parent_type;
> +	}
> +
> +	return irq_chip_set_type_parent(data, type);

Half of the above signaling modes are invalid for the GIC. Does this
widget actually invert the signalling when the input is either
level low or falling edge?

> +}
> +
> +static struct irq_chip sun6i_r_intc_chip = {
> +	.name			= "sun6i-r-intc",
> +	.irq_enable		= sun6i_r_intc_irq_enable,
> +	.irq_disable		= sun6i_r_intc_irq_disable,
> +	.irq_mask		= sun6i_r_intc_irq_mask,
> +	.irq_unmask		= sun6i_r_intc_irq_unmask,

What is the upshot of having both enable/disable and mask/unmask?
Given that the GIC only supports the latter, I'd expect this driver
to leave everything enabled, and only deal with mask/unmask.

> +	.irq_eoi		= sun6i_r_intc_irq_eoi,
> +	.irq_set_affinity	= irq_chip_set_affinity_parent,
> +	.irq_retrigger		= irq_chip_retrigger_hierarchy,
> +	.irq_set_type		= sun6i_r_intc_irq_set_type,
> +	.irq_set_vcpu_affinity	= irq_chip_set_vcpu_affinity_parent,

Under which circumstances do you expect this to be called?

> +};
> +
> +static int sun6i_r_intc_domain_translate(struct irq_domain *domain,
> +					 struct irq_fwspec *fwspec,
> +					 unsigned long *hwirq,
> +					 unsigned int *type)
> +{
> +	if (!is_of_node(fwspec->fwnode) || fwspec->param_count != 2)
> +		return -EINVAL;
> +
> +	*hwirq = fwspec->param[0];
> +	*type  = fwspec->param[1] & IRQ_TYPE_SENSE_MASK;
> +
> +	return 0;
> +}
> +
> +static int sun6i_r_intc_domain_alloc(struct irq_domain *domain,
> +				     unsigned int virq,
> +				     unsigned int nr_irqs, void *arg)
> +{
> +	struct irq_fwspec *fwspec = arg;
> +	struct irq_fwspec gic_fwspec;
> +	irq_hw_number_t hwirq;
> +	unsigned int type;
> +	int i, ret;
> +
> +	ret = sun6i_r_intc_domain_translate(domain, fwspec, &hwirq, &type);
> +	if (ret)
> +		return ret;
> +	if (hwirq + nr_irqs > SUN6I_R_INTC_NR_IRQS)
> +		return -EINVAL;
> +
> +	/* Construct a GIC-compatible fwspec from this fwspec. */
> +	gic_fwspec = (struct irq_fwspec) {
> +		.fwnode      = domain->parent->fwnode,
> +		.param_count = 3,
> +		.param       = { GIC_SPI, parent_offset + hwirq, type },

Same problem here. The GIC only supports level-high and rising-edge
for SPIs.

> +	};
> +
> +	for (i = 0; i < nr_irqs; ++i)
> +		irq_domain_set_hwirq_and_chip(domain, virq + i, hwirq + i,
> +					      &sun6i_r_intc_chip, NULL);
> +
> +	return irq_domain_alloc_irqs_parent(domain, virq, nr_irqs, 
> &gic_fwspec);
> +}
> +
> +static const struct irq_domain_ops sun6i_r_intc_domain_ops = {
> +	.translate	= sun6i_r_intc_domain_translate,
> +	.alloc		= sun6i_r_intc_domain_alloc,
> +	.free		= irq_domain_free_irqs_common,
> +};
> +
> +static int __init sun6i_r_intc_init(struct device_node *node,
> +				    struct device_node *parent)
> +{
> +	struct irq_domain *domain, *parent_domain;
> +	struct of_phandle_args parent_irq;
> +	int ret;
> +
> +	/* Extract the R_INTC -> GIC mapping from the OF node. */
> +	ret = of_irq_parse_one(node, 0, &parent_irq);
> +	if (ret)
> +		return ret;
> +	if (parent_irq.args_count != 3 || parent_irq.args[0] != GIC_SPI)
> +		return -EINVAL;
> +	parent_offset = parent_irq.args[1];
> +	parent_type   = parent_irq.args[2];
> +
> +	parent_domain = irq_find_host(parent);
> +	if (!parent_domain) {
> +		pr_err("%pOF: Failed to obtain parent domain\n", node);
> +		return -ENXIO;
> +	}
> +
> +	base = of_io_request_and_map(node, 0, NULL);
> +	if (IS_ERR(base)) {
> +		pr_err("%pOF: Failed to map MMIO region\n", node);
> +		return PTR_ERR(base);
> +	}
> +
> +	domain = irq_domain_add_hierarchy(parent_domain, 0,
> +					  SUN6I_R_INTC_NR_IRQS, node,
> +					  &sun6i_r_intc_domain_ops, NULL);
> +	if (!domain) {
> +		pr_err("%pOF: Failed to allocate domain\n", node);
> +		iounmap(base);
> +		return -ENOMEM;
> +	}
> +
> +	/* Disable and unmask all interrupts. */
> +	writel(0, base + SUN6I_R_INTC_ENABLE);
> +	writel(0, base + SUN6I_R_INTC_MASK);
> +
> +	/* Clear any pending interrupts. */
> +	writel(~0, base + SUN6I_R_INTC_PENDING);
> +
> +	return 0;
> +}
> +IRQCHIP_DECLARE(sun6i_r_intc, "allwinner,sun6i-a31-r-intc", 
> sun6i_r_intc_init);
> diff --git a/drivers/irqchip/irq-sunxi-nmi.c 
> b/drivers/irqchip/irq-sunxi-nmi.c
> index a412b5d5d0fa..9f2bd0c5d289 100644
> --- a/drivers/irqchip/irq-sunxi-nmi.c
> +++ b/drivers/irqchip/irq-sunxi-nmi.c
> @@ -27,18 +27,12 @@
> 
>  #define SUNXI_NMI_IRQ_BIT	BIT(0)
> 
> -#define SUN6I_R_INTC_CTRL	0x0c
> -#define SUN6I_R_INTC_PENDING	0x10
> -#define SUN6I_R_INTC_ENABLE	0x40
> -
>  /*
>   * For deprecated sun6i-a31-sc-nmi compatible.
> - * Registers are offset by 0x0c.
>   */
> -#define SUN6I_R_INTC_NMI_OFFSET	0x0c
> -#define SUN6I_NMI_CTRL		(SUN6I_R_INTC_CTRL - SUN6I_R_INTC_NMI_OFFSET)
> -#define SUN6I_NMI_PENDING	(SUN6I_R_INTC_PENDING - 
> SUN6I_R_INTC_NMI_OFFSET)
> -#define SUN6I_NMI_ENABLE	(SUN6I_R_INTC_ENABLE - 
> SUN6I_R_INTC_NMI_OFFSET)
> +#define SUN6I_NMI_CTRL		0x00
> +#define SUN6I_NMI_PENDING	0x04
> +#define SUN6I_NMI_ENABLE	0x34
> 
>  #define SUN7I_NMI_CTRL		0x00
>  #define SUN7I_NMI_PENDING	0x04
> @@ -61,12 +55,6 @@ struct sunxi_sc_nmi_reg_offs {
>  	u32 enable;
>  };
> 
> -static const struct sunxi_sc_nmi_reg_offs sun6i_r_intc_reg_offs 
> __initconst = {
> -	.ctrl	= SUN6I_R_INTC_CTRL,
> -	.pend	= SUN6I_R_INTC_PENDING,
> -	.enable	= SUN6I_R_INTC_ENABLE,
> -};
> -
>  static const struct sunxi_sc_nmi_reg_offs sun6i_reg_offs __initconst = 
> {
>  	.ctrl	= SUN6I_NMI_CTRL,
>  	.pend	= SUN6I_NMI_PENDING,
> @@ -232,14 +220,6 @@ static int __init sunxi_sc_nmi_irq_init(struct
> device_node *node,
>  	return ret;
>  }
> 
> -static int __init sun6i_r_intc_irq_init(struct device_node *node,
> -					struct device_node *parent)
> -{
> -	return sunxi_sc_nmi_irq_init(node, &sun6i_r_intc_reg_offs);
> -}
> -IRQCHIP_DECLARE(sun6i_r_intc, "allwinner,sun6i-a31-r-intc",
> -		sun6i_r_intc_irq_init);
> -
>  static int __init sun6i_sc_nmi_irq_init(struct device_node *node,
>  					struct device_node *parent)
>  {

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
