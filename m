Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860421E6AE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:27:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aXkmcgjxKFUAoosahET4Sqsbm1Kf0vq5VgoX2+bVk8g=; b=R2U/QYDc9wxbxjPeW+z1pwdoF+
	okDpHFfmMN4dEHXoFxy0vNCN6dE1di5ty324kPmKgRBS+lsBOhWwtruVmK3PTqN80WMC6huMnqXGt
	pISd4LeEM6YB4cwzOFbjBIbRXHdU4QYw8pwvCfg//CVv2za1c3tAsBH4A+I1pQZifxIaGdPrBs2Ka
	5jxQlzTkAmBzs3OjirMaFw7xBaEIhB/w7WIvWUJhOGTuhxrH3fH/jZO4n6jalkeOo+Bxz+UKsBUzt
	uF5Q2/Ya4CfXtYbCNabiyDY5JHYJM7P0XD54SgEljws6bJJugvIf9ugesQ2sLbCtOsGWtcMy07jnF
	dJZHNchA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeOBT-0006DV-0D; Thu, 28 May 2020 19:27:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeO6U-0007Ue-3Z; Thu, 28 May 2020 19:22:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id BE3132A41CE
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-pm@vger.kernel.org, linux-acpi@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 08/11] thermal: Explicitly enable non-changing thermal zone
 devices
Date: Thu, 28 May 2020 21:20:48 +0200
Message-Id: <20200528192051.28034-9-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528192051.28034-1-andrzej.p@collabora.com>
References: <Message-ID: <4493c0e4-51aa-3907-810c-74949ff27ca4@samsung.com>
 <20200528192051.28034-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_122210_583128_C124D364 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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

Some thermal zone devices never change their state, so they should be
always enabled.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/net/ethernet/chelsio/cxgb4/cxgb4_thermal.c     |  8 ++++++++
 drivers/net/wireless/intel/iwlwifi/mvm/tt.c            |  9 ++++++++-
 drivers/platform/x86/intel_mid_thermal.c               |  6 ++++++
 drivers/power/supply/power_supply_core.c               |  9 +++++++--
 drivers/thermal/armada_thermal.c                       |  6 ++++++
 drivers/thermal/dove_thermal.c                         |  6 ++++++
 .../thermal/intel/int340x_thermal/int3400_thermal.c    |  5 +++++
 .../intel/int340x_thermal/int340x_thermal_zone.c       |  5 +++++
 drivers/thermal/intel/intel_pch_thermal.c              |  5 +++++
 drivers/thermal/intel/intel_soc_dts_iosf.c             |  3 +++
 drivers/thermal/intel/x86_pkg_temp_thermal.c           |  6 ++++++
 drivers/thermal/kirkwood_thermal.c                     |  7 +++++++
 drivers/thermal/rcar_thermal.c                         |  9 ++++++++-
 drivers/thermal/spear_thermal.c                        |  7 +++++++
 drivers/thermal/st/st_thermal.c                        |  5 +++++
 drivers/thermal/thermal_of.c                           | 10 +++++++++-
 16 files changed, 101 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_thermal.c b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_thermal.c
index 3de8a5e83b6c..e3510e9b21f3 100644
--- a/drivers/net/ethernet/chelsio/cxgb4/cxgb4_thermal.c
+++ b/drivers/net/ethernet/chelsio/cxgb4/cxgb4_thermal.c
@@ -92,6 +92,14 @@ int cxgb4_thermal_init(struct adapter *adap)
 		ch_thermal->tzdev = NULL;
 		return ret;
 	}
+
+	ret = thermal_zone_device_enable(ch_thermal->tzdev);
+	if (ret) {
+		dev_err(adap->pdev_dev, "Failed to enable thermal zone\n");
+		thermal_zone_device_unregister(adap->ch_thermal.tzdev);
+		return ret;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/net/wireless/intel/iwlwifi/mvm/tt.c b/drivers/net/wireless/intel/iwlwifi/mvm/tt.c
index 418e59b7c671..0c95663bf9ed 100644
--- a/drivers/net/wireless/intel/iwlwifi/mvm/tt.c
+++ b/drivers/net/wireless/intel/iwlwifi/mvm/tt.c
@@ -733,7 +733,7 @@ static  struct thermal_zone_device_ops tzone_ops = {
 
 static void iwl_mvm_thermal_zone_register(struct iwl_mvm *mvm)
 {
-	int i;
+	int i, ret;
 	char name[16];
 	static atomic_t counter = ATOMIC_INIT(0);
 
@@ -759,6 +759,13 @@ static void iwl_mvm_thermal_zone_register(struct iwl_mvm *mvm)
 		return;
 	}
 
+	ret = thermal_zone_device_enable(mvm->tz_device.tzone);
+	if (ret) {
+		IWL_DEBUG_TEMP(mvm, "Failed to enable thermal zone\n");
+		thermal_zone_device_unregister(mvm->tz_device.tzone);
+		return;
+	}
+
 	/* 0 is a valid temperature,
 	 * so initialize the array with S16_MIN which invalid temperature
 	 */
diff --git a/drivers/platform/x86/intel_mid_thermal.c b/drivers/platform/x86/intel_mid_thermal.c
index f402e2e74a38..f12f4e7bd971 100644
--- a/drivers/platform/x86/intel_mid_thermal.c
+++ b/drivers/platform/x86/intel_mid_thermal.c
@@ -493,6 +493,12 @@ static int mid_thermal_probe(struct platform_device *pdev)
 			ret = PTR_ERR(pinfo->tzd[i]);
 			goto err;
 		}
+		ret = thermal_zone_device_enable(pinfo->tzd[i]);
+		if (ret) {
+			kfree(td_info);
+			thermal_zone_device_unregister(pinfo->tzd[i]);
+			goto err;
+		}
 	}
 
 	pinfo->pdev = pdev;
diff --git a/drivers/power/supply/power_supply_core.c b/drivers/power/supply/power_supply_core.c
index 1a9a9fae73d3..ca64bb9e6eed 100644
--- a/drivers/power/supply/power_supply_core.c
+++ b/drivers/power/supply/power_supply_core.c
@@ -931,7 +931,7 @@ static struct thermal_zone_device_ops psy_tzd_ops = {
 
 static int psy_register_thermal(struct power_supply *psy)
 {
-	int i;
+	int i, ret;
 
 	if (psy->desc->no_thermal)
 		return 0;
@@ -941,7 +941,12 @@ static int psy_register_thermal(struct power_supply *psy)
 		if (psy->desc->properties[i] == POWER_SUPPLY_PROP_TEMP) {
 			psy->tzd = thermal_zone_device_register(psy->desc->name,
 					0, 0, psy, &psy_tzd_ops, NULL, 0, 0);
-			return PTR_ERR_OR_ZERO(psy->tzd);
+			if (IS_ERR(psy->tzd))
+				return PTR_ERR(psy->tzd);
+			ret = thermal_zone_device_enable(psy->tzd);
+			if (ret)
+				thermal_zone_device_unregister(psy->tzd);
+			return ret;
 		}
 	}
 	return 0;
diff --git a/drivers/thermal/armada_thermal.c b/drivers/thermal/armada_thermal.c
index 7c447cd149e7..c2ebfb5be4b3 100644
--- a/drivers/thermal/armada_thermal.c
+++ b/drivers/thermal/armada_thermal.c
@@ -874,6 +874,12 @@ static int armada_thermal_probe(struct platform_device *pdev)
 			return PTR_ERR(tz);
 		}
 
+		ret = thermal_zone_device_enable(tz);
+		if (ret) {
+			thermal_zone_device_unregister(tz);
+			return ret;
+		}
+
 		drvdata->type = LEGACY;
 		drvdata->data.tz = tz;
 		platform_set_drvdata(pdev, drvdata);
diff --git a/drivers/thermal/dove_thermal.c b/drivers/thermal/dove_thermal.c
index 75901ced4a62..73182eb94bc0 100644
--- a/drivers/thermal/dove_thermal.c
+++ b/drivers/thermal/dove_thermal.c
@@ -153,6 +153,12 @@ static int dove_thermal_probe(struct platform_device *pdev)
 		return PTR_ERR(thermal);
 	}
 
+	ret = thermal_zone_device_enable(thermal);
+	if (ret) {
+		thermal_zone_device_unregister(thermal);
+		return ret;
+	}
+
 	platform_set_drvdata(pdev, thermal);
 
 	return 0;
diff --git a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
index 3c0397a29b8c..8e8c9af7e5f4 100644
--- a/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
+++ b/drivers/thermal/intel/int340x_thermal/int3400_thermal.c
@@ -485,6 +485,10 @@ static int int3400_thermal_probe(struct platform_device *pdev)
 		goto free_art_trt;
 	}
 
+	result = thermal_zone_device_enable(priv->thermal);
+	if (result)
+		goto free_tzd;
+
 	priv->rel_misc_dev_res = acpi_thermal_rel_misc_device_add(
 							priv->adev->handle);
 
@@ -518,6 +522,7 @@ static int int3400_thermal_probe(struct platform_device *pdev)
 free_rel_misc:
 	if (!priv->rel_misc_dev_res)
 		acpi_thermal_rel_misc_device_remove(priv->adev->handle);
+free_tzd:
 	thermal_zone_device_unregister(priv->thermal);
 free_art_trt:
 	kfree(priv->trts);
diff --git a/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c b/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c
index 432213272f1e..6e479deff76b 100644
--- a/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c
+++ b/drivers/thermal/intel/int340x_thermal/int340x_thermal_zone.c
@@ -259,9 +259,14 @@ struct int34x_thermal_zone *int340x_thermal_zone_add(struct acpi_device *adev,
 		ret = PTR_ERR(int34x_thermal_zone->zone);
 		goto err_thermal_zone;
 	}
+	ret = thermal_zone_device_enable(int34x_thermal_zone->zone);
+	if (ret)
+		goto err_enable;
 
 	return int34x_thermal_zone;
 
+err_enable:
+	thermal_zone_device_unregister(int34x_thermal_zone->zone);
 err_thermal_zone:
 	acpi_lpat_free_conversion_table(int34x_thermal_zone->lpat_table);
 	kfree(int34x_thermal_zone->aux_trips);
diff --git a/drivers/thermal/intel/intel_pch_thermal.c b/drivers/thermal/intel/intel_pch_thermal.c
index 56401fd4708d..65702094f3d3 100644
--- a/drivers/thermal/intel/intel_pch_thermal.c
+++ b/drivers/thermal/intel/intel_pch_thermal.c
@@ -352,9 +352,14 @@ static int intel_pch_thermal_probe(struct pci_dev *pdev,
 		err = PTR_ERR(ptd->tzd);
 		goto error_cleanup;
 	}
+	err = thermal_zone_device_enable(ptd->tzd);
+	if (err)
+		goto err_unregister;
 
 	return 0;
 
+err_unregister:
+	thermal_zone_device_unregister(ptd->tzd);
 error_cleanup:
 	iounmap(ptd->hw_base);
 error_release:
diff --git a/drivers/thermal/intel/intel_soc_dts_iosf.c b/drivers/thermal/intel/intel_soc_dts_iosf.c
index f75271b669c6..4f1a2f7c016c 100644
--- a/drivers/thermal/intel/intel_soc_dts_iosf.c
+++ b/drivers/thermal/intel/intel_soc_dts_iosf.c
@@ -329,6 +329,9 @@ static int add_dts_thermal_zone(int id, struct intel_soc_dts_sensor_entry *dts,
 		ret = PTR_ERR(dts->tzone);
 		goto err_ret;
 	}
+	ret = thermal_zone_device_enable(dts->tzone);
+	if (ret)
+		goto err_enable;
 
 	ret = soc_dts_enable(id);
 	if (ret)
diff --git a/drivers/thermal/intel/x86_pkg_temp_thermal.c b/drivers/thermal/intel/x86_pkg_temp_thermal.c
index a006b9fd1d72..b81c33202f41 100644
--- a/drivers/thermal/intel/x86_pkg_temp_thermal.c
+++ b/drivers/thermal/intel/x86_pkg_temp_thermal.c
@@ -363,6 +363,12 @@ static int pkg_temp_thermal_device_add(unsigned int cpu)
 		kfree(zonedev);
 		return err;
 	}
+	err = thermal_zone_device_enable(zonedev->tzone);
+	if (err) {
+		thermal_zone_device_unregister(zonedev->tzone);
+		kfree(zonedev);
+		return err;
+	}
 	/* Store MSR value for package thermal interrupt, to restore at exit */
 	rdmsr(MSR_IA32_PACKAGE_THERM_INTERRUPT, zonedev->msr_pkg_therm_low,
 	      zonedev->msr_pkg_therm_high);
diff --git a/drivers/thermal/kirkwood_thermal.c b/drivers/thermal/kirkwood_thermal.c
index 189b675cf14d..7fb6e476c82a 100644
--- a/drivers/thermal/kirkwood_thermal.c
+++ b/drivers/thermal/kirkwood_thermal.c
@@ -65,6 +65,7 @@ static int kirkwood_thermal_probe(struct platform_device *pdev)
 	struct thermal_zone_device *thermal = NULL;
 	struct kirkwood_thermal_priv *priv;
 	struct resource *res;
+	int ret;
 
 	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -82,6 +83,12 @@ static int kirkwood_thermal_probe(struct platform_device *pdev)
 			"Failed to register thermal zone device\n");
 		return PTR_ERR(thermal);
 	}
+	ret = thermal_zone_device_enable(thermal);
+	if (ret) {
+		thermal_zone_device_unregister(thermal);
+		dev_err(&pdev->dev, "Failed to enable thermal zone device\n");
+		return ret;
+	}
 
 	platform_set_drvdata(pdev, thermal);
 
diff --git a/drivers/thermal/rcar_thermal.c b/drivers/thermal/rcar_thermal.c
index 46aeb28b4e90..787710bb88fe 100644
--- a/drivers/thermal/rcar_thermal.c
+++ b/drivers/thermal/rcar_thermal.c
@@ -550,12 +550,19 @@ static int rcar_thermal_probe(struct platform_device *pdev)
 			priv->zone = devm_thermal_zone_of_sensor_register(
 						dev, i, priv,
 						&rcar_thermal_zone_of_ops);
-		else
+		else {
 			priv->zone = thermal_zone_device_register(
 						"rcar_thermal",
 						1, 0, priv,
 						&rcar_thermal_zone_ops, NULL, 0,
 						idle);
+
+			ret = thermal_zone_device_enable(priv->zone);
+			if (ret) {
+				thermal_zone_device_unregister(priv->zone);
+				priv->zone = ERR_PTR(ret);
+			}
+		}
 		if (IS_ERR(priv->zone)) {
 			dev_err(dev, "can't register thermal zone\n");
 			ret = PTR_ERR(priv->zone);
diff --git a/drivers/thermal/spear_thermal.c b/drivers/thermal/spear_thermal.c
index f68f581fd669..ee33ed692e4f 100644
--- a/drivers/thermal/spear_thermal.c
+++ b/drivers/thermal/spear_thermal.c
@@ -131,6 +131,11 @@ static int spear_thermal_probe(struct platform_device *pdev)
 		ret = PTR_ERR(spear_thermal);
 		goto disable_clk;
 	}
+	ret = thermal_zone_device_enable(spear_thermal);
+	if (ret) {
+		dev_err(&pdev->dev, "Cannot enable thermal zone\n");
+		goto unregister_tzd;
+	}
 
 	platform_set_drvdata(pdev, spear_thermal);
 
@@ -139,6 +144,8 @@ static int spear_thermal_probe(struct platform_device *pdev)
 
 	return 0;
 
+unregister_tzd:
+	thermal_zone_device_unregister(spear_thermal);
 disable_clk:
 	clk_disable(stdev->clk);
 
diff --git a/drivers/thermal/st/st_thermal.c b/drivers/thermal/st/st_thermal.c
index b928ca6a289b..1276b95604fe 100644
--- a/drivers/thermal/st/st_thermal.c
+++ b/drivers/thermal/st/st_thermal.c
@@ -246,11 +246,16 @@ int st_thermal_register(struct platform_device *pdev,
 		ret = PTR_ERR(sensor->thermal_dev);
 		goto sensor_off;
 	}
+	ret = thermal_zone_device_enable(sensor->thermal_dev);
+	if (ret)
+		goto tzd_unregister;
 
 	platform_set_drvdata(pdev, sensor);
 
 	return 0;
 
+tzd_unregister:
+	thermal_zone_device_unregister(sensor->thermal_dev);
 sensor_off:
 	st_thermal_sensor_off(sensor);
 
diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index 43a516a35d64..011fd7f0a01e 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -1066,7 +1066,7 @@ int __init of_parse_thermal_zones(void)
 	for_each_available_child_of_node(np, child) {
 		struct thermal_zone_device *zone;
 		struct thermal_zone_params *tzp;
-		int i, mask = 0;
+		int i, ret, mask = 0;
 		u32 prop;
 
 		tz = thermal_of_build_thermal_zone(child);
@@ -1113,6 +1113,14 @@ int __init of_parse_thermal_zones(void)
 			of_thermal_free_zone(tz);
 			/* attempting to build remaining zones still */
 		}
+		ret = thermal_zone_device_enable(zone);
+		if (ret) {
+			thermal_zone_device_unregister(zone);
+			pr_err("Failed to enable thermal zone\n");
+			kfree(tzp);
+			kfree(ops);
+			of_thermal_free_zone(tz);
+		}
 	}
 	of_node_put(np);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
