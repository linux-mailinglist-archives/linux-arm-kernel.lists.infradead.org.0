Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4661F921C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szO3YSIbcMQq0szt2nQpp6mtUaWJa1alAh9er8tUDj0=; b=PR7J0tN9PQU/SP
	+5yrxFATJDofI8tVM8s8Hvi464IwGeu9YEUfujoyfnN0HjU/kWDCHYXa50qQpaWX23YGWyzV5jEXm
	kALkGS5wcI5DUVdnJhFgTuvHx5CI0uOd7doZ5nq4g9/T/PwX3PGdd4Unmk3DZxuLl4ndRG9Q3p5DF
	OvPzJ483ex9aPj4NcNoN8RaLMVEcRNhl2l6GMuPdhMQfpXqwvFE/HefiVLnv1u8KISAKX2oi9yHuY
	RTJ+I7E3qqBLRdNHGMEINnbl0VFDXqxQUodmSTi0VILe1lcb5PHQmt175KfgZYhRhN2xac7qGFNer
	o8QFigRrZB1ZEP6ROYOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkm8-0000EH-UV; Mon, 15 Jun 2020 08:47:28 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgg-0001tf-2f; Mon, 15 Jun 2020 08:41:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1FCA658014E;
 Mon, 15 Jun 2020 04:41:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=sZyE8Q/I9uiPi
 QVLs1GeiqhSJzMWDfq93SIEfUCIDqA=; b=c0ngdNz+o69rWwvDmGLZlqdrDC2mr
 l6nCTMaT+ovTplt9dbPWjmZVLagcFjad9GpfF1AqX9Nn6t5d7SnIVXQ2Rz7FvHDS
 Ym9dJ4YQIVMmY7uYJtPnrVh/OtvqR5rsb4Mlt5Rc6yhPRK2VnrLl8y5x8UVr6g8G
 StI8PCWmXxNGpmi9rVOji21wFobXdp5RMsXxqEp7AnOa9pZ/0T1XWMrho21kLkf/
 4GmL6TSFvMNwWK/kQJ4W4NpoLqTnBg6aC4JNeYRkACFAvEJ4etFS9HQDBoKC7uqb
 RMm2kfkGRClYnVNVjLB7jTtoZTPtkBeg5WhWIRC9yx9Wk2f6c49Pq4njA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=sZyE8Q/I9uiPiQVLs1GeiqhSJzMWDfq93SIEfUCIDqA=; b=jj2Ozfjn
 scPDf8nhS1K5l8zE8nAMU1aXeYYcxS8PpQJSGZQaDZGlGMFCDsppexkM1gFsmI++
 mxz5yilI2bLh8hLx2ZHeOrRYYPv0n8Tpq9heYd8YWhpeMLCqauupLBFeUj5j6BNP
 xZaBUYnpAVM0CpIeP7/oAtZU+CARVC8ggsIeC3+ohjRveeajoCbyz3F2vlwwTMcX
 W8WQG8cAqBPW9Dk42m3cUT0XjchIEQ6Y0T9aNa6j3Cafs2A50mKh74dR8mZfWmF+
 xpE8+otHLvmeyaf2Pv7/amAW7E1+jv10wgIGXrlRD9+RFY6uS2K5ZdcCnaD87Bkr
 CF2RKcl6F0oeDw==
X-ME-Sender: <xms:TDTnXnOLy_GdVKkQq1aH_COv8-2jvGhGmLyKUF0vPi5qAr0xX0vpwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:TTTnXh_O7WK0KtgsfTR8PuTYo-_n-kw6QhoDRIwrdy8pR-eP8WFBNA>
 <xmx:TTTnXmT1ZKTOffu_KqpMIwiHDXuhNDcVQORqjZeIrJh6ls-8fGRTtg>
 <xmx:TTTnXru_h-jVI23HPVhZlgwykm4E-ZuzBR2gd3Qh7iKeUPNRJWklJw>
 <xmx:TTTnXj5FyDd7mqwe4tCOOgNBp794MLYCoRLaIlhn3Z-Bog-njkWUjg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B04423280065;
 Mon, 15 Jun 2020 04:41:48 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 18/27] clk: bcm: rpi: Make the PLLB registration function
 return a clk_hw
Date: Mon, 15 Jun 2020 10:40:58 +0200
Message-Id: <97218559db643e62fdd2b5e3046a2a05b8c2e769.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014150_286941_7592D6FE 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raspberrypi_register_pllb has been returning an integer so far to
notify whether the functions has exited successfully or not.

However, the OF provider functions in the clock framework require access to
the clk_hw structure so that we can expose those clocks to device tree
consumers.

Since we'll want that for the future clocks, let's return a clk_hw pointer
instead of the return code.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 46 ++++++++++++++++----------------
 1 file changed, 24 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 19571602ba64..d2cb90c086a7 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -186,7 +186,7 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 	.determine_rate = raspberrypi_pll_determine_rate,
 };
 
-static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
+static struct clk_hw *raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
 	struct raspberrypi_clk_data *data;
 	struct clk_init_data init = {};
@@ -195,7 +195,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 
 	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 	data->rpi = rpi;
 	data->id = RPI_FIRMWARE_ARM_CLK_ID;
 
@@ -213,7 +213,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s min freq: %d\n",
 			init.name, ret);
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	ret = raspberrypi_clock_property(rpi->firmware, data,
@@ -222,13 +222,13 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s max freq: %d\n",
 			init.name, ret);
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	if (!min_rate || !max_rate) {
 		dev_err(rpi->dev, "Unexpected frequency range: min %u, max %u\n",
 			min_rate, max_rate);
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 	}
 
 	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
@@ -237,12 +237,14 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	data->hw.init = &init;
 
 	ret = devm_clk_hw_register(rpi->dev, &data->hw);
-	if (!ret)
-		clk_hw_set_rate_range(&data->hw,
-				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
-				      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
+	if (ret)
+		return ERR_PTR(ret);
 
-	return ret;
+	clk_hw_set_rate_range(&data->hw,
+			      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
+			      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
+
+	return &data->hw;
 }
 
 static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
@@ -257,14 +259,14 @@ static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
 	},
 };
 
-static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
+static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
 	int ret;
 
 	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	ret = devm_clk_hw_register_clkdev(rpi->dev,
@@ -272,10 +274,10 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 					  NULL, "cpu0");
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize clkdev\n");
-		return ret;
+		return ERR_PTR(ret);
 	}
 
-	return 0;
+	return &raspberrypi_clk_pllb_arm.hw;
 }
 
 static int raspberrypi_clk_probe(struct platform_device *pdev)
@@ -284,7 +286,7 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rpi_firmware *firmware;
 	struct raspberrypi_clk *rpi;
-	int ret;
+	struct clk_hw *hw;
 
 	/*
 	 * We can be probed either through the an old-fashioned
@@ -314,15 +316,15 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	rpi->firmware = firmware;
 	platform_set_drvdata(pdev, rpi);
 
-	ret = raspberrypi_register_pllb(rpi);
-	if (ret) {
-		dev_err(dev, "Failed to initialize pllb, %d\n", ret);
-		return ret;
+	hw = raspberrypi_register_pllb(rpi);
+	if (IS_ERR(hw)) {
+		dev_err(dev, "Failed to initialize pllb, %ld\n", PTR_ERR(hw));
+		return PTR_ERR(hw);
 	}
 
-	ret = raspberrypi_register_pllb_arm(rpi);
-	if (ret)
-		return ret;
+	hw = raspberrypi_register_pllb_arm(rpi);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
 
 	rpi->cpufreq = platform_device_register_data(dev, "raspberrypi-cpufreq",
 						     -1, NULL, 0);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
