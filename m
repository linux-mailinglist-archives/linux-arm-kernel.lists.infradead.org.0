Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C883159954
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3vMn7GbM6SKLZ7mKTeKp6xWtew2dQNyw3sPCwIc1d8=; b=VDDyyVtcfekWEt
	FikPKMDE3k03C336zO7jK79bgSC+xQS7ey3h2IfuwAydwIwhcXqvctxUJf6PUCgO0S1yFFmky3EP6
	PpUfaTg6fkmeQSzDidESN1rx7jY+xXrjJrub70CcrE35/J5TcJzuBwfJhWifBHrTWdQXYmfPGyMzC
	Ugi6Y9RHXJ0W3vFVPW0h6AtRiyCph43rrbi0SaMdSocSixby8z+k077xJXClWxgyYMhs12Gh6+6Eh
	EwNlHOleYiv7Kj+WqPxnVrXjyIxXX1TXGSud2SOrfEixBvWPHRSvUXu4nNb4ttcbfwfsvR8nK6sga
	NIXF6dI3ZXr+Bleyjp2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1anh-0005Ip-Lr; Tue, 11 Feb 2020 19:02:25 +0000
Received: from mailoutvs39.siol.net ([185.57.226.230] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ame-0004NE-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:01:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 90D61522179;
 Tue, 11 Feb 2020 20:01:17 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 1TvOaAe7n2Fg; Tue, 11 Feb 2020 20:01:17 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 43AC252069B;
 Tue, 11 Feb 2020 20:01:17 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id CDB785215CF;
 Tue, 11 Feb 2020 20:01:14 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 6/7] clk: sunxi-ng: sun8i-de2: Add R40 specific quirks
Date: Tue, 11 Feb 2020 19:59:35 +0100
Message-Id: <20200211185936.245174-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200211185936.245174-1-jernej.skrabec@siol.net>
References: <20200211185936.245174-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110120_495092_916E7C5E 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.230 listed in list.dnswl.org]
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

R40 is actually very similar to A64, but it doesn't have mixer1 reset.
This means it's clocks and resets combination is unique and R40 specific
quirks are needed.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index 9656553c01f3..5a278c391f1d 100644
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
 static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
 	.ccu_clks	= sun50i_a64_de2_clks,
 	.num_ccu_clks	= ARRAY_SIZE(sun50i_a64_de2_clks),
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
