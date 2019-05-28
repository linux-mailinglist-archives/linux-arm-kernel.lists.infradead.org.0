Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF272BD8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 05:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iNMEMGAlofi6JEYUyI+9DpT9xEgbu/fapilYHFnfGRo=; b=e7eNgzRv+gywEHToHqW2iFwYyW
	87bl5Jk2gsErh+BT/IVmMb2GK93yXXSyBwC9SDXFP9HNB8SlqaoRuNQAplgom+Xwp96QR+glCEbsY
	rNeYkVmxcF+P00u9ofMk4MJKVMWDpIuqNu91DJ/r9ImsN5qeFMMv9bixng6PT/DtHd96zkJkY751p
	PdmtgrIDdDxUxjuZfOxJTUU8pP8ehfn77o6l3vUT9PVKL8g1xOuSsjdtoIWnzCp13iJzmYrohdSuQ
	RKkMfZDXrpz5qif94e5oe+L0GdoAlPVEK5TDFulHAalZhDehLHcb0t3j7Rddhfa6sUNL7DR8i5T8O
	P4+i2ZUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVSaX-0003iW-GY; Tue, 28 May 2019 03:15:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVSaF-0003UV-4Y
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 03:15:28 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E8DAC1A020A;
 Tue, 28 May 2019 05:15:25 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 724921A01F7;
 Tue, 28 May 2019 05:15:13 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A4FE6402CB;
 Tue, 28 May 2019 11:14:59 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 catalin.marinas@arm.com, will.deacon@arm.com, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, aisheng.dong@nxp.com,
 ulf.hansson@linaro.org, peng.fan@nxp.com, daniel.baluta@nxp.com,
 maxime.ripard@bootlin.com, olof@lixom.net, jagan@amarulasolutions.com,
 horms+renesas@verge.net.au, leonard.crestez@nxp.com,
 bjorn.andersson@linaro.org, dinguyen@kernel.org,
 enric.balletbo@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Subject: [PATCH V13 2/5] thermal: of-thermal: add API for getting sensor ID
 from DT
Date: Tue, 28 May 2019 11:16:51 +0800
Message-Id: <20190528031654.43801-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528031654.43801-1-Anson.Huang@nxp.com>
References: <20190528031654.43801-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_201527_456257_7614B8A8 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

From: Anson Huang <Anson.Huang@nxp.com>

On some platforms like i.MX8QXP, the thermal driver needs a
real HW sensor ID from DT thermal zone, the HW sensor ID is
used to get temperature from SCU firmware, and the virtual
sensor ID starting from 0 to N is NOT used at all, this patch
adds new API thermal_zone_of_get_sensor_id() to provide the
feature of getting sensor ID from DT thermal zone's node.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V12:
	- allow the caller of thermal_zone_of_get_sensor_id() to pass NULL as second parameter
	  of_phandle_args structure, as some caller maybe ONLY need to read sensor ID.
---
 drivers/thermal/of-thermal.c | 59 +++++++++++++++++++++++++++++++++++---------
 include/linux/thermal.h      | 10 ++++++++
 2 files changed, 57 insertions(+), 12 deletions(-)

diff --git a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c
index dc5093b..0466ab5 100644
--- a/drivers/thermal/of-thermal.c
+++ b/drivers/thermal/of-thermal.c
@@ -449,6 +449,52 @@ thermal_zone_of_add_sensor(struct device_node *zone,
 }
 
 /**
+ * thermal_zone_of_get_sensor_id - get sensor ID from a DT thermal zone
+ * @tz_np: a valid thermal zone device node.
+ * @sensor_specs: pointer to output arguments structure will be passed back,
+ *		  it can be NULL if the caller does NOT need the output
+ *		  arguments structure to be passed back.
+ * @id: a sensor ID pointer will be passed back.
+ *
+ * This function will get sensor ID from a given thermal zone node, use
+ * "thermal-sensors" as list name, and get sensor ID from first phandle's
+ * argument.
+ *
+ * Return: 0 on success, proper error code otherwise.
+ */
+
+int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
+				  struct of_phandle_args *sensor_specs,
+				  u32 *id)
+{
+	struct of_phandle_args tmp_sensor_specs;
+	int ret;
+
+	if (!sensor_specs)
+		sensor_specs = &tmp_sensor_specs;
+
+	ret = of_parse_phandle_with_args(tz_np,
+					 "thermal-sensors",
+					 "#thermal-sensor-cells",
+					 0,
+					 sensor_specs);
+	if (ret)
+		return ret;
+
+	if (sensor_specs->args_count >= 1) {
+		*id = sensor_specs->args[0];
+		WARN(sensor_specs->args_count > 1,
+		     "%pOFn: too many cells in sensor specifier %d\n",
+		     sensor_specs->np, sensor_specs->args_count);
+	} else {
+		*id = 0;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(thermal_zone_of_get_sensor_id);
+
+/**
  * thermal_zone_of_sensor_register - registers a sensor to a DT thermal zone
  * @dev: a valid struct device pointer of a sensor device. Must contain
  *       a valid .of_node, for the sensor node.
@@ -503,21 +549,10 @@ thermal_zone_of_sensor_register(struct device *dev, int sensor_id, void *data,
 		int ret, id;
 
 		/* For now, thermal framework supports only 1 sensor per zone */
-		ret = of_parse_phandle_with_args(child, "thermal-sensors",
-						 "#thermal-sensor-cells",
-						 0, &sensor_specs);
+		ret = thermal_zone_of_get_sensor_id(child, &sensor_specs, &id);
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
 		if (sensor_specs.np == sensor_np && id == sensor_id) {
 			tzd = thermal_zone_of_add_sensor(child, sensor_np,
 							 data, ops);
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index 15a4ca5..c994e3a 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -375,6 +375,9 @@ struct thermal_trip {
 
 /* Function declarations */
 #ifdef CONFIG_THERMAL_OF
+int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
+				  struct of_phandle_args *sensor_specs,
+				  u32 *id);
 struct thermal_zone_device *
 thermal_zone_of_sensor_register(struct device *dev, int id, void *data,
 				const struct thermal_zone_of_device_ops *ops);
@@ -386,6 +389,13 @@ struct thermal_zone_device *devm_thermal_zone_of_sensor_register(
 void devm_thermal_zone_of_sensor_unregister(struct device *dev,
 					    struct thermal_zone_device *tz);
 #else
+
+static int thermal_zone_of_get_sensor_id(struct device_node *tz_np,
+					 struct of_phandle_args *sensor_specs,
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
