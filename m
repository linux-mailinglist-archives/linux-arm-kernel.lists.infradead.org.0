Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1310ECBCC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JwqQcri3E5jKXRuhIMTTjQ4BOx2RNBdGEO0nrFqE9Gc=; b=M1YMJjxrOdSza9
	WZKkWtwiei1T6CODXJtBedDtkgq2K8Hz+dgLZ/DUZLD21wkYLn8xYbA4qok5dn+7psW3osMuOBzMG
	gKXC3tU+yAKLzefd7Sfg6CeQr6wr8Nrm/3oR+W13u+s0gyazB+aejFJlYL0+KHR3H5ga4wtC/y40G
	mYMC//sR+sxBbVrV2TmASpdFwyGLuCOyt/UL7uio0VIrDtZvSH/EXvcFHhO5f+u4z5PHOyJTaHMSp
	4XnQMIky4ZqQWvLpR2fV9C62XvSlDzkErnUKaTrebwFtedc4XFwN+WpIFI0jcFczEUz72AqpMGqRX
	yTzaP0I5FO56drxcw8xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOKa-0006qs-RU; Fri, 04 Oct 2019 14:13:16 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOKR-0006qG-FV
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:13:09 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 5BBF0240003;
 Fri,  4 Oct 2019 14:12:59 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5] soc: at91: Add Atmel SFR SN (Serial Number) support
Date: Fri,  4 Oct 2019 16:12:56 +0200
Message-Id: <20191004141256.14491-1-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_071308_361666_FDD57E5E 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Changes in v5:
 - Removed the blankline at EOF
 - Feeded the entropy pool with the SoC SN using add_device_randomness()
   and do it only once at probe().

 drivers/soc/atmel/Kconfig  | 11 +++++
 drivers/soc/atmel/Makefile |  1 +
 drivers/soc/atmel/sfr.c    | 99 ++++++++++++++++++++++++++++++++++++++
 3 files changed, 111 insertions(+)
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
index 000000000000..145e9af63b4c
--- /dev/null
+++ b/drivers/soc/atmel/sfr.c
@@ -0,0 +1,99 @@
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
+	u8 sn[SFR_SN_SIZE];
+	int ret;
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
+	ret = atmel_sfr_read(priv, 0, sn, SFR_SN_SIZE);
+	if (ret == 0)
+		add_device_randomness(sn, SFR_SN_SIZE);
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
--
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
