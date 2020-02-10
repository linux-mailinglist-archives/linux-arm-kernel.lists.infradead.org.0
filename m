Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5252715858E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:29:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkQeqY3qZgIHgl+v2P1gvlUe55+FV9IoIPS3owLMF5c=; b=F7eS4Yk651xjNV
	a01VEJTfagHyGDIjEqYsKYf56pOht6MG2ErBI24598Pnw0YujU2Bni5XVgp+M6P4HmtauFzVzRuUV
	ieasYX8e1ejJZGs5K9dTjJOjqg9RTOf4eRo9DW9S60PuWj1uPyk3tjUP4AHelybjSo+dq9hct1bCi
	Uj3j5zw8c+/vwuEWrCwPKBGkggNJKR2WUpKK+ctsyOPTOb0YLTgRqoeRBhTTYUu7o1RnFCjkatikS
	H3RHp2+vVPFJ+ak9Saiz6pC+1SxWH6abJrtXgeeTw2ZlOe5tgOH0rf9At3OTueOL1YeqCWnwY9IFf
	2xOeXoTcs0nY8Ap9ZqQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HYk-0006hf-R1; Mon, 10 Feb 2020 22:29:42 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXb-0005ee-CJ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0D8F05222B4;
 Mon, 10 Feb 2020 23:28:30 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id tFjqKTq4CtLd; Mon, 10 Feb 2020 23:28:29 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id AE299521B7E;
 Mon, 10 Feb 2020 23:28:29 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 321245222D3;
 Mon, 10 Feb 2020 23:28:27 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 5/7] clk: sunxi-ng: sun8i-de2: Don't reuse A83T resets
Date: Mon, 10 Feb 2020 23:28:05 +0100
Message-Id: <20200210222807.206426-6-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142831_595911_EA73E822 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.205 listed in list.dnswl.org]
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

Currently, V3s and H3 reuse A83T reset structure. However, A83T contains
additional core for rotation, which is not present in V3s and H3.

Make new reset structure for H3 and let V3s reuse it. A83T reset
structure will be amended in subsequent commit.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index 55ab05328ffc..edb73fdf49f1 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -179,9 +179,18 @@ static struct clk_hw_onecell_data sun50i_a64_de2_hw_clks = {
 static struct ccu_reset_map sun8i_a83t_de2_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	/*
-	 * For A83T, H3 and R40, mixer1 reset line is shared with wb, so
-	 * only RST_WB is exported here.
-	 * For V3s there's just no mixer1, so it also shares this struct.
+	 * Mixer1 reset line is shared with wb, so only RST_WB is
+	 * exported here.
+	 */
+	[RST_WB]	= { 0x08, BIT(2) },
+};
+
+static struct ccu_reset_map sun8i_h3_de2_resets[] = {
+	[RST_MIXER0]	= { 0x08, BIT(0) },
+	/*
+	 * Mixer1 reset line is shared with wb, so only RST_WB is
+	 * exported here.
+	 * V3s doesn't have mixer1, so it also shares this struct.
 	 */
 	[RST_WB]	= { 0x08, BIT(2) },
 };
@@ -215,8 +224,8 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
 
 	.hw_clks	= &sun8i_h3_de2_hw_clks,
 
-	.resets		= sun8i_a83t_de2_resets,
-	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
+	.resets		= sun8i_h3_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun8i_h3_de2_resets),
 };
 
 static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
@@ -225,8 +234,8 @@ static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
 
 	.hw_clks	= &sun8i_v3s_de2_hw_clks,
 
-	.resets		= sun8i_a83t_de2_resets,
-	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
+	.resets		= sun8i_h3_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun8i_h3_de2_resets),
 };
 
 static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
