Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00068172F06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 04:00:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WGQCPyLN9fPTlsMOShwxpmuBnU9tVu2awzPq6F23c/Q=; b=i4A+c5wW4qLtLzA70MzOWG/xsa
	6g6GJRTxq0Xw2IrHPe5jgj4KqGrWLrlM66fJP63Lcab4aqaSFbvP0JvEM5b6UW2x4FK26vwXHGHxa
	gzjP6lkB1FOz+grVyX0LhVDuBlrVMh3bpC6QW3tiSTS3ztGsFVGhwaVZ7U71sk27d8VxyN1j5TboN
	fxeGG35Yh6swrq0hsmsoQiqQK1b/yYb0HkZ8KDBhdqRkMC8wdDydJnuUQsxo3cipEmgR4dCRhZOgJ
	m7i0HY5JEzg5PuTNALSg7Klx6ivbIVtkJELM1wyRHbWKqMvth6NhkG+amtlB0mwkAdxytm2eZynbr
	69YjX7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Vt5-0007t8-M7; Fri, 28 Feb 2020 03:00:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7VsX-0006en-71
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 02:59:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D55E1A07AD;
 Fri, 28 Feb 2020 03:59:49 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7DB221A00DD;
 Fri, 28 Feb 2020 03:59:34 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 660E9402D5;
 Fri, 28 Feb 2020 10:59:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, aford173@gmail.com,
 shengjiu.wang@nxp.com, ping.bai@nxp.com, jun.li@nxp.com, peng.fan@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/4] thermal: imx8mm: Add support for i.MX8MM thermal
 monitoring unit
Date: Fri, 28 Feb 2020 10:53:31 +0800
Message-Id: <1582858413-11906-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582858413-11906-1-git-send-email-Anson.Huang@nxp.com>
References: <1582858413-11906-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_185953_534167_A2AEDD6A 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MM has a thermal monitoring unit(TMU) inside, it ONLY has one
sensor for CPU, add support for reading immediate temperature of
this sensor.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Update the copyright and add the author.
---
 drivers/thermal/Kconfig          |  10 +++
 drivers/thermal/Makefile         |   1 +
 drivers/thermal/imx8mm_thermal.c | 135 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 146 insertions(+)
 create mode 100644 drivers/thermal/imx8mm_thermal.c

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 3502ee8..165b7d6 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -262,6 +262,16 @@ config IMX_SC_THERMAL
 	  sensor. It supports one critical trip point and one
 	  passive trip point for each thermal sensor.
 
+config IMX8MM_THERMAL
+	tristate "Temperature sensor driver for Freescale i.MX8MM SoC"
+	depends on ARCH_MXC
+	depends on OF
+	help
+	  Support for Thermal Monitoring Unit (TMU) found on Freescale i.MX8MM SoC.
+	  It supports one critical trip point and one passive trip point. The
+	  cpufreq is used as the cooling device to throttle CPUs when the passive
+	  trip is crossed.
+
 config MAX77620_THERMAL
 	tristate "Temperature sensor driver for Maxim MAX77620 PMIC"
 	depends on MFD_MAX77620
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index a11a6d8..120a05e 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_ARMADA_THERMAL)	+= armada_thermal.o
 obj-$(CONFIG_TANGO_THERMAL)	+= tango_thermal.o
 obj-$(CONFIG_IMX_THERMAL)	+= imx_thermal.o
 obj-$(CONFIG_IMX_SC_THERMAL)	+= imx_sc_thermal.o
+obj-$(CONFIG_IMX8MM_THERMAL)	+= imx8mm_thermal.o
 obj-$(CONFIG_MAX77620_THERMAL)	+= max77620_thermal.o
 obj-$(CONFIG_QORIQ_THERMAL)	+= qoriq_thermal.o
 obj-$(CONFIG_DA9062_THERMAL)	+= da9062-thermal.o
diff --git a/drivers/thermal/imx8mm_thermal.c b/drivers/thermal/imx8mm_thermal.c
new file mode 100644
index 0000000..ad5dd57
--- /dev/null
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -0,0 +1,135 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2020 NXP.
+ *
+ * Author: Anson Huang <Anson.Huang@nxp.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/platform_device.h>
+#include <linux/thermal.h>
+
+#include "thermal_core.h"
+
+#define TER			0x0	/* TMU enable */
+#define TRITSR			0x20	/* TMU immediate temp */
+
+#define TER_EN			BIT(31)
+#define TRITSR_VAL_MASK		0xff
+
+#define TEMP_LOW_LIMIT		10
+
+struct imx8mm_tmu {
+	struct thermal_zone_device *tzd;
+	void __iomem *base;
+	struct clk *clk;
+};
+
+static int tmu_get_temp(void *data, int *temp)
+{
+	struct imx8mm_tmu *tmu = data;
+	u32 val;
+
+	/* the temp sensor need about 1ms to finish the measurement */
+	usleep_range(1000, 2000);
+
+	val = readl_relaxed(tmu->base + TRITSR) & TRITSR_VAL_MASK;
+	if (val < TEMP_LOW_LIMIT)
+		return -EAGAIN;
+
+	*temp = val * 1000;
+
+	return 0;
+}
+
+static struct thermal_zone_of_device_ops tmu_tz_ops = {
+	.get_temp = tmu_get_temp,
+};
+
+static int imx8mm_tmu_probe(struct platform_device *pdev)
+{
+	struct imx8mm_tmu *tmu;
+	u32 val;
+	int ret;
+
+	tmu = devm_kzalloc(&pdev->dev, sizeof(struct imx8mm_tmu), GFP_KERNEL);
+	if (!tmu)
+		return -ENOMEM;
+
+	tmu->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(tmu->base))
+		return PTR_ERR(tmu->base);
+
+	tmu->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(tmu->clk)) {
+		ret = PTR_ERR(tmu->clk);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"failed to get tmu clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = clk_prepare_enable(tmu->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "failed to enable tmu clock: %d\n", ret);
+		return ret;
+	}
+
+	tmu->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev, 0,
+							tmu, &tmu_tz_ops);
+	if (IS_ERR(tmu->tzd)) {
+		dev_err(&pdev->dev,
+			"failed to register thermal zone sensor: %d\n", ret);
+		return PTR_ERR(tmu->tzd);
+	}
+
+	platform_set_drvdata(pdev, tmu);
+
+	/* enable the monitor */
+	val = readl_relaxed(tmu->base + TER);
+	val |= TER_EN;
+	writel_relaxed(val, tmu->base + TER);
+
+	return 0;
+}
+
+static int imx8mm_tmu_remove(struct platform_device *pdev)
+{
+	struct imx8mm_tmu *tmu = platform_get_drvdata(pdev);
+	u32 val;
+
+	/* disable TMU */
+	val = readl_relaxed(tmu->base + TER);
+	val &= ~TER_EN;
+	writel_relaxed(val, tmu->base + TER);
+
+	clk_disable_unprepare(tmu->clk);
+	platform_set_drvdata(pdev, NULL);
+
+	return 0;
+}
+
+static const struct of_device_id imx8mm_tmu_table[] = {
+	{ .compatible = "fsl,imx8mm-tmu", },
+	{ },
+};
+
+static struct platform_driver imx8mm_tmu = {
+	.driver = {
+		.name	= "i.mx8mm_thermal",
+		.of_match_table = imx8mm_tmu_table,
+	},
+	.probe = imx8mm_tmu_probe,
+	.remove = imx8mm_tmu_remove,
+};
+module_platform_driver(imx8mm_tmu);
+
+MODULE_AUTHOR("Anson Huang <Anson.Huang@nxp.com>");
+MODULE_DESCRIPTION("i.MX8MM Thermal Monitor Unit driver");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
