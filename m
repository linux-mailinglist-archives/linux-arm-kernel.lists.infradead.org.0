Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C29D17BA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:38:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DZNb3uXrDzqHYrsNuWUu9W6Xt3y3oqCWVlAL6K+U78=; b=oyNolS2VisRDzE
	4j8F2uy1GnXhgsOsTKpfVRkZ0S4bqeKbqHVr5K68wLIsED5C9vzRJlVWlyBMLkVeQzWFuO1I8vrCC
	QZ/iSlHBq3Z1EZ3y+rz6qNWcgFeJazNGO7H9JQpcMaEfmTeqnlYBd3qX0pNe9vc4NNYZtPp++PkGu
	Q2tg+OZC3dTImdYgUI4oXidTb8xgimm7capAthPbbzAk7JYocbr8I30EZxqKVVUWEBMhVypWJNZw8
	G7FmC5LTl9E+sn0tLUKFCiOTpP/exThgYob4IdDMzdZr1IVdX2FV4IThmAt6lBe+9fEYCThhaYojy
	ijgXCZZDxMF7s7rfUTqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONhy-00026U-IY; Wed, 08 May 2019 14:38:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONhe-0001nz-Ug; Wed, 08 May 2019 14:37:52 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hONhb-0006TE-HQ; Wed, 08 May 2019 16:37:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org,
	lee.jones@linaro.org
Subject: [PATCH v8 5/5] clk: RK808: add RK809 and RK817 support.
Date: Wed,  8 May 2019 16:37:13 +0200
Message-Id: <20190508143713.27954-6-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508143713.27954-1-heiko@sntech.de>
References: <20190508143713.27954-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_073751_132835_E0C4CBDB 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 Stephen Boyd <sboyd@kernel.org>, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Xie <tony.xie@rock-chips.com>

RK809 and RK817 are power management IC chips for multimedia products.
most of their functions and registers are same, including the clkout
funciton.

Signed-off-by: Tony Xie <tony.xie@rock-chips.com>
Acked-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/clk/Kconfig     |  9 +++---
 drivers/clk/clk-rk808.c | 64 ++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 67 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index e705aab9e38b..3d3899ee64a0 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -52,13 +52,12 @@ config COMMON_CLK_MAX9485
 	  This driver supports Maxim 9485 Programmable Audio Clock Generator
 
 config COMMON_CLK_RK808
-	tristate "Clock driver for RK805/RK808/RK818"
+	tristate "Clock driver for RK805/RK808/RK809/RK817/RK818"
 	depends on MFD_RK808
 	---help---
-	  This driver supports RK805, RK808 and RK818 crystal oscillator clock. These
-	  multi-function devices have two fixed-rate oscillators,
-	  clocked at 32KHz each. Clkout1 is always on, Clkout2 can off
-	  by control register.
+	  This driver supports RK805, RK809 and RK817, RK808 and RK818 crystal oscillator clock.
+	  These multi-function devices have two fixed-rate oscillators, clocked at 32KHz each.
+	  Clkout1 is always on, Clkout2 can off by control register.
 
 config COMMON_CLK_HI655X
 	tristate "Clock driver for Hi655x" if EXPERT
diff --git a/drivers/clk/clk-rk808.c b/drivers/clk/clk-rk808.c
index 8d90bdf5b946..75f2cf0dfc9f 100644
--- a/drivers/clk/clk-rk808.c
+++ b/drivers/clk/clk-rk808.c
@@ -96,6 +96,68 @@ of_clk_rk808_get(struct of_phandle_args *clkspec, void *data)
 	return idx ? &rk808_clkout->clkout2_hw : &rk808_clkout->clkout1_hw;
 }
 
+static int rk817_clkout2_enable(struct clk_hw *hw, bool enable)
+{
+	struct rk808_clkout *rk808_clkout = container_of(hw,
+							 struct rk808_clkout,
+							 clkout2_hw);
+	struct rk808 *rk808 = rk808_clkout->rk808;
+
+	return regmap_update_bits(rk808->regmap, RK817_SYS_CFG(1),
+				  RK817_CLK32KOUT2_EN,
+				  enable ? RK817_CLK32KOUT2_EN : 0);
+}
+
+static int rk817_clkout2_prepare(struct clk_hw *hw)
+{
+	return rk817_clkout2_enable(hw, true);
+}
+
+static void rk817_clkout2_unprepare(struct clk_hw *hw)
+{
+	rk817_clkout2_enable(hw, false);
+}
+
+static int rk817_clkout2_is_prepared(struct clk_hw *hw)
+{
+	struct rk808_clkout *rk808_clkout = container_of(hw,
+							 struct rk808_clkout,
+							 clkout2_hw);
+	struct rk808 *rk808 = rk808_clkout->rk808;
+	unsigned int val;
+
+	int ret = regmap_read(rk808->regmap, RK817_SYS_CFG(1), &val);
+
+	if (ret < 0)
+		return 0;
+
+	return (val & RK817_CLK32KOUT2_EN) ? 1 : 0;
+}
+
+static const struct clk_ops rk817_clkout2_ops = {
+	.prepare = rk817_clkout2_prepare,
+	.unprepare = rk817_clkout2_unprepare,
+	.is_prepared = rk817_clkout2_is_prepared,
+	.recalc_rate = rk808_clkout_recalc_rate,
+};
+
+static const struct clk_ops *rkpmic_get_ops(long variant)
+{
+	switch (variant) {
+	case RK809_ID:
+	case RK817_ID:
+		return &rk817_clkout2_ops;
+	/*
+	 * For the default case, it match the following PMIC type.
+	 * RK805_ID
+	 * RK808_ID
+	 * RK818_ID
+	 */
+	default:
+		return &rk808_clkout2_ops;
+	}
+}
+
 static int rk808_clkout_probe(struct platform_device *pdev)
 {
 	struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
@@ -127,7 +189,7 @@ static int rk808_clkout_probe(struct platform_device *pdev)
 		return ret;
 
 	init.name = "rk808-clkout2";
-	init.ops = &rk808_clkout2_ops;
+	init.ops = rkpmic_get_ops(rk808->variant);
 	rk808_clkout->clkout2_hw.init = &init;
 
 	/* optional override of the clockname */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
