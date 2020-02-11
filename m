Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1900715994F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:01:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXcQz61zECLkeBtj63b1xfaUqPQ5fdLo5qKcFxeQlN8=; b=rgoRPZSFjvDPA5
	U0B7hUfDDTMX+/UdvtvE19N6eQfFzogkeE9zkLyH2YKN2TvWPrRLCWqJJ3ZHR0jX22T/NZIwFIKKf
	eGwBM5Iyfhy+DkkDx/Sa4fjYeNFM3MKTce9J/MPpM0Q96hmH3eGDG0VDK8PTDft2jEqFo/Nult1oA
	AOFXo9C3Jz30zsuf2cyFbMvnHLoYcnXtH+pK77FKU2qm5vHo8H+gVQU2QPjtOhel4Jzc/XrSYGUul
	JoXXK03qFw5n54kkFqRFuJl811pYs4XpVWsPlu9qoyD3fg5r4fHs+A26XXkXROY5nprIUvqo2LViQ
	sB4VRzjDAwwPzysN6hMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1anE-0004rb-2L; Tue, 11 Feb 2020 19:01:56 +0000
Received: from mailoutvs8.siol.net ([185.57.226.199] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ama-0004Ky-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 8D1695251AB;
 Tue, 11 Feb 2020 20:01:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Yyqn1vpLFSjP; Tue, 11 Feb 2020 20:01:07 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 3C777525125;
 Tue, 11 Feb 2020 20:01:07 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id BA22E5251AC;
 Tue, 11 Feb 2020 20:01:04 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 2/7] clk: sunxi-ng: sun8i-de2: Add rotation core clocks and
 reset for A64
Date: Tue, 11 Feb 2020 19:59:31 +0100
Message-Id: <20200211185936.245174-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110116_541838_C053D000 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.199 listed in list.dnswl.org]
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

A64 has rotation core which needs clocks and reset. Because there is no
appropriate structures available, make a separate, A64 specific
structures.

Fixes: cf4881c12935 ("clk: sunxi-ng: fix the A64/H5 clock description of DE2 CCU")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 45 ++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index 2478ae314d0f..c6220be8e205 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -108,6 +108,24 @@ static struct ccu_common *sun8i_v3s_de2_clks[] = {
 	&wb_div_clk.common,
 };
 
+static struct ccu_common *sun50i_a64_de2_clks[] = {
+	&mixer0_clk.common,
+	&mixer1_clk.common,
+	&wb_clk.common,
+
+	&bus_mixer0_clk.common,
+	&bus_mixer1_clk.common,
+	&bus_wb_clk.common,
+
+	&mixer0_div_clk.common,
+	&mixer1_div_clk.common,
+	&wb_div_clk.common,
+
+	&bus_rot_clk.common,
+	&rot_clk.common,
+	&rot_div_clk.common,
+};
+
 static struct clk_hw_onecell_data sun8i_a83t_de2_hw_clks = {
 	.hws	= {
 		[CLK_MIXER0]		= &mixer0_clk.common.hw,
@@ -156,6 +174,26 @@ static struct clk_hw_onecell_data sun8i_v3s_de2_hw_clks = {
 	.num	= CLK_NUMBER_WITHOUT_ROT,
 };
 
+static struct clk_hw_onecell_data sun50i_a64_de2_hw_clks = {
+	.hws	= {
+		[CLK_MIXER0]		= &mixer0_clk.common.hw,
+		[CLK_MIXER1]		= &mixer1_clk.common.hw,
+		[CLK_WB]		= &wb_clk.common.hw,
+		[CLK_ROT]		= &rot_clk.common.hw,
+
+		[CLK_BUS_MIXER0]	= &bus_mixer0_clk.common.hw,
+		[CLK_BUS_MIXER1]	= &bus_mixer1_clk.common.hw,
+		[CLK_BUS_WB]		= &bus_wb_clk.common.hw,
+		[CLK_BUS_ROT]		= &bus_rot_clk.common.hw,
+
+		[CLK_MIXER0_DIV]	= &mixer0_div_clk.common.hw,
+		[CLK_MIXER1_DIV]	= &mixer1_div_clk.common.hw,
+		[CLK_WB_DIV]		= &wb_div_clk.common.hw,
+		[CLK_ROT_DIV]		= &rot_div_clk.common.hw,
+	},
+	.num	= CLK_NUMBER_WITH_ROT,
+};
+
 static struct clk_hw_onecell_data sun50i_h6_de3_hw_clks = {
 	.hws	= {
 		[CLK_MIXER0]		= &mixer0_clk.common.hw,
@@ -190,6 +228,7 @@ static struct ccu_reset_map sun50i_a64_de2_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	[RST_MIXER1]	= { 0x08, BIT(1) },
 	[RST_WB]	= { 0x08, BIT(2) },
+	[RST_ROT]	= { 0x08, BIT(3) },
 };
 
 static struct ccu_reset_map sun50i_h5_de2_resets[] = {
@@ -226,10 +265,10 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
 };
 
 static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
-	.ccu_clks	= sun8i_h3_de2_clks,
-	.num_ccu_clks	= ARRAY_SIZE(sun8i_h3_de2_clks),
+	.ccu_clks	= sun50i_a64_de2_clks,
+	.num_ccu_clks	= ARRAY_SIZE(sun50i_a64_de2_clks),
 
-	.hw_clks	= &sun8i_h3_de2_hw_clks,
+	.hw_clks	= &sun50i_a64_de2_hw_clks,
 
 	.resets		= sun50i_a64_de2_resets,
 	.num_resets	= ARRAY_SIZE(sun50i_a64_de2_resets),
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
