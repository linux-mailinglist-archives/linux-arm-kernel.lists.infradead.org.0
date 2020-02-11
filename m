Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E9815994E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KIfbmKv9qBQz6nHtG9mLcCKfmjPWPkNIEUUj6/e9AmA=; b=VezpeTHA8iaXOF
	ftJOnBm1aun1HD5adKr4JrNLXYw38FSLKX0pRPqaXab7nQE8Fmn3GglkgY79YNH1BoCxDSyVbWYvM
	7QWi+xcEm1JVp4Wvvr5cJu9HZAKXlduG2C31MKInbCTFxWWYtxOXX+MIBna2VGJuXClSk7q7YHUwf
	cA1UEgNo7w+gWT5K2+e38sLrTTGaD6a4WMTbN5oaYqgNH17fgJEtoTB9R9u0+i1z84RYDhSoNTg2T
	QPsfi+qL4iLzJ5GOZ9sSIcI86roXG1mTsd5STy5qLnPRxxYcWnZ+6pU6rOpO1aQDAMMWRYPTKdFsS
	uqNCD85a3XzcI8sEFdvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1an0-0004VK-Hk; Tue, 11 Feb 2020 19:01:42 +0000
Received: from mailoutvs31.siol.net ([185.57.226.222] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ama-0004Kz-5y
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id EDFEA520674;
 Tue, 11 Feb 2020 20:01:09 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id BhECTqe-gCir; Tue, 11 Feb 2020 20:01:09 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9403252012A;
 Tue, 11 Feb 2020 20:01:09 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 526AA525187;
 Tue, 11 Feb 2020 20:01:07 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 3/7] clk: sunxi-ng: sun8i-de2: H6 doesn't have rotate core
Date: Tue, 11 Feb 2020 19:59:32 +0100
Message-Id: <20200211185936.245174-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110116_385028_FA201380 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.222 listed in list.dnswl.org]
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
display engine, BSP kernel doesn't support it and there is no interrupt
listed for it. Manual poking registers also didn't reveal presence of
rotate core.

Let's assume there isn't any rotate core on H6 present and remove
related clocks. With that done, structures are same as those for H5, so
just reuse H5 structure.

Fixes: 56808da9f97f ("clk: sunxi-ng: Add support for H6 DE3 clocks")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 57 +---------------------------
 1 file changed, 1 insertion(+), 56 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index c6220be8e205..87a30d072ae9 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -51,24 +51,6 @@ static SUNXI_CCU_M(mixer1_div_a83_clk, "mixer1-div", "pll-de", 0x0c, 4, 4,
 static SUNXI_CCU_M(wb_div_a83_clk, "wb-div", "pll-de", 0x0c, 8, 4,
 		   CLK_SET_RATE_PARENT);
 
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
 static struct ccu_common *sun8i_a83t_de2_clks[] = {
 	&mixer0_clk.common,
 	&mixer1_clk.common,
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
@@ -284,16 +239,6 @@ static const struct sunxi_ccu_desc sun50i_h5_de2_clk_desc = {
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
 static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
 	.ccu_clks	= sun8i_v3s_de2_clks,
 	.num_ccu_clks	= ARRAY_SIZE(sun8i_v3s_de2_clks),
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
