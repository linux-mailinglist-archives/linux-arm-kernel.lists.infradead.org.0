Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB83E1EED32
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=STXA+962R4PC12fZ0lCCswznVYy7lMEvp3miKJikjY0=; b=YWg0XNunZ1j6dW
	rwpD3GdsF3OYAjhJ2Fe5NjU0wsZy/nKEC3mVpeEaHt1NDQZOc8Ph1oOC/S2xlPW4/AzYs8A3Zeqch
	h7qlQBvUM3aHC8mrVa/G7g2fzLel7MLKY+MoKY8+XG3DZom/xBQPqmUQmMbs92jWN/pPSaHCs6l8f
	VCvoKmSL7+Mna+3tg5k4FI7zIBt60qi8fbogEz3At3JfIMjpS1Ep/9oMvzva3P7FZs02eMrjNr343
	xQhaXHn00uTAuai6uq+laKaYpwuZ9zcPLlzPLWas3GurkibUIJcbTe+nGSfoMs1oHzIBAkNxpoHEO
	SWnvK9SH58Ri4AdDcHiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxCg-000267-Vu; Thu, 04 Jun 2020 21:15:10 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgx95-0007Fo-AR
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:11:32 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id A134822FE5;
 Thu,  4 Jun 2020 23:11:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591305083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zAXpPxpYe8lrH7sPevsk2EjUEce27fjlTd7vjscEtjU=;
 b=UGqJY2fICYfHlhaJ3FIB2qGZ8oXMbDwwZGiMPEA0ObWd7EYaTPzEFZ6H/EqObNldNGq2T8
 tPONsmUr9/7Dz++EoMaQ/uOe/nt8qFn5duQ1M5eHB5pDkdVB5Kp3ug5WCOiCwv/1MMmi0n
 tl9ffccFCbFBgfxzwxtrhxZfNzmgnT4=
From: Michael Walle <michael@walle.cc>
To: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 07/11] hwmon: add support for the sl28cpld hardware
 monitoring controller
Date: Thu,  4 Jun 2020 23:10:35 +0200
Message-Id: <20200604211039.12689-8-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200604211039.12689-1-michael@walle.cc>
References: <20200604211039.12689-1-michael@walle.cc>
MIME-Version: 1.0
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141127_788271_0DD1CE41 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Marc Zyngier <maz@kernel.org>, Jean Delvare <jdelvare@suse.com>,
 Jason Cooper <jason@lakedaemon.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Li Yang <leoyang.li@nxp.com>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Mark Brown <broonie@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Lee Jones <lee.jones@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for the hardware monitoring controller of the sl28cpld board
management controller. This driver is part of a multi-function device.

Signed-off-by: Michael Walle <michael@walle.cc>
Acked-by: Guenter Roeck <linux@roeck-us.net>
---
 Documentation/hwmon/index.rst    |   1 +
 Documentation/hwmon/sl28cpld.rst |  36 ++++++++
 drivers/hwmon/Kconfig            |  10 +++
 drivers/hwmon/Makefile           |   1 +
 drivers/hwmon/sl28cpld-hwmon.c   | 150 +++++++++++++++++++++++++++++++
 5 files changed, 198 insertions(+)
 create mode 100644 Documentation/hwmon/sl28cpld.rst
 create mode 100644 drivers/hwmon/sl28cpld-hwmon.c

diff --git a/Documentation/hwmon/index.rst b/Documentation/hwmon/index.rst
index 55ff4b7c5349..1f4beb7449c7 100644
--- a/Documentation/hwmon/index.rst
+++ b/Documentation/hwmon/index.rst
@@ -153,6 +153,7 @@ Hardware Monitoring Kernel Drivers
    sht3x
    shtc1
    sis5595
+   sl28cpld
    smm665
    smsc47b397
    smsc47m192
diff --git a/Documentation/hwmon/sl28cpld.rst b/Documentation/hwmon/sl28cpld.rst
new file mode 100644
index 000000000000..7ed65f78250c
--- /dev/null
+++ b/Documentation/hwmon/sl28cpld.rst
@@ -0,0 +1,36 @@
+.. SPDX-License-Identifier: GPL-2.0-only
+
+Kernel driver sl28cpld
+======================
+
+Supported chips:
+
+   * Kontron sl28cpld
+
+     Prefix: 'sl28cpld'
+
+     Datasheet: not available
+
+Authors: Michael Walle <michael@walle.cc>
+
+Description
+-----------
+
+The sl28cpld is a board management controller which also exposes a hardware
+monitoring controller. At the moment this controller supports a single fan
+supervisor. In the future there might be other flavours and additional
+hardware monitoring might be supported.
+
+The fan supervisor has a 7 bit counter register and a counter period of 1
+second. If the 7 bit counter overflows, the supervisor will automatically
+switch to x8 mode to support a wider input range at the loss of
+granularity.
+
+Sysfs entries
+-------------
+
+The following attributes are supported.
+
+======================= ========================================================
+fan1_input		Fan RPM. Assuming 2 pulses per revolution.
+======================= ========================================================
diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 288ae9f63588..e1cab08e80ce 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -1459,6 +1459,16 @@ config SENSORS_RASPBERRYPI_HWMON
 	  This driver can also be built as a module. If so, the module
 	  will be called raspberrypi-hwmon.
 
+config SENSORS_SL28CPLD
+	tristate "Kontron sl28cpl hardware monitoring driver"
+	depends on MFD_SL28CPLD
+	help
+	  If you say yes here you get support for the fan supervisor of the
+	  sl28cpld board management controller.
+
+	  This driver can also be built as a module.  If so, the module
+	  will be called sl28cpld-hwmon.
+
 config SENSORS_SHT15
 	tristate "Sensiron humidity and temperature sensors. SHT15 and compat."
 	depends on GPIOLIB || COMPILE_TEST
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index 3e32c21f5efe..03822f6bf970 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -158,6 +158,7 @@ obj-$(CONFIG_SENSORS_S3C)	+= s3c-hwmon.o
 obj-$(CONFIG_SENSORS_SCH56XX_COMMON)+= sch56xx-common.o
 obj-$(CONFIG_SENSORS_SCH5627)	+= sch5627.o
 obj-$(CONFIG_SENSORS_SCH5636)	+= sch5636.o
+obj-$(CONFIG_SENSORS_SL28CPLD)	+= sl28cpld-hwmon.o
 obj-$(CONFIG_SENSORS_SHT15)	+= sht15.o
 obj-$(CONFIG_SENSORS_SHT21)	+= sht21.o
 obj-$(CONFIG_SENSORS_SHT3x)	+= sht3x.o
diff --git a/drivers/hwmon/sl28cpld-hwmon.c b/drivers/hwmon/sl28cpld-hwmon.c
new file mode 100644
index 000000000000..de24964a7322
--- /dev/null
+++ b/drivers/hwmon/sl28cpld-hwmon.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sl28cpld hardware monitoring driver.
+ *
+ * Copyright 2019 Kontron Europe GmbH
+ */
+
+#include <linux/bitfield.h>
+#include <linux/hwmon.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define FAN_INPUT		0x00
+#define   FAN_SCALE_X8		BIT(7)
+#define   FAN_VALUE_MASK	GENMASK(6, 0)
+
+struct sl28cpld_hwmon {
+	struct regmap *regmap;
+	u32 offset;
+};
+
+static umode_t sl28cpld_hwmon_is_visible(const void *data,
+					 enum hwmon_sensor_types type,
+					 u32 attr, int channel)
+{
+	return 0444;
+}
+
+static int sl28cpld_hwmon_read(struct device *dev,
+			       enum hwmon_sensor_types type, u32 attr,
+			       int channel, long *input)
+{
+	struct sl28cpld_hwmon *hwmon = dev_get_drvdata(dev);
+	unsigned int value;
+	int ret;
+
+	switch (attr) {
+	case hwmon_fan_input:
+		ret = regmap_read(hwmon->regmap, hwmon->offset + FAN_INPUT,
+				  &value);
+		if (ret)
+			return ret;
+		/*
+		 * The register has a 7 bit value and 1 bit which indicates the
+		 * scale. If the MSB is set, then the lower 7 bit has to be
+		 * multiplied by 8, to get the correct reading.
+		 */
+		if (value & FAN_SCALE_X8)
+			value = FIELD_GET(FAN_VALUE_MASK, value) << 3;
+
+		/*
+		 * The counter period is 1000ms and the sysfs specification
+		 * says we should asssume 2 pulses per revolution.
+		 */
+		value *= 60 / 2;
+
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	*input = value;
+	return 0;
+}
+
+static const u32 sl28cpld_hwmon_fan_config[] = {
+	HWMON_F_INPUT,
+	0
+};
+
+static const struct hwmon_channel_info sl28cpld_hwmon_fan = {
+	.type = hwmon_fan,
+	.config = sl28cpld_hwmon_fan_config,
+};
+
+static const struct hwmon_channel_info *sl28cpld_hwmon_info[] = {
+	&sl28cpld_hwmon_fan,
+	NULL
+};
+
+static const struct hwmon_ops sl28cpld_hwmon_ops = {
+	.is_visible = sl28cpld_hwmon_is_visible,
+	.read = sl28cpld_hwmon_read,
+};
+
+static const struct hwmon_chip_info sl28cpld_hwmon_chip_info = {
+	.ops = &sl28cpld_hwmon_ops,
+	.info = sl28cpld_hwmon_info,
+};
+
+static int sl28cpld_hwmon_probe(struct platform_device *pdev)
+{
+	struct sl28cpld_hwmon *hwmon;
+	struct device *hwmon_dev;
+	int ret;
+
+	if (!pdev->dev.parent)
+		return -ENODEV;
+
+	hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
+	if (!hwmon)
+		return -ENOMEM;
+
+	hwmon->regmap = dev_get_regmap(pdev->dev.parent, NULL);
+	if (!hwmon->regmap)
+		return -ENODEV;
+
+	ret = device_property_read_u32(&pdev->dev, "reg", &hwmon->offset);
+	if (ret)
+		return -EINVAL;
+
+	hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
+				"sl28cpld_hwmon", hwmon,
+				&sl28cpld_hwmon_chip_info, NULL);
+	if (IS_ERR(hwmon_dev)) {
+		dev_err(&pdev->dev, "failed to register as hwmon device");
+		return PTR_ERR(hwmon_dev);
+	}
+
+	return 0;
+}
+
+static const struct of_device_id sl28cpld_hwmon_of_match[] = {
+	{ .compatible = "kontron,sl28cpld-fan" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, sl28cpld_hwmon_of_match);
+
+static const struct platform_device_id sl28cpld_hwmon_id_table[] = {
+	{ "sl28cpld-fan" },
+	{}
+};
+MODULE_DEVICE_TABLE(platform, sl28cpld_hwmon_id_table);
+
+static struct platform_driver sl28cpld_hwmon_driver = {
+	.probe = sl28cpld_hwmon_probe,
+	.id_table = sl28cpld_hwmon_id_table,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = sl28cpld_hwmon_of_match,
+	},
+};
+module_platform_driver(sl28cpld_hwmon_driver);
+
+MODULE_DESCRIPTION("sl28cpld Hardware Monitoring Driver");
+MODULE_AUTHOR("Michael Walle <michael@walle.cc>");
+MODULE_LICENSE("GPL");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
