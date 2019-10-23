Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE3FE267D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 00:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0UuxVsAre0kp2u/TJ6YZsKJ29gmPL5iPeVFlyo6K5wA=; b=Ljy2GT9K/yEoNp
	O3Gfl7lb+ybXsUP7D+9/c19azihF8zbMPh4A/EDBDBnmmyy3EIEj6G3+uuawvvTq0j54V1MnUhsn5
	gg15qMtmHpT9OV/Yq1YUL42eKbr0LFJ3BedBqQTGKz/N+FzC4Iqc9C7UqUduyDsDmzrcsovbKmDl4
	cJ6JfbCO6cqxa9uimAe/Zo6KiJg4GiG73tOI5LdVPG9RBYNn37ZcY6JnUFjEwL2IUzF7CwdprBJi8
	ofyivx7zl/8rHx8/sR6VAl42ek4OmK/BKbAwLj9+XZIxi/yGLKh9Qg7dlJA/xtLbXotjpFCUx5mxk
	k0qIkAVIWOh/M/vgD4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPIH-0006yE-H6; Wed, 23 Oct 2019 22:39:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPHe-0006O2-2b; Wed, 23 Oct 2019 22:39:17 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iNPHS-0004FB-2o; Thu, 24 Oct 2019 00:39:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com
Subject: [PATCH 3/3] phy/rockchip: Add support for Innosilicon MIPI/LVDS/TTL
 PHY
Date: Thu, 24 Oct 2019 00:38:51 +0200
Message-Id: <20191023223851.3030-3-heiko@sntech.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023223851.3030-1-heiko@sntech.de>
References: <20191023223851.3030-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_153914_429104_CADFE799 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wyon Bi <bivvy.bi@rock-chips.com>

The Innosilicon Video Combo PHY not only supports MIPI DSI,
but also LVDS and TTL functions with small die size and low
pin count. Customers can choose according to their own applications.

Signed-off-by: Wyon Bi <bivvy.bi@rock-chips.com>
[removed TTL mode for now, as it required a hook back into the dsi host]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/phy/rockchip/Kconfig                  |   8 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 805 ++++++++++++++++++
 3 files changed, 814 insertions(+)
 create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index c454c90cd99e..dbd2de4d28b1 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -35,6 +35,14 @@ config PHY_ROCKCHIP_INNO_USB2
 	help
 	  Support for Rockchip USB2.0 PHY with Innosilicon IP block.
 
+config PHY_ROCKCHIP_INNO_DSIDPHY
+	tristate "Rockchip Innosilicon MIPI/LVDS/TTL PHY driver"
+	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	select GENERIC_PHY
+	help
+	  Enable this to support the Rockchip MIPI/LVDS/TTL PHY with
+	  Innosilicon IP block.
+
 config PHY_ROCKCHIP_PCIE
 	tristate "Rockchip PCIe PHY Driver"
 	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
diff --git a/drivers/phy/rockchip/Makefile b/drivers/phy/rockchip/Makefile
index fd21cbaf40dd..9f59a81e4e0d 100644
--- a/drivers/phy/rockchip/Makefile
+++ b/drivers/phy/rockchip/Makefile
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 obj-$(CONFIG_PHY_ROCKCHIP_DP)		+= phy-rockchip-dp.o
 obj-$(CONFIG_PHY_ROCKCHIP_EMMC)		+= phy-rockchip-emmc.o
+obj-$(CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY)	+= phy-rockchip-inno-dsidphy.o
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_HDMI)	+= phy-rockchip-inno-hdmi.o
 obj-$(CONFIG_PHY_ROCKCHIP_INNO_USB2)	+= phy-rockchip-inno-usb2.o
 obj-$(CONFIG_PHY_ROCKCHIP_PCIE)		+= phy-rockchip-pcie.o
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
new file mode 100644
index 000000000000..fc729ecd3fe9
--- /dev/null
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -0,0 +1,805 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
+ *
+ * Author: Wyon Bi <bivvy.bi@rock-chips.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/clk.h>
+#include <linux/iopoll.h>
+#include <linux/clk-provider.h>
+#include <linux/delay.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/phy/phy.h>
+#include <linux/pm_runtime.h>
+#include <linux/mfd/syscon.h>
+
+#define PSEC_PER_SEC	1000000000000LL
+
+#define UPDATE(x, h, l)	(((x) << (l)) & GENMASK((h), (l)))
+
+/*
+ * The offset address[7:0] is distributed two parts, one from the bit7 to bit5
+ * is the first address, the other from the bit4 to bit0 is the second address.
+ * when you configure the registers, you must set both of them. The Clock Lane
+ * and Data Lane use the same registers with the same second address, but the
+ * first address is different.
+ */
+#define FIRST_ADDRESS(x)		(((x) & 0x7) << 5)
+#define SECOND_ADDRESS(x)		(((x) & 0x1f) << 0)
+#define PHY_REG(first, second)		(FIRST_ADDRESS(first) | \
+					 SECOND_ADDRESS(second))
+
+/* Analog Register Part: reg00 */
+#define BANDGAP_POWER_MASK			BIT(7)
+#define BANDGAP_POWER_DOWN			BIT(7)
+#define BANDGAP_POWER_ON			0
+#define LANE_EN_MASK				GENMASK(6, 2)
+#define LANE_EN_CK				BIT(6)
+#define LANE_EN_3				BIT(5)
+#define LANE_EN_2				BIT(4)
+#define LANE_EN_1				BIT(3)
+#define LANE_EN_0				BIT(2)
+#define POWER_WORK_MASK				GENMASK(1, 0)
+#define POWER_WORK_ENABLE			UPDATE(1, 1, 0)
+#define POWER_WORK_DISABLE			UPDATE(2, 1, 0)
+/* Analog Register Part: reg01 */
+#define REG_SYNCRST_MASK			BIT(2)
+#define REG_SYNCRST_RESET			BIT(2)
+#define REG_SYNCRST_NORMAL			0
+#define REG_LDOPD_MASK				BIT(1)
+#define REG_LDOPD_POWER_DOWN			BIT(1)
+#define REG_LDOPD_POWER_ON			0
+#define REG_PLLPD_MASK				BIT(0)
+#define REG_PLLPD_POWER_DOWN			BIT(0)
+#define REG_PLLPD_POWER_ON			0
+/* Analog Register Part: reg03 */
+#define REG_FBDIV_HI_MASK			BIT(5)
+#define REG_FBDIV_HI(x)				UPDATE((x >> 8), 5, 5)
+#define REG_PREDIV_MASK				GENMASK(4, 0)
+#define REG_PREDIV(x)				UPDATE(x, 4, 0)
+/* Analog Register Part: reg04 */
+#define REG_FBDIV_LO_MASK			GENMASK(7, 0)
+#define REG_FBDIV_LO(x)				UPDATE(x, 7, 0)
+/* Analog Register Part: reg05 */
+#define SAMPLE_CLOCK_PHASE_MASK			GENMASK(6, 4)
+#define SAMPLE_CLOCK_PHASE(x)			UPDATE(x, 6, 4)
+#define CLOCK_LANE_SKEW_PHASE_MASK		GENMASK(2, 0)
+#define CLOCK_LANE_SKEW_PHASE(x)		UPDATE(x, 2, 0)
+/* Analog Register Part: reg06 */
+#define DATA_LANE_3_SKEW_PHASE_MASK		GENMASK(6, 4)
+#define DATA_LANE_3_SKEW_PHASE(x)		UPDATE(x, 6, 4)
+#define DATA_LANE_2_SKEW_PHASE_MASK		GENMASK(2, 0)
+#define DATA_LANE_2_SKEW_PHASE(x)		UPDATE(x, 2, 0)
+/* Analog Register Part: reg07 */
+#define DATA_LANE_1_SKEW_PHASE_MASK		GENMASK(6, 4)
+#define DATA_LANE_1_SKEW_PHASE(x)		UPDATE(x, 6, 4)
+#define DATA_LANE_0_SKEW_PHASE_MASK		GENMASK(2, 0)
+#define DATA_LANE_0_SKEW_PHASE(x)		UPDATE(x, 2, 0)
+/* Analog Register Part: reg08 */
+#define SAMPLE_CLOCK_DIRECTION_MASK		BIT(4)
+#define SAMPLE_CLOCK_DIRECTION_REVERSE		BIT(4)
+#define SAMPLE_CLOCK_DIRECTION_FORWARD		0
+/* Digital Register Part: reg00 */
+#define REG_DIG_RSTN_MASK			BIT(0)
+#define REG_DIG_RSTN_NORMAL			BIT(0)
+#define REG_DIG_RSTN_RESET			0
+/* Digital Register Part: reg01 */
+#define INVERT_TXCLKESC_MASK			BIT(1)
+#define INVERT_TXCLKESC_ENABLE			BIT(1)
+#define INVERT_TXCLKESC_DISABLE			0
+#define INVERT_TXBYTECLKHS_MASK			BIT(0)
+#define INVERT_TXBYTECLKHS_ENABLE		BIT(0)
+#define INVERT_TXBYTECLKHS_DISABLE		0
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg05 */
+#define T_LPX_CNT_MASK				GENMASK(5, 0)
+#define T_LPX_CNT(x)				UPDATE(x, 5, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg06 */
+#define T_HS_PREPARE_CNT_MASK			GENMASK(6, 0)
+#define T_HS_PREPARE_CNT(x)			UPDATE(x, 6, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg07 */
+#define T_HS_ZERO_CNT_MASK			GENMASK(5, 0)
+#define T_HS_ZERO_CNT(x)			UPDATE(x, 5, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg08 */
+#define T_HS_TRAIL_CNT_MASK			GENMASK(6, 0)
+#define T_HS_TRAIL_CNT(x)			UPDATE(x, 6, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg09 */
+#define T_HS_EXIT_CNT_MASK			GENMASK(4, 0)
+#define T_HS_EXIT_CNT(x)			UPDATE(x, 4, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg0a */
+#define T_CLK_POST_CNT_MASK			GENMASK(3, 0)
+#define T_CLK_POST_CNT(x)			UPDATE(x, 3, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg0c */
+#define LPDT_TX_PPI_SYNC_MASK			BIT(2)
+#define LPDT_TX_PPI_SYNC_ENABLE			BIT(2)
+#define LPDT_TX_PPI_SYNC_DISABLE		0
+#define T_WAKEUP_CNT_HI_MASK			GENMASK(1, 0)
+#define T_WAKEUP_CNT_HI(x)			UPDATE(x, 1, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg0d */
+#define T_WAKEUP_CNT_LO_MASK			GENMASK(7, 0)
+#define T_WAKEUP_CNT_LO(x)			UPDATE(x, 7, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg0e */
+#define T_CLK_PRE_CNT_MASK			GENMASK(3, 0)
+#define T_CLK_PRE_CNT(x)			UPDATE(x, 3, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg10 */
+#define T_TA_GO_CNT_MASK			GENMASK(5, 0)
+#define T_TA_GO_CNT(x)				UPDATE(x, 5, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg11 */
+#define T_TA_SURE_CNT_MASK			GENMASK(5, 0)
+#define T_TA_SURE_CNT(x)			UPDATE(x, 5, 0)
+/* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg12 */
+#define T_TA_WAIT_CNT_MASK			GENMASK(5, 0)
+#define T_TA_WAIT_CNT(x)			UPDATE(x, 5, 0)
+/* LVDS Register Part: reg00 */
+#define LVDS_DIGITAL_INTERNAL_RESET_MASK	BIT(2)
+#define LVDS_DIGITAL_INTERNAL_RESET_DISABLE	BIT(2)
+#define LVDS_DIGITAL_INTERNAL_RESET_ENABLE	0
+/* LVDS Register Part: reg01 */
+#define LVDS_DIGITAL_INTERNAL_ENABLE_MASK	BIT(7)
+#define LVDS_DIGITAL_INTERNAL_ENABLE		BIT(7)
+#define LVDS_DIGITAL_INTERNAL_DISABLE		0
+/* LVDS Register Part: reg03 */
+#define MODE_ENABLE_MASK			GENMASK(2, 0)
+#define TTL_MODE_ENABLE				BIT(2)
+#define LVDS_MODE_ENABLE			BIT(1)
+#define MIPI_MODE_ENABLE			BIT(0)
+/* LVDS Register Part: reg0b */
+#define LVDS_LANE_EN_MASK			GENMASK(7, 3)
+#define LVDS_DATA_LANE0_EN			BIT(7)
+#define LVDS_DATA_LANE1_EN			BIT(6)
+#define LVDS_DATA_LANE2_EN			BIT(5)
+#define LVDS_DATA_LANE3_EN			BIT(4)
+#define LVDS_CLK_LANE_EN			BIT(3)
+#define LVDS_PLL_POWER_MASK			BIT(2)
+#define LVDS_PLL_POWER_OFF			BIT(2)
+#define LVDS_PLL_POWER_ON			0
+#define LVDS_BANDGAP_POWER_MASK			BIT(0)
+#define LVDS_BANDGAP_POWER_DOWN			BIT(0)
+#define LVDS_BANDGAP_POWER_ON			0
+
+#define DSI_PHY_RSTZ		0xa0
+#define PHY_ENABLECLK		BIT(2)
+#define DSI_PHY_STATUS		0xb0
+#define PHY_LOCK		BIT(0)
+
+struct mipi_dphy_timing {
+	unsigned int clkmiss;
+	unsigned int clkpost;
+	unsigned int clkpre;
+	unsigned int clkprepare;
+	unsigned int clksettle;
+	unsigned int clktermen;
+	unsigned int clktrail;
+	unsigned int clkzero;
+	unsigned int dtermen;
+	unsigned int eot;
+	unsigned int hsexit;
+	unsigned int hsprepare;
+	unsigned int hszero;
+	unsigned int hssettle;
+	unsigned int hsskip;
+	unsigned int hstrail;
+	unsigned int init;
+	unsigned int lpx;
+	unsigned int taget;
+	unsigned int tago;
+	unsigned int tasure;
+	unsigned int wakeup;
+};
+
+struct inno_dsidphy {
+	struct device *dev;
+	struct clk *ref_clk;
+	struct clk *pclk_phy;
+	struct clk *pclk_host;
+	void __iomem *phy_base;
+	void __iomem *host_base;
+	struct reset_control *rst;
+	enum phy_mode mode;
+
+	struct {
+		struct clk_hw hw;
+		u8 prediv;
+		u16 fbdiv;
+		unsigned long rate;
+	} pll;
+};
+
+enum {
+	REGISTER_PART_ANALOG,
+	REGISTER_PART_DIGITAL,
+	REGISTER_PART_CLOCK_LANE,
+	REGISTER_PART_DATA0_LANE,
+	REGISTER_PART_DATA1_LANE,
+	REGISTER_PART_DATA2_LANE,
+	REGISTER_PART_DATA3_LANE,
+	REGISTER_PART_LVDS,
+};
+
+static inline struct inno_dsidphy *hw_to_inno(struct clk_hw *hw)
+{
+	return container_of(hw, struct inno_dsidphy, pll.hw);
+}
+
+static void phy_update_bits(struct inno_dsidphy *inno,
+			    u8 first, u8 second, u8 mask, u8 val)
+{
+	u32 reg = PHY_REG(first, second) << 2;
+	unsigned int tmp, orig;
+
+	orig = readl(inno->phy_base + reg);
+	tmp = orig & ~mask;
+	tmp |= val & mask;
+	writel(tmp, inno->phy_base + reg);
+}
+
+static void mipi_dphy_timing_get_default(struct mipi_dphy_timing *timing,
+					 unsigned long period)
+{
+	/* Global Operation Timing Parameters */
+	timing->clkmiss = 0;
+	timing->clkpost = 70000 + 52 * period;
+	timing->clkpre = 8 * period;
+	timing->clkprepare = 65000;
+	timing->clksettle = 95000;
+	timing->clktermen = 0;
+	timing->clktrail = 80000;
+	timing->clkzero = 260000;
+	timing->dtermen = 0;
+	timing->eot = 0;
+	timing->hsexit = 120000;
+	timing->hsprepare = 65000 + 4 * period;
+	timing->hszero = 145000 + 6 * period;
+	timing->hssettle = 85000 + 6 * period;
+	timing->hsskip = 40000;
+	timing->hstrail = max(8 * period, 60000 + 4 * period);
+	timing->init = 100000000;
+	timing->lpx = 60000;
+	timing->taget = 5 * timing->lpx;
+	timing->tago = 4 * timing->lpx;
+	timing->tasure = 2 * timing->lpx;
+	timing->wakeup = 1000000000;
+}
+
+static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
+{
+	struct mipi_dphy_timing gotp;
+	const struct {
+		unsigned long rate;
+		u8 hs_prepare;
+		u8 clk_lane_hs_zero;
+		u8 data_lane_hs_zero;
+		u8 hs_trail;
+	} timings[] = {
+		{ 110000000, 0x20, 0x16, 0x02, 0x22},
+		{ 150000000, 0x06, 0x16, 0x03, 0x45},
+		{ 200000000, 0x18, 0x17, 0x04, 0x0b},
+		{ 250000000, 0x05, 0x17, 0x05, 0x16},
+		{ 300000000, 0x51, 0x18, 0x06, 0x2c},
+		{ 400000000, 0x64, 0x19, 0x07, 0x33},
+		{ 500000000, 0x20, 0x1b, 0x07, 0x4e},
+		{ 600000000, 0x6a, 0x1d, 0x08, 0x3a},
+		{ 700000000, 0x3e, 0x1e, 0x08, 0x6a},
+		{ 800000000, 0x21, 0x1f, 0x09, 0x29},
+		{1000000000, 0x09, 0x20, 0x09, 0x27},
+	};
+	u32 t_txbyteclkhs, t_txclkesc, ui;
+	u32 txbyteclkhs, txclkesc, esc_clk_div;
+	u32 hs_exit, clk_post, clk_pre, wakeup, lpx, ta_go, ta_sure, ta_wait;
+	u32 hs_prepare, hs_trail, hs_zero, clk_lane_hs_zero, data_lane_hs_zero;
+	unsigned int i;
+
+	/* Select MIPI mode */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x03,
+			MODE_ENABLE_MASK, MIPI_MODE_ENABLE);
+	/* Configure PLL */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x03,
+			REG_PREDIV_MASK, REG_PREDIV(inno->pll.prediv));
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x03,
+			REG_FBDIV_HI_MASK, REG_FBDIV_HI(inno->pll.fbdiv));
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x04,
+			REG_FBDIV_LO_MASK, REG_FBDIV_LO(inno->pll.fbdiv));
+	/* Enable PLL and LDO */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x01,
+			REG_LDOPD_MASK | REG_PLLPD_MASK,
+			REG_LDOPD_POWER_ON | REG_PLLPD_POWER_ON);
+	/* Reset analog */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x01,
+			REG_SYNCRST_MASK, REG_SYNCRST_RESET);
+	udelay(1);
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x01,
+			REG_SYNCRST_MASK, REG_SYNCRST_NORMAL);
+	/* Reset digital */
+	phy_update_bits(inno, REGISTER_PART_DIGITAL, 0x00,
+			REG_DIG_RSTN_MASK, REG_DIG_RSTN_RESET);
+	udelay(1);
+	phy_update_bits(inno, REGISTER_PART_DIGITAL, 0x00,
+			REG_DIG_RSTN_MASK, REG_DIG_RSTN_NORMAL);
+
+	txbyteclkhs = inno->pll.rate / 8;
+	t_txbyteclkhs = div_u64(PSEC_PER_SEC, txbyteclkhs);
+
+	esc_clk_div = DIV_ROUND_UP(txbyteclkhs, 20000000);
+	txclkesc = txbyteclkhs / esc_clk_div;
+	t_txclkesc = div_u64(PSEC_PER_SEC, txclkesc);
+
+	ui = div_u64(PSEC_PER_SEC, inno->pll.rate);
+
+	memset(&gotp, 0, sizeof(gotp));
+	mipi_dphy_timing_get_default(&gotp, ui);
+
+	/*
+	 * The value of counter for HS Ths-exit
+	 * Ths-exit = Tpin_txbyteclkhs * value
+	 */
+	hs_exit = DIV_ROUND_UP(gotp.hsexit, t_txbyteclkhs);
+	/*
+	 * The value of counter for HS Tclk-post
+	 * Tclk-post = Tpin_txbyteclkhs * value
+	 */
+	clk_post = DIV_ROUND_UP(gotp.clkpost, t_txbyteclkhs);
+	/*
+	 * The value of counter for HS Tclk-pre
+	 * Tclk-pre = Tpin_txbyteclkhs * value
+	 */
+	clk_pre = DIV_ROUND_UP(gotp.clkpre, t_txbyteclkhs);
+
+	/*
+	 * The value of counter for HS Tlpx Time
+	 * Tlpx = Tpin_txbyteclkhs * (2 + value)
+	 */
+	lpx = DIV_ROUND_UP(gotp.lpx, t_txbyteclkhs);
+	if (lpx >= 2)
+		lpx -= 2;
+
+	/*
+	 * The value of counter for HS Tta-go
+	 * Tta-go for turnaround
+	 * Tta-go = Ttxclkesc * value
+	 */
+	ta_go = DIV_ROUND_UP(gotp.tago, t_txclkesc);
+	/*
+	 * The value of counter for HS Tta-sure
+	 * Tta-sure for turnaround
+	 * Tta-sure = Ttxclkesc * value
+	 */
+	ta_sure = DIV_ROUND_UP(gotp.tasure, t_txclkesc);
+	/*
+	 * The value of counter for HS Tta-wait
+	 * Tta-wait for turnaround
+	 * Tta-wait = Ttxclkesc * value
+	 */
+	ta_wait = DIV_ROUND_UP(gotp.taget, t_txclkesc);
+
+	for (i = 0; i < ARRAY_SIZE(timings); i++)
+		if (inno->pll.rate <= timings[i].rate)
+			break;
+
+	if (i == ARRAY_SIZE(timings))
+		--i;
+
+	hs_prepare = timings[i].hs_prepare;
+	hs_trail = timings[i].hs_trail;
+	clk_lane_hs_zero = timings[i].clk_lane_hs_zero;
+	data_lane_hs_zero = timings[i].data_lane_hs_zero;
+	wakeup = 0x3ff;
+
+	for (i = REGISTER_PART_CLOCK_LANE; i <= REGISTER_PART_DATA3_LANE; i++) {
+		if (i == REGISTER_PART_CLOCK_LANE)
+			hs_zero = clk_lane_hs_zero;
+		else
+			hs_zero = data_lane_hs_zero;
+
+		phy_update_bits(inno, i, 0x05, T_LPX_CNT_MASK,
+				T_LPX_CNT(lpx));
+		phy_update_bits(inno, i, 0x06, T_HS_PREPARE_CNT_MASK,
+				T_HS_PREPARE_CNT(hs_prepare));
+		phy_update_bits(inno, i, 0x07, T_HS_ZERO_CNT_MASK,
+				T_HS_ZERO_CNT(hs_zero));
+		phy_update_bits(inno, i, 0x08, T_HS_TRAIL_CNT_MASK,
+				T_HS_TRAIL_CNT(hs_trail));
+		phy_update_bits(inno, i, 0x09, T_HS_EXIT_CNT_MASK,
+				T_HS_EXIT_CNT(hs_exit));
+		phy_update_bits(inno, i, 0x0a, T_CLK_POST_CNT_MASK,
+				T_CLK_POST_CNT(clk_post));
+		phy_update_bits(inno, i, 0x0e, T_CLK_PRE_CNT_MASK,
+				T_CLK_PRE_CNT(clk_pre));
+		phy_update_bits(inno, i, 0x0c, T_WAKEUP_CNT_HI_MASK,
+				T_WAKEUP_CNT_HI(wakeup >> 8));
+		phy_update_bits(inno, i, 0x0d, T_WAKEUP_CNT_LO_MASK,
+				T_WAKEUP_CNT_LO(wakeup));
+		phy_update_bits(inno, i, 0x10, T_TA_GO_CNT_MASK,
+				T_TA_GO_CNT(ta_go));
+		phy_update_bits(inno, i, 0x11, T_TA_SURE_CNT_MASK,
+				T_TA_SURE_CNT(ta_sure));
+		phy_update_bits(inno, i, 0x12, T_TA_WAIT_CNT_MASK,
+				T_TA_WAIT_CNT(ta_wait));
+	}
+
+	/* Enable all lanes on analog part */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x00,
+			LANE_EN_MASK, LANE_EN_CK | LANE_EN_3 | LANE_EN_2 |
+			LANE_EN_1 | LANE_EN_0);
+}
+
+static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
+{
+	u8 prediv = 2;
+	u16 fbdiv = 28;
+
+	/* Sample clock reverse direction */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x08,
+			SAMPLE_CLOCK_DIRECTION_MASK,
+			SAMPLE_CLOCK_DIRECTION_REVERSE);
+
+	/* Select LVDS mode */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x03,
+			MODE_ENABLE_MASK, LVDS_MODE_ENABLE);
+	/* Configure PLL */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x03,
+			REG_PREDIV_MASK, REG_PREDIV(prediv));
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x03,
+			REG_FBDIV_HI_MASK, REG_FBDIV_HI(fbdiv));
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x04,
+			REG_FBDIV_LO_MASK, REG_FBDIV_LO(fbdiv));
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x08, 0xff, 0xfc);
+	/* Enable PLL and Bandgap */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x0b,
+			LVDS_PLL_POWER_MASK | LVDS_BANDGAP_POWER_MASK,
+			LVDS_PLL_POWER_ON | LVDS_BANDGAP_POWER_ON);
+
+	msleep(20);
+
+	/* Reset LVDS digital logic */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x00,
+			LVDS_DIGITAL_INTERNAL_RESET_MASK,
+			LVDS_DIGITAL_INTERNAL_RESET_ENABLE);
+	udelay(1);
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x00,
+			LVDS_DIGITAL_INTERNAL_RESET_MASK,
+			LVDS_DIGITAL_INTERNAL_RESET_DISABLE);
+	/* Enable LVDS digital logic */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x01,
+			LVDS_DIGITAL_INTERNAL_ENABLE_MASK,
+			LVDS_DIGITAL_INTERNAL_ENABLE);
+	/* Enable LVDS analog driver */
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x0b,
+			LVDS_LANE_EN_MASK, LVDS_CLK_LANE_EN |
+			LVDS_DATA_LANE0_EN | LVDS_DATA_LANE1_EN |
+			LVDS_DATA_LANE2_EN | LVDS_DATA_LANE3_EN);
+}
+
+static int inno_dsidphy_power_on(struct phy *phy)
+{
+	struct inno_dsidphy *inno = phy_get_drvdata(phy);
+
+	clk_prepare_enable(inno->pclk_phy);
+	pm_runtime_get_sync(inno->dev);
+
+	/* Bandgap power on */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x00,
+			BANDGAP_POWER_MASK, BANDGAP_POWER_ON);
+	/* Enable power work */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x00,
+			POWER_WORK_MASK, POWER_WORK_ENABLE);
+
+	switch (inno->mode) {
+	case PHY_MODE_MIPI_DPHY:
+		inno_dsidphy_mipi_mode_enable(inno);
+		break;
+	case PHY_MODE_LVDS:
+		inno_dsidphy_lvds_mode_enable(inno);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int inno_dsidphy_power_off(struct phy *phy)
+{
+	struct inno_dsidphy *inno = phy_get_drvdata(phy);
+
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x00, LANE_EN_MASK, 0);
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x01,
+			REG_LDOPD_MASK | REG_PLLPD_MASK,
+			REG_LDOPD_POWER_DOWN | REG_PLLPD_POWER_DOWN);
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x00,
+			POWER_WORK_MASK, POWER_WORK_DISABLE);
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x00,
+			BANDGAP_POWER_MASK, BANDGAP_POWER_DOWN);
+
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x0b, LVDS_LANE_EN_MASK, 0);
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x01,
+			LVDS_DIGITAL_INTERNAL_ENABLE_MASK,
+			LVDS_DIGITAL_INTERNAL_DISABLE);
+	phy_update_bits(inno, REGISTER_PART_LVDS, 0x0b,
+			LVDS_PLL_POWER_MASK | LVDS_BANDGAP_POWER_MASK,
+			LVDS_PLL_POWER_OFF | LVDS_BANDGAP_POWER_DOWN);
+
+	pm_runtime_put(inno->dev);
+	clk_disable_unprepare(inno->pclk_phy);
+
+	return 0;
+}
+
+static int inno_dsidphy_set_mode(struct phy *phy, enum phy_mode mode,
+				   int submode)
+{
+	struct inno_dsidphy *inno = phy_get_drvdata(phy);
+
+	switch (mode) {
+	case PHY_MODE_MIPI_DPHY:
+	case PHY_MODE_LVDS:
+		inno->mode = mode;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct phy_ops inno_dsidphy_ops = {
+	.set_mode = inno_dsidphy_set_mode,
+	.power_on = inno_dsidphy_power_on,
+	.power_off = inno_dsidphy_power_off,
+	.owner = THIS_MODULE,
+};
+
+static unsigned long inno_dsidphy_pll_round_rate(struct inno_dsidphy *inno,
+						   unsigned long prate,
+						   unsigned long rate,
+						   u8 *prediv, u16 *fbdiv)
+{
+	unsigned long best_freq = 0;
+	unsigned long fref, fout;
+	u8 min_prediv, max_prediv;
+	u8 _prediv, best_prediv = 1;
+	u16 _fbdiv, best_fbdiv = 1;
+	u32 min_delta = UINT_MAX;
+
+	/*
+	 * The PLL output frequency can be calculated using a simple formula:
+	 * PLL_Output_Frequency = (FREF / PREDIV * FBDIV) / 2
+	 * PLL_Output_Frequency: it is equal to DDR-Clock-Frequency * 2
+	 */
+	fref = prate / 2;
+	if (rate > 1000000000UL)
+		fout = 1000000000UL;
+	else
+		fout = rate;
+
+	/* 5Mhz < Fref / prediv < 40MHz */
+	min_prediv = DIV_ROUND_UP(fref, 40000000);
+	max_prediv = fref / 5000000;
+
+	for (_prediv = min_prediv; _prediv <= max_prediv; _prediv++) {
+		u64 tmp;
+		u32 delta;
+
+		tmp = (u64)fout * _prediv;
+		do_div(tmp, fref);
+		_fbdiv = tmp;
+
+		/*
+		 * The possible settings of feedback divider are
+		 * 12, 13, 14, 16, ~ 511
+		 */
+		if (_fbdiv == 15)
+			continue;
+
+		if (_fbdiv < 12 || _fbdiv > 511)
+			continue;
+
+		tmp = (u64)_fbdiv * fref;
+		do_div(tmp, _prediv);
+
+		delta = abs(fout - tmp);
+		if (!delta) {
+			best_prediv = _prediv;
+			best_fbdiv = _fbdiv;
+			best_freq = tmp;
+			break;
+		} else if (delta < min_delta) {
+			best_prediv = _prediv;
+			best_fbdiv = _fbdiv;
+			best_freq = tmp;
+			min_delta = delta;
+		}
+	}
+
+	if (best_freq) {
+		*prediv = best_prediv;
+		*fbdiv = best_fbdiv;
+	}
+
+	return best_freq;
+}
+
+static long inno_dsidphy_pll_clk_round_rate(struct clk_hw *hw,
+					      unsigned long rate,
+					      unsigned long *prate)
+{
+	struct inno_dsidphy *inno = hw_to_inno(hw);
+	unsigned long fout;
+	u16 fbdiv = 1;
+	u8 prediv = 1;
+
+	fout = inno_dsidphy_pll_round_rate(inno, *prate, rate,
+					     &prediv, &fbdiv);
+
+	return fout;
+}
+
+static int inno_dsidphy_pll_clk_set_rate(struct clk_hw *hw,
+					   unsigned long rate,
+					   unsigned long parent_rate)
+{
+	struct inno_dsidphy *inno = hw_to_inno(hw);
+	unsigned long fout;
+	u16 fbdiv = 1;
+	u8 prediv = 1;
+
+	fout = inno_dsidphy_pll_round_rate(inno, parent_rate, rate,
+					     &prediv, &fbdiv);
+
+	dev_dbg(inno->dev, "fin=%lu, fout=%lu, prediv=%u, fbdiv=%u\n",
+		parent_rate, fout, prediv, fbdiv);
+
+	inno->pll.prediv = prediv;
+	inno->pll.fbdiv = fbdiv;
+	inno->pll.rate = fout;
+
+	return 0;
+}
+
+static unsigned long
+inno_dsidphy_pll_clk_recalc_rate(struct clk_hw *hw, unsigned long prate)
+{
+	struct inno_dsidphy *inno = hw_to_inno(hw);
+
+	/* PLL_Output_Frequency = (FREF / PREDIV * FBDIV) / 2 */
+	return (prate / inno->pll.prediv * inno->pll.fbdiv) / 2;
+}
+
+static const struct clk_ops inno_dsidphy_pll_clk_ops = {
+	.round_rate = inno_dsidphy_pll_clk_round_rate,
+	.set_rate = inno_dsidphy_pll_clk_set_rate,
+	.recalc_rate = inno_dsidphy_pll_clk_recalc_rate,
+};
+
+static int inno_dsidphy_pll_register(struct inno_dsidphy *inno)
+{
+	struct device *dev = inno->dev;
+	struct clk *clk;
+	const char *parent_name;
+	struct clk_init_data init;
+	int ret;
+
+	parent_name = __clk_get_name(inno->ref_clk);
+
+	init.name = "mipi_dphy_pll";
+	ret = of_property_read_string(dev->of_node, "clock-output-names",
+				      &init.name);
+	if (ret < 0)
+		dev_dbg(dev, "phy should set clock-output-names property\n");
+
+	init.ops = &inno_dsidphy_pll_clk_ops;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
+	init.flags = 0;
+
+	inno->pll.hw.init = &init;
+	clk = devm_clk_register(dev, &inno->pll.hw);
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
+		dev_err(dev, "failed to register PLL: %d\n", ret);
+		return ret;
+	}
+
+	return devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
+					   &inno->pll.hw);
+}
+
+static int inno_dsidphy_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct inno_dsidphy *inno;
+	struct phy_provider *phy_provider;
+	struct phy *phy;
+	int ret;
+
+	inno = devm_kzalloc(dev, sizeof(*inno), GFP_KERNEL);
+	if (!inno)
+		return -ENOMEM;
+
+	inno->dev = dev;
+	platform_set_drvdata(pdev, inno);
+
+	inno->phy_base = devm_platform_ioremap_resource(pdev, 0);
+	if (!inno->phy_base)
+		return -ENOMEM;
+
+	inno->ref_clk = devm_clk_get(dev, "ref");
+	if (IS_ERR(inno->ref_clk)) {
+		ret = PTR_ERR(inno->ref_clk);
+		dev_err(dev, "failed to get ref clock: %d\n", ret);
+		return ret;
+	}
+
+	inno->pclk_phy = devm_clk_get(dev, "pclk");
+	if (IS_ERR(inno->pclk_phy)) {
+		ret = PTR_ERR(inno->pclk_phy);
+		dev_err(dev, "failed to get phy pclk: %d\n", ret);
+		return ret;
+	}
+
+	inno->rst = devm_reset_control_get(dev, "apb");
+	if (IS_ERR(inno->rst)) {
+		ret = PTR_ERR(inno->rst);
+		dev_err(dev, "failed to get system reset control: %d\n", ret);
+		return ret;
+	}
+
+	phy = devm_phy_create(dev, NULL, &inno_dsidphy_ops);
+	if (IS_ERR(phy)) {
+		ret = PTR_ERR(phy);
+		dev_err(dev, "failed to create phy: %d\n", ret);
+		return ret;
+	}
+
+	phy_set_drvdata(phy, inno);
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider)) {
+		ret = PTR_ERR(phy_provider);
+		dev_err(dev, "failed to register phy provider: %d\n", ret);
+		return ret;
+	}
+
+	ret = inno_dsidphy_pll_register(inno);
+	if (ret)
+		return ret;
+
+	pm_runtime_enable(dev);
+
+	return 0;
+}
+
+static int inno_dsidphy_remove(struct platform_device *pdev)
+{
+	struct inno_dsidphy *inno = platform_get_drvdata(pdev);
+
+	pm_runtime_disable(inno->dev);
+
+	return 0;
+}
+
+static const struct of_device_id inno_dsidphy_of_match[] = {
+	{ .compatible = "rockchip,px30-dsi-dphy", },
+	{ .compatible = "rockchip,rk3128-dsi-dphy", },
+	{ .compatible = "rockchip,rk3368-dsi-dphy", },
+	{}
+};
+MODULE_DEVICE_TABLE(of, inno_dsidphy_of_match);
+
+static struct platform_driver inno_dsidphy_driver = {
+	.driver = {
+		.name = "inno-dsidphy",
+		.of_match_table	= of_match_ptr(inno_dsidphy_of_match),
+	},
+	.probe = inno_dsidphy_probe,
+	.remove = inno_dsidphy_remove,
+};
+module_platform_driver(inno_dsidphy_driver);
+
+MODULE_AUTHOR("Wyon Bi <bivvy.bi@rock-chips.com>");
+MODULE_DESCRIPTION("Innosilicon MIPI/LVDS/TTL Video Combo PHY driver");
+MODULE_LICENSE("GPL v2");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
