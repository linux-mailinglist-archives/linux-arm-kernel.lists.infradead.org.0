Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E419A1697AC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgspvlK4zkpSXWobcu8sHO01ImVllmA8V8fsPoa9nHY=; b=EtWd2YjWAitCtO
	Mv6k7xH59mFHoRxf3xMWP3lMRtoX5l9+v4U2BZq9bf7co+mME6f1gkMlorgYiWY4e0cZWWsry0O6u
	LhamveEIK65GlnuzKpJ3XjwghZ3r+yJOUnFVxKcAakYq1fcCw4q2XWVLDMtm1GCVlzC2yhF3IEbYe
	c8qbfv6CvyuKnIQxILyeMLyT52lyZdGu5p25DUppy+psl4fAJJvnWGTL9Uv25Y8nYpHWcOZXTluWj
	thXJkztGZARyJVx2Tm6NSrRZ8BujJXTsge0sYSo4eVkxQQAeFHzbl8BXhpoO6Q+DkaiJpT+Xfaork
	tn4PEQbO1NERCNuFV8rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5r78-0006I8-0B; Sun, 23 Feb 2020 13:16:06 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5r5v-00049K-IE
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 13:14:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582463689; bh=n1Gw4xmsWHFb3xKKdvOT2QnTlBh8AtTBj3a2tgGFxec=;
 h=From:To:Cc:Subject:Date:References:From;
 b=hA75GDF8j3AnG+DDG8IxhwbfCnxrf3sRc12Lu5upBWtrjBLOVk9aPnsnJeiFYef0E
 rGL25ko6X6f3B1SpUiiQXEJcG9mYGj10vqRPxDLMYXl3Qu+m2RB+YAM7PCkDwrvhf7
 rVOi6DT/6zgiOJSgs2JE1PpnT5vursi1wDOlcPmY=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/4] leds: axp20x: Support charger LED on AXP20x like PMICs
Date: Sun, 23 Feb 2020 14:14:33 +0100
Message-Id: <20200223131435.681620-3-megous@megous.com>
In-Reply-To: <20200223131435.681620-1-megous@megous.com>
References: <20200223131435.681620-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_051451_938929_1DBD0FC0 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is single LED that can be turned on and off by the user, or set to
be controlled by the charger in 2 different modes.

The driver initializes the LED to be controlled by the charger, but
allows to switch it to user control, and change the mode of charging
indication via a sysfs.

The driver was developed on AXP813, but should work on other PMICs like
that without changes.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/leds/Kconfig       |   7 ++
 drivers/leds/Makefile      |   1 +
 drivers/leds/leds-axp20x.c | 240 +++++++++++++++++++++++++++++++++++++
 drivers/mfd/axp20x.c       |   3 +
 4 files changed, 251 insertions(+)
 create mode 100644 drivers/leds/leds-axp20x.c

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index d82f1dea37111..80a3f31f6f4c3 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -846,6 +846,13 @@ config LEDS_TPS6105X
 	  It is a single boost converter primarily for white LEDs and
 	  audio amplifiers.
 
+config LEDS_AXP20X
+	tristate "Charger LED support for AXP20X-like PMICs (AXP813, ...)"
+	depends on LEDS_CLASS && MFD_AXP20X
+	help
+	  This option enables support for on-chip LED driver on
+	  AXP20X-like PMICs.
+
 comment "LED Triggers"
 source "drivers/leds/trigger/Kconfig"
 
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index d7e1107753fb1..80ea1bc4744b0 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -86,6 +86,7 @@ obj-$(CONFIG_LEDS_TI_LMU_COMMON)	+= leds-ti-lmu-common.o
 obj-$(CONFIG_LEDS_LM3697)		+= leds-lm3697.o
 obj-$(CONFIG_LEDS_LM36274)		+= leds-lm36274.o
 obj-$(CONFIG_LEDS_TPS6105X)		+= leds-tps6105x.o
+obj-$(CONFIG_LEDS_AXP20X)		+= leds-axp20x.o
 
 # LED SPI Drivers
 obj-$(CONFIG_LEDS_CR0014114)		+= leds-cr0014114.o
diff --git a/drivers/leds/leds-axp20x.c b/drivers/leds/leds-axp20x.c
new file mode 100644
index 0000000000000..e6c9853b84d52
--- /dev/null
+++ b/drivers/leds/leds-axp20x.c
@@ -0,0 +1,240 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * LED Driver for X-Powers AXP813 PMIC and similar.
+ *
+ * Copyright(c) 2020 Ondrej Jirman <megous@megous.com>
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/platform_device.h>
+#include <linux/leds.h>
+#include <linux/slab.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/mfd/axp20x.h>
+
+#define AXP20X_CHGLED_CTRL_MASK		BIT(3)
+#define AXP20X_CHGLED_CTRL_CHARGER	BIT(3)
+#define AXP20X_CHGLED_CTRL_USER		0
+
+#define AXP20X_CHRG_CTRL2_MODE		BIT(4)
+
+#define AXP20X_CHGLED_USER_STATE_MASK		GENMASK(5, 4)
+#define AXP20X_CHGLED_USER_STATE_OFF		(0 << 4)
+#define AXP20X_CHGLED_USER_STATE_BLINK_SLOW	(1 << 4)
+#define AXP20X_CHGLED_USER_STATE_BLINK_FAST	(2 << 4)
+#define AXP20X_CHGLED_USER_STATE_ON		(3 << 4)
+
+struct axp20x_led {
+	struct led_classdev cdev;
+	struct regmap *regmap;
+};
+
+static int axp20x_led_set(struct led_classdev *led_cdev,
+			   enum led_brightness value)
+{
+	struct axp20x_led *led =
+			container_of(led_cdev, struct axp20x_led, cdev);
+	unsigned int val;
+
+	val = value == LED_OFF ? AXP20X_CHGLED_USER_STATE_OFF :
+		AXP20X_CHGLED_USER_STATE_ON;
+
+	return regmap_update_bits(led->regmap, AXP20X_OFF_CTRL,
+				  AXP20X_CHGLED_USER_STATE_MASK, val);
+
+}
+
+static ssize_t charger_control_show(struct device *dev,
+				    struct device_attribute *attr, char *buf)
+{
+	struct led_classdev *led_cdev = dev_get_drvdata(dev);
+	struct axp20x_led *led =
+		container_of(led_cdev, struct axp20x_led, cdev);
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(led->regmap, AXP20X_OFF_CTRL, &val);
+	if (ret)
+		return ret;
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n",
+			 val & AXP20X_CHGLED_CTRL_MASK ? 1 : 0);
+}
+
+static ssize_t charger_control_store(struct device *dev,
+				     struct device_attribute *attr,
+				     const char *buf, size_t len)
+{
+	struct led_classdev *led_cdev = dev_get_drvdata(dev);
+	struct axp20x_led *led =
+			container_of(led_cdev, struct axp20x_led, cdev);
+	bool status;
+	int ret;
+
+	ret = kstrtobool(buf, &status);
+	if (ret)
+		return ret;
+
+	ret = regmap_update_bits(led->regmap, AXP20X_OFF_CTRL,
+				 AXP20X_CHGLED_CTRL_MASK,
+				 status ? AXP20X_CHGLED_CTRL_CHARGER :
+				 AXP20X_CHGLED_CTRL_USER);
+	if (ret)
+		return ret;
+
+	return len;
+}
+
+static ssize_t charger_mode_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct led_classdev *led_cdev = dev_get_drvdata(dev);
+	struct axp20x_led *led =
+		container_of(led_cdev, struct axp20x_led, cdev);
+	unsigned int val;
+	int ret;
+
+	ret = regmap_read(led->regmap, AXP20X_CHRG_CTRL2, &val);
+	if (ret)
+		return ret;
+
+	return scnprintf(buf, PAGE_SIZE, "%u\n",
+			 val & AXP20X_CHRG_CTRL2_MODE ? 1 : 0);
+}
+
+static ssize_t charger_mode_store(struct device *dev,
+				  struct device_attribute *attr,
+				  const char *buf, size_t len)
+{
+	struct led_classdev *led_cdev = dev_get_drvdata(dev);
+	struct axp20x_led *led =
+		container_of(led_cdev, struct axp20x_led, cdev);
+	unsigned int mode;
+	int ret;
+
+	ret = kstrtouint(buf, 0, &mode);
+	if (ret)
+		return ret;
+
+	if (mode > 1)
+		return -ERANGE;
+
+	ret = regmap_update_bits(led->regmap, AXP20X_CHRG_CTRL2,
+				 AXP20X_CHRG_CTRL2_MODE,
+				 mode ? AXP20X_CHRG_CTRL2_MODE : 0);
+	if (ret)
+		return ret;
+
+	return len;
+}
+
+static DEVICE_ATTR_RW(charger_control);
+static DEVICE_ATTR_RW(charger_mode);
+
+static struct attribute *axp20x_led_attrs[] = {
+	&dev_attr_charger_control.attr,
+	&dev_attr_charger_mode.attr,
+	NULL,
+};
+
+ATTRIBUTE_GROUPS(axp20x_led);
+
+static int axp20x_led_probe(struct platform_device *pdev)
+{
+	struct axp20x_dev *axp20x;
+	struct axp20x_led *led;
+	int ret;
+
+	if (!of_device_is_available(pdev->dev.of_node))
+		return -ENODEV;
+
+	axp20x = dev_get_drvdata(pdev->dev.parent);
+	if (!axp20x)
+		return -EINVAL;
+
+	led = devm_kzalloc(&pdev->dev,
+			   sizeof(struct axp20x_led),
+			   GFP_KERNEL);
+	if (!led)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, led);
+
+	led->regmap = axp20x->regmap;
+
+	led->cdev.name = "axp20x-chgarger-led";
+	led->cdev.brightness_set_blocking = axp20x_led_set;
+	led->cdev.brightness = LED_OFF;
+	led->cdev.max_brightness = 1;
+	led->cdev.groups = axp20x_led_groups,
+
+	ret = devm_led_classdev_register(pdev->dev.parent, &led->cdev);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register device %s\n",
+			led->cdev.name);
+		return ret;
+	}
+
+	ret = regmap_update_bits(led->regmap, AXP20X_OFF_CTRL,
+				 AXP20X_CHGLED_CTRL_MASK,
+				 AXP20X_CHGLED_CTRL_CHARGER);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to enable charger control\n");
+		return ret;
+	}
+
+	ret = axp20x_led_set(&led->cdev, led->cdev.brightness);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to init led brightness\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static void axp20x_led_shutdown(struct platform_device *pdev)
+{
+	struct axp20x_led *led = platform_get_drvdata(pdev);
+
+	/* On shutdown, we want to give LED control back to the PMIC,
+	 * so that it doesn't stay on, while the system is off.
+	 */
+
+	axp20x_led_set(&led->cdev, LED_OFF);
+
+	regmap_update_bits(led->regmap, AXP20X_OFF_CTRL,
+			   AXP20X_CHGLED_CTRL_MASK,
+			   AXP20X_CHGLED_CTRL_CHARGER);
+}
+
+static int axp20x_led_remove(struct platform_device *pdev)
+{
+	axp20x_led_shutdown(pdev);
+
+	return 0;
+}
+
+static const struct of_device_id axp20x_leds_of_match[] = {
+	{ .compatible = "x-powers,axp813-charger-led", },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, axp20x_leds_of_match);
+
+static struct platform_driver axp20x_led_driver = {
+	.driver		= {
+		.name	= "leds-axp20x",
+		.of_match_table = axp20x_leds_of_match,
+	},
+	.probe		= axp20x_led_probe,
+	.remove		= axp20x_led_remove,
+	.shutdown	= axp20x_led_shutdown,
+};
+
+module_platform_driver(axp20x_led_driver);
+
+MODULE_AUTHOR("Ondrej Jirman <megous@megous.com>");
+MODULE_DESCRIPTION("LED driver for AXP813 PMIC");
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:leds-axp20x");
diff --git a/drivers/mfd/axp20x.c b/drivers/mfd/axp20x.c
index aa59496e43768..dcd68397b9d23 100644
--- a/drivers/mfd/axp20x.c
+++ b/drivers/mfd/axp20x.c
@@ -806,6 +806,9 @@ static const struct mfd_cell axp813_cells[] = {
 		.num_resources	= ARRAY_SIZE(axp803_usb_power_supply_resources),
 		.resources	= axp803_usb_power_supply_resources,
 		.of_compatible	= "x-powers,axp813-usb-power-supply",
+	}, {
+		.name		= "axp20x-charger-led",
+		.of_compatible	= "x-powers,axp813-charger-led",
 	},
 };
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
