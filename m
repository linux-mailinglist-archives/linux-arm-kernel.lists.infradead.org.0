Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B53218C5D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:34:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Qmo164h0ltGLggWsh2T1XLDF6MruEPmfjHcUCOV2mcI=; b=i1KVNAOxDL+zr9wcSk3XS9taMm
	VBpcmD1fEJvkiNvdjnUF3q+H1L8M0cQIBONRVgs5uKUr+Jjrrf4Z2gvBY3TirmcvIMalwO3UoXliO
	oCcYSjUd3v578KGwlPoXfhKBw0U6aZtz80adWu7dW07C07h8OftZSboAVY+jUOA86kfHH+jYmz52p
	p9LtT8ozr7ZHcOu6XOoT3/U8xzAkn7VzaF72J6XhQe+x3Vg1X+HR6GuZZ7hgeeVkV4++ZBI90c+2i
	ZOi2kXm0gOAMNI4VPj93Luosf+Bj8vy+nI20pF3g39C1NDoaTFmMKJ/eDXJPMaGkqN1yXLSDsMhZR
	YMHgZAZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8QJ-0004KY-Rz; Fri, 20 Mar 2020 03:34:15 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8Pi-0003wX-BC
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:33:40 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D9BD9200322;
 Fri, 20 Mar 2020 04:33:33 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 262E0200316;
 Fri, 20 Mar 2020 04:33:26 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0BC29402EE;
 Fri, 20 Mar 2020 11:33:16 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 horia.geanta@nxp.com, peng.fan@nxp.com, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 2/3] thermal: imx8mm: Add i.MX8MP support
Date: Fri, 20 Mar 2020 11:26:30 +0800
Message-Id: <1584674791-9717-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584674791-9717-1-git-send-email-Anson.Huang@nxp.com>
References: <1584674791-9717-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_203338_662173_5248FCE5 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Change since V1:
	- Use bitops operation to simplify the code logic;
	- Add helper function for TMU enable realted operations;
	- Add .get_temp function in socdata to simplify the common .get_temp function.
---
 drivers/thermal/imx8mm_thermal.c | 154 +++++++++++++++++++++++++++++++++------
 1 file changed, 130 insertions(+), 24 deletions(-)

diff --git a/drivers/thermal/imx8mm_thermal.c b/drivers/thermal/imx8mm_thermal.c
index d597ceb..c32308b 100644
--- a/drivers/thermal/imx8mm_thermal.c
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -5,59 +5,143 @@
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
 		return -EAGAIN;
 
+	return 0;
+}
+
+static int imx8mp_tmu_get_temp(void *data, int *temp)
+{
+	struct tmu_sensor *sensor = data;
+	struct imx8mm_tmu *tmu = sensor->priv;
+	bool ready;
+	u32 val;
+
+	ready = test_bit(probe_status_offset(sensor->hw_id),
+			 tmu->base + TRITSR);
+	if (!ready)
+		return -EAGAIN;
+
+	val = readl_relaxed(tmu->base + TRITSR);
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
@@ -77,20 +161,32 @@ static int imx8mm_tmu_probe(struct platform_device *pdev)
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
@@ -98,12 +194,9 @@ static int imx8mm_tmu_probe(struct platform_device *pdev)
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
@@ -111,8 +204,21 @@ static int imx8mm_tmu_remove(struct platform_device *pdev)
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
