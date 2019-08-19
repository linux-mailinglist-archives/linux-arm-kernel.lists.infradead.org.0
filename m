Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD28E94E7F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iK5L9SFzKXPatD0w66LiW8W4R1gi/wQiJTI0LmChVqY=; b=ZORDlSUkHHCVNa
	ZzjH9rlYHsGmYkEJDHfksbebK9Bv4n2jKeVi4886cqqSYXpajTwJAw9nN/ChhZS3Z8Mws2MR+z4Pv
	78K24I0lPLjNxU2iWeFWsdtTuSdRKL4qC8GaaMnjtpc3B1Pk9m+eHYgJyKZFX9C9/uq8i0fZhLJrq
	dERGX+ayUkiGFwJKDkxvPeFs2IuHfJmnARGZElSlR7FmubgVph8dWLfFG4zMhh/RMpMzmXde9Gqvw
	PmDhQCd3b1ZlIBMwU4yJPJHBA5I1z8c2WICJ38tJv06XWGAPOwN6Kpy1fvsyKfrIKlirLu9GdaVeP
	+92SkSVZtvYlJhK8Ipfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznVe-0004n7-7i; Mon, 19 Aug 2019 19:40:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznIZ-0000fY-SE
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:26:39 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D969A22DA7;
 Mon, 19 Aug 2019 19:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242795;
 bh=cj4R6p1TwnZUbmNQojsIlCMMsJUcZHjWCmxAfdU6wi8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b+UpZ4MjGH6pYnpbvs3A3YVv4L0Jt5W+rs3liCwCywVc3ga3OUlZQiI5YnHr4tVbH
 GsZJYFu5mbFZpEy9qsthvtCMf6SMxwpc1qpSpA7gEdhctBuzL85H458le1KwIvrqky
 uoNmgsSgydWMuVp8N30e4LTNXw2pt43NsY0JIDto=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH 21/21] ASoC: sun4i-i2s: Add support for DSP formats
Date: Mon, 19 Aug 2019 21:25:28 +0200
Message-Id: <74cc9562e056627e14f186089d349022b65f59e7.1566242458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122637_566312_E04D4AAD 
X-CRM114-Status: GOOD (  16.53  )
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

In addition to the I2S format, the controller also supports the DSP_*
formats.

This requires some extra care on the LRCK period calculation, since the
controller, with the PCM formats, require that the value set is no longer
the periods of LRCK for a single channel, but for all of them.

Let's add the code to deal with this, and support the DSP_A and DSP_B
formats.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 sound/soc/sunxi/sun4i-i2s.c | 44 ++++++++++++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 9 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 4f76daeaaed7..198e3c580297 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -130,7 +130,6 @@ struct sun4i_i2s;
  * struct sun4i_i2s_quirks - Differences between SoC variants.
  *
  * @has_reset: SoC needs reset deasserted.
- * @has_fmt_set_lrck_period: SoC requires lrclk period to be set.
  * @reg_offset_txdata: offset of the tx fifo.
  * @sun4i_i2s_regmap: regmap config to use.
  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
@@ -139,7 +138,6 @@ struct sun4i_i2s;
  */
 struct sun4i_i2s_quirks {
 	bool				has_reset;
-	bool				has_fmt_set_lrck_period;
 	unsigned int			reg_offset_txdata;	/* TX FIFO */
 	const struct regmap_config	*sun4i_i2s_regmap;
 
@@ -167,6 +165,7 @@ struct sun4i_i2s {
 	struct regmap	*regmap;
 	struct reset_control *rst;
 
+	unsigned int	format;
 	unsigned int	mclk_freq;
 	unsigned int	slots;
 	unsigned int	slot_width;
@@ -355,12 +354,6 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 
 	regmap_field_write(i2s->field_clkdiv_mclk_en, 1);
 
-	/* Set sync period */
-	if (i2s->variant->has_fmt_set_lrck_period)
-		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
-				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
-				   SUN8I_I2S_FMT0_LRCK_PERIOD(params_physical_width(params)));
-
 	return 0;
 }
 
@@ -422,6 +415,7 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 {
 	unsigned int channels = params_channels(params);
 	unsigned int slots = channels;
+	unsigned int lrck_period;
 
 	if (i2s->slots)
 		slots = i2s->slots;
@@ -445,6 +439,26 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
 			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));
 
+	switch (i2s->format & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_DSP_A:
+	case SND_SOC_DAIFMT_DSP_B:
+	case SND_SOC_DAIFMT_LEFT_J:
+	case SND_SOC_DAIFMT_RIGHT_J:
+		lrck_period = params_physical_width(params) * slots;
+		break;
+
+	case SND_SOC_DAIFMT_I2S:
+		lrck_period = params_physical_width(params);
+		break;
+
+	default:
+		return -EINVAL;
+	}
+
+	regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
+			   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
+			   SUN8I_I2S_FMT0_LRCK_PERIOD(lrck_period));
+
 	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
 			   SUN8I_I2S_TX_CHAN_EN_MASK,
 			   SUN8I_I2S_TX_CHAN_EN(channels));
@@ -614,6 +628,16 @@ static int sun8i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
 
 	/* DAI Mode */
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+	case SND_SOC_DAIFMT_DSP_A:
+		mode = SUN8I_I2S_CTRL_MODE_PCM;
+		offset = 1;
+		break;
+
+	case SND_SOC_DAIFMT_DSP_B:
+		mode = SUN8I_I2S_CTRL_MODE_PCM;
+		offset = 0;
+		break;
+
 	case SND_SOC_DAIFMT_I2S:
 		mode = SUN8I_I2S_CTRL_MODE_LEFT;
 		offset = 1;
@@ -682,6 +706,9 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 			   SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK,
 			   SUN4I_I2S_FIFO_CTRL_TX_MODE(1) |
 			   SUN4I_I2S_FIFO_CTRL_RX_MODE(1));
+
+	i2s->format = fmt;
+
 	return 0;
 }
 
@@ -1072,7 +1099,6 @@ static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
 	.has_reset		= true,
 	.reg_offset_txdata	= SUN8I_I2S_FIFO_TX_REG,
 	.sun4i_i2s_regmap	= &sun4i_i2s_regmap_config,
-	.has_fmt_set_lrck_period = true,
 	.field_clkdiv_mclk_en	= REG_FIELD(SUN4I_I2S_CLK_DIV_REG, 8, 8),
 	.field_fmt_wss		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 2),
 	.field_fmt_sr		= REG_FIELD(SUN4I_I2S_FMT0_REG, 4, 6),
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
