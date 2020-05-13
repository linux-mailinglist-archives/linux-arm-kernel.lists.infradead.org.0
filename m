Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F8E1D1660
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:48:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHVK7giBPWSxnl6iEkoXdFXjpUPK6G/1DUDUtaz+LA8=; b=gySZR3C1/67alV
	q3HX/JYgAB9hxb6qmf6fQVRNbNkDrhtCXeGIm9IPQDv9EqgQGk2QrcsMa449zWrlWfgSgRP60AtO/
	cPsbp7P5FnIKTOIlVPqn/ERx0/nqRtWuXHEFftrQe3X5gOxxYoGMIkIUy6DnsWPQyHRDuT/RsIUPe
	z4N65FEHirj3Qd4gvHcRybgYCSUambFvYkCNt1tqB6hL9eSfco20m4jDOmvfhmIHEtYSs55oucq4T
	MnjCyfjn4aPrRB1LVOJ+bLq3QvEMslhsXrif66wQvfnGmWAF5GY0KhofMHeiKcXXx4DoYE78SISPL
	u788vQxF8uEbB6s67GcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrkF-0004xn-38; Wed, 13 May 2020 13:48:23 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYre0-0005HP-9e
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:42:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589377316; x=1620913316;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lw1dDpuogFHf2FXc0xqaRt0YHXMCAsmOeJxn562Quvk=;
 b=jQr17jMXQoQBFJADGT06p7wHHQltW+wBlmUG2pRzK/a83ZZqIxjrkZmT
 POCDIVTT9dvvfXfkZSvgaqFzrtKzFhkEbXQmAOQEJv7ucVwLkJgN62hwN
 8io3d8WrREhAI+qgnrxweraC6H1plivDI7X0w6342YpjLKvDcFN/Cztxw
 Wuf6qx7BabdFLwemdNeJOrXEtWxKYMfbnyVIWDIRJ0qdnUYxY+8DBGWF7
 cbdq4mEwDwJtd86n2Uw5FDk/R7MPKW87HW7iIRaxTAl0Z0e0w+qWAgD8A
 0OqG8PIvK743zyFoxlVibvC4pcKtrrvVkXtHwhea4byNvtpXtBpunHPlS A==;
IronPort-SDR: yV4k+9QFy+k3Ts5oaxqE0ZeJXVWPqYeCqITv4qiO/sKLQjDV8C8FekeimAIb7pq/UgsNARE/+w
 jAj/8HpzRQeQgEfCD4QPCzOu7xodxTNBWCIfvahTdonlIEUqlLVpE+diJcTwsWVLqrmEMnREWi
 0yxD4+DXHLSeN7elWznfDOYzmv8arizYyTYgOcTd2fo7NDebHYoFO6WAB/LFD6kKaYfFSM4siS
 iECgI32e8fN7RoDQ1dnfW3ZZajEEZ96J1bpvRmt/qTraaumP41LpgLST9ci9zPJUYB8ufOCAvi
 oFo=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="76504510"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:41:55 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:41:55 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:41:55 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>, SoC Team <soc@kernel.org>
Subject: [PATCH 3/3] hwmon: sparx5: Add Sparx5 SoC temperature driver
Date: Wed, 13 May 2020 15:41:40 +0200
Message-ID: <20200513134140.25357-4-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513134140.25357-1-lars.povlsen@microchip.com>
References: <20200513134140.25357-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_064156_366085_D45C811D 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 drivers/hwmon/sparx5-temp.c | 154 ++++++++++++++++++++++++++++++++++++
 3 files changed, 165 insertions(+), 1 deletion(-)
 create mode 100644 drivers/hwmon/sparx5-temp.c

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index 4c62f900bf7e8..130cb1f1748ff 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -480,6 +480,16 @@ config SENSORS_I5K_AMB
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
index b0b9c8e571762..28a09986b7a62 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -64,6 +64,7 @@ obj-$(CONFIG_SENSORS_DS1621)	+= ds1621.o
 obj-$(CONFIG_SENSORS_EMC1403)	+= emc1403.o
 obj-$(CONFIG_SENSORS_EMC2103)	+= emc2103.o
 obj-$(CONFIG_SENSORS_EMC6W201)	+= emc6w201.o
+obj-$(CONFIG_SENSORS_SPARX5)	+= sparx5-temp.o
 obj-$(CONFIG_SENSORS_F71805F)	+= f71805f.o
 obj-$(CONFIG_SENSORS_F71882FG)	+= f71882fg.o
 obj-$(CONFIG_SENSORS_F75375S)	+= f75375s.o
@@ -190,4 +191,3 @@ obj-$(CONFIG_SENSORS_OCC)	+= occ/
 obj-$(CONFIG_PMBUS)		+= pmbus/

 ccflags-$(CONFIG_HWMON_DEBUG_CHIP) := -DDEBUG
-
diff --git a/drivers/hwmon/sparx5-temp.c b/drivers/hwmon/sparx5-temp.c
new file mode 100644
index 0000000000000..bf9dd102a9825
--- /dev/null
+++ b/drivers/hwmon/sparx5-temp.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/* Sparx5 SoC temperature sensor driver
+ *
+ * Copyright (C) 2020 Lars Povlsen <lars.povlsen@microchip.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/hwmon.h>
+#include <linux/hwmon-sysfs.h>
+#include <linux/init.h>
+#include <linux/io.h>
+#include <linux/module.h>
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
+		if (stat & TEMP_STAT_VALID) {
+			value = (stat & TEMP_STAT_TEMP);
+			value = DIV_ROUND_CLOSEST(value * 3522, 4096) - 1094;
+			value *= 100;
+			*temp = value;
+		} else
+			rc = -EINVAL;
+		break;
+	default:
+		rc = -EOPNOTSUPP;
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
+	int err = 0;
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
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
