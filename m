Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAEEE2F9A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4cjRdevXW2F/GjMhTHViKZhLBqUhiDGCMGmoK20Zt8=; b=TcuETgRlBhgt6t
	xxMiKuxtaY0ujWsf3R5hDpz6foRYQ5Hx3MNqN3v4+co7Sw2X1ctJcmfapg2YNltuJl0jaxZLFvYdC
	03DmESEMMMSP1e1cR/KkTiT1yJSq/KWeNmKjtg2dzb5sJg39+rjaBUqB+m7eW8KRwv7UxGTweZjND
	G593EsPYs+XzztQCglhuitZ8xwqPzrkxXyED2b/rEuxGyaoc5MyMd3kcgYy2acMBpDW9NecUjOjjW
	R7UmcCPsf2Ji1ekPLWMd1heEog/7crhtua4vLHYSSxgwGXAUfR13scUrQd5vXqfjyjF3sk7+sX5Lb
	y+IeJP8LxuYq4boHRw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNamq-0003U5-UV; Thu, 24 Oct 2019 10:56:13 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNals-0002LU-3a
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1571914507; bh=uGTdAoYyNuqCp07zW5PJZ5ee6k1Wnq8ZFKa2bRRaOpA=;
 h=From:To:Cc:Subject:Date:References:From;
 b=T0qVjW/ty7mxlrj4Dxl6YXSCbPyo71CQZVFE2+UggknpKw0YhCuDJOwIZ3MtHwcOs
 Ryqukf3BHVerp1aLCAQY2JGwRQ0s8ZvLRSIJmyRpslHzozRF9nxiDlag1VMkn05vLr
 Rg2Z774kIgmCccLfsVmt67akSQDypoDfEunujSsw=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Icenowy Zheng <icenowy@aosc.io>, Thomas Gleixner <tglx@linutronix.de>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 2/4] phy: allwinner: add phy driver for USB3 PHY on
 Allwinner H6 SoC
Date: Thu, 24 Oct 2019 12:54:58 +0200
Message-Id: <20191024105500.2252707-3-megous@megous.com>
In-Reply-To: <20191024105500.2252707-1-megous@megous.com>
References: <20191024105500.2252707-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_035512_315337_62402D98 
X-CRM114-Status: GOOD (  18.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

Allwinner H6 SoC contains a USB3 PHY (with USB2 DP/DM lines also
controlled).

Add a driver for it.

The register operations in this driver is mainly extracted from the BSP
USB3 driver.

Signed-off-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
Acked-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/phy/allwinner/Kconfig           |  12 ++
 drivers/phy/allwinner/Makefile          |   1 +
 drivers/phy/allwinner/phy-sun50i-usb3.c | 195 ++++++++++++++++++++++++
 3 files changed, 208 insertions(+)
 create mode 100644 drivers/phy/allwinner/phy-sun50i-usb3.c

diff --git a/drivers/phy/allwinner/Kconfig b/drivers/phy/allwinner/Kconfig
index 215425296c77..fcae35ddd430 100644
--- a/drivers/phy/allwinner/Kconfig
+++ b/drivers/phy/allwinner/Kconfig
@@ -45,3 +45,15 @@ config PHY_SUN9I_USB
 	  sun9i SoCs.
 
 	  This driver controls each individual USB 2 host PHY.
+
+config PHY_SUN50I_USB3
+	tristate "Allwinner sun50i SoC USB3 PHY driver"
+	depends on ARCH_SUNXI && HAS_IOMEM && OF
+	depends on RESET_CONTROLLER
+	select USB_COMMON
+	select GENERIC_PHY
+	help
+	  Enable this to support the USB3.0-capable transceiver that is
+	  part of some Allwinner sun50i SoCs.
+
+	  This driver controls each individual USB 2+3 host PHY combo.
diff --git a/drivers/phy/allwinner/Makefile b/drivers/phy/allwinner/Makefile
index 799a65c0b58d..bd74901a1255 100644
--- a/drivers/phy/allwinner/Makefile
+++ b/drivers/phy/allwinner/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_PHY_SUN4I_USB)		+= phy-sun4i-usb.o
 obj-$(CONFIG_PHY_SUN6I_MIPI_DPHY)	+= phy-sun6i-mipi-dphy.o
 obj-$(CONFIG_PHY_SUN9I_USB)		+= phy-sun9i-usb.o
+obj-$(CONFIG_PHY_SUN50I_USB3)		+= phy-sun50i-usb3.o
diff --git a/drivers/phy/allwinner/phy-sun50i-usb3.c b/drivers/phy/allwinner/phy-sun50i-usb3.c
new file mode 100644
index 000000000000..8e170a4d0a11
--- /dev/null
+++ b/drivers/phy/allwinner/phy-sun50i-usb3.c
@@ -0,0 +1,195 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Allwinner sun50i(H6) USB 3.0 phy driver
+ *
+ * Copyright (C) 2017 Icenowy Zheng <icenowy@aosc.io>
+ *
+ * Based on phy-sun9i-usb.c, which is:
+ *
+ * Copyright (C) 2014-2015 Chen-Yu Tsai <wens@csie.org>
+ *
+ * Based on code from Allwinner BSP, which is:
+ *
+ * Copyright (c) 2010-2015 Allwinner Technology Co., Ltd.
+ */
+
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/phy/phy.h>
+#include <linux/usb/of.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+
+/* Interface Status and Control Registers */
+#define SUNXI_ISCR			0x00
+#define SUNXI_PIPE_CLOCK_CONTROL	0x14
+#define SUNXI_PHY_TUNE_LOW		0x18
+#define SUNXI_PHY_TUNE_HIGH		0x1c
+#define SUNXI_PHY_EXTERNAL_CONTROL	0x20
+
+/* USB2.0 Interface Status and Control Register */
+#define SUNXI_ISCR_FORCE_VBUS		(3 << 12)
+
+/* PIPE Clock Control Register */
+#define SUNXI_PCC_PIPE_CLK_OPEN		(1 << 6)
+
+/* PHY External Control Register */
+#define SUNXI_PEC_EXTERN_VBUS		(3 << 1)
+#define SUNXI_PEC_SSC_EN		(1 << 24)
+#define SUNXI_PEC_REF_SSP_EN		(1 << 26)
+
+/* PHY Tune High Register */
+#define SUNXI_TX_DEEMPH_3P5DB(n)	((n) << 19)
+#define SUNXI_TX_DEEMPH_3P5DB_MASK	GENMASK(24, 19)
+#define SUNXI_TX_DEEMPH_6DB(n)		((n) << 13)
+#define SUNXI_TX_DEEMPH_6GB_MASK	GENMASK(18, 13)
+#define SUNXI_TX_SWING_FULL(n)		((n) << 6)
+#define SUNXI_TX_SWING_FULL_MASK	GENMASK(12, 6)
+#define SUNXI_LOS_BIAS(n)		((n) << 3)
+#define SUNXI_LOS_BIAS_MASK		GENMASK(5, 3)
+#define SUNXI_TXVBOOSTLVL(n)		((n) << 0)
+#define SUNXI_TXVBOOSTLVL_MASK		GENMASK(0, 2)
+
+struct sun50i_usb3_phy {
+	struct phy *phy;
+	void __iomem *regs;
+	struct reset_control *reset;
+	struct clk *clk;
+};
+
+static void sun50i_usb3_phy_open(struct sun50i_usb3_phy *phy)
+{
+	u32 val;
+
+	val = readl(phy->regs + SUNXI_PHY_EXTERNAL_CONTROL);
+	val |= SUNXI_PEC_EXTERN_VBUS;
+	val |= SUNXI_PEC_SSC_EN | SUNXI_PEC_REF_SSP_EN;
+	writel(val, phy->regs + SUNXI_PHY_EXTERNAL_CONTROL);
+
+	val = readl(phy->regs + SUNXI_PIPE_CLOCK_CONTROL);
+	val |= SUNXI_PCC_PIPE_CLK_OPEN;
+	writel(val, phy->regs + SUNXI_PIPE_CLOCK_CONTROL);
+
+	val = readl(phy->regs + SUNXI_ISCR);
+	val |= SUNXI_ISCR_FORCE_VBUS;
+	writel(val, phy->regs + SUNXI_ISCR);
+
+	/*
+	 * All the magic numbers written to the PHY_TUNE_{LOW_HIGH}
+	 * registers are directly taken from the BSP USB3 driver from
+	 * Allwiner.
+	 */
+	writel(0x0047fc87, phy->regs + SUNXI_PHY_TUNE_LOW);
+
+	val = readl(phy->regs + SUNXI_PHY_TUNE_HIGH);
+	val &= ~(SUNXI_TXVBOOSTLVL_MASK | SUNXI_LOS_BIAS_MASK |
+		 SUNXI_TX_SWING_FULL_MASK | SUNXI_TX_DEEMPH_6GB_MASK |
+		 SUNXI_TX_DEEMPH_3P5DB_MASK);
+	val |= SUNXI_TXVBOOSTLVL(0x7);
+	val |= SUNXI_LOS_BIAS(0x7);
+	val |= SUNXI_TX_SWING_FULL(0x55);
+	val |= SUNXI_TX_DEEMPH_6DB(0x20);
+	val |= SUNXI_TX_DEEMPH_3P5DB(0x15);
+	writel(val, phy->regs + SUNXI_PHY_TUNE_HIGH);
+}
+
+static int sun50i_usb3_phy_init(struct phy *_phy)
+{
+	struct sun50i_usb3_phy *phy = phy_get_drvdata(_phy);
+	int ret;
+
+	ret = clk_prepare_enable(phy->clk);
+	if (ret)
+		goto err_clk;
+
+	ret = reset_control_deassert(phy->reset);
+	if (ret)
+		goto err_reset;
+
+	sun50i_usb3_phy_open(phy);
+	return 0;
+
+err_reset:
+	clk_disable_unprepare(phy->clk);
+
+err_clk:
+	return ret;
+}
+
+static int sun50i_usb3_phy_exit(struct phy *_phy)
+{
+	struct sun50i_usb3_phy *phy = phy_get_drvdata(_phy);
+
+	reset_control_assert(phy->reset);
+	clk_disable_unprepare(phy->clk);
+
+	return 0;
+}
+
+static const struct phy_ops sun50i_usb3_phy_ops = {
+	.init		= sun50i_usb3_phy_init,
+	.exit		= sun50i_usb3_phy_exit,
+	.owner		= THIS_MODULE,
+};
+
+static int sun50i_usb3_phy_probe(struct platform_device *pdev)
+{
+	struct sun50i_usb3_phy *phy;
+	struct device *dev = &pdev->dev;
+	struct phy_provider *phy_provider;
+	struct resource *res;
+
+	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
+	if (!phy)
+		return -ENOMEM;
+
+	phy->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(phy->clk)) {
+		if (PTR_ERR(phy->clk) != -EPROBE_DEFER)
+			dev_err(dev, "failed to get phy clock\n");
+		return PTR_ERR(phy->clk);
+	}
+
+	phy->reset = devm_reset_control_get(dev, NULL);
+	if (IS_ERR(phy->reset)) {
+		dev_err(dev, "failed to get reset control\n");
+		return PTR_ERR(phy->reset);
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	phy->regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(phy->regs))
+		return PTR_ERR(phy->regs);
+
+	phy->phy = devm_phy_create(dev, NULL, &sun50i_usb3_phy_ops);
+	if (IS_ERR(phy->phy)) {
+		dev_err(dev, "failed to create PHY\n");
+		return PTR_ERR(phy->phy);
+	}
+
+	phy_set_drvdata(phy->phy, phy);
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct of_device_id sun50i_usb3_phy_of_match[] = {
+	{ .compatible = "allwinner,sun50i-h6-usb3-phy" },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, sun50i_usb3_phy_of_match);
+
+static struct platform_driver sun50i_usb3_phy_driver = {
+	.probe	= sun50i_usb3_phy_probe,
+	.driver = {
+		.of_match_table	= sun50i_usb3_phy_of_match,
+		.name  = "sun50i-usb3-phy",
+	}
+};
+module_platform_driver(sun50i_usb3_phy_driver);
+
+MODULE_DESCRIPTION("Allwinner sun50i USB 3.0 phy driver");
+MODULE_AUTHOR("Icenowy Zheng <icenowy@aosc.io>");
+MODULE_LICENSE("GPL");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
