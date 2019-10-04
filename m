Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9718FCBA5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CA6BDRyYTaKnQacn9UX7+L6trOPuzYEyKzrSiAuvDVA=; b=I6T9UD6nMHeCY0
	yyoAFwKqu5GyStikQCMKCU0Eh0c915E7qQa4w+zdXXyBlRp5+OAtm7HwBi7YWRRXRlOdBpW0wY+HE
	S4K/gn+Bcl6T9CeKer7crNY8dY8e54uPhfR6c8tnvkD4YhbR/rNKqtwFdDN0iG95UQW/zokSyLY/3
	s8l+xmzWWvgNxIGUw2nU3HAFkXS7zGk85+SGWyHWSClEgoyipjxAYts1jGwQVstD1UAay9iiDpwxS
	53BsHRD0CsPsE4tYHXxY8+ovxCC0fkyYDNLIylZ7MvXr+7X4TEKavCshdRGYM/Dx9FEfWy30lk9oG
	bxxz2c37cjRwm01OfYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMeT-0001wr-O9; Fri, 04 Oct 2019 12:25:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMeN-0001wl-S3
 for linux-arm-kernel@bombadil.infradead.org; Fri, 04 Oct 2019 12:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PiWxbdK2TpGhC42oFpqAR3hoqPJAHL7930q7j0dfKJk=; b=Js2XpVW+lZfathULiHKNHZApmY
 DLH/6Qwtykj7gpHEUNui40UFbmQVZavCBaYUZYkfdFEfxMr31NuzrUQ043eWxkZLRnEaz/uunmSJ5
 05UXrTyzHDGbgZkVHA4ithIU/YPIvRZ+F8CT6dT6TDyhm2UJOjwp+2boa6YxeTWuuX4wr2wnjDNMp
 96z2OJl/gVjjWLcSvpaEz/z3u0g6bYY+0vMOP1p3nScYAYTHkfhHxFTtFRq+GSc35scGCGTfoCuYt
 /4v3YOv+KlwwqgLaDNktkoZwkF+9qNPH5MgA5opUbDRnUuHNoKrEY8RmnYTtF9OLrD87m0U9eRgAx
 8K4Bcvug==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMeK-0006lD-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:25:33 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 8EE502401C9;
 Fri,  4 Oct 2019 12:24:47 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4] soc: at91: Add Atmel SFR SN (Serial Number) support
Date: Fri,  4 Oct 2019 14:24:45 +0200
Message-Id: <20191004122445.14447-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
 drivers/soc/atmel/Kconfig  |  11 ++++
 drivers/soc/atmel/Makefile |   1 +
 drivers/soc/atmel/sfr.c    | 100 +++++++++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+)
 create mode 100644 drivers/soc/atmel/sfr.c

diff --git a/drivers/soc/atmel/Kconfig b/drivers/soc/atmel/Kconfig
index 05528139b023..50caf6db9c0e 100644
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
+	  integrated memory, bridge implementations, processor etc.
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
index 000000000000..1b4bc0bc0248
--- /dev/null
+++ b/drivers/soc/atmel/sfr.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sfr.c - driver for special function registers
+ *
+ * Copyright (C) 2019 Bootlin.
+ *
+ */
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/random.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define SFR_SN0		0x4c
+#define SFR_SN_SIZE	8
+
+struct atmel_sfr_priv {
+	struct regmap			*regmap;
+};
+
+static int atmel_sfr_read(void *context, unsigned int offset,
+			  void *buf, size_t bytes)
+{
+	struct atmel_sfr_priv *priv = context;
+	size_t len = bytes / 4;
+	int ret;
+
+	ret = regmap_bulk_read(priv->regmap, SFR_SN0 + offset,
+				buf, len);
+	if (ret == 0)
+		add_device_randomness(buf, len);
+
+	return ret;
+}
+
+static struct nvmem_config atmel_sfr_nvmem_config = {
+	.name = "atmel-sfr",
+	.read_only = true,
+	.word_size = 4,
+	.stride = 4,
+	.size = SFR_SN_SIZE,
+	.reg_read = atmel_sfr_read,
+};
+
+static int atmel_sfr_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	struct nvmem_device *nvmem;
+	struct atmel_sfr_priv *priv;
+
+	priv = devm_kmalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	priv->regmap = syscon_node_to_regmap(np);
+	if (IS_ERR(priv->regmap)) {
+		dev_err(dev, "cannot get parent's regmap\n");
+		return PTR_ERR(priv->regmap);
+	}
+
+	atmel_sfr_nvmem_config.dev = dev;
+	atmel_sfr_nvmem_config.priv = priv;
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
+static const struct of_device_id atmel_sfr_dt_ids[] = {
+	{
+		.compatible = "atmel,sama5d2-sfr",
+	}, {
+		.compatible = "atmel,sama5d4-sfr",
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
