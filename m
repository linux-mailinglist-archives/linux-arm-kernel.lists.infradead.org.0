Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03D3165424
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RiKBR1njhs02C3GgaKGmikqGkk4EnQCp5ozniXIe3rQ=; b=Ko7OfrJfU0uJMZ22szdsiScgXh
	7mfkqj3rKvb1SUTZsJfTUom29HsX2LoCn3zFO3wiKNmu7JjNr60PwSQeR+tRAmnPqvS8NeDreHAEt
	jrM78WL2PqKKVkXezCQsFWZ47OUi1lKVkt47g+PC6KVK4wMfLizk3xJeruzdXhxcyY7/AGA6Ipx8d
	5dmf4A/HazUa95NCYg1oNrk/rUOhFh6FvXDGPuJnUxgmvfP8X0Cosn96RcbEin3m3+UlZzK2gA9ba
	JZk/yCqNiwB7xe+D6PvZsTgQrS2NovRJnX3gUAJ5EkvHEqKT2TWeMKy8rt+i0ACTcpu6RV5Kx57Je
	IEE9Cy5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4aT0-0007f2-3A; Thu, 20 Feb 2020 01:17:26 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4aSX-0007V7-4v
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:16:58 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 22C42204C8E;
 Thu, 20 Feb 2020 02:16:54 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 79D892013D3;
 Thu, 20 Feb 2020 02:16:38 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 028CA402A0;
 Thu, 20 Feb 2020 09:16:12 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 aisheng.dong@nxp.com, linux@roeck-us.net, srinivas.kandagatla@linaro.org,
 krzk@kernel.org, fugang.duan@nxp.com, peng.fan@nxp.com,
 daniel.baluta@nxp.com, bjorn.andersson@linaro.org, olof@lixom.net,
 dinguyen@kernel.org, leonard.crestez@nxp.com,
 marcin.juszkiewicz@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH V15 RESEND 2/5] thermal: of-thermal: add API for getting
 sensor ID from DT
Date: Thu, 20 Feb 2020 09:10:25 +0800
Message-Id: <1582161028-2844-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
References: <1582161028-2844-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_171657_471414_63F03713 
X-CRM114-Status: GOOD (  14.23  )
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

This patch adds new API thermal_zone_of_get_sensor_id() to
provide the feature of getting sensor ID from DT thermal
zone's node. It's useful for thermal driver to register the
specific thermal zone devices from DT in a common way.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
Changes since V14:
	- improve the commit message and comment, no code change.
---
 drivers/thermal/of-thermal.c | 65 +++++++++++++++++++++++++++++++++-----------
 include/linux/thermal.h      | 10 +++++++
 2 files changed, 59 insertions(+), 16 deletions(-)

diff --git a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c
index ef0baa9..0f57108 100644
--- a/drivers/thermal/of-thermal.c
+++ b/drivers/thermal/of-thermal.c
@@ -449,6 +449,53 @@ thermal_zone_of_add_sensor(struct device_node *zone,
 }
 
 /**
+ * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal zone
+ * @tz_np: a valid thermal zone device node.
+ * @sensor_np: a sensor node of a valid sensor device.
+ * @id: the sensor ID returned if success.
+ *
+ * This function will get sensor ID from a given thermal zone node and
+ * the sensor node must match the temperature provider @sensor_np.
+ *
+ * Return: 0 on success, proper error code otherwise.
+ */
+
+int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
+				  struct device_node *sensor_np,
+				  u32 *id)
+{
+	struct of_phandle_args sensor_specs;
+	int ret;
+
+	ret = of_parse_phandle_with_args(tz_np,
+					 "thermal-sensors",
+					 "#thermal-sensor-cells",
+					 0,
+					 &sensor_specs);
+	if (ret)
+		return ret;
+
+	if (sensor_specs.np != sensor_np) {
+		of_node_put(sensor_specs.np);
+		return -ENODEV;
+	}
+
+	if (sensor_specs.args_count >= 1) {
+		*id = sensor_specs.args[0];
+		WARN(sensor_specs.args_count > 1,
+		     "%pOFn: too many cells in sensor specifier %d\n",
+		     sensor_specs.np, sensor_specs.args_count);
+	} else {
+		*id = 0;
+	}
+
+	of_node_put(sensor_specs.np);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(thermal_zone_of_get_sensor_id);
+
+/**
  * thermal_zone_of_sensor_register - registers a sensor to a DT thermal zone
  * @dev: a valid struct device pointer of a sensor device. Must contain
  *       a valid .of_node, for the sensor node.
@@ -499,36 +546,22 @@ thermal_zone_of_sensor_register(struct device *dev, int sensor_id, void *data,
 	sensor_np = of_node_get(dev->of_node);
 
 	for_each_available_child_of_node(np, child) {
-		struct of_phandle_args sensor_specs;
 		int ret, id;
 
 		/* For now, thermal framework supports only 1 sensor per zone */
-		ret = of_parse_phandle_with_args(child, "thermal-sensors",
-						 "#thermal-sensor-cells",
-						 0, &sensor_specs);
+		ret = thermal_zone_of_get_sensor_id(child, sensor_np, &id);
 		if (ret)
 			continue;
 
-		if (sensor_specs.args_count >= 1) {
-			id = sensor_specs.args[0];
-			WARN(sensor_specs.args_count > 1,
-			     "%pOFn: too many cells in sensor specifier %d\n",
-			     sensor_specs.np, sensor_specs.args_count);
-		} else {
-			id = 0;
-		}
-
-		if (sensor_specs.np == sensor_np && id == sensor_id) {
+		if (id == sensor_id) {
 			tzd = thermal_zone_of_add_sensor(child, sensor_np,
 							 data, ops);
 			if (!IS_ERR(tzd))
 				tzd->ops->set_mode(tzd, THERMAL_DEVICE_ENABLED);
 
-			of_node_put(sensor_specs.np);
 			of_node_put(child);
 			goto exit;
 		}
-		of_node_put(sensor_specs.np);
 	}
 exit:
 	of_node_put(sensor_np);
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index 126913c6..53e6f67 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -364,6 +364,9 @@ struct thermal_trip {
 
 /* Function declarations */
 #ifdef CONFIG_THERMAL_OF
+int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
+				  struct device_node *sensor_np,
+				  u32 *id);
 struct thermal_zone_device *
 thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
 				const struct thermal_zone_of_device_ops *ops);
@@ -375,6 +378,13 @@ struct thermal_zone_device *devm_thermal_zone_of_sensor_register(
 void devm_thermal_zone_of_sensor_unregister(struct device *dev,
 					    struct thermal_zone_device *tz);
 #else
+
+static int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
+					 struct device_node *sensor_np,
+					 u32 *id)
+{
+	return -ENOENT;
+}
 static inline struct thermal_zone_device *
 thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
 				const struct thermal_zone_of_device_ops *ops)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
