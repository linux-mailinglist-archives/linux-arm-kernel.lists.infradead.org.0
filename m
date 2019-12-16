Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409781201C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdHjrRhd0OPItJ5Zu2XbFictk2Y7ZAzw/wM3S7fE334=; b=YJOhbso3mL1yDM
	6Nn7HiJEKZW0sCnMqsvzUgtak8rT+esEC9ICzHqzqIpdWOwoRck3klDwF+o3ZYEfaLDDtZI5DKRG5
	c19Rrx20DAFWXpXuVb6yagdQ2F2TlsNJF1YHUtKynRgjMQ3tJ4PUjrXA8ffNLQsAVgW6d9GTzEkhF
	YpWOKoT3Dazm3IWp3T7EqIxhbzEh+SUGGBA5BrUpfM9GA6RiJEiW4LXM/HOiJ7Hq7eH22kbzUM64R
	R6UaVr4Tu/hgSXhelkHqmqmm7jlf3y8RNq73c5hC2QkK7M8wTey/UIJ5xTb3MX7Fw93lVt/F83NIL
	l3AIeh4JCdQhlW+YMMSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignB5-0001l2-Lm; Mon, 16 Dec 2019 10:00:35 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ign7H-0005oh-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:56:48 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBG9ubWJ038288;
 Mon, 16 Dec 2019 03:56:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576490197;
 bh=4jIKZsaBuZUbtBOGR/rHsj4US7wGWPl5B8GqRdXFiiU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=fLjPzpRm/76p+LHjKDKLwzZiEgv+7QQFiIKB6wluQ/LixIl8vkXPF3T5Edpi2m/7y
 bHAKg6mrTdkoE4gwVAEL6woS0Qt2S59lXg4Vi0IPv5StKfqf5oAlQtOa2Pg6Xk/XsX
 JcQ6mBX9r0YzEqAf5DI5e46aZc1/mnhfAWGpoGko=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9ubT0038481;
 Mon, 16 Dec 2019 03:56:37 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 16
 Dec 2019 03:56:36 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 16 Dec 2019 03:56:36 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBG9tsJX084408;
 Mon, 16 Dec 2019 03:56:34 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Rob Herring <robh+dt@kernel.org>, Anil Varughese <aniljoy@cadence.com>,
 Roger Quadros <rogerq@ti.com>, Jyri Sarha <jsarha@ti.com>
Subject: [PATCH v4 14/14] phy: ti: j721e-wiz: Add support for WIZ module
 present in TI J721E SoC
Date: Mon, 16 Dec 2019 15:27:12 +0530
Message-ID: <20191216095712.13266-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216095712.13266-1-kishon@ti.com>
References: <20191216095712.13266-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_015640_201180_230B3756 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for WIZ module present in TI's J721E SoC. WIZ is a SERDES
wrapper used to configure some of the input signals to the SERDES. It is
used with both Sierra(16G) and Torrent(10G) SERDES. This driver configures
three clock selects (pll0, pll1, dig), two divider clocks and supports
resets for each of the lanes.

[jsarha@ti.com: Add support for Torrent(10G) SERDES wrapper]
Signed-off-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/Kconfig         |  15 +
 drivers/phy/ti/Makefile        |   1 +
 drivers/phy/ti/phy-j721e-wiz.c | 898 +++++++++++++++++++++++++++++++++
 3 files changed, 914 insertions(+)
 create mode 100644 drivers/phy/ti/phy-j721e-wiz.c

diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
index 174888609779..50f6b829cad0 100644
--- a/drivers/phy/ti/Kconfig
+++ b/drivers/phy/ti/Kconfig
@@ -33,6 +33,21 @@ config PHY_AM654_SERDES
 	  This option enables support for TI AM654 SerDes PHY used for
 	  PCIe.
 
+config PHY_J721E_WIZ
+	tristate "TI J721E WIZ (SERDES Wrapper) support"
+	depends on OF && ARCH_K3 || COMPILE_TEST
+	depends on COMMON_CLK
+	select GENERIC_PHY
+	select MULTIPLEXER
+	select REGMAP_MMIO
+	select MUX_MMIO
+	help
+	  This option enables support for WIZ module present in TI's J721E
+	  SoC. WIZ is a serdes wrapper used to configure some of the input
+	  signals to the SERDES (Sierra/Torrent). This driver configures
+	  three clock selects (pll0, pll1, dig) and resets for each of the
+	  lanes.
+
 config OMAP_CONTROL_PHY
 	tristate "OMAP CONTROL PHY Driver"
 	depends on ARCH_OMAP2PLUS || COMPILE_TEST
diff --git a/drivers/phy/ti/Makefile b/drivers/phy/ti/Makefile
index bff901eb0ecc..dcba2571c9bd 100644
--- a/drivers/phy/ti/Makefile
+++ b/drivers/phy/ti/Makefile
@@ -8,3 +8,4 @@ obj-$(CONFIG_PHY_TUSB1210)		+= phy-tusb1210.o
 obj-$(CONFIG_TWL4030_USB)		+= phy-twl4030-usb.o
 obj-$(CONFIG_PHY_AM654_SERDES)		+= phy-am654-serdes.o
 obj-$(CONFIG_PHY_TI_GMII_SEL)		+= phy-gmii-sel.o
+obj-$(CONFIG_PHY_J721E_WIZ)		+= phy-j721e-wiz.o
diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
new file mode 100644
index 000000000000..b86ebdd68302
--- /dev/null
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -0,0 +1,898 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * Wrapper driver for SERDES used in J721E
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+#include <dt-bindings/phy/phy.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/mux/consumer.h>
+#include <linux/of_address.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+
+#define WIZ_SERDES_CTRL		0x404
+#define WIZ_SERDES_TOP_CTRL	0x408
+#define WIZ_SERDES_RST		0x40c
+#define WIZ_LANECTL(n)		(0x480 + (0x40 * (n)))
+
+#define WIZ_MAX_LANES		4
+#define WIZ_MUX_NUM_CLOCKS	3
+#define WIZ_DIV_NUM_CLOCKS_16G	2
+#define WIZ_DIV_NUM_CLOCKS_10G	1
+
+enum wiz_lane_standard_mode {
+	LANE_MODE_GEN1,
+	LANE_MODE_GEN2,
+	LANE_MODE_GEN3,
+	LANE_MODE_GEN4,
+};
+
+enum wiz_refclk_mux_sel {
+	PLL0_REFCLK,
+	PLL1_REFCLK,
+	REFCLK_DIG,
+};
+
+enum wiz_refclk_div_sel {
+	CMN_REFCLK_DIG_DIV,
+	CMN_REFCLK1_DIG_DIV,
+};
+
+static const struct reg_field por_en = REG_FIELD(WIZ_SERDES_CTRL, 31, 31);
+static const struct reg_field phy_reset_n = REG_FIELD(WIZ_SERDES_RST, 31, 31);
+static const struct reg_field pll1_refclk_mux_sel =
+					REG_FIELD(WIZ_SERDES_RST, 29, 29);
+static const struct reg_field pll0_refclk_mux_sel =
+					REG_FIELD(WIZ_SERDES_RST, 28, 28);
+static const struct reg_field refclk_dig_sel_16g =
+					REG_FIELD(WIZ_SERDES_RST, 24, 25);
+static const struct reg_field refclk_dig_sel_10g =
+					REG_FIELD(WIZ_SERDES_RST, 24, 24);
+static const struct reg_field pma_cmn_refclk_int_mode =
+					REG_FIELD(WIZ_SERDES_TOP_CTRL, 28, 29);
+static const struct reg_field pma_cmn_refclk_mode =
+					REG_FIELD(WIZ_SERDES_TOP_CTRL, 30, 31);
+static const struct reg_field pma_cmn_refclk_dig_div =
+					REG_FIELD(WIZ_SERDES_TOP_CTRL, 26, 27);
+static const struct reg_field pma_cmn_refclk1_dig_div =
+					REG_FIELD(WIZ_SERDES_TOP_CTRL, 24, 25);
+
+static const struct reg_field p_enable[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 30, 31),
+	REG_FIELD(WIZ_LANECTL(1), 30, 31),
+	REG_FIELD(WIZ_LANECTL(2), 30, 31),
+	REG_FIELD(WIZ_LANECTL(3), 30, 31),
+};
+
+static const struct reg_field p_align[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 29, 29),
+	REG_FIELD(WIZ_LANECTL(1), 29, 29),
+	REG_FIELD(WIZ_LANECTL(2), 29, 29),
+	REG_FIELD(WIZ_LANECTL(3), 29, 29),
+};
+
+static const struct reg_field p_raw_auto_start[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 28, 28),
+	REG_FIELD(WIZ_LANECTL(1), 28, 28),
+	REG_FIELD(WIZ_LANECTL(2), 28, 28),
+	REG_FIELD(WIZ_LANECTL(3), 28, 28),
+};
+
+static const struct reg_field p_standard_mode[WIZ_MAX_LANES] = {
+	REG_FIELD(WIZ_LANECTL(0), 24, 25),
+	REG_FIELD(WIZ_LANECTL(1), 24, 25),
+	REG_FIELD(WIZ_LANECTL(2), 24, 25),
+	REG_FIELD(WIZ_LANECTL(3), 24, 25),
+};
+
+struct wiz_clk_mux {
+	struct clk_hw		hw;
+	struct regmap_field	*field;
+	u32			*table;
+	struct clk_init_data	clk_data;
+};
+
+#define to_wiz_clk_mux(_hw) container_of(_hw, struct wiz_clk_mux, hw)
+
+struct wiz_clk_divider {
+	struct clk_hw		hw;
+	struct regmap_field	*field;
+	struct clk_div_table	*table;
+	struct clk_init_data	clk_data;
+};
+
+#define to_wiz_clk_div(_hw) container_of(_hw, struct wiz_clk_divider, hw)
+
+struct wiz_clk_mux_sel {
+	struct regmap_field	*field;
+	u32			table[4];
+	const char		*node_name;
+};
+
+struct wiz_clk_div_sel {
+	struct regmap_field	*field;
+	struct clk_div_table	*table;
+	const char		*node_name;
+};
+
+static struct wiz_clk_mux_sel clk_mux_sel_16g[] = {
+	{
+		/*
+		 * Mux value to be configured for each of the input clocks
+		 * in the order populated in device tree
+		 */
+		.table = { 1, 0 },
+		.node_name = "pll0-refclk",
+	},
+	{
+		.table = { 1, 0 },
+		.node_name = "pll1-refclk",
+	},
+	{
+		.table = { 1, 3, 0, 2 },
+		.node_name = "refclk-dig",
+	},
+};
+
+static struct wiz_clk_mux_sel clk_mux_sel_10g[] = {
+	{
+		/*
+		 * Mux value to be configured for each of the input clocks
+		 * in the order populated in device tree
+		 */
+		.table = { 1, 0 },
+		.node_name = "pll0-refclk",
+	},
+	{
+		.table = { 1, 0 },
+		.node_name = "pll1-refclk",
+	},
+	{
+		.table = { 1, 0 },
+		.node_name = "refclk-dig",
+	},
+};
+
+static struct clk_div_table clk_div_table[] = {
+	{ .val = 0, .div = 1, },
+	{ .val = 1, .div = 2, },
+	{ .val = 2, .div = 4, },
+	{ .val = 3, .div = 8, },
+};
+
+static struct wiz_clk_div_sel clk_div_sel[] = {
+	{
+		.table = clk_div_table,
+		.node_name = "cmn-refclk-dig-div",
+	},
+	{
+		.table = clk_div_table,
+		.node_name = "cmn-refclk1-dig-div",
+	},
+};
+
+enum wiz_type {
+	J721E_WIZ_16G,
+	J721E_WIZ_10G,
+};
+
+struct wiz {
+	struct regmap		*regmap;
+	enum wiz_type		type;
+	struct wiz_clk_mux_sel	*clk_mux_sel;
+	struct wiz_clk_div_sel	*clk_div_sel;
+	unsigned int		clk_div_sel_num;
+	struct regmap_field	*por_en;
+	struct regmap_field	*phy_reset_n;
+	struct regmap_field	*p_enable[WIZ_MAX_LANES];
+	struct regmap_field	*p_align[WIZ_MAX_LANES];
+	struct regmap_field	*p_raw_auto_start[WIZ_MAX_LANES];
+	struct regmap_field	*p_standard_mode[WIZ_MAX_LANES];
+	struct regmap_field	*pma_cmn_refclk_int_mode;
+	struct regmap_field	*pma_cmn_refclk_mode;
+	struct regmap_field	*pma_cmn_refclk_dig_div;
+	struct regmap_field	*pma_cmn_refclk1_dig_div;
+
+	struct device		*dev;
+	u32			num_lanes;
+	struct platform_device	*serdes_pdev;
+	struct reset_controller_dev wiz_phy_reset_dev;
+};
+
+static int wiz_reset(struct wiz *wiz)
+{
+	int ret;
+
+	ret = regmap_field_write(wiz->por_en, 0x1);
+	if (ret)
+		return ret;
+
+	mdelay(1);
+
+	ret = regmap_field_write(wiz->por_en, 0x0);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int wiz_mode_select(struct wiz *wiz)
+{
+	u32 num_lanes = wiz->num_lanes;
+	int ret;
+	int i;
+
+	for (i = 0; i < num_lanes; i++) {
+		ret = regmap_field_write(wiz->p_standard_mode[i],
+					 LANE_MODE_GEN4);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int wiz_init_raw_interface(struct wiz *wiz, bool enable)
+{
+	u32 num_lanes = wiz->num_lanes;
+	int i;
+	int ret;
+
+	for (i = 0; i < num_lanes; i++) {
+		ret = regmap_field_write(wiz->p_align[i], enable);
+		if (ret)
+			return ret;
+
+		ret = regmap_field_write(wiz->p_raw_auto_start[i], enable);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int wiz_init(struct wiz *wiz)
+{
+	struct device *dev = wiz->dev;
+	int ret;
+
+	ret = wiz_reset(wiz);
+	if (ret) {
+		dev_err(dev, "WIZ reset failed\n");
+		return ret;
+	}
+
+	ret = wiz_mode_select(wiz);
+	if (ret) {
+		dev_err(dev, "WIZ mode select failed\n");
+		return ret;
+	}
+
+	ret = wiz_init_raw_interface(wiz, true);
+	if (ret) {
+		dev_err(dev, "WIZ interface initialization failed\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int wiz_regfield_init(struct wiz *wiz)
+{
+	struct wiz_clk_mux_sel *clk_mux_sel;
+	struct wiz_clk_div_sel *clk_div_sel;
+	struct regmap *regmap = wiz->regmap;
+	int num_lanes = wiz->num_lanes;
+	struct device *dev = wiz->dev;
+	int i;
+
+	wiz->por_en = devm_regmap_field_alloc(dev, regmap, por_en);
+	if (IS_ERR(wiz->por_en)) {
+		dev_err(dev, "POR_EN reg field init failed\n");
+		return PTR_ERR(wiz->por_en);
+	}
+
+	wiz->phy_reset_n = devm_regmap_field_alloc(dev, regmap,
+						   phy_reset_n);
+	if (IS_ERR(wiz->phy_reset_n)) {
+		dev_err(dev, "PHY_RESET_N reg field init failed\n");
+		return PTR_ERR(wiz->phy_reset_n);
+	}
+
+	wiz->pma_cmn_refclk_int_mode =
+		devm_regmap_field_alloc(dev, regmap, pma_cmn_refclk_int_mode);
+	if (IS_ERR(wiz->pma_cmn_refclk_int_mode)) {
+		dev_err(dev, "PMA_CMN_REFCLK_INT_MODE reg field init failed\n");
+		return PTR_ERR(wiz->pma_cmn_refclk_int_mode);
+	}
+
+	wiz->pma_cmn_refclk_mode =
+		devm_regmap_field_alloc(dev, regmap, pma_cmn_refclk_mode);
+	if (IS_ERR(wiz->pma_cmn_refclk_mode)) {
+		dev_err(dev, "PMA_CMN_REFCLK_MODE reg field init failed\n");
+		return PTR_ERR(wiz->pma_cmn_refclk_mode);
+	}
+
+	clk_div_sel = &wiz->clk_div_sel[CMN_REFCLK_DIG_DIV];
+	clk_div_sel->field = devm_regmap_field_alloc(dev, regmap,
+						     pma_cmn_refclk_dig_div);
+	if (IS_ERR(clk_div_sel->field)) {
+		dev_err(dev, "PMA_CMN_REFCLK_DIG_DIV reg field init failed\n");
+		return PTR_ERR(clk_div_sel->field);
+	}
+
+	if (wiz->type == J721E_WIZ_16G) {
+		clk_div_sel = &wiz->clk_div_sel[CMN_REFCLK1_DIG_DIV];
+		clk_div_sel->field =
+			devm_regmap_field_alloc(dev, regmap,
+						pma_cmn_refclk1_dig_div);
+		if (IS_ERR(clk_div_sel->field)) {
+			dev_err(dev, "PMA_CMN_REFCLK1_DIG_DIV reg field init failed\n");
+			return PTR_ERR(clk_div_sel->field);
+		}
+	}
+
+	clk_mux_sel = &wiz->clk_mux_sel[PLL0_REFCLK];
+	clk_mux_sel->field = devm_regmap_field_alloc(dev, regmap,
+						     pll0_refclk_mux_sel);
+	if (IS_ERR(clk_mux_sel->field)) {
+		dev_err(dev, "PLL0_REFCLK_SEL reg field init failed\n");
+		return PTR_ERR(clk_mux_sel->field);
+	}
+
+	clk_mux_sel = &wiz->clk_mux_sel[PLL1_REFCLK];
+	clk_mux_sel->field = devm_regmap_field_alloc(dev, regmap,
+						     pll1_refclk_mux_sel);
+	if (IS_ERR(clk_mux_sel->field)) {
+		dev_err(dev, "PLL1_REFCLK_SEL reg field init failed\n");
+		return PTR_ERR(clk_mux_sel->field);
+	}
+
+	clk_mux_sel = &wiz->clk_mux_sel[REFCLK_DIG];
+	if (wiz->type == J721E_WIZ_10G)
+		clk_mux_sel->field =
+			devm_regmap_field_alloc(dev, regmap,
+						refclk_dig_sel_10g);
+	else
+		clk_mux_sel->field =
+			devm_regmap_field_alloc(dev, regmap,
+						refclk_dig_sel_16g);
+
+	if (IS_ERR(clk_mux_sel->field)) {
+		dev_err(dev, "REFCLK_DIG_SEL reg field init failed\n");
+		return PTR_ERR(clk_mux_sel->field);
+	}
+
+	for (i = 0; i < num_lanes; i++) {
+		wiz->p_enable[i] = devm_regmap_field_alloc(dev, regmap,
+							   p_enable[i]);
+		if (IS_ERR(wiz->p_enable[i])) {
+			dev_err(dev, "P%d_ENABLE reg field init failed\n", i);
+			return PTR_ERR(wiz->p_enable[i]);
+		}
+
+		wiz->p_align[i] = devm_regmap_field_alloc(dev, regmap,
+							  p_align[i]);
+		if (IS_ERR(wiz->p_align[i])) {
+			dev_err(dev, "P%d_ALIGN reg field init failed\n", i);
+			return PTR_ERR(wiz->p_align[i]);
+		}
+
+		wiz->p_raw_auto_start[i] =
+		  devm_regmap_field_alloc(dev, regmap, p_raw_auto_start[i]);
+		if (IS_ERR(wiz->p_raw_auto_start[i])) {
+			dev_err(dev, "P%d_RAW_AUTO_START reg field init fail\n",
+				i);
+			return PTR_ERR(wiz->p_raw_auto_start[i]);
+		}
+
+		wiz->p_standard_mode[i] =
+		  devm_regmap_field_alloc(dev, regmap, p_standard_mode[i]);
+		if (IS_ERR(wiz->p_standard_mode[i])) {
+			dev_err(dev, "P%d_STANDARD_MODE reg field init fail\n",
+				i);
+			return PTR_ERR(wiz->p_standard_mode[i]);
+		}
+	}
+
+	return 0;
+}
+
+static u8 wiz_clk_mux_get_parent(struct clk_hw *hw)
+{
+	struct wiz_clk_mux *mux = to_wiz_clk_mux(hw);
+	struct regmap_field *field = mux->field;
+	unsigned int val;
+
+	regmap_field_read(field, &val);
+	return clk_mux_val_to_index(hw, mux->table, 0, val);
+}
+
+static int wiz_clk_mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct wiz_clk_mux *mux = to_wiz_clk_mux(hw);
+	struct regmap_field *field = mux->field;
+	int val;
+
+	val = mux->table[index];
+	return regmap_field_write(field, val);
+}
+
+static const struct clk_ops wiz_clk_mux_ops = {
+	.set_parent = wiz_clk_mux_set_parent,
+	.get_parent = wiz_clk_mux_get_parent,
+};
+
+static int wiz_mux_clk_register(struct wiz *wiz, struct device_node *node,
+				struct regmap_field *field, u32 *table)
+{
+	struct device *dev = wiz->dev;
+	struct clk_init_data *init;
+	const char **parent_names;
+	unsigned int num_parents;
+	struct wiz_clk_mux *mux;
+	char clk_name[100];
+	struct clk *clk;
+	int ret;
+
+	mux = devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
+	if (!mux)
+		return -ENOMEM;
+
+	num_parents = of_clk_get_parent_count(node);
+	if (num_parents < 2) {
+		dev_err(dev, "SERDES clock must have parents\n");
+		return -EINVAL;
+	}
+
+	parent_names = devm_kzalloc(dev, (sizeof(char *) * num_parents),
+				    GFP_KERNEL);
+	if (!parent_names)
+		return -ENOMEM;
+
+	of_clk_parent_fill(node, parent_names, num_parents);
+
+	snprintf(clk_name, sizeof(clk_name), "%s_%s", dev_name(dev),
+		 node->name);
+
+	init = &mux->clk_data;
+
+	init->ops = &wiz_clk_mux_ops;
+	init->flags = CLK_SET_RATE_NO_REPARENT;
+	init->parent_names = parent_names;
+	init->num_parents = num_parents;
+	init->name = clk_name;
+
+	mux->field = field;
+	mux->table = table;
+	mux->hw.init = init;
+
+	clk = devm_clk_register(dev, &mux->hw);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = of_clk_add_provider(node, of_clk_src_simple_get, clk);
+	if (ret)
+		dev_err(dev, "Failed to add clock provider: %s\n", clk_name);
+
+	return ret;
+}
+
+static unsigned long wiz_clk_div_recalc_rate(struct clk_hw *hw,
+					     unsigned long parent_rate)
+{
+	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
+	struct regmap_field *field = div->field;
+	int val;
+
+	regmap_field_read(field, &val);
+
+	return divider_recalc_rate(hw, parent_rate, val, div->table, 0x0, 2);
+}
+
+static long wiz_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
+				   unsigned long *prate)
+{
+	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
+
+	return divider_round_rate(hw, rate, prate, div->table, 2, 0x0);
+}
+
+static int wiz_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long parent_rate)
+{
+	struct wiz_clk_divider *div = to_wiz_clk_div(hw);
+	struct regmap_field *field = div->field;
+	int val;
+
+	val = divider_get_val(rate, parent_rate, div->table, 2, 0x0);
+	if (val < 0)
+		return val;
+
+	return regmap_field_write(field, val);
+}
+
+static const struct clk_ops wiz_clk_div_ops = {
+	.recalc_rate = wiz_clk_div_recalc_rate,
+	.round_rate = wiz_clk_div_round_rate,
+	.set_rate = wiz_clk_div_set_rate,
+};
+
+static int wiz_div_clk_register(struct wiz *wiz, struct device_node *node,
+				struct regmap_field *field,
+				struct clk_div_table *table)
+{
+	struct device *dev = wiz->dev;
+	struct wiz_clk_divider *div;
+	struct clk_init_data *init;
+	const char **parent_names;
+	char clk_name[100];
+	struct clk *clk;
+	int ret;
+
+	div = devm_kzalloc(dev, sizeof(*div), GFP_KERNEL);
+	if (!div)
+		return -ENOMEM;
+
+	snprintf(clk_name, sizeof(clk_name), "%s_%s", dev_name(dev),
+		 node->name);
+
+	parent_names = devm_kzalloc(dev, sizeof(char *), GFP_KERNEL);
+	if (!parent_names)
+		return -ENOMEM;
+
+	of_clk_parent_fill(node, parent_names, 1);
+
+	init = &div->clk_data;
+
+	init->ops = &wiz_clk_div_ops;
+	init->flags = 0;
+	init->parent_names = parent_names;
+	init->num_parents = 1;
+	init->name = clk_name;
+
+	div->field = field;
+	div->table = table;
+	div->hw.init = init;
+
+	clk = devm_clk_register(dev, &div->hw);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	ret = of_clk_add_provider(node, of_clk_src_simple_get, clk);
+	if (ret)
+		dev_err(dev, "Failed to add clock provider: %s\n", clk_name);
+
+	return ret;
+}
+
+static void wiz_clock_cleanup(struct wiz *wiz, struct device_node *node)
+{
+	struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
+	struct device_node *clk_node;
+	int i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++) {
+		clk_node = of_get_child_by_name(node, clk_mux_sel[i].node_name);
+		of_clk_del_provider(clk_node);
+		of_node_put(clk_node);
+	}
+}
+
+static int wiz_clock_init(struct wiz *wiz, struct device_node *node)
+{
+	struct wiz_clk_mux_sel *clk_mux_sel = wiz->clk_mux_sel;
+	struct device *dev = wiz->dev;
+	struct device_node *clk_node;
+	const char *node_name;
+	unsigned long rate;
+	struct clk *clk;
+	int ret;
+	int i;
+
+	clk = devm_clk_get(dev, "core_ref_clk");
+	if (IS_ERR(clk)) {
+		dev_err(dev, "core_ref_clk clock not found\n");
+		ret = PTR_ERR(clk);
+		return ret;
+	}
+
+	rate = clk_get_rate(clk);
+	if (rate >= 100000000)
+		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x1);
+	else
+		regmap_field_write(wiz->pma_cmn_refclk_int_mode, 0x3);
+
+	clk = devm_clk_get(dev, "ext_ref_clk");
+	if (IS_ERR(clk)) {
+		dev_err(dev, "ext_ref_clk clock not found\n");
+		ret = PTR_ERR(clk);
+		return ret;
+	}
+
+	rate = clk_get_rate(clk);
+	if (rate >= 100000000)
+		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x0);
+	else
+		regmap_field_write(wiz->pma_cmn_refclk_mode, 0x2);
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++) {
+		node_name = clk_mux_sel[i].node_name;
+		clk_node = of_get_child_by_name(node, node_name);
+		if (!clk_node) {
+			dev_err(dev, "Unable to get %s node\n", node_name);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		ret = wiz_mux_clk_register(wiz, clk_node, clk_mux_sel[i].field,
+					   clk_mux_sel[i].table);
+		if (ret) {
+			dev_err(dev, "Failed to register %s clock\n",
+				node_name);
+			of_node_put(clk_node);
+			goto err;
+		}
+
+		of_node_put(clk_node);
+	}
+
+	for (i = 0; i < wiz->clk_div_sel_num; i++) {
+		node_name = clk_div_sel[i].node_name;
+		clk_node = of_get_child_by_name(node, node_name);
+		if (!clk_node) {
+			dev_err(dev, "Unable to get %s node\n", node_name);
+			ret = -EINVAL;
+			goto err;
+		}
+
+		ret = wiz_div_clk_register(wiz, clk_node, clk_div_sel[i].field,
+					   clk_div_sel[i].table);
+		if (ret) {
+			dev_err(dev, "Failed to register %s clock\n",
+				node_name);
+			of_node_put(clk_node);
+			goto err;
+		}
+
+		of_node_put(clk_node);
+	}
+
+	return 0;
+err:
+	wiz_clock_cleanup(wiz, node);
+
+	return ret;
+}
+
+static int wiz_phy_reset_assert(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	struct device *dev = rcdev->dev;
+	struct wiz *wiz = dev_get_drvdata(dev);
+	int ret = 0;
+
+	if (id == 0) {
+		ret = regmap_field_write(wiz->phy_reset_n, false);
+		return ret;
+	}
+
+	ret = regmap_field_write(wiz->p_enable[id - 1], false);
+	return ret;
+}
+
+static int wiz_phy_reset_deassert(struct reset_controller_dev *rcdev,
+				  unsigned long id)
+{
+	struct device *dev = rcdev->dev;
+	struct wiz *wiz = dev_get_drvdata(dev);
+	int ret;
+
+	if (id == 0) {
+		ret = regmap_field_write(wiz->phy_reset_n, true);
+		return ret;
+	}
+
+	ret = regmap_field_write(wiz->p_enable[id - 1], true);
+	return ret;
+}
+
+static const struct reset_control_ops wiz_phy_reset_ops = {
+	.assert = wiz_phy_reset_assert,
+	.deassert = wiz_phy_reset_deassert,
+};
+
+static struct regmap_config wiz_regmap_config = {
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.fast_io = true,
+};
+
+static const struct of_device_id wiz_id_table[] = {
+	{
+		.compatible = "ti,j721e-wiz-16g", .data = (void *)J721E_WIZ_16G
+	},
+	{
+		.compatible = "ti,j721e-wiz-10g", .data = (void *)J721E_WIZ_10G
+	},
+	{}
+};
+MODULE_DEVICE_TABLE(of, wiz_id_table);
+
+static int wiz_probe(struct platform_device *pdev)
+{
+	struct reset_controller_dev *phy_reset_dev;
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct platform_device *serdes_pdev;
+	struct device_node *child_node;
+	struct regmap *regmap;
+	struct resource res;
+	void __iomem *base;
+	struct wiz *wiz;
+	u32 num_lanes;
+	int ret;
+
+	wiz = devm_kzalloc(dev, sizeof(*wiz), GFP_KERNEL);
+	if (!wiz)
+		return -ENOMEM;
+
+	wiz->type = (enum wiz_type)of_device_get_match_data(dev);
+
+	child_node = of_get_child_by_name(node, "serdes");
+	if (!child_node) {
+		dev_err(dev, "Failed to get SERDES child DT node\n");
+		return -ENODEV;
+	}
+
+	ret = of_address_to_resource(child_node, 0, &res);
+	if (ret) {
+		dev_err(dev, "Failed to get memory resource\n");
+		goto err_addr_to_resource;
+	}
+
+	base = devm_ioremap(dev, res.start, resource_size(&res));
+	if (IS_ERR(base))
+		goto err_addr_to_resource;
+
+	regmap = devm_regmap_init_mmio(dev, base, &wiz_regmap_config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to initialize regmap\n");
+		ret = PTR_ERR(regmap);
+		goto err_addr_to_resource;
+	}
+
+	ret = of_property_read_u32(node, "num-lanes", &num_lanes);
+	if (ret) {
+		dev_err(dev, "Failed to read num-lanes property\n");
+		goto err_addr_to_resource;
+	}
+
+	if (num_lanes > WIZ_MAX_LANES) {
+		dev_err(dev, "Cannot support %d lanes\n", num_lanes);
+		goto err_addr_to_resource;
+	}
+
+	wiz->dev = dev;
+	wiz->regmap = regmap;
+	wiz->num_lanes = num_lanes;
+	if (wiz->type == J721E_WIZ_10G)
+		wiz->clk_mux_sel = clk_mux_sel_10g;
+	else
+		wiz->clk_mux_sel = clk_mux_sel_16g;
+
+	wiz->clk_div_sel = clk_div_sel;
+
+	if (wiz->type == J721E_WIZ_10G)
+		wiz->clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_10G;
+	else
+		wiz->clk_div_sel_num = WIZ_DIV_NUM_CLOCKS_16G;
+
+	platform_set_drvdata(pdev, wiz);
+
+	ret = wiz_regfield_init(wiz);
+	if (ret) {
+		dev_err(dev, "Failed to initialize regfields\n");
+		goto err_addr_to_resource;
+	}
+
+	phy_reset_dev = &wiz->wiz_phy_reset_dev;
+	phy_reset_dev->dev = dev;
+	phy_reset_dev->ops = &wiz_phy_reset_ops,
+	phy_reset_dev->owner = THIS_MODULE,
+	phy_reset_dev->of_node = node;
+	/* Reset for each of the lane and one for the entire SERDES */
+	phy_reset_dev->nr_resets = num_lanes + 1;
+
+	ret = devm_reset_controller_register(dev, phy_reset_dev);
+	if (ret < 0) {
+		dev_warn(dev, "Failed to register reset controller\n");
+		goto err_addr_to_resource;
+	}
+
+	pm_runtime_enable(dev);
+	ret = pm_runtime_get_sync(dev);
+	if (ret < 0) {
+		dev_err(dev, "pm_runtime_get_sync failed\n");
+		goto err_get_sync;
+	}
+
+	ret = wiz_clock_init(wiz, node);
+	if (ret < 0) {
+		dev_warn(dev, "Failed to initialize clocks\n");
+		goto err_get_sync;
+	}
+
+	serdes_pdev = of_platform_device_create(child_node, NULL, dev);
+	if (!serdes_pdev) {
+		dev_WARN(dev, "Unable to create SERDES platform device\n");
+		goto err_pdev_create;
+	}
+	wiz->serdes_pdev = serdes_pdev;
+
+	ret = wiz_init(wiz);
+	if (ret) {
+		dev_err(dev, "WIZ initialization failed\n");
+		goto err_wiz_init;
+	}
+
+	of_node_put(child_node);
+	return 0;
+
+err_wiz_init:
+	of_platform_device_destroy(&serdes_pdev->dev, NULL);
+
+err_pdev_create:
+	wiz_clock_cleanup(wiz, node);
+
+err_get_sync:
+	pm_runtime_put(dev);
+	pm_runtime_disable(dev);
+
+err_addr_to_resource:
+	of_node_put(child_node);
+
+	return ret;
+}
+
+static int wiz_remove(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = dev->of_node;
+	struct platform_device *serdes_pdev;
+	struct wiz *wiz;
+
+	wiz = dev_get_drvdata(dev);
+	serdes_pdev = wiz->serdes_pdev;
+
+	of_platform_device_destroy(&serdes_pdev->dev, NULL);
+	wiz_clock_cleanup(wiz, node);
+	pm_runtime_put(dev);
+	pm_runtime_disable(dev);
+
+	return 0;
+}
+
+static struct platform_driver wiz_driver = {
+	.probe		= wiz_probe,
+	.remove		= wiz_remove,
+	.driver		= {
+		.name	= "wiz",
+		.of_match_table = wiz_id_table,
+	},
+};
+module_platform_driver(wiz_driver);
+
+MODULE_AUTHOR("Texas Instruments Inc.");
+MODULE_DESCRIPTION("TI J721E WIZ driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
