Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC605138252
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 17:17:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yrPEobDXSLXpAr8YSPiFzl3yQWKsUDKVgx7cTId8eUc=; b=R0ME6G0ThDu6kfFcWvqXm+6tCH
	LvfqK4JyzQJxnEJJ2okS2gV9MPbC8mRZjG965Mmbstu/ujGvcnWP/RX2ymmE1Pi86LSEfuglEfcSF
	Nmpr//oZstI28rzPmljGBSB93sdmvMyKXpfRpWOm9eKrai5ealo95auVbihILqV+WXZtE0A+HxfZx
	omL5Z2jJrNDIRLtAlA9v21BeBpvHSYnYwxXLzeeAciIF6gHyoS1FtKt1tmtZ818ElkfXBizwYPMQX
	gWEsD3hBjNz8HPj6W60/TW19hCMpUDYgPYNao/AxzyzTmQSGKkYaqSCt//QMXSFFdRXIqX4be4fmv
	P0sYbQMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqJRS-0003HP-LS; Sat, 11 Jan 2020 16:16:50 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqJQn-0002qn-VB
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 16:16:13 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2VGj-1joql63Bip-013ze2; Sat, 11 Jan 2020 17:15:51 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V4 2/4] thermal: Add BCM2711 thermal driver
Date: Sat, 11 Jan 2020 17:15:40 +0100
Message-Id: <1578759342-4550-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
References: <1578759342-4550-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:jpF70Cx2jUyAw6JIvYmMLcAnFVDLZaCts+nTxiBrfb4+0NVpStD
 bD85rov7s3eKlRtF9OCsAN8N5X3nelMp777k//ChHAsvbr0um0P1eenRhsKIcgi54EDv1e4
 Yaej82NAf2Q8NWZhsrJyI/y3lRJi0GKAWmr8TAZjZ6EM0XoSWryu9wUogTheqEl5rWtYrU6
 8FHknqHHCKqXgJFPc+wlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6yyhpYWfYjg=:hDWk++0d+zTF3NotoYlqgq
 dG1kqCik+ZYKFdfG1J+91LHuJhIvdsLxxSgJAAx6RbWf2sAiLBClM1kFG6It9JDlGhOsgAprt
 IVqH3P5G+DoHKrl0klrpG99Bb9M0hCQ633IEzToWodC4rzWNR0GlL6YrWucrLxAc+cEI7c8ft
 PqJZKxnVY0OiGqsdm+OwB9ffRINi4YFvDrtdyxv7dgNmiYc42TMr0TMRrsUasbTkISu3aQ22r
 qeDJYBfzm104DvYM6PP+NvSn5+6YfCgddo7V/OlQafkutHPyYWAuDfULVVds5njv6c8dS2gjm
 FaC/icnWnM8HBDMLsCTptyQelF9DSH4SjYwPm1TvbtMhMqqMj91CtsYqlI30dCacRWtDI3bSP
 97bejCjJ4gt3GE2qEVfMXKme9RrhDWkYe9FyPK+gdUSdKkWXgRsuYmkfq83ts0T02KBswQhHB
 ceoIZlaA1YYvsrc4Hc8SkUq5MJt2Uyc1hL0FOaKEsbExkr5GVF3XiSfWVIkky30E204OZxV2A
 L+ROBXxw+NeeA8L97GSLzlCXRLn0Cth+f9R+3AZJu7NtpDXsMa64wHPOL8xG5ZrH3f/6CulbN
 /X/IO09piUzG7lRtBXozPsGqKxYdWPCxC7EuWZubUYsUXhskbJeL68d1xISpwUqFCm6N1TmR4
 H17hhOGx40U2JTDZG5xRWq06SFXECzBw4yNR579WkkfMagtoT1q3sEUEumVhzT+B178qlqjvC
 HzXXxXG79AFfjWXyVWYnaYC9Z9XdKQKlrAawejVGNwQI3X3ZHtTcYcf4vABglID+NF4qgsL6P
 Zo2ymwSegKqbHeK5Xf4K2CIpj0tDG9cbIiKbQh1jOzuUpxMW34LH5zSGDXrMfN2tvfAvlORaO
 88yVTTYPEmWnTTBBOSdpFhlO5+IfaddBSqysmbmGk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_081610_298312_5B244188 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the thermal sensor driver for the Broadcom BCM2711 SoC,
which is placed on the Raspberry Pi 4. The driver only provides
SoC temperature reading so far.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/thermal/broadcom/Kconfig           |   7 ++
 drivers/thermal/broadcom/Makefile          |   1 +
 drivers/thermal/broadcom/bcm2711_thermal.c | 129 +++++++++++++++++++++++++++++
 3 files changed, 137 insertions(+)
 create mode 100644 drivers/thermal/broadcom/bcm2711_thermal.c

diff --git a/drivers/thermal/broadcom/Kconfig b/drivers/thermal/broadcom/Kconfig
index cf43e15..061f1db 100644
--- a/drivers/thermal/broadcom/Kconfig
+++ b/drivers/thermal/broadcom/Kconfig
@@ -1,4 +1,11 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config BCM2711_THERMAL
+	tristate "Broadcom AVS RO thermal sensor driver"
+	depends on ARCH_BCM2835 || COMPILE_TEST
+	depends on THERMAL_OF && MFD_SYSCON
+	help
+	  Support for thermal sensors on Broadcom BCM2711 SoCs.
+
 config BCM2835_THERMAL
 	tristate "Thermal sensors on bcm2835 SoC"
 	depends on ARCH_BCM2835 || COMPILE_TEST
diff --git a/drivers/thermal/broadcom/Makefile b/drivers/thermal/broadcom/Makefile
index 490ab1f..c917b24 100644
--- a/drivers/thermal/broadcom/Makefile
+++ b/drivers/thermal/broadcom/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_BCM2711_THERMAL)		+= bcm2711_thermal.o
 obj-$(CONFIG_BCM2835_THERMAL)		+= bcm2835_thermal.o
 obj-$(CONFIG_BRCMSTB_THERMAL)		+= brcmstb_thermal.o
 obj-$(CONFIG_BCM_NS_THERMAL)		+= ns-thermal.o
diff --git a/drivers/thermal/broadcom/bcm2711_thermal.c b/drivers/thermal/broadcom/bcm2711_thermal.c
new file mode 100644
index 0000000..b1d3c4d
--- /dev/null
+++ b/drivers/thermal/broadcom/bcm2711_thermal.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Broadcom AVS RO thermal sensor driver
+ *
+ * based on brcmstb_thermal
+ *
+ * Copyright (C) 2020 Stefan Wahren
+ */
+
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/device.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/of_device.h>
+#include <linux/regmap.h>
+#include <linux/thermal.h>
+
+#include "../thermal_hwmon.h"
+
+#define AVS_RO_TEMP_STATUS		0x200
+ #define AVS_RO_TEMP_STATUS_valid_msk	(BIT(16) | BIT(10))
+ #define AVS_RO_TEMP_STATUS_data_msk	GENMASK(9, 0)
+
+struct bcm2711_thermal_priv {
+	struct regmap *regmap;
+	struct device *dev;
+	struct thermal_zone_device *thermal;
+};
+
+static int bcm2711_get_temp(void *data, int *temp)
+{
+	struct bcm2711_thermal_priv *priv = data;
+	int slope = thermal_zone_get_slope(priv->thermal);
+	int offset = thermal_zone_get_offset(priv->thermal);
+	u32 val;
+	int ret;
+	long t;
+
+	ret = regmap_read(priv->regmap, AVS_RO_TEMP_STATUS, &val);
+	if (ret)
+		return ret;
+
+	if (!(val & AVS_RO_TEMP_STATUS_valid_msk)) {
+		dev_err(priv->dev, "reading not valid\n");
+		return -EIO;
+	}
+
+	val &= AVS_RO_TEMP_STATUS_data_msk;
+
+	/* Convert a HW code to a temperature reading (millidegree celsius) */
+	t = slope * val + offset;
+	if (t < 0)
+		*temp = 0;
+	else
+		*temp = t;
+
+	return 0;
+}
+
+static const struct thermal_zone_of_device_ops bcm2711_thermal_of_ops = {
+	.get_temp	= bcm2711_get_temp,
+};
+
+static const struct of_device_id bcm2711_thermal_id_table[] = {
+	{ .compatible = "brcm,bcm2711-thermal" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, bcm2711_thermal_id_table);
+
+static int bcm2711_thermal_probe(struct platform_device *pdev)
+{
+	struct thermal_zone_device *thermal;
+	struct bcm2711_thermal_priv *priv;
+	struct device *dev = &pdev->dev;
+	struct device_node *parent;
+	struct regmap *regmap;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	/* get regmap from syscon node */
+	parent = of_get_parent(dev->of_node); /* parent should be syscon node */
+	regmap = syscon_node_to_regmap(parent);
+	of_node_put(parent);
+	if (IS_ERR(regmap)) {
+		ret = PTR_ERR(regmap);
+		dev_err(dev, "failed to get regmap: %d\n", ret);
+		return ret;
+	}
+	priv->regmap = regmap;
+	priv->dev = dev;
+
+	thermal = devm_thermal_zone_of_sensor_register(dev, 0, priv,
+						       &bcm2711_thermal_of_ops);
+	if (IS_ERR(thermal)) {
+		ret = PTR_ERR(thermal);
+		dev_err(dev, "could not register sensor: %d\n", ret);
+		return ret;
+	}
+
+	priv->thermal = thermal;
+
+	thermal->tzp->no_hwmon = false;
+	ret = thermal_add_hwmon_sysfs(thermal);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static struct platform_driver bcm2711_thermal_driver = {
+	.probe = bcm2711_thermal_probe,
+	.driver = {
+		.name = "bcm2711_thermal",
+		.of_match_table = bcm2711_thermal_id_table,
+	},
+};
+module_platform_driver(bcm2711_thermal_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Stefan Wahren");
+MODULE_DESCRIPTION("Broadcom AVS RO thermal sensor driver");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
