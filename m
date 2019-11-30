Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6918A10DF3F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 21:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDV45gr7Tmd9cSSIwD5G5NzmGflMs2iD3jpDEUmbMC8=; b=GHown8q/opmoFe
	CBZf764hEfbovXwFEBUPn0mD6EnVRxCPyO/LiX4ixepSozK/GPDoWchsESABGXvhRTItRxn4aqpJv
	iq2e20AvKanPXkQOSyWt2hLhXlkCWTrXIA8ozIrUfn+hnXyLzRQMByhVy1tSywAEcqIOgAqFU9Kfq
	agnvkQfL9kiMj42tKCykhaqx1Q8+nSDypXx6rsuUbCEeAM3D151dRbHjE+eQi9jrn61xus6mOzfwH
	nciHzjY6Jc+O6xr+2v4uPCoqw7jFOqZQqNbmKi5Hmt/5FkI6RKTk0qQNowgYnsIeIjkCWcvuqInAG
	oKerUwbJ0aSViPEDE4QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib9Hv-0000Ws-SJ; Sat, 30 Nov 2019 20:24:19 +0000
Received: from vault.bonstra.fr.eu.org ([51.158.68.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib9HO-0000Mq-TE
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 20:23:49 +0000
Received: from val.bonstra.fr.eu.org (unknown [192.168.128.2])
 by vault.bonstra.fr.eu.org (Postfix) with ESMTP id 695C5BFB9C;
 Sat, 30 Nov 2019 20:23:37 +0000 (UTC)
Received: from localhost.localdomain (vlad.gr1 [IPv6:fd7b:45cc:aa3d::3])
 by val.bonstra.fr.eu.org (Postfix) with ESMTPSA id 2883D64C1A;
 Sat, 30 Nov 2019 21:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=bonstra.fr.eu.org;
 s=dkim1; t=1575145416; x=1576355016;
 bh=0cAfxjq+csCUlEtIbfa5329vv+k5tpLExVnPEnIZui0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=yR559cCHCHgmgTlfTW25YmQAarokrxOj29am3u1xgmBJVQKCHWlP9I1qQD6nF373f
 B90SMAkxlUF268i4s2pnXI18ntj7LASBRX/jPwY9zgNdBLJ7gbGjv0A28+FSul7Nyj
 UjBQgvM80SCtFfNNHxV2JwLGqdQI9iRQxB22zF6UyQPtrBEC5wkCwY9wH3qqwUm1x1
 1CPqjrP27UWB7oAen3MR6sAhb2gNaG2X9LgSy5w3fz5d1bjQysaGoAtb6+J8Lm0I4l
 Lag1qjVq4MfobIQ5nglwB6HnIx0hWOl0l0Qy1wg/ZZnsmP7knZaim6Gp353tG1Z3hJ
 3E61d8tG2aZvA==
From: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
To: Marcel Holtmann <marcel@holtmann.org>,
 Johan Hedberg <johan.hedberg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 2/3] Bluetooth: hci_h5: Add DT support for rtl8723bs
Date: Sat, 30 Nov 2019 21:23:13 +0100
Message-Id: <20191130202314.142096-3-bonstra@bonstra.fr.eu.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
References: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_122347_216628_A6C36722 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>,
 linux-arm-kernel@lists.infradead.org, linux-bluetooth@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hci_h5 already supports Realtek controllers discovered via ACPI. This
commit adds support for discovering via device tree for ACPI-less
platforms.

Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
---
 drivers/bluetooth/Kconfig  |  2 +-
 drivers/bluetooth/btrtl.c  | 75 +++++++++++++++++++++-----------------
 drivers/bluetooth/btrtl.h  |  3 +-
 drivers/bluetooth/hci_h5.c | 65 ++++++++++++++++++++++++++-------
 4 files changed, 95 insertions(+), 50 deletions(-)

diff --git a/drivers/bluetooth/Kconfig b/drivers/bluetooth/Kconfig
index aae665a3a254..48c9a004b033 100644
--- a/drivers/bluetooth/Kconfig
+++ b/drivers/bluetooth/Kconfig
@@ -211,7 +211,7 @@ config BT_HCIUART_RTL
 	depends on BT_HCIUART
 	depends on BT_HCIUART_SERDEV
 	depends on GPIOLIB
-	depends on ACPI
+	depends on (ACPI || OF)
 	select BT_HCIUART_3WIRE
 	select BT_RTL
 	help
diff --git a/drivers/bluetooth/btrtl.c b/drivers/bluetooth/btrtl.c
index bf3c02be6930..fdd00e86dff4 100644
--- a/drivers/bluetooth/btrtl.c
+++ b/drivers/bluetooth/btrtl.c
@@ -17,6 +17,8 @@
 
 #define VERSION "0.1"
 
+#define FW_DIR "rtl_bt"
+
 #define RTL_EPATCH_SIGNATURE	"Realtech"
 #define RTL_ROM_LMP_3499	0x3499
 #define RTL_ROM_LMP_8723A	0x1200
@@ -45,7 +47,7 @@ struct id_table {
 	bool config_needed;
 	bool has_rom_version;
 	char *fw_name;
-	char *cfg_name;
+	char *cfg_basename;
 };
 
 struct btrtl_device_info {
@@ -61,14 +63,14 @@ static const struct id_table ic_id_table[] = {
 	{ IC_MATCH_FL_LMPSUBV, RTL_ROM_LMP_8723A, 0x0,
 	  .config_needed = false,
 	  .has_rom_version = false,
-	  .fw_name = "rtl_bt/rtl8723a_fw.bin",
-	  .cfg_name = NULL },
+	  .fw_name = FW_DIR "/rtl8723a_fw.bin",
+	  .cfg_basename = NULL },
 
 	{ IC_MATCH_FL_LMPSUBV, RTL_ROM_LMP_3499, 0x0,
 	  .config_needed = false,
 	  .has_rom_version = false,
-	  .fw_name = "rtl_bt/rtl8723a_fw.bin",
-	  .cfg_name = NULL },
+	  .fw_name = FW_DIR "/rtl8723a_fw.bin",
+	  .cfg_basename = NULL },
 
 	/* 8723BS */
 	{ .match_flags = IC_MATCH_FL_LMPSUBV | IC_MATCH_FL_HCIREV |
@@ -79,22 +81,22 @@ static const struct id_table ic_id_table[] = {
 	  .hci_bus = HCI_UART,
 	  .config_needed = true,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8723bs_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8723bs_config" },
+	  .fw_name  = FW_DIR "/rtl8723bs_fw.bin",
+	  .cfg_basename = "rtl8723bs_config" },
 
 	/* 8723B */
 	{ IC_INFO(RTL_ROM_LMP_8723B, 0xb),
 	  .config_needed = false,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8723b_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8723b_config" },
+	  .fw_name  = FW_DIR "/rtl8723b_fw.bin",
+	  .cfg_basename = "rtl8723b_config" },
 
 	/* 8723D */
 	{ IC_INFO(RTL_ROM_LMP_8723B, 0xd),
 	  .config_needed = true,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8723d_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8723d_config" },
+	  .fw_name  = FW_DIR "/rtl8723d_fw.bin",
+	  .cfg_basename = "rtl8723d_config" },
 
 	/* 8723DS */
 	{ .match_flags = IC_MATCH_FL_LMPSUBV | IC_MATCH_FL_HCIREV |
@@ -105,50 +107,50 @@ static const struct id_table ic_id_table[] = {
 	  .hci_bus = HCI_UART,
 	  .config_needed = true,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8723ds_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8723ds_config" },
+	  .fw_name  = FW_DIR "/rtl8723ds_fw.bin",
+	  .cfg_basename = "rtl8723ds_config" },
 
 	/* 8723DU */
 	{ IC_INFO(RTL_ROM_LMP_8723D, 0x826C),
 	  .config_needed = true,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8723d_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8723d_config" },
+	  .fw_name  = FW_DIR "/rtl8723d_fw.bin",
+	  .cfg_basename = "rtl8723d_config" },
 
 	/* 8821A */
 	{ IC_INFO(RTL_ROM_LMP_8821A, 0xa),
 	  .config_needed = false,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8821a_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8821a_config" },
+	  .fw_name  = FW_DIR "/rtl8821a_fw.bin",
+	  .cfg_basename = "rtl8821a_config" },
 
 	/* 8821C */
 	{ IC_INFO(RTL_ROM_LMP_8821A, 0xc),
 	  .config_needed = false,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8821c_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8821c_config" },
+	  .fw_name  = FW_DIR "/rtl8821c_fw.bin",
+	  .cfg_basename = "rtl8821c_config" },
 
 	/* 8761A */
 	{ IC_MATCH_FL_LMPSUBV, RTL_ROM_LMP_8761A, 0x0,
 	  .config_needed = false,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8761a_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8761a_config" },
+	  .fw_name  = FW_DIR "/rtl8761a_fw.bin",
+	  .cfg_basename = "rtl8761a_config" },
 
 	/* 8822C with USB interface */
 	{ IC_INFO(RTL_ROM_LMP_8822B, 0xc),
 	  .config_needed = false,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8822cu_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8822cu_config" },
+	  .fw_name  = FW_DIR "/rtl8822cu_fw.bin",
+	  .cfg_basename = "rtl8822cu_config" },
 
 	/* 8822B */
 	{ IC_INFO(RTL_ROM_LMP_8822B, 0xb),
 	  .config_needed = true,
 	  .has_rom_version = true,
-	  .fw_name  = "rtl_bt/rtl8822b_fw.bin",
-	  .cfg_name = "rtl_bt/rtl8822b_config" },
+	  .fw_name  = FW_DIR "/rtl8822b_fw.bin",
+	  .cfg_basename = "rtl8822b_config" },
 	};
 
 static const struct id_table *btrtl_match_ic(u16 lmp_subver, u16 hci_rev,
@@ -532,7 +534,8 @@ void btrtl_free(struct btrtl_device_info *btrtl_dev)
 EXPORT_SYMBOL_GPL(btrtl_free);
 
 struct btrtl_device_info *btrtl_initialize(struct hci_dev *hdev,
-					   const char *postfix)
+					   const char *cfg,
+					   bool cfg_is_postfix)
 {
 	struct btrtl_device_info *btrtl_dev;
 	struct sk_buff *skb;
@@ -588,20 +591,24 @@ struct btrtl_device_info *btrtl_initialize(struct hci_dev *hdev,
 		goto err_free;
 	}
 
-	if (btrtl_dev->ic_info->cfg_name) {
-		if (postfix) {
-			snprintf(cfg_name, sizeof(cfg_name), "%s-%s.bin",
-				 btrtl_dev->ic_info->cfg_name, postfix);
+	if (btrtl_dev->ic_info->cfg_basename) {
+		if (cfg && cfg_is_postfix) {
+			snprintf(cfg_name, sizeof(cfg_name), "%s/%s-%s.bin",
+				 FW_DIR, btrtl_dev->ic_info->cfg_basename,
+				 cfg);
+		} else if (cfg && !cfg_is_postfix) {
+			snprintf(cfg_name, sizeof(cfg_name), "%s/%s",
+				 FW_DIR, cfg);
 		} else {
-			snprintf(cfg_name, sizeof(cfg_name), "%s.bin",
-				 btrtl_dev->ic_info->cfg_name);
+			snprintf(cfg_name, sizeof(cfg_name), "%s/%s.bin",
+				 FW_DIR, btrtl_dev->ic_info->cfg_basename);
 		}
 		btrtl_dev->cfg_len = rtl_load_file(hdev, cfg_name,
 						   &btrtl_dev->cfg_data);
 		if (btrtl_dev->ic_info->config_needed &&
 		    btrtl_dev->cfg_len <= 0) {
 			rtl_dev_err(hdev, "mandatory config file %s not found",
-				    btrtl_dev->ic_info->cfg_name);
+				    cfg_name);
 			ret = btrtl_dev->cfg_len;
 			goto err_free;
 		}
@@ -651,7 +658,7 @@ int btrtl_setup_realtek(struct hci_dev *hdev)
 	struct btrtl_device_info *btrtl_dev;
 	int ret;
 
-	btrtl_dev = btrtl_initialize(hdev, NULL);
+	btrtl_dev = btrtl_initialize(hdev, NULL, false);
 	if (IS_ERR(btrtl_dev))
 		return PTR_ERR(btrtl_dev);
 
diff --git a/drivers/bluetooth/btrtl.h b/drivers/bluetooth/btrtl.h
index 10ad40c3e42c..b83c0a3f2a49 100644
--- a/drivers/bluetooth/btrtl.h
+++ b/drivers/bluetooth/btrtl.h
@@ -50,7 +50,8 @@ struct rtl_vendor_config {
 #if IS_ENABLED(CONFIG_BT_RTL)
 
 struct btrtl_device_info *btrtl_initialize(struct hci_dev *hdev,
-					   const char *postfix);
+					   const char *cfg,
+					   bool cfg_is_postfix);
 void btrtl_free(struct btrtl_device_info *btrtl_dev);
 int btrtl_download_firmware(struct hci_dev *hdev,
 			    struct btrtl_device_info *btrtl_dev);
diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
index dacf297baf59..a0d8d4be9b0e 100644
--- a/drivers/bluetooth/hci_h5.c
+++ b/drivers/bluetooth/hci_h5.c
@@ -11,6 +11,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/kernel.h>
 #include <linux/mod_devicetable.h>
+#include <linux/of_device.h>
 #include <linux/serdev.h>
 #include <linux/skbuff.h>
 
@@ -90,9 +91,12 @@ struct h5 {
 	} sleep;
 
 	const struct h5_vnd *vnd;
-	const char *id;
+	const char *cfg; /* Board config file name or postfix */
+	bool cfg_is_postfix; /* Whether cfg must be appended to the base name
+			      * to the full config file name
+			      */
 
-	struct gpio_desc *enable_gpio;
+	struct gpio_desc *powerdown_gpio;
 	struct gpio_desc *device_wake_gpio;
 };
 
@@ -782,7 +786,6 @@ static const struct hci_uart_proto h5p = {
 
 static int h5_serdev_probe(struct serdev_device *serdev)
 {
-	const struct acpi_device_id *match;
 	struct device *dev = &serdev->dev;
 	struct h5 *h5;
 
@@ -797,21 +800,40 @@ static int h5_serdev_probe(struct serdev_device *serdev)
 	serdev_device_set_drvdata(serdev, h5);
 
 	if (has_acpi_companion(dev)) {
-		match = acpi_match_device(dev->driver->acpi_match_table, dev);
+		const struct acpi_device_id *match;
+
+		match = acpi_match_device(
+				dev->driver->acpi_match_table, dev);
 		if (!match)
 			return -ENODEV;
 
 		h5->vnd = (const struct h5_vnd *)match->driver_data;
-		h5->id  = (char *)match->id;
+		h5->cfg  = (char *)match->id;
+		h5->cfg_is_postfix = true;
 
 		if (h5->vnd->acpi_gpio_map)
 			devm_acpi_dev_add_driver_gpios(dev,
 						       h5->vnd->acpi_gpio_map);
+	} else if (dev->of_node) {
+		const struct of_device_id *match;
+		const char *cfgname = NULL;
+
+		match = of_match_device(dev->driver->of_match_table, dev);
+		if (!match)
+			return -ENODEV;
+
+		of_property_read_string(dev->of_node,
+					"firmware-name", &cfgname);
+
+		h5->vnd = (const struct h5_vnd *)match->data;
+		h5->cfg = cfgname;
+		h5->cfg_is_postfix = false;
 	}
 
-	h5->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
-	if (IS_ERR(h5->enable_gpio))
-		return PTR_ERR(h5->enable_gpio);
+	h5->powerdown_gpio = devm_gpiod_get_optional(dev, "powerdown",
+						     GPIOD_OUT_HIGH);
+	if (IS_ERR(h5->powerdown_gpio))
+		return PTR_ERR(h5->powerdown_gpio);
 
 	h5->device_wake_gpio = devm_gpiod_get_optional(dev, "device-wake",
 						       GPIOD_OUT_LOW);
@@ -861,7 +883,8 @@ static int h5_btrtl_setup(struct h5 *h5)
 	bool flow_control;
 	int err;
 
-	btrtl_dev = btrtl_initialize(h5->hu->hdev, h5->id);
+	btrtl_dev = btrtl_initialize(h5->hu->hdev, h5->cfg,
+			h5->cfg_is_postfix);
 	if (IS_ERR(btrtl_dev))
 		return PTR_ERR(btrtl_dev);
 
@@ -905,7 +928,7 @@ static void h5_btrtl_open(struct h5 *h5)
 	serdev_device_set_baudrate(h5->hu->serdev, 115200);
 
 	/* The controller needs up to 500ms to wakeup */
-	gpiod_set_value_cansleep(h5->enable_gpio, 1);
+	gpiod_set_value_cansleep(h5->powerdown_gpio, 0);
 	gpiod_set_value_cansleep(h5->device_wake_gpio, 1);
 	msleep(500);
 }
@@ -913,7 +936,7 @@ static void h5_btrtl_open(struct h5 *h5)
 static void h5_btrtl_close(struct h5 *h5)
 {
 	gpiod_set_value_cansleep(h5->device_wake_gpio, 0);
-	gpiod_set_value_cansleep(h5->enable_gpio, 0);
+	gpiod_set_value_cansleep(h5->powerdown_gpio, 1);
 }
 
 /* Suspend/resume support. On many devices the RTL BT device loses power during
@@ -926,7 +949,7 @@ static int h5_btrtl_suspend(struct h5 *h5)
 {
 	serdev_device_set_flow_control(h5->hu->serdev, false);
 	gpiod_set_value_cansleep(h5->device_wake_gpio, 0);
-	gpiod_set_value_cansleep(h5->enable_gpio, 0);
+	gpiod_set_value_cansleep(h5->powerdown_gpio, 1);
 	return 0;
 }
 
@@ -967,11 +990,11 @@ static int h5_btrtl_resume(struct h5 *h5)
 }
 
 static const struct acpi_gpio_params btrtl_device_wake_gpios = { 0, 0, false };
-static const struct acpi_gpio_params btrtl_enable_gpios = { 1, 0, false };
+static const struct acpi_gpio_params btrtl_powerdown_gpios = { 1, 0, true };
 static const struct acpi_gpio_params btrtl_host_wake_gpios = { 2, 0, false };
 static const struct acpi_gpio_mapping acpi_btrtl_gpios[] = {
 	{ "device-wake-gpios", &btrtl_device_wake_gpios, 1 },
-	{ "enable-gpios", &btrtl_enable_gpios, 1 },
+	{ "powerdown-gpios", &btrtl_powerdown_gpios, 1 },
 	{ "host-wake-gpios", &btrtl_host_wake_gpios, 1 },
 	{},
 };
@@ -996,6 +1019,19 @@ static const struct acpi_device_id h5_acpi_match[] = {
 MODULE_DEVICE_TABLE(acpi, h5_acpi_match);
 #endif
 
+#ifdef CONFIG_OF
+static const struct of_device_id h5_of_match[] = {
+#ifdef CONFIG_BT_HCIUART_RTL
+	{
+		.compatible = "realtek,rtl8723bs-bt",
+		.data = &rtl_vnd
+	},
+#endif
+	{ },
+};
+MODULE_DEVICE_TABLE(of, h5_of_match);
+#endif
+
 static const struct dev_pm_ops h5_serdev_pm_ops = {
 	SET_SYSTEM_SLEEP_PM_OPS(h5_serdev_suspend, h5_serdev_resume)
 };
@@ -1006,6 +1042,7 @@ static struct serdev_device_driver h5_serdev_driver = {
 	.driver = {
 		.name = "hci_uart_h5",
 		.acpi_match_table = ACPI_PTR(h5_acpi_match),
+		.of_match_table = of_match_ptr(h5_of_match),
 		.pm = &h5_serdev_pm_ops,
 	},
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
