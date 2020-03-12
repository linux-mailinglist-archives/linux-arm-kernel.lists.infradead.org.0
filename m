Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8F8183199
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:33:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHxoi5+7cUO5T2J98z+ZZ2y2NpMloDMagHGKBrhB620=; b=qdwc1lWCy0gff+
	3ysWBZfKVir9D/K4FX3EhX04DiXaWvj0DJpb03U19EI7npNL36GXwTIxN6FdO410Gk6fRpWuTTLfp
	J5IwPuBIM80Chi2mpEIvAbsFGAz+Oby2GdN4SwbiJnLDmbNvl/1vc+DLwCUhvDOKqBUrBzsgQ0HM1
	T1sEJIVm19XadUcxKCCkr/1CrXoWuT2Ak5zVxpl3xCBo9SbyibIbaaAmJRX/b9GykQiJy3XRlx1xd
	ka6j3wKjs4jh++UwRpxBVncX+HaGkkPWxuKIQ4zLeF+Uaq5JUpjaE214DOn1NavtaBLEv2H+H/rch
	o9S7Qs+muAIKEk6GOAGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNxi-00051f-8G; Thu, 12 Mar 2020 13:33:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNw4-0003TG-5s
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:31:45 +0000
Received: by mail-wm1-x344.google.com with SMTP id g62so6333108wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8Ms2YdO5k0EVt5XUeOtdpO5owQlKe9aj7DW3EQ2czdQ=;
 b=wsynuXKf+8LRAiGr5edsiN+oVxd4LwcjZFjVFVehVshDBPoEu/LOYo2GpeEOsINxk7
 Z2d3eyOvyz0Djl5moa3SRpFv46N+iWJB2oWj6r1pQyKoQHOF+YZLVlTDqi7Zr/8bnmwL
 O+NjuQG5CchBmOoFXn2sctQXG/z3vEHYftSCEf7aT+gGQDB4kPRtJsd3yfHbodn5XHny
 5m6bZUZBVY3adzsjGSZREgQC+5G25tmsh4qI7aSoo0PkaMpY+2CMGg/WsM036/wYi58n
 4gwcU9NpFlwU9MRaxYUKJ9rml59Ufwxh5yK6r/x2Ly/HlP9Vo6E7fY5gu7G8L5g69fk+
 3u5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8Ms2YdO5k0EVt5XUeOtdpO5owQlKe9aj7DW3EQ2czdQ=;
 b=e/xT1Q77b4L5IEESlGExTeMi01xv7AhLiKhPDs+IT+A4QVYN30c31fGjnB2Y+Vt+lB
 yWNepjp27tdtRc5vTnFs1RqldGGdyKVK01z0qTeSe1H/AgYqoB3rP4B0rMtC1VahrEmo
 NH0JmVK0bNusBxv9h9ivhfUJRDVfONCwa5FYdq1rkcdWTrfoB6sLiuxsa3rd9LMZDFZG
 str6vHhL1I09JTxHeZJXD6UrH5hLkTSxYMPl0xBN1nkGZmUIydJX0a/9zIFOYw2mak75
 KHyWAj7WZu9bMe15H1Vk6JhAlhsCHQpSFGaM/byCLvAk8i0SvvB4nmVlMCsztcyWZ6PB
 Ldkw==
X-Gm-Message-State: ANhLgQ0bE7YKhwS9A2ilnTSrYc4+QNhFmgkXi/b2mawFSQx3p9Izm510
 XXmDbNuCmrHkJqdv/Ozfr0AgSQ==
X-Google-Smtp-Source: ADFU+vvsPsVasyfcqJeOjkmoMM5rSz1TNrzHsVfcqIo465gE0QAHRnNAVPKbibT2iiA4aUmK427OsA==
X-Received: by 2002:a1c:29c2:: with SMTP id p185mr5010490wmp.79.1584019897564; 
 Thu, 12 Mar 2020 06:31:37 -0700 (PDT)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id m21sm12242885wmi.27.2020.03.12.06.31.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 06:31:36 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: broonie@kernel.org
Subject: [PATCH 3/9] spi: meson-spicc: add a linear clock divider support
Date: Thu, 12 Mar 2020 14:31:25 +0100
Message-Id: <20200312133131.26430-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200312133131.26430-1-narmstrong@baylibre.com>
References: <20200312133131.26430-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_063140_279847_A683752E 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-amlogic@lists.infradead.org, Sunny Luo <sunny.luo@amlogic.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sunny Luo <sunny.luo@amlogic.com>

The SPICC controller in Meson-AXG SoC is capable of using
a linear clock divider to reach a much fine tuned range of clocks,
while the old controller only use a power of two clock divider,
result at a more coarse clock range.

Also convert the clock registration into Common Clock Framework.

Signed-off-by: Sunny Luo <sunny.luo@amlogic.com>
Signed-off-by: Yixun Lan <yixun.lan@amlogic.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/spi/Kconfig           |   1 +
 drivers/spi/spi-meson-spicc.c | 204 +++++++++++++++++++++++++++-------
 2 files changed, 165 insertions(+), 40 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index d6ed0c355954..7f86e591fba3 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -415,6 +415,7 @@ config SPI_FSL_ESPI
 
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
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
