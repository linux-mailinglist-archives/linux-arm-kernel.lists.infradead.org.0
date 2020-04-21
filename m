Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3171B20D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7am1feH6CQY4jwjfvn01oEUqm8IlhNFU2NgSm3Q9Z0w=; b=A8+xLU6hJsOud/
	lVjyhWBbM4GTRUSDmESOC8jfun2fcif4eDprQblVZgcx2zaJgvTaZ+ivgvKJgtZPhKVBe8T3nBXLn
	LAJaKHkU/i6MMZwFxM4bUClgUzF+5YS9crERpTPjPlXL+Xs6QBkX9D8KBA/YqxJh2NhX5VmsYL8l9
	AYhhX9kPV67aj9xLpTkFjSmAN0xkEhMjBHRXg8S0VgdQzKdik8lY+gEd/Jfdg2bte3SahsWjeriOq
	Ajw+OmD4xSDqurqAxloY/QtQP9MfAKGCnZzGPhPu4OmltjP+r/Ymk+M5PJKs2IzG+8D/hMnoS1lnZ
	Bgp3nGfsHu8kvFxFPkcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnrR-00026g-Lj; Tue, 21 Apr 2020 08:02:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnqB-00017p-2l
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id k13so14138194wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FfLgbV8JxCX0+O1S1urP+VjTlHc4+FfJzM+tdEpjLV4=;
 b=Elj3xI5mjVQ3ug2wf24xQ5kaXskWZPJwRv6tY3MHlcn7oBGeM5KRvWcNPIXK+ubIxY
 UB/aHZTNkkUvu9UoUadUHuvP9kiKzKN8YFMheDO8z/2iQD9Tm5TwYeJaBgRmA0nzqP23
 Klyb+tY37Qyd798zjQdQ08XkRef3VSol12zMsJYzIIpo7TrsqWbaNmniVuHqrgVsO4hr
 m1Jp5NQmZHTxlr+PmzXcAYhHyuErTUc82VeyFzkOz1NzkOxjJCe//EwHZLPfR8GtHAcp
 fzGLLVFJt8ZE8XtDyoFbY9GFWH7iWlrmaZV43gN9sYnx0zAB5gVUatslQMcfeP4Bh0EQ
 ct3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FfLgbV8JxCX0+O1S1urP+VjTlHc4+FfJzM+tdEpjLV4=;
 b=TsMjn5pzNBH9GSk97ME3Vkq12zHYhvnCDqSB6I99YDkqTAz47sxQhBtrB8ba2tVnEr
 yx9MQdtAwV0J18YkAxIqfyPvzORysi5DNyCuFBG3blGLmZLuvxEx4VUz9B5DfIMPqcJ+
 tUel5cskiUVytFBUEu3BBvMINKj3xS+UPViQzMnsl4WQWZ80K+DAaW+MwYh9ppymdR9C
 qdgAQjWHh/AdNwYSdj3V4ndeB2E170fJGT648yUH1pm9N9MWR7adVfyvDgDotXrr4ClA
 fuBcA4bwvGOSYV5eGDYUcrxAIS22KylqkzF3IW/7r/TO3gKC7KRxo9WKxh5bZ21lZSl+
 Uf9Q==
X-Gm-Message-State: AGi0PubIDwhGRDIYLTQybxheWxS5rSx8418OFR5q5zBjiM+74hX/x+iX
 DDVfw7B7jkOIuqtL9ThwXU1aDw==
X-Google-Smtp-Source: APiQypJ0rc4XvwGYb/1Kf6rty3Sttnr0+3eLGr+uUkpd1JslYShQgchzfVod7OCV4dGhcHBmmO+1tA==
X-Received: by 2002:a5d:4d50:: with SMTP id a16mr25068374wru.219.1587456069652; 
 Tue, 21 Apr 2020 01:01:09 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:09 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.kandagatla@linaro.org
Subject: [RFC 2/8] mfd: add support for the Khadas System control
 Microcontroller
Date: Tue, 21 Apr 2020 10:00:56 +0200
Message-Id: <20200421080102.22796-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010111_151366_3495BBC4 
X-CRM114-Status: GOOD (  18.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, nick@khadas.com,
 linux-amlogic@lists.infradead.org, art@khadas.com,
 linux-arm-kernel@lists.infradead.org
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
 drivers/mfd/Kconfig            |  14 ++++
 drivers/mfd/Makefile           |   1 +
 drivers/mfd/khadas-mcu.c       | 143 +++++++++++++++++++++++++++++++++
 include/linux/mfd/khadas-mcu.h |  91 +++++++++++++++++++++
 4 files changed, 249 insertions(+)
 create mode 100644 drivers/mfd/khadas-mcu.c
 create mode 100644 include/linux/mfd/khadas-mcu.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 0a59249198d3..b95091397052 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2003,6 +2003,20 @@ config MFD_WCD934X
 	  This driver provides common support WCD934x audio codec and its
 	  associated Pin Controller, Soundwire Controller and Audio codec.
 
+config MFD_KHADAS_MCU
+	tristate "Support for Khadas System control Microcontroller"
+	depends on I2C
+	depends on OF || COMPILE_TEST
+	select MFD_CORE
+	select REGMAP_I2C
+	help
+	  Support for the Khadas System control Microcontroller interface present
+	  on their VIM and Edge boards.
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
index 000000000000..6d08fa2e373a
--- /dev/null
+++ b/drivers/mfd/khadas-mcu.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for Khadas System control Microcontroller
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+#include <linux/bitfield.h>
+#include <linux/i2c.h>
+#include <linux/mfd/khadas-mcu.h>
+#include <linux/regmap.h>
+#include <linux/mfd/core.h>
+#include <linux/module.h>
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
+	/* Feature supported only on VIM1/2 Rev13+ and VIM3 */
+	{ .name = "khadas-mcu-fan-ctrl", },
+};
+
+static struct mfd_cell khadas_mcu_cells[] = {
+	/* Features supported on all board revisions */
+	{ .name = "khadas-mcu-user-mem", },
+};
+
+static int khadas_mcu_probe(struct i2c_client *client,
+		       const struct i2c_device_id *id)
+{
+	struct device *dev = &client->dev;
+	struct khadas_mcu *khadas_mcu;
+	int ret;
+
+	khadas_mcu = devm_kzalloc(dev, sizeof(*khadas_mcu), GFP_KERNEL);
+	if (!khadas_mcu)
+		return -ENOMEM;
+
+	i2c_set_clientdata(client, khadas_mcu);
+
+	khadas_mcu->dev = dev;
+
+	khadas_mcu->map = devm_regmap_init_i2c(client,
+					       &khadas_mcu_regmap_config);
+	if (IS_ERR(khadas_mcu->map)) {
+		ret = PTR_ERR(khadas_mcu->map);
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
index 000000000000..2e68af21735c
--- /dev/null
+++ b/include/linux/mfd/khadas-mcu.h
@@ -0,0 +1,91 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Khadas System control Microcontroller Register map
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#ifndef MFD_KHADAS_MCU_H
+#define MFD_KHADAS_MCU_H
+
+#define KHADAS_MCU_PASSWD_VEN_0_REG		0x0 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_1_REG		0x1 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_2_REG		0x2 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_3_REG		0x3 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_4_REG		0x4 /* RO */
+#define KHADAS_MCU_PASSWD_VEN_5_REG		0x5 /* RO */
+#define KHADAS_MCU_MAC_0_REG			0x6 /* RO */
+#define KHADAS_MCU_MAC_1_REG			0x7 /* RO */
+#define KHADAS_MCU_MAC_2_REG			0x8 /* RO */
+#define KHADAS_MCU_MAC_3_REG			0x9 /* RO */
+#define KHADAS_MCU_MAC_4_REG			0xa /* RO */
+#define KHADAS_MCU_MAC_5_REG			0xb /* RO */
+#define KHADAS_MCU_USID_0_REG			0xc /* RO */
+#define KHADAS_MCU_USID_1_REG			0xd /* RO */
+#define KHADAS_MCU_USID_2_REG			0xe /* RO */
+#define KHADAS_MCU_USID_3_REG			0xf /* RO */
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
+/* Boards */
+enum {
+	KHADAS_BOARD_VIM1 = 0x1,
+	KHADAS_BOARD_VIM2,
+	KHADAS_BOARD_VIM3,
+	KHADAS_BOARD_EDGE = 0x11,
+	KHADAS_BOARD_EDGE_V,
+};
+
+/**
+ * struct khadas_mcu_data - Khadas MCU MFD structure
+ * @device:		device reference used for logs
+ * @map:		register map
+ */
+struct khadas_mcu {
+	struct device *dev;
+	struct regmap *map;
+};
+
+#endif /* MFD_KHADAS_MCU_H */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
