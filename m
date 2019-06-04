Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFD6340AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g4XZCYgmHgcYQuTGTa3KHU+DZB3dMct2IZEneYQP6GY=; b=SSrm+YoPqqMjhriQgGgnlkmqs
	+dc/XZ48iZmlxlo01rtYDzTMUHAWx5JcsNj0Vc7hD+C9g7WqcZtKFsJKZHGJqcQeNTy/2Z2XhDUfU
	K+FZQyReLkoxeT+mzzPtBNBjNcTueINv0yyDAEhtKdIpywWkND6tmPtaKmc8x0NrSalyYDBGa51Nr
	N1ZIhjDkuL5m9GGnHzivmj0wnEGLK7AF7zpFOXKGgY2AL2WQx+NAn/JNY0n3EDTxGTFUJO8G2eelk
	SqETedgjCMmk2rhB5PWi9aDxVHz090HmkaNfjKRFWfgfn6h/a3n9Qk/xYZwk/TzALTD2Q5Y/gNThc
	KHnhnuukQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Cy-0004U7-23; Tue, 04 Jun 2019 07:50:12 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Cn-0003le-DV
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:50:04 +0000
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id B8E6B10000A;
 Tue,  4 Jun 2019 07:49:40 +0000 (UTC)
Date: Tue, 4 Jun 2019 09:49:40 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v4 5/9] ASoC: sun4i-i2s: Add set_tdm_slot functionality
Message-ID: <20190604074940.pwzggjluksv7xxel@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-6-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190603174735.21002-6-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_005002_077901_7833E10B 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1457392131991783210=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1457392131991783210==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ld4z4b6632jtjjwn"
Content-Disposition: inline


--ld4z4b6632jtjjwn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:47:31PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Some codecs require a different amount of a bit clocks per frame than

Which codec? And what are the actual requirements?

> what is calculated by the sample width. Use the tdm slot bindings to
> provide this mechanism.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 329883750d6f..bca73b3c0d74 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -186,6 +186,9 @@ struct sun4i_i2s {
>  	struct regmap_field	*field_rxchansel;
>
>  	const struct sun4i_i2s_quirks	*variant;
> +
> +	unsigned int	tdm_slots;
> +	unsigned int	slot_width;
>  };
>
>  struct sun4i_i2s_clk_div {
> @@ -337,7 +340,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
>  	if (i2s->variant->is_h3_i2s_based)
>  		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
>  				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> -				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
> +				   SUN8I_I2S_FMT0_LRCK_PERIOD(word_size));

This is an unrelated change, it should be in a separate patch.

>
>  	/* Set sign extension to pad out LSB with 0 */
>  	regmap_field_write(i2s->field_fmt_sext, 0);
> @@ -414,7 +417,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>  			   sr + i2s->variant->fmt_offset);
>
>  	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> -				      params_width(params));
> +				      i2s->tdm_slots ?
> +				      i2s->slot_width : params_width(params));
>  }
>
>  static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
> @@ -657,11 +661,25 @@ static int sun4i_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
>  	return 0;
>  }
>
> +static int sun4i_i2s_set_dai_tdm_slot(struct snd_soc_dai *dai,
> +	unsigned int tx_mask, unsigned int rx_mask,
> +	int slots, int width)

The alignment after the wraping should be at the opening parenthesis.

> +{
> +	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> +
> +	i2s->tdm_slots = slots;
> +
> +	i2s->slot_width = width;
> +
> +	return 0;
> +}
> +
>  static const struct snd_soc_dai_ops sun4i_i2s_dai_ops = {
>  	.hw_params	= sun4i_i2s_hw_params,
>  	.set_fmt	= sun4i_i2s_set_fmt,
>  	.set_sysclk	= sun4i_i2s_set_sysclk,
>  	.trigger	= sun4i_i2s_trigger,
> +	.set_tdm_slot	= sun4i_i2s_set_dai_tdm_slot,

Please sort them by alphabetical order.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ld4z4b6632jtjjwn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYilAAKCRDj7w1vZxhR
xYXiAP0bXRYymU/3+ZTKYuLhieHKCw+su1ZTlL8VmZhDNotmdQD+PVY0AsWtlw/f
1o88nw8RTpP0U6hdQ3I6QSx5EAHp6Ao=
=vM/5
-----END PGP SIGNATURE-----

--ld4z4b6632jtjjwn--


--===============1457392131991783210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1457392131991783210==--

