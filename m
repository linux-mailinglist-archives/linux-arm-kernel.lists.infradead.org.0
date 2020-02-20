Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D85F165922
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4hn9KpewyRl8DiIKP8gCQBjLjbq2iP96fMWSFKxkeE8=; b=k+cu5jtU9n80JIUNOmY7+19t6h
	VEP29LeWFlhtSkY2VGedsG05rBJmg50+25R2tk44s6+0yo2q/znNOcjt3LQp6JNioSYqpngWZy+U/
	RKk7mXXrKTigKvxtYymxRAVoMP0VENZm8lER4YgMYR6C+I42Xfhxuss0vLCUo5nsiyhVh+ToaQjnv
	Ipfcymb3c6TGXqCez56tcqNRAtRypN1PkHvdGqTsW3UFDAWkSvzVKG+wGHCvYL+eo1ffJ0nmDLNfw
	MJ6GQI4wOJCRNlJkDuYK3MioKeprMVqtF+4JMoEf24BfHvE9fqxF6DclQJSksDKIhB9PTOiI4uopF
	uvtODc1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4h8Q-0002fd-PK; Thu, 20 Feb 2020 08:24:38 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4h7b-0001qZ-Ow
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:23:50 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C35741A54EB;
 Thu, 20 Feb 2020 09:23:39 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 516891A53D0;
 Thu, 20 Feb 2020 09:23:24 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id EFF18402AB;
 Thu, 20 Feb 2020 16:23:10 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, catalin.marinas@arm.com, will@kernel.org,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, shengjiu.wang@nxp.com,
 peng.fan@nxp.com, ping.bai@nxp.com, jun.li@nxp.com,
 bjorn.andersson@linaro.org, olof@lixom.net, vkoul@kernel.org,
 dinguyen@kernel.org, marcin.juszkiewicz@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 2/4] thermal: imx8mm: Add support for i.MX8MM thermal
 monitoring unit
Date: Thu, 20 Feb 2020 16:17:24 +0800
Message-Id: <1582186646-22096-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582186646-22096-1-git-send-email-Anson.Huang@nxp.com>
References: <1582186646-22096-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_002348_090015_5E24D465 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
This patch is base on patch series: https://lkml.org/lkml/2020/2/19/1258
---
 drivers/thermal/Kconfig          |  10 +++
 drivers/thermal/Makefile         |   1 +
 drivers/thermal/imx8mm_thermal.c | 134 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 145 insertions(+)
 create mode 100644 drivers/thermal/imx8mm_thermal.c

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index d1cb8dc..972b169 100644
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
index 0000000..04f8a8f
--- /dev/null
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -0,0 +1,134 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 NXP.
+ *
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
