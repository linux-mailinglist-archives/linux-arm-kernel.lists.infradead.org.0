Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F5B1B20D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJaNqi/hsudd4i6Ml4rDYYIZzgYFhrEltRK0QbKRZ/I=; b=tYPNKl7VNgA6hF
	pco2IgreuNQHw/0Wc3x1fHzQaoh3Nsbt/f0Hhw1CRIcnTwDSsxU1m5WdWGUoXp4D1I82V34yeWujM
	/oeryGQrLsPJHZsKxXpuWGeOYUBchNsi1k4SdX5wFoWKptmuoYBkudQMIGf1HLs7czNtBbHGqLj41
	1XyenOplXuC8EyuLCZkEicdnLLqYiA1AmDgtaApmttdeHmuMPL9y2KxYaRBWBpJXZe5S8xd5kCzAL
	iU3lO0VAbBP7zF71NmL5d5BFGMDmVOjC8YIsZN7u7aUKsXWSBpvPf4SXkYz939QZcG4483bSHuqSQ
	C5Er9Cw5MU2Md0mqGD2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnr8-0001mN-Tl; Tue, 21 Apr 2020 08:02:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnqD-00019J-81
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:01:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id u16so2529475wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QFz1UvHaf/QwvjUq4hk9gw50wQAtgMfi03pcCrPMxNo=;
 b=XvQH49c9pFBXB3qYvYNT0CIcRCWl82CkItDkzQiHosZ5ZQq3KCoglWEUw6Zdrn4QNs
 mPJY8YFllOVEQdw8tGrk+DtWrSk4b6mO6VI2aLk/nE/HUD1B2e4+ogwFpoIR+xBZ7hV6
 QlwR0wKOiI1hkO3kUNyOW4YebTAv+U6SMEkdn1blLetMF8iyMoCqNq/fonMhp8BJNceQ
 SsFOtW5a8nghdMREXzTMLXVH7mv1IgeUIMb2eyoX0yXhyagQqoIyCmjobTRMmz/bpBRd
 KWnIhpVGJINBOeGz14jpT8qX7E+rfXNwziaCayzIphchzygTxhtqXNyiVvR55LTt/O3N
 Vpcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QFz1UvHaf/QwvjUq4hk9gw50wQAtgMfi03pcCrPMxNo=;
 b=nsiqWfg8Q7IwPyfRsUHXPkjmjr/Hoy8GYH+vTh5LFTtxkzHQkLg5mAiTamh5GCTaar
 xhRUkQVuDQd7LbncKIB5xNR2jhd74SA/lV3laaaZ2DRSpTNePIcdHmHQR8zVw0VeVjdU
 6E7FJLGSjlpAH/NKRMLnvi3iHthyc2jUIMnyTKGQYOB/b6aeRVPnMWNwP1YGihHssEun
 ApAZX11aIwAC2l18HqS5nvPVv3cKgFlo1LgYSSDAFEAF0kta6bv6Gkjc3LjoT2MOdoK4
 UmLbSMbYeKRFWJ2F8tw7Z0PvPH8+XYym6WsQR9mNUJGTsGQFc6OzaZaNJi5OTDGPnzoG
 sCcQ==
X-Gm-Message-State: AGi0PuYhmwXQ5wRFNpTd9cgLO8Pvf5x8VLmA+IXEVTCSI0DFKbqCvks5
 ZQek4M/jL95eL/wWpkSIr7nD1WniVTQ=
X-Google-Smtp-Source: APiQypL1PXqIzzVcGO5TnXV9TKqnzS1pDGnW/BLBAQOsbzCxixg5uCIe3U5SBR1IJu+LqSNOqTp2ZA==
X-Received: by 2002:a7b:c755:: with SMTP id w21mr3450621wmk.120.1587456071301; 
 Tue, 21 Apr 2020 01:01:11 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 x132sm2561552wmg.33.2020.04.21.01.01.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:01:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org, jdelvare@suse.com, linux@roeck-us.net,
 srinivas.kandagatla@linaro.org
Subject: [RFC 3/8] hwmon: add support for the MCU controlled FAN on Khadas
 boards
Date: Tue, 21 Apr 2020 10:00:57 +0200
Message-Id: <20200421080102.22796-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421080102.22796-1-narmstrong@baylibre.com>
References: <20200421080102.22796-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_010113_313279_74854D79 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

The new Khadas VIM2 and VIM3 boards controls the cooling fan via the
on-board microcontroller.

This implements the FAN control as HWMON devices as cell of the Khadas
MCU MFD driver.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/hwmon/Kconfig          |   9 ++
 drivers/hwmon/Makefile         |   1 +
 drivers/hwmon/khadas-mcu-fan.c | 230 +++++++++++++++++++++++++++++++++
 3 files changed, 240 insertions(+)
 create mode 100644 drivers/hwmon/khadas-mcu-fan.c

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 4c62f900bf7e..7f63ff7bb732 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -1997,6 +1997,15 @@ config SENSORS_XGENE
 	  If you say yes here you get support for the temperature
 	  and power sensors for APM X-Gene SoC.
 
+config SENSORS_KHADAS_MCU_FAN
+	tristate "Khadas MCU controller FAN driver"
+	depends on OF || COMPILE_TEST
+	select MFD_CORE
+	select REGMAP
+	help
+	  If you say yes here you get support for the FAN controlled
+	  by the Microcontroller found on the Khadas VIM boards.
+
 if ACPI
 
 comment "ACPI drivers"
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index b0b9c8e57176..20db40f6d57f 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -185,6 +185,7 @@ obj-$(CONFIG_SENSORS_W83L786NG)	+= w83l786ng.o
 obj-$(CONFIG_SENSORS_WM831X)	+= wm831x-hwmon.o
 obj-$(CONFIG_SENSORS_WM8350)	+= wm8350-hwmon.o
 obj-$(CONFIG_SENSORS_XGENE)	+= xgene-hwmon.o
+obj-$(CONFIG_SENSORS_KHADAS_MCU_FAN)	+= khadas-mcu-fan.o
 
 obj-$(CONFIG_SENSORS_OCC)	+= occ/
 obj-$(CONFIG_PMBUS)		+= pmbus/
diff --git a/drivers/hwmon/khadas-mcu-fan.c b/drivers/hwmon/khadas-mcu-fan.c
new file mode 100644
index 000000000000..dd92b2bcb7e3
--- /dev/null
+++ b/drivers/hwmon/khadas-mcu-fan.c
@@ -0,0 +1,230 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Khadas MCU Controlled FAN driver
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include <linux/hwmon.h>
+#include <linux/hwmon-sysfs.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+#include <linux/mfd/khadas-mcu.h>
+#include <linux/regmap.h>
+#include <linux/sysfs.h>
+#include <linux/thermal.h>
+
+#define MAX_LEVEL 3
+
+struct khadas_mcu_fan_ctx {
+	struct khadas_mcu *mcu;
+	unsigned int level;
+	struct thermal_cooling_device *cdev;
+};
+
+static int khadas_mcu_fan_set_level(struct khadas_mcu_fan_ctx *ctx,
+				    unsigned int level)
+{
+	int ret;
+
+	ret = regmap_write(ctx->mcu->map, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
+			   level);
+	if (ret)
+		return ret;
+
+	ctx->level = level;
+
+	return 0;
+}
+
+static ssize_t level_store(struct device *dev, struct device_attribute *attr,
+			   const char *buf, size_t count)
+{
+	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
+	unsigned long level;
+	int ret;
+
+	if (kstrtoul(buf, 10, &level) || level > MAX_LEVEL)
+		return -EINVAL;
+
+	ret = khadas_mcu_fan_set_level(ctx, level);
+	if (ret < 0)
+		return ret;
+
+	return count;
+}
+
+static ssize_t level_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%u\n", ctx->level);
+}
+
+static SENSOR_DEVICE_ATTR_RW(level1, level, 0);
+
+static struct attribute *khadas_mcu_fan_attrs[] = {
+	&sensor_dev_attr_level1.dev_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group khadas_mcu_fan_group = {
+	.attrs = khadas_mcu_fan_attrs,
+};
+
+static const struct attribute_group *khadas_mcu_fan_groups[] = {
+	&khadas_mcu_fan_group,
+	NULL,
+};
+
+/* thermal cooling device callbacks */
+static int khadas_mcu_fan_get_max_state(struct thermal_cooling_device *cdev,
+					unsigned long *state)
+{
+	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
+
+	if (!ctx)
+		return -EINVAL;
+
+	*state = MAX_LEVEL;
+
+	return 0;
+}
+
+static int khadas_mcu_fan_get_cur_state(struct thermal_cooling_device *cdev,
+					unsigned long *state)
+{
+	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
+
+	if (!ctx)
+		return -EINVAL;
+
+	*state = ctx->level;
+
+	return 0;
+}
+
+static int
+khadas_mcu_fan_set_cur_state(struct thermal_cooling_device *cdev,
+			     unsigned long state)
+{
+	struct khadas_mcu_fan_ctx *ctx = cdev->devdata;
+
+	if (!ctx || (state > MAX_LEVEL))
+		return -EINVAL;
+
+	if (state == ctx->level)
+		return 0;
+
+	return khadas_mcu_fan_set_level(ctx, state);
+}
+
+static const struct thermal_cooling_device_ops khadas_mcu_fan_cooling_ops = {
+	.get_max_state = khadas_mcu_fan_get_max_state,
+	.get_cur_state = khadas_mcu_fan_get_cur_state,
+	.set_cur_state = khadas_mcu_fan_set_cur_state,
+};
+
+static int khadas_mcu_fan_probe(struct platform_device *pdev)
+{
+	struct khadas_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
+	struct thermal_cooling_device *cdev;
+	struct device *dev = &pdev->dev;
+	struct khadas_mcu_fan_ctx *ctx;
+	struct device *hwmon;
+	int ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+	ctx->mcu = mcu;
+	platform_set_drvdata(pdev, ctx);
+
+	hwmon = devm_hwmon_device_register_with_groups(dev, "khadas-mcu-fan",
+						       ctx,
+						       khadas_mcu_fan_groups);
+	if (IS_ERR(hwmon)) {
+		dev_err(dev, "Failed to register hwmon device\n");
+		return PTR_ERR(hwmon);
+	}
+
+	if (IS_ENABLED(CONFIG_THERMAL)) {
+		cdev = devm_thermal_of_cooling_device_register(dev->parent,
+			dev->parent->of_node, "khadas-mcu-fan", ctx,
+			&khadas_mcu_fan_cooling_ops);
+		if (IS_ERR(cdev)) {
+			ret = PTR_ERR(cdev);
+			dev_err(dev,
+				"Failed to register khadas-mcu-fan as cooling device: %d\n",
+				ret);
+			return ret;
+		}
+		ctx->cdev = cdev;
+		thermal_cdev_update(cdev);
+	}
+
+	return 0;
+}
+
+static int khadas_mcu_fan_disable(struct device *dev)
+{
+	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
+	unsigned int level_save = ctx->level;
+	int ret;
+
+	ret = khadas_mcu_fan_set_level(ctx, 0);
+	if (ret)
+		return ret;
+
+	ctx->level = level_save;
+
+	return 0;
+}
+
+static void khadas_mcu_fan_shutdown(struct platform_device *pdev)
+{
+	khadas_mcu_fan_disable(&pdev->dev);
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int khadas_mcu_fan_suspend(struct device *dev)
+{
+	return khadas_mcu_fan_disable(dev);
+}
+
+static int khadas_mcu_fan_resume(struct device *dev)
+{
+	struct khadas_mcu_fan_ctx *ctx = dev_get_drvdata(dev);
+
+	return khadas_mcu_fan_set_level(ctx, ctx->level);
+}
+#endif
+
+static SIMPLE_DEV_PM_OPS(khadas_mcu_fan_pm, khadas_mcu_fan_suspend,
+			 khadas_mcu_fan_resume);
+
+static const struct platform_device_id khadas_mcu_fan_id_table[] = {
+	{ .name = "khadas-mcu-fan-ctrl", },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, khadas_mcu_fan_id_table);
+
+static struct platform_driver khadas_mcu_fan_driver = {
+	.probe		= khadas_mcu_fan_probe,
+	.shutdown	= khadas_mcu_fan_shutdown,
+	.driver	= {
+		.name		= "khadas-mcu-fan-ctrl",
+		.pm		= &khadas_mcu_fan_pm,
+	},
+	.id_table	= khadas_mcu_fan_id_table,
+};
+
+module_platform_driver(khadas_mcu_fan_driver);
+
+MODULE_AUTHOR("Neil Armstrong <narmstrong@baylibre.com>");
+MODULE_DESCRIPTION("Khadas MCU FAN driver");
+MODULE_LICENSE("GPL");
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
