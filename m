Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4201A8856
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k4TZcEEDD4D2HQzXsTH8gN8OeANDivRf9RlKvbftOoA=; b=mKTfQngRzLQpBXvKRijEyAMvlf
	dElorCV0MJ+HmGIa1aWMJaJopB859TVolW2imIM66IhPFZDsOABv1/CwzIEoFszTKKmAP+prTCRsi
	DjX3+A0JVA7exsji7FcNNR2j3fFpdw6ftWkiib1cVcBvcUpVdchKKUSmsg9dVGWkQ/dP3YNMxB7p4
	Yc/FS65oH3HZQ1dXoEiPhbWQ3CnaWEnMHicUCkA8jGI/Q6EMGkFvgL6e1evMI8O51Lh93gKD55kz/
	2H+DLf9sGDctLXaXzDE/5RTNCVTQmV86+slrRqCpq7A2DJPDxN7HSs7MjmcrATdhNoYpEGDkNluGU
	nb/1lnjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPtl-0003c6-J0; Tue, 14 Apr 2020 18:03:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPsM-0002Pm-OG
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:01:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A8CD92A1BE7
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC v2 7/9] thermal: core: Monitor thermal zone after mode change
Date: Tue, 14 Apr 2020 20:01:03 +0200
Message-Id: <20200414180105.20042-8-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200414180105.20042-1-andrzej.p@collabora.com>
References: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
 <20200414180105.20042-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110134_940970_F11A5595 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Mode changing might imply a need to stop/start polling the device.
monitor_thermal_zone() when mode changes.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/thermal/thermal_core.c  | 2 +-
 drivers/thermal/thermal_core.h  | 2 ++
 drivers/thermal/thermal_sysfs.c | 7 +++++++
 3 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index a59c3411fb9c..7637ddb79813 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -305,7 +305,7 @@ static void thermal_zone_device_set_polling(struct thermal_zone_device *tz,
 		cancel_delayed_work(&tz->poll_queue);
 }
 
-static void monitor_thermal_zone(struct thermal_zone_device *tz)
+void monitor_thermal_zone(struct thermal_zone_device *tz)
 {
 	mutex_lock(&tz->lock);
 
diff --git a/drivers/thermal/thermal_core.h b/drivers/thermal/thermal_core.h
index a9bf00e91d64..469258778161 100644
--- a/drivers/thermal/thermal_core.h
+++ b/drivers/thermal/thermal_core.h
@@ -89,6 +89,8 @@ thermal_cooling_device_stats_update(struct thermal_cooling_device *cdev,
 				    unsigned long new_state) {}
 #endif /* CONFIG_THERMAL_STATISTICS */
 
+void monitor_thermal_zone(struct thermal_zone_device *tz);
+
 /* device tree support */
 #ifdef CONFIG_THERMAL_OF
 int of_parse_thermal_zones(void);
diff --git a/drivers/thermal/thermal_sysfs.c b/drivers/thermal/thermal_sysfs.c
index cbb27b3c96d2..bc34d0f9768b 100644
--- a/drivers/thermal/thermal_sysfs.c
+++ b/drivers/thermal/thermal_sysfs.c
@@ -62,11 +62,14 @@ mode_store(struct device *dev, struct device_attribute *attr,
 	   const char *buf, size_t count)
 {
 	struct thermal_zone_device *tz = to_thermal_zone(dev);
+	enum thermal_device_mode old_mode, mode;
 	int result;
 
 	if (!tz->ops->set_mode)
 		return -EPERM;
 
+	old_mode = thermal_zone_device_get_mode(tz);
+
 	if (!strncmp(buf, "enabled", sizeof("enabled") - 1))
 		result = thermal_zone_device_enable(tz);
 	else if (!strncmp(buf, "disabled", sizeof("disabled") - 1))
@@ -77,6 +80,10 @@ mode_store(struct device *dev, struct device_attribute *attr,
 	if (result)
 		return result;
 
+	mode = thermal_zone_device_get_mode(tz);
+	if (mode != old_mode)
+		monitor_thermal_zone(tz);
+
 	return count;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
