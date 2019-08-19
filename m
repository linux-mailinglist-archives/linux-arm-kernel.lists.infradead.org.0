Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C58494E48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLhsrEYmIgfXJltT12Kaz7uFl1aiIKo28beyMcYC/0A=; b=C0uAzVj5OJ/Mvx
	zSGXeyMMAtBIdhhQSMw1PurmiufjjuwSotFIvwtiYlNresKZXcVlEjCtpGBjQy9wk3iDN0TvsXwn5
	au+w/sDWhasyRSozRlz/soFCwuJ3USNks8/8GQNoOdYsl5ptl8XNb2umgoO+riQI82z5uZTHzekVB
	zelWtP/Gnob0spz6gGrERHRRkFmpn9CpVKUsJ9w1HyB5l1XwqtTFLRf+8I0JKyg2Hbvg88Dniqxth
	j0j7bqQbehURF2/0+z7FgpnGyWchXC3cJY+tTjrcNe3eTiXtNOq+vgT/t8dt0yPxJvOVaaMYyD0qC
	aLuY0WWKK45v7XcswnAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznPG-00067i-IV; Mon, 19 Aug 2019 19:33:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznI1-0000I3-5R
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:26:05 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDE4C22CF4;
 Mon, 19 Aug 2019 19:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242760;
 bh=9rMZb4q2bdfCTKfWemEGoIofP27WGA2FridZFPHSHiw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uYcrwy9IoELec7iFGPHMjohkhJGNmU7OevYiT4yqBATpGY+KPiJ2sGpjFduuqIaJl
 aPMGWlRWKCyuyEbLCUON3jhCSzb5Xqj9Ifo6Nt1S0SCN9G1nz4dd37j82N9qBS2Mb3
 xYu+YMCkSOHGuRXK4aJoZp/xekbodE1ijTCNIv68=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH 09/21] ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on
 newer SoCs
Date: Mon, 19 Aug 2019 21:25:16 +0200
Message-Id: <0e5b4abf06cd3202354315201c6af44caeb20236.1566242458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122601_402278_02975E93 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Marcus Cooper <codekipper@gmail.com>

The clock division dividers have changed between the older (A10/A31) and
newer (H3, A64, etc) SoCs.

While this was addressed through an offset on some SoCs, it was missing
some dividers as well, so the support wasn't perfect. Let's introduce a
pointer in the quirk structure for the divider calculation functions to use
so we can have the proper range now.

Signed-off-by: Marcus Cooper <codekipper@gmail.com>
[Maxime: Fix the commit log, use a field in the quirk structure]
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 63 +++++++++++++++++++++++++++++---------
 1 file changed, 49 insertions(+), 14 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 51be395102b2..8d49ee7d2a95 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -129,8 +129,6 @@ struct sun4i_i2s;
  * @has_fmt_set_lrck_period: SoC requires lrclk period to be set.
  * @reg_offset_txdata: offset of the tx fifo.
  * @sun4i_i2s_regmap: regmap config to use.
- * @mclk_offset: Value by which mclkdiv needs to be adjusted.
- * @bclk_offset: Value by which bclkdiv needs to be adjusted.
  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
  * @field_fmt_wss: regmap field to set word select size.
  * @field_fmt_sr: regmap field to set sample resolution.
@@ -142,8 +140,6 @@ struct sun4i_i2s_quirks {
 	bool				has_fmt_set_lrck_period;
 	unsigned int			reg_offset_txdata;	/* TX FIFO */
 	const struct regmap_config	*sun4i_i2s_regmap;
-	unsigned int			mclk_offset;
-	unsigned int			bclk_offset;
 
 	/* Register fields for i2s */
 	struct reg_field		field_clkdiv_mclk_en;
@@ -152,6 +148,11 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_fmt_bclk;
 	struct reg_field		field_fmt_lrclk;
 
+	const struct sun4i_i2s_clk_div	*bclk_dividers;
+	unsigned int			num_bclk_dividers;
+	const struct sun4i_i2s_clk_div	*mclk_dividers;
+	unsigned int			num_mclk_dividers;
+
 	unsigned long (*get_bclk_parent_rate)(const struct sun4i_i2s *);
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
@@ -208,6 +209,24 @@ static const struct sun4i_i2s_clk_div sun4i_i2s_mclk_div[] = {
 	/* TODO - extend divide ratio supported by newer SoCs */
 };
 
+static const struct sun4i_i2s_clk_div sun8i_i2s_clk_div[] = {
+	{ .div = 1, .val = 1 },
+	{ .div = 2, .val = 2 },
+	{ .div = 4, .val = 3 },
+	{ .div = 6, .val = 4 },
+	{ .div = 8, .val = 5 },
+	{ .div = 12, .val = 6 },
+	{ .div = 16, .val = 7 },
+	{ .div = 24, .val = 8 },
+	{ .div = 32, .val = 9 },
+	{ .div = 48, .val = 10 },
+	{ .div = 64, .val = 11 },
+	{ .div = 96, .val = 12 },
+	{ .div = 128, .val = 13 },
+	{ .div = 176, .val = 14 },
+	{ .div = 192, .val = 15 },
+};
+
 static unsigned long sun4i_i2s_get_bclk_parent_rate(const struct sun4i_i2s *i2s)
 {
 	return i2s->mclk_freq;
@@ -223,11 +242,12 @@ static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
 				  unsigned int sampling_rate,
 				  unsigned int word_size)
 {
+	const struct sun4i_i2s_clk_div *dividers = i2s->variant->bclk_dividers;
 	int div = parent_rate / sampling_rate / word_size / 2;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(sun4i_i2s_bclk_div); i++) {
-		const struct sun4i_i2s_clk_div *bdiv = &sun4i_i2s_bclk_div[i];
+	for (i = 0; i < i2s->variant->num_bclk_dividers; i++) {
+		const struct sun4i_i2s_clk_div *bdiv = &dividers[i];
 
 		if (bdiv->div == div)
 			return bdiv->val;
@@ -240,11 +260,12 @@ static int sun4i_i2s_get_mclk_div(struct sun4i_i2s *i2s,
 				  unsigned long parent_rate,
 				  unsigned long mclk_rate)
 {
+	const struct sun4i_i2s_clk_div *dividers = i2s->variant->mclk_dividers;
 	int div = parent_rate / mclk_rate;
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(sun4i_i2s_mclk_div); i++) {
-		const struct sun4i_i2s_clk_div *mdiv = &sun4i_i2s_mclk_div[i];
+	for (i = 0; i < i2s->variant->num_mclk_dividers; i++) {
+		const struct sun4i_i2s_clk_div *mdiv = &dividers[i];
 
 		if (mdiv->div == div)
 			return mdiv->val;
@@ -326,10 +347,6 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	/* Adjust the clock division values if needed */
-	bclk_div += i2s->variant->bclk_offset;
-	mclk_div += i2s->variant->mclk_offset;
-
 	regmap_write(i2s->regmap, SUN4I_I2S_CLK_DIV_REG,
 		     SUN4I_I2S_CLK_DIV_BCLK(bclk_div) |
 		     SUN4I_I2S_CLK_DIV_MCLK(mclk_div));
@@ -969,6 +986,10 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
+	.bclk_dividers		= sun4i_i2s_bclk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun4i_i2s_bclk_div),
+	.mclk_dividers		= sun4i_i2s_mclk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
 	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
@@ -985,6 +1006,10 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
+	.bclk_dividers		= sun4i_i2s_bclk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun4i_i2s_bclk_div),
+	.mclk_dividers		= sun4i_i2s_mclk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
 	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
@@ -1001,6 +1026,10 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
+	.bclk_dividers		= sun8i_i2s_clk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
+	.mclk_dividers		= sun8i_i2s_clk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
 	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
@@ -1012,14 +1041,16 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
 	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
-	.mclk_offset		= 1,
-	.bclk_offset		= 2,
 	.has_fmt_set_lrck_period = true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
+	.bclk_dividers		= sun8i_i2s_clk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
+	.mclk_dividers		= sun8i_i2s_clk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun8i_i2s_clk_div),
 	.get_bclk_parent_rate	= sun8i_i2s_get_bclk_parent_rate,
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
@@ -1036,6 +1067,10 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
+	.bclk_dividers		= sun4i_i2s_bclk_div,
+	.num_bclk_dividers	= ARRAY_SIZE(sun4i_i2s_bclk_div),
+	.mclk_dividers		= sun4i_i2s_mclk_div,
+	.num_mclk_dividers	= ARRAY_SIZE(sun4i_i2s_mclk_div),
 	.get_bclk_parent_rate	= sun4i_i2s_get_bclk_parent_rate,
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
