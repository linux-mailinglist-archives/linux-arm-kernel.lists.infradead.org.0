Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C421A131B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 19:50:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H05K95XFs8BRjczSG9fLzoAPSCuT7ktfQQmWfu2sqxM=; b=YUkKL1MkZIOpRedrFvLHQYB+f1
	XQjfjpLo5CoEQmUszQ4rDW3SYLnt+iHszp3dfQEWvsiNZIb5GV5TlE3rVQ3pgz8xWcQM/nh9+EvXL
	Lz+gtvSJePktiGT04YCYgIJQFp40GdugAFiv0hdg9JaTNNTb85WUh90J0/ot8F99cqmR/YmuQsE3n
	vclRC3maIXG4hfzcH9P1b3g8j378NaEMWEPautQvWbUxfm0tdNIrUWlrlmXb08G+/+hpzi2WLUc1K
	Kf5PN151mc1CudBvMdDz/N3XhuH0C8qDaQplEFQ9W4BnBtLnUrMU62dpjzKBiTiRpoB0bH9nNbWQr
	2jA4RgLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsMl-0001aH-1q; Tue, 07 Apr 2020 17:50:27 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsM2-0007U2-D2
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 17:49:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 202672972AA
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC 2/8] thermal: Properly handle mode values in .set_mode()
Date: Tue,  7 Apr 2020 19:49:20 +0200
Message-Id: <20200407174926.23971-3-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407174926.23971-1-andrzej.p@collabora.com>
References: <20200407174926.23971-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_104942_612154_B830038A 
X-CRM114-Status: GOOD (  11.19  )
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

Allow only THERMAL_DEVICE_ENABLED and THERMAL_DEVICE_DISABLED as valid
states to transition to.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/net/ethernet/mellanox/mlxsw/core_thermal.c | 8 ++++++--
 drivers/platform/x86/acerhdf.c                     | 4 ++++
 drivers/thermal/imx_thermal.c                      | 4 +++-
 drivers/thermal/intel/intel_quark_dts_thermal.c    | 5 ++++-
 drivers/thermal/of-thermal.c                       | 4 +++-
 5 files changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c b/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
index ce0a6837daa3..cd435ca7adbe 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
@@ -296,8 +296,10 @@ static int mlxsw_thermal_set_mode(struct thermal_zone_device *tzdev,
 
 	if (mode == THERMAL_DEVICE_ENABLED)
 		tzdev->polling_delay = thermal->polling_delay;
-	else
+	else if (mode == THERMAL_DEVICE_DISABLED)
 		tzdev->polling_delay = 0;
+	else
+		return -EINVAL;
 
 	mutex_unlock(&tzdev->lock);
 
@@ -486,8 +488,10 @@ static int mlxsw_thermal_module_mode_set(struct thermal_zone_device *tzdev,
 
 	if (mode == THERMAL_DEVICE_ENABLED)
 		tzdev->polling_delay = thermal->polling_delay;
-	else
+	else if (mode == THERMAL_DEVICE_DISABLED)
 		tzdev->polling_delay = 0;
+	else
+		return -EINVAL;
 
 	mutex_unlock(&tzdev->lock);
 
diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
index 8cc86f4e3ac1..d5188c1d688b 100644
--- a/drivers/platform/x86/acerhdf.c
+++ b/drivers/platform/x86/acerhdf.c
@@ -431,6 +431,10 @@ static int acerhdf_get_mode(struct thermal_zone_device *thermal,
 static int acerhdf_set_mode(struct thermal_zone_device *thermal,
 			    enum thermal_device_mode mode)
 {
+	if (mode != THERMAL_DEVICE_DISABLED &&
+	    mode != THERMAL_DEVICE_ENABLED)
+		return -EINVAL;
+
 	if (mode == THERMAL_DEVICE_DISABLED && kernelmode)
 		acerhdf_revert_to_bios_mode();
 	else if (mode == THERMAL_DEVICE_ENABLED && !kernelmode)
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index bb6754a5342c..014512581918 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -368,7 +368,7 @@ static int imx_set_mode(struct thermal_zone_device *tz,
 			data->irq_enabled = true;
 			enable_irq(data->irq);
 		}
-	} else {
+	} else if (mode == THERMAL_DEVICE_DISABLED) {
 		regmap_write(map, soc_data->sensor_ctrl + REG_CLR,
 			     soc_data->measure_temp_mask);
 		regmap_write(map, soc_data->sensor_ctrl + REG_SET,
@@ -381,6 +381,8 @@ static int imx_set_mode(struct thermal_zone_device *tz,
 			disable_irq(data->irq);
 			data->irq_enabled = false;
 		}
+	} else {
+		return -EINVAL;
 	}
 
 	data->mode = mode;
diff --git a/drivers/thermal/intel/intel_quark_dts_thermal.c b/drivers/thermal/intel/intel_quark_dts_thermal.c
index 5d33b350da1c..5f4bcc0e4fd3 100644
--- a/drivers/thermal/intel/intel_quark_dts_thermal.c
+++ b/drivers/thermal/intel/intel_quark_dts_thermal.c
@@ -328,8 +328,11 @@ static int sys_set_mode(struct thermal_zone_device *tzd,
 	mutex_lock(&dts_update_mutex);
 	if (mode == THERMAL_DEVICE_ENABLED)
 		ret = soc_dts_enable(tzd);
-	else
+	else if (mode == THERMAL_DEVICE_DISABLED)
 		ret = soc_dts_disable(tzd);
+	else
+		return -EINVAL;
+
 	mutex_unlock(&dts_update_mutex);
 
 	return ret;
diff --git a/drivers/thermal/of-thermal.c b/drivers/thermal/of-thermal.c
index ef0baa954ff0..b7621dfab17c 100644
--- a/drivers/thermal/of-thermal.c
+++ b/drivers/thermal/of-thermal.c
@@ -289,9 +289,11 @@ static int of_thermal_set_mode(struct thermal_zone_device *tz,
 	if (mode == THERMAL_DEVICE_ENABLED) {
 		tz->polling_delay = data->polling_delay;
 		tz->passive_delay = data->passive_delay;
-	} else {
+	} else if (mode == THERMAL_DEVICE_DISABLED) {
 		tz->polling_delay = 0;
 		tz->passive_delay = 0;
+	} else {
+		return -EINVAL;
 	}
 
 	mutex_unlock(&tz->lock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
