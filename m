Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D691C9B2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 21:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtLKTJyHjw6ttblJIHXFGGAZ+vUhhXz/vCa0mB2G0OA=; b=rkCd/p22Gji27T
	RtROpsZZNA23kEH9co7wC7lfEiPoiJ8o9aAGvHYZP48X6FFvUCPknhhrMMklFwxukGce+gsZ1lVKW
	gWd+LlB903TKY1dQSF7YV1NE4g3webvTy0HoQlScCPPsLq2k9QXvnYL4xi0fFosZMVMUdNN1frpyz
	Ujc7SEEgp6xnBMye0IY4BKDtZC57Ok+L1hCZFXDJVo9b/BLYfi2c0LHvj9ON5fJIrQLe06n1zfWbC
	Qo9l9HgO/lcai2kh1vCz9xGbpg8A2ok/EmJKeOytIAnUsUeLJ/AOkI0ATdjWlIc3knYBJDXzzToEZ
	pvzDE1aUBI+9LtwCfuvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmHS-0002MQ-UY; Thu, 07 May 2020 19:34:02 +0000
Received: from mail-oo1-f68.google.com ([209.85.161.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmHL-0002Lq-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 19:33:57 +0000
Received: by mail-oo1-f68.google.com with SMTP id 190so1605285ooa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 12:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=32GXB4UIGbMoZnnDfcbiG4iBFYavfRQ7aCCz/iFlsR4=;
 b=aT5lmD1dcwUqi/N1VEn+OlFZ5QQVW8ct0cE0e62C3rw1hncZsolDl2q+003CttPDPs
 /G+Ilp1EtdoO15zN8WI95wytEv1nlI2qTASpuWwHbALdliQluxAh9uHPCyZRa7/Tv4bj
 Z4NyQ6MD0VsLR7mhGKr9Z33T0/V4D5fSaP/6VVLi+nuN2xQBywxWj3/k/6wpYgrkxnq+
 Gf1ppToVQTjndYSZ3jH/kktqhwYXFFISmp7Y1US8NtT2bzFi6wby4DL/z70r4AcNcrKj
 ptt4nRrkiOEm+P5DOxUHiMj+qkIyMPVQLjdw1FnrAz8ZO8VjL4fO4ByDOgxgb6+r4Dw/
 1Kww==
X-Gm-Message-State: AGi0Pubq0pozQtt3/yCVIv42a5Kj6J/k9m2xqRpia3S016No1Yi/OsCZ
 e3nresmUQiQ/71PkVb1jdQ==
X-Google-Smtp-Source: APiQypKmn8CAM1f7VK1iKhrP/4UoIaEteDM/kbtbIyoyW4kNE8xCBAkYRRvUMtC8X29k+2U7wRDbZA==
X-Received: by 2002:a4a:df01:: with SMTP id i1mr13273102oou.5.1588880034909;
 Thu, 07 May 2020 12:33:54 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id n2sm1595363oie.46.2020.05.07.12.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 12:33:54 -0700 (PDT)
Received: (nullmailer pid 8025 invoked by uid 1000);
 Thu, 07 May 2020 19:33:53 -0000
Date: Thu, 7 May 2020 14:33:53 -0500
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v3 2/2] PCI: uniphier: Add Socionext UniPhier Pro5 PCIe
 endpoint controller driver
Message-ID: <20200507193353.GA21821@bogus>
References: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584956454-8829-3-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584956454-8829-3-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_123355_979608_6D443D1E 
X-CRM114-Status: GOOD (  26.40  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 06:40:54PM +0900, Kunihiko Hayashi wrote:
> Add driver for the Socionext UniPhier Pro5 SoC endpoint controller.
> This controller is based on the DesignWare PCIe core.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  MAINTAINERS                                   |   2 +-
>  drivers/pci/controller/dwc/Kconfig            |  13 +-
>  drivers/pci/controller/dwc/Makefile           |   1 +
>  drivers/pci/controller/dwc/pcie-uniphier-ep.c | 380 ++++++++++++++++++++++++++
>  4 files changed, 393 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 01a4631..95d296b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13152,7 +13152,7 @@ M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>  L:	linux-pci@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/pci/uniphier-pcie*.txt
> -F:	drivers/pci/controller/dwc/pcie-uniphier.c
> +F:	drivers/pci/controller/dwc/pcie-uniphier*.c
>  
>  PCIE DRIVER FOR ST SPEAR13XX
>  M:	Pratyush Anand <pratyush.anand@gmail.com>
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 169cde5..4dd5ba9 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -282,15 +282,24 @@ config PCIE_TEGRA194_EP
>  	  selected. This uses the DesignWare core.
>  
>  config PCIE_UNIPHIER
> -	bool "Socionext UniPhier PCIe controllers"
> +	bool "Socionext UniPhier PCIe host controllers"
>  	depends on ARCH_UNIPHIER || COMPILE_TEST
>  	depends on OF && HAS_IOMEM
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	select PCIE_DW_HOST
>  	help
> -	  Say Y here if you want PCIe controller support on UniPhier SoCs.
> +	  Say Y here if you want PCIe host controller support on UniPhier SoCs.
>  	  This driver supports LD20 and PXs3 SoCs.
>  
> +config PCIE_UNIPHIER_EP
> +	bool "Socionext UniPhier PCIe endpoint controllers"
> +	depends on ARCH_UNIPHIER || COMPILE_TEST
> +	depends on OF && HAS_IOMEM
> +	select PCIE_DW_EP
> +	help
> +	  Say Y here if you want PCIe endpoint controller support on
> +	  UniPhier SoCs. This driver supports Pro5 SoC.
> +
>  config PCIE_AL
>  	bool "Amazon Annapurna Labs PCIe controller"
>  	depends on OF && (ARM64 || COMPILE_TEST)
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index 8a637cf..a751553 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -19,6 +19,7 @@ obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
>  obj-$(CONFIG_PCI_MESON) += pci-meson.o
>  obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
>  obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
> +obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
>  
>  # The following drivers are for devices that use the generic ACPI
>  # pci_root.c driver but don't support standard ECAM config access.
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier-ep.c b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
> new file mode 100644
> index 0000000..71db49f
> --- /dev/null
> +++ b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
> @@ -0,0 +1,380 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * PCIe endpoint controller driver for UniPhier SoCs
> + * Copyright 2018 Socionext Inc.
> + * Author: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/init.h>
> +#include <linux/of_device.h>
> +#include <linux/pci.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +
> +#include "pcie-designware.h"
> +
> +/* Link Glue registers */
> +#define PCL_RSTCTRL0			0x0010
> +#define PCL_RSTCTRL_AXI_REG		BIT(3)
> +#define PCL_RSTCTRL_AXI_SLAVE		BIT(2)
> +#define PCL_RSTCTRL_AXI_MASTER		BIT(1)
> +#define PCL_RSTCTRL_PIPE3		BIT(0)
> +
> +#define PCL_RSTCTRL1			0x0020
> +#define PCL_RSTCTRL_PERST		BIT(0)
> +
> +#define PCL_RSTCTRL2			0x0024
> +#define PCL_RSTCTRL_PHY_RESET		BIT(0)
> +
> +#define PCL_MODE			0x8000
> +#define PCL_MODE_REGEN			BIT(8)
> +#define PCL_MODE_REGVAL			BIT(0)
> +
> +#define PCL_APP_CLK_CTRL		0x8004
> +#define PCL_APP_CLK_REQ			BIT(0)
> +
> +#define PCL_APP_READY_CTRL		0x8008
> +#define PCL_APP_LTSSM_ENABLE		BIT(0)
> +
> +#define PCL_APP_MSI0			0x8040
> +#define PCL_APP_VEN_MSI_TC_MASK		GENMASK(10, 8)
> +#define PCL_APP_VEN_MSI_VECTOR_MASK	GENMASK(4, 0)
> +
> +#define PCL_APP_MSI1			0x8044
> +#define PCL_APP_MSI_REQ			BIT(0)
> +
> +#define PCL_APP_INTX			0x8074
> +#define PCL_APP_INTX_SYS_INT		BIT(0)
> +
> +/* assertion time of INTx in usec */
> +#define PCL_INTX_WIDTH_USEC		30
> +
> +struct uniphier_pcie_ep_priv {
> +	void __iomem *base;
> +	struct dw_pcie pci;
> +	struct clk *clk, *clk_gio;
> +	struct reset_control *rst, *rst_gio;
> +	struct phy *phy;
> +	const struct pci_epc_features *features;
> +};
> +
> +#define to_uniphier_pcie(x)	dev_get_drvdata((x)->dev)
> +
> +static void uniphier_pcie_ltssm_enable(struct uniphier_pcie_ep_priv *priv,
> +				       bool enable)
> +{
> +	u32 val;
> +
> +	val = readl(priv->base + PCL_APP_READY_CTRL);
> +	if (enable)
> +		val |= PCL_APP_LTSSM_ENABLE;
> +	else
> +		val &= ~PCL_APP_LTSSM_ENABLE;
> +	writel(val, priv->base + PCL_APP_READY_CTRL);
> +}
> +
> +static void uniphier_pcie_phy_reset(struct uniphier_pcie_ep_priv *priv,
> +				    bool assert)
> +{
> +	u32 val;
> +
> +	val = readl(priv->base + PCL_RSTCTRL2);
> +	if (assert)
> +		val |= PCL_RSTCTRL_PHY_RESET;
> +	else
> +		val &= ~PCL_RSTCTRL_PHY_RESET;
> +	writel(val, priv->base + PCL_RSTCTRL2);
> +}
> +
> +static void uniphier_pcie_init_ep(struct uniphier_pcie_ep_priv *priv)
> +{
> +	u32 val;
> +
> +	/* set EP mode */
> +	val = readl(priv->base + PCL_MODE);
> +	val |= PCL_MODE_REGEN | PCL_MODE_REGVAL;
> +	writel(val, priv->base + PCL_MODE);
> +
> +	/* clock request */
> +	val = readl(priv->base + PCL_APP_CLK_CTRL);
> +	val &= ~PCL_APP_CLK_REQ;
> +	writel(val, priv->base + PCL_APP_CLK_CTRL);
> +
> +	/* deassert PIPE3 and AXI reset */
> +	val = readl(priv->base + PCL_RSTCTRL0);
> +	val |= PCL_RSTCTRL_AXI_REG | PCL_RSTCTRL_AXI_SLAVE
> +		| PCL_RSTCTRL_AXI_MASTER | PCL_RSTCTRL_PIPE3;
> +	writel(val, priv->base + PCL_RSTCTRL0);
> +
> +	uniphier_pcie_ltssm_enable(priv, false);
> +
> +	msleep(100);
> +}
> +
> +static int uniphier_pcie_start_link(struct dw_pcie *pci)
> +{
> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> +
> +	uniphier_pcie_ltssm_enable(priv, true);
> +
> +	return 0;
> +}
> +
> +static void uniphier_pcie_stop_link(struct dw_pcie *pci)
> +{
> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> +
> +	uniphier_pcie_ltssm_enable(priv, false);
> +}
> +
> +static void uniphier_pcie_ep_init(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	enum pci_barno bar;
> +
> +	for (bar = BAR_0; bar <= BAR_5; bar++)
> +		dw_pcie_ep_reset_bar(pci, bar);
> +}
> +
> +static int uniphier_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> +	u32 val;
> +
> +	/* assert INTx */
> +	val = readl(priv->base + PCL_APP_INTX);
> +	val |= PCL_APP_INTX_SYS_INT;
> +	writel(val, priv->base + PCL_APP_INTX);
> +
> +	udelay(PCL_INTX_WIDTH_USEC);

What happens if you are preempted here?

> +
> +	/* deassert INTx */
> +	val &= ~PCL_APP_INTX_SYS_INT;
> +	writel(val, priv->base + PCL_APP_INTX);

Any locking needed around this RMWW?

Aren't PCI legacy interrupts level triggered and this should only be 
cleared when the cause is masked?

> +
> +	return 0;
> +}
> +
> +static int uniphier_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep,
> +					  u8 func_no, u16 interrupt_num)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> +	u32 val;
> +
> +	val = FIELD_PREP(PCL_APP_VEN_MSI_TC_MASK, func_no)
> +		| FIELD_PREP(PCL_APP_VEN_MSI_VECTOR_MASK, interrupt_num - 1);
> +	writel(val, priv->base + PCL_APP_MSI0);
> +
> +	val = readl(priv->base + PCL_APP_MSI1);
> +	val |= PCL_APP_MSI_REQ;
> +	writel(val, priv->base + PCL_APP_MSI1);
> +
> +	return 0;
> +}
> +
> +static int uniphier_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
> +				      enum pci_epc_irq_type type,
> +				      u16 interrupt_num)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +
> +	switch (type) {
> +	case PCI_EPC_IRQ_LEGACY:
> +		return uniphier_pcie_ep_raise_legacy_irq(ep);
> +	case PCI_EPC_IRQ_MSI:
> +		return uniphier_pcie_ep_raise_msi_irq(ep, func_no,
> +						      interrupt_num);
> +	default:
> +		dev_err(pci->dev, "UNKNOWN IRQ type (%d)\n", type);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct pci_epc_features*
> +uniphier_pcie_get_features(struct dw_pcie_ep *ep)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
> +
> +	return priv->features;
> +}
> +
> +static const struct dw_pcie_ep_ops uniphier_pcie_ep_ops = {
> +	.ep_init = uniphier_pcie_ep_init,
> +	.raise_irq = uniphier_pcie_ep_raise_irq,
> +	.get_features = uniphier_pcie_get_features,
> +};
> +
> +static int uniphier_add_pcie_ep(struct uniphier_pcie_ep_priv *priv,
> +				struct platform_device *pdev)
> +{
> +	struct dw_pcie *pci = &priv->pci;
> +	struct dw_pcie_ep *ep = &pci->ep;
> +	struct device *dev = &pdev->dev;
> +	struct resource *res;
> +	int ret;
> +
> +	ep->ops = &uniphier_pcie_ep_ops;
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi2");
> +	pci->dbi_base2 = devm_ioremap_resource(dev, res);

devm_ioremap_resource_byname

> +	if (IS_ERR(pci->dbi_base2))
> +		return PTR_ERR(pci->dbi_base2);
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
> +	if (!res)
> +		return -EINVAL;
> +
> +	ep->phys_base = res->start;
> +	ep->addr_size = resource_size(res);
> +
> +	ret = dw_pcie_ep_init(ep);
> +	if (ret)
> +		dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);
> +
> +	return ret;
> +}
> +
> +static int uniphier_pcie_ep_enable(struct uniphier_pcie_ep_priv *priv)
> +{
> +	int ret;
> +
> +	ret = clk_prepare_enable(priv->clk);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(priv->clk_gio);
> +	if (ret)
> +		goto out_clk_disable;
> +
> +	ret = reset_control_deassert(priv->rst);
> +	if (ret)
> +		goto out_clk_gio_disable;
> +
> +	ret = reset_control_deassert(priv->rst_gio);
> +	if (ret)
> +		goto out_rst_assert;
> +
> +	uniphier_pcie_init_ep(priv);
> +
> +	uniphier_pcie_phy_reset(priv, true);
> +
> +	ret = phy_init(priv->phy);
> +	if (ret)
> +		goto out_rst_gio_assert;
> +
> +	uniphier_pcie_phy_reset(priv, false);
> +
> +	return 0;
> +
> +out_rst_gio_assert:
> +	reset_control_assert(priv->rst_gio);
> +out_rst_assert:
> +	reset_control_assert(priv->rst);
> +out_clk_gio_disable:
> +	clk_disable_unprepare(priv->clk_gio);
> +out_clk_disable:
> +	clk_disable_unprepare(priv->clk);
> +
> +	return ret;
> +}
> +
> +static const struct dw_pcie_ops dw_pcie_ops = {
> +	.start_link = uniphier_pcie_start_link,
> +	.stop_link = uniphier_pcie_stop_link,
> +};
> +
> +static int uniphier_pcie_ep_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct uniphier_pcie_ep_priv *priv;
> +	struct resource *res;
> +	int ret;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	priv->features = of_device_get_match_data(dev);
> +	if (WARN_ON(!priv->features))
> +		return -EINVAL;
> +
> +	priv->pci.dev = dev;
> +	priv->pci.ops = &dw_pcie_ops;
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
> +	priv->pci.dbi_base = devm_pci_remap_cfg_resource(dev, res);
> +	if (IS_ERR(priv->pci.dbi_base))
> +		return PTR_ERR(priv->pci.dbi_base);
> +
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "link");
> +	priv->base = devm_ioremap_resource(dev, res);

devm_ioremap_resource_byname()

> +	if (IS_ERR(priv->base))
> +		return PTR_ERR(priv->base);
> +
> +	priv->clk_gio = devm_clk_get(dev, "gio");
> +	if (IS_ERR(priv->clk))
> +		return PTR_ERR(priv->clk);
> +
> +	priv->rst_gio = devm_reset_control_get_shared(dev, "gio");
> +	if (IS_ERR(priv->rst_gio))
> +		return PTR_ERR(priv->rst_gio);
> +
> +	priv->clk = devm_clk_get(dev, "link");
> +	if (IS_ERR(priv->clk))
> +		return PTR_ERR(priv->clk);
> +
> +	priv->rst = devm_reset_control_get_shared(dev, "link");
> +	if (IS_ERR(priv->rst))
> +		return PTR_ERR(priv->rst);
> +
> +	priv->phy = devm_phy_optional_get(dev, "pcie-phy");
> +	if (IS_ERR(priv->phy)) {
> +		ret = PTR_ERR(priv->phy);
> +		dev_err(dev, "Failed to get phy (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	platform_set_drvdata(pdev, priv);
> +
> +	ret = uniphier_pcie_ep_enable(priv);
> +	if (ret)
> +		return ret;
> +
> +	return uniphier_add_pcie_ep(priv, pdev);
> +}
> +
> +static const struct pci_epc_features uniphier_pro5_data = {
> +	.linkup_notifier = false,
> +	.msi_capable = true,
> +	.msix_capable = false,
> +	.align = 1 << 16,
> +	.bar_fixed_64bit = BIT(BAR_0) | BIT(BAR_2) | BIT(BAR_4),
> +	.reserved_bar =  BIT(BAR_4),
> +};
> +
> +static const struct of_device_id uniphier_pcie_ep_match[] = {
> +	{
> +		.compatible = "socionext,uniphier-pro5-pcie-ep",
> +		.data = &uniphier_pro5_data,
> +	},
> +	{ /* sentinel */ },
> +};
> +
> +static struct platform_driver uniphier_pcie_ep_driver = {
> +	.probe  = uniphier_pcie_ep_probe,
> +	.driver = {
> +		.name = "uniphier-pcie-ep",
> +		.of_match_table = uniphier_pcie_ep_match,
> +		.suppress_bind_attrs = true,
> +	},
> +};
> +builtin_platform_driver(uniphier_pcie_ep_driver);

Why not a module?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
