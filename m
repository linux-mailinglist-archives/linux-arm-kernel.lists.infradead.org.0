Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FE43616F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 18:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QOs1gzccmueFvRzuro942i1ClpkyVkPAFKFGOY2xbY=; b=TSBk6UUVU/tx53
	z+mC9DFlIyjFPIe7jkWh0EYV/zrDJF2ABDslzEoizRSFeY0ZUFhNlXw+tKKbhCNLI1co95J/+S/BU
	7qB7O7eOqdNGxYrF8ZoJxTChnH9iYh3huco3DB67Gdel00xD9tBeHKzITSDPk6T5T1BEbM3AA+Xqx
	4XnyBSUJ9eif3+FSsqjQzWTI8soIEORKmh2P4VlzWxi/HMLRSyhnHE0ci+v0SbWcXgrjfTff/rxiu
	6qT13l6Sup5zzatFe9shoVA0xRAw2AD2FBayK7Nv1CQBF7r/Hw/GnQ8XL/EI1USgUr6qYzF4I6Ujd
	/U+yJFggDO810edEjumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYYu0-0006ku-P7; Wed, 05 Jun 2019 16:36:40 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYYtt-0006kR-7V
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 16:36:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 09:36:31 -0700
X-ExtLoop1: 1
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Jun 2019 09:36:29 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 IRSMSX103.ger.corp.intel.com ([169.254.3.200]) with mapi id 14.03.0415.000;
 Wed, 5 Jun 2019 17:36:28 +0100
From: "Rojewski, Cezary" <cezary.rojewski@intel.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Mark Brown
 <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Mark Rutland
 <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Frank Rowand
 <frowand.list@gmail.com>
Subject: RE: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
 computation
Thread-Topic: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
 computation
Thread-Index: AQHVG4bgmCHrbSha2Eu49nUgFR9xEaaNPoxA
Date: Wed, 5 Jun 2019 16:36:28 +0000
Message-ID: <3BD9CEE4EBD5E74B98FE2D277EB60E0B38FF8117@IRSMSX104.ger.corp.intel.com>
References: <20190605100801.2488-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190605100801.2488-1-maxime.ripard@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmZlYTAwMjYtM2E5Mi00M2FjLTg4MDAtYzFlOTQ0NDcyN2E2IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTmdWQmRKSVVsVzVMaUMrVlwvNGhzNGJxbGRFc2d1bWZyOG5cL3Qrd2U5MXhWREN3aWM1c3krcndZd2lBVlBzeCsrIn0=
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_093633_283125_AC6B396B 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Chen-Yu Tsai <wens@csie.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marcus Cooper <codekipper@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

>From: Alsa-devel [mailto:alsa-devel-bounces@alsa-project.org] On Behalf Of
>Maxime Ripard
>Sent: Wednesday, June 5, 2019 12:08 PM
>To: Mark Brown <broonie@kernel.org>; Liam Girdwood
><lgirdwood@gmail.com>; Mark Rutland <mark.rutland@arm.com>; Rob
>Herring <robh+dt@kernel.org>; Frank Rowand <frowand.list@gmail.com>
>Cc: devicetree@vger.kernel.org; alsa-devel@alsa-project.org; Maxime Ripard
><maxime.ripard@bootlin.com>; Marcus Cooper <codekipper@gmail.com>;
>Chen-Yu Tsai <wens@csie.org>; linux-arm-kernel@lists.infradead.org
>Subject: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
>computation
>
>The current computation for the SR (sample resolution) and the WSS (word
>slot size) register parameters is based on a switch returning the matching
>parameters for a given params width.
>
>Later SoCs (A83t, H3, A64) changed that calculation, which was loosely the
>same with an offset. Therefore, an offset was added to adjust those
>parameters.
>
>However, the calculation is a bit less trivial than initially thought.
>Indeed, while we assumed that SR and WSS were always the same, on older
>SoCs, SR will max at 24 (since those SoCs do not support 32 bits formats),
>but the word size can be 32.
>
>Newer SoCs can also support a much larger range (8 bits to 32 bits, by
>increments of 4) of size than the older SoCs could.
>
>Finally, the A64 and A83t were never adjusted to have that offset in the
>first place, and were therefore broken from that point of view.
>
>In order to fix all those issues, let's introduce two functions, get_wss
>and get_sr, with their respective implementations for all the SoCs
>supported so far.
>
>Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
>Fixes: 66ecce332538 ("ASoC: sun4i-i2s: Add compatibility with A64 codec I2S")
>Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
>---
>
>Changes from v1:
>  - Declare the structure sun4i_i2s to fix compilation errors
>---
> sound/soc/sunxi/sun4i-i2s.c | 71 ++++++++++++++++++++++++++++---------
> 1 file changed, 55 insertions(+), 16 deletions(-)
>
>diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
>index c53bfed8d4c2..78d44dbc6373 100644
>--- a/sound/soc/sunxi/sun4i-i2s.c
>+++ b/sound/soc/sunxi/sun4i-i2s.c
>@@ -114,6 +114,8 @@
> #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
> #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
>
>+struct sun4i_i2s;
>+
> /**
>  * struct sun4i_i2s_quirks - Differences between SoC variants.
>  *
>@@ -127,7 +129,6 @@
>  * @sun4i_i2s_regmap: regmap config to use.
>  * @mclk_offset: Value by which mclkdiv needs to be adjusted.
>  * @bclk_offset: Value by which bclkdiv needs to be adjusted.
>- * @fmt_offset: Value by which wss and sr needs to be adjusted.
>  * @field_clkdiv_mclk_en: regmap field to enable mclk output.
>  * @field_fmt_wss: regmap field to set word select size.
>  * @field_fmt_sr: regmap field to set sample resolution.
>@@ -150,7 +151,6 @@ struct sun4i_i2s_quirks {
> 	const struct regmap_config	*sun4i_i2s_regmap;
> 	unsigned int			mclk_offset;
> 	unsigned int			bclk_offset;
>-	unsigned int			fmt_offset;
>
> 	/* Register fields for i2s */
> 	struct reg_field		field_clkdiv_mclk_en;
>@@ -163,6 +163,9 @@ struct sun4i_i2s_quirks {
> 	struct reg_field		field_rxchanmap;
> 	struct reg_field		field_txchansel;
> 	struct reg_field		field_rxchansel;
>+
>+	s8	(*get_sr)(const struct sun4i_i2s *, int);
>+	s8	(*get_wss)(const struct sun4i_i2s *, int);
> };
>
> struct sun4i_i2s {
>@@ -345,6 +348,39 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai
>*dai,
> 	return 0;
> }
>
>+static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
>+{
>+	if (width < 16 || width > 24)
>+		return -EINVAL;
>+
>+	if (width % 4)
>+		return -EINVAL;
>+
>+	return (width - 16) / 4;
>+}
>+
>+static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
>+{
>+	if (width < 16 || width > 32)
>+		return -EINVAL;
>+
>+	if (width % 4)
>+		return -EINVAL;
>+
>+	return (width - 16) / 4;
>+}
>+
>+static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
>+{
>+	if (width % 4)
>+		return -EINVAL;
>+

In the two above you start with boundary check before mod yet in this one the order is reversed.
Keeping the same order should prove more cohesive.

>+	if (width < 8 || width > 32)
>+		return -EINVAL;
>+
>+	return (width - 8) / 4 + 1;
>+}
>+

Other, probably less welcome suggestion is introduction of unified function which ones listed here would simply invoke.
All of these "computations" differ in fact only in: min and max boundary. The +1 for _sr_wss is negligible, you can append it on return.

> static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> 			       struct snd_pcm_hw_params *params,
> 			       struct snd_soc_dai *dai)
>@@ -396,22 +432,16 @@ static int sun4i_i2s_hw_params(struct
>snd_pcm_substream *substream,
> 	}
> 	i2s->playback_dma_data.addr_width = width;
>
>-	switch (params_width(params)) {
>-	case 16:
>-		sr = 0;
>-		wss = 0;
>-		break;
>+	sr = i2s->variant->get_sr(i2s, params_width(params));
>+	if (sr < 0)
>+		return -EINVAL;
>
>-	default:
>-		dev_err(dai->dev, "Unsupported sample width: %d\n",
>-			params_width(params));
>+	wss = i2s->variant->get_wss(i2s, params_width(params));
>+	if (wss < 0)
> 		return -EINVAL;
>-	}
>
>-	regmap_field_write(i2s->field_fmt_wss,
>-			   wss + i2s->variant->fmt_offset);
>-	regmap_field_write(i2s->field_fmt_sr,
>-			   sr + i2s->variant->fmt_offset);
>+	regmap_field_write(i2s->field_fmt_wss, wss);
>+	regmap_field_write(i2s->field_fmt_sr, sr);
>
> 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> 				      params_width(params));
>@@ -887,6 +917,8 @@ static const struct sun4i_i2s_quirks
>sun4i_a10_i2s_quirks = {
> 	.field_rxchanmap	=
>REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG,
>0, 2),
> 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG,
>0, 2),
>+	.get_sr			= sun4i_i2s_get_sr,
>+	.get_wss		= sun4i_i2s_get_wss,
> };
>
> static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
>@@ -904,6 +936,8 @@ static const struct sun4i_i2s_quirks
>sun6i_a31_i2s_quirks = {
> 	.field_rxchanmap	=
>REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG,
>0, 2),
> 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG,
>0, 2),
>+	.get_sr			= sun4i_i2s_get_sr,
>+	.get_wss		= sun4i_i2s_get_wss,
> };
>
> static const struct sun4i_i2s_quirks sun8i_a83t_i2s_quirks = {
>@@ -921,6 +955,8 @@ static const struct sun4i_i2s_quirks
>sun8i_a83t_i2s_quirks = {
> 	.field_rxchanmap	=
>REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG,
>0, 2),
> 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG,
>0, 2),
>+	.get_sr			= sun8i_i2s_get_sr_wss,
>+	.get_wss		= sun8i_i2s_get_sr_wss,
> };
>
> static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
>@@ -929,7 +965,6 @@ static const struct sun4i_i2s_quirks
>sun8i_h3_i2s_quirks = {
> 	.sun4i_i2s_regmap	= &sun8i_i2s_regmap_config,
> 	.mclk_offset		= 1,
> 	.bclk_offset		= 2,
>-	.fmt_offset		= 3,
> 	.has_fmt_set_lrck_period = true,
> 	.has_chcfg		= true,
> 	.has_chsel_tx_chen	= true,
>@@ -944,6 +979,8 @@ static const struct sun4i_i2s_quirks
>sun8i_h3_i2s_quirks = {
> 	.field_rxchanmap	=
>REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
> 	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG,
>0, 2),
> 	.field_rxchansel	= REG_FIELD(SUN8I_I2S_RX_CHAN_SEL_REG,
>0, 2),
>+	.get_sr			= sun8i_i2s_get_sr_wss,
>+	.get_wss		= sun8i_i2s_get_sr_wss,
> };
>
> static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
>@@ -961,6 +998,8 @@ static const struct sun4i_i2s_quirks
>sun50i_a64_codec_i2s_quirks = {
> 	.field_rxchanmap	=
>REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
> 	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG,
>0, 2),
> 	.field_rxchansel	= REG_FIELD(SUN4I_I2S_RX_CHAN_SEL_REG,
>0, 2),
>+	.get_sr			= sun8i_i2s_get_sr_wss,
>+	.get_wss		= sun8i_i2s_get_sr_wss,
> };
>
> static int sun4i_i2s_init_regmap_fields(struct device *dev,
>--
>2.21.0
>
>_______________________________________________
>Alsa-devel mailing list
>Alsa-devel@alsa-project.org
>https://mailman.alsa-project.org/mailman/listinfo/alsa-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
