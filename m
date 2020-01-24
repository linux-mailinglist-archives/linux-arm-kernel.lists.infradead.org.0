Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11D51491DE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 00:21:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmJMBW3XAEJ+xz0Gx/311J8bK66v24lEF8dudxn6L7c=; b=R3ybtcoal84tFw
	M0yejfFGppI/KX5z8Tzdh8RmZ/clxVL6UiM4lCqXqVgSFYm0mhYbHaq4bm8uu1pDiw1xqwCK7ASBZ
	DzI9ADgeF3mUosIxtTujysBx9GRPX01gb3564maO9VKlqB3Xjl/X5gv73YdFmsb5ioJA9BSyOckz1
	NOs+akMbVkMBpLJU2UQgjJHuDM+uGK8yUPuhFHxuQ8alz/OYqB2IsIbg7UlA/QJPwQb3wNfXRb9UL
	vafn1p9PLF72rXjEw4meY8vuX1y43oxi1TQt1KpySmtd9hHu+AnzNnV7JZU8lMJ60FWsmYboPmnHi
	hcll6qomnMYUfnJGoTIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv8GQ-00022M-1f; Fri, 24 Jan 2020 23:21:22 +0000
Received: from mailoutvs55.siol.net ([185.57.226.246] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv8Fc-0001XZ-Oq
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 23:20:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id C2796522844;
 Sat, 25 Jan 2020 00:20:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id oCHcyPFtp5FI; Sat, 25 Jan 2020 00:20:30 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 5DDB8522899;
 Sat, 25 Jan 2020 00:20:30 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 03FC6522844;
 Sat, 25 Jan 2020 00:20:28 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 2/8] clk: sunxi-ng: sun8i-de2: Fix A83T clocks and reset
Date: Sat, 25 Jan 2020 00:20:08 +0100
Message-Id: <20200124232014.574989-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124232014.574989-1-jernej.skrabec@siol.net>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_152032_964173_ABADBDD9 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.246 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A83T also contains rotation core, but related clocks and reset are
missing. Add them.

With that fixed, H3 and V3s capabilities no longer match (they don't
have rotation core), so create new struct for them.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 31 ++++++++++++++++++++++------
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index 08074d935317..800659cf7347 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -50,6 +50,8 @@ static SUNXI_CCU_M(mixer1_div_a83_clk, "mixer1-div", "pll-de", 0x0c, 4, 4,
 		   CLK_SET_RATE_PARENT);
 static SUNXI_CCU_M(wb_div_a83_clk, "wb-div", "pll-de", 0x0c, 8, 4,
 		   CLK_SET_RATE_PARENT);
+static SUNXI_CCU_M(rot_div_a83_clk, "rot-div", "pll-de", 0x0c, 0x0c, 4,
+		   CLK_SET_RATE_PARENT);
 
 static struct ccu_common *sun50i_a64_de2_clks[] = {
 	&mixer0_clk.common,
@@ -81,6 +83,10 @@ static struct ccu_common *sun8i_a83t_de2_clks[] = {
 	&mixer0_div_a83_clk.common,
 	&mixer1_div_a83_clk.common,
 	&wb_div_a83_clk.common,
+
+	&bus_rot_clk.common,
+	&rot_clk.common,
+	&rot_div_a83_clk.common,
 };
 
 static struct ccu_common *sun8i_h3_de2_clks[] = {
@@ -113,16 +119,19 @@ static struct clk_hw_onecell_data sun8i_a83t_de2_hw_clks = {
 		[CLK_MIXER0]		= &mixer0_clk.common.hw,
 		[CLK_MIXER1]		= &mixer1_clk.common.hw,
 		[CLK_WB]		= &wb_clk.common.hw,
+		[CLK_ROT]		= &rot_clk.common.hw,
 
 		[CLK_BUS_MIXER0]	= &bus_mixer0_clk.common.hw,
 		[CLK_BUS_MIXER1]	= &bus_mixer1_clk.common.hw,
 		[CLK_BUS_WB]		= &bus_wb_clk.common.hw,
+		[CLK_BUS_ROT]		= &bus_rot_clk.common.hw,
 
 		[CLK_MIXER0_DIV]	= &mixer0_div_a83_clk.common.hw,
 		[CLK_MIXER1_DIV]	= &mixer1_div_a83_clk.common.hw,
 		[CLK_WB_DIV]		= &wb_div_a83_clk.common.hw,
+		[CLK_ROT_DIV]		= &rot_div_a83_clk.common.hw,
 	},
-	.num	= CLK_NUMBER_WITHOUT_ROT,
+	.num	= CLK_NUMBER_WITH_ROT,
 };
 
 static struct clk_hw_onecell_data sun8i_h3_de2_hw_clks = {
@@ -179,8 +188,18 @@ static struct clk_hw_onecell_data sun50i_a64_de2_hw_clks = {
 static struct ccu_reset_map sun8i_a83t_de2_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	/*
-	 * For A83T, H3 and R40, mixer1 reset line is shared with wb, so
+	 * A83T and R40 mixer1 reset line is shared with wb, so
 	 * only RST_WB is exported here.
+	 */
+	[RST_WB]	= { 0x08, BIT(2) },
+	[RST_ROT]	= { 0x08, BIT(3) },
+};
+
+static struct ccu_reset_map sun8i_h3_de2_resets[] = {
+	[RST_MIXER0]	= { 0x08, BIT(0) },
+	/*
+	 * H3 mixer1 reset line is shared with wb, so only RST_WB
+	 * is exported here.
 	 * For V3s there's just no mixer1, so it also shares this struct.
 	 */
 	[RST_WB]	= { 0x08, BIT(2) },
@@ -215,8 +234,8 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
 
 	.hw_clks	= &sun8i_h3_de2_hw_clks,
 
-	.resets		= sun8i_a83t_de2_resets,
-	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
+	.resets		= sun8i_h3_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun8i_h3_de2_resets),
 };
 
 static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
@@ -245,8 +264,8 @@ static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
 
 	.hw_clks	= &sun8i_v3s_de2_hw_clks,
 
-	.resets		= sun8i_a83t_de2_resets,
-	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
+	.resets		= sun8i_h3_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun8i_h3_de2_resets),
 };
 
 static int sunxi_de2_clk_probe(struct platform_device *pdev)
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
