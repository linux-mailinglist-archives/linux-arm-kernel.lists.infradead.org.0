Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B575159952
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:02:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/SQ5bCPnm1exCyLRDY4Bs3tU2LXuAHHMsgqSW9UU0I=; b=gfYjs3mKkNO6xG
	AA1QzXsWAi4VF8NNXC/9TwzF0Cel4QDHq75vgWHU3cie5hofUkD5jWP8ijJYrsDHazygW5U91fVxE
	Eeo8yM+VOroXKZLcJifyi95Cj4Ve/Gn9wngWS4KyQsWfwOM+DSl28zNQhAHltEWLZa9DpHWhhW2z1
	vSwgJrfAm41ei5v7V7DTMkECc6F36OuWl66zngfEJrCvxqjk/FxXuMx192FuOKtmIje2e5cC/76SD
	iFhP30szh/BM9vWOmDkWCr3Vs+VJs7fUv7gCXMhQQfuqim8H89SY13i94Iu3G1l8KjxL1kO07Ap99
	eXp2pquTl/Re5giuhhrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1anQ-00053h-GK; Tue, 11 Feb 2020 19:02:08 +0000
Received: from mailoutvs60.siol.net ([185.57.226.251] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1amb-0004LF-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6686B520F5A;
 Tue, 11 Feb 2020 20:01:12 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id uxr_8-pvhZ7V; Tue, 11 Feb 2020 20:01:12 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1B9B9520E21;
 Tue, 11 Feb 2020 20:01:12 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id A9FA0520551;
 Tue, 11 Feb 2020 20:01:09 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 4/7] clk: sunxi-ng: sun8i-de2: Don't reuse A83T resets
Date: Tue, 11 Feb 2020 19:59:33 +0100
Message-Id: <20200211185936.245174-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110118_002858_74DA4268 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.251 listed in list.dnswl.org]
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

Currently, V3s and H3 reuse A83T reset structure. However, A83T contains
additional core for rotation, which is not present in V3s and H3.

Make new reset structure for H3 and let V3s reuse it. A83T reset
structure will be amended in subsequent commit.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index 87a30d072ae9..bbbe1ed7aba1 100644
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
 
 static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
@@ -245,8 +254,8 @@ static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
 
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
