Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F1D1D2F1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VDkw0SPEaWO6kM63WY0/0o+wjsyJbKxWySf6UHqf8i8=; b=UtzZ9OblnUjWQHCz5K1CBDyDJ/
	fr1gqUIJYQAALnFWKDLKStN4+5tAr8JzL2uzJA09wfuPtrh7QsMs3izsTrF6YfZN0ZMiNy4t7N+sI
	8/dp4cw8KVheX71Nlg7yc8a4dOjwiunY3v2kY1y4TF0RRZ+hwPmt1YYNGWa9WgP4DAyNyFA6K4nGq
	2e83U05GWke2MRvL5dlp2/MKMrI4ZSJHNuYmjnxp40WqfOMnDT5nVq6qf9i2CI/qR6G/VLdKUW0Gu
	ecbCsj6uloqeFy+kV/P3z+lDDTUg5i87KpD8OQdPDuB/UlAWic/+jlWVOaiLWWuwXkPB1/I+rxX1D
	riFSV6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCb6-000701-OR; Thu, 14 May 2020 12:04:20 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCaH-0006Za-2D
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:03:31 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 14 May 2020 21:03:24 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id E889C60057;
 Thu, 14 May 2020 21:03:24 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 14 May 2020 21:03:24 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 570831A12AD;
 Thu, 14 May 2020 21:03:24 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v4 2/2] PCI: uniphier: Add Socionext UniPhier Pro5 PCIe
 endpoint controller driver
Date: Thu, 14 May 2020 21:03:21 +0900
Message-Id: <1589457801-12796-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_050329_590640_BA1ECD0D 
X-CRM114-Status: GOOD (  24.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add driver for the Socionext UniPhier Pro5 SoC endpoint controller.
This controller is based on the DesignWare PCIe core.

And add "host" to existing controller descriontions for the host controller
in Kconfig.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 MAINTAINERS                                   |   2 +-
 drivers/pci/controller/dwc/Kconfig            |  13 +-
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-uniphier-ep.c | 383 ++++++++++++++++++++++++++
 4 files changed, 396 insertions(+), 3 deletions(-)
 create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 7f26748..b5ef0e7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -13212,7 +13212,7 @@ M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
 L:	linux-pci@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/pci/uniphier-pcie*
-F:	drivers/pci/controller/dwc/pcie-uniphier.c
+F:	drivers/pci/controller/dwc/pcie-uniphier*
 
 PCIE DRIVER FOR ST SPEAR13XX
 M:	Pratyush Anand <pratyush.anand@gmail.com>
diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
index ce13fd6..43a29f7 100644
--- a/drivers/pci/controller/dwc/Kconfig
+++ b/drivers/pci/controller/dwc/Kconfig
@@ -280,15 +280,24 @@ config PCIE_TEGRA194_EP
 	  selected. This uses the DesignWare core.
 
 config PCIE_UNIPHIER
-	bool "Socionext UniPhier PCIe controllers"
+	bool "Socionext UniPhier PCIe host controllers"
 	depends on ARCH_UNIPHIER || COMPILE_TEST
 	depends on OF && HAS_IOMEM
 	depends on PCI_MSI_IRQ_DOMAIN
 	select PCIE_DW_HOST
 	help
-	  Say Y here if you want PCIe controller support on UniPhier SoCs.
+	  Say Y here if you want PCIe host controller support on UniPhier SoCs.
 	  This driver supports LD20 and PXs3 SoCs.
 
+config PCIE_UNIPHIER_EP
+	bool "Socionext UniPhier PCIe endpoint controllers"
+	depends on ARCH_UNIPHIER || COMPILE_TEST
+	depends on OF && HAS_IOMEM
+	select PCIE_DW_EP
+	help
+	  Say Y here if you want PCIe endpoint controller support on
+	  UniPhier SoCs. This driver supports Pro5 SoC.
+
 config PCIE_AL
 	bool "Amazon Annapurna Labs PCIe controller"
 	depends on OF && (ARM64 || COMPILE_TEST)
diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
index 8a637cf..a751553 100644
--- a/drivers/pci/controller/dwc/Makefile
+++ b/drivers/pci/controller/dwc/Makefile
@@ -19,6 +19,7 @@ obj-$(CONFIG_PCIE_HISI_STB) += pcie-histb.o
 obj-$(CONFIG_PCI_MESON) += pci-meson.o
 obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
 obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
+obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
 
 # The following drivers are for devices that use the generic ACPI
 # pci_root.c driver but don't support standard ECAM config access.
diff --git a/drivers/pci/controller/dwc/pcie-uniphier-ep.c b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
new file mode 100644
index 0000000..0f36aa3
--- /dev/null
+++ b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
@@ -0,0 +1,383 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe endpoint controller driver for UniPhier SoCs
+ * Copyright 2018 Socionext Inc.
+ * Author: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/init.h>
+#include <linux/of_device.h>
+#include <linux/pci.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
+#include "pcie-designware.h"
+
+/* Link Glue registers */
+#define PCL_RSTCTRL0			0x0010
+#define PCL_RSTCTRL_AXI_REG		BIT(3)
+#define PCL_RSTCTRL_AXI_SLAVE		BIT(2)
+#define PCL_RSTCTRL_AXI_MASTER		BIT(1)
+#define PCL_RSTCTRL_PIPE3		BIT(0)
+
+#define PCL_RSTCTRL1			0x0020
+#define PCL_RSTCTRL_PERST		BIT(0)
+
+#define PCL_RSTCTRL2			0x0024
+#define PCL_RSTCTRL_PHY_RESET		BIT(0)
+
+#define PCL_MODE			0x8000
+#define PCL_MODE_REGEN			BIT(8)
+#define PCL_MODE_REGVAL			BIT(0)
+
+#define PCL_APP_CLK_CTRL		0x8004
+#define PCL_APP_CLK_REQ			BIT(0)
+
+#define PCL_APP_READY_CTRL		0x8008
+#define PCL_APP_LTSSM_ENABLE		BIT(0)
+
+#define PCL_APP_MSI0			0x8040
+#define PCL_APP_VEN_MSI_TC_MASK		GENMASK(10, 8)
+#define PCL_APP_VEN_MSI_VECTOR_MASK	GENMASK(4, 0)
+
+#define PCL_APP_MSI1			0x8044
+#define PCL_APP_MSI_REQ			BIT(0)
+
+#define PCL_APP_INTX			0x8074
+#define PCL_APP_INTX_SYS_INT		BIT(0)
+
+/* assertion time of INTx in usec */
+#define PCL_INTX_WIDTH_USEC		30
+
+struct uniphier_pcie_ep_priv {
+	void __iomem *base;
+	struct dw_pcie pci;
+	struct clk *clk, *clk_gio;
+	struct reset_control *rst, *rst_gio;
+	struct phy *phy;
+	const struct pci_epc_features *features;
+};
+
+#define to_uniphier_pcie(x)	dev_get_drvdata((x)->dev)
+
+static void uniphier_pcie_ltssm_enable(struct uniphier_pcie_ep_priv *priv,
+				       bool enable)
+{
+	u32 val;
+
+	val = readl(priv->base + PCL_APP_READY_CTRL);
+	if (enable)
+		val |= PCL_APP_LTSSM_ENABLE;
+	else
+		val &= ~PCL_APP_LTSSM_ENABLE;
+	writel(val, priv->base + PCL_APP_READY_CTRL);
+}
+
+static void uniphier_pcie_phy_reset(struct uniphier_pcie_ep_priv *priv,
+				    bool assert)
+{
+	u32 val;
+
+	val = readl(priv->base + PCL_RSTCTRL2);
+	if (assert)
+		val |= PCL_RSTCTRL_PHY_RESET;
+	else
+		val &= ~PCL_RSTCTRL_PHY_RESET;
+	writel(val, priv->base + PCL_RSTCTRL2);
+}
+
+static void uniphier_pcie_init_ep(struct uniphier_pcie_ep_priv *priv)
+{
+	u32 val;
+
+	/* set EP mode */
+	val = readl(priv->base + PCL_MODE);
+	val |= PCL_MODE_REGEN | PCL_MODE_REGVAL;
+	writel(val, priv->base + PCL_MODE);
+
+	/* clock request */
+	val = readl(priv->base + PCL_APP_CLK_CTRL);
+	val &= ~PCL_APP_CLK_REQ;
+	writel(val, priv->base + PCL_APP_CLK_CTRL);
+
+	/* deassert PIPE3 and AXI reset */
+	val = readl(priv->base + PCL_RSTCTRL0);
+	val |= PCL_RSTCTRL_AXI_REG | PCL_RSTCTRL_AXI_SLAVE
+		| PCL_RSTCTRL_AXI_MASTER | PCL_RSTCTRL_PIPE3;
+	writel(val, priv->base + PCL_RSTCTRL0);
+
+	uniphier_pcie_ltssm_enable(priv, false);
+
+	msleep(100);
+}
+
+static int uniphier_pcie_start_link(struct dw_pcie *pci)
+{
+	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
+
+	uniphier_pcie_ltssm_enable(priv, true);
+
+	return 0;
+}
+
+static void uniphier_pcie_stop_link(struct dw_pcie *pci)
+{
+	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
+
+	uniphier_pcie_ltssm_enable(priv, false);
+}
+
+static void uniphier_pcie_ep_init(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	enum pci_barno bar;
+
+	for (bar = BAR_0; bar <= BAR_5; bar++)
+		dw_pcie_ep_reset_bar(pci, bar);
+}
+
+static int uniphier_pcie_ep_raise_legacy_irq(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
+	u32 val;
+
+	/*
+	 * This makes pulse signal to send INTx to the RC, so this should
+	 * be cleared as soon as possible. This sequence is covered with
+	 * mutex in pci_epc_raise_irq().
+	 */
+	/* assert INTx */
+	val = readl(priv->base + PCL_APP_INTX);
+	val |= PCL_APP_INTX_SYS_INT;
+	writel(val, priv->base + PCL_APP_INTX);
+
+	udelay(PCL_INTX_WIDTH_USEC);
+
+	/* deassert INTx */
+	val &= ~PCL_APP_INTX_SYS_INT;
+	writel(val, priv->base + PCL_APP_INTX);
+
+	return 0;
+}
+
+static int uniphier_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep,
+					  u8 func_no, u16 interrupt_num)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
+	u32 val;
+
+	val = FIELD_PREP(PCL_APP_VEN_MSI_TC_MASK, func_no)
+		| FIELD_PREP(PCL_APP_VEN_MSI_VECTOR_MASK, interrupt_num - 1);
+	writel(val, priv->base + PCL_APP_MSI0);
+
+	val = readl(priv->base + PCL_APP_MSI1);
+	val |= PCL_APP_MSI_REQ;
+	writel(val, priv->base + PCL_APP_MSI1);
+
+	return 0;
+}
+
+static int uniphier_pcie_ep_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
+				      enum pci_epc_irq_type type,
+				      u16 interrupt_num)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+
+	switch (type) {
+	case PCI_EPC_IRQ_LEGACY:
+		return uniphier_pcie_ep_raise_legacy_irq(ep);
+	case PCI_EPC_IRQ_MSI:
+		return uniphier_pcie_ep_raise_msi_irq(ep, func_no,
+						      interrupt_num);
+	default:
+		dev_err(pci->dev, "UNKNOWN IRQ type (%d)\n", type);
+	}
+
+	return 0;
+}
+
+static const struct pci_epc_features*
+uniphier_pcie_get_features(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+	struct uniphier_pcie_ep_priv *priv = to_uniphier_pcie(pci);
+
+	return priv->features;
+}
+
+static const struct dw_pcie_ep_ops uniphier_pcie_ep_ops = {
+	.ep_init = uniphier_pcie_ep_init,
+	.raise_irq = uniphier_pcie_ep_raise_irq,
+	.get_features = uniphier_pcie_get_features,
+};
+
+static int uniphier_add_pcie_ep(struct uniphier_pcie_ep_priv *priv,
+				struct platform_device *pdev)
+{
+	struct dw_pcie *pci = &priv->pci;
+	struct dw_pcie_ep *ep = &pci->ep;
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	int ret;
+
+	ep->ops = &uniphier_pcie_ep_ops;
+
+	pci->dbi_base2 = devm_platform_ioremap_resource_byname(pdev, "dbi2");
+	if (IS_ERR(pci->dbi_base2))
+		return PTR_ERR(pci->dbi_base2);
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "addr_space");
+	if (!res)
+		return -EINVAL;
+
+	ep->phys_base = res->start;
+	ep->addr_size = resource_size(res);
+
+	ret = dw_pcie_ep_init(ep);
+	if (ret)
+		dev_err(dev, "Failed to initialize endpoint (%d)\n", ret);
+
+	return ret;
+}
+
+static int uniphier_pcie_ep_enable(struct uniphier_pcie_ep_priv *priv)
+{
+	int ret;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(priv->clk_gio);
+	if (ret)
+		goto out_clk_disable;
+
+	ret = reset_control_deassert(priv->rst);
+	if (ret)
+		goto out_clk_gio_disable;
+
+	ret = reset_control_deassert(priv->rst_gio);
+	if (ret)
+		goto out_rst_assert;
+
+	uniphier_pcie_init_ep(priv);
+
+	uniphier_pcie_phy_reset(priv, true);
+
+	ret = phy_init(priv->phy);
+	if (ret)
+		goto out_rst_gio_assert;
+
+	uniphier_pcie_phy_reset(priv, false);
+
+	return 0;
+
+out_rst_gio_assert:
+	reset_control_assert(priv->rst_gio);
+out_rst_assert:
+	reset_control_assert(priv->rst);
+out_clk_gio_disable:
+	clk_disable_unprepare(priv->clk_gio);
+out_clk_disable:
+	clk_disable_unprepare(priv->clk);
+
+	return ret;
+}
+
+static const struct dw_pcie_ops dw_pcie_ops = {
+	.start_link = uniphier_pcie_start_link,
+	.stop_link = uniphier_pcie_stop_link,
+};
+
+static int uniphier_pcie_ep_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct uniphier_pcie_ep_priv *priv;
+	struct resource *res;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->features = of_device_get_match_data(dev);
+	if (WARN_ON(!priv->features))
+		return -EINVAL;
+
+	priv->pci.dev = dev;
+	priv->pci.ops = &dw_pcie_ops;
+
+	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "dbi");
+	priv->pci.dbi_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(priv->pci.dbi_base))
+		return PTR_ERR(priv->pci.dbi_base);
+
+	priv->base = devm_platform_ioremap_resource_byname(pdev, "link");
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	priv->clk_gio = devm_clk_get(dev, "gio");
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	priv->rst_gio = devm_reset_control_get_shared(dev, "gio");
+	if (IS_ERR(priv->rst_gio))
+		return PTR_ERR(priv->rst_gio);
+
+	priv->clk = devm_clk_get(dev, "link");
+	if (IS_ERR(priv->clk))
+		return PTR_ERR(priv->clk);
+
+	priv->rst = devm_reset_control_get_shared(dev, "link");
+	if (IS_ERR(priv->rst))
+		return PTR_ERR(priv->rst);
+
+	priv->phy = devm_phy_optional_get(dev, "pcie-phy");
+	if (IS_ERR(priv->phy)) {
+		ret = PTR_ERR(priv->phy);
+		dev_err(dev, "Failed to get phy (%d)\n", ret);
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, priv);
+
+	ret = uniphier_pcie_ep_enable(priv);
+	if (ret)
+		return ret;
+
+	return uniphier_add_pcie_ep(priv, pdev);
+}
+
+static const struct pci_epc_features uniphier_pro5_data = {
+	.linkup_notifier = false,
+	.msi_capable = true,
+	.msix_capable = false,
+	.align = 1 << 16,
+	.bar_fixed_64bit = BIT(BAR_0) | BIT(BAR_2) | BIT(BAR_4),
+	.reserved_bar =  BIT(BAR_4),
+};
+
+static const struct of_device_id uniphier_pcie_ep_match[] = {
+	{
+		.compatible = "socionext,uniphier-pro5-pcie-ep",
+		.data = &uniphier_pro5_data,
+	},
+	{ /* sentinel */ },
+};
+
+static struct platform_driver uniphier_pcie_ep_driver = {
+	.probe  = uniphier_pcie_ep_probe,
+	.driver = {
+		.name = "uniphier-pcie-ep",
+		.of_match_table = uniphier_pcie_ep_match,
+		.suppress_bind_attrs = true,
+	},
+};
+builtin_platform_driver(uniphier_pcie_ep_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
