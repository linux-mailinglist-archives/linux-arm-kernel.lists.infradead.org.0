Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222A61FAB21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:27:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTRZjxc5060hyXnKWhDnbpEd5YMqDtxgiFr22KCJw6c=; b=qp7FLUJQuMrmnS
	zxgKLDsQQ1yE2nsy/m0NpZlkwj5hCgZrOprq4Q1+UCJmYynPYY3NdCkX1wl6q8IgxQ1In2HLyBaPH
	86p8DMSVh7GBYJ4jbdDP3eFeg5aBEYxezhsolaEwy50a50D7jYWGwif9NgmRtJLQkU+5ukCiYhjE9
	WkQ5GOZYbnTf6uBY9spLF7c3yOtt/962yX9EbwQquIxp54UTgPX3aMK2RjENFtFY1tyKiLsBl45+Y
	Y2sMX1IYAutVfuhYOVdwy1uXqbBnwtOG1BpI3SY2lg7O2j5IM/4e07k/oPLkQ8/Sqj5WSlJWBploF
	S6pPkNefzD5FrMWOmclg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6w1-0004dj-0A; Tue, 16 Jun 2020 08:27:09 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6vH-0003xh-0p
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:26:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592295983; x=1623831983;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tnuVjKf68iQPKV3kfPktS/BFcn/FuHT5VzoKzWI08Qc=;
 b=u7ES9SgbX4jwrASuuNKS/j2+pS6aWFfUHFwWZiwuwSDe3C5oyi6G0thg
 PCEoJMT6waQMwj4spNmhD5UdDzMxCP2YaQwpC3cglKpvHCYGp0xyJZW7U
 reKxSudeYFa7vIJPByGvXLqCPILl8l1wSmbC40P/IR1S3kqBjpxlu0ryA
 TTy3yKeSoqKSWp3akAeVrUQcXTVVS9a7JfKt6s+5+aQVAKffJWu0qRUAI
 nSUZS6g6E01jtihZGp/PBit3Ulu7Bg1Z9+Vz/uQkqz8I1GVB6qEiIEr33
 BbwNiSXxulsrf1oVRLZd5uEDeTy9ri7PH/YFrdjlr0lO+FzW4kM2M2qBq Q==;
IronPort-SDR: 403Vml5SiLZQWr9N4Qe6SHADyH6fj9ZxzF3dkBVEWQ2JiTJzoavxQ25jGaO9NWS5gkBFuM8ikP
 u6HfRvuoZIsXFhsULnwdn5u8zfFQBQrwsX+eVQXiRH8Kt06V6+sYjjKeKbrrUzqqAGxqD2Dbvj
 IhEOA36cesYg0EpbkXJPndQJSDAqCPUowxDcJV2TXWWgpw+nRyJbL3KHIWz4NC81b2wPgkVwh9
 7tktFypAn7dy3UfevFOQyvI361KNi8GRHbDMben5EgN+dcpI6J13SJLC353r2lJ0xUsqRX3zNn
 sNU=
X-IronPort-AV: E=Sophos;i="5.73,518,1583218800"; d="scan'208";a="79621947"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jun 2020 01:26:23 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Jun 2020 01:26:20 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Jun 2020 01:26:18 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v3 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
Date: Tue, 16 Jun 2020 10:25:56 +0200
Message-ID: <20200616082556.27877-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616082556.27877-1-lars.povlsen@microchip.com>
References: <20200616082556.27877-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_012623_374004_0C28BBCC 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.71.150.166 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds a temperature sensor driver to the Sparx5 SoC.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/hwmon/Kconfig       |  10 +++
 drivers/hwmon/Makefile      |   1 +
 drivers/hwmon/sparx5-temp.c | 136 ++++++++++++++++++++++++++++++++++++
 3 files changed, 147 insertions(+)
 create mode 100644 drivers/hwmon/sparx5-temp.c

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 288ae9f63588c..7fb5e0c6c6306 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -515,6 +515,16 @@ config SENSORS_I5K_AMB
 	  This driver can also be built as a module. If so, the module
 	  will be called i5k_amb.
 
+config SENSORS_SPARX5
+	tristate "Sparx5 SoC temperature sensor"
+	depends on ARCH_SPARX5 || COMPILE_TEST
+	help
+	  If you say yes here you get support for temperature monitoring
+	  with the Microchip Sparx5 SoC.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called sparx5-temp.
+
 config SENSORS_F71805F
 	tristate "Fintek F71805F/FG, F71806F/FG and F71872F/FG"
 	depends on !PPC
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index 3e32c21f5efe3..857293f650412 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -167,6 +167,7 @@ obj-$(CONFIG_SENSORS_SMM665)	+= smm665.o
 obj-$(CONFIG_SENSORS_SMSC47B397)+= smsc47b397.o
 obj-$(CONFIG_SENSORS_SMSC47M1)	+= smsc47m1.o
 obj-$(CONFIG_SENSORS_SMSC47M192)+= smsc47m192.o
+obj-$(CONFIG_SENSORS_SPARX5)	+= sparx5-temp.o
 obj-$(CONFIG_SENSORS_STTS751)	+= stts751.o
 obj-$(CONFIG_SENSORS_AMC6821)	+= amc6821.o
 obj-$(CONFIG_SENSORS_TC74)	+= tc74.o
diff --git a/drivers/hwmon/sparx5-temp.c b/drivers/hwmon/sparx5-temp.c
new file mode 100644
index 0000000000000..4ed8a2aec3ae9
--- /dev/null
+++ b/drivers/hwmon/sparx5-temp.c
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Sparx5 SoC temperature sensor driver
+ *
+ * Copyright (C) 2020 Lars Povlsen <lars.povlsen@microchip.com>
+ */
+
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/hwmon.h>
+#include <linux/io.h>
+#include <linux/platform_device.h>
+#include <linux/mod_devicetable.h>
+#include <linux/bitfield.h>
+
+#define TEMP_CTRL		0
+#define TEMP_CFG		4
+#define  TEMP_CFG_CYCLES	GENMASK(24, 15)
+#define  TEMP_CFG_ENA		BIT(0)
+#define TEMP_STAT		8
+#define  TEMP_STAT_VALID	BIT(12)
+#define  TEMP_STAT_TEMP		GENMASK(11, 0)
+
+struct s5_hwmon {
+	void __iomem *base;
+};
+
+static void s5_temp_enable(struct s5_hwmon *hwmon)
+{
+	u32 val = readl(hwmon->base + TEMP_CFG);
+	u32 clk = 250;
+
+	val &= ~TEMP_CFG_CYCLES;
+	val |= FIELD_PREP(TEMP_CFG_CYCLES, clk);
+	val |= TEMP_CFG_ENA;
+
+	writel(val, hwmon->base + TEMP_CFG);
+}
+
+static int s5_read(struct device *dev, enum hwmon_sensor_types type,
+		   u32 attr, int channel, long *temp)
+{
+	struct s5_hwmon *hwmon = dev_get_drvdata(dev);
+	int rc = 0, value;
+	u32 stat;
+
+	switch (attr) {
+	case hwmon_temp_input:
+		stat = readl_relaxed(hwmon->base + TEMP_STAT);
+		if (!(stat & TEMP_STAT_VALID))
+			return -EIO;
+		value = stat & TEMP_STAT_TEMP;
+		value = DIV_ROUND_CLOSEST(value * 3522, 4096) - 1094;
+		value *= 100;
+		*temp = value;
+		break;
+	default:
+		rc = -EOPNOTSUPP;
+		break;
+	}
+
+	return rc;
+}
+
+static umode_t s5_is_visible(const void *_data, enum hwmon_sensor_types type,
+			     u32 attr, int channel)
+{
+	if (type != hwmon_temp)
+		return 0;
+
+	switch (attr) {
+	case hwmon_temp_input:
+		return 0444;
+	default:
+		return 0;
+	}
+}
+
+static const struct hwmon_channel_info *s5_info[] = {
+	HWMON_CHANNEL_INFO(chip, HWMON_C_REGISTER_TZ),
+	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
+	NULL
+};
+
+static const struct hwmon_ops s5_hwmon_ops = {
+	.is_visible = s5_is_visible,
+	.read = s5_read,
+};
+
+static const struct hwmon_chip_info s5_chip_info = {
+	.ops = &s5_hwmon_ops,
+	.info = s5_info,
+};
+
+static int s5_temp_probe(struct platform_device *pdev)
+{
+	struct device *hwmon_dev;
+	struct s5_hwmon *hwmon;
+
+	hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
+	if (!hwmon)
+		return -ENOMEM;
+
+	hwmon->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(hwmon->base))
+		return PTR_ERR(hwmon->base);
+
+	s5_temp_enable(hwmon);
+
+	hwmon_dev = devm_hwmon_device_register_with_info(&pdev->dev,
+							 "s5_temp",
+							 hwmon,
+							 &s5_chip_info,
+							 NULL);
+
+	return PTR_ERR_OR_ZERO(hwmon_dev);
+}
+
+const struct of_device_id s5_temp_match[] = {
+	{ .compatible = "microchip,sparx5-temp" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, s5_temp_match);
+
+static struct platform_driver s5_temp_driver = {
+	.probe = s5_temp_probe,
+	.driver = {
+		.name = "sparx5-temp",
+		.of_match_table = s5_temp_match,
+	},
+};
+
+module_platform_driver(s5_temp_driver);
+
+MODULE_AUTHOR("Lars Povlsen <lars.povlsen@microchip.com>");
+MODULE_DESCRIPTION("Sparx5 SoC temperature sensor driver");
+MODULE_LICENSE("GPL");
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
