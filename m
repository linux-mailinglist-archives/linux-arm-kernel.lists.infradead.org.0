Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A72C71CA623
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 10:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IejiEAA1uDtVbOlBkBR8NMHQF1xoQl/Tcrh/aVtrU3Q=; b=kUo5N2f9+AK0wggerxi+q+CFF
	Jsb427HbJjyE5eYuique9lgAI5NZqgway2xxAv7C2Dei7feWOSELNUyYcMVaFCdUj3dheflU1Ux9I
	Whr2k0kDiQwmIPB4wERju6TMyRIW+0ptUKKqsuXZR7vl/KloYxVRRNT1Lp9jWlkiMhe60h3T1FP5v
	GlG2HzvfGi4qyis/EqBJvZwH3M8/FbVBHa0N4SxTuPTLti44FUrLPPNS52dEeEOiVosta8HWOlbNG
	ZRTh9BVgSCCWjNubmCYq5Vr8k8qxYygOwJfqo3QtIWllI6Wz9c7lq7eCgVRMo12FXtyOZA+RLrPBf
	FqPi2vF7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWyRM-0005f4-QO; Fri, 08 May 2020 08:33:04 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWyRB-0005ej-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 08:32:56 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 08 May 2020 17:32:50 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id CFA8E60057;
 Fri,  8 May 2020 17:32:50 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 8 May 2020 17:32:50 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 764371A01BB;
 Fri,  8 May 2020 17:32:50 +0900 (JST)
Received: from [10.213.29.153] (unknown [10.213.29.153])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 9312D12013D;
 Fri,  8 May 2020 17:32:49 +0900 (JST)
Subject: Re: [PATCH v3 2/2] PCI: uniphier: Add Socionext UniPhier Pro5 PCIe
 endpoint controller driver
To: Rob Herring <robh@kernel.org>
References: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1584956454-8829-3-git-send-email-hayashi.kunihiko@socionext.com>
 <20200507193353.GA21821@bogus>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <bb92b3a0-04f2-4487-e601-a4a631fe40ce@socionext.com>
Date: Fri, 8 May 2020 17:32:49 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200507193353.GA21821@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_013254_075250_0EA0D5BA 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
Thank you for your comment.

On 2020/05/08 4:33, Rob Herring wrote:
> On Mon, Mar 23, 2020 at 06:40:54PM +0900, Kunihiko Hayashi wrote:
>> Add driver for the Socionext UniPhier Pro5 SoC endpoint controller.
>> This controller is based on the DesignWare PCIe core.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   MAINTAINERS                                   |   2 +-
>>   drivers/pci/controller/dwc/Kconfig            |  13 +-
>>   drivers/pci/controller/dwc/Makefile           |   1 +
>>   drivers/pci/controller/dwc/pcie-uniphier-ep.c | 380 ++++++++++++++++++++++++++
>>   4 files changed, 393 insertions(+), 3 deletions(-)
>>   create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c
>>
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 01a4631..95d296b 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -13152,7 +13152,7 @@ M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>   L:	linux-pci@vger.kernel.org
>>   S:	Maintained
>>   F:	Documentation/devicetree/bindings/pci/uniphier-pcie*.txt
>> -F:	drivers/pci/controller/dwc/pcie-uniphier.c
>> +F:	drivers/pci/controller/dwc/pcie-uniphier*.c
>>   
>>   PCIE DRIVER FOR ST SPEAR13XX
>>   M:	Pratyush Anand <pratyush.anand@gmail.com>
>> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
>> index 169cde5..4dd5ba9 100644
>> --- a/drivers/pci/controller/dwc/Kconfig
>> +++ b/drivers/pci/controller/dwc/Kconfig
>> @@ -282,15 +282,24 @@ config PCIE_TEGRA194_EP
>>   	  selected. This uses the DesignWare core.
>>   
>>   config PCIE_UNIPHIER
>> -	bool "Socionext UniPhier PCIe controllers"
>> +	bool "Socionext UniPhier PCIe host controllers"
>>   	depends on ARCH_UNIPHIER || COMPILE_TEST
>>   	depends on OF && HAS_IOMEM
>>   	depends on PCI_MSI_IRQ_DOMAIN
>>   	select PCIE_DW_HOST
>>   	help
>> -	  Say Y here if you want PCIe controller support on UniPhier SoCs.
>> +	  Say Y here if you want PCIe host controller support on UniPhier SoCs.
>>   	  This driver supports LD20 and PXs3 SoCs.
>>   
>> +config PCIE_UNIPHIER_EP
>> +	bool "Socionext UniPhier PCIe endpoint controllers"
>> +	depends on ARCH_UNIPHIER || COMPILE_TEST
>> +	depends on OF && HAS_IOMEM
>> +	select PCIE_DW_EP
>> +	help
>> +	  Say Y here if you want PCIe endpoint controller support on
>> +	  UniPhier SoCs. This driver supports Pro5 SoC.
>> +
>>   config PCIE_AL
>>   	bool "Amazon Annapurna Labs PCIe controller"
>>   	depends on OF && (ARM64 || COMPILE_TEST)
>> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
>> index 8a637cf..a751553 100644
>> --- a/drivers/pci/controller/dwc/Makefile
>> +++ b/drivers/pci/controller/dwc/Makefile
>> @@ -19,6 +19,7 @@ obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
>>   obj-$(CONFIG_PCI_MESON) += pci-meson.o
>>   obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
>>   obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
>> +obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
>>   
>>   # The following drivers are for devices that use the generic ACPI
>>   # pci_root.c driver but don't support standard ECAM config access.
>> diff --git a/drivers/pci/controller/dwc/pcie-uniphier-ep.c b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
>> new file mode 100644
>> index 0000000..71db49f
>> --- /dev/null
>> +++ b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
>> @@ -0,0 +1,380 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * PCIe endpoint controller driver for UniPhier SoCs
>> + * Copyright 2018 Socionext Inc.
>> + * Author: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> + */
>> +
>> +#include <linux/bitops.h>
>> +#include <linux/bitfield.h>
>> +#include <linux/clk.h>
>> +#include <linux/delay.h>
>> +#include <linux/init.h>
>> +#include <linux/of_device.h>
>> +#include <linux/pci.h>
>> +#include <linux/phy/phy.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/reset.h>
>> +
>> +#include "pcie-designware.h"
>> +
>> +/* Link Glue registers */
>> +#define PCL_RSTCTRL0			0x0010
>> +#define PCL_RSTCTRL_AXI_REG		BIT(3)
>> +#define PCL_RSTCTRL_AXI_SLAVE		BIT(2)
>> +#define PCL_RSTCTRL_AXI_MASTER		BIT(1)
>> +#define PCL_RSTCTRL_PIPE3		BIT(0)
>> +
>> +#define PCL_RSTCTRL1			0x0020
>> +#define PCL_RSTCTRL_PERST		BIT(0)
>> +
>> +#define PCL_RSTCTRL2			0x0024
>> +#define PCL_RSTCTRL_PHY_RESET		BIT(0)
>> +
>> +#define PCL_MODE			0x8000
>> +#define PCL_MODE_REGEN			BIT(8)
>> +#define PCL_MODE_REGVAL			BIT(0)
>> +
>> +#define PCL_APP_CLK_CTRL		0x8004
>> +#define PCL_APP_CLK_REQ			BIT(0)
>> +
>> +#define PCL_APP_READY_CTRL		0x8008
>> +#define PCL_APP_LTSSM_ENABLE		BIT(0)
>> +
>> +#define PCL_APP_MSI0			0x8040
>> +#define PCL_APP_VEN_MSI_TC_MASK		GENMASK(10, 8)
>> +#define PCL_APP_VEN_MSI_VECTOR_MASK	GENMASK(4, 0)
>> +
>> +#define PCL_APP_MSI1			0x8044
>> +#define PCL_APP_MSI_REQ			BIT(0)
>> +
>> +#define PCL_APP_INTX			0x8074
>> +#define PCL_APP_INTX_SYS_INT		BIT(0)
>> +
>> +/* assertion time of INTx in usec */
>> +#define PCL_INTX_WIDTH_USEC		30
>> +
>> +struct uniphier_pcie_ep_priv {
>> +	void __iomem *base;
>> +	struct dw_pcie pci;
>> +	struct clk *clk, *clk_gio;
>> +	struct reset_control *rst, *rst_gio;
>> +	struct phy *phy;
>> +	const struct pci_epc_features *features;
>> +};
>> +
>> +#define to_uniphier_pcie(x)	dev_get_drvdata((x)->dev)
>> +
>> +static void uniphier_pcie_ltssm_enable(struct uniphier_pcie_ep_priv *priv,
>> +				       bool enable)
>> +{
>> +	u32 val;
>> +
>> +	val = readl(priv->base + PCL_APP_READY_CTRL);
>> +	if (enable)
>> +		val |= PCL_APP_LTSSM_ENABLE;
>> +	else
>> +		val &= ~PCL_APP_LTSSM_ENABLE;
>> +	writel(val, priv->base + PCL_APP_READY_CTRL);
>> +}
>> +
>> +static void uniphier_pcie_phy_reset(struct uniphier_pcie_ep_priv *priv,
>> +				    bool assert)
>> +{
>> +	u32 val;
>> +
>> +	val = readl(priv->base + PCL_RSTCTRL2);
>> +	if (assert)
>> +		val |= PCL_RSTCTRL_PHY_RESET;
>> +	else
>> +		val &= ~PCL_RSTCTRL_PHY_RESET;
>> +	writel(val, priv->base + PCL_RSTCTRL2);
>> +}
>> +
>> +static void uniphier_pcie_init_ep(struct uniphier_pcie_ep_priv *priv)
>> +{
>> +	u32 val;
>> +
>> +	/* set EP mode */
>> +	val = readl(priv->base + PCL_MODE);
>> +	val |= PCL_MODE_REGEN | PCL_MODE_REGVAL;
>> +	writel(val, priv->base + PCL_MODE);
>> +
>> +	/* clock request */
>> +	val = readl(priv->base + PCL_APP_CLK_CTRL);
>> +	val &= ~PCL_APP_CLK_REQ;
>> +	writel(val, priv->base + PCL_APP_CLK_CTRL);
>> +
>> +	/* deassert PIPE3 and AXI reset */
>> +	val = readl(priv->base + PCL_RSTCTRL0);
>> +	val |= PCL_RSTCTRL_AXI_REG | PCL_RSTCTRL_AXI_SLAVE
>> +		| PCL_RSTCTRL_AXI_MASTER | PCL_RSTCTRL_PIPE3;
>> +	writel(val, priv->base + PCL_RSTCTRL0);
>> +
>> +	uniphier_pcie_ltssm_enable(priv, false);
>> +
>> +	msleep(100);
>> +}
>> +
>> +static int uniphier_pcie_start_link(struct dw_pcie *pci)
>> +{
>> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
>> +
>> +	uniphier_pcie_ltssm_enable(priv, true);
>> +
>> +	return 0;
>> +}
>> +
>> +static void uniphier_pcie_stop_link(struct dw_pcie *pci)
>> +{
>> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
>> +
>> +	uniphier_pcie_ltssm_enable(priv, false);
>> +}
>> +
>> +static void uniphier_pcie_ep_init(struct dw_pcie_ep *ep)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>> +	enum pci_barno bar;
>> +
>> +	for (bar = BAR_0; bar <= BAR_5; bar++)
>> +		dw_pcie_ep_reset_bar(pci, bar);
>> +}
>> +
>> +static int uniphier_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
>> +	u32 val;
>> +
>> +	/* assert INTx */
>> +	val = readl(priv->base + PCL_APP_INTX);
>> +	val |= PCL_APP_INTX_SYS_INT;
>> +	writel(val, priv->base + PCL_APP_INTX);
>> +
>> +	udelay(PCL_INTX_WIDTH_USEC);
> 
> What happens if you are preempted here?

If deasserting INTx is postponed, the RC might receive more interrupts
from EP depending on the interrupt setting.

> 
>> +
>> +	/* deassert INTx */
>> +	val &= ~PCL_APP_INTX_SYS_INT;
>> +	writel(val, priv->base + PCL_APP_INTX);
> 
> Any locking needed around this RMWW?

This function is called from pci_epc_raise_irq() via dw_pcie_ep_raise_irq().
In pci_epc_raise_irq(), this is covered with mutex.

> 
> Aren't PCI legacy interrupts level triggered and this should only be
> cleared when the cause is masked?

This function makes one-shot pulse signal to send INTx to the RC, so this
should be cleared as soon as possible.

> 
>> +
>> +	return 0;
>> +}
>> +
>> +static int uniphier_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep,
>> +					  u8 func_no, u16 interrupt_num)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
>> +	u32 val;
>> +
>> +	val = FIELD_PREP(PCL_APP_VEN_MSI_TC_MASK, func_no)
>> +		| FIELD_PREP(PCL_APP_VEN_MSI_VECTOR_MASK, interrupt_num - 1);
>> +	writel(val, priv->base + PCL_APP_MSI0);
>> +
>> +	val = readl(priv->base + PCL_APP_MSI1);
>> +	val |= PCL_APP_MSI_REQ;
>> +	writel(val, priv->base + PCL_APP_MSI1);
>> +
>> +	return 0;
>> +}
>> +
>> +static int uniphier_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
>> +				      enum pci_epc_irq_type type,
>> +				      u16 interrupt_num)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>> +
>> +	switch (type) {
>> +	case PCI_EPC_IRQ_LEGACY:
>> +		return uniphier_pcie_ep_raise_legacy_irq(ep);
>> +	case PCI_EPC_IRQ_MSI:
>> +		return uniphier_pcie_ep_raise_msi_irq(ep, func_no,
>> +						      interrupt_num);
>> +	default:
>> +		dev_err(pci->dev, "UNKNOWN IRQ type (%d)\n", type);
>> +	}
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct pci_epc_features*
>> +uniphier_pcie_get_features(struct dw_pcie_ep *ep)
>> +{
>> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>> +	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
>> +
>> +	return priv->features;
>> +}
>> +
>> +static const struct dw_pcie_ep_ops uniphier_pcie_ep_ops = {
>> +	.ep_init = uniphier_pcie_ep_init,
>> +	.raise_irq = uniphier_pcie_ep_raise_irq,
>> +	.get_features = uniphier_pcie_get_features,
>> +};
>> +
>> +static int uniphier_add_pcie_ep(struct uniphier_pcie_ep_priv *priv,
>> +				struct platform_device *pdev)
>> +{
>> +	struct dw_pcie *pci = &priv->pci;
>> +	struct dw_pcie_ep *ep = &pci->ep;
>> +	struct device *dev = &pdev->dev;
>> +	struct resource *res;
>> +	int ret;
>> +
>> +	ep->ops = &uniphier_pcie_ep_ops;
>> +
>> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi2");
>> +	pci->dbi_base2 = devm_ioremap_resource(dev, res);
> 
> devm_ioremap_resource_byname

Okay, I'll replace with it.

> 
>> +	if (IS_ERR(pci->dbi_base2))
>> +		return PTR_ERR(pci->dbi_base2);
>> +
>> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
>> +	if (!res)
>> +		return -EINVAL;
>> +
>> +	ep->phys_base = res->start;
>> +	ep->addr_size = resource_size(res);
>> +
>> +	ret = dw_pcie_ep_init(ep);
>> +	if (ret)
>> +		dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);
>> +
>> +	return ret;
>> +}
>> +
>> +static int uniphier_pcie_ep_enable(struct uniphier_pcie_ep_priv *priv)
>> +{
>> +	int ret;
>> +
>> +	ret = clk_prepare_enable(priv->clk);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = clk_prepare_enable(priv->clk_gio);
>> +	if (ret)
>> +		goto out_clk_disable;
>> +
>> +	ret = reset_control_deassert(priv->rst);
>> +	if (ret)
>> +		goto out_clk_gio_disable;
>> +
>> +	ret = reset_control_deassert(priv->rst_gio);
>> +	if (ret)
>> +		goto out_rst_assert;
>> +
>> +	uniphier_pcie_init_ep(priv);
>> +
>> +	uniphier_pcie_phy_reset(priv, true);
>> +
>> +	ret = phy_init(priv->phy);
>> +	if (ret)
>> +		goto out_rst_gio_assert;
>> +
>> +	uniphier_pcie_phy_reset(priv, false);
>> +
>> +	return 0;
>> +
>> +out_rst_gio_assert:
>> +	reset_control_assert(priv->rst_gio);
>> +out_rst_assert:
>> +	reset_control_assert(priv->rst);
>> +out_clk_gio_disable:
>> +	clk_disable_unprepare(priv->clk_gio);
>> +out_clk_disable:
>> +	clk_disable_unprepare(priv->clk);
>> +
>> +	return ret;
>> +}
>> +
>> +static const struct dw_pcie_ops dw_pcie_ops = {
>> +	.start_link = uniphier_pcie_start_link,
>> +	.stop_link = uniphier_pcie_stop_link,
>> +};
>> +
>> +static int uniphier_pcie_ep_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct uniphier_pcie_ep_priv *priv;
>> +	struct resource *res;
>> +	int ret;
>> +
>> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
>> +	if (!priv)
>> +		return -ENOMEM;
>> +
>> +	priv->features = of_device_get_match_data(dev);
>> +	if (WARN_ON(!priv->features))
>> +		return -EINVAL;
>> +
>> +	priv->pci.dev = dev;
>> +	priv->pci.ops = &dw_pcie_ops;
>> +
>> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
>> +	priv->pci.dbi_base = devm_pci_remap_cfg_resource(dev, res);
>> +	if (IS_ERR(priv->pci.dbi_base))
>> +		return PTR_ERR(priv->pci.dbi_base);
>> +
>> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "link");
>> +	priv->base = devm_ioremap_resource(dev, res);
> 
> devm_ioremap_resource_byname()

Ditto.

> 
>> +	if (IS_ERR(priv->base))
>> +		return PTR_ERR(priv->base);
>> +
>> +	priv->clk_gio = devm_clk_get(dev, "gio");
>> +	if (IS_ERR(priv->clk))
>> +		return PTR_ERR(priv->clk);
>> +
>> +	priv->rst_gio = devm_reset_control_get_shared(dev, "gio");
>> +	if (IS_ERR(priv->rst_gio))
>> +		return PTR_ERR(priv->rst_gio);
>> +
>> +	priv->clk = devm_clk_get(dev, "link");
>> +	if (IS_ERR(priv->clk))
>> +		return PTR_ERR(priv->clk);
>> +
>> +	priv->rst = devm_reset_control_get_shared(dev, "link");
>> +	if (IS_ERR(priv->rst))
>> +		return PTR_ERR(priv->rst);
>> +
>> +	priv->phy = devm_phy_optional_get(dev, "pcie-phy");
>> +	if (IS_ERR(priv->phy)) {
>> +		ret = PTR_ERR(priv->phy);
>> +		dev_err(dev, "Failed to get phy (%d)\n", ret);
>> +		return ret;
>> +	}
>> +
>> +	platform_set_drvdata(pdev, priv);
>> +
>> +	ret = uniphier_pcie_ep_enable(priv);
>> +	if (ret)
>> +		return ret;
>> +
>> +	return uniphier_add_pcie_ep(priv, pdev);
>> +}
>> +
>> +static const struct pci_epc_features uniphier_pro5_data = {
>> +	.linkup_notifier = false,
>> +	.msi_capable = true,
>> +	.msix_capable = false,
>> +	.align = 1 << 16,
>> +	.bar_fixed_64bit = BIT(BAR_0) | BIT(BAR_2) | BIT(BAR_4),
>> +	.reserved_bar =  BIT(BAR_4),
>> +};
>> +
>> +static const struct of_device_id uniphier_pcie_ep_match[] = {
>> +	{
>> +		.compatible = "socionext,uniphier-pro5-pcie-ep",
>> +		.data = &uniphier_pro5_data,
>> +	},
>> +	{ /* sentinel */ },
>> +};
>> +
>> +static struct platform_driver uniphier_pcie_ep_driver = {
>> +	.probe  = uniphier_pcie_ep_probe,
>> +	.driver = {
>> +		.name = "uniphier-pcie-ep",
>> +		.of_match_table = uniphier_pcie_ep_match,
>> +		.suppress_bind_attrs = true,
>> +	},
>> +};
>> +builtin_platform_driver(uniphier_pcie_ep_driver);
> 
> Why not a module?

This controller is based on DesignWare Core IP, and this driver is also
based on pcie-designware-ep.c. Since this dwc driver doesn't have a remove
function, like the UniPhier PCIe host drivers, I think it's hard to finalize
the controller safely.

Thank you,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
