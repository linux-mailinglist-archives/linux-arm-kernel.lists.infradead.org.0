Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDE5C8C25
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nPftgOJKATHbDgG1xAt4LJkaMDnswgnB2vnjPuiWcf0=; b=iiHO1eWuDhj+ip
	NCTbFtosWBOiBZjyurZeIfAA0l6L8PydlDl03HdrzkvaD0fzJ/d0AmYLdm4Ff98DDTk2dbHmNDF+C
	mkiCOBDBxPIBDsPPpk9yq54zNDuRkMnsqjUZwtk76MiYyiPLM85yFUtmQ6wYeZNWOXqEIKwCrF/uE
	xsjdxWiIB+tOvCsG2rOlgdh+pMAFahe55urBFNHclTstFHQ2WD9vdRXPNHUuWrbl3wh+9Exwcdqj5
	VCnVlnBUUJRIvoX9/cK19SKyvKcJ1iSCWra4mePqXswxHjYOq57gd2WcsguOMZctvUh9+vWKhaOtY
	yR7vg2qssqp2odHE58ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFg47-0006pq-4g; Wed, 02 Oct 2019 14:57:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFg3y-0006ph-JK
 for linux-arm-kernel@bombadil.infradead.org; Wed, 02 Oct 2019 14:57:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oZ+3G4ho+JIMYuaY+aTMmhD9BFHiQQgA0cYswgJcz18=; b=lKHo72ez0+p/NCOewTkr/FZSzX
 T0m/OXocN+khKPhiHlASa0LxcBru7qcr7BXWwtxm+1u5+MNV+m3iltPtjxQXqaMiT4Gl7Hj8hx2xm
 mtaHkpnUWgVMC9WmW4Phqm4Uf/b4n7Nouag9wCEwuDQW97AVmjGiT1YPwMd1oJSTx1FKocF6IaBI7
 3OrGYIRhDf6r4pCcwTcU3UUt93O2brh3CkiXRNzFMcoLRXjkQDiC0ik1hAhDpvCG8XSGlKFCpSeKH
 HD12Kf+sUDZ0ZOY9f5m6KU8gmoMDRPoGSZd0QGFCMZ+51hsLUK2+T+/a5a/H/QbON6d/CQvgSXEr6
 /rSpr0+Q==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFg3v-0002HN-BR
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:57:08 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id C71231C001A;
 Wed,  2 Oct 2019 14:56:25 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] soc: at91: Add Atmel SFR SN (Serial Number) support
Date: Wed,  2 Oct 2019 16:56:23 +0200
Message-Id: <20191002145623.14710-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 drivers/soc/atmel/sfr.c    | 108 +++++++++++++++++++++++++++++++++++++
 3 files changed, 120 insertions(+)
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
index 7ca355d10553..fa46905f7798 100644
--- a/drivers/soc/atmel/Makefile
+++ b/drivers/soc/atmel/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_AT91_SOC_ID) += soc.o
+obj-$(CONFIG_AT91_SOC_SFR) += atmel-sfr.o
diff --git a/drivers/soc/atmel/sfr.c b/drivers/soc/atmel/sfr.c
new file mode 100644
index 000000000000..cf3c7ed99295
--- /dev/null
+++ b/drivers/soc/atmel/sfr.c
@@ -0,0 +1,108 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * sfr.c - driver for special function registers
+ *
+ * Copyright (C) 2019 Bootlin.
+ *
+ */
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/nvmem-provider.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+
+#define SFR_SN0		0x4c
+#define SFR_NREGS	0x8
+
+struct sfr_priv {
+	struct device			*dev;
+	struct regmap			*regmap;
+	struct nvmem_config		*config;
+	struct atmel_sfr_drvdata	*drvdata;
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
