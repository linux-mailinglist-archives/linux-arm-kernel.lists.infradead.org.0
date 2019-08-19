Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E540B94E2D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKNWus+Uf23Zm/UvhBfies0jpQqTvHaq7xN6lMaJM9s=; b=hWkPeAmZyx1j2Q
	nkEwjiHTaa0fXl/fCqqCldLATsm7Pb91SoBSRuwaASYRAECRii7Q8kVI7RS2C+ka3m+i4Pf432zeI
	dmpxnxpx7em3lvLGjKjfiQatCef0IDTnWqj0FgPHoUpJ4bujMzj/AHhF6YvbYjTgqvCiP4CF+ZVlR
	rn4rm+r3CPkT5Bo3wJ5O241zuQiX41VYCnp8KghS++eNOjV4eGmSxSg9qhce+lx7pk4wsHfaN3e/N
	J1UIy2jzllUzqznnULdMAetd7qSntbCF/dj1RGN943nl87I4Zy2VL93PDduIUx+Z5ePoOMh000WeX
	PkYJyhyZlJAWT0Uk33bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznMq-0004FG-JS; Mon, 19 Aug 2019 19:31:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznHo-0000AD-CE
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:25:51 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C6F122CF8;
 Mon, 19 Aug 2019 19:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242747;
 bh=gkrEFPztHCgcL5EJ8yrKqDZIekk7DRUSGt1syZDC04o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xUuTl8vgiwRIR9+ScvUybQKQcPt9gcCmCCKmTeemMNJx9dBBxs2jZxbjtnDaUIslK
 px3MSLs4MujTjIR6uyydYoSf7OchK/hkIBZuK8XwgL6/xl7JbyazmYIZ+Y2Xbq6Aa0
 7lZkJTYpnDesBzFeKiOQH/Q24sxYUtR50ksVC4HI=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH 05/21] ASoC: sun4i-i2s: Move the format configuration to a
 callback
Date: Mon, 19 Aug 2019 21:25:12 +0200
Message-Id: <dc818644c3e40734e7a97247c994b1fca1c3c047.1566242458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122548_511286_316B9054 
X-CRM114-Status: GOOD (  18.61  )
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

The two main generations of our I2S controller require a slightly different
format configuration, mostly because of a quite different register layout
and some additional registers being needed on the newer generation.

This used to be controlled through a bunch of booleans, however this proved
to be quite impractical, especially since a bunch of SoCs forgot to set
those parameters and therefore were broken from that point of view.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 199 +++++++++++++++++++------------------
 1 file changed, 106 insertions(+), 93 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 657041606c2f..fbbedb660cc6 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -93,6 +93,11 @@
 #define SUN8I_I2S_CTRL_BCLK_OUT			BIT(18)
 #define SUN8I_I2S_CTRL_LRCK_OUT			BIT(17)
 
+#define SUN8I_I2S_CTRL_MODE_MASK		GENMASK(5, 4)
+#define SUN8I_I2S_CTRL_MODE_RIGHT		(2 << 4)
+#define SUN8I_I2S_CTRL_MODE_LEFT		(1 << 4)
+#define SUN8I_I2S_CTRL_MODE_PCM			(0 << 4)
+
 #define SUN8I_I2S_FMT0_LRCK_PERIOD_MASK		GENMASK(17, 8)
 #define SUN8I_I2S_FMT0_LRCK_PERIOD(period)	((period - 1) << 8)
 
@@ -121,9 +126,7 @@ struct sun4i_i2s;
  * struct sun4i_i2s_quirks - Differences between SoC variants.
  *
  * @has_reset: SoC needs reset deasserted.
- * @has_slave_select_bit: SoC has a bit to enable slave mode.
  * @has_fmt_set_lrck_period: SoC requires lrclk period to be set.
- * @has_chsel_offset: SoC uses offset for selecting dai operational mode.
  * @reg_offset_txdata: offset of the tx fifo.
  * @sun4i_i2s_regmap: regmap config to use.
  * @mclk_offset: Value by which mclkdiv needs to be adjusted.
@@ -133,13 +136,10 @@ struct sun4i_i2s;
  * @field_fmt_sr: regmap field to set sample resolution.
  * @field_fmt_bclk: regmap field to set clk polarity.
  * @field_fmt_lrclk: regmap field to set frame polarity.
- * @field_fmt_mode: regmap field to set the operational mode.
  */
 struct sun4i_i2s_quirks {
 	bool				has_reset;
-	bool				has_slave_select_bit;
 	bool				has_fmt_set_lrck_period;
-	bool				has_chsel_offset;
 	unsigned int			reg_offset_txdata;	/* TX FIFO */
 	const struct regmap_config	*sun4i_i2s_regmap;
 	unsigned int			mclk_offset;
@@ -151,12 +151,12 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_fmt_sr;
 	struct reg_field		field_fmt_bclk;
 	struct reg_field		field_fmt_lrclk;
-	struct reg_field		field_fmt_mode;
 
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
 	int	(*set_chan_cfg)(const struct sun4i_i2s *,
 				const struct snd_pcm_hw_params *);
+	int	(*set_fmt)(const struct sun4i_i2s *, unsigned int);
 };
 
 struct sun4i_i2s {
@@ -176,7 +176,6 @@ struct sun4i_i2s {
 	struct regmap_field	*field_fmt_sr;
 	struct regmap_field	*field_fmt_bclk;
 	struct regmap_field	*field_fmt_lrclk;
-	struct regmap_field	*field_fmt_mode;
 
 	const struct sun4i_i2s_quirks	*variant;
 };
@@ -466,52 +465,117 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 				      params_width(params));
 }
 
-static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
+				 unsigned int fmt)
 {
-	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 	u32 val;
-	u32 offset = 0;
-	u32 bclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
-	u32 lrclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
 
 	/* DAI Mode */
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 	case SND_SOC_DAIFMT_I2S:
 		val = SUN4I_I2S_FMT0_FMT_I2S;
-		offset = 1;
 		break;
+
 	case SND_SOC_DAIFMT_LEFT_J:
 		val = SUN4I_I2S_FMT0_FMT_LEFT_J;
 		break;
+
 	case SND_SOC_DAIFMT_RIGHT_J:
 		val = SUN4I_I2S_FMT0_FMT_RIGHT_J;
 		break;
+
 	default:
-		dev_err(dai->dev, "Unsupported format: %d\n",
-			fmt & SND_SOC_DAIFMT_FORMAT_MASK);
 		return -EINVAL;
 	}
 
-	if (i2s->variant->has_chsel_offset) {
-		/*
-		 * offset being set indicates that we're connected to an i2s
-		 * device, however offset is only used on the sun8i block and
-		 * i2s shares the same setting with the LJ format. Increment
-		 * val so that the bit to value to write is correct.
-		 */
-		if (offset > 0)
-			val++;
-		/* blck offset determines whether i2s or LJ */
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
-
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
-				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
-				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
+			   SUN4I_I2S_FMT0_FMT_MASK, val);
+
+	/* DAI clock master masks */
+	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
+	case SND_SOC_DAIFMT_CBS_CFS:
+		/* BCLK and LRCLK master */
+		val = SUN4I_I2S_CTRL_MODE_MASTER;
+		break;
+
+	case SND_SOC_DAIFMT_CBM_CFM:
+		/* BCLK and LRCLK slave */
+		val = SUN4I_I2S_CTRL_MODE_SLAVE;
+		break;
+
+	default:
+		return -EINVAL;
 	}
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
+			   SUN4I_I2S_CTRL_MODE_MASK, val);
+	return 0;
+}
 
-	regmap_field_write(i2s->field_fmt_mode, val);
+static int sun8i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
+				 unsigned int fmt)
+{
+	u32 mode, val;
+	u8 offset;
+
+	/* DAI Mode */
+	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_I2S:
+		mode = SUN8I_I2S_CTRL_MODE_LEFT;
+		offset = 1;
+		break;
+
+	case SND_SOC_DAIFMT_LEFT_J:
+		mode = SUN8I_I2S_CTRL_MODE_LEFT;
+		offset = 0;
+		break;
+
+	case SND_SOC_DAIFMT_RIGHT_J:
+		mode = SUN8I_I2S_CTRL_MODE_RIGHT;
+		offset = 0;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
+			   SUN8I_I2S_CTRL_MODE_MASK, mode);
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
+			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
+			   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
+			   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
+			   SUN8I_I2S_TX_CHAN_OFFSET(offset));
+
+	/* DAI clock master masks */
+	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
+	case SND_SOC_DAIFMT_CBS_CFS:
+		/* BCLK and LRCLK master */
+		val = SUN8I_I2S_CTRL_BCLK_OUT |	SUN8I_I2S_CTRL_LRCK_OUT;
+		break;
+
+	case SND_SOC_DAIFMT_CBM_CFM:
+		/* BCLK and LRCLK slave */
+		val = 0;
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
+			   SUN8I_I2S_CTRL_BCLK_OUT | SUN8I_I2S_CTRL_LRCK_OUT,
+			   val);
+
+	return 0;
+}
+
+static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
+{
+	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
+	u32 bclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
+	u32 lrclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
+	int ret;
 
 	/* DAI clock polarity */
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
@@ -539,50 +603,10 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	regmap_field_write(i2s->field_fmt_bclk, bclk_polarity);
 	regmap_field_write(i2s->field_fmt_lrclk, lrclk_polarity);
 
-	if (i2s->variant->has_slave_select_bit) {
-		/* DAI clock master masks */
-		switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
-		case SND_SOC_DAIFMT_CBS_CFS:
-			/* BCLK and LRCLK master */
-			val = SUN4I_I2S_CTRL_MODE_MASTER;
-			break;
-		case SND_SOC_DAIFMT_CBM_CFM:
-			/* BCLK and LRCLK slave */
-			val = SUN4I_I2S_CTRL_MODE_SLAVE;
-			break;
-		default:
-			dev_err(dai->dev, "Unsupported slave setting: %d\n",
-				fmt & SND_SOC_DAIFMT_MASTER_MASK);
-			return -EINVAL;
-		}
-		regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
-				   SUN4I_I2S_CTRL_MODE_MASK,
-				   val);
-	} else {
-		/*
-		 * The newer i2s block does not have a slave select bit,
-		 * instead the clk pins are configured as inputs.
-		 */
-		/* DAI clock master masks */
-		switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
-		case SND_SOC_DAIFMT_CBS_CFS:
-			/* BCLK and LRCLK master */
-			val = SUN8I_I2S_CTRL_BCLK_OUT |
-				SUN8I_I2S_CTRL_LRCK_OUT;
-			break;
-		case SND_SOC_DAIFMT_CBM_CFM:
-			/* BCLK and LRCLK slave */
-			val = 0;
-			break;
-		default:
-			dev_err(dai->dev, "Unsupported slave setting: %d\n",
-				fmt & SND_SOC_DAIFMT_MASTER_MASK);
-			return -EINVAL;
-		}
-		regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
-				   SUN8I_I2S_CTRL_BCLK_OUT |
-				   SUN8I_I2S_CTRL_LRCK_OUT,
-				   val);
+	ret = i2s->variant->set_fmt(i2s, fmt);
+	if (ret) {
+		dev_err(dai->dev, "Unsupported format configuration\n");
+		return ret;
 	}
 
 	/* Set significant bits in our FIFOs */
@@ -934,11 +958,10 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
-	.has_slave_select_bit	= true,
-	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
+	.set_fmt		= sun4i_i2s_set_soc_fmt,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -950,11 +973,10 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
-	.has_slave_select_bit	= true,
-	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
+	.set_fmt		= sun4i_i2s_set_soc_fmt,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -966,11 +988,10 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
-	.has_slave_select_bit	= true,
-	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
+	.set_fmt		= sun8i_i2s_set_soc_fmt,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -980,32 +1001,30 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.mclk_offset		= 1,
 	.bclk_offset		= 2,
 	.has_fmt_set_lrck_period = true,
-	.has_chsel_offset	= true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
-	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
 	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
+	.set_fmt		= sun8i_i2s_set_soc_fmt,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
 	.sun4i_i2s_regmap	= &sun4i_i2s_regmap_config,
-	.has_slave_select_bit	= true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 7, 7),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 2, 3),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 5),
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
-	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
 	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
+	.set_fmt		= sun4i_i2s_set_soc_fmt,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
@@ -1041,12 +1060,6 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 	if (IS_ERR(i2s->field_fmt_lrclk))
 		return PTR_ERR(i2s->field_fmt_lrclk);
 
-	i2s->field_fmt_mode =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_fmt_mode);
-	if (IS_ERR(i2s->field_fmt_mode))
-		return PTR_ERR(i2s->field_fmt_mode);
-
 	return 0;
 }
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
