Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63029158591
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:30:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EJLeKorpXr4f0zvVpHSqHFuzf5dUid547OY809RYLX8=; b=k3Uq+jA0tQfJKn
	P1YOrZOmNYSCT2uHPcvsfUsxkmlzdXVf/c7YqbZU4fpKCgkaLe8d/KCoveaudGty5B1b2pNMnUjNT
	Cu8otDTKId3aehyWnRr8HBC2lSKQBEUUc/i3F+1imiFo+TN3kCLsMQ+147aWLerw80hbpVkXwpZBB
	AVsh0YCYcOseBSK5ZI5D6dRglPSSPu+NXIr6Ie29hUV5GUG5bMEzCcUcYAzCUuktmZK87A4ydFmU+
	4OBk34WdcI1heTPFc57uO/JM6QjLMykAA/Ex8Xese7EBPKE7CHGYjSD/Ou+jQucxMk+MU5DeVQSld
	fFqouqQasxgwTcdVimuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HZK-0007EV-GA; Mon, 10 Feb 2020 22:30:18 +0000
Received: from mailoutvs44.siol.net ([185.57.226.235] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXh-0005jy-7G
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id D5F3A522286;
 Mon, 10 Feb 2020 23:28:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 7MmyhTadRlWt; Mon, 10 Feb 2020 23:28:34 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8CEC9521B7E;
 Mon, 10 Feb 2020 23:28:34 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 3CF70522286;
 Mon, 10 Feb 2020 23:28:32 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 7/7] clk: sunxi-ng: sun8i-de2: Add R40 specific quirks
Date: Mon, 10 Feb 2020 23:28:07 +0100
Message-Id: <20200210222807.206426-8-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142837_424955_8BA404FF 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.235 listed in list.dnswl.org]
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

R40 is actually very similar to A64, but it doesn't have mixer1 reset.
This means it's clocks and resets combination is unique and R40 specific
quirks are needed.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index f44246ad560a..d2142ab9207f 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
@@ -238,6 +238,16 @@ static const struct sunxi_ccu_desc sun8i_h3_de2_clk_desc = {
 	.num_resets	= ARRAY_SIZE(sun8i_h3_de2_resets),
 };
 
+static const struct sunxi_ccu_desc sun8i_r40_de2_clk_desc = {
+	.ccu_clks	= sun50i_a64_de2_clks,
+	.num_ccu_clks	= ARRAY_SIZE(sun50i_a64_de2_clks),
+
+	.hw_clks	= &sun50i_a64_de2_hw_clks,
+
+	.resets		= sun8i_a83t_de2_resets,
+	.num_resets	= ARRAY_SIZE(sun8i_a83t_de2_resets),
+};
+
 static const struct sunxi_ccu_desc sun8i_v3s_de2_clk_desc = {
 	.ccu_clks	= sun8i_v3s_de2_clks,
 	.num_ccu_clks	= ARRAY_SIZE(sun8i_v3s_de2_clks),
@@ -356,6 +366,10 @@ static const struct of_device_id sunxi_de2_clk_ids[] = {
 		.compatible = "allwinner,sun8i-h3-de2-clk",
 		.data = &sun8i_h3_de2_clk_desc,
 	},
+	{
+		.compatible = "allwinner,sun8i-r40-de2-clk",
+		.data = &sun8i_r40_de2_clk_desc,
+	},
 	{
 		.compatible = "allwinner,sun8i-v3s-de2-clk",
 		.data = &sun8i_v3s_de2_clk_desc,
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
