Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A88158587
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 23:28:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxwf3QXW3ABxmT67Ba2BOOp0HVzR4LOFLTBIpPbb0eE=; b=p6ynCLmEog1sns
	kdq5crK1D4pP0SivfemwWkVOkpkB+rMxCRNeAbU6UOB2P40RKGOLCiHeUoS7eGkJqui7JIFjfwCIQ
	c5AfWaeknqkiW18+ougZaa+vrKELhm1CYNPFfo3YDhjewIoct8lypWwub7aM9BRqayolPyXEdKRfo
	33teNRaR31WWaB3yKcD7urtjzpwQxNWta4pcVOGUSnhsus7vQCwvzF26iNiOVvMfbeVBhhfF9vt6n
	2O4aZ+unVi4mg8c0EiL7v4PNiy8m93z6f7tbcqnJaTK2ucvxpcOqKgCelAgG3hg6PuEb5aYCjcnhm
	un5uS7wm8LiWz4iN4iDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1HXk-0005et-5c; Mon, 10 Feb 2020 22:28:40 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1HXW-0005ch-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 22:28:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 368D2521B7E;
 Mon, 10 Feb 2020 23:28:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id FBItU2wkv4Gz; Mon, 10 Feb 2020 23:28:21 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id DAC12522286;
 Mon, 10 Feb 2020 23:28:21 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 4BDC7521B7E;
 Mon, 10 Feb 2020 23:28:19 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 2/7] clk: sunxi-ng: sun8i-de2: Split out H5 definitions
Date: Mon, 10 Feb 2020 23:28:02 +0100
Message-Id: <20200210222807.206426-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210222807.206426-1-jernej.skrabec@siol.net>
References: <20200210222807.206426-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_142826_948400_117E51CD 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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

H5 has less clocks and resets than A64. Currently that's not obvious
because A64 is missing rotation core related clocks and reset.

Split out H5 definition. A64 structures will be fixed in subsequent
commit.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun8i-de2.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-de2.c b/drivers/clk/sunxi-ng/ccu-sun8i-de2.c
index a928e0c32222..f449c22e59e8 100644
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
@@ -239,6 +245,16 @@ static const struct sunxi_ccu_desc sun50i_a64_de2_clk_desc = {
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
