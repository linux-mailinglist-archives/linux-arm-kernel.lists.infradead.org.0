Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B441DDDBC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 05:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rovmUGLVBxd6pfrJnd9m8B9V2fJYzBO365mWhsAssk0=; b=ivYaBrHRvG4XFr
	38Cpc0qpfOPqnR2MYTnZgLRi3llxRVDQBkusntscTNwRceZMH7DtvhYicVXFQ3Dip/GzUpLaIPT4t
	9jI3cnDrIk4S6aQknLnFUHHEjHHwdIJ3doqqvLcupsF5l7dETLYpUX1K+Bj5oJe7fRl185jCVa5H3
	9BCVErdr2sdcJVnVwBk3VmbbI8eZQExYyw8rTs7l34EYDDKQgooe9buwBu9jQUGRusThMVfgQ+da+
	h6yGbWzyRY1ozT7B3G5RAzb4Po+GZRaaHRyYmLpp8o2d3o6JuNOwUpy1SEVqdlUP9Rdhxth8UkBse
	ORtg9u5Xa0rmrtatY97Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jby3N-0006GB-Cd; Fri, 22 May 2020 03:08:57 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jby2n-000682-56
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 03:08:25 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.06712966|-1; CH=green;
 DM=|CONTINUE|false|;
 DS=CONTINUE|ham_system_inform|0.0400819-0.00144755-0.958471;
 FP=0|0|0|0|0|-1|-1|-1; HT=e02c03310; MF=frank@allwinnertech.com; NM=1; PH=DS;
 RN=15; RT=15; SR=0; TI=SMTPD_---.HbxBGFJ_1590116882; 
Received: from allwinnertech.com(mailfrom:frank@allwinnertech.com
 fp:SMTPD_---.HbxBGFJ_1590116882)
 by smtp.aliyun-inc.com(10.147.41.178);
 Fri, 22 May 2020 11:08:17 +0800
From: Frank Lee <frank@allwinnertech.com>
To: mripard@kernel.org, wens@csie.org, robh+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, linus.walleij@linaro.org,
 p.zabel@pengutronix.de, frank@allwinnertech.com,
 huangshuosheng@allwinnertech.com, tiny.windzz@gmail.com
Subject: [PATCH 2/4] pinctrl: sunxi: add support for the Allwinner A100 pin
 controller
Date: Fri, 22 May 2020 11:07:41 +0800
Message-Id: <20200522030743.10204-3-frank@allwinnertech.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200522030743.10204-1-frank@allwinnertech.com>
References: <20200522030743.10204-1-frank@allwinnertech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_200822_056417_6662291C 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit introduces support for the pin controller on A100.

Signed-off-by: Frank Lee <frank@allwinnertech.com>
---
 drivers/pinctrl/sunxi/Kconfig                 |  10 +
 drivers/pinctrl/sunxi/Makefile                |   2 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c | 105 +++
 drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c   | 710 ++++++++++++++++++
 4 files changed, 827 insertions(+)
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c

diff --git a/drivers/pinctrl/sunxi/Kconfig b/drivers/pinctrl/sunxi/Kconfig
index f7aae200ee15..593293584ecc 100644
--- a/drivers/pinctrl/sunxi/Kconfig
+++ b/drivers/pinctrl/sunxi/Kconfig
@@ -94,6 +94,16 @@ config PINCTRL_SUN50I_A64_R
 	default ARM64 && ARCH_SUNXI
 	select PINCTRL_SUNXI
 
+config PINCTRL_SUN50I_A100
+	bool "Support for the Allwinner A100 PIO"
+	default ARM64 && ARCH_SUNXI
+	select PINCTRL_SUNXI
+
+config PINCTRL_SUN50I_A100_R
+	bool "Support for the Allwinner A100 R-PIO"
+	default ARM64 && ARCH_SUNXI
+	select PINCTRL_SUNXI
+
 config PINCTRL_SUN50I_H5
 	bool "Support for the Allwinner H5 PIO"
 	default ARM64 && ARCH_SUNXI
diff --git a/drivers/pinctrl/sunxi/Makefile b/drivers/pinctrl/sunxi/Makefile
index fafcdae8134f..8b7ff0dc3bdf 100644
--- a/drivers/pinctrl/sunxi/Makefile
+++ b/drivers/pinctrl/sunxi/Makefile
@@ -13,6 +13,8 @@ obj-$(CONFIG_PINCTRL_SUN8I_A23_R)	+= pinctrl-sun8i-a23-r.o
 obj-$(CONFIG_PINCTRL_SUN8I_A33)		+= pinctrl-sun8i-a33.o
 obj-$(CONFIG_PINCTRL_SUN50I_A64)	+= pinctrl-sun50i-a64.o
 obj-$(CONFIG_PINCTRL_SUN50I_A64_R)	+= pinctrl-sun50i-a64-r.o
+obj-$(CONFIG_PINCTRL_SUN50I_A100)	+= pinctrl-sun50i-a100.o
+obj-$(CONFIG_PINCTRL_SUN50I_A100_R)	+= pinctrl-sun50i-a100-r.o
 obj-$(CONFIG_PINCTRL_SUN8I_A83T)	+= pinctrl-sun8i-a83t.o
 obj-$(CONFIG_PINCTRL_SUN8I_A83T_R)	+= pinctrl-sun8i-a83t-r.o
 obj-$(CONFIG_PINCTRL_SUN8I_H3)		+= pinctrl-sun8i-h3.o
diff --git a/drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c
new file mode 100644
index 000000000000..d38d8770c9da
--- /dev/null
+++ b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100-r.c
@@ -0,0 +1,105 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 Frank Lee <frank@allwinner.com>
+ *
+ * Based on:
+ * huangshuosheng <huangshuosheng@allwinnertech.com>
+ */
+
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/pinctrl/pinctrl.h>
+#include "pinctrl-sunxi.h"
+
+static const struct sunxi_desc_pin a100_r_pins[] = {
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_i2c0"),		/* SCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_i2c0"),		/* SDA */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_uart0"),		/* TX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_uart0"),		/* RX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_jtag"),		/* MS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_jtag"),		/* CK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_jtag"),		/* DO */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_jtag"),		/* DI */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_i2c1"),		/* SCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_i2c1"),		/* SDA */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 9)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 10),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_pwm"),
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 10)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(L, 11),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "s_cpu"),		/* CUR_W */
+		SUNXI_FUNCTION(0x3, "s_cir"),		/* IN */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 11)),
+};
+
+static const struct sunxi_pinctrl_desc a100_r_pinctrl_data = {
+	.pins = a100_r_pins,
+	.npins = ARRAY_SIZE(a100_r_pins),
+	.pin_base = PL_BASE,
+	.irq_banks = 1,
+};
+
+static int a100_r_pinctrl_probe(struct platform_device *pdev)
+{
+	return sunxi_pinctrl_init(pdev, &a100_r_pinctrl_data);
+}
+
+static const struct of_device_id a100_r_pinctrl_match[] = {
+	{ .compatible = "allwinner,sun50i-a100-r-pinctrl", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, a100_r_pinctrl_match);
+
+static struct platform_driver a100_r_pinctrl_driver = {
+	.probe	= a100_r_pinctrl_probe,
+	.driver	= {
+		.name		= "sun50iw10p1-r-pinctrl",
+		.of_match_table	= a100_r_pinctrl_match,
+	},
+};
+module_platform_driver(a100_r_pinctrl_driver);
diff --git a/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
new file mode 100644
index 000000000000..b9591009f0a4
--- /dev/null
+++ b/drivers/pinctrl/sunxi/pinctrl-sun50i-a100.c
@@ -0,0 +1,710 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2020 Frank Lee <frank@allwinner.com>
+ *
+ * Based on:
+ * huangshuosheng <huangshuosheng@allwinnertech.com>
+ */
+
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/pinctrl/pinctrl.h>
+
+#include "pinctrl-sunxi.h"
+
+static const struct sunxi_desc_pin a100_pins[] = {
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart2"),		/* TX */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* CS */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* MS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart2"),		/* RX */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* CLK */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* CK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart2"),		/* RTS */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* MOSI */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* DO */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart2"),		/* CTS */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* MISO */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* DI */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c1"),		/* SCK */
+		SUNXI_FUNCTION(0x3, "i2s0"),		/* MCLK */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* MS_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c1"),		/* SDA */
+		SUNXI_FUNCTION(0x3, "i2s0"),		/* BCLK */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* CK_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s0"),		/* LRCK */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* DO_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "spdif"),		/* DIN */
+		SUNXI_FUNCTION(0x3, "i2s0"),		/* DOUT0 */
+		SUNXI_FUNCTION(0x4, "i2s0"),		/* DIN1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "spdif"),		/* DOUT */
+		SUNXI_FUNCTION(0x3, "i2s0"),		/* DIN0 */
+		SUNXI_FUNCTION(0x4, "i2s0"),		/* DOUT1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart0"),		/* TX */
+		SUNXI_FUNCTION(0x3, "i2c0"),		/* SCK */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* DI_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 9)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 10),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart0"),		/* RX */
+		SUNXI_FUNCTION(0x3, "i2c0"),		/* SDA */
+		SUNXI_FUNCTION(0x4, "pwm1"),
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 0, 10)),
+	/* HOLE */
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* WE */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* DS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* ALE */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* RST */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* CLE */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* MOSI */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* CE1 */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* CS0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* CE0 */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* MISO */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* RE */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* CLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* RB0 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* CMD */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* RB1 */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* CS1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ7 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D3 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ6 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D4 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 9)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 10),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ5 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 10)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 11),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ4 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D5 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 11)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 12),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQS */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* CLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 12)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 13),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ3 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 13)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 14),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ2 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D6 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 14)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 15),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ1 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D2 */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* WP */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 15)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(C, 16),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "nand0"),		/* DQ0 */
+		SUNXI_FUNCTION(0x3, "mmc2"),		/* D7 */
+		SUNXI_FUNCTION(0x4, "spi0"),		/* HOLD */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 1, 16)),
+	/* HOLE */
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D2 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* D0P */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DP0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D3 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* D0N */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DM0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D4 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* D1P */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DP1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D5 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* D1N */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DM1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D6 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* D2P */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* CKP */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D7 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* D2N */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* CKM */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D10 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* CKP */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DP2 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D11 */
+		SUNXI_FUNCTION(0x3, "lvds0"),		/* CKN */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DM2 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D12 */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DP3 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D13 */
+		SUNXI_FUNCTION(0x4, "dsi0"),		/* DM3 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 9)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 10),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D14 */
+		SUNXI_FUNCTION(0x4, "spi1"),		/* CS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 10)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 11),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D15 */
+		SUNXI_FUNCTION(0x4, "spi1"),		/* CLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 11)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 12),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D18 */
+		SUNXI_FUNCTION(0x4, "spi1"),		/* MOSI */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 12)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 13),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D19 */
+		SUNXI_FUNCTION(0x4, "spi1"),		/* MISO */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 13)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 14),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D20 */
+		SUNXI_FUNCTION(0x4, "uart3"),		/* TX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 14)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 15),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D21 */
+		SUNXI_FUNCTION(0x4, "uart3"),		/* RX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 15)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 16),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D22 */
+		SUNXI_FUNCTION(0x4, "uart3"),		/* RTS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 16)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 17),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* D23 */
+		SUNXI_FUNCTION(0x4, "uart3"),		/* CTS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 17)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 18),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* CLK */
+		SUNXI_FUNCTION(0x4, "uart4"),		/* TX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 18)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 19),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* DE */
+		SUNXI_FUNCTION(0x4, "uart4"),		/* RX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 19)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 20),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* HSYNC */
+		SUNXI_FUNCTION(0x3, "pwm2"),
+		SUNXI_FUNCTION(0x4, "uart4"),		/* RTS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 20)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 21),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "lcd0"),		/* VSYNC */
+		SUNXI_FUNCTION(0x3, "pwm3"),
+		SUNXI_FUNCTION(0x4, "uart4"),		/* CTS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 21)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 22),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "pwm1"),
+		SUNXI_FUNCTION(0x4, "i2c0"),		/* SCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 22)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(D, 23),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "pwm0"),
+		SUNXI_FUNCTION(0x4, "i2c0"),		/* SDA */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 2, 23)),
+	/* HOLE */
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "csi"),		/* MCLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c2"),		/* SCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c2"),		/* SDA */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c3"),		/* SCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c3"),		/* SDA */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "csi"),		/* MCLK */
+		SUNXI_FUNCTION(0x3, "pll"),		/* LOCK_DBG */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* MCLK */
+		SUNXI_FUNCTION(0x5, "ledc"),		/* LEDC */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "bist0"),		/* RESULT0 */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* BCLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "csi"),		/* SM_VS */
+		SUNXI_FUNCTION(0x3, "bist0"),		/* RESULT1 */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* LRCK */
+		SUNXI_FUNCTION(0x5, "tcon0"),		/* TRIG */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3,	7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "bist0"),		/* RESULT2 */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* DOUT0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(E, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "bist0"),		/* RESULT3 */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* DIN0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 3, 9)),
+	/* HOLE */
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc0"),		/* D1 */
+		SUNXI_FUNCTION(0x3, "jtag"),		/* MS1 */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* MS_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc0"),		/* D0 */
+		SUNXI_FUNCTION(0x3, "jtag"),		/* DI1 */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* DI_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc0"),		/* CLK */
+		SUNXI_FUNCTION(0x3, "uart0"),		/* TX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc0"),		/* CMD */
+		SUNXI_FUNCTION(0x3, "jtag"),		/* DO */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* DO_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc0"),		/* D3 */
+		SUNXI_FUNCTION(0x3, "uart0"),		/* RX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc0"),		/* D2 */
+		SUNXI_FUNCTION(0x3, "jtag"),		/* CK */
+		SUNXI_FUNCTION(0x4, "jtag"),		/* CK_GPU */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 4, 6)),
+	/* HOLE */
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc1"),		/* CLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc1"),		/* CMD */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc1"),		/* D0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc1"),		/* D1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc1"),		/* D2 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "mmc1"),		/* D3 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart1"),		/* TX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart1"),		/* RX */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart1"),		/* RTS */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart1"),		/* CTS */
+		SUNXI_FUNCTION(0x3, "i2s1"),		/* MCLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 9)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 10),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s1"),		/* BCLK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 10)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 11),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s1"),		/* LRCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 11)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 12),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s1"),		/* DOUT0 */
+		SUNXI_FUNCTION(0x4, "i2s1"),		/* DIN1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 12)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(G, 13),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s1"),		/* DIN0 */
+		SUNXI_FUNCTION(0x4, "i2s1"),		/* DOUT1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 5, 13)),
+	/* HOLE */
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 0),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c0"),		/* SCK */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* RXD1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 0)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 1),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c0"),		/* SDA */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* RXD0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 1)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 2),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c1"),		/* SCK */
+		SUNXI_FUNCTION(0x3, "cpu"),		/* CUR_W */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* RXCTL */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 2)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 3),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "i2c1"),		/* SDA */
+		SUNXI_FUNCTION(0x3, "cir0"),		/* OUT */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* CLKIN */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 3)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 4),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart3"),		/* TX */
+		SUNXI_FUNCTION(0x3, "spi1"),		/* CS */
+		SUNXI_FUNCTION(0x4, "cpu"),		/* CUR_W */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* TXD1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 4)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 5),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart3"),		/* RX */
+		SUNXI_FUNCTION(0x3, "spi1"),		/* CLK */
+		SUNXI_FUNCTION(0x4, "ledc"),
+		SUNXI_FUNCTION(0x5, "emac0"),		/* TXD0 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 5)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 6),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart3"),		/* RTS */
+		SUNXI_FUNCTION(0x3, "spi1"),		/* MOSI */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* TXCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 6)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 7),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "uart3"),		/* CTS */
+		SUNXI_FUNCTION(0x3, "spi1"),		/* MISO */
+		SUNXI_FUNCTION(0x4, "spdif"),		/* OUT */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* TXCTL */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 7)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 8),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "dmic"),		/* CLK */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* CS */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* MCLK */
+		SUNXI_FUNCTION(0x5, "i2s2"),		/* DIN2 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 8)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 9),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "dmic"),		/* DATA0 */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* CLK */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* BCLK */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* MDC */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 9)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 10),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "dmic"),		/* DATA1 */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* MOSI */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* LRCK */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* MDIO */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 10)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 11),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "dmic"),		/* DATA2 */
+		SUNXI_FUNCTION(0x3, "spi2"),		/* MISO */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* DOUT0 */
+		SUNXI_FUNCTION(0x5, "i2s2"),		/* DIN1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 11)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 12),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "dmic"),		/* DATA3 */
+		SUNXI_FUNCTION(0x3, "i2c3"),		/* SCK */
+		SUNXI_FUNCTION(0x4, "i2s2"),		/* DIN0 */
+		SUNXI_FUNCTION(0x5, "i2s2"),		/* DOUT1 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 12)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 13),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2c3"),		/* SCK */
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* MCLK */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* EPHY */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 13)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 14),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* BCLK */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* RXD3 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 14)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 15),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* LRCK */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* RXD2 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 15)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 16),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s3"),		/* DOUT0 */
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* DIN1 */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* RXCK */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 16)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 17),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x3, "i2s3"),		/* DOUT1 */
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* DIN0 */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* TXD3 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 17)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 18),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "cir0"),		/* OUT */
+		SUNXI_FUNCTION(0x3, "i2s3"),		/* DOUT2 */
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* DIN2 */
+		SUNXI_FUNCTION(0x5, "emac0"),		/* TXD2 */
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 18)),
+	SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 19),
+		SUNXI_FUNCTION(0x0, "gpio_in"),
+		SUNXI_FUNCTION(0x1, "gpio_out"),
+		SUNXI_FUNCTION(0x2, "cir0"),		/* IN */
+		SUNXI_FUNCTION(0x3, "i2s3"),		/* DOUT3 */
+		SUNXI_FUNCTION(0x4, "i2s3"),		/* DIN3 */
+		SUNXI_FUNCTION(0x5, "ledc"),
+		SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 19)),
+};
+
+static const unsigned int a100_irq_bank_map[] = { 0, 1, 2, 3, 4, 5, 6};
+
+static const struct sunxi_pinctrl_desc a100_pinctrl_data = {
+	.pins = a100_pins,
+	.npins = ARRAY_SIZE(a100_pins),
+	.irq_banks = 7,
+	.irq_bank_map = a100_irq_bank_map,
+	.io_bias_cfg_variant = BIAS_VOLTAGE_PIO_POW_MODE_SEL,
+};
+
+static int a100_pinctrl_probe(struct platform_device *pdev)
+{
+	return sunxi_pinctrl_init(pdev, &a100_pinctrl_data);
+}
+
+static const struct of_device_id a100_pinctrl_match[] = {
+	{ .compatible = "allwinner,sun50i-a100-pinctrl", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, a100_pinctrl_match);
+
+static struct platform_driver a100_pinctrl_driver = {
+	.probe	= a100_pinctrl_probe,
+	.driver	= {
+		.name		= "sun50i-a100-pinctrl",
+		.of_match_table	= a100_pinctrl_match,
+	},
+};
+module_platform_driver(a100_pinctrl_driver);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
