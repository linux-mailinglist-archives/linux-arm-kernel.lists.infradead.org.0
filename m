Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F85192D20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 16:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DO7iW80pTqOIjYmYv9BRwbOepZPk1cHgdnc0THbFmR4=; b=Va5CWRYAc6go4eObHkWIF+6osv
	FUF+Qj05+P4uPpg/yw/9QKiM0rHzNLhC27Q8TQF5zgrUB9hsE35puqGzuvISumBuFj4JI57pWVx3p
	yhPlZSsfAOXdmZH4haP53kwtmalRhrerfTzsBpI5q3bK39OzK/oxNgKQAMq7KhQtqZcec095Pu+C+
	FZbblSVAJcoGffj/7/GbOtvBCZ9h8my1hrU3xFRDo5+KaAbXyQCrRrzxpUsdgY2t0g1l3wmOubLDo
	qv2+Ur0xAfxsLnQx/rkhLK5HzgyBw68KxXJGRNmcHNSa0CzKlENsFyDW6B+bWA1L9nr2OOyj/Citx
	9+7DR6+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8Bu-0003Bv-QO; Wed, 25 Mar 2020 15:43:38 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH87y-000787-2v
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 15:39:35 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BC5A3200561;
 Wed, 25 Mar 2020 16:39:32 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id AE5D22000D4;
 Wed, 25 Mar 2020 16:39:32 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 05BFC203CE;
 Wed, 25 Mar 2020 16:39:31 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v2 12/13] reset: imx: Add audiomix reset controller support
Date: Wed, 25 Mar 2020 17:38:50 +0200
Message-Id: <1585150731-3354-13-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
References: <1585150731-3354-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_083934_414221_7E957D90 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The imx-mix MFD driver registers some devices, one of which, in case of
audiomix, maps correctly to a reset controller type. This driver registers
a reset controller for that. For now, only the EARC specific resets are added.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/reset/Kconfig              |   7 +++
 drivers/reset/Makefile             |   1 +
 drivers/reset/reset-imx-audiomix.c | 122 +++++++++++++++++++++++++++++++++++++
 3 files changed, 130 insertions(+)
 create mode 100644 drivers/reset/reset-imx-audiomix.c

diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index d9efbfd..2f8d9b3 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -81,6 +81,13 @@ config RESET_INTEL_GW
 	  Say Y to control the reset signals provided by reset controller.
 	  Otherwise, say N.
 
+config RESET_IMX_AUDIOMIX
+	bool "i.MX Audiomix Reset Driver" if COMPILE_TEST
+	depends on HAS_IOMEM
+	default ARCH_MXC
+	help
+	  This enables the audiomix reset controller driver for i.MX SoCs.
+
 config RESET_LANTIQ
 	bool "Lantiq XWAY Reset Driver" if COMPILE_TEST
 	default SOC_TYPE_XWAY
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 249ed35..cf23d38 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
 obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
+obj-$(CONFIG_RESET_IMX_AUDIOMIX) += reset-imx-audiomix.o
 obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
 obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
 obj-$(CONFIG_RESET_MESON) += reset-meson.o
diff --git a/drivers/reset/reset-imx-audiomix.c b/drivers/reset/reset-imx-audiomix.c
new file mode 100644
index 00000000..d1c62ef
--- /dev/null
+++ b/drivers/reset/reset-imx-audiomix.c
@@ -0,0 +1,122 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ */
+
+#include <dt-bindings/reset/imx-audiomix-reset.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset-controller.h>
+
+#define IMX_AUDIOMIX_EARC_CTRL_REG	0x200
+
+#define IMX_AUDIOMIX_EARC_RESET_BIT	0x0
+#define IMX_AUDIOMIX_EARC_PHY_RESET_BIT	0x1
+
+struct imx_audiomix_reset_data {
+	void __iomem *base;
+	struct reset_controller_dev rcdev;
+	spinlock_t lock;
+};
+
+static int imx_audiomix_reset_set(struct reset_controller_dev *rcdev,
+			  unsigned long id, bool assert)
+{
+	struct imx_audiomix_reset_data *drvdata = container_of(rcdev,
+			struct imx_audiomix_reset_data, rcdev);
+	void __iomem *reg_addr = drvdata->base;
+	unsigned long flags;
+	unsigned int offset;
+	u32 reg;
+
+	switch (id) {
+	case IMX_AUDIOMIX_EARC_PHY_RESET:
+		reg_addr += IMX_AUDIOMIX_EARC_CTRL_REG;
+		offset = IMX_AUDIOMIX_EARC_PHY_RESET_BIT;
+		break;
+	case IMX_AUDIOMIX_EARC_RESET:
+		reg_addr += IMX_AUDIOMIX_EARC_CTRL_REG;
+		offset = IMX_AUDIOMIX_EARC_RESET_BIT;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (assert) {
+		pm_runtime_get_sync(rcdev->dev);
+		spin_lock_irqsave(&drvdata->lock, flags);
+		reg = readl(reg_addr);
+		writel(reg & ~BIT(offset), reg_addr);
+		spin_unlock_irqrestore(&drvdata->lock, flags);
+	} else {
+		spin_lock_irqsave(&drvdata->lock, flags);
+		reg = readl(reg_addr);
+		writel(reg | BIT(offset), reg_addr);
+		spin_unlock_irqrestore(&drvdata->lock, flags);
+		pm_runtime_put(rcdev->dev);
+	}
+
+	return 0;
+}
+
+static int imx_audiomix_reset_assert(struct reset_controller_dev *rcdev,
+			     unsigned long id)
+{
+	return imx_audiomix_reset_set(rcdev, id, true);
+}
+
+static int imx_audiomix_reset_deassert(struct reset_controller_dev *rcdev,
+			       unsigned long id)
+{
+	return imx_audiomix_reset_set(rcdev, id, false);
+}
+
+static const struct reset_control_ops imx_audiomix_reset_ops = {
+	.assert		= imx_audiomix_reset_assert,
+	.deassert	= imx_audiomix_reset_deassert,
+};
+
+static int imx_audiomix_reset_probe(struct platform_device *pdev)
+{
+	struct imx_audiomix_reset_data *drvdata;
+	struct device *dev = &pdev->dev;
+
+	drvdata = devm_kzalloc(&pdev->dev, sizeof(*drvdata), GFP_KERNEL);
+	if (drvdata == NULL)
+		return -ENOMEM;
+
+	drvdata->base = dev_get_drvdata(dev->parent);
+
+	platform_set_drvdata(pdev, drvdata);
+
+	pm_runtime_enable(dev);
+
+	spin_lock_init(&drvdata->lock);
+
+	drvdata->rcdev.owner     = THIS_MODULE;
+	drvdata->rcdev.nr_resets = IMX_AUDIOMIX_RESET_NUM;
+	drvdata->rcdev.ops       = &imx_audiomix_reset_ops;
+	drvdata->rcdev.of_node   = dev->of_node;
+	drvdata->rcdev.dev	 = dev;
+
+	return devm_reset_controller_register(dev, &drvdata->rcdev);
+}
+
+static const struct of_device_id imx_audiomix_reset_dt_ids[] = {
+	{ .compatible = "fsl,imx8mp-audiomix-reset", },
+	{ /* sentinel */ },
+};
+
+static struct platform_driver imx_audiomix_reset_driver = {
+	.probe	= imx_audiomix_reset_probe,
+	.driver = {
+		.name		= KBUILD_MODNAME,
+		.of_match_table	= imx_audiomix_reset_dt_ids,
+	},
+};
+module_platform_driver(imx_audiomix_reset_driver);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
