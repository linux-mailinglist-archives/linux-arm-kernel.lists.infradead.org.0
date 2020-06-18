Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B440A1FF34E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gq2zr6n2nJBWlnOJGh2qbVyrrmw5e2rA3XiBvexJzFk=; b=V69umGTn/m1EOK
	B36uf42BfWZj8L/SjR6p6AMMwa17O6KIqEoD55aqwn1550lRnXClJnXssVQXHjZC/ilctTJ0+1uGJ
	YyogYFV6a/noLH29MUIb3FibSJc4Z1wwz7gVBTSeeKmF6hb58N0yOcRqCmJDiKTg3/E3kFtpwHCfd
	22jsjWgtQ3Whhru+AXqvgaywk/AfFZkt357JItBPITBqY8cZJnfS4is7QP7tG68xXcidvSUJizkbA
	6luyfDuWFlSdLiFVt6ZT2zbwntx1hHYkL5Z2Q32ixO4AH6zEr6hqFR/dmypMPYUT5YAysdNrgsZ1b
	Lbk1CDisn4sb1u8YiARA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlulI-0000Ho-2s; Thu, 18 Jun 2020 13:39:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlukL-0008A8-R9
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:38:30 +0000
Received: by mail-wr1-x444.google.com with SMTP id b6so6082712wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 06:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vPTcsPqT56iwg2yHshvklQiE9Nd2/eBhXzSh8M4e4Xg=;
 b=htdeYKEyPtH90b3+/yaWE83qmZGoNrgpjJE/2aN0eoec745UBkXSjBUxAWBXmWlUd0
 gVbZ3JH5vqtV4t4biy4X0cJCH5wosw5vKY+DNhc+J5tDDYqxLzTDK2b/L2s+lTuhlEiw
 MLqxSIpVkfTKWSgAqCkZ0A10XyhhW6y4EcANXo3Gyd6MAK9D7OBY5D8JSTpUAEwMeRSR
 IbSgu6kWsIEY0KPUKHDfkyIGPLddYOEVCW3cyYijhLNVzluaB4moIliyDBv78wdRKxHS
 3Rfb+dvEYNy+72RmAsyY6pk9udq7BFyk40Saa+DVgCwuvpjdYFxS+dU5Gmt/Bk4vLWTo
 i/5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vPTcsPqT56iwg2yHshvklQiE9Nd2/eBhXzSh8M4e4Xg=;
 b=kJejVsC8j13TQNwYwRw8VJDJUykRgfnHDgqi9Vwm47cNHu1YJpwPJswApsvuTj181H
 nam/+e1ifeSl6/uHqrwPvNP8MXc+c/vI9cehFWzuuTliY3vOCNVAAfRM6diUVYfft7zX
 Z7+QxzjLSuWhnR7Y6Ibid4wML63QMQP5k0rMjDuq0SVYrm9eLmDZ2+0DzX48oM8MIqSa
 UXLPlKuir+3KRppNJL5v30IRNRPmEcj4I0knM+KykNhnVmcljYVeQ0KFeB/oGiMkpRTW
 0rulvNwQwW32U/5ynIFlbo5f/sIhIV3oaZrPMNZKA5SYv88t4YJAcA5LZphq/zer5FCv
 tUAA==
X-Gm-Message-State: AOAM532ExwqG93DElGDwItE6ddw6DTr2AlKkybqpcp7oDoIvMTFUILL+
 g6/aT9cwTPQdm22oUE3VE+wH0w==
X-Google-Smtp-Source: ABdhPJzWg/o4PtTY7jZ6HuEo25EDlYmMZI3MaWXTSzVi9PJXyR2d/tC2VNJzVhLi5rQ9XU6bCBGPfQ==
X-Received: by 2002:a5d:5351:: with SMTP id t17mr4454378wrv.287.1592487504091; 
 Thu, 18 Jun 2020 06:38:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:9902:c1f0:76c7:9dbc])
 by smtp.gmail.com with ESMTPSA id o82sm3707956wmo.40.2020.06.18.06.38.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 06:38:23 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: lee.jones@linaro.org
Subject: [PATCH v4 1/2] thermal: add support for the MCU controlled FAN on
 Khadas boards
Date: Thu, 18 Jun 2020 15:38:17 +0200
Message-Id: <20200618133818.15857-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200618133818.15857-1-narmstrong@baylibre.com>
References: <20200618133818.15857-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063825_910809_CA8D80C3 
X-CRM114-Status: GOOD (  18.99  )
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
Cc: amit.kucheria@verdurent.com, daniel.lezcano@linaro.org,
 linux-pm@vger.kernel.org, khilman@baylibre.com,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Amit Kucheria <amit.kucheria@linaro.org>, linux-amlogic@lists.infradead.org,
 rui.zhang@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The new Khadas VIM2 and VIM3 boards controls the cooling fan via the
on-board microcontroller.

This implements the FAN control as thermal devices and as cell of the Khadas
MCU MFD driver.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Amit Kucheria <amit.kucheria@linaro.org>
---
Hi Lee,

Could you apply this patch via the MFD tree since it depends on
the linux/mfd/khadas-mcu.h header ?

This patch is unchanged from the v3 serie.

Thanks,
Neil

 drivers/thermal/Kconfig          |  11 ++
 drivers/thermal/Makefile         |   1 +
 drivers/thermal/khadas_mcu_fan.c | 174 +++++++++++++++++++++++++++++++
 3 files changed, 186 insertions(+)
 create mode 100644 drivers/thermal/khadas_mcu_fan.c

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 3eb2348e5242..0125561488c9 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -500,4 +500,15 @@ config SPRD_THERMAL
 	help
 	  Support for the Spreadtrum thermal sensor driver in the Linux thermal
 	  framework.
+
+config KHADAS_MCU_FAN_THERMAL
+	tristate "Khadas MCU controller FAN cooling support"
+	depends on OF || COMPILE_TEST
+	depends on MFD_KHADAS_MCU
+	select MFD_CORE
+	select REGMAP
+	help
+	  If you say yes here you get support for the FAN controlled
+	  by the Microcontroller found on the Khadas VIM boards.
+
 endif
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index 0c8b84a09b9a..4b6aabaa7e31 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -61,3 +61,4 @@ obj-$(CONFIG_ZX2967_THERMAL)	+= zx2967_thermal.o
 obj-$(CONFIG_UNIPHIER_THERMAL)	+= uniphier_thermal.o
 obj-$(CONFIG_AMLOGIC_THERMAL)     += amlogic_thermal.o
 obj-$(CONFIG_SPRD_THERMAL)	+= sprd_thermal.o
+obj-$(CONFIG_KHADAS_MCU_FAN_THERMAL)	+= khadas_mcu_fan.o
diff --git a/drivers/thermal/khadas_mcu_fan.c b/drivers/thermal/khadas_mcu_fan.c
new file mode 100644
index 000000000000..6995b443cad4
--- /dev/null
+++ b/drivers/thermal/khadas_mcu_fan.c
@@ -0,0 +1,174 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Khadas MCU Controlled FAN driver
+ *
+ * Copyright (C) 2020 BayLibre SAS
+ * Author(s): Neil Armstrong <narmstrong@baylibre.com>
+ */
+
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
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
+	ret = regmap_write(ctx->mcu->regmap, KHADAS_MCU_CMD_FAN_STATUS_CTRL_REG,
+			   level);
+	if (ret)
+		return ret;
+
+	ctx->level = level;
+
+	return 0;
+}
+
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
+	int ret;
+
+	ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+	ctx->mcu = mcu;
+	platform_set_drvdata(pdev, ctx);
+
+	cdev = devm_thermal_of_cooling_device_register(dev->parent,
+			dev->parent->of_node, "khadas-mcu-fan", ctx,
+			&khadas_mcu_fan_cooling_ops);
+	if (IS_ERR(cdev)) {
+		ret = PTR_ERR(cdev);
+		dev_err(dev,
+				"Failed to register khadas-mcu-fan as cooling device: %d\n",
+				ret);
+		return ret;
+	}
+	ctx->cdev = cdev;
+	thermal_cdev_update(cdev);
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
