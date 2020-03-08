Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 506AA17D47C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 16:34:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cIqz7hi6f4mlqDVH6nXE8TDMffqgZ5XWeS5r5hfw5X4=; b=Zjc+UDl0cWpuauoQsKz2FAgMzn
	1gqSZcOgeunEtq/ec6X0tqE5qxxAEc8k+1Vhs0UWjX3JoLdBHBbf/C6j4LNWrdbJBdcuDJ4rKkfWJ
	zRRmfIoHAcwvnvYUrCN7ZUHf6VtrJnK0fVyJq3tbk9MLbdqX0l2XpHYQmrBTzo1Xmi4mFTMLcffed
	epalSVo/RWMKyn9ryCGTeNPvJ4BbAvbEq9whqGfw2+w98JMtLNIXOgulGrSsOAkSQg1Gzs9WlU8MO
	6/ZouOObojwEqYcXccR8bwsOkknu/ISAA7aGugYpGuSxHG+Cd/aUk7H0zHp7QfjRPa6fiG+m0Ok5q
	+axiMjGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAxwe-0007i1-Fj; Sun, 08 Mar 2020 15:34:24 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAxw8-0007ZB-1c
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 15:33:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id AC9781A1510;
 Sun,  8 Mar 2020 16:33:49 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 684401A14FD;
 Sun,  8 Mar 2020 16:33:42 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C8D42402D5;
 Sun,  8 Mar 2020 23:33:33 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, mark.rutland@arm.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] thermal: imx8mm: Add i.MX8MP support
Date: Sun,  8 Mar 2020 23:27:19 +0800
Message-Id: <1583681240-14782-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583681240-14782-1-git-send-email-Anson.Huang@nxp.com>
References: <1583681240-14782-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_083352_365827_A192BD69 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 drivers/thermal/imx8mm_thermal.c | 108 +++++++++++++++++++++++++++++++++------
 1 file changed, 93 insertions(+), 15 deletions(-)

diff --git a/drivers/thermal/imx8mm_thermal.c b/drivers/thermal/imx8mm_thermal.c
index d597ceb..8a87ed0 100644
--- a/drivers/thermal/imx8mm_thermal.c
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -10,34 +10,75 @@
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
 #define TRITSR_VAL_MASK		0xff
 
-#define TEMP_LOW_LIMIT		10
+#define PROBE_SEL_ALL		GENMASK(31, 30)
 
-struct imx8mm_tmu {
+#define PROBE0_STATUS_OFFSET	30
+#define PROBE0_VAL_OFFSET	16
+#define SIGN_BIT		BIT(7)
+#define TEMP_VAL_MASK		GENMASK(6, 0)
+
+#define VER1_TEMP_LOW_LIMIT	10
+#define VER2_TEMP_LOW_LIMIT	-40
+#define VER2_TEMP_HIGH_LIMIT	125
+
+#define TMU_VER1		0x1
+#define TMU_VER2		0x2
+
+struct thermal_soc_data {
+	u32 num_sensors;
+	u32 version;
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
 
 static int tmu_get_temp(void *data, int *temp)
 {
-	struct imx8mm_tmu *tmu = data;
+	struct tmu_sensor *sensor = data;
+	struct imx8mm_tmu *tmu = sensor->priv;
+	bool ready;
 	u32 val;
 
-	val = readl_relaxed(tmu->base + TRITSR) & TRITSR_VAL_MASK;
-	if (val < TEMP_LOW_LIMIT)
-		return -EAGAIN;
+	if (tmu->socdata->version == TMU_VER1) {
+		val = readl_relaxed(tmu->base + TRITSR) & TRITSR_VAL_MASK;
+		if (val < VER1_TEMP_LOW_LIMIT)
+			return -EAGAIN;
+	} else {
+		val = readl_relaxed(tmu->base + TRITSR);
+		ready = val & (1 << (sensor->hw_id + PROBE0_STATUS_OFFSET));
+		val = (val >> (sensor->hw_id * PROBE0_VAL_OFFSET))
+		      & TRITSR_VAL_MASK;
+		if (val & SIGN_BIT) /* negative */
+			val = (~(val & TEMP_VAL_MASK) + 1);
+
+		*temp = val;
+		if (!ready || *temp < VER2_TEMP_LOW_LIMIT ||
+		    *temp > VER2_TEMP_HIGH_LIMIT)
+			return -EAGAIN;
+	}
 
 	*temp = val * 1000;
 
@@ -50,14 +91,21 @@ static struct thermal_zone_of_device_ops tmu_tz_ops = {
 
 static int imx8mm_tmu_probe(struct platform_device *pdev)
 {
+	const struct thermal_soc_data *data;
 	struct imx8mm_tmu *tmu;
 	u32 val;
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
@@ -77,16 +125,35 @@ static int imx8mm_tmu_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	tmu->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev, 0,
-							tmu, &tmu_tz_ops);
-	if (IS_ERR(tmu->tzd)) {
-		dev_err(&pdev->dev,
-			"failed to register thermal zone sensor: %d\n", ret);
-		return PTR_ERR(tmu->tzd);
+	/* disable the monitor during initialization */
+	val = readl_relaxed(tmu->base + TER);
+	val &= ~TER_EN;
+	writel_relaxed(val, tmu->base + TER);
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
+	if (tmu->socdata->version == TMU_VER2) {
+		val = readl_relaxed(tmu->base + TPS);
+		val |= PROBE_SEL_ALL;
+		writel_relaxed(val, tmu->base + TPS);
+	}
+
 	/* enable the monitor */
 	val = readl_relaxed(tmu->base + TER);
 	val |= TER_EN;
@@ -111,8 +178,19 @@ static int imx8mm_tmu_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static struct thermal_soc_data imx8mm_tmu_data = {
+	.num_sensors = 1,
+	.version = TMU_VER1,
+};
+
+static struct thermal_soc_data imx8mp_tmu_data = {
+	.num_sensors = 2,
+	.version = TMU_VER2,
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
