Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9479E7F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ffvlZuCF03xaKpFNK1NoOIP9rEuS3kMswHwJH9dPFyo=; b=blBOfmqaMZtlOG
	Q9NudpIL5ez8h09yXlBdOYDv3TDDLZYZzTWPvjbxnnYhg02a2ThJRNJyfEPlwhfGMHtwVKZALEPp2
	wxWMmPSlik1bSG1nkPWlmy4F4HHrDj12xhToevzx5pj8B0nYZtjnYAuGlx3bqiw8bXgfP+DQIMZJ7
	TtA/68MI0XKvVP/WbEgQdQiTOsTnMb8GqXmSH7UblfiO/EbMfUqm7qZvoveE3blFqyDqJUk1XpI8R
	LnHoix5dL1ejI6s39gCJFJnURf2EhwsxEEGorKUo75W5XSogbEGXDcpT5tCf4ax9IOtYp0fq4/b6F
	08oLsUssN6NAiP5EYX8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2adV-0001Ga-Nd; Tue, 27 Aug 2019 12:31:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2adK-0001GC-Cd
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 12:31:35 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 709B5206BF;
 Tue, 27 Aug 2019 12:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566909094;
 bh=FZRUuZCUTyQCSqMedVZ28+flP2/mWM4jyZ9NIq1nk3c=;
 h=From:To:Cc:Subject:Date:From;
 b=ZKpRYyDrGo7oxfI3YL/i80qhuj+nF12zys7abG6s7fzVt4iNdHLBlH6dZAB+Cci76
 UqD41ZonLyGbeN7Nz6y6Us0NiHRorXfzpPQXam3P4i2VmBeXoIqKDXVXM6uOyDBrG/
 1V77xjETXCYgnL00y7A8pBav+v0TTWfcpLUI2Xjk=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH v2 1/2] ASoC: sun4i-i2s: Revert "ASoC: sun4i-i2s: Remove
 duplicated quirks structure"
Date: Tue, 27 Aug 2019 14:31:30 +0200
Message-Id: <20190827123131.29129-1-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_053134_452125_DC2AC37C 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: codekipper@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

This reverts commit 3e9acd7ac6933cdc20c441bbf9a38ed9e42e1490.

It turns out that while one I2S controller is described in the A83t
datasheet, the driver supports another, undocumented, one that has been
inherited from the older SoCs, while the documented one uses the new
design.

Fixes: 3e9acd7ac693 ("ASoC: sun4i-i2s: Remove duplicated quirks structure")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Add the proper prefix to the commit title
---
 sound/soc/sunxi/sun4i-i2s.c | 25 ++++++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 57bf2a33753e..a6a3f772fdf0 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -1097,6 +1097,11 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.set_fmt		= sun4i_i2s_set_soc_fmt,
 };
 
+/*
+ * This doesn't describe the TDM controller documented in the A83t
+ * datasheet, but the three undocumented I2S controller that use the
+ * older design.
+ */
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
@@ -1115,6 +1120,24 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.set_fmt		= sun8i_i2s_set_soc_fmt,
 };
 
+static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
+	.has_reset		= true,
+	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
+	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
+	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
+	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
+	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
+	.bclk_dividers		= sun8i_i2s_clk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
+	.mclk_dividers		= sun8i_i2s_clk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
+	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
+	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
+	.set_fmt		= sun8i_i2s_set_soc_fmt,
+};
+
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
@@ -1296,7 +1319,7 @@ static const struct of_device_id sun4i_i2s_match[] = {
 	},
 	{
 		.compatible = "allwinner,sun8i-h3-i2s",
-		.data = &sun8i_a83t_i2s_quirks,
+		.data = &sun8i_h3_i2s_quirks,
 	},
 	{
 		.compatible = "allwinner,sun50i-a64-codec-i2s",
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
