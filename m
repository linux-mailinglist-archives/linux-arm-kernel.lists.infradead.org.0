Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33294158590
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:30:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1u/sn6WK7KKNbIynskRYrlJH+Pig7G0lp6HbKNttkE=; b=PiPTNfiipbwtJA
	6l7JUG/8rflwPO/upsCqpe3orPsNmPM+ixp3SD4O7beNMisXDIX9XSwmK927YeoGOAQYriFeMAG2T
	1k2NmhEeAsba+g4Lf9uKhZEV6YxcG/onalfL4RGu6Q1ktbRIKIwUFXYYygAZMuAvZn0u2j0n9HkFL
	YoadZu5nF9Qys6wfU4fkbICSM4SYx00acXCMXomqwXsEXa8e36K24TsiGiR9GD4ccZSs4BBoV3kGy
	Ows6E/YzoKHDeNctJ+xckmECogEguu2oDcyoX4E0bvCDYDyKHiIF0QGWhmbYG/0AobROSwQDvV0aE
	lsMckDd6EnuPZ3Xx0eKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HYz-0006zT-Nh; Mon, 10 Feb 2020 22:29:57 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXd-0005h8-Rd
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:35 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 8577C5222D1;
 Mon, 10 Feb 2020 23:28:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id CKTGvVbfkatu; Mon, 10 Feb 2020 23:28:32 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2A22B521B7E;
 Mon, 10 Feb 2020 23:28:32 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id B47F1522286;
 Mon, 10 Feb 2020 23:28:29 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 6/7] clk: sunxi-ng: sun8i-de2: Add rotation core clocks and
 reset for A83T
Date: Mon, 10 Feb 2020 23:28:06 +0100
Message-Id: <20200210222807.206426-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142834_061984_19148932 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.230 listed in list.dnswl.org]
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

A83T structures don't have clocks and reset for rotation core. Add them.

Fixes: 763c5bd045b1 "clk: sunxi-ng: add support for DE2 CCU"
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index edb73fdf49f1..f44246ad560a 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -50,6 +50,8 @@ static SUNXI_CCU_M(mixer1_div_a83_clk, "mixer1-div", "pll-de", 0x0c, 4, 4,
 		   CLK_SET_RATE_PARENT);
 static SUNXI_CCU_M(wb_div_a83_clk, "wb-div", "pll-de", 0x0c, 8, 4,
 		   CLK_SET_RATE_PARENT);
+static SUNXI_CCU_M(rot_div_a83_clk, "rot-div", "pll-de", 0x0c, 0x0c, 4,
+		   CLK_SET_RATE_PARENT);
 
 static struct ccu_common *sun8i_a83t_de2_clks[] = {
 	&mixer0_clk.common,
@@ -63,6 +65,10 @@ static struct ccu_common *sun8i_a83t_de2_clks[] = {
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
@@ -183,6 +192,7 @@ static struct ccu_reset_map sun8i_a83t_de2_resets[] = {
 	 * exported here.
 	 */
 	[RST_WB]	= { 0x08, BIT(2) },
+	[RST_ROT]	= { 0x08, BIT(3) },
 };
 
 static struct ccu_reset_map sun8i_h3_de2_resets[] = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
