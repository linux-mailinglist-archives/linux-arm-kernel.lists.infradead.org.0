Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B66E159959
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvSDuJCy0kTSPn93k4S7I6tB0Hu9SWsXFqliaTt3OxI=; b=epEHkpkC0kjPQP
	OHou/ijuhC8f6JHKVA6XmA+j5e3ueV20RI/h97Q5QFGAJr0ZBw1K2eQG3i3QY28UJ4mva5AlecA/G
	K1cInghEU0g7wmxVKzvkyce09Kf8ZKA4ZQgMD27FhPvH3wvJ2n/K3UGKf+4b/7ZPOO7eIEOrKbPsu
	Xx5VtEoIMc6XQHNsYcaspQAPYBWOEQMxIZPCKhHnIboXFO6dihpVNGraSPnuhPCEdh+VaVa2jUtGv
	X0zHM5dZlN0M8gxPgkSn1AsMEdBZstoqjWvSE6d8Lmr5xLS4sma+nxAmmZDPlqJwfkbtHFUi5xwQd
	0BygrKprinvJN5n+U1BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aoK-0005yW-IN; Tue, 11 Feb 2020 19:03:04 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1amt-0004dw-6a
 for linux-arm-kernel@bombadil.infradead.org; Tue, 11 Feb 2020 19:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Ri3iYR/72q6OCKSzdM+ETYs7AnSeW+IHtrnHD9XJTVQ=; b=OJVT8I0jUQMWc6W92CHGndNTKv
 y0E8uAz03TvQfQWLJ1qUDbnoqFnoZjAbz7rRXz9MxaPQMjBbZLjte7/xFRKizNXWpFj+6mnDOTxYa
 NzOroCCtTeEU/hTYvAIfc9aqqtS8OOASLA3vRYjHQ6S6cCgSYWl5RSGuHdafSzLNWcvQKASGMOzdc
 xlvbsFaohzZd/eK8Mghi2NZyY1WoGr/wz4KDS+jUhNGuxXkGK+A6Rzf29qfljYBD+3K/iyU8mGyjk
 i7ylGjpDXh64t1nHNRp6Fuc5SVkvMVhVEA2+lssY5VpYWQgpJ5Ahew+hsiQ9u4nBgfcjqTtiDuqM6
 2RS/pp2Q==;
Received: from mailoutvs55.siol.net ([185.57.226.246] helo=mail.siol.net)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1amo-0002H0-B3
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0B1625251B3;
 Tue, 11 Feb 2020 20:01:05 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id EuYIkLmc_RTE; Tue, 11 Feb 2020 20:01:04 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id B40985251AB;
 Tue, 11 Feb 2020 20:01:04 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 4779A525125;
 Tue, 11 Feb 2020 20:01:02 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 1/7] clk: sunxi-ng: sun8i-de2: Split out H5 definitions
Date: Tue, 11 Feb 2020 19:59:30 +0100
Message-Id: <20200211185936.245174-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_190130_585910_8AB0C047 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.246 listed in list.dnswl.org]
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

H5 has less clocks and resets than A64. Currently that's not obvious
because A64 is missing rotation core related clocks and reset.

Split out H5 definition. A64 structures will be fixed in subsequent
commit.

Note that this patch depends on commit 19368d99746e ("clk: sunxi-ng:
add support for Allwinner H3 DE2 CCU") for the H3 clock list.

Fixes: 763c5bd045b1 ("clk: sunxi-ng: add support for DE2 CCU")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index d9668493c3f9..2478ae314d0f 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -192,6 +192,12 @@ static struct ccu_reset_map sun50i_a64_de2_resets[] = {
 	[RST_WB]	= { 0x08, BIT(2) },
 };
 
+static struct ccu_reset_map sun50i_h5_de2_resets[] = {
+	[RST_MIXER0]	= { 0x08, BIT(0) },
+	[RST_MIXER1]	= { 0x08, BIT(1) },
+	[RST_WB]	= { 0x08, BIT(2) },
+};
+
 static struct ccu_reset_map sun50i_h6_de3_resets[] = {
 	[RST_MIXER0]	= { 0x08, BIT(0) },
 	[RST_MIXER1]	= { 0x08, BIT(1) },
@@ -229,6 +235,16 @@ static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
 	.num_resets	= ARRAY_SIZE(sun50i_a64_de2_resets),
 };
 
+static const struct sunxi_ccu_desc sun50i_h5_de2_clk_desc = {
+	.ccu_clks	= sun8i_h3_de2_clks,
+	.num_ccu_clks	= ARRAY_SIZE(sun8i_h3_de2_clks),
+
+	.hw_clks	= &sun8i_h3_de2_hw_clks,
+
+	.resets		= sun50i_h5_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun50i_h5_de2_resets),
+};
+
 static const struct sunxi_ccu_desc sun50i_h6_de3_clk_desc = {
 	.ccu_clks	= sun50i_h6_de3_clks,
 	.num_ccu_clks	= ARRAY_SIZE(sun50i_h6_de3_clks),
@@ -347,7 +363,7 @@ static const struct of_device_id sunxi_de2_clk_ids[] = {
 	},
 	{
 		.compatible = "allwinner,sun50i-h5-de2-clk",
-		.data = &sun50i_a64_de2_clk_desc,
+		.data = &sun50i_h5_de2_clk_desc,
 	},
 	{
 		.compatible = "allwinner,sun50i-h6-de3-clk",
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
