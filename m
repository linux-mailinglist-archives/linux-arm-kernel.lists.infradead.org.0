Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E411491C0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 00:20:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlWap1t+0Ga2AZCJJU1UndKUmsyJNDn4EOBgp/d0IfE=; b=hhN/uCvxreS2fX
	i+XBh7IiU2HofwcimD7l6uezSUZcnLXR2leAWWp5U3056AJzzE3QHH6ZEJ0syiOZA1VYqEpfzOXe7
	+wAvz+3T1Ba7UBrpBUCWkUhxdRBJeTUli1lvqE7vSk35dh5BGWsn7tQY7G8zUK/cGGtfb/pVMTHmq
	bRBPhG2/LBemvAsgxFxTYP1hj6b1DX5NZlZuHXc10lC/QzzzwX6zlMkHg3pyWQLfk3Fq1f5x+B/1Y
	hk38kDeD+jcigzGSRWqWF65OcBPeCQVZ3je0g41l7Fcn4T5awDNXtUtrLADXq+Ie8xCan/kvpcM+y
	pfYrBdjON0MTDmYncIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv8Fq-0001ZH-MP; Fri, 24 Jan 2020 23:20:46 +0000
Received: from mailoutvs21.siol.net ([185.57.226.212] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv8Fc-0001XC-Gn
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 23:20:34 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 5935D5227DE;
 Sat, 25 Jan 2020 00:20:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id lnLDxxhC6oQY; Sat, 25 Jan 2020 00:20:28 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id F22115227E3;
 Sat, 25 Jan 2020 00:20:27 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 4C65F522806;
 Sat, 25 Jan 2020 00:20:25 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 1/8] clk: sunxi-ng: sun8i-de2: Swap A64 and H6 definitions
Date: Sat, 25 Jan 2020 00:20:07 +0100
Message-Id: <20200124232014.574989-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124232014.574989-1-jernej.skrabec@siol.net>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_152032_723953_F2F2A70C 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.212 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some reason, A64 and H6 have swapped clocks and resets definitions.
H6 doesn't have rotation unit while A64 has. Swap around to correct the
issue.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index d9668493c3f9..08074d935317 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -51,7 +51,7 @@ static SUNXI_CCU_M(mixer1_div_a83_clk, "mixer1-div", "pll-de", 0x0c, 4, 4,
 static SUNXI_CCU_M(wb_div_a83_clk, "wb-div", "pll-de", 0x0c, 8, 4,
 		   CLK_SET_RATE_PARENT);
 
-static struct ccu_common *sun50i_h6_de3_clks[] = {
+static struct ccu_common *sun50i_a64_de2_clks[] = {
 	&mixer0_clk.common,
 	&mixer1_clk.common,
 	&wb_clk.common,
@@ -156,7 +156,7 @@ static struct clk_hw_onecell_data sun8i_v3s_de2_hw_clks = {
 	.num	= CLK_NUMBER_WITHOUT_ROT,
 };
 
-static struct clk_hw_onecell_data sun50i_h6_de3_hw_clks = {
+static struct clk_hw_onecell_data sun50i_a64_de2_hw_clks = {
 	.hws	= {
 		[CLK_MIXER0]		= &mixer0_clk.common.hw,
 		[CLK_MIXER1]		= &mixer1_clk.common.hw,
@@ -190,13 +190,13 @@ static struct ccu_reset_map sun50i_a64_de2_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	[RST_MIXER1]	= { 0x08, BIT(1) },
 	[RST_WB]	= { 0x08, BIT(2) },
+	[RST_ROT]	= { 0x08, BIT(3) },
 };
 
 static struct ccu_reset_map sun50i_h6_de3_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	[RST_MIXER1]	= { 0x08, BIT(1) },
 	[RST_WB]	= { 0x08, BIT(2) },
-	[RST_ROT]	= { 0x08, BIT(3) },
 };
 
 static const struct sunxi_ccu_desc sun8i_a83t_de2_clk_desc = {
@@ -220,20 +220,20 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
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
 };
 
 static const struct sunxi_ccu_desc sun50i_h6_de3_clk_desc = {
-	.ccu_clks	= sun50i_h6_de3_clks,
-	.num_ccu_clks	= ARRAY_SIZE(sun50i_h6_de3_clks),
+	.ccu_clks	= sun8i_h3_de2_clks,
+	.num_ccu_clks	= ARRAY_SIZE(sun8i_h3_de2_clks),
 
-	.hw_clks	= &sun50i_h6_de3_hw_clks,
+	.hw_clks	= &sun8i_h3_de2_hw_clks,
 
 	.resets		= sun50i_h6_de3_resets,
 	.num_resets	= ARRAY_SIZE(sun50i_h6_de3_resets),
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
