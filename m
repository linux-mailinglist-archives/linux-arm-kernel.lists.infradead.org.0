Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EA935A2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 12:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TK0XpKvicSoKPUhHO+f2wWqETtXrpy0Vkv3bkX5Z5oI=; b=e6lFhDToPmMj68
	HrhoNMfDvUbtBOJY9TcwXdlglZ1JL4MWM5gz3nBhn5t/eBRoDZynrCvGFH43yLnsOcjN6f1tPELeu
	QYLFbvrghNrB0U8H4PIBHVcvriJBPV6bsGIY2nfXhUZ6beZ4h3vEYvtjGPKCEniHyX4Lo2KHbi/jo
	F18LHDopcZzrbNmgdMTd4z1clRZwB3Og+TMkQCpvGEocIsVR6N0AjuFXjAb6fqabsK4PRLB1wNTPI
	ggC5RoYDfSsbcUqw9LTCIRKy9w6XIXf3EYUg0Y6sO5tlEFuSOj9ymqFxDFfUvFYgnJL69COyhjfm7
	+/bGKL9zvQLI0Prvq6oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYSqo-00079r-3t; Wed, 05 Jun 2019 10:08:58 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSqh-00079d-Uz
 for linux-arm-kernel@bombadil.infradead.org; Wed, 05 Jun 2019 10:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3P0egibGRGy1iswtigE1mJuXijox8G/llYaevjZTC2w=; b=E65bS8UEG5z6oNvN4enz7aOMeF
 gX8ccg0N3xhBgOEPLhBastplijNSv6Xe6DMLguYn+JAahyj7RDCs0Xj/xsst+UMT9KCeOpb85D7Qc
 yn8Mo8gpFpwjaZ1Yp3hBmW4mZzcZh7t1HyIpaDUHpqX0v1uD/GPdxzImjB7rSpEex7YB4pIoF1ncx
 EC28DRGqez+Wq5GBlJd7vtNPyrT1PGlHZF/dutVAGbz3bguvdbz4Gk/pZ8hTrb78e9W7LeCUIKZrI
 O2DoRLkVFfGqrgDSFKospkjtRfrX6PMN8xsls2TPPDZsH9mrQThLOQluok5YI0stG9FxpMSV+7iiJ
 I9yFxxcg==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYSqe-0005XZ-1N
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 10:08:49 +0000
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id DB261100017;
 Wed,  5 Jun 2019 10:08:02 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS computation
Date: Wed,  5 Jun 2019 12:08:01 +0200
Message-Id: <20190605100801.2488-1-maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_060848_281956_75044041 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current computation for the SR (sample resolution) and the WSS (word
slot size) register parameters is based on a switch returning the matching
parameters for a given params width.

Later SoCs (A83t, H3, A64) changed that calculation, which was loosely the
same with an offset. Therefore, an offset was added to adjust those
parameters.

However, the calculation is a bit less trivial than initially thought.
Indeed, while we assumed that SR and WSS were always the same, on older
SoCs, SR will max at 24 (since those SoCs do not support 32 bits formats),
but the word size can be 32.

Newer SoCs can also support a much larger range (8 bits to 32 bits, by
increments of 4) of size than the older SoCs could.

Finally, the A64 and A83t were never adjusted to have that offset in the
first place, and were therefore broken from that point of view.

In order to fix all those issues, let's introduce two functions, get_wss
and get_sr, with their respective implementations for all the SoCs
supported so far.

Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Fixes: 66ecce332538 ("ASoC: sun4i-i2s: Add compatibility with A64 codec I2S")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Declare the structure sun4i_i2s to fix compilation errors
---
 sound/soc/sunxi/sun4i-i2s.c | 71 ++++++++++++++++++++++++++++---------
 1 file changed, 55 insertions(+), 16 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index c53bfed8d4c2..78d44dbc6373 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -114,6 +114,8 @@
 #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
 #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
 
+struct sun4i_i2s;
+
 /**
  * struct sun4i_i2s_quirks - Differences between SoC variants.
  *
@@ -127,7 +129,6 @@
  * @sun4i_i2s_regmap: regmap config to use.
  * @mclk_offset: Value by which mclkdiv needs to be adjusted.
  * @bclk_offset: Value by which bclkdiv needs to be adjusted.
- * @fmt_offset: Value by which wss and sr needs to be adjusted.
  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
  * @field_fmt_wss: regmap field to set word select size.
  * @field_fmt_sr: regmap field to set sample resolution.
@@ -150,7 +151,6 @@ struct sun4i_i2s_quirks {
 	const struct regmap_config	*sun4i_i2s_regmap;
 	unsigned int			mclk_offset;
 	unsigned int			bclk_offset;
-	unsigned int			fmt_offset;
 
 	/* Register fields for i2s */
 	struct reg_field		field_clkdiv_mclk_en;
@@ -163,6 +163,9 @@ struct sun4i_i2s_quirks {
 	struct reg_field		field_rxchanmap;
 	struct reg_field		field_txchansel;
 	struct reg_field		field_rxchansel;
+
+	s8	(*get_sr)(const struct sun4i_i2s *, int);
+	s8	(*get_wss)(const struct sun4i_i2s *, int);
 };
 
 struct sun4i_i2s {
@@ -345,6 +348,39 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 	return 0;
 }
 
+static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
+{
+	if (width < 16 || width > 24)
+		return -EINVAL;
+
+	if (width % 4)
+		return -EINVAL;
+
+	return (width - 16) / 4;
+}
+
+static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
+{
+	if (width < 16 || width > 32)
+		return -EINVAL;
+
+	if (width % 4)
+		return -EINVAL;
+
+	return (width - 16) / 4;
+}
+
+static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
+{
+	if (width % 4)
+		return -EINVAL;
+
+	if (width < 8 || width > 32)
+		return -EINVAL;
+
+	return (width - 8) / 4 + 1;
+}
+
 static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_pcm_hw_params *params,
 			       struct snd_soc_dai *dai)
@@ -396,22 +432,16 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	}
 	i2s->playback_dma_data.addr_width = width;
 
-	switch (params_width(params)) {
-	case 16:
-		sr = 0;
-		wss = 0;
-		break;
+	sr = i2s->variant->get_sr(i2s, params_width(params));
+	if (sr < 0)
+		return -EINVAL;
 
-	default:
-		dev_err(dai->dev, "Unsupported sample width: %d\n",
-			params_width(params));
+	wss = i2s->variant->get_wss(i2s, params_width(params));
+	if (wss < 0)
 		return -EINVAL;
-	}
 
-	regmap_field_write(i2s->field_fmt_wss,
-			   wss + i2s->variant->fmt_offset);
-	regmap_field_write(i2s->field_fmt_sr,
-			   sr + i2s->variant->fmt_offset);
+	regmap_field_write(i2s->field_fmt_wss, wss);
+	regmap_field_write(i2s->field_fmt_sr, sr);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
 				      params_width(params));
@@ -887,6 +917,8 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun4i_i2s_get_sr,
+	.get_wss		= sun4i_i2s_get_wss,
 };
 
 static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
@@ -904,6 +936,8 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun4i_i2s_get_sr,
+	.get_wss		= sun4i_i2s_get_wss,
 };
 
 static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
@@ -921,6 +955,8 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
 };
 
 static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
@@ -929,7 +965,6 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
 	.mclk_offset		= 1,
 	.bclk_offset		= 2,
-	.fmt_offset		= 3,
 	.has_fmt_set_lrck_period = true,
 	.has_chcfg		= true,
 	.has_chsel_tx_chen	= true,
@@ -944,6 +979,8 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN8I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
 };
 
 static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
@@ -961,6 +998,8 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
 	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG, 0, 2),
+	.get_sr			= sun8i_i2s_get_sr_wss,
+	.get_wss		= sun8i_i2s_get_sr_wss,
 };
 
 static int sun4i_i2s_init_regmap_fields(struct device *dev,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
