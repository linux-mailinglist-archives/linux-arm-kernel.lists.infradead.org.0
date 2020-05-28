Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B669A1E6AEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:28:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ip0YnF/GxVaoK4htQWoSM6z5GaEKAj3uGauOG52GwHk=; b=CqSjYDofQlklDSwkQsfDbpm9/r
	2MHHrOoV/RoOkJajrdi+kheOJZPpdOTfrESOqms3ava8aIquqJElnp3scG2zgoVkq3NYtnN8a19aD
	G6e8u8D4tg5xMT7bgOuH6YL9AurVjX8WA3POTwyYte3gs+pxtn9ew/3ogVlamXbBbEmO/zKMmqYWP
	Vn0HyUenJY6oi3qgn7xTc9NvXiahaLbtDjUIGrHXsud5bAqtdW+J1yxJ3NI6MJo6MPIl8urLwJaI1
	hIfwpXGKm1+l4JMqaUtCrNLbr+z/qWdPN3z3ZYInCKB9+SchayIqIPIRF1Tm4AcoIPXuNKQCF5h0i
	XcQWIf/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOC6-0006za-SQ; Thu, 28 May 2020 19:27:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO6b-0007Zx-KC; Thu, 28 May 2020 19:22:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7D42C2A41D7
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 11/11] thermal: Rename set_mode() to change_mode()
Date: Thu, 28 May 2020 21:20:51 +0200
Message-Id: <20200528192051.28034-12-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192051.28034-1-andrzej.p@collabora.com>
References: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122217_958954_78E26403 
X-CRM114-Status: GOOD (  14.31  )
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

set_mode() is only called when tzd's mode is about to change. Actual
setting is performed in thermal_core, in thermal_zone_device_set_mode().
The meaning of set_mode() callback is actually to notify the driver about
the mode being changed and giving the driver a chance to oppose such
change.

To better reflect the purpose of the method rename it to change_mode()

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/platform/x86/acerhdf.c                          | 6 +++---
 drivers/thermal/imx_thermal.c                           | 8 ++++----
 drivers/thermal/intel/int340x_thermal/int3400_thermal.c | 6 +++---
 drivers/thermal/intel/intel_quark_dts_thermal.c         | 6 +++---
 drivers/thermal/thermal_core.c                          | 4 ++--
 include/linux/thermal.h                                 | 2 +-
 6 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
index d33a70af0869..63b562e06d5c 100644
--- a/drivers/platform/x86/acerhdf.c
+++ b/drivers/platform/x86/acerhdf.c
@@ -413,8 +413,8 @@ static inline void acerhdf_enable_kernelmode(void)
  *          the temperature and the fan.
  * disabled: the BIOS takes control of the fan.
  */
-static int acerhdf_set_mode(struct thermal_zone_device *thermal,
-			    enum thermal_device_mode mode)
+static int acerhdf_change_mode(struct thermal_zone_device *thermal,
+			       enum thermal_device_mode mode)
 {
 	if (mode == THERMAL_DEVICE_DISABLED && kernelmode)
 		acerhdf_revert_to_bios_mode();
@@ -473,7 +473,7 @@ static struct thermal_zone_device_ops acerhdf_dev_ops = {
 	.bind = acerhdf_bind,
 	.unbind = acerhdf_unbind,
 	.get_temp = acerhdf_get_ec_temp,
-	.set_mode = acerhdf_set_mode,
+	.change_mode = acerhdf_change_mode,
 	.get_trip_type = acerhdf_get_trip_type,
 	.get_trip_hyst = acerhdf_get_trip_hyst,
 	.get_trip_temp = acerhdf_get_trip_temp,
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index a02398118d88..9700ae39feb7 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -330,8 +330,8 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 	return 0;
 }
 
-static int imx_set_mode(struct thermal_zone_device *tz,
-			enum thermal_device_mode mode)
+static int imx_change_mode(struct thermal_zone_device *tz,
+			   enum thermal_device_mode mode)
 {
 	struct imx_thermal_data *data = tz->devdata;
 	struct regmap *map = data->tempmon;
@@ -447,7 +447,7 @@ static struct thermal_zone_device_ops imx_tz_ops = {
 	.bind = imx_bind,
 	.unbind = imx_unbind,
 	.get_temp = imx_get_temp,
-	.set_mode = imx_set_mode,
+	.change_mode = imx_change_mode,
 	.get_trip_type = imx_get_trip_type,
 	.get_trip_temp = imx_get_trip_temp,
 	.get_crit_temp = imx_get_crit_temp,
@@ -860,7 +860,7 @@ static int __maybe_unused imx_thermal_suspend(struct device *dev)
 	 * Need to disable thermal sensor, otherwise, when thermal core
 	 * try to get temperature before thermal sensor resume, a wrong
 	 * temperature will be read as the thermal sensor is powered
-	 * down. This is done in set_mode() operation called from
+	 * down. This is done in change_mode() operation called from
 	 * thermal_zone_device_disable()
 	 */
 	ret = thermal_zone_device_disable(data->tz);
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index 9af862ab9f65..58870d215471 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -377,8 +377,8 @@ static int int3400_thermal_get_temp(struct thermal_zone_device *thermal,
 	return 0;
 }
 
-static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
-				enum thermal_device_mode mode)
+static int int3400_thermal_change_mode(struct thermal_zone_device *thermal,
+				       enum thermal_device_mode mode)
 {
 	struct int3400_thermal_priv *priv = thermal->devdata;
 	int result = 0;
@@ -399,7 +399,7 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
 
 static struct thermal_zone_device_ops int3400_thermal_ops = {
 	.get_temp = int3400_thermal_get_temp,
-	.set_mode = int3400_thermal_set_mode,
+	.change_mode = int3400_thermal_change_mode,
 };
 
 static struct thermal_zone_params int3400_thermal_params = {
diff --git a/drivers/thermal/intel/intel_quark_dts_thermal.c b/drivers/thermal/intel/intel_quark_dts_thermal.c
index e29c3e330b17..3eafc6b0e6c3 100644
--- a/drivers/thermal/intel/intel_quark_dts_thermal.c
+++ b/drivers/thermal/intel/intel_quark_dts_thermal.c
@@ -298,8 +298,8 @@ static int sys_get_curr_temp(struct thermal_zone_device *tzd,
 	return 0;
 }
 
-static int sys_set_mode(struct thermal_zone_device *tzd,
-				enum thermal_device_mode mode)
+static int sys_change_mode(struct thermal_zone_device *tzd,
+			   enum thermal_device_mode mode)
 {
 	int ret;
 
@@ -319,7 +319,7 @@ static struct thermal_zone_device_ops tzone_ops = {
 	.get_trip_type = sys_get_trip_type,
 	.set_trip_temp = sys_set_trip_temp,
 	.get_crit_temp = sys_get_crit_temp,
-	.set_mode = sys_set_mode,
+	.change_mode = sys_change_mode,
 };
 
 static void free_soc_dts(struct soc_sensor_entry *aux_entry)
diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index e9c0b990e4a9..c00edae7839e 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -482,8 +482,8 @@ int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
 		return ret;
 	}
 
-	if (tz->ops->set_mode)
-		ret = tz->ops->set_mode(tz, mode);
+	if (tz->ops->change_mode)
+		ret = tz->ops->change_mode(tz, mode);
 
 	if (!ret)
 		tz->mode = mode;
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index df013c39ba9b..b9efaa780d88 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -76,7 +76,7 @@ struct thermal_zone_device_ops {
 		       struct thermal_cooling_device *);
 	int (*get_temp) (struct thermal_zone_device *, int *);
 	int (*set_trips) (struct thermal_zone_device *, int, int);
-	int (*set_mode) (struct thermal_zone_device *,
+	int (*change_mode) (struct thermal_zone_device *,
 		enum thermal_device_mode);
 	int (*get_trip_type) (struct thermal_zone_device *, int,
 		enum thermal_trip_type *);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
