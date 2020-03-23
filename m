Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFC918F4C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 13:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EmBqGKIdd92TJWltvwj7QuRbOTgxc/13gdg3mO8J/78=; b=R7cihOm0aw1Su5Mk+0CBZhWVLH
	jXTWL8GIkS1/tNA+35xvQnAH+0TNYqhT35v5NmeP9+DTz8tnFiqZCa6eswH6A96yzAWQTy3GflOk3
	OGen94o7JgG/LTMMw7fLHq+pJ75Fe4+bRlm6DFwXzzj+D8L7TS7vXrQTmeFUXqV69iaFy2ximoQCE
	xucrfrRsauxrXzgG77Gt3BkwQDR1M0+uM7KfywEASaCF+IgxKvmEarQWE7dNG9EVRa1fNxR/QBHqE
	jQiXr8y5e24oGt8xYsGH4/tFKkNYiruytCxORrymxmOn4jRCu022pbsePcgg9DGeh25NujoA59vxN
	vO7FGwQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGMJk-0000w6-1D; Mon, 23 Mar 2020 12:36:32 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGMIw-0000Je-B9
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 12:35:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5FAAD1A1397;
 Mon, 23 Mar 2020 13:35:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9C4551A13AB;
 Mon, 23 Mar 2020 13:35:29 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5C8A0402EC;
 Mon, 23 Mar 2020 20:35:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 horia.geanta@nxp.com, peng.fan@nxp.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V3 2/3] thermal: imx8mm: Add i.MX8MP support
Date: Mon, 23 Mar 2020 20:28:23 +0800
Message-Id: <1584966504-21719-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
References: <1584966504-21719-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_053542_684254_F05E7836 
X-CRM114-Status: GOOD (  15.03  )
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

i.MX8MP shares same TMU with i.MX8MM, the only difference is i.MX8MP
has two thermal sensors while i.MX8MM ONLY has one, add multiple sensors
support for i.MX8MM TMU driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V2:
	- Fix build warning about test_bit second argument type.
---
 drivers/thermal/imx8mm_thermal.c | 153 +++++++++++++++++++++++++++++++++------
 1 file changed, 129 insertions(+), 24 deletions(-)

diff --git a/drivers/thermal/imx8mm_thermal.c b/drivers/thermal/imx8mm_thermal.c
index d597ceb..0d60f8d 100644
--- a/drivers/thermal/imx8mm_thermal.c
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -5,59 +5,142 @@
  * Author: Anson Huang <Anson.Huang@nxp.com>
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/module.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/thermal.h>
 
 #include "thermal_core.h"
 
 #define TER			0x0	/* TMU enable */
+#define TPS			0x4
 #define TRITSR			0x20	/* TMU immediate temp */
 
 #define TER_EN			BIT(31)
-#define TRITSR_VAL_MASK		0xff
+#define TRITSR_TEMP0_VAL_MASK	0xff
+#define TRITSR_TEMP1_VAL_MASK	0xff0000
 
-#define TEMP_LOW_LIMIT		10
+#define PROBE_SEL_ALL		GENMASK(31, 30)
 
-struct imx8mm_tmu {
+#define probe_status_offset(x)	(30 + x)
+#define SIGN_BIT		BIT(7)
+#define TEMP_VAL_MASK		GENMASK(6, 0)
+
+#define VER1_TEMP_LOW_LIMIT	10000
+#define VER2_TEMP_LOW_LIMIT	-40000
+#define VER2_TEMP_HIGH_LIMIT	125000
+
+#define TMU_VER1		0x1
+#define TMU_VER2		0x2
+
+struct thermal_soc_data {
+	u32 num_sensors;
+	u32 version;
+	int (*get_temp)(void *, int *);
+};
+
+struct tmu_sensor {
+	struct imx8mm_tmu *priv;
+	u32 hw_id;
 	struct thermal_zone_device *tzd;
+};
+
+struct imx8mm_tmu {
 	void __iomem *base;
 	struct clk *clk;
+	const struct thermal_soc_data *socdata;
+	struct tmu_sensor sensors[0];
 };
 
-static int tmu_get_temp(void *data, int *temp)
+static int imx8mm_tmu_get_temp(void *data, int *temp)
 {
-	struct imx8mm_tmu *tmu = data;
+	struct tmu_sensor *sensor = data;
+	struct imx8mm_tmu *tmu = sensor->priv;
 	u32 val;
 
-	val = readl_relaxed(tmu->base + TRITSR) & TRITSR_VAL_MASK;
-	if (val < TEMP_LOW_LIMIT)
+	val = readl_relaxed(tmu->base + TRITSR) & TRITSR_TEMP0_VAL_MASK;
+	*temp = val * 1000;
+	if (*temp < VER1_TEMP_LOW_LIMIT)
+		return -EAGAIN;
+
+	return 0;
+}
+
+static int imx8mp_tmu_get_temp(void *data, int *temp)
+{
+	struct tmu_sensor *sensor = data;
+	struct imx8mm_tmu *tmu = sensor->priv;
+	unsigned long val;
+	bool ready;
+
+	val = readl_relaxed(tmu->base + TRITSR);
+	ready = test_bit(probe_status_offset(sensor->hw_id), &val);
+	if (!ready)
 		return -EAGAIN;
 
+	val = sensor->hw_id ? FIELD_GET(TRITSR_TEMP1_VAL_MASK, val) :
+	      FIELD_GET(TRITSR_TEMP0_VAL_MASK, val);
+	if (val & SIGN_BIT) /* negative */
+		val = (~(val & TEMP_VAL_MASK) + 1);
+
 	*temp = val * 1000;
+	if (*temp < VER2_TEMP_LOW_LIMIT || *temp > VER2_TEMP_HIGH_LIMIT)
+		return -EAGAIN;
 
 	return 0;
 }
 
+static int tmu_get_temp(void *data, int *temp)
+{
+	struct tmu_sensor *sensor = data;
+	struct imx8mm_tmu *tmu = sensor->priv;
+
+	return tmu->socdata->get_temp(data, temp);
+}
+
 static struct thermal_zone_of_device_ops tmu_tz_ops = {
 	.get_temp = tmu_get_temp,
 };
 
+static void imx8mm_tmu_enable(struct imx8mm_tmu *tmu, bool enable)
+{
+	u32 val;
+
+	val = readl_relaxed(tmu->base + TER);
+	val = enable ? (val | TER_EN) : (val & ~TER_EN);
+	writel_relaxed(val, tmu->base + TER);
+}
+
+static void imx8mm_tmu_probe_sel_all(struct imx8mm_tmu *tmu)
+{
+	u32 val;
+
+	val = readl_relaxed(tmu->base + TPS);
+	val |= PROBE_SEL_ALL;
+	writel_relaxed(val, tmu->base + TPS);
+}
+
 static int imx8mm_tmu_probe(struct platform_device *pdev)
 {
+	const struct thermal_soc_data *data;
 	struct imx8mm_tmu *tmu;
-	u32 val;
 	int ret;
+	int i;
+
+	data = of_device_get_match_data(&pdev->dev);
 
-	tmu = devm_kzalloc(&pdev->dev, sizeof(struct imx8mm_tmu), GFP_KERNEL);
+	tmu = devm_kzalloc(&pdev->dev, struct_size(tmu, sensors,
+			   data->num_sensors), GFP_KERNEL);
 	if (!tmu)
 		return -ENOMEM;
 
+	tmu->socdata = data;
+
 	tmu->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(tmu->base))
 		return PTR_ERR(tmu->base);
@@ -77,20 +160,32 @@ static int imx8mm_tmu_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	tmu->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev, 0,
-							tmu, &tmu_tz_ops);
-	if (IS_ERR(tmu->tzd)) {
-		dev_err(&pdev->dev,
-			"failed to register thermal zone sensor: %d\n", ret);
-		return PTR_ERR(tmu->tzd);
+	/* disable the monitor during initialization */
+	imx8mm_tmu_enable(tmu, false);
+
+	for (i = 0; i < data->num_sensors; i++) {
+		tmu->sensors[i].priv = tmu;
+		tmu->sensors[i].tzd =
+			devm_thermal_zone_of_sensor_register(&pdev->dev, i,
+							     &tmu->sensors[i],
+							     &tmu_tz_ops);
+		if (IS_ERR(tmu->sensors[i].tzd)) {
+			dev_err(&pdev->dev,
+				"failed to register thermal zone sensor[%d]: %d\n",
+				i, ret);
+			return PTR_ERR(tmu->sensors[i].tzd);
+		}
+		tmu->sensors[i].hw_id = i;
 	}
 
 	platform_set_drvdata(pdev, tmu);
 
+	/* enable all the probes for V2 TMU */
+	if (tmu->socdata->version == TMU_VER2)
+		imx8mm_tmu_probe_sel_all(tmu);
+
 	/* enable the monitor */
-	val = readl_relaxed(tmu->base + TER);
-	val |= TER_EN;
-	writel_relaxed(val, tmu->base + TER);
+	imx8mm_tmu_enable(tmu, true);
 
 	return 0;
 }
@@ -98,12 +193,9 @@ static int imx8mm_tmu_probe(struct platform_device *pdev)
 static int imx8mm_tmu_remove(struct platform_device *pdev)
 {
 	struct imx8mm_tmu *tmu = platform_get_drvdata(pdev);
-	u32 val;
 
 	/* disable TMU */
-	val = readl_relaxed(tmu->base + TER);
-	val &= ~TER_EN;
-	writel_relaxed(val, tmu->base + TER);
+	imx8mm_tmu_enable(tmu, false);
 
 	clk_disable_unprepare(tmu->clk);
 	platform_set_drvdata(pdev, NULL);
@@ -111,8 +203,21 @@ static int imx8mm_tmu_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static struct thermal_soc_data imx8mm_tmu_data = {
+	.num_sensors = 1,
+	.version = TMU_VER1,
+	.get_temp = imx8mm_tmu_get_temp,
+};
+
+static struct thermal_soc_data imx8mp_tmu_data = {
+	.num_sensors = 2,
+	.version = TMU_VER2,
+	.get_temp = imx8mp_tmu_get_temp,
+};
+
 static const struct of_device_id imx8mm_tmu_table[] = {
-	{ .compatible = "fsl,imx8mm-tmu", },
+	{ .compatible = "fsl,imx8mm-tmu", .data = &imx8mm_tmu_data, },
+	{ .compatible = "fsl,imx8mp-tmu", .data = &imx8mp_tmu_data, },
 	{ },
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
