Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63CEB2B76
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 15:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aGm6vbodh99E3e+3VlhmdNLUVybx3aoTpvPehwddswY=; b=Vwb16ikS2AUT7z
	+2FumFI2kQAiQAc8OqTk46rXFQ7N/Fblm6ASRFLQ7x6XcAnvmMYOUbIXKh5O4RD+nAZGAh70FXMDm
	ekiGHdvgqbwrOjTKjhVCdvRrGIrM0Uu0T9kHhgb6JDNYw9jn+P5c388al776M8h9MJKPNMwynZbxd
	zuwr1BiPYg8Anigwsx2aze8twUYkygiAHskOlNrmCXOJ04rAD1SaM6U3pdsmJVi/6aChoSb8dC/fo
	MkZ1gSNjqlgKAKWxeCmD/rpxe+iY6dlbka8jTz7UPYe3lIN+2/OUVvQ3hEKdd1vCLN/X/pe6kfRAA
	MVD6dWkmDWL9uvAYQcPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i98Sb-0008L2-ML; Sat, 14 Sep 2019 13:51:33 +0000
Received: from mailoutvs19.siol.net ([185.57.226.210] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i98SH-0008Jg-J3
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 13:51:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id DE9675216E5;
 Sat, 14 Sep 2019 15:51:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id A2R4GLbmMh5Y; Sat, 14 Sep 2019 15:51:06 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 74E795216ED;
 Sat, 14 Sep 2019 15:51:06 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 703945216E5;
 Sat, 14 Sep 2019 15:51:05 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH] clk: sunxi-ng: h6: Use sigma-delta modulation for audio PLL
Date: Sat, 14 Sep 2019 15:51:00 +0200
Message-Id: <20190914135100.327412-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_065113_801742_2164B85D 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.210 listed in list.dnswl.org]
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Audio devices needs exact clock rates in order to correctly reproduce
the sound. Until now, only integer factors were used to configure H6
audio PLL which resulted in inexact rates. Fix that by adding support
for fractional factors using sigma-delta modulation look-up table. It
contains values for two most commonly used audio base frequencies.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
index d89353a3cdec..ed6338d74474 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
@@ -203,12 +203,21 @@ static struct ccu_nkmp pll_hsic_clk = {
  * hardcode it to match with the clock names.
  */
 #define SUN50I_H6_PLL_AUDIO_REG		0x078
+
+static struct ccu_sdm_setting pll_audio_sdm_table[] = {
+	{ .rate = 541900800, .pattern = 0xc001288d, .m = 1, .n = 22 },
+	{ .rate = 589824000, .pattern = 0xc00126e9, .m = 1, .n = 24 },
+};
+
 static struct ccu_nm pll_audio_base_clk = {
 	.enable		= BIT(31),
 	.lock		= BIT(28),
 	.n		= _SUNXI_CCU_MULT_MIN(8, 8, 12),
 	.m		= _SUNXI_CCU_DIV(1, 1), /* input divider */
+	.sdm		= _SUNXI_CCU_SDM(pll_audio_sdm_table,
+					 BIT(24), 0x178, BIT(31)),
 	.common		= {
+		.features	= CCU_FEATURE_SIGMA_DELTA_MOD,
 		.reg		= 0x078,
 		.hw.init	= CLK_HW_INIT("pll-audio-base", "osc24M",
 					      &ccu_nm_ops,
@@ -753,12 +762,12 @@ static const struct clk_hw *clk_parent_pll_audio[] = {
 };
 
 /*
- * The divider of pll-audio is fixed to 8 now, as pll-audio-4x has a
- * fixed post-divider 2.
+ * The divider of pll-audio is fixed to 24 for now, so 24576000 and 22579200
+ * rates can be set exactly in conjunction with sigma-delta modulation.
  */
 static CLK_FIXED_FACTOR_HWS(pll_audio_clk, "pll-audio",
 			    clk_parent_pll_audio,
-			    8, 1, CLK_SET_RATE_PARENT);
+			    24, 1, CLK_SET_RATE_PARENT);
 static CLK_FIXED_FACTOR_HWS(pll_audio_2x_clk, "pll-audio-2x",
 			    clk_parent_pll_audio,
 			    4, 1, CLK_SET_RATE_PARENT);
@@ -1215,12 +1224,12 @@ static int sun50i_h6_ccu_probe(struct platform_device *pdev)
 	}
 
 	/*
-	 * Force the post-divider of pll-audio to 8 and the output divider
-	 * of it to 1, to make the clock name represents the real frequency.
+	 * Force the post-divider of pll-audio to 12 and the output divider
+	 * of it to 2, so 24576000 and 22579200 rates can be set exactly.
 	 */
 	val = readl(reg + SUN50I_H6_PLL_AUDIO_REG);
 	val &= ~(GENMASK(21, 16) | BIT(0));
-	writel(val | (7 << 16), reg + SUN50I_H6_PLL_AUDIO_REG);
+	writel(val | (11 << 16) | BIT(0), reg + SUN50I_H6_PLL_AUDIO_REG);
 
 	/*
 	 * First clock parent (osc32K) is unusable for CEC. But since there
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
