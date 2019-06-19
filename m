Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BFB4BB10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:16:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfHYvbQSwtOpc4GVXBvBROPUSz/5IIZAl8HkW5W11is=; b=ZQFCjGh0WAse3F
	iVIxdc13dCLaBPk2vFTUbh1LuBeLxNwFflX5LgO9KOF7aYPK4CqmiT715GvT7ejxtUFpgFXjwQzu5
	8XnG3suDHZLrNk+dkn3qAjFpLvSrH7uUs/eu0AySCY2WyZb/37kL3nZHXPZq716Z6wQdKOgkRUISt
	OcF+Lg81tnFrxTVDx0oeCttdkrSsptMmBDVIc5EH0QePfCsutDLFu1xlOPxlRAs9DrvGOQ2zWY4vp
	cKrcESIWkhD7t8kc8qBahPnO/vhVdTeGJ4FP7c0uEs1c2K9crzqYGocXH2aESJHxKaLEUKZSqz1Xz
	cOdKFG4+5qFfKBCrZy6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbOP-0002T5-5b; Wed, 19 Jun 2019 14:16:53 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbNq-0002Dq-Vv
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:16:21 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 580A61C000E;
 Wed, 19 Jun 2019 14:16:10 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 2/6] clk: mvebu: add helper file for Armada AP and CP clocks
Date: Wed, 19 Jun 2019 16:15:35 +0200
Message-Id: <20190619141539.16884-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190619141539.16884-1-gregory.clement@bootlin.com>
References: <20190619141539.16884-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_071619_346155_977911E2 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?q?Miqu=C3=A8l=20Raynal?= <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clock drivers for Armada AP and Armada CP use the same function to
generate unique clock name. A third drivers is coming with the same
need, so it's time to move this function in a common file.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/clk/mvebu/Kconfig                   |  5 ++++
 drivers/clk/mvebu/Makefile                  |  1 +
 drivers/clk/mvebu/ap806-system-controller.c | 24 ++++------------
 drivers/clk/mvebu/armada_ap_cp_helper.c     | 30 +++++++++++++++++++
 drivers/clk/mvebu/armada_ap_cp_helper.h     | 11 +++++++
 drivers/clk/mvebu/cp110-system-controller.c | 32 ++++++---------------
 6 files changed, 61 insertions(+), 42 deletions(-)
 create mode 100644 drivers/clk/mvebu/armada_ap_cp_helper.c
 create mode 100644 drivers/clk/mvebu/armada_ap_cp_helper.h

diff --git a/drivers/clk/mvebu/Kconfig b/drivers/clk/mvebu/Kconfig
index fddc8ac5faff..5492fae3f0ab 100644
--- a/drivers/clk/mvebu/Kconfig
+++ b/drivers/clk/mvebu/Kconfig
@@ -7,6 +7,9 @@ config MVEBU_CLK_CPU
 config MVEBU_CLK_COREDIV
 	bool
 
+config ARMADA_AP_CP_HELPER
+	bool
+
 config ARMADA_370_CLK
 	bool
 	select MVEBU_CLK_COMMON
@@ -34,9 +37,11 @@ config ARMADA_XP_CLK
 
 config ARMADA_AP806_SYSCON
 	bool
+	select ARMADA_AP_CP_HELPER
 
 config ARMADA_CP110_SYSCON
 	bool
+	select ARMADA_AP_CP_HELPER
 
 config DOVE_CLK
 	bool
diff --git a/drivers/clk/mvebu/Makefile b/drivers/clk/mvebu/Makefile
index 93ac3685271f..6638ad962ec1 100644
--- a/drivers/clk/mvebu/Makefile
+++ b/drivers/clk/mvebu/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_MVEBU_CLK_COMMON)	+= common.o
 obj-$(CONFIG_MVEBU_CLK_CPU) 	+= clk-cpu.o
 obj-$(CONFIG_MVEBU_CLK_COREDIV)	+= clk-corediv.o
+obj-$(CONFIG_ARMADA_AP_CP_HELPER) += armada_ap_cp_helper.o
 
 obj-$(CONFIG_ARMADA_370_CLK)	+= armada-370.o
 obj-$(CONFIG_ARMADA_375_CLK)	+= armada-375.o
diff --git a/drivers/clk/mvebu/ap806-system-controller.c b/drivers/clk/mvebu/ap806-system-controller.c
index ea54a874bbda..0a58824ff053 100644
--- a/drivers/clk/mvebu/ap806-system-controller.c
+++ b/drivers/clk/mvebu/ap806-system-controller.c
@@ -10,11 +10,11 @@
 
 #define pr_fmt(fmt) "ap806-system-controller: " fmt
 
+#include "armada_ap_cp_helper.h"
 #include <linux/clk-provider.h>
 #include <linux/mfd/syscon.h>
 #include <linux/init.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
@@ -30,18 +30,6 @@ static struct clk_onecell_data ap806_clk_data = {
 	.clk_num = AP806_CLK_NUM,
 };
 
-static char *ap806_unique_name(struct device *dev, struct device_node *np,
-			       char *name)
-{
-	const __be32 *reg;
-	u64 addr;
-
-	reg = of_get_property(np, "reg", NULL);
-	addr = of_translate_address(np, reg);
-	return devm_kasprintf(dev, GFP_KERNEL, "%llx-%s",
-			(unsigned long long)addr, name);
-}
-
 static int ap806_syscon_common_probe(struct platform_device *pdev,
 				     struct device_node *syscon_node)
 {
@@ -109,7 +97,7 @@ static int ap806_syscon_common_probe(struct platform_device *pdev,
 	cpuclk_freq *= 1000 * 1000;
 
 	/* CPU clocks depend on the Sample At Reset configuration */
-	name = ap806_unique_name(dev, syscon_node, "cpu-cluster-0");
+	name = ap_cp_unique_name(dev, syscon_node, "cpu-cluster-0");
 	ap806_clks[0] = clk_register_fixed_rate(dev, name, NULL,
 						0, cpuclk_freq);
 	if (IS_ERR(ap806_clks[0])) {
@@ -117,7 +105,7 @@ static int ap806_syscon_common_probe(struct platform_device *pdev,
 		goto fail0;
 	}
 
-	name = ap806_unique_name(dev, syscon_node, "cpu-cluster-1");
+	name = ap_cp_unique_name(dev, syscon_node, "cpu-cluster-1");
 	ap806_clks[1] = clk_register_fixed_rate(dev, name, NULL, 0,
 						cpuclk_freq);
 	if (IS_ERR(ap806_clks[1])) {
@@ -126,7 +114,7 @@ static int ap806_syscon_common_probe(struct platform_device *pdev,
 	}
 
 	/* Fixed clock is always 1200 Mhz */
-	fixedclk_name = ap806_unique_name(dev, syscon_node, "fixed");
+	fixedclk_name = ap_cp_unique_name(dev, syscon_node, "fixed");
 	ap806_clks[2] = clk_register_fixed_rate(dev, fixedclk_name, NULL,
 						0, 1200 * 1000 * 1000);
 	if (IS_ERR(ap806_clks[2])) {
@@ -135,7 +123,7 @@ static int ap806_syscon_common_probe(struct platform_device *pdev,
 	}
 
 	/* MSS Clock is fixed clock divided by 6 */
-	name = ap806_unique_name(dev, syscon_node, "mss");
+	name = ap_cp_unique_name(dev, syscon_node, "mss");
 	ap806_clks[3] = clk_register_fixed_factor(NULL, name, fixedclk_name,
 						  0, 1, 6);
 	if (IS_ERR(ap806_clks[3])) {
@@ -144,7 +132,7 @@ static int ap806_syscon_common_probe(struct platform_device *pdev,
 	}
 
 	/* SDIO(/eMMC) Clock is fixed clock divided by 3 */
-	name = ap806_unique_name(dev, syscon_node, "sdio");
+	name = ap_cp_unique_name(dev, syscon_node, "sdio");
 	ap806_clks[4] = clk_register_fixed_factor(NULL, name,
 						  fixedclk_name,
 						  0, 1, 3);
diff --git a/drivers/clk/mvebu/armada_ap_cp_helper.c b/drivers/clk/mvebu/armada_ap_cp_helper.c
new file mode 100644
index 000000000000..6a930f697ee5
--- /dev/null
+++ b/drivers/clk/mvebu/armada_ap_cp_helper.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Marvell Armada AP and CP110 helper
+ *
+ * Copyright (C) 2018 Marvell
+ *
+ * Gregory Clement <gregory.clement@bootlin.com>
+ *
+ */
+
+#include "armada_ap_cp_helper.h"
+#include <linux/device.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+
+char *ap_cp_unique_name(struct device *dev, struct device_node *np,
+			const char *name)
+{
+	const __be32 *reg;
+	u64 addr;
+
+	/* Do not create a name if there is no clock */
+	if (!name)
+		return NULL;
+
+	reg = of_get_property(np, "reg", NULL);
+	addr = of_translate_address(np, reg);
+	return devm_kasprintf(dev, GFP_KERNEL, "%llx-%s",
+			      (unsigned long long)addr, name);
+}
diff --git a/drivers/clk/mvebu/armada_ap_cp_helper.h b/drivers/clk/mvebu/armada_ap_cp_helper.h
new file mode 100644
index 000000000000..810af1e5dfa4
--- /dev/null
+++ b/drivers/clk/mvebu/armada_ap_cp_helper.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+
+#ifndef __ARMADA_AP_CP_HELPER_H
+#define __ARMADA_AP_CP_HELPER_H
+
+struct device;
+struct device_node;
+
+char *ap_cp_unique_name(struct device *dev, struct device_node *np,
+			const char *name);
+#endif
diff --git a/drivers/clk/mvebu/cp110-system-controller.c b/drivers/clk/mvebu/cp110-system-controller.c
index b6de283f45e3..808463276145 100644
--- a/drivers/clk/mvebu/cp110-system-controller.c
+++ b/drivers/clk/mvebu/cp110-system-controller.c
@@ -26,11 +26,11 @@
 
 #define pr_fmt(fmt) "cp110-system-controller: " fmt
 
+#include "armada_ap_cp_helper.h"
 #include <linux/clk-provider.h>
 #include <linux/mfd/syscon.h>
 #include <linux/init.h>
 #include <linux/of.h>
-#include <linux/of_address.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
@@ -212,22 +212,6 @@ static struct clk_hw *cp110_of_clk_get(struct of_phandle_args *clkspec,
 	return ERR_PTR(-EINVAL);
 }
 
-static char *cp110_unique_name(struct device *dev, struct device_node *np,
-			       const char *name)
-{
-	const __be32 *reg;
-	u64 addr;
-
-	/* Do not create a name if there is no clock */
-	if (!name)
-		return NULL;
-
-	reg = of_get_property(np, "reg", NULL);
-	addr = of_translate_address(np, reg);
-	return devm_kasprintf(dev, GFP_KERNEL, "%llx-%s",
-			      (unsigned long long)addr, name);
-}
-
 static int cp110_syscon_common_probe(struct platform_device *pdev,
 				     struct device_node *syscon_node)
 {
@@ -261,7 +245,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 	cp110_clk_data->num = CP110_CLK_NUM;
 
 	/* Register the PLL0 which is the root of the hw tree */
-	pll0_name = cp110_unique_name(dev, syscon_node, "pll0");
+	pll0_name = ap_cp_unique_name(dev, syscon_node, "pll0");
 	hw = clk_hw_register_fixed_rate(NULL, pll0_name, NULL, 0,
 					1000 * 1000 * 1000);
 	if (IS_ERR(hw)) {
@@ -272,7 +256,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 	cp110_clks[CP110_CORE_PLL0] = hw;
 
 	/* PPv2 is PLL0/3 */
-	ppv2_name = cp110_unique_name(dev, syscon_node, "ppv2-core");
+	ppv2_name = ap_cp_unique_name(dev, syscon_node, "ppv2-core");
 	hw = clk_hw_register_fixed_factor(NULL, ppv2_name, pll0_name, 0, 1, 3);
 	if (IS_ERR(hw)) {
 		ret = PTR_ERR(hw);
@@ -282,7 +266,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 	cp110_clks[CP110_CORE_PPV2] = hw;
 
 	/* X2CORE clock is PLL0/2 */
-	x2core_name = cp110_unique_name(dev, syscon_node, "x2core");
+	x2core_name = ap_cp_unique_name(dev, syscon_node, "x2core");
 	hw = clk_hw_register_fixed_factor(NULL, x2core_name, pll0_name,
 					  0, 1, 2);
 	if (IS_ERR(hw)) {
@@ -293,7 +277,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 	cp110_clks[CP110_CORE_X2CORE] = hw;
 
 	/* Core clock is X2CORE/2 */
-	core_name = cp110_unique_name(dev, syscon_node, "core");
+	core_name = ap_cp_unique_name(dev, syscon_node, "core");
 	hw = clk_hw_register_fixed_factor(NULL, core_name, x2core_name,
 					  0, 1, 2);
 	if (IS_ERR(hw)) {
@@ -303,7 +287,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 
 	cp110_clks[CP110_CORE_CORE] = hw;
 	/* NAND can be either PLL0/2.5 or core clock */
-	nand_name = cp110_unique_name(dev, syscon_node, "nand-core");
+	nand_name = ap_cp_unique_name(dev, syscon_node, "nand-core");
 	if (nand_clk_ctrl & NF_CLOCK_SEL_400_MASK)
 		hw = clk_hw_register_fixed_factor(NULL, nand_name,
 						   pll0_name, 0, 2, 5);
@@ -318,7 +302,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 	cp110_clks[CP110_CORE_NAND] = hw;
 
 	/* SDIO clock is PLL0/2.5 */
-	sdio_name = cp110_unique_name(dev, syscon_node, "sdio-core");
+	sdio_name = ap_cp_unique_name(dev, syscon_node, "sdio-core");
 	hw = clk_hw_register_fixed_factor(NULL, sdio_name,
 					  pll0_name, 0, 2, 5);
 	if (IS_ERR(hw)) {
@@ -330,7 +314,7 @@ static int cp110_syscon_common_probe(struct platform_device *pdev,
 
 	/* create the unique name for all the gate clocks */
 	for (i = 0; i < ARRAY_SIZE(gate_base_names); i++)
-		gate_name[i] =	cp110_unique_name(dev, syscon_node,
+		gate_name[i] =	ap_cp_unique_name(dev, syscon_node,
 						  gate_base_names[i]);
 
 	for (i = 0; i < ARRAY_SIZE(gate_base_names); i++) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
