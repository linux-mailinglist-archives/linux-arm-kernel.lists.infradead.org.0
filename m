Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3205813D59D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 09:06:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKt7YKUBZlTq8rkEQn8D+/6R6I13GW9BGXQO3JszTT8=; b=umpc/gGY9goEIH
	yFyy5tbT7fN9pFQ0G8mTNA+ShbWpxU0WWJbMGU/rlJ8/MpjBEgOQ4TB3aEbDrQyC3vOCnG93gwi7o
	h3VlYF9ZZKo09wqeOEJZ0T7t9iBp4VDc/ZgN5/miz/RwuoE1xC4p72ygIRh9AUgKNVFr1i69zdukV
	F+YgO6Nug+dgB0HwWCUgvLxvyx3PLK1rnpfskWgq1q37KwPJIBJK8TNv1cwLuXfiZGJ4bM6Lb0at1
	o9NfJuI4fYYJ1PTSDojwvH6DTj42LonzqWv0BZM8MDSsKjb6eJcMlBW0SLY+8egOtAXyux4RgrIIr
	sSFtsghmhSqUkWr5DwMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0AX-0004nE-KO; Thu, 16 Jan 2020 08:06:21 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is09R-0002l4-Qw; Thu, 16 Jan 2020 08:05:18 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Thu, 16 Jan 2020
 16:05:12 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v6 3/5] clk: meson: a1: add support for Amlogic A1 PLL clock
 driver
Date: Thu, 16 Jan 2020 16:04:38 +0800
Message-ID: <20200116080440.118679-4-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200116080440.118679-1-jian.hu@amlogic.com>
References: <20200116080440.118679-1-jian.hu@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_000514_016399_CCF6B913 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Amlogic A1 clock includes three drivers:
pll clocks, peripheral clocks, CPU clocks.
sys pll and CPU clocks will be sent in next patch.

Unlike the previous series, there is no EE/AO domain
in A1 CLK controllers.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 drivers/clk/meson/Kconfig  |   9 +
 drivers/clk/meson/Makefile |   1 +
 drivers/clk/meson/a1-pll.c | 360 +++++++++++++++++++++++++++++++++++++
 drivers/clk/meson/a1-pll.h |  56 ++++++
 4 files changed, 426 insertions(+)
 create mode 100644 drivers/clk/meson/a1-pll.c
 create mode 100644 drivers/clk/meson/a1-pll.h

diff --git a/drivers/clk/meson/Kconfig b/drivers/clk/meson/Kconfig
index dabeb435d067..31613c3bbbc7 100644
--- a/drivers/clk/meson/Kconfig
+++ b/drivers/clk/meson/Kconfig
@@ -93,6 +93,15 @@ config COMMON_CLK_AXG_AUDIO
 	  Support for the audio clock controller on AmLogic A113D devices,
 	  aka axg, Say Y if you want audio subsystem to work.
 
+config COMMON_CLK_A1_PLL
+	bool
+	depends on ARCH_MESON
+	select COMMON_CLK_MESON_REGMAP
+	select COMMON_CLK_MESON_PLL
+	help
+	  Support for the PLL clock controller on Amlogic A113L device,
+	  aka a1. Say Y if you want PLL to work.
+
 config COMMON_CLK_G12A
 	bool
 	depends on ARCH_MESON
diff --git a/drivers/clk/meson/Makefile b/drivers/clk/meson/Makefile
index 3939f218587a..71d3b8e6fb8a 100644
--- a/drivers/clk/meson/Makefile
+++ b/drivers/clk/meson/Makefile
@@ -16,6 +16,7 @@ obj-$(CONFIG_COMMON_CLK_MESON_VID_PLL_DIV) += vid-pll-div.o
 
 obj-$(CONFIG_COMMON_CLK_AXG) += axg.o axg-aoclk.o
 obj-$(CONFIG_COMMON_CLK_AXG_AUDIO) += axg-audio.o
+obj-$(CONFIG_COMMON_CLK_A1_PLL) += a1-pll.o
 obj-$(CONFIG_COMMON_CLK_GXBB) += gxbb.o gxbb-aoclk.o
 obj-$(CONFIG_COMMON_CLK_G12A) += g12a.o g12a-aoclk.o
 obj-$(CONFIG_COMMON_CLK_MESON8B) += meson8b.o
diff --git a/drivers/clk/meson/a1-pll.c b/drivers/clk/meson/a1-pll.c
new file mode 100644
index 000000000000..69c1ca07d041
--- /dev/null
+++ b/drivers/clk/meson/a1-pll.c
@@ -0,0 +1,360 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
+ * Author: Jian Hu <jian.hu@amlogic.com>
+ */
+
+#include <linux/clk-provider.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include "a1-pll.h"
+#include "clk-pll.h"
+#include "clk-regmap.h"
+
+static struct clk_regmap a1_fixed_pll_dco = {
+	.data = &(struct meson_clk_pll_data){
+		.en = {
+			.reg_off = ANACTRL_FIXPLL_CTRL0,
+			.shift   = 28,
+			.width   = 1,
+		},
+		.m = {
+			.reg_off = ANACTRL_FIXPLL_CTRL0,
+			.shift   = 0,
+			.width   = 8,
+		},
+		.n = {
+			.reg_off = ANACTRL_FIXPLL_CTRL0,
+			.shift   = 10,
+			.width   = 5,
+		},
+		.frac = {
+			.reg_off = ANACTRL_FIXPLL_CTRL1,
+			.shift   = 0,
+			.width   = 19,
+		},
+		.l = {
+			.reg_off = ANACTRL_FIXPLL_STS,
+			.shift   = 31,
+			.width   = 1,
+		},
+		.rst = {
+			.reg_off = ANACTRL_FIXPLL_CTRL0,
+			.shift   = 29,
+			.width   = 1,
+		},
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fixed_pll_dco",
+		.ops = &meson_clk_pll_ro_ops,
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal_fixpll",
+		},
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap a1_fixed_pll = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = ANACTRL_FIXPLL_CTRL0,
+		.bit_idx = 20,
+	},
+	.hw.init = &(struct clk_init_data) {
+		.name = "fixed_pll",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fixed_pll_dco.hw
+		},
+		.num_parents = 1,
+		/*
+		 * It is enough that the fdiv leaf has critical flag,
+		 * No critical or unused flag here.
+		 */
+	},
+};
+
+static const struct pll_mult_range a1_hifi_pll_mult_range = {
+	.min = 32,
+	.max = 64,
+};
+
+static const struct reg_sequence a1_hifi_init_regs[] = {
+	{ .reg = ANACTRL_HIFIPLL_CTRL1, .def = 0x01800000 },
+	{ .reg = ANACTRL_HIFIPLL_CTRL2, .def = 0x00001100 },
+	{ .reg = ANACTRL_HIFIPLL_CTRL3, .def = 0x100a1100 },
+	{ .reg = ANACTRL_HIFIPLL_CTRL4, .def = 0x00302000 },
+	{ .reg = ANACTRL_HIFIPLL_CTRL0, .def = 0x01f18440 },
+};
+
+static struct clk_regmap a1_hifi_pll = {
+	.data = &(struct meson_clk_pll_data){
+		.en = {
+			.reg_off = ANACTRL_HIFIPLL_CTRL0,
+			.shift   = 28,
+			.width   = 1,
+		},
+		.m = {
+			.reg_off = ANACTRL_HIFIPLL_CTRL0,
+			.shift   = 0,
+			.width   = 8,
+		},
+		.n = {
+			.reg_off = ANACTRL_HIFIPLL_CTRL0,
+			.shift   = 10,
+			.width   = 5,
+		},
+		.frac = {
+			.reg_off = ANACTRL_HIFIPLL_CTRL1,
+			.shift   = 0,
+			.width   = 19,
+		},
+		.l = {
+			.reg_off = ANACTRL_HIFIPLL_STS,
+			.shift   = 31,
+			.width   = 1,
+		},
+		.current_en = {
+			.reg_off = ANACTRL_HIFIPLL_CTRL0,
+			.shift   = 26,
+			.width   = 1,
+		},
+		.l_detect = {
+			.reg_off = ANACTRL_HIFIPLL_CTRL2,
+			.shift   = 6,
+			.width   = 1,
+		},
+		.range = &a1_hifi_pll_mult_range,
+		.init_regs = a1_hifi_init_regs,
+		.init_count = ARRAY_SIZE(a1_hifi_init_regs),
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "hifi_pll",
+		.ops = &meson_clk_pll_ops,
+		.parent_data = &(const struct clk_parent_data) {
+			.fw_name = "xtal_hifipll",
+		},
+		.num_parents = 1,
+	},
+};
+
+static struct clk_fixed_factor a1_fclk_div2_div = {
+	.mult = 1,
+	.div = 2,
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div2_div",
+		.ops = &clk_fixed_factor_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fixed_pll.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap a1_fclk_div2 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = ANACTRL_FIXPLL_CTRL0,
+		.bit_idx = 21,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div2",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fclk_div2_div.hw
+		},
+		.num_parents = 1,
+		/*
+		 * This clock is used by DDR clock in BL2 firmware
+		 * and is required by the platform to operate correctly.
+		 * Until the following condition are met, we need this clock to
+		 * be marked as critical:
+		 * a) Mark the clock used by a firmware resource, if possible
+		 * b) CCF has a clock hand-off mechanism to make the sure the
+		 *    clock stays on until the proper driver comes along
+		 */
+		.flags = CLK_IS_CRITICAL,
+	},
+};
+
+static struct clk_fixed_factor a1_fclk_div3_div = {
+	.mult = 1,
+	.div = 3,
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div3_div",
+		.ops = &clk_fixed_factor_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fixed_pll.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap a1_fclk_div3 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = ANACTRL_FIXPLL_CTRL0,
+		.bit_idx = 22,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div3",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fclk_div3_div.hw
+		},
+		.num_parents = 1,
+		/*
+		 * This clock is used by APB bus which is set in boot ROM code
+		 * and is required by the platform to operate correctly.
+		 * About critical, refer to a1_fclk_div2.
+		 */
+		.flags = CLK_IS_CRITICAL,
+	},
+};
+
+static struct clk_fixed_factor a1_fclk_div5_div = {
+	.mult = 1,
+	.div = 5,
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div5_div",
+		.ops = &clk_fixed_factor_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fixed_pll.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap a1_fclk_div5 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = ANACTRL_FIXPLL_CTRL0,
+		.bit_idx = 23,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div5",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fclk_div5_div.hw
+		},
+		.num_parents = 1,
+		/*
+		 * This clock is used by AXI bus which setted in Romcode
+		 * and is required by the platform to operate correctly.
+		 * About critical, refer to a1_fclk_div2.
+		 */
+		.flags = CLK_IS_CRITICAL,
+	},
+};
+
+static struct clk_fixed_factor a1_fclk_div7_div = {
+	.mult = 1,
+	.div = 7,
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div7_div",
+		.ops = &clk_fixed_factor_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fixed_pll.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+static struct clk_regmap a1_fclk_div7 = {
+	.data = &(struct clk_regmap_gate_data){
+		.offset = ANACTRL_FIXPLL_CTRL0,
+		.bit_idx = 24,
+	},
+	.hw.init = &(struct clk_init_data){
+		.name = "fclk_div7",
+		.ops = &clk_regmap_gate_ops,
+		.parent_hws = (const struct clk_hw *[]) {
+			&a1_fclk_div7_div.hw
+		},
+		.num_parents = 1,
+	},
+};
+
+/* Array of all clocks provided by this provider */
+static struct clk_hw_onecell_data a1_pll_hw_onecell_data = {
+	.hws = {
+		[CLKID_FIXED_PLL_DCO]		= &a1_fixed_pll_dco.hw,
+		[CLKID_FIXED_PLL]		= &a1_fixed_pll.hw,
+		[CLKID_HIFI_PLL]		= &a1_hifi_pll.hw,
+		[CLKID_FCLK_DIV2]		= &a1_fclk_div2.hw,
+		[CLKID_FCLK_DIV3]		= &a1_fclk_div3.hw,
+		[CLKID_FCLK_DIV5]		= &a1_fclk_div5.hw,
+		[CLKID_FCLK_DIV7]		= &a1_fclk_div7.hw,
+		[CLKID_FCLK_DIV2_DIV]		= &a1_fclk_div2_div.hw,
+		[CLKID_FCLK_DIV3_DIV]		= &a1_fclk_div3_div.hw,
+		[CLKID_FCLK_DIV5_DIV]		= &a1_fclk_div5_div.hw,
+		[CLKID_FCLK_DIV7_DIV]		= &a1_fclk_div7_div.hw,
+		[NR_PLL_CLKS]			= NULL,
+	},
+	.num = NR_PLL_CLKS,
+};
+
+static struct clk_regmap *const a1_pll_regmaps[] = {
+	&a1_fixed_pll_dco,
+	&a1_fixed_pll,
+	&a1_hifi_pll,
+	&a1_fclk_div2,
+	&a1_fclk_div3,
+	&a1_fclk_div5,
+	&a1_fclk_div7,
+};
+
+static struct regmap_config clkc_regmap_config = {
+	.reg_bits       = 32,
+	.val_bits       = 32,
+	.reg_stride     = 4,
+};
+
+static int meson_a1_pll_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct resource *res;
+	void __iomem *base;
+	struct regmap *map;
+	int ret, i;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	map = devm_regmap_init_mmio(dev, base, &clkc_regmap_config);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
+
+	/* Populate regmap for the regmap backed clocks */
+	for (i = 0; i < ARRAY_SIZE(a1_pll_regmaps); i++)
+		a1_pll_regmaps[i]->map = map;
+
+	for (i = 0; i < a1_pll_hw_onecell_data.num; i++) {
+		/* array might be sparse */
+		if (!a1_pll_hw_onecell_data.hws[i])
+			continue;
+
+		ret = devm_clk_hw_register(dev, a1_pll_hw_onecell_data.hws[i]);
+		if (ret) {
+			dev_err(dev, "Clock registration failed\n");
+			return ret;
+		}
+	}
+
+	return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
+					   &a1_pll_hw_onecell_data);
+}
+
+static const struct of_device_id clkc_match_table[] = {
+	{ .compatible = "amlogic,a1-pll-clkc", },
+	{}
+};
+
+static struct platform_driver a1_pll_driver = {
+	.probe		= meson_a1_pll_probe,
+	.driver		= {
+		.name	= "a1-pll-clkc",
+		.of_match_table = clkc_match_table,
+	},
+};
+
+builtin_platform_driver(a1_pll_driver);
diff --git a/drivers/clk/meson/a1-pll.h b/drivers/clk/meson/a1-pll.h
new file mode 100644
index 000000000000..8ded267061ad
--- /dev/null
+++ b/drivers/clk/meson/a1-pll.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
+ */
+
+#ifndef __A1_PLL_H
+#define __A1_PLL_H
+
+/* PLL register offset */
+#define ANACTRL_FIXPLL_CTRL0		0x0
+#define ANACTRL_FIXPLL_CTRL1		0x4
+#define ANACTRL_FIXPLL_CTRL2		0x8
+#define ANACTRL_FIXPLL_CTRL3		0xc
+#define ANACTRL_FIXPLL_CTRL4		0x10
+#define ANACTRL_FIXPLL_STS		0x14
+#define ANACTRL_SYSPLL_CTRL0		0x80
+#define ANACTRL_SYSPLL_CTRL1		0x84
+#define ANACTRL_SYSPLL_CTRL2		0x88
+#define ANACTRL_SYSPLL_CTRL3		0x8c
+#define ANACTRL_SYSPLL_CTRL4		0x90
+#define ANACTRL_SYSPLL_STS		0x94
+#define ANACTRL_HIFIPLL_CTRL0		0xc0
+#define ANACTRL_HIFIPLL_CTRL1		0xc4
+#define ANACTRL_HIFIPLL_CTRL2		0xc8
+#define ANACTRL_HIFIPLL_CTRL3		0xcc
+#define ANACTRL_HIFIPLL_CTRL4		0xd0
+#define ANACTRL_HIFIPLL_STS		0xd4
+#define ANACTRL_AUDDDS_CTRL0		0x100
+#define ANACTRL_AUDDDS_CTRL1		0x104
+#define ANACTRL_AUDDDS_CTRL2		0x108
+#define ANACTRL_AUDDDS_CTRL3		0x10c
+#define ANACTRL_AUDDDS_CTRL4		0x110
+#define ANACTRL_AUDDDS_STS		0x114
+#define ANACTRL_MISCTOP_CTRL0		0x140
+#define ANACTRL_POR_CNTL		0x188
+
+/*
+ * CLKID index values
+ *
+ * These indices are entirely contrived and do not map onto the hardware.
+ * It has now been decided to expose everything by default in the DT header:
+ * include/dt-bindings/clock/a1-pll-clkc.h. Only the clocks ids we don't want
+ * to expose, such as the internal muxes and dividers of composite clocks,
+ * will remain defined here.
+ */
+#define CLKID_FIXED_PLL_DCO		0
+#define CLKID_FCLK_DIV2_DIV		2
+#define CLKID_FCLK_DIV3_DIV		3
+#define CLKID_FCLK_DIV5_DIV		4
+#define CLKID_FCLK_DIV7_DIV		5
+#define NR_PLL_CLKS			11
+
+/* include the CLKIDs that have been made part of the DT binding */
+#include <dt-bindings/clock/a1-pll-clkc.h>
+
+#endif /* __A1_PLL_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
