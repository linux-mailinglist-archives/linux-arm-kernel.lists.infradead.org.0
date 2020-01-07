Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CA0132E38
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rd33uxZir356e7wb2uZqLp6zepYzCUaWcTH20TBa6Qk=; b=WN1BmRCI/FB6C4+ssKo3wCeIYT
	5K0oT/RSBHeB2bGbPVTr2hxGUgjDDUXvnyAUw5RMItV3h54Q8JS41AP+v6VpB99bd0X+8HrC3rHa9
	ZD6AcP0l8Qovx8Tk427GW5beomc7Z0mUK9NY2xfcEc81gfGAOa0+cOMBAoj7OSqAe3qXB4e/X0uWO
	Z8MrJvtd7wZzzvsXaEKac7C+gzrIZbm108W/rSS2205m8+TdzBCWB1PK23JgnqLZDzWt2Z0bfBI+W
	Yy4G5buoin/9QXdofS3uI/23A833iKxHljZL12/xWtwCy70/sqWVvTv13U3aKNh5SzqQ2zBi4nT+1
	ed+Q4ktg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotPv-0004my-Sb; Tue, 07 Jan 2020 18:17:23 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotOp-0003ud-1M
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:16:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1578420965;
 bh=4mbXLn8R9HTqHSqjDYTVnf33y1TLbPgq1QZsQUXuORI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=JbSBDGbsT0C/YiJLKHHclDX+IekngU601r/NZUXbm7pEwIYsEG9Fpom2kM2knFKu6
 P8bgl9yGKGMF3bKRLNYwPzCNgXdBIDyzI8MsZOrBpZG4jgG62ofrIuBWMuCDJ2if7S
 9nt5L4RoIxNX7cPNA8tE7jX2d15dzT534YUlWCzQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.154]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1M7sDg-1il3eJ1VuE-0053xL; Tue, 07 Jan 2020 19:16:05 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V3 2/4] thermal: Add BCM2711 thermal driver
Date: Tue,  7 Jan 2020 19:15:55 +0100
Message-Id: <1578420957-32229-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
References: <1578420957-32229-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:yFvB7JDgtfyjUut8k1Chkrb/ErSVsg3EvQyWqLPXb8cBJL7dcQK
 dsv56Ee8bmn70zRFQcp+ZxoKnJOLsQX8yr4SSStLpZInOQB1eFljwNlqO1yvOMTchBW9aNV
 8K/3K5y1XYvkIucOrqA4mcg/Abn6C2HRj+YX30kIzWXSZJYVPfGO7BlReGxXXeOS3RN/0+v
 AxjdzIeF7ITk0B2E8IlXg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jTzlGkSo9bo=:dlU7pPc0rf9QUy9ZULoDP9
 8GSLL1VdjzaySpcK+jGdXJmnrTtTdrwOVCM13Yj+OFiXY9BhB02v3Y1/GACb0zByQF6m5R+HY
 E9rP1h/ZotZ106drpf22Cq8qEcdAIN5naIaEYooguO0tmeziCzo2zdEeRvJQpiw0XPxJzNMRM
 6r/2TRXgeXb53bBysAa4tCjXgXGwqtbF0WKTAsWBjogBF/6lwK2AgGFC8X4mY7XOv8GZOq+EO
 eCr92WcgDG5MIwJF7G+Q/SWbTCV+S7Fs8D52Iy3YYtdNKYJa8Mq2PmZs+zx2feLAmwfSxGctw
 EuEMw9cv1bA2tVzuUn7GiFQYGlJpxGvvCrxvU6F99yw9ECI3c3zIOHKmsXPlWMBQo9AuD/0rF
 P//MLHaS7rzJds2En+JKdP/bAR2XxC/qCtHnF7VIxMkbrXUU69CYWVTAz5gaxFv5CtBY5kqmi
 /AkDqAJimergmP6IIVtmEpgO5aE2KcbFFWtqt8e+OshhR/JDJ6JP8+kZUnbV9e0nY2cUJQqeT
 n30n/BPVfHDvMlXeHpI//Eo90SBCEVY9BRd90Q/9tmyRckXcLt+mK9USdZAkyrq7X+eXNlB2b
 QPHkn7XPbEso/0K2GzZCEO+kh5IKoYf4o53VM++6q7SDY48oU7MGG29P36RlK40W4wxgYcnbQ
 G6ofOpVasFvQlsfoWZAy3tMP3h7pzSXTMzfb+oBl+20O/5R32GpSWt/jO/Rfhyk+Ho+MGiQwA
 TqHZK+xG6BWesd9jIKv+A0n/NnxbHfylDpSRa0x4Al27WH1GQcN70HE+B91a58+3NmNd8cl1u
 nR++5B6h+UhxHjwY3mJFn6JaJE9tzHZYUcYYH6JeUq03cFXZC9Fxdns96ofekPi24KiO9T49q
 byceV+B8w4shzosvTwbuExqTP6JvIQU0VGVNzFhWlFvoMardYHn0PWKlIy16TPVaRXEL7yl2U
 +TRzGy2pXi4g1TkFMGGmRU17UYWsREIKw3+RqOSuq8riGSWZrUgVbk2wJLp/0kS4pLMUzaF/a
 QMemNPTBJfdX15J9IiNHnOMDGmEdpRucbFs9HYRn4HhWDMl1TskP5nyUiG8p+7ET3PLjS+r4K
 IFzT7g2tghwbdcDkMOjwK1CFXVblw2fUa5gjZoLCAb+psUornL0pyskLONpUQDgX+FONMdu5C
 gXIa+nu2CgDmi+mxoDIx4hSim5yfx1eGeryexRr5UiX4wdT0jXDx3nyfK+z9DTgBbIwY0D0qM
 gN5jbjyZRfDrlBl1cMJHAWyDEdL42xvNhWkeV0Q==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101615_404914_F8328398 
X-CRM114-Status: GOOD (  17.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.18 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the thermal sensor driver for the Broadcom BCM2711 SoC,
which is placed on the Raspberry Pi 4. The driver only provides
SoC temperature reading so far.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
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
