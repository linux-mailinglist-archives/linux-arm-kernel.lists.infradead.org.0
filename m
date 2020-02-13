Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A540015BEA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 13:46:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3lxiuQiAZiaueuGd9p//dH70NRC364N5nN3Flke7Zo=; b=da3qdY6lPGI+7a
	sbGAW+a52rtUiNXaMAUcmhfMvWIaixN2bZc6WqXkCwWM2a9brpIRForneGCHraXdcEJOd4oJYeKyB
	6kxiTrDmxxnZJgP7ABEP90FP92yrQ5FGQT7xT2Tb+/346yAXjr2NwChkbrKiLHABj32Gw+jLCP9u0
	0mpT23QuzH4U8A6Kd2wD9dKj4LCeu2MkihyOthPaYzRR9+grM3JCU1fLANKsykO9+1LogljJ6vXXs
	wzj41AVC0rAvRW3jeeiGj0SZHbJobMhLl/Dd65w+HW/j4k5eT9MnIW6s7t+/+vV7zdRQGPxsDN+lN
	K91xFtCMGS/Wv5C0HyYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Dt9-0002Kb-0Y; Thu, 13 Feb 2020 12:46:39 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Dt2-0002Jp-Hx
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 12:46:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id x7so6443465ljc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 04:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OjOAd9U/ejxg6l/zpSHAphQFTxKxWfy5OBjAOUBimPk=;
 b=kCHTA8ZTzf5QooROuHJAVsMXSSEu9ayJ/AjTeMhZE6ylAZ5HfANkuQUVR/6siEM5nc
 dUM1/JhhGyjj521knpcnwbvH357X+SjHA1lY6gAS3qgqF3Up3xStHQhmxvNQfMUF7+p+
 HJAqkPTrrcatx3H3if2/PIrAnbWjySJP8/BIl2d+LVEZXxSBW6XKqiKtDDP9asJoTQMK
 vkFYb0ttaFjdIP+Dn+2lLcSTyQRGtbPyMnyHkNreb2SHOhySWsTkDxCMdj6GoUL0efe0
 TXzkbSzzs+6dgeQDo6sW+jhJdBT9slhqYc1FAG0ryNzGKyjCuTGtjaiX5H0HosGC/CW7
 zYzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OjOAd9U/ejxg6l/zpSHAphQFTxKxWfy5OBjAOUBimPk=;
 b=Q8NsrtPc+3wP1f72zlf8wvTLQtLkAjHrgW5TDh5lu9ljnjsVcwkWi/k7ms73PRMSza
 kkrpWnS1dbLas9MqYSze1JNSJ4obTJTidqK88yAMh91HmJPeLRYiza3iZ4+49a4/i8up
 Gtz6yN83XwgB/hPPJHRDLhLzWGhlqWwBoUQMoabJTEiO31kJaCm+D1j9DSKR1Dt4/gSZ
 VN1PRP/Vf7xy/lkOWb4KEm0oUeJd0N267L3fke+PFIaHiJz2N5Wrj82WJaEZRnTNWC8l
 EslNFo+kUfO0oIDb0BoYTDBlhRjO/e/Z/fUJXTc9f7F4VKs+kYm35f6suEIx9+SbGMge
 Pr+w==
X-Gm-Message-State: APjAAAUTwVKQ//7oqzREGP5J4a6B812c+zrt35LPmvKCgxWsUh8Xrexu
 DAEuiPmbIC9IRmXpThoshs0WD9frf88=
X-Google-Smtp-Source: APXvYqwy6vH3k+v/YgDbSE5ZnKlSEKU0i26dgYZ2RoBUYiVzEsDo1gBPkpx48RkYY0dFc5pE1Jj5Mw==
X-Received: by 2002:a2e:2407:: with SMTP id k7mr10283720ljk.275.1581597987491; 
 Thu, 13 Feb 2020 04:46:27 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id g15sm1398642ljl.10.2020.02.13.04.46.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 04:46:26 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] bus: Add driver for Integrator/AP logical modules
Date: Thu, 13 Feb 2020 13:46:20 +0100
Message-Id: <20200213124620.34982-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200213124620.34982-1-linus.walleij@linaro.org>
References: <20200213124620.34982-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_044632_627808_63465F15 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The logical modules on the Integrator/AP (Application Platform)
are logic tiles with (typically) one or a few peripheral
devices. They are most commonly used for FPGA prototyping.

Using the device tree node for logical tiles, we probe them
in order and check if the special system controller register
confirm their presence before populating the node for a tile.

This supercedes the code in arch/arm/mach-integrator/lm.[c|h]
and makes it possible to populate the tiles using the device
tree instead of boardfile-based descriptions.

Tested with all peripherals including graphics and MMC card
working fine with the IM-PD1 example tile from Arm.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/bus/Kconfig             |   9 +++
 drivers/bus/Makefile            |   2 +-
 drivers/bus/arm-integrator-lm.c | 128 ++++++++++++++++++++++++++++++++
 3 files changed, 138 insertions(+), 1 deletion(-)
 create mode 100644 drivers/bus/arm-integrator-lm.c

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6095b6df8a81..c84de8f71297 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -20,6 +20,15 @@ config ARM_CCI400_PORT_CTRL
 	  Low level power management driver for CCI400 cache coherent
 	  interconnect for ARM platforms.
 
+config ARM_INTEGRATOR_LM
+	bool "ARM Integrator Logical Module bus"
+	depends on HAS_IOMEM
+	depends on ARCH_INTEGRATOR || COMPILE_TEST
+	default ARCH_INTEGRATOR
+	help
+	  Say y here to enable support for the ARM Logical Module bus
+	  found on the ARM Integrator AP (Application Platform)
+
 config BRCMSTB_GISB_ARB
 	bool "Broadcom STB GISB bus arbiter"
 	depends on ARM || ARM64 || MIPS
diff --git a/drivers/bus/Makefile b/drivers/bus/Makefile
index 1320bcf9fa9d..79ed87ec97f8 100644
--- a/drivers/bus/Makefile
+++ b/drivers/bus/Makefile
@@ -5,7 +5,7 @@
 
 # Interconnect bus drivers for ARM platforms
 obj-$(CONFIG_ARM_CCI)		+= arm-cci.o
-
+obj-$(CONFIG_ARM_INTEGRATOR_LM)	+= arm-integrator-lm.o
 obj-$(CONFIG_HISILICON_LPC)	+= hisi_lpc.o
 obj-$(CONFIG_BRCMSTB_GISB_ARB)	+= brcmstb_gisb.o
 obj-$(CONFIG_MOXTET)		+= moxtet.o
diff --git a/drivers/bus/arm-integrator-lm.c b/drivers/bus/arm-integrator-lm.c
new file mode 100644
index 000000000000..669ea7e1f92e
--- /dev/null
+++ b/drivers/bus/arm-integrator-lm.c
@@ -0,0 +1,128 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * ARM Integrator Logical Module bus driver
+ * Copyright (C) 2020 Linaro Ltd.
+ * Author: Linus Walleij <linus.walleij@linaro.org>
+ *
+ * See the device tree bindings for this block for more details on the
+ * hardware.
+ */
+
+#include <linux/module.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/init.h>
+#include <linux/slab.h>
+#include <linux/platform_device.h>
+#include <linux/bitops.h>
+#include <linux/mfd/syscon.h>
+#include <linux/regmap.h>
+
+/* All information about the connected logic modules are in here */
+#define INTEGRATOR_SC_DEC_OFFSET	0x10
+
+/* Base address for the expansion modules */
+#define INTEGRATOR_AP_EXP_BASE		0xc0000000
+#define INTEGRATOR_AP_EXP_STRIDE	0x10000000
+
+static int integrator_lm_populate(int num, struct device *dev)
+{
+	struct device_node *np = dev->of_node;
+	struct device_node *child;
+	u32 base;
+	int ret;
+
+	base = INTEGRATOR_AP_EXP_BASE + (num * INTEGRATOR_AP_EXP_STRIDE);
+
+	/* Walk over the child nodes and see what chipselects we use */
+	for_each_available_child_of_node(np, child) {
+		struct resource res;
+
+		ret = of_address_to_resource(child, 0, &res);
+		if (ret) {
+			dev_info(dev, "no valid address on child\n");
+			continue;
+		}
+
+		/* First populate the syscon then any devices */
+		if (res.start == base) {
+			dev_info(dev, "populate module @0x%08x from DT\n",
+				 base);
+			ret = of_platform_default_populate(child, NULL, dev);
+			if (ret) {
+				dev_err(dev, "failed to populate module\n");
+				return ret;
+			}
+		}
+	}
+
+	return 0;
+}
+
+static const struct of_device_id integrator_ap_syscon_match[] = {
+	{ .compatible = "arm,integrator-ap-syscon"},
+	{ },
+};
+
+static int integrator_ap_lm_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *syscon;
+	static struct regmap *map;
+	u32 val;
+	int ret;
+	int i;
+
+	/* Look up the system controller */
+	syscon = of_find_matching_node(NULL, integrator_ap_syscon_match);
+	if (IS_ERR(syscon)) {
+		dev_err(dev,
+			"could not find Integrator/AP system controller\n");
+		return PTR_ERR(syscon);
+	}
+	map = syscon_node_to_regmap(syscon);
+	if (IS_ERR(map)) {
+		dev_err(dev,
+			"could not find Integrator/AP system controller\n");
+		return PTR_ERR(map);
+	}
+
+	ret = regmap_read(map, INTEGRATOR_SC_DEC_OFFSET, &val);
+	if (ret) {
+		dev_err(dev, "could not read from Integrator/AP syscon\n");
+		return ret;
+	}
+
+	/* Loop over the connected modules */
+	for (i = 0; i < 4; i++) {
+		if (!(val & BIT(4 + i)))
+			continue;
+
+		dev_info(dev, "detected module in slot %d\n", i);
+		ret = integrator_lm_populate(i, dev);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static const struct of_device_id integrator_ap_lm_match[] = {
+	{ .compatible = "arm,integrator-ap-lm"},
+	{ },
+};
+
+static struct platform_driver integrator_ap_lm_driver = {
+	.probe = integrator_ap_lm_probe,
+	.driver = {
+		.name = "integratorap-lm",
+		.of_match_table = integrator_ap_lm_match,
+	},
+};
+module_platform_driver(integrator_ap_lm_driver);
+MODULE_AUTHOR("Linus Walleij <linus.walleij@linaro.org>");
+MODULE_DESCRIPTION("Integrator AP Logical Module driver");
+MODULE_LICENSE("GPL v2");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
