Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61F120004E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 04:37:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Od0hrMCoGX5Hju4exWCQCZ8EHBWyaoIm36nTGLN2I7Y=; b=nI2p5t6zpagDC/kt3aq6GvShAH
	R+SRUELHIxM3ZkNLeM6F9Ef6jAIlnrFJ5m6fn2VfEOz5BfRHfy/1tDQTgaSGYyagmo+quSvd5u4my
	Ue+De7073LbpzXxm6YcjWP1LPJ0O6s7zT6OYdwoZS6XAJ9iKXRm6iBCiWfR/XxF59EEeZvFficJu3
	PmfrQroXrAwFnjV0ZnASe8/nkwHhsDGtJVIFhK9UeBD//QIEKpVDg96mQagtewDhcLma4tEqGlpEI
	nQ4hOM7GQPBFQgtnfKlCO4IQabP4/j4X5He1qwJ38m+EImqVMe08VxY1dx8P7Pk2VfIuv/BMOBpX7
	H4AyKL5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6uU-0007YG-AV; Fri, 19 Jun 2020 02:37:42 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6tk-000748-2q
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 02:36:58 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 19 Jun 2020 11:36:52 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 882A8180224;
 Fri, 19 Jun 2020 11:36:52 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 19 Jun 2020 11:36:52 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 1558C1A0E67;
 Fri, 19 Jun 2020 11:36:52 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 2/2] phy: socionext: Add UniPhier AHCI PHY driver support
Date: Fri, 19 Jun 2020 11:36:47 +0900
Message-Id: <1592534207-13550-3-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592534207-13550-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1592534207-13550-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_193656_613476_269AD3BE 
X-CRM114-Status: GOOD (  21.71  )
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a driver for PHY interface built into ahci controller implemented
in UniPhier SoCs. This supports PXs2 and PXs3 SoCs.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/Kconfig             |  10 +
 drivers/phy/socionext/Makefile            |   1 +
 drivers/phy/socionext/phy-uniphier-ahci.c | 335 ++++++++++++++++++++++++++++++
 3 files changed, 346 insertions(+)
 create mode 100644 drivers/phy/socionext/phy-uniphier-ahci.c

diff --git a/drivers/phy/socionext/Kconfig b/drivers/phy/socionext/Kconfig
index 8c9d7c3..a3970e0 100644
--- a/drivers/phy/socionext/Kconfig
+++ b/drivers/phy/socionext/Kconfig
@@ -34,3 +34,13 @@ config PHY_UNIPHIER_PCIE
 	help
 	  Enable this to support PHY implemented in PCIe controller
 	  on UniPhier SoCs. This driver supports LD20 and PXs3 SoCs.
+
+config PHY_UNIPHIER_AHCI
+	tristate "UniPhier AHCI PHY driver"
+	depends on ARCH_UNIPHIER || COMPILE_TEST
+	depends on OF && HAS_IOMEM
+	default SATA_AHCI_PLATFORM
+	select GENERIC_PHY
+	help
+	  Enable this to support PHY implemented in AHCI controller
+	  on UniPhier SoCs. This driver supports PXs2 and PXs3 SoCs.
diff --git a/drivers/phy/socionext/Makefile b/drivers/phy/socionext/Makefile
index 7dc9095..e67c2da 100644
--- a/drivers/phy/socionext/Makefile
+++ b/drivers/phy/socionext/Makefile
@@ -6,3 +6,4 @@
 obj-$(CONFIG_PHY_UNIPHIER_USB2)	+= phy-uniphier-usb2.o
 obj-$(CONFIG_PHY_UNIPHIER_USB3)	+= phy-uniphier-usb3hs.o phy-uniphier-usb3ss.o
 obj-$(CONFIG_PHY_UNIPHIER_PCIE)	+= phy-uniphier-pcie.o
+obj-$(CONFIG_PHY_UNIPHIER_AHCI)	+= phy-uniphier-ahci.o
diff --git a/drivers/phy/socionext/phy-uniphier-ahci.c b/drivers/phy/socionext/phy-uniphier-ahci.c
new file mode 100644
index 0000000..7b2cd37
--- /dev/null
+++ b/drivers/phy/socionext/phy-uniphier-ahci.c
@@ -0,0 +1,335 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * phy-uniphier-ahci.c - PHY driver for UniPhier AHCI controller
+ * Copyright 2016-2018, Socionext Inc.
+ * Author: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
+struct uniphier_ahciphy_priv {
+	struct device *dev;
+	void __iomem  *base;
+	struct clk *clk, *clk_parent;
+	struct reset_control *rst, *rst_parent;
+	const struct uniphier_ahciphy_soc_data *data;
+};
+
+struct uniphier_ahciphy_soc_data {
+	int (*init)(struct uniphier_ahciphy_priv *priv);
+	int (*power_on)(struct uniphier_ahciphy_priv *priv);
+	int (*power_off)(struct uniphier_ahciphy_priv *priv);
+	bool is_ready_high;
+	bool is_phy_clk;
+};
+
+/* for PXs2/PXs3 */
+#define CKCTRL				0x0
+#define CKCTRL_P0_READY			BIT(15)
+#define CKCTRL_P0_RESET			BIT(10)
+#define CKCTRL_REF_SSP_EN		BIT(9)
+#define TXCTRL0				0x4
+#define TXCTRL0_AMP_G3_MASK		GENMASK(22, 16)
+#define TXCTRL0_AMP_G2_MASK		GENMASK(14, 8)
+#define TXCTRL0_AMP_G1_MASK		GENMASK(6, 0)
+#define TXCTRL1				0x8
+#define TXCTRL1_DEEMPH_G3_MASK		GENMASK(21, 16)
+#define TXCTRL1_DEEMPH_G2_MASK		GENMASK(13, 8)
+#define TXCTRL1_DEEMPH_G1_MASK		GENMASK(5, 0)
+#define RXCTRL				0xc
+#define RXCTRL_LOS_LVL_MASK		GENMASK(20, 16)
+#define RXCTRL_LOS_BIAS_MASK		GENMASK(10, 8)
+#define RXCTRL_RX_EQ_MASK		GENMASK(2, 0)
+
+static int uniphier_ahciphy_pxs2_power_on(struct uniphier_ahciphy_priv *priv)
+{
+	int ret;
+	u32 val;
+
+	/* enable reference clock for PHY */
+	val = readl(priv->base + CKCTRL);
+	val |= CKCTRL_REF_SSP_EN;
+	writel(val, priv->base + CKCTRL);
+
+	/* release port reset */
+	val = readl(priv->base + CKCTRL);
+	val &= ~CKCTRL_P0_RESET;
+	writel(val, priv->base + CKCTRL);
+
+	/* wait until PLL is ready */
+	if (priv->data->is_ready_high)
+		ret = readl_poll_timeout(priv->base + CKCTRL, val,
+					 (val & CKCTRL_P0_READY), 200, 400);
+	else
+		ret = readl_poll_timeout(priv->base + CKCTRL, val,
+					 !(val & CKCTRL_P0_READY), 200, 400);
+	if (ret) {
+		dev_err(priv->dev, "Failed to check whether PHY PLL is ready\n");
+		goto out_disable_clock;
+	}
+
+	return 0;
+
+out_disable_clock:
+	/* assert port reset */
+	val = readl(priv->base + CKCTRL);
+	val |= CKCTRL_P0_RESET;
+	writel(val, priv->base + CKCTRL);
+
+	/* disable reference clock for PHY */
+	val = readl(priv->base + CKCTRL);
+	val &= ~CKCTRL_REF_SSP_EN;
+	writel(val, priv->base + CKCTRL);
+
+	return ret;
+}
+
+static int uniphier_ahciphy_pxs2_power_off(struct uniphier_ahciphy_priv *priv)
+{
+	u32 val;
+
+	/* assert port reset */
+	val = readl(priv->base + CKCTRL);
+	val |= CKCTRL_P0_RESET;
+	writel(val, priv->base + CKCTRL);
+
+	/* disable reference clock for PHY */
+	val = readl(priv->base + CKCTRL);
+	val &= ~CKCTRL_REF_SSP_EN;
+	writel(val, priv->base + CKCTRL);
+
+	return 0;
+}
+
+static int uniphier_ahciphy_pxs3_init(struct uniphier_ahciphy_priv *priv)
+{
+	int i;
+	u32 val;
+
+	/* setup port parameter */
+	val = readl(priv->base + TXCTRL0);
+	val &= ~TXCTRL0_AMP_G3_MASK;
+	val |= FIELD_PREP(TXCTRL0_AMP_G3_MASK, 0x73);
+	val &= ~TXCTRL0_AMP_G2_MASK;
+	val |= FIELD_PREP(TXCTRL0_AMP_G2_MASK, 0x46);
+	val &= ~TXCTRL0_AMP_G1_MASK;
+	val |= FIELD_PREP(TXCTRL0_AMP_G1_MASK, 0x42);
+	writel(val, priv->base + TXCTRL0);
+
+	val = readl(priv->base + TXCTRL1);
+	val &= ~TXCTRL1_DEEMPH_G3_MASK;
+	val |= FIELD_PREP(TXCTRL1_DEEMPH_G3_MASK, 0x23);
+	val &= ~TXCTRL1_DEEMPH_G2_MASK;
+	val |= FIELD_PREP(TXCTRL1_DEEMPH_G2_MASK, 0x05);
+	val &= ~TXCTRL1_DEEMPH_G1_MASK;
+	val |= FIELD_PREP(TXCTRL1_DEEMPH_G1_MASK, 0x05);
+
+	val = readl(priv->base + RXCTRL);
+	val &= ~RXCTRL_LOS_LVL_MASK;
+	val |= FIELD_PREP(RXCTRL_LOS_LVL_MASK, 0x9);
+	val &= ~RXCTRL_LOS_BIAS_MASK;
+	val |= FIELD_PREP(RXCTRL_LOS_BIAS_MASK, 0x2);
+	val &= ~RXCTRL_RX_EQ_MASK;
+	val |= FIELD_PREP(RXCTRL_RX_EQ_MASK, 0x1);
+
+	/* dummy read 25 times */
+	for (i = 0; i < 25; i++)
+		readl(priv->base + CKCTRL);
+
+	return 0;
+}
+
+static int uniphier_ahciphy_init(struct phy *phy)
+{
+	struct uniphier_ahciphy_priv *priv = phy_get_drvdata(phy);
+	int ret;
+
+	ret = clk_prepare_enable(priv->clk_parent);
+	if (ret)
+		return ret;
+
+	ret = reset_control_deassert(priv->rst_parent);
+	if (ret)
+		goto out_clk_disable;
+
+	if (priv->data->init) {
+		ret = priv->data->init(priv);
+		if (ret)
+			goto out_rst_assert;
+	}
+
+	return ret;
+
+out_rst_assert:
+	reset_control_assert(priv->rst_parent);
+out_clk_disable:
+	clk_disable_unprepare(priv->clk_parent);
+
+	return ret;
+}
+
+static int uniphier_ahciphy_exit(struct phy *phy)
+{
+	struct uniphier_ahciphy_priv *priv = phy_get_drvdata(phy);
+
+	reset_control_assert(priv->rst_parent);
+	clk_disable_unprepare(priv->clk_parent);
+
+	return 0;
+}
+
+static int uniphier_ahciphy_power_on(struct phy *phy)
+{
+	struct uniphier_ahciphy_priv *priv = phy_get_drvdata(phy);
+	int ret = 0;
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret)
+		return ret;
+
+	ret = reset_control_deassert(priv->rst);
+	if (ret)
+		goto out_clk_disable;
+
+	if (priv->data->power_on) {
+		ret = priv->data->power_on(priv);
+		if (ret)
+			goto out_reset_assert;
+	}
+
+	return 0;
+
+out_reset_assert:
+	reset_control_assert(priv->rst);
+out_clk_disable:
+	clk_disable_unprepare(priv->clk);
+
+	return ret;
+}
+
+static int uniphier_ahciphy_power_off(struct phy *phy)
+{
+	struct uniphier_ahciphy_priv *priv = phy_get_drvdata(phy);
+	int ret = 0;
+
+	if (priv->data->power_off)
+		ret = priv->data->power_off(priv);
+
+	reset_control_assert(priv->rst);
+	clk_disable_unprepare(priv->clk);
+
+	return ret;
+}
+
+
+static const struct phy_ops uniphier_ahciphy_ops = {
+	.init  = uniphier_ahciphy_init,
+	.exit  = uniphier_ahciphy_exit,
+	.power_on  = uniphier_ahciphy_power_on,
+	.power_off = uniphier_ahciphy_power_off,
+	.owner = THIS_MODULE,
+};
+
+static int uniphier_ahciphy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct uniphier_ahciphy_priv *priv;
+	struct phy *phy;
+	struct phy_provider *phy_provider;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->dev = dev;
+	priv->data = of_device_get_match_data(dev);
+	if (WARN_ON(!priv->data))
+		return -EINVAL;
+
+	priv->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(priv->base))
+		return PTR_ERR(priv->base);
+
+	priv->clk_parent = devm_clk_get(dev, "link");
+	if (IS_ERR(priv->clk_parent))
+		return PTR_ERR(priv->clk_parent);
+
+	if (priv->data->is_phy_clk) {
+		priv->clk = devm_clk_get(dev, "phy");
+		if (IS_ERR(priv->clk))
+			return PTR_ERR(priv->clk);
+	}
+
+	priv->rst_parent = devm_reset_control_get_shared(dev, "link");
+	if (IS_ERR(priv->rst_parent))
+		return PTR_ERR(priv->rst_parent);
+
+	priv->rst = devm_reset_control_get_shared(dev, "phy");
+	if (IS_ERR(priv->rst))
+		return PTR_ERR(priv->rst);
+
+	phy = devm_phy_create(dev, dev->of_node, &uniphier_ahciphy_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "failed to create phy\n");
+		return PTR_ERR(phy);
+	}
+
+	phy_set_drvdata(phy, priv);
+	phy_provider = devm_of_phy_provider_register(dev,
+						     of_phy_simple_xlate);
+	if (IS_ERR(phy_provider))
+		return PTR_ERR(phy_provider);
+
+	return 0;
+}
+
+static const struct uniphier_ahciphy_soc_data uniphier_pxs2_data = {
+	.init = NULL,
+	.power_on  = uniphier_ahciphy_pxs2_power_on,
+	.power_off = uniphier_ahciphy_pxs2_power_off,
+	.is_ready_high = false,
+	.is_phy_clk = false,
+};
+
+static const struct uniphier_ahciphy_soc_data uniphier_pxs3_data = {
+	.init      = uniphier_ahciphy_pxs3_init,
+	.power_on  = uniphier_ahciphy_pxs2_power_on,
+	.power_off = uniphier_ahciphy_pxs2_power_off,
+	.is_ready_high = true,
+	.is_phy_clk = true,
+};
+
+static const struct of_device_id uniphier_ahciphy_match[] = {
+	{
+		.compatible = "socionext,uniphier-pxs2-ahci-phy",
+		.data = &uniphier_pxs2_data,
+	},
+	{
+		.compatible = "socionext,uniphier-pxs3-ahci-phy",
+		.data = &uniphier_pxs3_data,
+	},
+	{ /* Sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, uniphier_ahciphy_match);
+
+static struct platform_driver uniphier_ahciphy_driver = {
+	.probe = uniphier_ahciphy_probe,
+	.driver = {
+		.name = "uniphier-ahci-phy",
+		.of_match_table = uniphier_ahciphy_match,
+	},
+};
+module_platform_driver(uniphier_ahciphy_driver);
+
+MODULE_AUTHOR("Kunihiko Hayashi <hayashi.kunihiko@socionext.com>");
+MODULE_DESCRIPTION("UniPhier PHY driver for AHCI controller");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
