Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D2A20031D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrGbYT33xqIZrQoEvTZVUvgPitI9Eebc7XZOP3WM6so=; b=mdsgQwpHUs04QN
	M7xHV/wGTbl3d1tTdd8Z0KaNCwavRi3GwVwUAyG1b7B/NRmcd2UfDLtO7oTeyzsNl2IKKzhcJxXo+
	K2jgfaEdDqQLCtC0Sh6UuYpRRE2K8Ko+rTaoCBjBJSvZWYf0wnYIZ+20W41JbR1grEqj258HS7dNC
	EK9zSK+HZ3y5u9Iu4QYqy2pH40hb4dFuqeqOzrmV7jgi63FQ2+3QbCI0JMlv5SpRN9Eqja6ph8IC8
	GuFvvDA/ZGRQPxzwFwkp8yN92YlKUxjdk3hLc1u5WMwR8a6mH2SWaGrU0U18JU1oNlW/SQNOR2H6E
	8Z5n57QyrVQJ5VIiZzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmBwM-0000ft-9W; Fri, 19 Jun 2020 07:59:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvn-0000JS-1p
 for linux-arm-kernel@bombadil.infradead.org; Fri, 19 Jun 2020 07:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=rtId0HQ6ULLyjMBjd8N9QKZRQaEaUeanIvt7M3gy3cs=; b=dHbi2vOOnzE9MlDts6tLQv2EX8
 66DkstOGUwUbNuUv7UFXxp9S0KQn42HIB7IfoleN8tDvBB1tS+gkoUhmgX5kvToux2qQbpe6xMu9n
 B9aacjFwYyNwg8Nsx4Ymdr3lEc1veDGN1pB6a6KozPwgw3Z7Xr3ZxIItqGCKaxAm1DKK7jigRkAWE
 t0xEjTcsGzwKlkEfdH3OHpXIixTXzNuSaIJG6nYntLP6TQLPkgFnG0qkI+Qa63TOCqMyN4TVt5Y5l
 GtpJT/NmaiOpWZJ3+/SPJfwaBXUR0g/QExngnsYLpX5/23yiS4t/EL0C1jGKFiS9vDOtbIQVQBWYt
 EyU5441g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBvh-0005Oz-Ft
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 07:59:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0007WG-UL; Fri, 19 Jun 2020 09:59:15 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jmBvf-0004vu-E0; Fri, 19 Jun 2020 09:59:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [RESEND PATCH v3 5/6] soc: xilinx: vcu: use vcu-settings syscon
 registers
Date: Fri, 19 Jun 2020 09:59:12 +0200
Message-Id: <20200619075913.18900-6-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200619075913.18900-1-m.tretter@pengutronix.de>
References: <20200619075913.18900-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_085917_889843_EB0D69B3 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
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
Cc: Dhaval Shah <dshah@xilinx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, kernel@pengutronix.de,
 Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch the "logicoreip" registers to the new xlnx,vcu-settings binding
to be able to read the settings if the settings are specified in a
separate device tree node that is shared with other drivers.

If the driver is not able to find a node with the new binding, fall back
to check for the logicore register bank to be backwards compatible.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/soc/xilinx/Kconfig          |  1 +
 drivers/soc/xilinx/xlnx_vcu.c       | 94 ++++++++++++++---------------
 include/linux/mfd/syscon/xlnx-vcu.h | 38 ++++++++++++
 3 files changed, 86 insertions(+), 47 deletions(-)
 create mode 100644 include/linux/mfd/syscon/xlnx-vcu.h

diff --git a/drivers/soc/xilinx/Kconfig b/drivers/soc/xilinx/Kconfig
index 2a4e80a36f78..9fe703772e5a 100644
--- a/drivers/soc/xilinx/Kconfig
+++ b/drivers/soc/xilinx/Kconfig
@@ -4,6 +4,7 @@ menu "Xilinx SoC drivers"
 config XILINX_VCU
 	tristate "Xilinx VCU logicoreIP Init"
 	depends on HAS_IOMEM && COMMON_CLK
+	select REGMAP_MMIO
 	help
 	  Provides the driver to enable and disable the isolation between the
 	  processing system and programmable logic part by using the logicoreIP
diff --git a/drivers/soc/xilinx/xlnx_vcu.c b/drivers/soc/xilinx/xlnx_vcu.c
index 03bf252737aa..ea4ae1e91fb7 100644
--- a/drivers/soc/xilinx/xlnx_vcu.c
+++ b/drivers/soc/xilinx/xlnx_vcu.c
@@ -11,42 +11,15 @@
 #include <linux/device.h>
 #include <linux/errno.h>
 #include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/mfd/syscon/xlnx-vcu.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/regmap.h>
 
 #include <dt-bindings/clock/xlnx-vcu.h>
 
-/* Address map for different registers implemented in the VCU LogiCORE IP. */
-#define VCU_ECODER_ENABLE		0x00
-#define VCU_DECODER_ENABLE		0x04
-#define VCU_MEMORY_DEPTH		0x08
-#define VCU_ENC_COLOR_DEPTH		0x0c
-#define VCU_ENC_VERTICAL_RANGE		0x10
-#define VCU_ENC_FRAME_SIZE_X		0x14
-#define VCU_ENC_FRAME_SIZE_Y		0x18
-#define VCU_ENC_COLOR_FORMAT		0x1c
-#define VCU_ENC_FPS			0x20
-#define VCU_MCU_CLK			0x24
-#define VCU_CORE_CLK			0x28
-#define VCU_PLL_BYPASS			0x2c
-#define VCU_ENC_CLK			0x30
-#define VCU_PLL_CLK			0x34
-#define VCU_ENC_VIDEO_STANDARD		0x38
-#define VCU_STATUS			0x3c
-#define VCU_AXI_ENC_CLK			0x40
-#define VCU_AXI_DEC_CLK			0x44
-#define VCU_AXI_MCU_CLK			0x48
-#define VCU_DEC_VIDEO_STANDARD		0x4c
-#define VCU_DEC_FRAME_SIZE_X		0x50
-#define VCU_DEC_FRAME_SIZE_Y		0x54
-#define VCU_DEC_FPS			0x58
-#define VCU_BUFFER_B_FRAME		0x5c
-#define VCU_WPP_EN			0x60
-#define VCU_PLL_CLK_DEC			0x64
-#define VCU_GASKET_INIT			0x74
-#define VCU_GASKET_VALUE		0x03
-
 /* vcu slcr registers, bitmask and shift */
 #define VCU_PLL_CTRL			0x24
 #define VCU_PLL_CTRL_RESET_MASK		0x01
@@ -109,13 +82,22 @@ struct xvcu_device {
 	struct device *dev;
 	struct clk *pll_ref;
 	struct clk *aclk;
-	void __iomem *logicore_reg_ba;
+	struct regmap *logicore_reg_ba;
 	void __iomem *vcu_slcr_ba;
 	struct clk_onecell_data clk_data;
 	u32 coreclk;
 	u32 mcuclk;
 };
 
+static struct regmap_config vcu_settings_regmap_config = {
+	.name = "regmap",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0xfff,
+	.cache_type = REGCACHE_NONE,
+};
+
 /**
  * struct xvcu_pll_cfg - Helper data
  * @fbdiv: The integer portion of the feedback divider to the PLL
@@ -305,10 +287,12 @@ static int xvcu_set_vcu_pll_info(struct xvcu_device *xvcu)
 	int ret, i;
 	const struct xvcu_pll_cfg *found = NULL;
 
-	inte = xvcu_read(xvcu->logicore_reg_ba, VCU_PLL_CLK);
-	deci = xvcu_read(xvcu->logicore_reg_ba, VCU_PLL_CLK_DEC);
-	coreclk = xvcu_read(xvcu->logicore_reg_ba, VCU_CORE_CLK) * MHZ;
-	mcuclk = xvcu_read(xvcu->logicore_reg_ba, VCU_MCU_CLK) * MHZ;
+	regmap_read(xvcu->logicore_reg_ba, VCU_PLL_CLK, &inte);
+	regmap_read(xvcu->logicore_reg_ba, VCU_PLL_CLK_DEC, &deci);
+	regmap_read(xvcu->logicore_reg_ba, VCU_CORE_CLK, &coreclk);
+	coreclk *= MHZ;
+	regmap_read(xvcu->logicore_reg_ba, VCU_MCU_CLK, &mcuclk);
+	mcuclk *= MHZ;
 	if (!mcuclk || !coreclk) {
 		dev_err(xvcu->dev, "Invalid mcu and core clock data\n");
 		return -EINVAL;
@@ -548,6 +532,7 @@ static int xvcu_probe(struct platform_device *pdev)
 {
 	struct resource *res;
 	struct xvcu_device *xvcu;
+	void __iomem *regs;
 	int ret;
 
 	xvcu = devm_kzalloc(&pdev->dev, sizeof(*xvcu), GFP_KERNEL);
@@ -568,17 +553,32 @@ static int xvcu_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	}
 
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "logicore");
-	if (!res) {
-		dev_err(&pdev->dev, "get logicore memory resource failed.\n");
-		return -ENODEV;
-	}
+	xvcu->logicore_reg_ba =
+		syscon_regmap_lookup_by_compatible("xlnx,vcu-settings");
+	if (IS_ERR(xvcu->logicore_reg_ba)) {
+		dev_info(&pdev->dev,
+			 "could not find xlnx,vcu-settings: trying direct register access\n");
+
+		res = platform_get_resource_byname(pdev,
+						   IORESOURCE_MEM, "logicore");
+		if (!res) {
+			dev_err(&pdev->dev, "get logicore memory resource failed.\n");
+			return -ENODEV;
+		}
 
-	xvcu->logicore_reg_ba = devm_ioremap(&pdev->dev, res->start,
-						     resource_size(res));
-	if (!xvcu->logicore_reg_ba) {
-		dev_err(&pdev->dev, "logicore register mapping failed.\n");
-		return -ENOMEM;
+		regs = devm_ioremap(&pdev->dev, res->start, resource_size(res));
+		if (!regs) {
+			dev_err(&pdev->dev, "logicore register mapping failed.\n");
+			return -ENOMEM;
+		}
+
+		xvcu->logicore_reg_ba =
+			devm_regmap_init_mmio(&pdev->dev, regs,
+					      &vcu_settings_regmap_config);
+		if (IS_ERR(xvcu->logicore_reg_ba)) {
+			dev_err(&pdev->dev, "failed to init regmap\n");
+			return PTR_ERR(xvcu->logicore_reg_ba);
+		}
 	}
 
 	xvcu->aclk = devm_clk_get(&pdev->dev, "aclk");
@@ -610,7 +610,7 @@ static int xvcu_probe(struct platform_device *pdev)
 	 * Bit 0 : Gasket isolation
 	 * Bit 1 : put VCU out of reset
 	 */
-	xvcu_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, VCU_GASKET_VALUE);
+	regmap_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, VCU_GASKET_VALUE);
 
 	/* Do the PLL Settings based on the ref clk,core and mcu clk freq */
 	ret = xvcu_set_pll(xvcu);
@@ -657,7 +657,7 @@ static int xvcu_remove(struct platform_device *pdev)
 	xvcu_unregister_clock_provider(xvcu);
 
 	/* Add the the Gasket isolation and put the VCU in reset. */
-	xvcu_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);
+	regmap_write(xvcu->logicore_reg_ba, VCU_GASKET_INIT, 0);
 
 	clk_disable_unprepare(xvcu->pll_ref);
 	clk_disable_unprepare(xvcu->aclk);
diff --git a/include/linux/mfd/syscon/xlnx-vcu.h b/include/linux/mfd/syscon/xlnx-vcu.h
new file mode 100644
index 000000000000..d3edec4b7b1d
--- /dev/null
+++ b/include/linux/mfd/syscon/xlnx-vcu.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 Pengutronix, Michael Tretter <kernel@pengutronix.de>
+ */
+
+#ifndef __XLNX_VCU_H
+#define __XLNX_VCU_H
+
+#define VCU_ECODER_ENABLE		0x00
+#define VCU_DECODER_ENABLE		0x04
+#define VCU_MEMORY_DEPTH		0x08
+#define VCU_ENC_COLOR_DEPTH		0x0c
+#define VCU_ENC_VERTICAL_RANGE		0x10
+#define VCU_ENC_FRAME_SIZE_X		0x14
+#define VCU_ENC_FRAME_SIZE_Y		0x18
+#define VCU_ENC_COLOR_FORMAT		0x1c
+#define VCU_ENC_FPS			0x20
+#define VCU_MCU_CLK			0x24
+#define VCU_CORE_CLK			0x28
+#define VCU_PLL_BYPASS			0x2c
+#define VCU_ENC_CLK			0x30
+#define VCU_PLL_CLK			0x34
+#define VCU_ENC_VIDEO_STANDARD		0x38
+#define VCU_STATUS			0x3c
+#define VCU_AXI_ENC_CLK			0x40
+#define VCU_AXI_DEC_CLK			0x44
+#define VCU_AXI_MCU_CLK			0x48
+#define VCU_DEC_VIDEO_STANDARD		0x4c
+#define VCU_DEC_FRAME_SIZE_X		0x50
+#define VCU_DEC_FRAME_SIZE_Y		0x54
+#define VCU_DEC_FPS			0x58
+#define VCU_BUFFER_B_FRAME		0x5c
+#define VCU_WPP_EN			0x60
+#define VCU_PLL_CLK_DEC			0x64
+#define VCU_GASKET_INIT			0x74
+#define VCU_GASKET_VALUE		0x03
+
+#endif /* __XLNX_VCU_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
