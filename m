Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 572821A1321
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 19:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rpEw7CPRvUXihsl8oQzm21mM7+KxzYt94/MHCYh2K/4=; b=PJYYm78ecwTqZjWh7KGo1T6DJp
	EngVgdoB7s15gy699KNaMS2qmMHIlf8g4tGE3aYi8o4jtx8I4Lr5vDdMuunriB7xs3PI77avuvfnk
	S4wxxtiQUkxsjXuwan+Kp/nmsz/pyql1r6BP8QoOLRWENUKRL53Um8dDWNJObauo7KrQxfgmDGgO7
	mbxUbV45ETu6Xyu3j2EhdVjpXti/99A98mYaJ2MPclqWClOLK3/DVWNa22n2S8ewtPLgvXe9SHXk5
	UgP1F2r32iuu2idsKUz+trrHyuIh6/W3YHn7Lgpn7zSXpmdPmkxAoKW+dQUMZn8pJBbwYF3HUpchW
	SqZCMKDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsNz-0003Gv-RX; Tue, 07 Apr 2020 17:51:43 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsMB-0007gs-AK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 17:49:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id A39BC2972AE
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org
Subject: [RFC 6/8] thermal: Set initial state to THERMAL_DEVICE_INITIAL
Date: Tue,  7 Apr 2020 19:49:24 +0200
Message-Id: <20200407174926.23971-7-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407174926.23971-1-andrzej.p@collabora.com>
References: <20200407174926.23971-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_104951_701182_03A9D813 
X-CRM114-Status: GOOD (  10.94  )
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

Now that THERMAL_DEVICE_INITIAL is available use it.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/acpi/thermal.c                                  | 1 +
 drivers/net/ethernet/mellanox/mlxsw/core_thermal.c      | 3 +++
 drivers/platform/x86/acerhdf.c                          | 1 +
 drivers/thermal/da9062-thermal.c                        | 2 +-
 drivers/thermal/imx_thermal.c                           | 1 +
 drivers/thermal/intel/int340x_thermal/int3400_thermal.c | 1 +
 drivers/thermal/intel/intel_quark_dts_thermal.c         | 1 +
 7 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/acpi/thermal.c b/drivers/acpi/thermal.c
index a93b0412dd6b..0f352cef4898 100644
--- a/drivers/acpi/thermal.c
+++ b/drivers/acpi/thermal.c
@@ -881,6 +881,7 @@ static int acpi_thermal_register_thermal_zone(struct acpi_thermal *tz)
 	for (i = 0; i < ACPI_THERMAL_MAX_ACTIVE &&
 			tz->trips.active[i].flags.valid; i++, trips++);
 
+	tz->mode = THERMAL_DEVICE_INITIAL;
 	if (tz->trips.passive.flags.valid)
 		tz->thermal_zone =
 			thermal_zone_device_register("acpitz", trips, 0, tz,
diff --git a/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c b/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
index cd435ca7adbe..a58ab4d18331 100644
--- a/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
+++ b/drivers/net/ethernet/mellanox/mlxsw/core_thermal.c
@@ -758,6 +758,7 @@ mlxsw_thermal_module_tz_init(struct mlxsw_thermal_module *module_tz)
 
 	snprintf(tz_name, sizeof(tz_name), "mlxsw-module%d",
 		 module_tz->module + 1);
+	module_tz->mode = THERMAL_DEVICE_INITIAL;
 	module_tz->tzdev = thermal_zone_device_register(tz_name,
 							MLXSW_THERMAL_NUM_TRIPS,
 							MLXSW_THERMAL_TRIP_MASK,
@@ -876,6 +877,7 @@ mlxsw_thermal_gearbox_tz_init(struct mlxsw_thermal_module *gearbox_tz)
 
 	snprintf(tz_name, sizeof(tz_name), "mlxsw-gearbox%d",
 		 gearbox_tz->module + 1);
+	gearbox_tz->mode = THERMAL_DEVICE_INITIAL;
 	gearbox_tz->tzdev = thermal_zone_device_register(tz_name,
 						MLXSW_THERMAL_NUM_TRIPS,
 						MLXSW_THERMAL_TRIP_MASK,
@@ -1033,6 +1035,7 @@ int mlxsw_thermal_init(struct mlxsw_core *core,
 				 MLXSW_THERMAL_SLOW_POLL_INT :
 				 MLXSW_THERMAL_POLL_INT;
 
+	thermal->mode = THERMAL_DEVICE_INITIAL;
 	thermal->tzdev = thermal_zone_device_register("mlxsw",
 						      MLXSW_THERMAL_NUM_TRIPS,
 						      MLXSW_THERMAL_TRIP_MASK,
diff --git a/drivers/platform/x86/acerhdf.c b/drivers/platform/x86/acerhdf.c
index 87e357017d4a..00751a0f5312 100644
--- a/drivers/platform/x86/acerhdf.c
+++ b/drivers/platform/x86/acerhdf.c
@@ -747,6 +747,7 @@ static int __init acerhdf_register_thermal(void)
 	if (IS_ERR(cl_dev))
 		return -EINVAL;
 
+	thermal_mode = THERMAL_DEVICE_INITIAL;
 	thz_dev = thermal_zone_device_register("acerhdf", 2, 0, NULL,
 					      &acerhdf_dev_ops,
 					      &acerhdf_zone_params, 0,
diff --git a/drivers/thermal/da9062-thermal.c b/drivers/thermal/da9062-thermal.c
index c32709badeda..2f876760d667 100644
--- a/drivers/thermal/da9062-thermal.c
+++ b/drivers/thermal/da9062-thermal.c
@@ -233,7 +233,7 @@ static int da9062_thermal_probe(struct platform_device *pdev)
 
 	thermal->config = match->data;
 	thermal->hw = chip;
-	thermal->mode = THERMAL_DEVICE_ENABLED;
+	thermal->mode = THERMAL_DEVICE_INITIAL;
 	thermal->dev = &pdev->dev;
 
 	INIT_DELAYED_WORK(&thermal->work, da9062_thermal_poll_on);
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index 014512581918..1e8fd56c2568 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -805,6 +805,7 @@ static int imx_thermal_probe(struct platform_device *pdev)
 		goto legacy_cleanup;
 	}
 
+	data->mode = THERMAL_DEVICE_INITIAL;
 	data->tz = thermal_zone_device_register("imx_thermal_zone",
 						IMX_TRIP_NUM,
 						BIT(IMX_TRIP_PASSIVE), data,
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index fcbd1b14fa74..9c8caa37ed13 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -307,6 +307,7 @@ static int int3400_thermal_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
+	priv->mode = THERMAL_DEVICE_INITIAL;
 	priv->thermal = thermal_zone_device_register("INT3400 Thermal", 0, 0,
 						priv, &int3400_thermal_ops,
 						&int3400_thermal_params, 0, 0);
diff --git a/drivers/thermal/intel/intel_quark_dts_thermal.c b/drivers/thermal/intel/intel_quark_dts_thermal.c
index 5f4bcc0e4fd3..af588ff9aa76 100644
--- a/drivers/thermal/intel/intel_quark_dts_thermal.c
+++ b/drivers/thermal/intel/intel_quark_dts_thermal.c
@@ -411,6 +411,7 @@ static struct soc_sensor_entry *alloc_soc_dts(void)
 			goto err_ret;
 	}
 
+	aux_entry->mode = THERMAL_DEVICE_INITIAL;
 	aux_entry->tzone = thermal_zone_device_register("quark_dts",
 			QRK_MAX_DTS_TRIPS,
 			wr_mask,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
