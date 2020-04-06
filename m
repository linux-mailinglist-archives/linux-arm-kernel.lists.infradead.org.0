Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B4C19F579
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 14:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gLXPz6TpFOkUmi/DrG7dozQ05APlM5TELcfPur6bhQ8=; b=S38cwJS2N4/CpvY0S/3gHxlhgZ
	523BnYZtjFc2DZHlQ0OyiRd4IC/dnXXwGNKAdn9CynCGJG9Wesl0p6OQp0VFO0817G0fWL4xcKNs7
	7HoPjHubttZVGbk48FAWRwq3Ry+WbMDHyA2pVfGKFgeHKZinsvQtbNAwpviPMWxv7y4rT6jXE0Eae
	ncmviPLL6LnYuI8DJpbj+QM/E80qDoU0S8A/so2Uf6A9ERQVb8l52PUdpXVQPClcAnRfWXxYKhBgL
	F1NHtaxVcUdX/+Ua0edlUMNLDbXtBNK4gciRdmelVrL40YExcjQny9E7l9NYsS597G5fRdeBjYp8X
	BAPv1kBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLQTn-0003ZR-CJ; Mon, 06 Apr 2020 12:03:51 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLQTJ-0003Jx-Mk
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 12:03:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 770C51A0DE0;
 Mon,  6 Apr 2020 14:03:20 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 581461A0DC9;
 Mon,  6 Apr 2020 14:03:20 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 88409204E6;
 Mon,  6 Apr 2020 14:03:18 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v3 2/8] PM / devfreq: Add generic imx bus scaling driver
Date: Mon,  6 Apr 2020 15:03:07 +0300
Message-Id: <af1fd3a339a37123ee36179efcb90600c1e0f746.1586174566.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1586174566.git.leonard.crestez@nxp.com>
References: <cover.1586174566.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_050322_019190_358B51AB 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add initial support for dynamic frequency switching on pieces of the imx
interconnect fabric.

All this driver does is set a clk rate based on an opp table, it does
not map register areas.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Tested-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 drivers/devfreq/Kconfig   |   8 +++
 drivers/devfreq/Makefile  |   1 +
 drivers/devfreq/imx-bus.c | 138 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 147 insertions(+)
 create mode 100644 drivers/devfreq/imx-bus.c

diff --git a/drivers/devfreq/Kconfig b/drivers/devfreq/Kconfig
index 0b1df12e0f21..37dc40d1fcfb 100644
--- a/drivers/devfreq/Kconfig
+++ b/drivers/devfreq/Kconfig
@@ -89,10 +89,18 @@ config ARM_EXYNOS_BUS_DEVFREQ
 	  Each memory bus group could contain many memoby bus block. It reads
 	  PPMU counters of memory controllers by using DEVFREQ-event device
 	  and adjusts the operating frequencies and voltages with OPP support.
 	  This does not yet operate with optimal voltages.
 
+config ARM_IMX_BUS_DEVFREQ
+	tristate "i.MX Generic Bus DEVFREQ Driver"
+	depends on ARCH_MXC || COMPILE_TEST
+	select DEVFREQ_GOV_USERSPACE
+	help
+	  This adds the generic DEVFREQ driver for i.MX interconnects. It
+	  allows adjusting NIC/NOC frequency.
+
 config ARM_IMX8M_DDRC_DEVFREQ
 	tristate "i.MX8M DDRC DEVFREQ Driver"
 	depends on (ARCH_MXC && HAVE_ARM_SMCCC) || \
 		(COMPILE_TEST && HAVE_ARM_SMCCC)
 	select DEVFREQ_GOV_SIMPLE_ONDEMAND
diff --git a/drivers/devfreq/Makefile b/drivers/devfreq/Makefile
index 3eb4d5e6635c..3ca1ad0ecb97 100644
--- a/drivers/devfreq/Makefile
+++ b/drivers/devfreq/Makefile
@@ -7,10 +7,11 @@ obj-$(CONFIG_DEVFREQ_GOV_POWERSAVE)	+= governor_powersave.o
 obj-$(CONFIG_DEVFREQ_GOV_USERSPACE)	+= governor_userspace.o
 obj-$(CONFIG_DEVFREQ_GOV_PASSIVE)	+= governor_passive.o
 
 # DEVFREQ Drivers
 obj-$(CONFIG_ARM_EXYNOS_BUS_DEVFREQ)	+= exynos-bus.o
+obj-$(CONFIG_ARM_IMX_BUS_DEVFREQ)	+= imx-bus.o
 obj-$(CONFIG_ARM_IMX8M_DDRC_DEVFREQ)	+= imx8m-ddrc.o
 obj-$(CONFIG_ARM_RK3399_DMC_DEVFREQ)	+= rk3399_dmc.o
 obj-$(CONFIG_ARM_TEGRA_DEVFREQ)		+= tegra30-devfreq.o
 obj-$(CONFIG_ARM_TEGRA20_DEVFREQ)	+= tegra20-devfreq.o
 
diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
new file mode 100644
index 000000000000..428f7980a2f2
--- /dev/null
+++ b/drivers/devfreq/imx-bus.c
@@ -0,0 +1,138 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP
+ */
+
+#include <linux/clk.h>
+#include <linux/devfreq.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/pm_opp.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+struct imx_bus {
+	struct devfreq_dev_profile profile;
+	struct devfreq *devfreq;
+	struct clk *clk;
+};
+
+static int imx_bus_target(struct device *dev,
+		unsigned long *freq, u32 flags)
+{
+	struct dev_pm_opp *new_opp;
+	int ret;
+
+	new_opp = devfreq_recommended_opp(dev, freq, flags);
+	if (IS_ERR(new_opp)) {
+		ret = PTR_ERR(new_opp);
+		dev_err(dev, "failed to get recommended opp: %d\n", ret);
+		return ret;
+	}
+	dev_pm_opp_put(new_opp);
+
+	return dev_pm_opp_set_rate(dev, *freq);
+}
+
+static int imx_bus_get_cur_freq(struct device *dev, unsigned long *freq)
+{
+	struct imx_bus *priv = dev_get_drvdata(dev);
+
+	*freq = clk_get_rate(priv->clk);
+
+	return 0;
+}
+
+static int imx_bus_get_dev_status(struct device *dev,
+		struct devfreq_dev_status *stat)
+{
+	struct imx_bus *priv = dev_get_drvdata(dev);
+
+	stat->busy_time = 0;
+	stat->total_time = 0;
+	stat->current_frequency = clk_get_rate(priv->clk);
+
+	return 0;
+}
+
+static void imx_bus_exit(struct device *dev)
+{
+	dev_pm_opp_of_remove_table(dev);
+}
+
+static int imx_bus_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct imx_bus *priv;
+	const char *gov = DEVFREQ_GOV_USERSPACE;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	/*
+	 * Fetch the clock to adjust but don't explicitly enable.
+	 *
+	 * For imx bus clock clk_set_rate is safe no matter if the clock is on
+	 * or off and some peripheral side-buses might be off unless enabled by
+	 * drivers for devices on those specific buses.
+	 *
+	 * Rate adjustment on a disabled bus clock just takes effect later.
+	 */
+	priv->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		ret = PTR_ERR(priv->clk);
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
+	priv->profile.target = imx_bus_target;
+	priv->profile.get_dev_status = imx_bus_get_dev_status;
+	priv->profile.exit = imx_bus_exit;
+	priv->profile.get_cur_freq = imx_bus_get_cur_freq;
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
+static const struct of_device_id imx_bus_of_match[] = {
+	{ .compatible = "fsl,imx8m-noc", },
+	{ .compatible = "fsl,imx8m-nic", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, imx_bus_of_match);
+
+static struct platform_driver imx_bus_platdrv = {
+	.probe		= imx_bus_probe,
+	.driver = {
+		.name	= "imx-bus-devfreq",
+		.of_match_table = of_match_ptr(imx_bus_of_match),
+	},
+};
+module_platform_driver(imx_bus_platdrv);
+
+MODULE_DESCRIPTION("Generic i.MX bus frequency scaling driver");
+MODULE_AUTHOR("Leonard Crestez <leonard.crestez@nxp.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
