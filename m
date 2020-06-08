Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA38D1F1540
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgtwl2EyKuP82MgV+IfyMpbmKhqup2Zyn9zKhG5j0l8=; b=oiFtGYLKtz7uFV
	3JFpPkikjSxdi4JMH9eQd3fmfFBe+BBTop6dYilAs0gG1iQXpqfoX9dtaxA5UU//I9WHOXlSC7WgV
	WEeH0nUMwXV6epf6Fw6wRpegSodj2DW5Oi0OFdIE9n7O6g24KrsjkJJTNYfyv6vxOSM7qFLZlEuE+
	B5Xa58dMpflwmHiIYImQXKv/x7nxDdaPnTwcjSGTY5zfROIU+123goq2AXXZCXV05qe5Px5+jSfLj
	UIFL11v+Z+lNeBUk2QpjJMAYnHJOQOIyPsIe3kUHkPrDUgyyfaSe/yppy5G17ChZ1JbzpTAZ2aZ5a
	U4qS7UtNclPfAEvPWykA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiDvR-0002w5-00; Mon, 08 Jun 2020 09:18:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiDue-0002K5-PC
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:17:52 +0000
Received: by mail-wr1-x441.google.com with SMTP id x6so16487039wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x1ekzgH61SMSMNEKJSFtFV9vk73XIGNbq1nET0BFIPY=;
 b=jJggZ1+qiIrF9PT052QZAHlJLjPNrJO7Cs+RhWJdAxmpBaQoZ67F+0Kaz+Sx2ZIwpz
 G7Pjd3jQjhfz2mqi1+nQHCg8PYPvXE4na6f68twLNnHRqILxoABqDEwHv/6ZReeJT6YW
 MxseY+whAVUqj3u0oinQ+HkdHaR82nJiEv4LCfQ9uMk9a0/EMZ2SjBjSawspWLkX/0Or
 mY4DM7vIGlMqZvbfSVxNsPxMHm9/t3GJUcY/zW+CsKYw+q7d43BNoNXh1+/MGXsXi8XI
 cgtl83n7isg6H9pdHRNmNeH9H3E2PqUbljGFD65ZpL9EqIoqc/uQjehX4tqs2co5op2J
 aHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x1ekzgH61SMSMNEKJSFtFV9vk73XIGNbq1nET0BFIPY=;
 b=fMFCkCwrYUwuf9Yukl4cv1qDv8tGNaa60vFFdVT6xyT1JLq+/RkCLpxWL08iU01LPs
 uxum9Ui165+8lq4a+/vuNX3cJXjDW4M+rlF6N+MyoY8kG6240X8xBLGKbOJWcNj6eoph
 rZzcWzej1K7C0gm8roI/w8Ndk06vFxNdGKGw1jEx6YiWrZRBGchkCfCCK+Et/NHJM34Q
 sY+FiW5TQtUpd9HXau/KflP+xit0ntvHyxvmxivmX409nSqfXQLuk2q/4NEuLo/f4xrE
 rryhdnETkB7mBjMB7JDP7NUI3TWiVSdkSThYSJTk2O8vfBvrGxP+TfFF9hIySxPC7pIs
 rrIA==
X-Gm-Message-State: AOAM533TZJiNc8Y39BuRsd5mpp29rVf4S5GXRjJKHKM/FY11fi1uTp6I
 /J7iEmkNivE8YXzD9gRexeVw5C3kIHHKBw==
X-Google-Smtp-Source: ABdhPJwyqWluDJGM8TuKYWyuoHgnqBdg1tLGq7uHohm5l/SnmOTZkVN0jyd/97Sn0QsRatB90hGuxA==
X-Received: by 2002:a05:6000:108d:: with SMTP id
 y13mr24028366wrw.180.1591607867340; 
 Mon, 08 Jun 2020 02:17:47 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:22:5867:d2c6:75f4])
 by smtp.gmail.com with ESMTPSA id
 t7sm22732326wrq.41.2020.06.08.02.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:17:46 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org, amit.kucheria@verdurent.com
Subject: [PATCH v3 3/5] thermal: add support for the MCU controlled FAN on
 Khadas boards
Date: Mon,  8 Jun 2020 11:17:37 +0200
Message-Id: <20200608091739.2368-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200608091739.2368-1-narmstrong@baylibre.com>
References: <20200608091739.2368-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_021748_832280_C552CB13 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

The new Khadas VIM2 and VIM3 boards controls the cooling fan via the
on-board microcontroller.

This implements the FAN control as thermal devices and as cell of the Khadas
MCU MFD driver.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/thermal/Kconfig          |  11 ++
 drivers/thermal/Makefile         |   1 +
 drivers/thermal/khadas_mcu_fan.c | 174 +++++++++++++++++++++++++++++++
 3 files changed, 186 insertions(+)
 create mode 100644 drivers/thermal/khadas_mcu_fan.c

diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index 91af271e9bb0..53efd381f434 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -490,4 +490,15 @@ config SPRD_THERMAL
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
index 8c8ed7b79915..460428c2122c 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -60,3 +60,4 @@ obj-$(CONFIG_ZX2967_THERMAL)	+= zx2967_thermal.o
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
