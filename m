Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E14101A884C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AVfztCBUgUJkMyLgZBFYVxHmVQSe//2JY9WAR9t4lfc=; b=OlWvuBaCcitiG472NhfoBp1lvj
	sunql2IC2+E+o83ctEDFi11jZD5dcBCdCAJUUFaf12ncwixipcS0LZNxFBskKIAJa0CBxQYK0NuXf
	+k04cgJ9zQuS4zyfJ09P2LwLwhmmUGJ5CtunEUGBp7cpXuHMTCbg/ul6qYfxi5ObwgBjfevTRcHAf
	h0RfDA1LmsebY5XJEQil8FI0rz8GvqPFKXHwcC+7DxQT+FfxsFmbUkajBPmOsdZE+5Bq0Uq0lNwWL
	jfnX/i6I1iBzTZdVpuVjN/ChZ0HvxQ+9WcoahVfbrpNXgcthLgrJYXbOtONqha2BF79Zz5yN+gWVC
	xUbV7TeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPtU-0003Im-Fa; Tue, 14 Apr 2020 18:02:44 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPsE-0002IP-FR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:01:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id F37A42A1BDC
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC v2 4/9] thermal: core: Let thermal zone device's mode be stored
 in its struct
Date: Tue, 14 Apr 2020 20:01:00 +0200
Message-Id: <20200414180105.20042-5-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414180105.20042-1-andrzej.p@collabora.com>
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110126_802027_4757070B 
X-CRM114-Status: GOOD (  11.26  )
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

All the drivers which provide ->get_mode()/->set_mode() methods store their
mode in a thermal_device_mode enum, so keep this information in struct
thermal_zone_device rather than scattered all over the place.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/thermal/thermal_core.c  | 28 +++++++++++++++++++
 drivers/thermal/thermal_sysfs.c |  9 +++----
 include/linux/thermal.h         | 48 +++++++++++++++++++++++++++++++++
 3 files changed, 79 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index 9a321dc548c8..cb0ff47f0dbe 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -469,6 +469,34 @@ static void thermal_zone_device_reset(struct thermal_zone_device *tz)
 	thermal_zone_device_init(tz);
 }
 
+int thermal_zone_device_get_mode(struct thermal_zone_device *tz,
+				 enum thermal_device_mode *mode)
+{
+	if (tz->ops->get_mode)
+		return tz->ops->get_mode(tz, mode);
+
+	*mode = tz->mode;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(thermal_zone_device_get_mode);
+
+int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
+				 enum thermal_device_mode mode)
+{
+	if (mode != THERMAL_DEVICE_DISABLED &&
+	    mode != THERMAL_DEVICE_ENABLED)
+		return -EINVAL;
+
+	if (tz->ops->set_mode)
+		return tz->ops->set_mode(tz, mode);
+
+	tz->mode = mode;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(thermal_zone_device_set_mode);
+
 void thermal_zone_device_update(struct thermal_zone_device *tz,
 				enum thermal_notify_event event)
 {
diff --git a/drivers/thermal/thermal_sysfs.c b/drivers/thermal/thermal_sysfs.c
index aa99edb4dff7..66d9691b8bd6 100644
--- a/drivers/thermal/thermal_sysfs.c
+++ b/drivers/thermal/thermal_sysfs.c
@@ -52,10 +52,7 @@ mode_show(struct device *dev, struct device_attribute *attr, char *buf)
 	enum thermal_device_mode mode;
 	int result;
 
-	if (!tz->ops->get_mode)
-		return -EPERM;
-
-	result = tz->ops->get_mode(tz, &mode);
+	result = thermal_zone_device_get_mode(tz, &mode);
 	if (result)
 		return result;
 
@@ -74,9 +71,9 @@ mode_store(struct device *dev, struct device_attribute *attr,
 		return -EPERM;
 
 	if (!strncmp(buf, "enabled", sizeof("enabled") - 1))
-		result = tz->ops->set_mode(tz, THERMAL_DEVICE_ENABLED);
+		result = thermal_zone_device_enable(tz);
 	else if (!strncmp(buf, "disabled", sizeof("disabled") - 1))
-		result = tz->ops->set_mode(tz, THERMAL_DEVICE_DISABLED);
+		result = thermal_zone_device_disable(tz);
 	else
 		result = -EINVAL;
 
diff --git a/include/linux/thermal.h b/include/linux/thermal.h
index c91b1e344d56..9ff8542b7e7d 100644
--- a/include/linux/thermal.h
+++ b/include/linux/thermal.h
@@ -143,6 +143,7 @@ struct thermal_attr {
  * @trip_temp_attrs:	attributes for trip points for sysfs: trip temperature
  * @trip_type_attrs:	attributes for trip points for sysfs: trip type
  * @trip_hyst_attrs:	attributes for trip points for sysfs: trip hysteresis
+ * @mode:		current mode of this thermal zone
  * @devdata:	private pointer for device private data
  * @trips:	number of trip points the thermal zone supports
  * @trips_disabled;	bitmap for disabled trips
@@ -185,6 +186,7 @@ struct thermal_zone_device {
 	struct thermal_attr *trip_temp_attrs;
 	struct thermal_attr *trip_type_attrs;
 	struct thermal_attr *trip_hyst_attrs;
+	enum thermal_device_mode mode;
 	void *devdata;
 	int trips;
 	unsigned long trips_disabled;	/* bitmap for disabled trips */
@@ -437,6 +439,19 @@ int thermal_zone_bind_cooling_device(struct thermal_zone_device *, int,
 				     unsigned int);
 int thermal_zone_unbind_cooling_device(struct thermal_zone_device *, int,
 				       struct thermal_cooling_device *);
+
+int thermal_zone_device_get_mode(struct thermal_zone_device *tz,
+				 enum thermal_device_mode *mode);
+int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
+				 enum thermal_device_mode mode);
+
+static inline void
+thermal_zone_device_store_mode(struct thermal_zone_device *tz,
+			       enum thermal_device_mode mode)
+{
+	tz->mode = mode;
+}
+
 void thermal_zone_device_update(struct thermal_zone_device *,
 				enum thermal_notify_event);
 void thermal_zone_set_trips(struct thermal_zone_device *);
@@ -494,6 +509,17 @@ static inline int thermal_zone_unbind_cooling_device(
 	struct thermal_zone_device *tz, int trip,
 	struct thermal_cooling_device *cdev)
 { return -ENODEV; }
+static inline int thermal_zone_device_get_mode(struct thermal_zone_device *tz,
+					       enum thermal_device_mode *mode)
+{ return -ENODEV; }
+static inline int thermal_zone_device_set_mode(struct thermal_zone_device *tz,
+					       enum thermal_device_mode mode)
+{ return -ENODEV; }
+static inline void
+thermal_zone_device_store_mode(struct thermal_zone_device *tz,
+			       enum thermal_device_mode mode)
+{ }
+
 static inline void thermal_zone_device_update(struct thermal_zone_device *tz,
 					      enum thermal_notify_event event)
 { }
@@ -543,4 +569,26 @@ static inline void thermal_notify_framework(struct thermal_zone_device *tz,
 { }
 #endif /* CONFIG_THERMAL */
 
+static inline int thermal_zone_device_enable(struct thermal_zone_device *tz)
+{
+	return thermal_zone_device_set_mode(tz, THERMAL_DEVICE_ENABLED);
+}
+
+static inline int thermal_zone_device_disable(struct thermal_zone_device *tz)
+{
+	return thermal_zone_device_set_mode(tz, THERMAL_DEVICE_DISABLED);
+}
+
+static inline void
+thermal_zone_device_store_enabled(struct thermal_zone_device *tz)
+{
+	thermal_zone_device_store_mode(tz, THERMAL_DEVICE_ENABLED);
+}
+
+static inline void
+thermal_zone_device_store_disabled(struct thermal_zone_device *tz)
+{
+	thermal_zone_device_store_mode(tz, THERMAL_DEVICE_DISABLED);
+}
+
 #endif /* __THERMAL_H__ */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
