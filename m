Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECA4967E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=4SA4/nz4M7/PVofV7I6S6KUgWeMI8r8Xj0EGeAuUtTU=; b=Mfy
	SWwLRW/emToCC/6uJnCS+MCDbthRZFKuW823fFessehJwqK2KXnFLMZtxgCGt1AzwjcpIy5vcwKcW
	bgknr+D8c2fx6RclVSJL9VMeOLbYEfVST539C+8FXnhUXhu2twR2JTJFXZDVv8v7QYc6eqSQhDMp6
	6vDADUcrzlBogj1g3z3y8oE1QJYg/TAf7cZzrglQaw/cyC/tojh6n45GyVDdKgzWzzH6t7fgZ02tt
	aEZe0R+HH+LqJfi1iSjUL1bz4kUGYpos6kOkv8fkVkslaw8jvCfuDLAD6ktl9dCBWBwARh/R/BCd1
	5ke7D2tBtXrOJ0wjwV7ATGPqERI6ITQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08Ae-0004eT-EE; Tue, 20 Aug 2019 17:43:48 +0000
Received: from mail-wm1-f98.google.com ([209.85.128.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0884-0001xe-2R
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:14 +0000
Received: by mail-wm1-f98.google.com with SMTP id i63so3378158wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=42xfaHYXrtQaOSOuSRjND5sC9kwpRwSXeTAD+w9b/4w=;
 b=fUsMLeXOhDxh1yaajqHuwelD8ZLz9NmXKJMtd0k3cyzYBYOTziAcm69ROR+vUOJS4z
 zChqzrY+AQEjhBr9HUOpE538KcfQQzhfxOqwEKsO4xK+A1CXkl+PlmZrDoa+5o2CeUNZ
 FGL9NDZtidmqD9HK4lTuym3KKGkDnXLzjdXVPHNJVwQy2/cXDQde86DCP5GTlBth2Y4v
 JqMOdSp8od+x/UG7/D9Tu8HNJw40nhOofy3Wm4FJNnFIvHU+SGEO13ksj6o/o5nOEygc
 WreOunI4mFcSkwdMrWpe67xYJZYCJ5bDVhS+LdCg2CNCouoPTunI6oEtxcCAFLOgGMt8
 O4XA==
X-Gm-Message-State: APjAAAWsc6mjvbafX9xzTHJXUPAMuoxwMf6ZXe44lBYvI745lEhYM+Lu
 TQWRDJGrss2ni11txqvQkGcRRvKgD4NgjyOWtY+TikL01O5x3XKRSfmp62VqPiwG3A==
X-Google-Smtp-Source: APXvYqyAP4i9z12t9vefzpzMOisA4osPdSpmTbBY4W09A0i0eyHSfHNl/p0AoZuDFNAxNTK2kyK+DJ875aPE
X-Received: by 2002:a1c:be05:: with SMTP id o5mr1135297wmf.61.1566322866426;
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id d16sm300941wrx.57.2019.08.20.10.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0882-00032r-3T; Tue, 20 Aug 2019 17:41:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 96899274314F; Tue, 20 Aug 2019 18:41:05 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer
 SoCs" to the asoc tree
In-Reply-To: <0e5b4abf06cd3202354315201c6af44caeb20236.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174105.96899274314F@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:05 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104108_121467_89FD7337 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.98 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From c1d3a921d72bd21f266ca28c15213fbe78160a4b Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:16 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs

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
Link: https://lore.kernel.org/r/0e5b4abf06cd3202354315201c6af44caeb20236.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 63 ++++++++++++++++++++++++++++---------
 1 file changed, 49 insertions(+), 14 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index acfcdb26086a..0a7f1d0f7371 100644
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
