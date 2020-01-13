Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4C4139975
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:58:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BIrnvxD2mNbY557DiyhoKi12n1rF9C/sApTQgbWT4p8=; b=C86S9WaLOWmmtuGmGvTQ+nSFHS
	NPRHsCahCTnpPTUv6OOklMyuUPDkn4J9/f/O6XYfsAOMHNRxnvY4tf5Wd3EfnE7BD4B9dNHIwAo5x
	MRPLKZ0gyi9b1Z/78TTQ1k4PKHF5jMejVw/D6buDgngCqXYqgz65uS9CQJGfh5BFub/GdGuJ1S54P
	83CxTNcDfvEfk94tWP/IEPVP63tZ0EOmYloDqjcYZBYf31ogzCozzdW0a6hykrJN6axrbEYNxxkG2
	x5Oeksl9EhDmeWIQEqmfNKgmPXe/0Fs3JgztMQ5mGPmUelXoX9pnXu+aXaQ9lUPDcWnpcEtsatwoH
	+8fhu1tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4uZ-0000lc-6g; Mon, 13 Jan 2020 18:58:03 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4tR-0008EN-LN
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:56:55 +0000
Received: from localhost.localdomain ([37.4.249.154]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhULz-1jMY1q48VH-00eaBl; Mon, 13 Jan 2020 19:56:42 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH V5 2/4] thermal: Add BCM2711 thermal driver
Date: Mon, 13 Jan 2020 19:56:16 +0100
Message-Id: <1578941778-23321-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
References: <1578941778-23321-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:1LfmsR4Vn9+56G0d1CEK2niEtx3DZvTrXsrL0FEsHNj+N9lh5Uc
 +DTuqvdH/W7wW4mKlONuK1DUr5qphY26HC7iaG4aOxw8mga6jUr47jJcnYef28KoZVrW9Tq
 N7XUL9xTAn4+HV03N+vJel3gIxbgXgzNm+ist/e1CXzjutfIG0ymLZZF8+EriP91l2nOyfS
 FmeEnu0/0hkEVRy/sWGXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iX0TtP68v9I=:oHgJNTJ+l5CpYBhDeLNYBQ
 IgopAQcfKwz+E4hVzaAa3Au5DVWIh8MGJgqV84IIRLYE/272kjfl6jeGGrlz5dvArNteEL6ZN
 1NMdN/U53wAIQk80ReK85nPK2zfE/6AUb5f7bXZ6Kjj45qhwkMANPsIe3Zre4QfydLIMN1Udz
 LUrQ2jO5LHd93l32TQ3PVUThy2wQSKrYJN/8MI/nTfuKjNvhMUHhqLqKlN+Hw+nM5jPOhl3Iv
 XdlCGGMxvLAZLGRmi2g9dwGml+uRUzAfJNOediNAKZTNhmdqSOYFliO+rlQXL8n9nguuaSbEU
 tvoObqm6qTlPwPGs3ilqP4fPG5rOP8CPbM3MzT0Y3LiX7bLnNGzm1ma4fmQOo+Ff8hdPEMLUP
 H/AeR4Cm9SoGEuDE4cnPo/XdclR0fVoquZ9pnZLjOee/rP7ZosphfO2+rxopRQlnFPYnOlBIq
 X4IEyfqcRSc2vtvKB9SIiwSMm41FDJ5TUko08QBfn/qQGQc4nw04LjCCVybENTHvU+v5ZEQMz
 vhXPBPOv8T2lh9H6Yjwhkgp2xPcgJQ6JSH3nbUBK5RV2DYpgL3EQzOAU/uHzR8pUUfifkhFFp
 CvPtWSIrZnzb/6w0FvyHp/CUB62hJX1GrkZjbH6YMVaLRScVA1z2YIAGKbDrJvPBXoNHuXfhh
 2NOr40LXNwfHW140JC90tFpqlTuCW2DHkl6kEvtfmqLaTGOIq09F1aJS6QfEVAO1v0BS865aK
 JGQQl3yPj6Ut2VBifAu/MVzXQbeMkXbbFONh4WL2meJ23DvDUI3mKB+RxiAn6R4TIkABuLxqG
 5iuzoYDJ+8IpTy/OtXazuVwCNXlOWtQfUKz2XuuZxJ1xszx8ezYPYINTJXT4CnWf9GDlHZIZL
 E/dt2TSGd8MqU+T6fxuV9IpJKy8HD5ef4Nfxo04hw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_105653_998784_FF43477A 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
 drivers/thermal/broadcom/bcm2711_thermal.c | 123 +++++++++++++++++++++++++++++
 3 files changed, 131 insertions(+)
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
index 0000000..67c2a73
--- /dev/null
+++ b/drivers/thermal/broadcom/bcm2711_thermal.c
@@ -0,0 +1,123 @@
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
+#define AVS_RO_TEMP_STATUS_VALID_MSK	(BIT(16) | BIT(10))
+#define AVS_RO_TEMP_STATUS_DATA_MSK	GENMASK(9, 0)
+
+struct bcm2711_thermal_priv {
+	struct regmap *regmap;
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
+	if (!(val & AVS_RO_TEMP_STATUS_VALID_MSK))
+		return -EIO;
+
+	val &= AVS_RO_TEMP_STATUS_DATA_MSK;
+
+	/* Convert a HW code to a temperature reading (millidegree celsius) */
+	t = slope * val + offset;
+
+	*temp = t < 0 ? 0 : t;
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
