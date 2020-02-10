Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A7115858C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FEToa2Np195EFv2Hn9Fkg+OXeWSf8oNBDHoSMF3T28=; b=npgxUEFMENdnuq
	2Jlm77DfjC0FM/E2E7y5lBVI0UXS37kRucliDKu/m76DR6xwKbaTflX3biRy9mdWYbf5OpHwtDkpL
	wWM/+btrngfPyRvqtzcNQQD5a3hRLWciFl2fjxnUJkPABc7GvQ5ivoqaSwWEXZy/KBePD5+w8Rok5
	4Z0TieyHFQdYvLEKdNt8UzOKghylLn0pShjVhh+Xkk1OnNFWdRUQWANXVIzk/IkIvH8o+1KdDy0MY
	v5oSs4r7D5IEqHaZuEEW6jE39aWyb5h+k+KJ1w/O6q5zapOLKUXuJfq0qkouZ8TMn4BqB9pL4tUn5
	hFhVDaVMesYu+JXHBVVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HYN-0006JB-9s; Mon, 10 Feb 2020 22:29:19 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXX-0005cl-06
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id AE9075222EE;
 Mon, 10 Feb 2020 23:28:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id wim-yzsP0gfc; Mon, 10 Feb 2020 23:28:24 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 4ACD0522286;
 Mon, 10 Feb 2020 23:28:24 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id E050C5222EE;
 Mon, 10 Feb 2020 23:28:21 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 3/7] clk: sunxi-ng: sun8i-de2: Add rotation core clocks and
 reset for A64
Date: Mon, 10 Feb 2020 23:28:03 +0100
Message-Id: <20200210222807.206426-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142827_192441_9D13E05C 
X-CRM114-Status: GOOD (  10.30  )
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

A64 has rotation core which needs clocks and reset. Add them.

Fixes: cf4881c12935 "clk: sunxi-ng: fix the A64/H5 clock description of DE2 CCU"
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 45 ++++++++++++++++++++++++++--
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index f449c22e59e8..2636a416a6f1 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -90,6 +90,24 @@ static struct ccu_common *sun8i_v3s_de2_clks[] = {
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
 static struct ccu_common *sun50i_h6_de3_clks[] = {
 	&mixer0_clk.common,
 	&mixer1_clk.common,
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
@@ -236,10 +275,10 @@ static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
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
