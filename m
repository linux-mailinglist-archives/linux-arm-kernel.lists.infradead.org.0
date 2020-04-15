Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 434D41A958F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5vUSk12bT4q/aDfLmziq1fe0FY/tyjrAFNNBYp5QuaA=; b=Vq4GmrCSBz0zx79L4xH3a5KVio
	TfpF8Be5NtNJfdqhNQ+HLj3TWTJ27OZqUZ3uK6aKBIu4HDOuOZL11MqEsHCNbxJyAVnF3AQXTb8sN
	3OtR8v0QGSnIrz3LiqZdPHOYL0LQEbtoN44/vwbslsgWjxA9klKHY/usuSf27w+3U1sMXOGYJzdA6
	LEvVhNx0KW5orOPWys3NgIlwDhCsEeqx4uwyBbROazUeKp7dgANH/ymuh+YzAFnKJW8RVeQhyvO1E
	kH7NcFoPi3gfeg/rHBuRWpnIfUlhpxYWrHGAUUH3qQ+0JSmOKHCpzjtEtb6z+AMOAIig9SMUCg9QY
	sIXehQQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd4D-00048K-4x; Wed, 15 Apr 2020 08:06:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0s-0006Pv-La
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:17 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 598732007B8;
 Wed, 15 Apr 2020 10:03:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 49F24200790;
 Wed, 15 Apr 2020 10:03:13 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B012D202B0;
 Wed, 15 Apr 2020 10:03:12 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 12/13] reset: imx: Add audiomix reset controller support
Date: Wed, 15 Apr 2020 11:02:52 +0300
Message-Id: <1586937773-5836-13-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
References: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010315_010390_94C129FE 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
 drivers/reset/reset-imx-audiomix.c | 117 +++++++++++++++++++++++++++++++++++++
 3 files changed, 125 insertions(+)
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
index 00000000..9533e41
--- /dev/null
+++ b/drivers/reset/reset-imx-audiomix.c
@@ -0,0 +1,117 @@
+// SPDX-License-Identifier: GPL-2.0-only
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
+		spin_lock_irqsave(&drvdata->lock, flags);
+		reg = readl(reg_addr);
+		writel(reg & ~BIT(offset), reg_addr);
+		spin_unlock_irqrestore(&drvdata->lock, flags);
+	} else {
+		spin_lock_irqsave(&drvdata->lock, flags);
+		reg = readl(reg_addr);
+		writel(reg | BIT(offset), reg_addr);
+		spin_unlock_irqrestore(&drvdata->lock, flags);
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
