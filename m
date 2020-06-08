Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A5D1F154A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:19:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yIpq0lCPSrA4V9EJnptHfubYfmFHqw1RZ3XB7WC0RWg=; b=qgXB5OW738kiep
	AZcEV57qOcTR042xUSsHzuHHU7SLyCl5l5f7hrjd9a4VylWGQ8Ja9Rkj/uoQTiWmKaPwFVXyiJ1kN
	tF/H9RDqFDdojhGliEY/j0Aw83IHeL6qyDLazf++BSeJvYD13WW9LUzPcN6ebEtd67tKGae2QLiPb
	1Ut/hEi1J8JiLkh9DcDHSZUAhyGgavwMSsHVR0CKOG3/Fbyce4fjlEEg1NI3zzriTFItwFp/2TiBE
	LJ7sb2FqFiI5usFOQOwfNuRCGLNwy6ZhmUZ+lu5D/YO5Wqwwb0FRjHKkdbhdvKHiSlfok4PqxgPR9
	fCwIQK1thI5XF+QLXjjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDw2-0003Sd-N1; Mon, 08 Jun 2020 09:19:14 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDud-0002JM-PN
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:17:52 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so16568475wro.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lVIqa/LGiAhbvogbAOgL/eHe5UAawaYnKrFMaRYH3Kw=;
 b=H3A0JEDBN+ZVtfLNzZRMV/TDde6ona641ncF581U7NVNgw1bVoz8ug2IqDYTouaSNE
 F8hs6Mb/DAd5Hm6rZSzYOSCJFC/gwM4bgFGGCpBozS6i3m61xpmwG4A1lSFTh68MzpJQ
 VliJ1JlZO9/WLnCoKm19TPPMhw5qT1P+ZjCHXzt2YKlVurDNVx83/PUsGvIm0HGSGo3H
 6j3m7BtYD9t0eZ/6J3BtqbKu76tsUGhWMjUFs/TLL1RZXMgua7p3yj8NXSPfYF1qkXvz
 GFseCmZFWJCX21ws6aeRLGGVq2Rwl1LaGOUmUd9nCYZxQRHaiRgSA/P55XnssF8+nCp3
 ZYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lVIqa/LGiAhbvogbAOgL/eHe5UAawaYnKrFMaRYH3Kw=;
 b=T5lgnvvecjTy5yu1SVBXgVkocEVLsXzke9viWXjaQtpsdleSH4QRCSc1rbA5PY9C1P
 IzLGDbEP5biUXWgDTAzDPlgXpxjtXOiaKXzFAJlF20bchiriHM6xib6wlSpAzS3Jg4ch
 XGXsv9cq8iHtj35dUi1/vdPJfQIXNsB1Xp03xweSD/kvGL5zbUaZH15TKasPh6dX3qO6
 GJyhyFOpsUUfnGuWBbggGBLnVjjrE0JTwKuXknQjFif5bkQA/Z2SrB7KMVXMGqy1tOwY
 EeSVZfM5G/yrzvWlln0xFZL+mb3TCG5lDzKroPNOYARa+5jQqVxZD5BinxWwG7ZUyJnG
 +ifg==
X-Gm-Message-State: AOAM533t7bB2E7sTeKsPb900kWEt9ZrLW91C7B4CoAjCnFsVd8Y1sURL
 AsFt1XRxbQDuWBtaDZ6toRJgmG0BmPTU7g==
X-Google-Smtp-Source: ABdhPJzxucl5K8v+uaMH8wUcbsep4YBtX1u4JClFD/YyPQzqgRhWv1LDmHfcA8N3P7tfeOijtoYkLA==
X-Received: by 2002:adf:f44b:: with SMTP id f11mr22176987wrp.165.1591607865733; 
 Mon, 08 Jun 2020 02:17:45 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 t7sm22732326wrq.41.2020.06.08.02.17.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:17:45 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org
Subject: [PATCH v3 2/5] mfd: add support for the Khadas System control
 Microcontroller
Date: Mon,  8 Jun 2020 11:17:36 +0200
Message-Id: <20200608091739.2368-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200608091739.2368-1-narmstrong@baylibre.com>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021747_826928_31A09B5E 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and Edge
boards.

It has multiple boot control features like password check, power-on
options, power-off control and system FAN control on recent boards.

This implements a very basic MFD driver with the fan control and User
NVMEM cells.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/mfd/Kconfig            |  21 +++++
 drivers/mfd/Makefile           |   1 +
 drivers/mfd/khadas-mcu.c       | 142 +++++++++++++++++++++++++++++++++
 include/linux/mfd/khadas-mcu.h |  91 +++++++++++++++++++++
 4 files changed, 255 insertions(+)
 create mode 100644 drivers/mfd/khadas-mcu.c
 create mode 100644 include/linux/mfd/khadas-mcu.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d3..61ffade36363 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2003,6 +2003,27 @@ config MFD_WCD934X
 	  This driver provides common support WCD934x audio codec and its
 	  associated Pin Controller, Soundwire Controller and Audio codec.
 
+config MFD_KHADAS_MCU
+	tristate "Support for Khadas System control Microcontroller"
+	depends on I2C
+	depends on ARCH_MESON || ARCH_ROCKCHIP || COMPILE_TEST
+	select MFD_CORE
+	select REGMAP_I2C
+	help
+	  Support for the Khadas System control Microcontroller interface
+	  present on their VIM and Edge boards.
+
+	  This Microcontroller is present on the Khadas VIM1, VIM2, VIM3 and
+	  Edge boards.
+
+	  It provides multiple boot control features like password check,
+	  power-on options, power-off control and system FAN control on recent
+	  boards.
+
+	  This driver provides common support for accessing the device,
+	  additional drivers must be enabled in order to use the functionality
+	  of the device.
+
 menu "Multimedia Capabilities Port drivers"
 	depends on ARCH_SA1100
 
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index f935d10cbf0f..0f1633b096bb 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -257,5 +257,6 @@ obj-$(CONFIG_MFD_ROHM_BD70528)	+= rohm-bd70528.o
 obj-$(CONFIG_MFD_ROHM_BD71828)	+= rohm-bd71828.o
 obj-$(CONFIG_MFD_ROHM_BD718XX)	+= rohm-bd718x7.o
 obj-$(CONFIG_MFD_STMFX) 	+= stmfx.o
+obj-$(CONFIG_MFD_KHADAS_MCU) 	+= khadas-mcu.o
 
 obj-$(CONFIG_SGI_MFD_IOC3)	+= ioc3.o
diff --git a/drivers/mfd/khadas-mcu.c b/drivers/mfd/khadas-mcu.c
new file mode 100644
index 000000000000..44d5bb462dab
--- /dev/null
+++ b/drivers/mfd/khadas-mcu.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for Khadas System control Microcontroller
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ *
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+#include <linux/bitfield.h>
+#include <linux/i2c.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/khadas-mcu.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+static bool khadas_mcu_reg_volatile(struct device *dev, unsigned int reg)
+{
+	if (reg >= KHADAS_MCU_USER_DATA_0_REG &&
+	    reg < KHADAS_MCU_PWR_OFF_CMD_REG)
+		return true;
+
+	switch (reg) {
+	case KHADAS_MCU_PWR_OFF_CMD_REG:
+	case KHADAS_MCU_PASSWD_START_REG:
+	case KHADAS_MCU_CHECK_VEN_PASSWD_REG:
+	case KHADAS_MCU_CHECK_USER_PASSWD_REG:
+	case KHADAS_MCU_WOL_INIT_START_REG:
+	case KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG:
+		return true;
+	default:
+		return false;
+	}
+}
+
+static bool khadas_mcu_reg_writeable(struct device *dev, unsigned int reg)
+{
+	switch (reg) {
+	case KHADAS_MCU_PASSWD_VEN_0_REG:
+	case KHADAS_MCU_PASSWD_VEN_1_REG:
+	case KHADAS_MCU_PASSWD_VEN_2_REG:
+	case KHADAS_MCU_PASSWD_VEN_3_REG:
+	case KHADAS_MCU_PASSWD_VEN_4_REG:
+	case KHADAS_MCU_PASSWD_VEN_5_REG:
+	case KHADAS_MCU_MAC_0_REG:
+	case KHADAS_MCU_MAC_1_REG:
+	case KHADAS_MCU_MAC_2_REG:
+	case KHADAS_MCU_MAC_3_REG:
+	case KHADAS_MCU_MAC_4_REG:
+	case KHADAS_MCU_MAC_5_REG:
+	case KHADAS_MCU_USID_0_REG:
+	case KHADAS_MCU_USID_1_REG:
+	case KHADAS_MCU_USID_2_REG:
+	case KHADAS_MCU_USID_3_REG:
+	case KHADAS_MCU_USID_4_REG:
+	case KHADAS_MCU_USID_5_REG:
+	case KHADAS_MCU_VERSION_0_REG:
+	case KHADAS_MCU_VERSION_1_REG:
+	case KHADAS_MCU_DEVICE_NO_0_REG:
+	case KHADAS_MCU_DEVICE_NO_1_REG:
+	case KHADAS_MCU_FACTORY_TEST_REG:
+	case KHADAS_MCU_SHUTDOWN_NORMAL_STATUS_REG:
+		return false;
+	default:
+		return true;
+	}
+}
+
+static const struct regmap_config khadas_mcu_regmap_config = {
+	.reg_bits	= 8,
+	.reg_stride	= 1,
+	.val_bits	= 8,
+	.max_register	= KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
+	.volatile_reg	= khadas_mcu_reg_volatile,
+	.writeable_reg	= khadas_mcu_reg_writeable,
+	.cache_type	= REGCACHE_RBTREE,
+};
+
+static struct mfd_cell khadas_mcu_fan_cells[] = {
+	/* VIM1/2 Rev13+ and VIM3 only */
+	{ .name = "khadas-mcu-fan-ctrl", },
+};
+
+static struct mfd_cell khadas_mcu_cells[] = {
+	{ .name = "khadas-mcu-user-mem", },
+};
+
+static int khadas_mcu_probe(struct i2c_client *client,
+		       const struct i2c_device_id *id)
+{
+	struct device *dev = &client->dev;
+	struct khadas_mcu *ddata;
+	int ret;
+
+	ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
+	if (!ddata)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, ddata);
+
+	ddata->dev = dev;
+
+	ddata->regmap = devm_regmap_init_i2c(client, &khadas_mcu_regmap_config);
+	if (IS_ERR(ddata->regmap)) {
+		ret = PTR_ERR(ddata->regmap);
+		dev_err(dev, "Failed to allocate register map: %d\n", ret);
+		return ret;
+	}
+
+	ret = devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
+				   khadas_mcu_cells,
+				   ARRAY_SIZE(khadas_mcu_cells),
+				   NULL, 0, NULL);
+	if (ret)
+		return ret;
+
+	if (of_find_property(dev->of_node, "#cooling-cells", NULL))
+		return devm_mfd_add_devices(dev, PLATFORM_DEVID_NONE,
+					    khadas_mcu_fan_cells,
+					    ARRAY_SIZE(khadas_mcu_fan_cells),
+					    NULL, 0, NULL);
+
+	return 0;
+}
+
+static const struct of_device_id khadas_mcu_of_match[] = {
+	{ .compatible = "khadas,mcu", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, khadas_mcu_of_match);
+
+static struct i2c_driver khadas_mcu_driver = {
+	.driver = {
+		.name = "khadas-mcu-core",
+		.of_match_table = of_match_ptr(khadas_mcu_of_match),
+	},
+	.probe = khadas_mcu_probe,
+};
+module_i2c_driver(khadas_mcu_driver);
+
+MODULE_DESCRIPTION("Khadas MCU core driver");
+MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mfd/khadas-mcu.h b/include/linux/mfd/khadas-mcu.h
new file mode 100644
index 000000000000..a99ba2ed0e4e
--- /dev/null
+++ b/include/linux/mfd/khadas-mcu.h
@@ -0,0 +1,91 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Khadas System control Microcontroller Register map
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ *
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef MFD_KHADAS_MCU_H
+#define MFD_KHADAS_MCU_H
+
+#define KHADAS_MCU_PASSWD_VEN_0_REG		0x00 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_1_REG		0x01 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_2_REG		0x02 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_3_REG		0x03 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_4_REG		0x04 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_5_REG		0x05 /* RO */
+#define KHADAS_MCU_MAC_0_REG			0x06 /* RO */
+#define KHADAS_MCU_MAC_1_REG			0x07 /* RO */
+#define KHADAS_MCU_MAC_2_REG			0x08 /* RO */
+#define KHADAS_MCU_MAC_3_REG			0x09 /* RO */
+#define KHADAS_MCU_MAC_4_REG			0x0a /* RO */
+#define KHADAS_MCU_MAC_5_REG			0x0b /* RO */
+#define KHADAS_MCU_USID_0_REG			0x0c /* RO */
+#define KHADAS_MCU_USID_1_REG			0x0d /* RO */
+#define KHADAS_MCU_USID_2_REG			0x0e /* RO */
+#define KHADAS_MCU_USID_3_REG			0x0f /* RO */
+#define KHADAS_MCU_USID_4_REG			0x10 /* RO */
+#define KHADAS_MCU_USID_5_REG			0x11 /* RO */
+#define KHADAS_MCU_VERSION_0_REG		0x12 /* RO */
+#define KHADAS_MCU_VERSION_1_REG		0x13 /* RO */
+#define KHADAS_MCU_DEVICE_NO_0_REG		0x14 /* RO */
+#define KHADAS_MCU_DEVICE_NO_1_REG		0x15 /* RO */
+#define KHADAS_MCU_FACTORY_TEST_REG		0x16 /* R */
+#define KHADAS_MCU_BOOT_MODE_REG		0x20 /* RW */
+#define KHADAS_MCU_BOOT_EN_WOL_REG		0x21 /* RW */
+#define KHADAS_MCU_BOOT_EN_RTC_REG		0x22 /* RW */
+#define KHADAS_MCU_BOOT_EN_EXP_REG		0x23 /* RW */
+#define KHADAS_MCU_BOOT_EN_IR_REG		0x24 /* RW */
+#define KHADAS_MCU_BOOT_EN_DCIN_REG		0x25 /* RW */
+#define KHADAS_MCU_BOOT_EN_KEY_REG		0x26 /* RW */
+#define KHADAS_MCU_KEY_MODE_REG			0x27 /* RW */
+#define KHADAS_MCU_LED_MODE_ON_REG		0x28 /* RW */
+#define KHADAS_MCU_LED_MODE_OFF_REG		0x29 /* RW */
+#define KHADAS_MCU_SHUTDOWN_NORMAL_REG		0x2c /* RW */
+#define KHADAS_MCU_MAC_SWITCH_REG		0x2d /* RW */
+#define KHADAS_MCU_MCU_SLEEP_MODE_REG		0x2e /* RW */
+#define KHADAS_MCU_IR_CODE1_0_REG		0x2f /* RW */
+#define KHADAS_MCU_IR_CODE1_1_REG		0x30 /* RW */
+#define KHADAS_MCU_IR_CODE1_2_REG		0x31 /* RW */
+#define KHADAS_MCU_IR_CODE1_3_REG		0x32 /* RW */
+#define KHADAS_MCU_USB_PCIE_SWITCH_REG		0x33 /* RW */
+#define KHADAS_MCU_IR_CODE2_0_REG		0x34 /* RW */
+#define KHADAS_MCU_IR_CODE2_1_REG		0x35 /* RW */
+#define KHADAS_MCU_IR_CODE2_2_REG		0x36 /* RW */
+#define KHADAS_MCU_IR_CODE2_3_REG		0x37 /* RW */
+#define KHADAS_MCU_PASSWD_USER_0_REG		0x40 /* RW */
+#define KHADAS_MCU_PASSWD_USER_1_REG		0x41 /* RW */
+#define KHADAS_MCU_PASSWD_USER_2_REG		0x42 /* RW */
+#define KHADAS_MCU_PASSWD_USER_3_REG		0x43 /* RW */
+#define KHADAS_MCU_PASSWD_USER_4_REG		0x44 /* RW */
+#define KHADAS_MCU_PASSWD_USER_5_REG		0x45 /* RW */
+#define KHADAS_MCU_USER_DATA_0_REG		0x46 /* RW 56 bytes */
+#define KHADAS_MCU_PWR_OFF_CMD_REG		0x80 /* WO */
+#define KHADAS_MCU_PASSWD_START_REG		0x81 /* WO */
+#define KHADAS_MCU_CHECK_VEN_PASSWD_REG		0x82 /* WO */
+#define KHADAS_MCU_CHECK_USER_PASSWD_REG	0x83 /* WO */
+#define KHADAS_MCU_SHUTDOWN_NORMAL_STATUS_REG	0x86 /* RO */
+#define KHADAS_MCU_WOL_INIT_START_REG		0x87 /* WO */
+#define KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG	0x88 /* WO */
+
+enum {
+	KHADAS_BOARD_VIM1 = 0x1,
+	KHADAS_BOARD_VIM2,
+	KHADAS_BOARD_VIM3,
+	KHADAS_BOARD_EDGE = 0x11,
+	KHADAS_BOARD_EDGE_V,
+};
+
+/**
+ * struct khadas_mcu - Khadas MCU structure
+ * @device:		device reference used for logs
+ * @regmap:		register map
+ */
+struct khadas_mcu {
+	struct device *dev;
+	struct regmap *regmap;
+};
+
+#endif /* MFD_KHADAS_MCU_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
