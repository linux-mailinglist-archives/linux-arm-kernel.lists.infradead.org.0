Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7AA315858D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwHguB/XJ3ahyz8+C2RF0ufp7M32vEN2Wkx+720dCzQ=; b=Z5XSefCYWc5X5G
	jeoal9LT9AvaZqyFCv8TaWLlfK9jlZzGxoQlYZsMAzVSR4uKHijzhBCXT3r1jhZYIafvHN/rutRj6
	TdeAOj5ONwil3/AK142S4AoJJTnbKD5vKhlq+ierK1ksasTXTTzuVUqHK+EMN7MFErEKowLLww0zV
	FehQYfzARZmcbnoRMsaDt44hNE0+riWlZorauFTJWjaCU4BBqagEspZ7nXLMCNyFmFuTmBGQgX8XS
	difpcYpklpwzAo/JVkWKD3tJ30wqe672rFEXxFRHAO1hi/8NItAwzKZkX9EwVnxCwU9botDdu4xKv
	eLO7xyCRu8sGQ/EnI97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HYX-0006V3-EK; Mon, 10 Feb 2020 22:29:29 +0000
Received: from mailoutvs19.siol.net ([185.57.226.210] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXa-0005dp-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:31 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 79882522300;
 Mon, 10 Feb 2020 23:28:27 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Tx88K4UxsZ0u; Mon, 10 Feb 2020 23:28:27 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 13725522286;
 Mon, 10 Feb 2020 23:28:27 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 6B4E55222D3;
 Mon, 10 Feb 2020 23:28:24 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 4/7] clk: sunxi-ng: sun8i-de2: H6 doesn't have rotate core
Date: Mon, 10 Feb 2020 23:28:04 +0100
Message-Id: <20200210222807.206426-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142830_594204_4BC18867 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.210 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jernej.skrabec@siol.net, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, icenowy@aosc.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DE3 documentation regarding presence of rotate core in H6 is a bit
confusing. Register descriptions mention bits for enabling rotate core
clocks and reset, but general overview doesn't list it as feature of H6
display engine and BSP kernel doesn't support it. Manual poking
registers also didn't reveal presence of rotate core.

Let's assume there isn't any rotate core on H6 present and remove
related clocks. With that done, structures are same as those for H5, so
just reuse H5 structure.

Fixes: 56808da9f97f "clk: sunxi-ng: Add support for H6 DE3 clocks"
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 57 +---------------------------
 1 file changed, 1 insertion(+), 56 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index 2636a416a6f1..55ab05328ffc 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -108,24 +108,6 @@ static struct ccu_common *sun50i_a64_de2_clks[] = {
 	&rot_div_clk.common,
 };
 
-static struct ccu_common *sun50i_h6_de3_clks[] = {
-	&mixer0_clk.common,
-	&mixer1_clk.common,
-	&wb_clk.common,
-
-	&bus_mixer0_clk.common,
-	&bus_mixer1_clk.common,
-	&bus_wb_clk.common,
-
-	&mixer0_div_clk.common,
-	&mixer1_div_clk.common,
-	&wb_div_clk.common,
-
-	&bus_rot_clk.common,
-	&rot_clk.common,
-	&rot_div_clk.common,
-};
-
 static struct clk_hw_onecell_data sun8i_a83t_de2_hw_clks = {
 	.hws	= {
 		[CLK_MIXER0]		= &mixer0_clk.common.hw,
@@ -194,26 +176,6 @@ static struct clk_hw_onecell_data sun50i_a64_de2_hw_clks = {
 	.num	= CLK_NUMBER_WITH_ROT,
 };
 
-static struct clk_hw_onecell_data sun50i_h6_de3_hw_clks = {
-	.hws	= {
-		[CLK_MIXER0]		= &mixer0_clk.common.hw,
-		[CLK_MIXER1]		= &mixer1_clk.common.hw,
-		[CLK_WB]		= &wb_clk.common.hw,
-		[CLK_ROT]		= &rot_clk.common.hw,
-
-		[CLK_BUS_MIXER0]	= &bus_mixer0_clk.common.hw,
-		[CLK_BUS_MIXER1]	= &bus_mixer1_clk.common.hw,
-		[CLK_BUS_WB]		= &bus_wb_clk.common.hw,
-		[CLK_BUS_ROT]		= &bus_rot_clk.common.hw,
-
-		[CLK_MIXER0_DIV]	= &mixer0_div_clk.common.hw,
-		[CLK_MIXER1_DIV]	= &mixer1_div_clk.common.hw,
-		[CLK_WB_DIV]		= &wb_div_clk.common.hw,
-		[CLK_ROT_DIV]		= &rot_div_clk.common.hw,
-	},
-	.num	= CLK_NUMBER_WITH_ROT,
-};
-
 static struct ccu_reset_map sun8i_a83t_de2_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	/*
@@ -237,13 +199,6 @@ static struct ccu_reset_map sun50i_h5_de2_resets[] = {
 	[RST_WB]	= { 0x08, BIT(2) },
 };
 
-static struct ccu_reset_map sun50i_h6_de3_resets[] = {
-	[RST_MIXER0]	= { 0x08, BIT(0) },
-	[RST_MIXER1]	= { 0x08, BIT(1) },
-	[RST_WB]	= { 0x08, BIT(2) },
-	[RST_ROT]	= { 0x08, BIT(3) },
-};
-
 static const struct sunxi_ccu_desc sun8i_a83t_de2_clk_desc = {
 	.ccu_clks	= sun8i_a83t_de2_clks,
 	.num_ccu_clks	= ARRAY_SIZE(sun8i_a83t_de2_clks),
@@ -294,16 +249,6 @@ static const struct sunxi_ccu_desc sun50i_h5_de2_clk_desc = {
 	.num_resets	= ARRAY_SIZE(sun50i_h5_de2_resets),
 };
 
-static const struct sunxi_ccu_desc sun50i_h6_de3_clk_desc = {
-	.ccu_clks	= sun50i_h6_de3_clks,
-	.num_ccu_clks	= ARRAY_SIZE(sun50i_h6_de3_clks),
-
-	.hw_clks	= &sun50i_h6_de3_hw_clks,
-
-	.resets		= sun50i_h6_de3_resets,
-	.num_resets	= ARRAY_SIZE(sun50i_h6_de3_resets),
-};
-
 static int sunxi_de2_clk_probe(struct platform_device *pdev)
 {
 	struct resource *res;
@@ -406,7 +351,7 @@ static const struct of_device_id sunxi_de2_clk_ids[] = {
 	},
 	{
 		.compatible = "allwinner,sun50i-h6-de3-clk",
-		.data = &sun50i_h6_de3_clk_desc,
+		.data = &sun50i_h5_de2_clk_desc,
 	},
 	{ }
 };
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
