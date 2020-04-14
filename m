Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B72A1A886A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SCnAWpw0wdyP6MRQoiqFKtbf4sNF+bV1BCPOnP/Ig4Y=; b=eJR+fGwF8ILp9AoFGcVR+5KOUD
	GiJLFwpG7jOsjajvWQZQe9nLZWG/21jWIS7KB3ltDbc6DknZPuVr5rrqS3UcsuVvUVP8uqDs3d6SD
	E1FYIRLb/iZh/sE+uqOswdl3vO0HTu4F4HMYG2X4NWOFF5KKAUkyj/vpcqD4XwvgU47ScoqXGgLGF
	xsTouUBoS/a6VOmM4HJyTLn8suAjMiro+n6UPbZvznD6gQVSoH51SO8fT0/42+gaViDIhWClkXO8A
	zDXjIXYxuNSjOK51qfCY4h2gWwBHomLQVqw3aAG4vIJLJWWX1WO8akte8fvVlfx1vLHlDzRpKN1Yj
	gW3WPmUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPuS-0004Ke-BO; Tue, 14 Apr 2020 18:03:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPsJ-0002Np-Px
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:01:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 252982A1BDE
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC v2 6/9] thermal: Remove get_mode() method
Date: Tue, 14 Apr 2020 20:01:02 +0200
Message-Id: <20200414180105.20042-7-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414180105.20042-1-andrzej.p@collabora.com>
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110132_138679_4C8B9090 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that mode of all thermal zone devices is stored in struct
thermal_zone_device the get_mode() method is not used nor necessary any
more. All its former users used it only to report the state of their
then-internal variable.

The sysfs "mode" attribute is always exposed from now on. It doesn't hurt
the drivers which don't provide their own set_mode(), because writing to
"mode" will result in -EPERM, as expected.

thermal_zone_device_get_mode() will always succeed, so let it return the
actual value rather than an always-zero return code.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/acpi/thermal.c                        | 12 ++--------
 drivers/thermal/imx_thermal.c                 |  6 +----
 .../intel/int340x_thermal/int3400_thermal.c   |  6 +----
 drivers/thermal/thermal_core.c                | 16 +-------------
 drivers/thermal/thermal_sysfs.c               | 22 +------------------
 include/linux/thermal.h                       | 16 ++++++++------
 6 files changed, 15 insertions(+), 63 deletions(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index 755f12b76c20..bfe573076a3f 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -500,11 +500,7 @@ static void acpi_thermal_check(void *data)
 	struct acpi_thermal *tz = data;
 	enum thermal_device_mode mode;
 
-	/*
-	 * this driver does not provide ->get_mode(), so calling
-	 * thermal_zone_device_get_mode() always succeeds
-	 */
-	thermal_zone_device_get_mode(tz->thermal_zone, &mode);
+	mode = thermal_zone_device_get_mode(tz->thermal_zone);
 	if (mode != THERMAL_DEVICE_ENABLED)
 		return;
 
@@ -546,11 +542,7 @@ static int thermal_set_mode(struct thermal_zone_device *thermal,
 	if (mode == THERMAL_DEVICE_DISABLED)
 		pr_warn("thermal zone will be disabled\n");
 
-	/*
-	 * this driver does not provide ->get_mode(), so calling
-	 * thermal_zone_device_get_mode() always succeeds
-	 */
-	thermal_zone_device_get_mode(thermal, &old_mode);
+	old_mode = thermal_zone_device_get_mode(thermal);
 
 	if (mode != old_mode) {
 		thermal_zone_device_store_mode(thermal, mode);
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index f3f602b4ece5..8b683c6585cf 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -256,11 +256,7 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 	bool wait;
 	u32 val;
 
-	/*
-	 * this driver does not provide ->get_mode(), so calling
-	 * thermal_zone_device_get_mode() always succeeds
-	 */
-	thermal_zone_device_get_mode(tz, &mode);
+	mode = thermal_zone_device_get_mode(tz);
 	if (mode == THERMAL_DEVICE_ENABLED) {
 		/* Check if a measurement is currently in progress */
 		regmap_read(map, soc_data->temp_data, &val);
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index a7d9b42c060d..20007fafc04b 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -240,11 +240,7 @@ static int int3400_thermal_set_mode(struct thermal_zone_device *thermal,
 	    mode != THERMAL_DEVICE_DISABLED)
 		return -EINVAL;
 
-	/*
-	 * this driver does not provide ->get_mode(), so calling
-	 * thermal_zone_device_get_mode() always succeeds
-	 */
-	thermal_zone_device_get_mode(thermal, &old_mode);
+	old_mode = thermal_zone_device_get_mode(thermal);
 	if (mode != old_mode) {
 		thermal_zone_device_store_mode(thermal, mode);
 		result = int3400_thermal_run_osc(priv->adev->handle,
diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index cb0ff47f0dbe..a59c3411fb9c 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -469,18 +469,6 @@ static void thermal_zone_device_reset(struct thermal_zone_device *tz)
 	thermal_zone_device_init(tz);
 }
 
-int thermal_zone_device_get_mode(struct thermal_zone_device *tz,
-				 enum thermal_device_mode *mode)
-{
-	if (tz->ops->get_mode)
-		return tz->ops->get_mode(tz, mode);
-
-	*mode = tz->mode;
-
-	return 0;
-}
-EXPORT_SYMBOL_GPL(thermal_zone_device_get_mode);
-
 int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
 				 enum thermal_device_mode mode)
 {
@@ -1507,9 +1495,7 @@ static int thermal_pm_notify(struct notifier_block *nb,
 	case PM_POST_SUSPEND:
 		atomic_set(&in_suspend, 0);
 		list_for_each_entry(tz, &thermal_tz_list, node) {
-			tz_mode = THERMAL_DEVICE_ENABLED;
-			if (tz->ops->get_mode)
-				tz->ops->get_mode(tz, &tz_mode);
+			tz_mode = thermal_zone_device_get_mode(tz);
 
 			if (tz_mode == THERMAL_DEVICE_DISABLED)
 				continue;
diff --git a/drivers/thermal/thermal_sysfs.c b/drivers/thermal/thermal_sysfs.c
index 66d9691b8bd6..cbb27b3c96d2 100644
--- a/drivers/thermal/thermal_sysfs.c
+++ b/drivers/thermal/thermal_sysfs.c
@@ -50,11 +50,8 @@ mode_show(struct device *dev, struct device_attribute *attr, char *buf)
 {
 	struct thermal_zone_device *tz = to_thermal_zone(dev);
 	enum thermal_device_mode mode;
-	int result;
 
-	result = thermal_zone_device_get_mode(tz, &mode);
-	if (result)
-		return result;
+	mode = thermal_zone_device_get_mode(tz);
 
 	return sprintf(buf, "%s\n", mode == THERMAL_DEVICE_ENABLED ? "enabled"
 		       : "disabled");
@@ -425,30 +422,13 @@ static struct attribute_group thermal_zone_attribute_group = {
 	.attrs = thermal_zone_dev_attrs,
 };
 
-/* We expose mode only if .get_mode is present */
 static struct attribute *thermal_zone_mode_attrs[] = {
 	&dev_attr_mode.attr,
 	NULL,
 };
 
-static umode_t thermal_zone_mode_is_visible(struct kobject *kobj,
-					    struct attribute *attr,
-					    int attrno)
-{
-	struct device *dev = container_of(kobj, struct device, kobj);
-	struct thermal_zone_device *tz;
-
-	tz = container_of(dev, struct thermal_zone_device, device);
-
-	if (tz->ops->get_mode)
-		return attr->mode;
-
-	return 0;
-}
-
 static struct attribute_group thermal_zone_mode_attribute_group = {
 	.attrs = thermal_zone_mode_attrs,
-	.is_visible = thermal_zone_mode_is_visible,
 };
 
 /* We expose passive only if passive trips are present */
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index 9ff8542b7e7d..efb481088035 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -86,8 +86,6 @@ struct thermal_zone_device_ops {
 		       struct thermal_cooling_device *);
 	int (*get_temp) (struct thermal_zone_device *, int *);
 	int (*set_trips) (struct thermal_zone_device *, int, int);
-	int (*get_mode) (struct thermal_zone_device *,
-			 enum thermal_device_mode *);
 	int (*set_mode) (struct thermal_zone_device *,
 		enum thermal_device_mode);
 	int (*get_trip_type) (struct thermal_zone_device *, int,
@@ -440,8 +438,12 @@ int thermal_zone_bind_cooling_device(struct thermal_zone_device *, int,
 int thermal_zone_unbind_cooling_device(struct thermal_zone_device *, int,
 				       struct thermal_cooling_device *);
 
-int thermal_zone_device_get_mode(struct thermal_zone_device *tz,
-				 enum thermal_device_mode *mode);
+static inline enum thermal_device_mode
+thermal_zone_device_get_mode(struct thermal_zone_device *tz)
+{
+	return tz->mode;
+}
+
 int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
 				 enum thermal_device_mode mode);
 
@@ -509,9 +511,9 @@ static inline int thermal_zone_unbind_cooling_device(
 	struct thermal_zone_device *tz, int trip,
 	struct thermal_cooling_device *cdev)
 { return -ENODEV; }
-static inline int thermal_zone_device_get_mode(struct thermal_zone_device *tz,
-					       enum thermal_device_mode *mode)
-{ return -ENODEV; }
+static inline enum thermal_device_mode
+thermal_zone_device_get_mode(struct thermal_zone_device *tz)
+{ return THERMAL_DEVICE_DISABLED; }
 static inline int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
 					       enum thermal_device_mode mode)
 { return -ENODEV; }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
