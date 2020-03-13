Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BDF1837E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 18:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CszQ9HgC2UIFr759TfiIFSZQwNO+TsI2RaX3sH+ucCI=; b=t6b
	vrSAuf02rxd8Vn0tVnw0NYjd8bCrPEicPJ7Z8N45CcRv2gVWQNe12lSYjz+XULVS9aB5qraNg/4BN
	eEAmxxFnAiNHeIcWMBICNhi5OBUGAeNMqedRhmJr0RYtqEAmXdWdlTdSO/Ao7tzKDTAHbFMAxuwBY
	d0Vst02fNQTpAaSO7bVAvl2FohZCGjQL1ALBOVchlF4/ZFdnapzYiyQTI4SpsuiWE6O1dvlNP8zzB
	Ep/cYm2dsXklEIfMoPJOp5ZEd4UGqCTZe3jxASfn+dR5fA3yPLPtQJwdcULqgycBE3VTIUrmci6fZ
	PuUiRz9b3V7c8jMhAWqOf08+Oxh5bug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCRpW-0006Sk-1H; Thu, 12 Mar 2020 17:41:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCRnp-0003he-0K; Thu, 12 Mar 2020 17:39:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5535630E;
 Thu, 12 Mar 2020 10:39:24 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CB1AE3F6CF;
 Thu, 12 Mar 2020 10:39:23 -0700 (PDT)
Date: Thu, 12 Mar 2020 17:39:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Sunny Luo <sunny.luo@amlogic.com>
Subject: Applied "spi: meson-spicc: add a linear clock divider support" to the
 spi tree
In-Reply-To: <20200312133131.26430-4-narmstrong@baylibre.com>
Message-Id: <applied-20200312133131.26430-4-narmstrong@baylibre.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_103925_191578_60B6AB74 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, Yixun Lan <yixun.lan@amlogic.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: meson-spicc: add a linear clock divider support

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 3e0cf4d3fc2985beee011e9a1bbb8374fc02c0a0 Mon Sep 17 00:00:00 2001
From: Sunny Luo <sunny.luo@amlogic.com>
Date: Thu, 12 Mar 2020 14:31:25 +0100
Subject: [PATCH] spi: meson-spicc: add a linear clock divider support

The SPICC controller in Meson-AXG SoC is capable of using
a linear clock divider to reach a much fine tuned range of clocks,
while the old controller only use a power of two clock divider,
result at a more coarse clock range.

Also convert the clock registration into Common Clock Framework.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Signed-off-by: Yixun Lan <yixun.lan@amlogic.com>
Signed-off-by: Sunny Luo <sunny.luo@amlogic.com>
Link: https://lore.kernel.org/r/20200312133131.26430-4-narmstrong@baylibre.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/Kconfig           |   1 +
 drivers/spi/spi-meson-spicc.c | 204 +++++++++++++++++++++++++++-------
 2 files changed, 165 insertions(+), 40 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index c33ca96b44de..efce98e9844e 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -428,6 +428,7 @@ config SPI_FSL_ESPI
 
 config SPI_MESON_SPICC
 	tristate "Amlogic Meson SPICC controller"
+	depends on COMMON_CLK
 	depends on ARCH_MESON || COMPILE_TEST
 	help
 	  This enables master mode support for the SPICC (SPI communication
diff --git a/drivers/spi/spi-meson-spicc.c b/drivers/spi/spi-meson-spicc.c
index ba70ef94a82a..bd434d9055d9 100644
--- a/drivers/spi/spi-meson-spicc.c
+++ b/drivers/spi/spi-meson-spicc.c
@@ -116,6 +116,9 @@
 #define SPICC_DWADDR	0x24	/* Write Address of DMA */
 
 #define SPICC_ENH_CTL0	0x38	/* Enhanced Feature */
+#define SPICC_ENH_CLK_CS_DELAY_MASK	GENMASK(15, 0)
+#define SPICC_ENH_DATARATE_MASK		GENMASK(23, 16)
+#define SPICC_ENH_DATARATE_EN		BIT(24)
 #define SPICC_ENH_MOSI_OEN		BIT(25)
 #define SPICC_ENH_CLK_OEN		BIT(26)
 #define SPICC_ENH_CS_OEN		BIT(27)
@@ -130,6 +133,7 @@
 
 struct meson_spicc_data {
 	bool				has_oen;
+	bool				has_enhance_clk_div;
 };
 
 struct meson_spicc_device {
@@ -137,6 +141,7 @@ struct meson_spicc_device {
 	struct platform_device		*pdev;
 	void __iomem			*base;
 	struct clk			*core;
+	struct clk			*clk;
 	struct spi_message		*message;
 	struct spi_transfer		*xfer;
 	const struct meson_spicc_data	*data;
@@ -322,40 +327,6 @@ static irqreturn_t meson_spicc_irq(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static u32 meson_spicc_setup_speed(struct meson_spicc_device *spicc, u32 conf,
-				   u32 speed)
-{
-	unsigned long parent, value;
-	unsigned int i, div;
-
-	parent = clk_get_rate(spicc->core);
-
-	/* Find closest inferior/equal possible speed */
-	for (i = 0 ; i < 7 ; ++i) {
-		/* 2^(data_rate+2) */
-		value = parent >> (i + 2);
-
-		if (value <= speed)
-			break;
-	}
-
-	/* If provided speed it lower than max divider, use max divider */
-	if (i > 7) {
-		div = 7;
-		dev_warn_once(&spicc->pdev->dev, "unable to get close to speed %u\n",
-			      speed);
-	} else
-		div = i;
-
-	dev_dbg(&spicc->pdev->dev, "parent %lu, speed %u -> %lu (%u)\n",
-		parent, speed, value, div);
-
-	conf &= ~SPICC_DATARATE_MASK;
-	conf |= FIELD_PREP(SPICC_DATARATE_MASK, div);
-
-	return conf;
-}
-
 static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
 				   struct spi_transfer *xfer)
 {
@@ -364,9 +335,6 @@ static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
 	/* Read original configuration */
 	conf = conf_orig = readl_relaxed(spicc->base + SPICC_CONREG);
 
-	/* Select closest divider */
-	conf = meson_spicc_setup_speed(spicc, conf, xfer->speed_hz);
-
 	/* Setup word width */
 	conf &= ~SPICC_BITLENGTH_MASK;
 	conf |= FIELD_PREP(SPICC_BITLENGTH_MASK,
@@ -375,6 +343,8 @@ static void meson_spicc_setup_xfer(struct meson_spicc_device *spicc,
 	/* Ignore if unchanged */
 	if (conf != conf_orig)
 		writel_relaxed(conf, spicc->base + SPICC_CONREG);
+
+	clk_set_rate(spicc->clk, xfer->speed_hz);
 }
 
 static int meson_spicc_transfer_one(struct spi_master *master,
@@ -481,9 +451,6 @@ static int meson_spicc_unprepare_transfer(struct spi_master *master)
 	/* Disable all IRQs */
 	writel(0, spicc->base + SPICC_INTREG);
 
-	/* Disable controller */
-	writel_bits_relaxed(SPICC_ENABLE, 0, spicc->base + SPICC_CONREG);
-
 	device_reset_optional(&spicc->pdev->dev);
 
 	return 0;
@@ -502,6 +469,152 @@ static void meson_spicc_cleanup(struct spi_device *spi)
 	spi->controller_state = NULL;
 }
 
+/*
+ * The Clock Mux
+ *            x-----------------x   x------------x    x------\
+ *        |---| pow2 fixed div  |---| pow2 div   |----|      |
+ *        |   x-----------------x   x------------x    |      |
+ * src ---|                                           | mux  |-- out
+ *        |   x-----------------x   x------------x    |      |
+ *        |---| enh fixed div   |---| enh div    |0---|      |
+ *            x-----------------x   x------------x    x------/
+ *
+ * Clk path for GX series:
+ *    src -> pow2 fixed div -> pow2 div -> out
+ *
+ * Clk path for AXG series:
+ *    src -> pow2 fixed div -> pow2 div -> mux -> out
+ *    src -> enh fixed div -> enh div -> mux -> out
+ */
+
+static int meson_spicc_clk_init(struct meson_spicc_device *spicc)
+{
+	struct device *dev = &spicc->pdev->dev;
+	struct clk_fixed_factor *pow2_fixed_div, *enh_fixed_div;
+	struct clk_divider *pow2_div, *enh_div;
+	struct clk_mux *mux;
+	struct clk_init_data init;
+	struct clk *clk;
+	struct clk_parent_data parent_data[2];
+	char name[64];
+
+	memset(&init, 0, sizeof(init));
+	memset(&parent_data, 0, sizeof(parent_data));
+
+	init.parent_data = parent_data;
+
+	/* algorithm for pow2 div: rate = freq / 4 / (2 ^ N) */
+
+	pow2_fixed_div = devm_kzalloc(dev, sizeof(*pow2_fixed_div), GFP_KERNEL);
+	if (!pow2_fixed_div)
+		return -ENOMEM;
+
+	snprintf(name, sizeof(name), "%s#pow2_fixed_div", dev_name(dev));
+	init.name = name;
+	init.ops = &clk_fixed_factor_ops;
+	init.flags = 0;
+	parent_data[0].hw = __clk_get_hw(spicc->core);
+	init.num_parents = 1;
+
+	pow2_fixed_div->mult = 1,
+	pow2_fixed_div->div = 4,
+	pow2_fixed_div->hw.init = &init;
+
+	clk = devm_clk_register(dev, &pow2_fixed_div->hw);
+	if (WARN_ON(IS_ERR(clk)))
+		return PTR_ERR(clk);
+
+	pow2_div = devm_kzalloc(dev, sizeof(*pow2_div), GFP_KERNEL);
+	if (!pow2_div)
+		return -ENOMEM;
+
+	snprintf(name, sizeof(name), "%s#pow2_div", dev_name(dev));
+	init.name = name;
+	init.ops = &clk_divider_ops;
+	init.flags = CLK_SET_RATE_PARENT;
+	parent_data[0].hw = &pow2_fixed_div->hw;
+	init.num_parents = 1;
+
+	pow2_div->shift = 16,
+	pow2_div->width = 3,
+	pow2_div->flags = CLK_DIVIDER_POWER_OF_TWO,
+	pow2_div->reg = spicc->base + SPICC_CONREG;
+	pow2_div->hw.init = &init;
+
+	clk = devm_clk_register(dev, &pow2_div->hw);
+	if (WARN_ON(IS_ERR(clk)))
+		return PTR_ERR(clk);
+
+	if (!spicc->data->has_enhance_clk_div) {
+		spicc->clk = clk;
+		return 0;
+	}
+
+	/* algorithm for enh div: rate = freq / 2 / (N + 1) */
+
+	enh_fixed_div = devm_kzalloc(dev, sizeof(*enh_fixed_div), GFP_KERNEL);
+	if (!enh_fixed_div)
+		return -ENOMEM;
+
+	snprintf(name, sizeof(name), "%s#enh_fixed_div", dev_name(dev));
+	init.name = name;
+	init.ops = &clk_fixed_factor_ops;
+	init.flags = 0;
+	parent_data[0].hw = __clk_get_hw(spicc->core);
+	init.num_parents = 1;
+
+	enh_fixed_div->mult = 1,
+	enh_fixed_div->div = 2,
+	enh_fixed_div->hw.init = &init;
+
+	clk = devm_clk_register(dev, &enh_fixed_div->hw);
+	if (WARN_ON(IS_ERR(clk)))
+		return PTR_ERR(clk);
+
+	enh_div = devm_kzalloc(dev, sizeof(*enh_div), GFP_KERNEL);
+	if (!enh_div)
+		return -ENOMEM;
+
+	snprintf(name, sizeof(name), "%s#enh_div", dev_name(dev));
+	init.name = name;
+	init.ops = &clk_divider_ops;
+	init.flags = CLK_SET_RATE_PARENT;
+	parent_data[0].hw = &enh_fixed_div->hw;
+	init.num_parents = 1;
+
+	enh_div->shift	= 16,
+	enh_div->width	= 8,
+	enh_div->reg = spicc->base + SPICC_ENH_CTL0;
+	enh_div->hw.init = &init;
+
+	clk = devm_clk_register(dev, &enh_div->hw);
+	if (WARN_ON(IS_ERR(clk)))
+		return PTR_ERR(clk);
+
+	mux = devm_kzalloc(dev, sizeof(*mux), GFP_KERNEL);
+	if (!mux)
+		return -ENOMEM;
+
+	snprintf(name, sizeof(name), "%s#sel", dev_name(dev));
+	init.name = name;
+	init.ops = &clk_mux_ops;
+	parent_data[0].hw = &pow2_div->hw;
+	parent_data[1].hw = &enh_div->hw;
+	init.num_parents = 2;
+	init.flags = CLK_SET_RATE_PARENT;
+
+	mux->mask = 0x1,
+	mux->shift = 24,
+	mux->reg = spicc->base + SPICC_ENH_CTL0;
+	mux->hw.init = &init;
+
+	spicc->clk = devm_clk_register(dev, &mux->hw);
+	if (WARN_ON(IS_ERR(spicc->clk)))
+		return PTR_ERR(spicc->clk);
+
+	return 0;
+}
+
 static int meson_spicc_probe(struct platform_device *pdev)
 {
 	struct spi_master *master;
@@ -533,6 +646,10 @@ static int meson_spicc_probe(struct platform_device *pdev)
 		goto out_master;
 	}
 
+	/* Set master mode and enable controller */
+	writel_relaxed(SPICC_ENABLE | SPICC_MODE_MASTER,
+		       spicc->base + SPICC_CONREG);
+
 	/* Disable all IRQs */
 	writel_relaxed(0, spicc->base + SPICC_INTREG);
 
@@ -584,6 +701,12 @@ static int meson_spicc_probe(struct platform_device *pdev)
 
 	meson_spicc_oen_enable(spicc);
 
+	ret = meson_spicc_clk_init(spicc);
+	if (ret) {
+		dev_err(&pdev->dev, "clock registration failed\n");
+		goto out_master;
+	}
+
 	ret = devm_spi_register_master(&pdev->dev, master);
 	if (ret) {
 		dev_err(&pdev->dev, "spi master registration failed\n");
@@ -618,6 +741,7 @@ static const struct meson_spicc_data meson_spicc_gx_data = {
 
 static const struct meson_spicc_data meson_spicc_axg_data = {
 	.has_oen		= true,
+	.has_enhance_clk_div	= true,
 };
 
 static const struct of_device_id meson_spicc_of_match[] = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
