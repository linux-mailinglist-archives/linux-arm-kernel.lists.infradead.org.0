Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82148967E6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CnPc/oCowlC0yY3Ka+gVA1UQDn56cUG8sj8q9150KvU=; b=LFn
	E/OBaqsqmPLBntsfJqZ3MEwXVGwkfok/xQEq9w1xOsaf+qgdrFEFE2dHMxH5130GV+/4yaN/dRNJ6
	uaolLykiGITbxKTI1wL2SPQMI4GDz6OwqwjAGGOEqTw2d0a76zp0edwPRK2+ylAzinRa4dhqCWJlq
	f+YBUAwJuc1AWa/KOkRQwAXS+lzzW48e70gpOL+QKwO5Ae3dbx1zlNjPvHS55ahajH4FRlly6GQO7
	ZNiQXe98/VGnMIToIIe6pYFdhoJ9y8lFkDOGbCjg5qdoubkTHMWbBn3Eyl3yrWeOVlyIhj+J4n5FV
	09bG9VrnufA5M+ARDXEN1n6SlnqxzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08BP-0005jL-08; Tue, 20 Aug 2019 17:44:35 +0000
Received: from mail-wm1-f98.google.com ([209.85.128.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0884-0001y8-7E
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:16 +0000
Received: by mail-wm1-f98.google.com with SMTP id 10so3352956wmp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=97800JmymyUzUkOWTtVtyq3DZhNXNYvVXonip/nZ8/M=;
 b=mWmyeLB7JtR1YtDfixQPPqlqy0wfj9E0vQ/bEsQRQkSsq1ba0eTSR1M1F8AsbUEG+5
 7sqL2nzDvMUnSODElDTDD2rknGNbP3bhKiwzhLEVELlW2i9qOfaIvEe75DDSooSWhX5X
 IoULEafHzrqgAgtC6GBCyk2Tf/7laJjZEQNZyDCLGeG1tN9yMmQKLhrneRFfqEor/F85
 gSIEOQRLvQpX8LZAiCNbnLJTVUC4abB0I5k6BYvHuhQhR50PPrFRq5VTE7+l7yVo/d2B
 fvSWHXKMsEAn9LMtI32ijaQlG4PTelBjmVDVTojCWkulBqezNlr/UO6c3WUGWvlVkHFz
 uQEw==
X-Gm-Message-State: APjAAAV0DfxkXXXN02b6XRPlaRKvsPB5GQ0FoSL8BB1OWqCFYegpQ1q9
 6bVLoRJGZt726Il6bbuHg7TIl9GO3DegFLLViGGYrKW/ooYdwPBKfmtXlFYdUPPS5w==
X-Google-Smtp-Source: APXvYqxXbdsIdmx7jwnCIdsXVl7QgFyGb5j94LM0SNZB4xFGrcKWlFFodgziMqn5ZD8PGArlmAcf5odWSimi
X-Received: by 2002:a1c:ca09:: with SMTP id a9mr1201982wmg.43.1566322867115;
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id a188sm4343wme.51.2019.08.20.10.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0882-000334-RC; Tue, 20 Aug 2019 17:41:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 356AB274314E; Tue, 20 Aug 2019 18:41:06 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Move the channel configuration to a
 callback" to the asoc tree
In-Reply-To: <6414463de69584e8227fa495b13aa5f4798e1f0e.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174106.356AB274314E@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:06 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104108_299403_216DF91D 
X-CRM114-Status: GOOD (  21.40  )
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
 codekipper@gmail.com, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-i2s: Move the channel configuration to a callback

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

From d70be625f25af7a2bc91b7d17d205f6071f08f2f Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:11 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Move the channel configuration to a callback

The two main generations of our I2S controller require a slightly different
channel configuration, mostly because of a quite different register layout
and some additional registers being needed on the newer generation.

This used to be controlled through a bunch of booleans, however this proved
to be quite impractical, especially since a bunch of SoCs forgot to set
those parameters and therefore were broken from that point of view.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/6414463de69584e8227fa495b13aa5f4798e1f0e.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 156 ++++++++++++++++--------------------
 1 file changed, 69 insertions(+), 87 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 2c909c6cafa9..42e45c9a947a 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -80,6 +80,7 @@
 #define SUN4I_I2S_TX_CNT_REG		0x2c
 
 #define SUN4I_I2S_TX_CHAN_SEL_REG	0x30
+#define SUN4I_I2S_CHAN_SEL_MASK			GENMASK(2, 0)
 #define SUN4I_I2S_CHAN_SEL(num_chan)		(((num_chan) - 1) << 0)
 
 #define SUN4I_I2S_TX_CHAN_MAP_REG	0x34
@@ -122,8 +123,6 @@ struct sun4i_i2s;
  * @has_reset: SoC needs reset deasserted.
  * @has_slave_select_bit: SoC has a bit to enable slave mode.
  * @has_fmt_set_lrck_period: SoC requires lrclk period to be set.
- * @has_chcfg: tx and rx slot number need to be set.
- * @has_chsel_tx_chen: SoC requires that the tx channels are enabled.
  * @has_chsel_offset: SoC uses offset for selecting dai operational mode.
  * @reg_offset_txdata: offset of the tx fifo.
  * @sun4i_i2s_regmap: regmap config to use.
@@ -135,17 +134,11 @@ struct sun4i_i2s;
  * @field_fmt_bclk: regmap field to set clk polarity.
  * @field_fmt_lrclk: regmap field to set frame polarity.
  * @field_fmt_mode: regmap field to set the operational mode.
- * @field_txchanmap: location of the tx channel mapping register.
- * @field_rxchanmap: location of the rx channel mapping register.
- * @field_txchansel: location of the tx channel select bit fields.
- * @field_rxchansel: location of the rx channel select bit fields.
  */
 struct sun4i_i2s_quirks {
 	bool				has_reset;
 	bool				has_slave_select_bit;
 	bool				has_fmt_set_lrck_period;
-	bool				has_chcfg;
-	bool				has_chsel_tx_chen;
 	bool				has_chsel_offset;
 	unsigned int			reg_offset_txdata;	/* TX FIFO */
 	const struct regmap_config	*sun4i_i2s_regmap;
@@ -159,13 +152,11 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_fmt_bclk;
 	struct reg_field		field_fmt_lrclk;
 	struct reg_field		field_fmt_mode;
-	struct reg_field		field_txchanmap;
-	struct reg_field		field_rxchanmap;
-	struct reg_field		field_txchansel;
-	struct reg_field		field_rxchansel;
 
 	s8	(*get_sr)(const struct sun4i_i2s *, int);
 	s8	(*get_wss)(const struct sun4i_i2s *, int);
+	int	(*set_chan_cfg)(const struct sun4i_i2s *,
+				const struct snd_pcm_hw_params *);
 };
 
 struct sun4i_i2s {
@@ -186,10 +177,6 @@ struct sun4i_i2s {
 	struct regmap_field	*field_fmt_bclk;
 	struct regmap_field	*field_fmt_lrclk;
 	struct regmap_field	*field_fmt_mode;
-	struct regmap_field	*field_txchanmap;
-	struct regmap_field	*field_rxchanmap;
-	struct regmap_field	*field_txchansel;
-	struct regmap_field	*field_rxchansel;
 
 	const struct sun4i_i2s_quirks	*variant;
 };
@@ -380,44 +367,77 @@ static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
 	return (width - 8) / 4 + 1;
 }
 
-static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
-			       struct snd_pcm_hw_params *params,
-			       struct snd_soc_dai *dai)
+static int sun4i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
+				  const struct snd_pcm_hw_params *params)
 {
-	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
-	int sr, wss, channels;
-	u32 width;
+	unsigned int channels = params_channels(params);
 
-	channels = params_channels(params);
-	if (channels != 2) {
-		dev_err(dai->dev, "Unsupported number of channels: %d\n",
-			channels);
+	if (channels != 2)
 		return -EINVAL;
-	}
 
-	if (i2s->variant->has_chcfg) {
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
-				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
-				   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
-				   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
-				   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));
-	}
+	/* Map the channels for playback and capture */
+	regmap_write(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, 0x76543210);
+	regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, 0x00003210);
+
+	/* Configure the channels */
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_TX_CHAN_SEL_REG,
+			   SUN4I_I2S_CHAN_SEL_MASK,
+			   SUN4I_I2S_CHAN_SEL(channels));
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_RX_CHAN_SEL_REG,
+			   SUN4I_I2S_CHAN_SEL_MASK,
+			   SUN4I_I2S_CHAN_SEL(channels));
+
+	return 0;
+}
+
+static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
+				  const struct snd_pcm_hw_params *params)
+{
+	unsigned int channels = params_channels(params);
+
+	if (channels != 2)
+		return -EINVAL;
 
 	/* Map the channels for playback and capture */
-	regmap_field_write(i2s->field_txchanmap, 0x76543210);
-	regmap_field_write(i2s->field_rxchanmap, 0x00003210);
+	regmap_write(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
+	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, 0x76543210);
 
 	/* Configure the channels */
-	regmap_field_write(i2s->field_txchansel,
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
+			   SUN4I_I2S_CHAN_SEL_MASK,
 			   SUN4I_I2S_CHAN_SEL(channels));
-	regmap_field_write(i2s->field_rxchansel,
+
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
+			   SUN4I_I2S_CHAN_SEL_MASK,
 			   SUN4I_I2S_CHAN_SEL(channels));
 
-	if (i2s->variant->has_chsel_tx_chen)
-		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-				   SUN8I_I2S_TX_CHAN_EN_MASK,
-				   SUN8I_I2S_TX_CHAN_EN(channels));
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
+			   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
+			   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
+			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
+			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));
+
+	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
+			   SUN8I_I2S_TX_CHAN_EN_MASK,
+			   SUN8I_I2S_TX_CHAN_EN(channels));
+
+	return 0;
+}
+
+static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
+			       struct snd_pcm_hw_params *params,
+			       struct snd_soc_dai *dai)
+{
+	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
+	int ret, sr, wss;
+	u32 width;
+
+	ret = i2s->variant->set_chan_cfg(i2s, params);
+	if (ret < 0) {
+		dev_err(dai->dev, "Invalid channel configuration\n");
+		return ret;
+	}
 
 	switch (params_physical_width(params)) {
 	case 16:
@@ -915,12 +935,9 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
+	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -934,12 +951,9 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
+	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -953,12 +967,9 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.has_slave_select_bit	= true,
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
+	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -968,8 +979,6 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.mclk_offset		= 1,
 	.bclk_offset		= 2,
 	.has_fmt_set_lrck_period = true,
-	.has_chcfg		= true,
-	.has_chsel_tx_chen	= true,
 	.has_chsel_offset	= true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
@@ -977,12 +986,9 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
-	.field_txchanmap	= REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN8I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun8i_i2s_get_sr_wss,
 	.get_wss		= sun8i_i2s_get_sr_wss,
+	.set_chan_cfg		= sun8i_i2s_set_chan_cfg,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -996,12 +1002,9 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
 	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
 	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
-	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
-	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
-	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
-	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
 	.get_sr			= sun4i_i2s_get_sr,
 	.get_wss		= sun4i_i2s_get_wss,
+	.set_chan_cfg		= sun4i_i2s_set_chan_cfg,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
@@ -1043,28 +1046,7 @@ static int sun4i_i2s_init_regmap_fields(struct device *dev,
 	if (IS_ERR(i2s->field_fmt_mode))
 		return PTR_ERR(i2s->field_fmt_mode);
 
-	i2s->field_txchanmap =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_txchanmap);
-	if (IS_ERR(i2s->field_txchanmap))
-		return PTR_ERR(i2s->field_txchanmap);
-
-	i2s->field_rxchanmap =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_rxchanmap);
-	if (IS_ERR(i2s->field_rxchanmap))
-		return PTR_ERR(i2s->field_rxchanmap);
-
-	i2s->field_txchansel =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_txchansel);
-	if (IS_ERR(i2s->field_txchansel))
-		return PTR_ERR(i2s->field_txchansel);
-
-	i2s->field_rxchansel =
-			devm_regmap_field_alloc(dev, i2s->regmap,
-						i2s->variant->field_rxchansel);
-	return PTR_ERR_OR_ZERO(i2s->field_rxchansel);
+	return 0;
 }
 
 static int sun4i_i2s_probe(struct platform_device *pdev)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
