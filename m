Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224771E6AC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ypkCsBkXZjpKZVyXpPykVXaTOwF3BUFtsqbNFV01Jmc=; b=Jq4Lrp6H+UwXZ5rh86nJJY5NT1
	VPWekJJH7JQKRBrqg6GjbynWlAncLMPqSaWCoFeKT6vLyiyUM3ovwckfOU7sYn/mDTiKAoJ52q0YW
	x7ZBzD6F3LSynbvGXrdCSSF9+huO0Cpcvcvi3Hl2Ac0w8IcTv5yRtmukp4noJ7uI6TNa2GYzIUcsx
	Pq7NYaoc+9GiAqTCCs91rXPZ5oFkwjGPpIh5Qz3VxZMjYlwV8yUz7nJjGC8z9RlEOrhxIO6OJbWet
	09BIpIyL6SySncwCG+Jl90oC4Er0Ln51Cb9XAye3Bqk6kNYMk/8upVkCR/ob90mjQhb6vDpTGkQZR
	LgyXIMWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeO9n-0004AE-4w; Thu, 28 May 2020 19:25:35 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO6D-0007Fg-KY; Thu, 28 May 2020 19:21:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 5EC692A36B9
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 04/11] thermal: Store device mode in struct
 thermal_zone_device
Date: Thu, 28 May 2020 21:20:44 +0200
Message-Id: <20200528192051.28034-5-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192051.28034-1-andrzej.p@collabora.com>
References: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122154_394269_12ACF450 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Vishal Kulkarni <vishal@chelsio.com>, Luca Coelho <luciano.coelho@intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Allison Randal <allison@lohutok.net>, NXP Linux Team <linux-imx@nxp.com>,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Gayatri Kammela <gayatri.kammela@intel.com>, Len Brown <lenb@kernel.org>,
 Johannes Berg <johannes.berg@intel.com>,
 Intel Linux Wireless <linuxwifi@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Baolin Wang <baolin.wang7@gmail.com>, Jiri Pirko <jiri@mellanox.com>,
 Orson Zhai <orsonzhai@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Kalle Valo <kvalo@codeaurora.org>,
 Support Opensource <support.opensource@diasemi.com>,
 Enrico Weigelt <info@metux.net>, Peter Kaestle <peter@piie.net>,
 Sebastian Reichel <sre@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Shawn Guo <shawnguo@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prepare for eliminating get_mode().

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/acpi/thermal.c                        | 18 ++++++----------
 .../ethernet/mellanox/mlxsw/core_thermal.c    | 21 +++++++------------
 drivers/platform/x86/acerhdf.c                | 15 ++++++-------
 drivers/thermal/da9062-thermal.c              |  6 ++----
 drivers/thermal/imx_thermal.c                 | 17 +++++++--------
 .../intel/int340x_thermal/int3400_thermal.c   | 12 +++--------
 .../thermal/intel/intel_quark_dts_thermal.c   | 16 +++++++-------
 drivers/thermal/thermal_of.c                  | 10 +++------
 8 files changed, 44 insertions(+), 71 deletions(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index fb46070c66d8..4ba273f49d87 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -172,7 +172,6 @@ struct acpi_thermal {
 	struct acpi_thermal_trips trips;
 	struct acpi_handle_list devices;
 	struct thermal_zone_device *thermal_zone;
-	enum thermal_device_mode mode;
 	int kelvin_offset;	/* in millidegrees */
 	struct work_struct thermal_check_work;
 };
@@ -500,7 +499,7 @@ static void acpi_thermal_check(void *data)
 {
 	struct acpi_thermal *tz = data;
 
-	if (tz->mode != THERMAL_DEVICE_ENABLED)
+	if (tz->thermal_zone->mode != THERMAL_DEVICE_ENABLED)
 		return;
 
 	thermal_zone_device_update(tz->thermal_zone,
@@ -529,12 +528,7 @@ static int thermal_get_temp(struct thermal_zone_device *thermal, int *temp)
 static int thermal_get_mode(struct thermal_zone_device *thermal,
 				enum thermal_device_mode *mode)
 {
-	struct acpi_thermal *tz = thermal->devdata;
-
-	if (!tz)
-		return -EINVAL;
-
-	*mode = tz->mode;
+	*mode = thermal->mode;
 
 	return 0;
 }
@@ -556,11 +550,11 @@ static int thermal_set_mode(struct thermal_zone_device *thermal,
 	if (mode == THERMAL_DEVICE_DISABLED)
 		pr_warn("thermal zone will be disabled\n");
 
-	if (mode != tz->mode) {
-		tz->mode = mode;
+	if (mode != tz->thermal_zone->mode) {
+		tz->thermal_zone->mode = mode;
 		ACPI_DEBUG_PRINT((ACPI_DB_INFO,
 			"%s kernel ACPI thermal control\n",
-			tz->mode == THERMAL_DEVICE_ENABLED ?
+			tz->thermal_zone->mode == THERMAL_DEVICE_ENABLED ?
 			"Enable" : "Disable"));
 		acpi_thermal_check(tz);
 	}
@@ -912,7 +906,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
 		goto remove_dev_link;
 	}
 
-	tz->mode = THERMAL_DEVICE_ENABLED;
+	tz->thermal_zone->mode = THERMAL_DEVICE_ENABLED;
 
 	dev_info(&tz->device->dev, "registered as thermal_zone%d\n",
 		 tz->thermal_zone->id);
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c b/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
index ce0a6837daa3..aa082e8a0b13 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
@@ -98,7 +98,6 @@ struct mlxsw_thermal_module {
 	struct mlxsw_thermal *parent;
 	struct thermal_zone_device *tzdev;
 	struct mlxsw_thermal_trip trips[MLXSW_THERMAL_NUM_TRIPS];
-	enum thermal_device_mode mode;
 	int module; /* Module or gearbox number */
 };
 
@@ -110,7 +109,6 @@ struct mlxsw_thermal {
 	struct thermal_cooling_device *cdevs[MLXSW_MFCR_PWMS_MAX];
 	u8 cooling_levels[MLXSW_THERMAL_MAX_STATE + 1];
 	struct mlxsw_thermal_trip trips[MLXSW_THERMAL_NUM_TRIPS];
-	enum thermal_device_mode mode;
 	struct mlxsw_thermal_module *tz_module_arr;
 	u8 tz_module_num;
 	struct mlxsw_thermal_module *tz_gearbox_arr;
@@ -280,9 +278,7 @@ static int mlxsw_thermal_unbind(struct thermal_zone_device *tzdev,
 static int mlxsw_thermal_get_mode(struct thermal_zone_device *tzdev,
 				  enum thermal_device_mode *mode)
 {
-	struct mlxsw_thermal *thermal = tzdev->devdata;
-
-	*mode = thermal->mode;
+	*mode = tzdev->mode;
 
 	return 0;
 }
@@ -299,9 +295,9 @@ static int mlxsw_thermal_set_mode(struct thermal_zone_device *tzdev,
 	else
 		tzdev->polling_delay = 0;
 
+	tzdev->mode = mode;
 	mutex_unlock(&tzdev->lock);
 
-	thermal->mode = mode;
 	thermal_zone_device_update(tzdev, THERMAL_EVENT_UNSPECIFIED);
 
 	return 0;
@@ -469,9 +465,7 @@ static int mlxsw_thermal_module_unbind(struct thermal_zone_device *tzdev,
 static int mlxsw_thermal_module_mode_get(struct thermal_zone_device *tzdev,
 					 enum thermal_device_mode *mode)
 {
-	struct mlxsw_thermal_module *tz = tzdev->devdata;
-
-	*mode = tz->mode;
+	*mode = tzdev->mode;
 
 	return 0;
 }
@@ -489,9 +483,10 @@ static int mlxsw_thermal_module_mode_set(struct thermal_zone_device *tzdev,
 	else
 		tzdev->polling_delay = 0;
 
+	tzdev->mode = mode;
+
 	mutex_unlock(&tzdev->lock);
 
-	tz->mode = mode;
 	thermal_zone_device_update(tzdev, THERMAL_EVENT_UNSPECIFIED);
 
 	return 0;
@@ -765,7 +760,7 @@ mlxsw_thermal_module_tz_init(struct mlxsw_thermal_module *module_tz)
 		return err;
 	}
 
-	module_tz->mode = THERMAL_DEVICE_ENABLED;
+	module_tz->tzdev->mode = THERMAL_DEVICE_ENABLED;
 	return 0;
 }
 
@@ -881,7 +876,7 @@ mlxsw_thermal_gearbox_tz_init(struct mlxsw_thermal_module *gearbox_tz)
 	if (IS_ERR(gearbox_tz->tzdev))
 		return PTR_ERR(gearbox_tz->tzdev);
 
-	gearbox_tz->mode = THERMAL_DEVICE_ENABLED;
+	gearbox_tz->tzdev->mode = THERMAL_DEVICE_ENABLED;
 	return 0;
 }
 
@@ -1050,7 +1045,7 @@ int mlxsw_thermal_init(struct mlxsw_core *core,
 	if (err)
 		goto err_unreg_modules_tzdev;
 
-	thermal->mode = THERMAL_DEVICE_ENABLED;
+	thermal->tzdev->mode = THERMAL_DEVICE_ENABLED;
 	*p_thermal = thermal;
 	return 0;
 
diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
index 830a8b060e74..97b288485837 100644
--- a/drivers/platform/x86/acerhdf.c
+++ b/drivers/platform/x86/acerhdf.c
@@ -68,7 +68,6 @@ static int kernelmode = 1;
 #else
 static int kernelmode;
 #endif
-static enum thermal_device_mode thermal_mode;
 
 static unsigned int interval = 10;
 static unsigned int fanon = 60000;
@@ -398,15 +397,16 @@ static inline void acerhdf_revert_to_bios_mode(void)
 {
 	acerhdf_change_fanstate(ACERHDF_FAN_AUTO);
 	kernelmode = 0;
-	thermal_mode = THERMAL_DEVICE_DISABLED;
-	if (thz_dev)
+	if (thz_dev) {
+		thz_dev->mode = THERMAL_DEVICE_DISABLED;
 		thz_dev->polling_delay = 0;
+	}
 	pr_notice("kernel mode fan control OFF\n");
 }
 static inline void acerhdf_enable_kernelmode(void)
 {
 	kernelmode = 1;
-	thermal_mode = THERMAL_DEVICE_ENABLED;
+	thz_dev->mode = THERMAL_DEVICE_ENABLED;
 
 	thz_dev->polling_delay = interval*1000;
 	thermal_zone_device_update(thz_dev, THERMAL_EVENT_UNSPECIFIED);
@@ -419,7 +419,7 @@ static int acerhdf_get_mode(struct thermal_zone_device *thermal,
 	if (verbose)
 		pr_notice("kernel mode fan control %d\n", kernelmode);
 
-	*mode = thermal_mode;
+	*mode = thermal->mode;
 
 	return 0;
 }
@@ -741,8 +741,6 @@ static int __init acerhdf_register_thermal(void)
 	if (IS_ERR(cl_dev))
 		return -EINVAL;
 
-	thermal_mode = kernelmode ?
-		THERMAL_DEVICE_ENABLED : THERMAL_DEVICE_DISABLED;
 	thz_dev = thermal_zone_device_register("acerhdf", 2, 0, NULL,
 					      &acerhdf_dev_ops,
 					      &acerhdf_zone_params, 0,
@@ -750,6 +748,9 @@ static int __init acerhdf_register_thermal(void)
 	if (IS_ERR(thz_dev))
 		return -EINVAL;
 
+	thz_dev->mode = kernelmode ?
+		THERMAL_DEVICE_ENABLED : THERMAL_DEVICE_DISABLED;
+
 	if (strcmp(thz_dev->governor->name,
 				acerhdf_zone_params.governor_name)) {
 		pr_err("Didn't get thermal governor %s, perhaps not compiled into thermal subsystem.\n",
diff --git a/drivers/thermal/da9062-thermal.c b/drivers/thermal/da9062-thermal.c
index c32709badeda..a14c7981c7c7 100644
--- a/drivers/thermal/da9062-thermal.c
+++ b/drivers/thermal/da9062-thermal.c
@@ -49,7 +49,6 @@ struct da9062_thermal {
 	struct da9062 *hw;
 	struct delayed_work work;
 	struct thermal_zone_device *zone;
-	enum thermal_device_mode mode;
 	struct mutex lock; /* protection for da9062_thermal temperature */
 	int temperature;
 	int irq;
@@ -124,8 +123,7 @@ static irqreturn_t da9062_thermal_irq_handler(int irq, void *data)
 static int da9062_thermal_get_mode(struct thermal_zone_device *z,
 				   enum thermal_device_mode *mode)
 {
-	struct da9062_thermal *thermal = z->devdata;
-	*mode = thermal->mode;
+	*mode = z->mode;
 	return 0;
 }
 
@@ -233,7 +231,6 @@ static int da9062_thermal_probe(struct platform_device *pdev)
 
 	thermal->config = match->data;
 	thermal->hw = chip;
-	thermal->mode = THERMAL_DEVICE_ENABLED;
 	thermal->dev = &pdev->dev;
 
 	INIT_DELAYED_WORK(&thermal->work, da9062_thermal_poll_on);
@@ -248,6 +245,7 @@ static int da9062_thermal_probe(struct platform_device *pdev)
 		ret = PTR_ERR(thermal->zone);
 		goto err;
 	}
+	thermal->zone->mode = THERMAL_DEVICE_ENABLED;
 
 	dev_dbg(&pdev->dev,
 		"TJUNC temperature polling period set at %d ms\n",
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index e761c9b42217..9a1114d721b6 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -197,7 +197,6 @@ struct imx_thermal_data {
 	struct cpufreq_policy *policy;
 	struct thermal_zone_device *tz;
 	struct thermal_cooling_device *cdev;
-	enum thermal_device_mode mode;
 	struct regmap *tempmon;
 	u32 c1, c2; /* See formula in imx_init_calib() */
 	int temp_passive;
@@ -256,7 +255,7 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 	bool wait;
 	u32 val;
 
-	if (data->mode == THERMAL_DEVICE_ENABLED) {
+	if (tz->mode == THERMAL_DEVICE_ENABLED) {
 		/* Check if a measurement is currently in progress */
 		regmap_read(map, soc_data->temp_data, &val);
 		wait = !(val & soc_data->temp_valid_mask);
@@ -283,7 +282,7 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 
 	regmap_read(map, soc_data->temp_data, &val);
 
-	if (data->mode != THERMAL_DEVICE_ENABLED) {
+	if (tz->mode != THERMAL_DEVICE_ENABLED) {
 		regmap_write(map, soc_data->sensor_ctrl + REG_CLR,
 			     soc_data->measure_temp_mask);
 		regmap_write(map, soc_data->sensor_ctrl + REG_SET,
@@ -334,9 +333,7 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 static int imx_get_mode(struct thermal_zone_device *tz,
 			enum thermal_device_mode *mode)
 {
-	struct imx_thermal_data *data = tz->devdata;
-
-	*mode = data->mode;
+	*mode = tz->mode;
 
 	return 0;
 }
@@ -376,7 +373,7 @@ static int imx_set_mode(struct thermal_zone_device *tz,
 		}
 	}
 
-	data->mode = mode;
+	tz->mode = mode;
 	thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);
 
 	return 0;
@@ -831,7 +828,7 @@ static int imx_thermal_probe(struct platform_device *pdev)
 		     data->socdata->measure_temp_mask);
 
 	data->irq_enabled = true;
-	data->mode = THERMAL_DEVICE_ENABLED;
+	data->tz->mode = THERMAL_DEVICE_ENABLED;
 
 	ret = devm_request_threaded_irq(&pdev->dev, data->irq,
 			imx_thermal_alarm_irq, imx_thermal_alarm_irq_thread,
@@ -885,7 +882,7 @@ static int __maybe_unused imx_thermal_suspend(struct device *dev)
 		     data->socdata->measure_temp_mask);
 	regmap_write(map, data->socdata->sensor_ctrl + REG_SET,
 		     data->socdata->power_down_mask);
-	data->mode = THERMAL_DEVICE_DISABLED;
+	data->tz->mode = THERMAL_DEVICE_DISABLED;
 	clk_disable_unprepare(data->thermal_clk);
 
 	return 0;
@@ -905,7 +902,7 @@ static int __maybe_unused imx_thermal_resume(struct device *dev)
 		     data->socdata->power_down_mask);
 	regmap_write(map, data->socdata->sensor_ctrl + REG_SET,
 		     data->socdata->measure_temp_mask);
-	data->mode = THERMAL_DEVICE_ENABLED;
+	data->tz->mode = THERMAL_DEVICE_ENABLED;
 
 	return 0;
 }
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index e84faaadff87..f65b2fc09198 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -48,7 +48,6 @@ struct int3400_thermal_priv {
 	struct acpi_device *adev;
 	struct platform_device *pdev;
 	struct thermal_zone_device *thermal;
-	enum thermal_device_mode mode;
 	int art_count;
 	struct art *arts;
 	int trt_count;
@@ -381,12 +380,7 @@ static int int3400_thermal_get_temp(struct thermal_zone_device *thermal,
 static int int3400_thermal_get_mode(struct thermal_zone_device *thermal,
 				enum thermal_device_mode *mode)
 {
-	struct int3400_thermal_priv *priv = thermal->devdata;
-
-	if (!priv)
-		return -EINVAL;
-
-	*mode = priv->mode;
+	*mode = thermal->mode;
 
 	return 0;
 }
@@ -404,8 +398,8 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
 	    mode != THERMAL_DEVICE_DISABLED)
 		return -EINVAL;
 
-	if (mode != priv->mode) {
-		priv->mode = mode;
+	if (mode != thermal->mode) {
+		thermal->mode = mode;
 		result = int3400_thermal_run_osc(priv->adev->handle,
 						priv->current_uuid_index,
 						mode == THERMAL_DEVICE_ENABLED);
diff --git a/drivers/thermal/intel/intel_quark_dts_thermal.c b/drivers/thermal/intel/intel_quark_dts_thermal.c
index d704fc104cfd..d77cb3df5ade 100644
--- a/drivers/thermal/intel/intel_quark_dts_thermal.c
+++ b/drivers/thermal/intel/intel_quark_dts_thermal.c
@@ -103,7 +103,6 @@ struct soc_sensor_entry {
 	bool locked;
 	u32 store_ptps;
 	u32 store_dts_enable;
-	enum thermal_device_mode mode;
 	struct thermal_zone_device *tzone;
 };
 
@@ -128,7 +127,7 @@ static int soc_dts_enable(struct thermal_zone_device *tzd)
 		return ret;
 
 	if (out & QRK_DTS_ENABLE_BIT) {
-		aux_entry->mode = THERMAL_DEVICE_ENABLED;
+		tzd->mode = THERMAL_DEVICE_ENABLED;
 		return 0;
 	}
 
@@ -139,9 +138,9 @@ static int soc_dts_enable(struct thermal_zone_device *tzd)
 		if (ret)
 			return ret;
 
-		aux_entry->mode = THERMAL_DEVICE_ENABLED;
+		tzd->mode = THERMAL_DEVICE_ENABLED;
 	} else {
-		aux_entry->mode = THERMAL_DEVICE_DISABLED;
+		tzd->mode = THERMAL_DEVICE_DISABLED;
 		pr_info("DTS is locked. Cannot enable DTS\n");
 		ret = -EPERM;
 	}
@@ -161,7 +160,7 @@ static int soc_dts_disable(struct thermal_zone_device *tzd)
 		return ret;
 
 	if (!(out & QRK_DTS_ENABLE_BIT)) {
-		aux_entry->mode = THERMAL_DEVICE_DISABLED;
+		tzd->mode = THERMAL_DEVICE_DISABLED;
 		return 0;
 	}
 
@@ -173,9 +172,9 @@ static int soc_dts_disable(struct thermal_zone_device *tzd)
 		if (ret)
 			return ret;
 
-		aux_entry->mode = THERMAL_DEVICE_DISABLED;
+		tzd->mode = THERMAL_DEVICE_DISABLED;
 	} else {
-		aux_entry->mode = THERMAL_DEVICE_ENABLED;
+		tzd->mode = THERMAL_DEVICE_ENABLED;
 		pr_info("DTS is locked. Cannot disable DTS\n");
 		ret = -EPERM;
 	}
@@ -312,8 +311,7 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 static int sys_get_mode(struct thermal_zone_device *tzd,
 				enum thermal_device_mode *mode)
 {
-	struct soc_sensor_entry *aux_entry = tzd->devdata;
-	*mode = aux_entry->mode;
+	*mode = tzd->mode;
 	return 0;
 }
 
diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index ddf88dbe7ba2..c495b1e48ef2 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -51,7 +51,6 @@ struct __thermal_bind_params {
 
 /**
  * struct __thermal_zone - internal representation of a thermal zone
- * @mode: current thermal zone device mode (enabled/disabled)
  * @passive_delay: polling interval while passive cooling is activated
  * @polling_delay: zone polling interval
  * @slope: slope of the temperature adjustment curve
@@ -65,7 +64,6 @@ struct __thermal_bind_params {
  */
 
 struct __thermal_zone {
-	enum thermal_device_mode mode;
 	int passive_delay;
 	int polling_delay;
 	int slope;
@@ -272,9 +270,7 @@ static int of_thermal_unbind(struct thermal_zone_device *thermal,
 static int of_thermal_get_mode(struct thermal_zone_device *tz,
 			       enum thermal_device_mode *mode)
 {
-	struct __thermal_zone *data = tz->devdata;
-
-	*mode = data->mode;
+	*mode = tz->mode;
 
 	return 0;
 }
@@ -296,7 +292,7 @@ static int of_thermal_set_mode(struct thermal_zone_device *tz,
 
 	mutex_unlock(&tz->lock);
 
-	data->mode = mode;
+	tz->mode = mode;
 	thermal_zone_device_update(tz, THERMAL_EVENT_UNSPECIFIED);
 
 	return 0;
@@ -979,7 +975,6 @@ __init *thermal_of_build_thermal_zone(struct device_node *np)
 
 finish:
 	of_node_put(child);
-	tz->mode = THERMAL_DEVICE_DISABLED;
 
 	return tz;
 
@@ -1134,6 +1129,7 @@ int __init of_parse_thermal_zones(void)
 			of_thermal_free_zone(tz);
 			/* attempting to build remaining zones still */
 		}
+		zone->mode = THERMAL_DEVICE_DISABLED;
 	}
 	of_node_put(np);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
