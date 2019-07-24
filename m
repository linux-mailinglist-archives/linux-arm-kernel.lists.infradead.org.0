Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E4672F16
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TEkjTWLjA7e7kDQF8R+e7qn63xyu+9Ot/3I6pdTms9k=; b=dKHf2kuxaLckBGEE5l/XhzJ1Bt
	OgKlgLL34bDbdQZIXOmqv4VGpnkficm+0yuXsURd4nhmtQDSVg0MoCV2IwJ0jwJueL32/nP/po7tJ
	3iFZTHOc8idSBfproN1hXzG4Fqwzn/+jFk925eBpCuG3quy9t6tvMyNi66wEaa41FKzanlUYKQyDS
	URNgIoiqbyeg2OtORIbRUiYZUcV+Oi1L/jNJIvzLT/vBL1XWN7rM4SJhBde+mOX2HyYUqfMG2TCDb
	qROMPVBSpbAGuqyL48LqqMJWlOGaOILqFj6mMfdEx84Vh98C2fQvbAja1WGJxmMT7J2kmhfzq0hzL
	aHR7XkSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGYk-000380-Cd; Wed, 24 Jul 2019 12:39:54 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGXo-0002Pm-9N
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:38:58 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AD5491A0238;
 Wed, 24 Jul 2019 14:38:53 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E3081A01C7;
 Wed, 24 Jul 2019 14:38:53 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 960AA205D8;
 Wed, 24 Jul 2019 14:38:52 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Will Deacon <will@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [RFCv3 2/3] PM / devfreq: Add imx driver
Date: Wed, 24 Jul 2019 15:38:45 +0300
Message-Id: <8e74aef9a208c911f01b9de35c6f07e1f111b940.1563971855.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1563971855.git.leonard.crestez@nxp.com>
References: <cover.1563971855.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1563971855.git.leonard.crestez@nxp.com>
References: <cover.1563971855.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053856_621131_32F6B821 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Frank Li <Frank.li@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Alexandre Bailon <abailon@baylibre.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial support for frequency switching on pieces of the imx
interconnect fabric.

Uses clk_set_min_rate so that other subsytems can also impose minimum
rate requests.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/Kconfig       |  10 +++
 drivers/devfreq/Makefile      |   1 +
 drivers/devfreq/imx-devfreq.c | 143 ++++++++++++++++++++++++++++++++++
 3 files changed, 154 insertions(+)
 create mode 100644 drivers/devfreq/imx-devfreq.c

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index defe1d438710..dc3311ead538 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -90,10 +90,20 @@ config ARM_EXYNOS_BUS_DEVFREQ
 	  Each memory bus group could contain many memoby bus block. It reads
 	  PPMU counters of memory controllers by using DEVFREQ-event device
 	  and adjusts the operating frequencies and voltages with OPP support.
 	  This does not yet operate with optimal voltages.
 
+config ARM_IMX_DEVFREQ
+	tristate "i.MX DEVFREQ Driver"
+	depends on ARCH_MXC || COMPILE_TEST
+	select DEVFREQ_GOV_USERSPACE
+	select PM_OPP
+	help
+	  This adds the DEVFREQ driver for the i.MX family of SoCs.
+	  It allows adjusting frequencies for DDRC (DDR Controller) and various
+	  NICs and NOCs which form the SOC interconnect fabric
+
 config ARM_TEGRA_DEVFREQ
 	tristate "NVIDIA Tegra30/114/124/210 DEVFREQ Driver"
 	depends on ARCH_TEGRA_3x_SOC || ARCH_TEGRA_114_SOC || \
 		ARCH_TEGRA_132_SOC || ARCH_TEGRA_124_SOC || \
 		ARCH_TEGRA_210_SOC || \
diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
index 338ae8440db6..c2463ed4c934 100644
--- a/drivers/devfreq/Makefile
+++ b/drivers/devfreq/Makefile
@@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
 obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
 obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
 
 # DEVFREQ Drivers
 obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
+obj-$(CONFIG_ARM_IMX_DEVFREQ)		+= imx-devfreq.o
 obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
 obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
 obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
 
 # DEVFREQ Event Drivers
diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
new file mode 100644
index 000000000000..3ee2d37883c6
--- /dev/null
+++ b/drivers/devfreq/imx-devfreq.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 NXP
+ */
+
+#include <linux/clk.h>
+#include <linux/devfreq.h>
+#include <linux/devfreq-event.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/pm_opp.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+struct imx_devfreq {
+	struct devfreq_dev_profile profile;
+	struct devfreq *devfreq;
+	struct clk *clk;
+};
+
+static int imx_devfreq_target(struct device *dev, unsigned long *freq, u32 flags)
+{
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+	struct dev_pm_opp *new_opp;
+	unsigned long new_freq;
+	int ret;
+
+	new_opp = devfreq_recommended_opp(dev, freq, flags);
+	if (IS_ERR(new_opp)) {
+		ret = PTR_ERR(new_opp);
+		dev_err(dev, "failed to get recommended opp: %d\n", ret);
+		return ret;
+	}
+	new_freq = dev_pm_opp_get_freq(new_opp);
+	dev_pm_opp_put(new_opp);
+
+	ret = clk_set_min_rate(priv->clk, new_freq);
+	if (ret)
+		return ret;
+
+	ret = clk_set_rate(priv->clk, 0);
+	if (ret) {
+		clk_set_min_rate(priv->clk, priv->devfreq->previous_freq);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int imx_devfreq_get_cur_freq(struct device *dev, unsigned long *freq)
+{
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+
+	*freq = clk_get_rate(priv->clk);
+
+	return 0;
+}
+
+static int imx_devfreq_get_dev_status(struct device *dev,
+		struct devfreq_dev_status *stat)
+{
+	struct imx_devfreq *priv = dev_get_drvdata(dev);
+
+	stat->busy_time = 0;
+	stat->total_time = 0;
+	stat->current_frequency = clk_get_rate(priv->clk);
+
+	return 0;
+}
+
+static void imx_devfreq_exit(struct device *dev)
+{
+	return dev_pm_opp_of_remove_table(dev);
+}
+
+static int imx_devfreq_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct imx_devfreq *priv;
+	const char *gov = DEVFREQ_GOV_USERSPACE;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(priv->devfreq)) {
+		ret = PTR_ERR(priv->devfreq);
+		dev_err(dev, "failed to fetch clk: %d\n", ret);
+		return ret;
+	}
+	platform_set_drvdata(pdev, priv);
+
+	ret = dev_pm_opp_of_add_table(dev);
+	if (ret < 0) {
+		dev_err(dev, "failed to get OPP table\n");
+		return ret;
+	}
+
+	priv->profile.polling_ms = 1000;
+	priv->profile.target = imx_devfreq_target;
+	priv->profile.get_dev_status = imx_devfreq_get_dev_status;
+	priv->profile.exit = imx_devfreq_exit;
+	priv->profile.get_cur_freq = imx_devfreq_get_cur_freq;
+	priv->profile.initial_freq = clk_get_rate(priv->clk);
+
+	priv->devfreq = devm_devfreq_add_device(dev, &priv->profile,
+						gov, NULL);
+	if (IS_ERR(priv->devfreq)) {
+		ret = PTR_ERR(priv->devfreq);
+		dev_err(dev, "failed to add devfreq device: %d\n", ret);
+		goto err;
+	}
+
+	return 0;
+
+err:
+	dev_pm_opp_of_remove_table(dev);
+	return ret;
+}
+
+static const struct of_device_id imx_devfreq_of_match[] = {
+	{ .compatible = "fsl,imx8m-ddrc", },
+	{ .compatible = "fsl,imx8m-noc", },
+	{ .compatible = "fsl,imx8m-nic", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
+
+static struct platform_driver imx_devfreq_platdrv = {
+	.probe		= imx_devfreq_probe,
+	.driver = {
+		.name	= "imx-devfreq",
+		.of_match_table = of_match_ptr(imx_devfreq_of_match),
+	},
+};
+module_platform_driver(imx_devfreq_platdrv);
+
+MODULE_DESCRIPTION("Generic i.MX bus frequency driver");
+MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
