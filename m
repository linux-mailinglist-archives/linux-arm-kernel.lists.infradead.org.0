Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5DA8D1CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FOxhCBKfUtylz50rJ5VZgMdLsr7J8dMb6TT0gN9l9hY=; b=offQ3KoiRJ/Ajb8699yGuTfgp
	BYQUw3H6TxJlDX01cIFF/aWaJXzangM3EGK8vhrYFgtt85XeN2IhIlTmWFwHq9O3gYPKKrQc3nR82
	o2giyK70EJ7dQ4O8/ez0DVzu4Fop3+Ff+zlwJsLvvhTuE5dhpCBvC1UL1f2e+yFz26EfvU4IQKcrg
	0BvYKLtE8cI4JMsgGdbrbIbheHN2q0y8XSs47bd+t3Cdk65a6bZDZmkcLlOQz6XvY6p4rMwvy+Zz1
	t64k7yWrbBF31lZj7Y53hVtD30snX/uSzaxII9/4K8nIXxL0IURU4+K0a8LFLsSmWb47rM4tvN5k2
	SjYadgcMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrAl-0006fC-FS; Wed, 14 Aug 2019 11:10:31 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr92-0006Lw-Aq
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:08:46 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7142D20007;
 Wed, 14 Aug 2019 11:08:33 +0000 (UTC)
Date: Wed, 14 Aug 2019 08:43:39 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 01/15] ASoC: sun4i-i2s: Add regmap field to sign
 extend sample
Message-ID: <20190814064339.lgfngdkiaalygolk@flea>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-2-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-2-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040844_697752_78DFAC92 
X-CRM114-Status: GOOD (  18.84  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7360020748500844448=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7360020748500844448==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ugsoeifrlfa7kjoi"
Content-Disposition: inline


--ugsoeifrlfa7kjoi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Aug 14, 2019 at 08:08:40AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> On the newer SoCs such as the H3 and A64 this is set by default
> to transfer a 0 after each sample in each slot. However the A10
> and A20 SoCs that this driver was developed on had a default
> setting where it padded the audio gain with zeros.
>
> This isn't a problem whilst we have only support for 16bit audio
> but with larger sample resolution rates in the pipeline then SEXT
> bits should be cleared so that they also pad at the LSB. Without
> this the audio gets distorted.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 793457394efe..8201334a059b 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -135,6 +135,7 @@ struct sun4i_i2s;
>   * @field_fmt_bclk: regmap field to set clk polarity.
>   * @field_fmt_lrclk: regmap field to set frame polarity.
>   * @field_fmt_mode: regmap field to set the operational mode.
> + * @field_fmt_sext: regmap field to set the sign extension.
>   * @field_txchanmap: location of the tx channel mapping register.
>   * @field_rxchanmap: location of the rx channel mapping register.
>   * @field_txchansel: location of the tx channel select bit fields.
> @@ -159,6 +160,7 @@ struct sun4i_i2s_quirks {
>  	struct reg_field		field_fmt_bclk;
>  	struct reg_field		field_fmt_lrclk;
>  	struct reg_field		field_fmt_mode;
> +	struct reg_field		field_fmt_sext;
>  	struct reg_field		field_txchanmap;
>  	struct reg_field		field_rxchanmap;
>  	struct reg_field		field_txchansel;
> @@ -186,6 +188,7 @@ struct sun4i_i2s {
>  	struct regmap_field	*field_fmt_bclk;
>  	struct regmap_field	*field_fmt_lrclk;
>  	struct regmap_field	*field_fmt_mode;
> +	struct regmap_field	*field_fmt_sext;
>  	struct regmap_field	*field_txchanmap;
>  	struct regmap_field	*field_rxchanmap;
>  	struct regmap_field	*field_txchansel;
> @@ -345,6 +348,9 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
>  				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
>  				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
>
> +	/* Set sign extension to pad out LSB with 0 */
> +	regmap_field_write(i2s->field_fmt_sext, 0);
> +
>  	return 0;
>  }
>
> @@ -917,6 +923,7 @@ static const struct sun4i_i2s_quirks sun4i_a10_i2s_quirks = {
>  	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>  	.has_slave_select_bit	= true,
>  	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> +	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
>  	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
>  	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
>  	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> @@ -936,6 +943,7 @@ static const struct sun4i_i2s_quirks sun6i_a31_i2s_quirks = {
>  	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>  	.has_slave_select_bit	= true,
>  	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> +	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
>  	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
>  	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
>  	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),
> @@ -979,6 +987,7 @@ static const struct sun4i_i2s_quirks sun8i_h3_i2s_quirks = {
>  	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>  	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 19, 19),
>  	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_CTRL_REG, 4, 5),
> +	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 4, 5),
>  	.field_txchanmap	= REG_FIELD(SUN8I_I2S_TX_CHAN_MAP_REG, 0, 31),
>  	.field_rxchanmap	= REG_FIELD(SUN8I_I2S_RX_CHAN_MAP_REG, 0, 31),
>  	.field_txchansel	= REG_FIELD(SUN8I_I2S_TX_CHAN_SEL_REG, 0, 2),
> @@ -998,6 +1007,7 @@ static const struct sun4i_i2s_quirks sun50i_a64_codec_i2s_quirks = {
>  	.field_fmt_bclk		= REG_FIELD(SUN4I_I2S_FMT0_REG, 6, 6),
>  	.field_fmt_lrclk	= REG_FIELD(SUN4I_I2S_FMT0_REG, 7, 7),
>  	.field_fmt_mode		= REG_FIELD(SUN4I_I2S_FMT0_REG, 0, 1),
> +	.field_fmt_sext		= REG_FIELD(SUN4I_I2S_FMT1_REG, 8, 8),
>  	.field_txchanmap	= REG_FIELD(SUN4I_I2S_TX_CHAN_MAP_REG, 0, 31),
>  	.field_rxchanmap	= REG_FIELD(SUN4I_I2S_RX_CHAN_MAP_REG, 0, 31),
>  	.field_txchansel	= REG_FIELD(SUN4I_I2S_TX_CHAN_SEL_REG, 0, 2),

You're missing the A83t here

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ugsoeifrlfa7kjoi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVOtmwAKCRDj7w1vZxhR
xcCaAQCLwFdvV53x9Yf+SMO3VeB7L/1aAbTd+ecpVTv4DxfHDgD9FhXhMdejlsae
OHzDPbZlEVI+vhB6L3a/niBTANthQwM=
=cwV3
-----END PGP SIGNATURE-----

--ugsoeifrlfa7kjoi--


--===============7360020748500844448==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7360020748500844448==--

