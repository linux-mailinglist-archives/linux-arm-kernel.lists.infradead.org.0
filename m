Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC92D1F358E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 09:52:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reL/Nsqp9A7ah3QJlFw3eNkzmp+NOsCOrwdNgWOzjaA=; b=c7RakJC3lOqiyN
	N/MnlwB979FO1ZUmzYIKKZSxo0O2mmIuz6c9pNWdd1G/lzAxhmY3aVE76iVGSlGaBfV5+UcvdLD9+
	Ua1D/sOLXO+oFoIqaTLJAQjx4ZazqWWR2AKvH9v3vUZkLGnBoJGz2eR2F9oJJKP0/4X40TDZJ/tps
	HIwZaurvSR5Kf49MUH0kNAXFR12j/H2xknIK94vK1XLsj2/SV6/783K00Ud4HJlrcjW22A09vkogj
	VMmYwdDfanir/A8KUF/0zCz8f6462V9UIG5OuZktK22bBi8nWy65CVh78OfzlE6G0QfY38nOxIKJ4
	sbB/rolS/eqBFoPSHfKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZ3Q-0007Zq-G6; Tue, 09 Jun 2020 07:52:16 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZ1O-0003PJ-OT
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 07:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591689010; x=1623225010;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZcGaO2/tWr5J2B2HMgfBUkK6QCzhyaoN0iV8PYhCSJM=;
 b=sj308Y3hClNUSk/rbSx20Vy+QBDguXrjD5+6XExieWt6BnwVqHWEWKzL
 zsUZTXMte5MWqELb0uhTEt4QUcMtr04SkEmyJAZi7WtD32pc6INOQxoCj
 7ge3T6r0GCQeNdKwQ3FcLYQFol5nsYxmb4z3Fvkgmts+EOWaKDsUyDGRz
 SYqDN3lE7VTns7aRqASe2w1WtNB78kqKvdeG+ytlZp+3kgG4CVO5SLYKx
 8Fl7csxHtC44+o1erX8MeUp0m8PcSgG0XiAujmw+vxzDXppQpgrB3aLB8
 JmJCsXuSpPjrDCCAHv3Do2eD0Ibjt/WcMDqsuDJBGruXrCaNwxVaK2e8B w==;
IronPort-SDR: UsP1x2YXQYCUEaF3/YOKAlRNiQa0DDIrg1U/dGllPm+yOSwAapQ3AhG/43z8ok/XdnagbVr6ko
 yFD/9yEKfXIx5QocxGE9Cmx+Epvk6tqq/Vvqiv4pmEzVCAbKfRc/yvoSgfDhJ5urnz1z+LfoIb
 QpcfGoyNRnI6LWK+BdOgbbwA4ghewIxO1f318jeJEciz11GMP0plxvO1i5ywR2iwViVDN1vSGa
 TlrJOMu9SIt8OyDWGJnL+Yee9p4p1QIM3cF98Ph/QIQDdn6UPhppKSATsjV/CTHoH/m6fiXn+A
 /8Q=
X-IronPort-AV: E=Sophos;i="5.73,490,1583218800"; d="scan'208";a="82786973"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 00:49:46 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 00:49:45 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 9 Jun 2020 00:49:43 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: [PATCH v2 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
Date: Tue, 9 Jun 2020 09:49:40 +0200
Message-ID: <20200609074940.9529-1-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609072828.9088-1-lars.povlsen@microchip.com>
References: <20200609072828.9088-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_005010_822626_17839B70 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/hwmon/Kconfig       |  10 +++
 drivers/hwmon/Makefile      |   2 +-
 drivers/hwmon/sparx5-temp.c | 152 ++++++++++++++++++++++++++++++++++++
 3 files changed, 163 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwmon/sparx5-temp.c

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 288ae9f63588c..ec6bb8b8b12df 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -515,6 +515,16 @@ config SENSORS_I5K_AMB
 	  This driver can also be built as a module. If so, the module
 	  will be called i5k_amb.

+config SENSORS_SPARX5
+	tristate "Sparx5 SoC temperature sensor"
+	depends on ARCH_SPARX5
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
index 3e32c21f5efe3..144f09993a3f4 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -66,6 +66,7 @@ obj-$(CONFIG_SENSORS_DS1621)	+= ds1621.o
 obj-$(CONFIG_SENSORS_EMC1403)	+= emc1403.o
 obj-$(CONFIG_SENSORS_EMC2103)	+= emc2103.o
 obj-$(CONFIG_SENSORS_EMC6W201)	+= emc6w201.o
+obj-$(CONFIG_SENSORS_SPARX5)	+= sparx5-temp.o
 obj-$(CONFIG_SENSORS_F71805F)	+= f71805f.o
 obj-$(CONFIG_SENSORS_F71882FG)	+= f71882fg.o
 obj-$(CONFIG_SENSORS_F75375S)	+= f75375s.o
@@ -193,4 +194,3 @@ obj-$(CONFIG_SENSORS_OCC)	+= occ/
 obj-$(CONFIG_PMBUS)		+= pmbus/

 ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
-
diff --git a/drivers/hwmon/sparx5-temp.c b/drivers/hwmon/sparx5-temp.c
new file mode 100644
index 0000000000000..2e754462b6010
--- /dev/null
+++ b/drivers/hwmon/sparx5-temp.c
@@ -0,0 +1,152 @@
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
+#include <linux/of_device.h>
+
+#define TEMP_CTRL		0
+#define TEMP_CFG		4
+#define  TEMP_CFG_CYCLES	GENMASK(24, 15)
+#define  TEMP_CFG_CYCLES_OFF	15
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
+	val |= (clk << TEMP_CFG_CYCLES_OFF);
+	val |= TEMP_CFG_ENA;
+
+	writel(val, hwmon->base + TEMP_CFG);
+}
+
+static void s5_temp_disable(void *data)
+{
+	struct s5_hwmon *hwmon = data;
+	u32 val = readl(hwmon->base + TEMP_CFG);
+
+	val &= ~TEMP_CFG_ENA;
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
+	HWMON_CHANNEL_INFO(chip,
+			   HWMON_C_REGISTER_TZ),
+	HWMON_CHANNEL_INFO(temp,
+			   HWMON_T_INPUT),
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
+	int err;
+
+	hwmon = devm_kzalloc(&pdev->dev, sizeof(*hwmon), GFP_KERNEL);
+	if (!hwmon)
+		return -ENOMEM;
+
+	hwmon->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(hwmon->base))
+		return PTR_ERR(hwmon->base);
+
+	err = devm_add_action(&pdev->dev, s5_temp_disable, hwmon);
+	if (err)
+		return err;
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
