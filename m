Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF02EF3C90
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 01:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zvLKa8EvNtV4xUvXQb1pwiM9qGNKme+K3zH4/28n6lY=; b=kBpo6fud8zJAUL
	/A7QDyFwTHqXDcQ6NOG2qji6UOy/iXvBOLSCV62YQGc+TIBmJ2tXTgxYeSCetbkFPlo7Znd6DjNtv
	p01Z2FAaqw+zXmaY3/mODFWtT5aGFH8mfIrZgFkgsLTj5dAy3gpkxRrZyV73vFD068U0Tmgp9+1wu
	fBSbmKHOghovFNK04MW769pCo4lZP9ILV4nit+g3e6NvFFFk7ykoXTKODGFCIok8iSPRUO4vneBBQ
	t8jBZslCkHnNObDBpSOKnGfvpFPnlG7VtusjZTFg87kKZjPNG9ckLxyRzf3PJks3sLKbAW2Y9pD0Q
	vcrTla5F0OAkbMQoQpmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSroC-0001KV-K9; Fri, 08 Nov 2019 00:07:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrnj-000172-1H; Fri, 08 Nov 2019 00:06:58 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrnd-00069o-BA; Fri, 08 Nov 2019 01:06:49 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: kishon@ti.com
Subject: [PATCH 2/2] phy/rockchip: inno-dsidphy: generalize parameter handling
Date: Fri,  8 Nov 2019 01:06:40 +0100
Message-Id: <20191108000640.8775-2-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
References: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160655_372174_B401D1B5 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During review it came to light that exposing the pll clock outside is
not the right approach and struct phy_configure_opts_mipi_dphy exists
just for that reason to transfer parameters to the phy.

So drop the exposed clock and rely on the phy configure options
to bring in the correct rate. That way we can also just drop the
open coded timing struct and default values function.

Fixes: b7535a3bc0ba ("phy/rockchip: Add support for Innosilicon MIPI/LVDS/TTL PHY")
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
Hi Kishon,

this should ideally get into 5.5 as a fix for the previous change
so that the binding doesn't accidentially get used.

Thanks
Heiko

 drivers/phy/rockchip/Kconfig                  |   1 +
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 319 ++++++------------
 2 files changed, 100 insertions(+), 220 deletions(-)

diff --git a/drivers/phy/rockchip/Kconfig b/drivers/phy/rockchip/Kconfig
index dbd2de4d28b1..0824b9dd5683 100644
--- a/drivers/phy/rockchip/Kconfig
+++ b/drivers/phy/rockchip/Kconfig
@@ -39,6 +39,7 @@ config PHY_ROCKCHIP_INNO_DSIDPHY
 	tristate "Rockchip Innosilicon MIPI/LVDS/TTL PHY driver"
 	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
 	select GENERIC_PHY
+	select GENERIC_PHY_MIPI_DPHY
 	help
 	  Enable this to support the Rockchip MIPI/LVDS/TTL PHY with
 	  Innosilicon IP block.
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index fc729ecd3fe9..a7c6c940a3a8 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -16,6 +16,7 @@
 #include <linux/platform_device.h>
 #include <linux/reset.h>
 #include <linux/phy/phy.h>
+#include <linux/phy/phy-mipi-dphy.h>
 #include <linux/pm_runtime.h>
 #include <linux/mfd/syscon.h>
 
@@ -167,31 +168,6 @@
 #define DSI_PHY_STATUS		0xb0
 #define PHY_LOCK		BIT(0)
 
-struct mipi_dphy_timing {
-	unsigned int clkmiss;
-	unsigned int clkpost;
-	unsigned int clkpre;
-	unsigned int clkprepare;
-	unsigned int clksettle;
-	unsigned int clktermen;
-	unsigned int clktrail;
-	unsigned int clkzero;
-	unsigned int dtermen;
-	unsigned int eot;
-	unsigned int hsexit;
-	unsigned int hsprepare;
-	unsigned int hszero;
-	unsigned int hssettle;
-	unsigned int hsskip;
-	unsigned int hstrail;
-	unsigned int init;
-	unsigned int lpx;
-	unsigned int taget;
-	unsigned int tago;
-	unsigned int tasure;
-	unsigned int wakeup;
-};
-
 struct inno_dsidphy {
 	struct device *dev;
 	struct clk *ref_clk;
@@ -201,7 +177,9 @@ struct inno_dsidphy {
 	void __iomem *host_base;
 	struct reset_control *rst;
 	enum phy_mode mode;
+	struct phy_configure_opts_mipi_dphy dphy_cfg;
 
+	struct clk *pll_clk;
 	struct {
 		struct clk_hw hw;
 		u8 prediv;
@@ -238,37 +216,79 @@ static void phy_update_bits(struct inno_dsidphy *inno,
 	writel(tmp, inno->phy_base + reg);
 }
 
-static void mipi_dphy_timing_get_default(struct mipi_dphy_timing *timing,
-					 unsigned long period)
+static unsigned long inno_dsidphy_pll_calc_rate(struct inno_dsidphy *inno,
+						unsigned long rate)
 {
-	/* Global Operation Timing Parameters */
-	timing->clkmiss = 0;
-	timing->clkpost = 70000 + 52 * period;
-	timing->clkpre = 8 * period;
-	timing->clkprepare = 65000;
-	timing->clksettle = 95000;
-	timing->clktermen = 0;
-	timing->clktrail = 80000;
-	timing->clkzero = 260000;
-	timing->dtermen = 0;
-	timing->eot = 0;
-	timing->hsexit = 120000;
-	timing->hsprepare = 65000 + 4 * period;
-	timing->hszero = 145000 + 6 * period;
-	timing->hssettle = 85000 + 6 * period;
-	timing->hsskip = 40000;
-	timing->hstrail = max(8 * period, 60000 + 4 * period);
-	timing->init = 100000000;
-	timing->lpx = 60000;
-	timing->taget = 5 * timing->lpx;
-	timing->tago = 4 * timing->lpx;
-	timing->tasure = 2 * timing->lpx;
-	timing->wakeup = 1000000000;
+	unsigned long prate = clk_get_rate(inno->ref_clk);
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
+		inno->pll.prediv = best_prediv;
+		inno->pll.fbdiv = best_fbdiv;
+		inno->pll.rate = best_freq;
+	}
+
+	return best_freq;
 }
 
 static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 {
-	struct mipi_dphy_timing gotp;
+	struct phy_configure_opts_mipi_dphy *cfg = &inno->dphy_cfg;
 	const struct {
 		unsigned long rate;
 		u8 hs_prepare;
@@ -288,12 +308,14 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 		{ 800000000, 0x21, 0x1f, 0x09, 0x29},
 		{1000000000, 0x09, 0x20, 0x09, 0x27},
 	};
-	u32 t_txbyteclkhs, t_txclkesc, ui;
+	u32 t_txbyteclkhs, t_txclkesc;
 	u32 txbyteclkhs, txclkesc, esc_clk_div;
 	u32 hs_exit, clk_post, clk_pre, wakeup, lpx, ta_go, ta_sure, ta_wait;
 	u32 hs_prepare, hs_trail, hs_zero, clk_lane_hs_zero, data_lane_hs_zero;
 	unsigned int i;
 
+	inno_dsidphy_pll_calc_rate(inno, cfg->hs_clk_rate);
+
 	/* Select MIPI mode */
 	phy_update_bits(inno, REGISTER_PART_LVDS, 0x03,
 			MODE_ENABLE_MASK, MIPI_MODE_ENABLE);
@@ -328,32 +350,27 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 	txclkesc = txbyteclkhs / esc_clk_div;
 	t_txclkesc = div_u64(PSEC_PER_SEC, txclkesc);
 
-	ui = div_u64(PSEC_PER_SEC, inno->pll.rate);
-
-	memset(&gotp, 0, sizeof(gotp));
-	mipi_dphy_timing_get_default(&gotp, ui);
-
 	/*
 	 * The value of counter for HS Ths-exit
 	 * Ths-exit = Tpin_txbyteclkhs * value
 	 */
-	hs_exit = DIV_ROUND_UP(gotp.hsexit, t_txbyteclkhs);
+	hs_exit = DIV_ROUND_UP(cfg->hs_exit, t_txbyteclkhs);
 	/*
 	 * The value of counter for HS Tclk-post
 	 * Tclk-post = Tpin_txbyteclkhs * value
 	 */
-	clk_post = DIV_ROUND_UP(gotp.clkpost, t_txbyteclkhs);
+	clk_post = DIV_ROUND_UP(cfg->clk_post, t_txbyteclkhs);
 	/*
 	 * The value of counter for HS Tclk-pre
 	 * Tclk-pre = Tpin_txbyteclkhs * value
 	 */
-	clk_pre = DIV_ROUND_UP(gotp.clkpre, t_txbyteclkhs);
+	clk_pre = DIV_ROUND_UP(cfg->clk_pre, t_txbyteclkhs);
 
 	/*
 	 * The value of counter for HS Tlpx Time
 	 * Tlpx = Tpin_txbyteclkhs * (2 + value)
 	 */
-	lpx = DIV_ROUND_UP(gotp.lpx, t_txbyteclkhs);
+	lpx = DIV_ROUND_UP(cfg->lpx, t_txbyteclkhs);
 	if (lpx >= 2)
 		lpx -= 2;
 
@@ -362,19 +379,19 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 	 * Tta-go for turnaround
 	 * Tta-go = Ttxclkesc * value
 	 */
-	ta_go = DIV_ROUND_UP(gotp.tago, t_txclkesc);
+	ta_go = DIV_ROUND_UP(cfg->ta_go, t_txclkesc);
 	/*
 	 * The value of counter for HS Tta-sure
 	 * Tta-sure for turnaround
 	 * Tta-sure = Ttxclkesc * value
 	 */
-	ta_sure = DIV_ROUND_UP(gotp.tasure, t_txclkesc);
+	ta_sure = DIV_ROUND_UP(cfg->ta_sure, t_txclkesc);
 	/*
 	 * The value of counter for HS Tta-wait
 	 * Tta-wait for turnaround
 	 * Tta-wait = Ttxclkesc * value
 	 */
-	ta_wait = DIV_ROUND_UP(gotp.taget, t_txclkesc);
+	ta_wait = DIV_ROUND_UP(cfg->ta_get, t_txclkesc);
 
 	for (i = 0; i < ARRAY_SIZE(timings); i++)
 		if (inno->pll.rate <= timings[i].rate)
@@ -479,6 +496,7 @@ static int inno_dsidphy_power_on(struct phy *phy)
 	struct inno_dsidphy *inno = phy_get_drvdata(phy);
 
 	clk_prepare_enable(inno->pclk_phy);
+	clk_prepare_enable(inno->ref_clk);
 	pm_runtime_get_sync(inno->dev);
 
 	/* Bandgap power on */
@@ -524,6 +542,7 @@ static int inno_dsidphy_power_off(struct phy *phy)
 			LVDS_PLL_POWER_OFF | LVDS_BANDGAP_POWER_DOWN);
 
 	pm_runtime_put(inno->dev);
+	clk_disable_unprepare(inno->ref_clk);
 	clk_disable_unprepare(inno->pclk_phy);
 
 	return 0;
@@ -546,168 +565,32 @@ static int inno_dsidphy_set_mode(struct phy *phy, enum phy_mode mode,
 	return 0;
 }
 
-static const struct phy_ops inno_dsidphy_ops = {
-	.set_mode = inno_dsidphy_set_mode,
-	.power_on = inno_dsidphy_power_on,
-	.power_off = inno_dsidphy_power_off,
-	.owner = THIS_MODULE,
-};
-
-static unsigned long inno_dsidphy_pll_round_rate(struct inno_dsidphy *inno,
-						   unsigned long prate,
-						   unsigned long rate,
-						   u8 *prediv, u16 *fbdiv)
-{
-	unsigned long best_freq = 0;
-	unsigned long fref, fout;
-	u8 min_prediv, max_prediv;
-	u8 _prediv, best_prediv = 1;
-	u16 _fbdiv, best_fbdiv = 1;
-	u32 min_delta = UINT_MAX;
-
-	/*
-	 * The PLL output frequency can be calculated using a simple formula:
-	 * PLL_Output_Frequency = (FREF / PREDIV * FBDIV) / 2
-	 * PLL_Output_Frequency: it is equal to DDR-Clock-Frequency * 2
-	 */
-	fref = prate / 2;
-	if (rate > 1000000000UL)
-		fout = 1000000000UL;
-	else
-		fout = rate;
-
-	/* 5Mhz < Fref / prediv < 40MHz */
-	min_prediv = DIV_ROUND_UP(fref, 40000000);
-	max_prediv = fref / 5000000;
-
-	for (_prediv = min_prediv; _prediv <= max_prediv; _prediv++) {
-		u64 tmp;
-		u32 delta;
-
-		tmp = (u64)fout * _prediv;
-		do_div(tmp, fref);
-		_fbdiv = tmp;
-
-		/*
-		 * The possible settings of feedback divider are
-		 * 12, 13, 14, 16, ~ 511
-		 */
-		if (_fbdiv == 15)
-			continue;
-
-		if (_fbdiv < 12 || _fbdiv > 511)
-			continue;
-
-		tmp = (u64)_fbdiv * fref;
-		do_div(tmp, _prediv);
-
-		delta = abs(fout - tmp);
-		if (!delta) {
-			best_prediv = _prediv;
-			best_fbdiv = _fbdiv;
-			best_freq = tmp;
-			break;
-		} else if (delta < min_delta) {
-			best_prediv = _prediv;
-			best_fbdiv = _fbdiv;
-			best_freq = tmp;
-			min_delta = delta;
-		}
-	}
-
-	if (best_freq) {
-		*prediv = best_prediv;
-		*fbdiv = best_fbdiv;
-	}
-
-	return best_freq;
-}
-
-static long inno_dsidphy_pll_clk_round_rate(struct clk_hw *hw,
-					      unsigned long rate,
-					      unsigned long *prate)
+static int inno_dsidphy_configure(struct phy *phy,
+				  union phy_configure_opts *opts)
 {
-	struct inno_dsidphy *inno = hw_to_inno(hw);
-	unsigned long fout;
-	u16 fbdiv = 1;
-	u8 prediv = 1;
-
-	fout = inno_dsidphy_pll_round_rate(inno, *prate, rate,
-					     &prediv, &fbdiv);
-
-	return fout;
-}
-
-static int inno_dsidphy_pll_clk_set_rate(struct clk_hw *hw,
-					   unsigned long rate,
-					   unsigned long parent_rate)
-{
-	struct inno_dsidphy *inno = hw_to_inno(hw);
-	unsigned long fout;
-	u16 fbdiv = 1;
-	u8 prediv = 1;
+	struct inno_dsidphy *inno = phy_get_drvdata(phy);
+	int ret;
 
-	fout = inno_dsidphy_pll_round_rate(inno, parent_rate, rate,
-					     &prediv, &fbdiv);
+	if (inno->mode != PHY_MODE_MIPI_DPHY)
+		return -EINVAL;
 
-	dev_dbg(inno->dev, "fin=%lu, fout=%lu, prediv=%u, fbdiv=%u\n",
-		parent_rate, fout, prediv, fbdiv);
+	ret = phy_mipi_dphy_config_validate(&opts->mipi_dphy);
+	if (ret)
+		return ret;
 
-	inno->pll.prediv = prediv;
-	inno->pll.fbdiv = fbdiv;
-	inno->pll.rate = fout;
+	memcpy(&inno->dphy_cfg, &opts->mipi_dphy, sizeof(inno->dphy_cfg));
 
 	return 0;
 }
 
-static unsigned long
-inno_dsidphy_pll_clk_recalc_rate(struct clk_hw *hw, unsigned long prate)
-{
-	struct inno_dsidphy *inno = hw_to_inno(hw);
-
-	/* PLL_Output_Frequency = (FREF / PREDIV * FBDIV) / 2 */
-	return (prate / inno->pll.prediv * inno->pll.fbdiv) / 2;
-}
-
-static const struct clk_ops inno_dsidphy_pll_clk_ops = {
-	.round_rate = inno_dsidphy_pll_clk_round_rate,
-	.set_rate = inno_dsidphy_pll_clk_set_rate,
-	.recalc_rate = inno_dsidphy_pll_clk_recalc_rate,
+static const struct phy_ops inno_dsidphy_ops = {
+	.configure = inno_dsidphy_configure,
+	.set_mode = inno_dsidphy_set_mode,
+	.power_on = inno_dsidphy_power_on,
+	.power_off = inno_dsidphy_power_off,
+	.owner = THIS_MODULE,
 };
 
-static int inno_dsidphy_pll_register(struct inno_dsidphy *inno)
-{
-	struct device *dev = inno->dev;
-	struct clk *clk;
-	const char *parent_name;
-	struct clk_init_data init;
-	int ret;
-
-	parent_name = __clk_get_name(inno->ref_clk);
-
-	init.name = "mipi_dphy_pll";
-	ret = of_property_read_string(dev->of_node, "clock-output-names",
-				      &init.name);
-	if (ret < 0)
-		dev_dbg(dev, "phy should set clock-output-names property\n");
-
-	init.ops = &inno_dsidphy_pll_clk_ops;
-	init.parent_names = &parent_name;
-	init.num_parents = 1;
-	init.flags = 0;
-
-	inno->pll.hw.init = &init;
-	clk = devm_clk_register(dev, &inno->pll.hw);
-	if (IS_ERR(clk)) {
-		ret = PTR_ERR(clk);
-		dev_err(dev, "failed to register PLL: %d\n", ret);
-		return ret;
-	}
-
-	return devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
-					   &inno->pll.hw);
-}
-
 static int inno_dsidphy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -764,10 +647,6 @@ static int inno_dsidphy_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = inno_dsidphy_pll_register(inno);
-	if (ret)
-		return ret;
-
 	pm_runtime_enable(dev);
 
 	return 0;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
