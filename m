Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91920C9A96
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=13DnbyLmVtEAR8w1kVUKx4ZFA5Dc2Bi8THLJrvvZkPQ=; b=h5HcmHcE3jF4Uc
	x3A6slPAy+2zJ/+ffmXHNS/CRZSmh3tGAXlgaSQlcQSy/T+9Bs34PRx5HD5rZkh+HFFPpOFELCHjn
	rlsetkGn3Xh6tlVMxjv0ScaD8Z4eNA2gqDOlxkWPntEgjKFpMj1LMZ/1OPV8hHj5/Sm/V67M51wyz
	+qp6UKjbOwYoI+wDErOaIiuG8YRwmGu0DZrTVBudzRRKi+lvcxLSU+EEaYJnPTZlg9NI0cUOHjrgR
	1WjtBRMee1B+BajNKadcmMFTYItEAfR2fbV+g2Ta0jOG0YUI6vm9HNE8PMFIEIMHzJnEeOXBnYbDw
	Q6SGm94aCwL0u4Niqz6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxEO-0004Mo-N4; Thu, 03 Oct 2019 09:17:04 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxEB-0004LK-EN
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:16:53 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EF2CF240005;
 Thu,  3 Oct 2019 09:16:40 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Date: Thu,  3 Oct 2019 11:16:36 +0200
Message-Id: <20191003091636.21060-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_021651_788512_E0FED1C5 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support to read SFR's read-only registers providing the SoC
Serial Numbers (SN0+SN1) to userspace.

~ #  hexdump -n 8  -e'"%d\n"' /sys/bus/nvmem/devices/atmel-sfr0/nvmem
959527243
371539274

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
Changes in v2:
 - updated atmel-sfr.c to sfr.c in Makefile
 - fixed missing drvdata struct definition
 - added missing syscon header

 drivers/soc/atmel/Kconfig  |  11 ++++
 drivers/soc/atmel/Makefile |   1 +
 drivers/soc/atmel/sfr.c    | 116 +++++++++++++++++++++++++++++++++++++
 3 files changed, 128 insertions(+)
 create mode 100644 drivers/soc/atmel/sfr.c

diff --git a/drivers/soc/atmel/Kconfig b/drivers/soc/atmel/Kconfig
index 05528139b023..d61711cb9556 100644
--- a/drivers/soc/atmel/Kconfig
+++ b/drivers/soc/atmel/Kconfig
@@ -5,3 +5,14 @@ config AT91_SOC_ID
 	default ARCH_AT91
 	help
 	  Include support for the SoC bus on the Atmel ARM SoCs.
+
+config AT91_SOC_SFR
+	tristate "Special Function Registers support"
+	depends on ARCH_AT91 || COMPILE_TEST
+	help
+	  This is a driver for the Special Function Registers available on
+	  Atmel SAMA5Dx SoCs, providing access to specific aspects of the
+	  integrated memory, bridge implementations, proccessor etc.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called sfr.
diff --git a/drivers/soc/atmel/Makefile b/drivers/soc/atmel/Makefile
index 7ca355d10553..d849a897cd77 100644
--- a/drivers/soc/atmel/Makefile
+++ b/drivers/soc/atmel/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_AT91_SOC_ID) += soc.o
+obj-$(CONFIG_AT91_SOC_SFR) += sfr.o
diff --git a/drivers/soc/atmel/sfr.c b/drivers/soc/atmel/sfr.c
new file mode 100644
index 000000000000..2be306157283
--- /dev/null
+++ b/drivers/soc/atmel/sfr.c
@@ -0,0 +1,116 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sfr.c - driver for special function registers
+ *
+ * Copyright (C) 2019 Bootlin.
+ *
+ */
+#include <linux/device.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define SFR_SN0		0x4c
+
+struct sfr_priv {
+	struct device			*dev;
+	struct regmap			*regmap;
+	struct nvmem_config		*config;
+	struct atmel_sfr_drvdata	*drvdata;
+};
+
+struct atmel_sfr_drvdata {
+	unsigned int nregs;
+};
+
+static int atmel_sfr_read(void *context, unsigned int offset,
+			  void *buf, size_t bytes)
+{
+	struct sfr_priv *priv = context;
+	struct atmel_sfr_drvdata *drvdata = priv->drvdata;
+
+	return regmap_bulk_read(priv->regmap, SFR_SN0 + offset,
+				buf, bytes / 4);
+}
+
+static struct nvmem_config atmel_sfr_nvmem_config = {
+	.name = "atmel-sfr",
+	.read_only = true,
+	.word_size = 4,
+	.stride = 4,
+	.reg_read = atmel_sfr_read,
+};
+
+static int atmel_sfr_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct sfr_priv *priv;
+	struct nvmem_device *nvmem;
+	const struct atmel_sfr_drvdata *drvdata;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	drvdata = of_device_get_match_data(dev);
+	if (!drvdata)
+		return -EINVAL;
+
+	priv->regmap = syscon_node_to_regmap(np);
+	if (IS_ERR(priv->regmap)) {
+		dev_err(dev, "cannot get parent's regmap\n");
+		return PTR_ERR(priv->regmap);
+	}
+
+	priv->drvdata = drvdata;
+
+	atmel_sfr_nvmem_config.size = drvdata->nregs;
+	atmel_sfr_nvmem_config.dev = dev;
+	atmel_sfr_nvmem_config.priv = priv;
+
+	priv->config = &atmel_sfr_nvmem_config;
+
+	nvmem = devm_nvmem_register(dev, &atmel_sfr_nvmem_config);
+	if (IS_ERR(nvmem)) {
+		dev_err(dev, "error registering nvmem config\n");
+		return PTR_ERR(nvmem);
+	}
+
+	return 0;
+}
+
+static struct atmel_sfr_drvdata sama5d2_sama5d4_drvdata = {
+	.nregs = 2 * 4,
+};
+
+static const struct of_device_id atmel_sfr_dt_ids[] = {
+	{
+		.compatible = "atmel,sama5d2-sfr",
+		.data = &sama5d2_sama5d4_drvdata,
+	}, {
+		.compatible = "atmel,sama5d4-sfr",
+		.data = &sama5d2_sama5d4_drvdata,
+	}, {
+		/* sentinel */
+	},
+};
+MODULE_DEVICE_TABLE(of, atmel_sfr_dt_ids);
+
+static struct platform_driver atmel_sfr_driver = {
+	.probe = atmel_sfr_probe,
+	.driver = {
+		.name = "atmel-sfr",
+		.of_match_table = atmel_sfr_dt_ids,
+	},
+};
+module_platform_driver(atmel_sfr_driver);
+
+MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
+MODULE_DESCRIPTION("Atmel SFR SN driver for SAMA5D2/4 SoC family");
+MODULE_LICENSE("GPL v2");
+
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
