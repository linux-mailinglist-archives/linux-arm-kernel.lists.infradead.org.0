Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ADC158588
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:28:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EyGHqz2uvIvKRCqwNZdI9y5w8WZhHy2hICpq+X7Z04=; b=oYZ21w1HXGRMH9
	2PglEb/NJlIdkZCW8h4nG7mBnci5QOIcIf59R90KCjC0c05MUE3xR5GGNxjNt4FyO228cX7X6Z4dt
	nf3WWD4hIz8c3ZtoHbtQmr/TE1QlgN/Qez4n69JM4b4qySbpqV2XFPeBk6NhhaM13AlGKd3IK+XOy
	vmaVCKtVvLwuiSpAi/cRbd7iCNqTAbLs6i+k2m6A0lsfK7A+eM7HBbF2wtq5DO4myWNVdVstFiDET
	eTyG/ILZxE+W8aX3VK8QzuwkwVuGM2nbUqZvm7Z+5Vsafe9BOrh4fiuLTJN24YdI0re5mm4XXSiAG
	gQKOzDVaifS3Nkw/RCdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HXw-0005p7-Fp; Mon, 10 Feb 2020 22:28:52 +0000
Received: from mailoutvs37.siol.net ([185.57.226.228] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXW-0005ci-Of
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 86EB95222D1;
 Mon, 10 Feb 2020 23:28:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id zPvS-AFRxC6X; Mon, 10 Feb 2020 23:28:19 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 21CAF522286;
 Mon, 10 Feb 2020 23:28:19 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id C0717521B7E;
 Mon, 10 Feb 2020 23:28:16 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 1/7] clk: sunxi-ng: sun8i-de2: Sort structures
Date: Mon, 10 Feb 2020 23:28:01 +0100
Message-Id: <20200210222807.206426-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142826_954143_4B77E77F 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.228 listed in list.dnswl.org]
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

Current structures are not sorted by family first and then
alphabetically. Let's do that now.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 56 ++++++++++++++--------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index d9668493c3f9..a928e0c32222 100644
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
@@ -108,6 +90,24 @@ static struct ccu_common *sun8i_v3s_de2_clks[] = {
 	&wb_div_clk.common,
 };
 
+static struct ccu_common *sun50i_h6_de3_clks[] = {
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
@@ -219,6 +219,16 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
 	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
 };
 
+static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
+	.ccu_clks	= sun8i_v3s_de2_clks,
+	.num_ccu_clks	= ARRAY_SIZE(sun8i_v3s_de2_clks),
+
+	.hw_clks	= &sun8i_v3s_de2_hw_clks,
+
+	.resets		= sun8i_a83t_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
+};
+
 static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
 	.ccu_clks	= sun8i_h3_de2_clks,
 	.num_ccu_clks	= ARRAY_SIZE(sun8i_h3_de2_clks),
@@ -239,16 +249,6 @@ static const struct sunxi_ccu_desc sun50i_h6_de3_clk_desc = {
 	.num_resets	= ARRAY_SIZE(sun50i_h6_de3_resets),
 };
 
-static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
-	.ccu_clks	= sun8i_v3s_de2_clks,
-	.num_ccu_clks	= ARRAY_SIZE(sun8i_v3s_de2_clks),
-
-	.hw_clks	= &sun8i_v3s_de2_hw_clks,
-
-	.resets		= sun8i_a83t_de2_resets,
-	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
-};
-
 static int sunxi_de2_clk_probe(struct platform_device *pdev)
 {
 	struct resource *res;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
