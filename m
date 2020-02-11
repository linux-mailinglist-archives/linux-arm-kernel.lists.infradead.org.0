Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD0D159956
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3tngZMi8tdv3X4xYCBmC8x4WMT3blR+wi8oqDoSdIU=; b=rKbsFlgYXoXExM
	y2NdOFou/h21lYYxnVwi+vOADoOQq6WsyNfxXXxKEgijAtSpATNBmkVmgYD9jak8CRuy10QLJNEJ0
	FI8wlSnuYTuRIPgiGVGT134Oizl5x9+PIfHmHPOmZsK/Giqa4pXmoK19khmJuuaGpJBBGFIfZImqb
	1QrftbQ/TY0WOqGiFcdVCX6QEJTkSMq+b+6hbhKIhe3V21ufVGW6RdkBB7SrWjxebbPM70rCtUibX
	Mfv0ltxi/Bug49dCvPxjZy3nf8YaFuxHXqTSRAv0E7ZRjhIq/8YNBw2rJFluGxAObBAEqsjp88/kM
	rkybTMnLxUIo1rUkbm/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1any-0005Z0-TI; Tue, 11 Feb 2020 19:02:42 +0000
Received: from mailoutvs55.siol.net ([185.57.226.246] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ame-0004ND-8h
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 19A265214E7;
 Tue, 11 Feb 2020 20:01:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id smvB9Y91NbhT; Tue, 11 Feb 2020 20:01:14 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C440C52151D;
 Tue, 11 Feb 2020 20:01:14 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 5A76D520EDD;
 Tue, 11 Feb 2020 20:01:12 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 5/7] clk: sunxi-ng: sun8i-de2: Add rotation core clocks and
 reset for A83T
Date: Tue, 11 Feb 2020 19:59:34 +0100
Message-Id: <20200211185936.245174-6-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110120_488091_9404BCAB 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.246 listed in list.dnswl.org]
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

A83T structures don't have clocks and reset for rotation core. Add them.

Fixes: 763c5bd045b1 ("clk: sunxi-ng: add support for DE2 CCU")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index bbbe1ed7aba1..9656553c01f3 100644
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
