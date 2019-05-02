Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06A811555
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:25:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4OcFIscu15Gkqv5z074wtEI8SR+MiecV6xkZiqp5z3Y=; b=WUcnaziAUZljkfEIo9mghyS6f
	KbQNIs8PrjMJY8bhPPCL/hdi5PHXOe62ry1gb3ad2yr/FSIGe4e9f6zx8DgCluKJnOpMQewZYGByG
	emIQEQ5TybeMwBg0E8M27W97TyQXtdClxOIemUyrOzJzwDDZh+gIzY10BfW1dPbGjrT8q8hU70Thk
	bQ2mKs0RFtmYt5kDZn/xO0U7y/6hpbGxRcQzEaguQsGbrbkayu4mcB4nYbsuh2yfJiVF/HF61ky1K
	vsNskhvw/gHqn0KSz1BWZ3ctKk7cI9Xx3p24xioBzkXOMf8knFknRIkV6iF175xfbugAq73IVh+Jx
	aKUT8o96w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM72A-0001Ue-Ss; Thu, 02 May 2019 08:25:38 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM722-0001Ru-SJ
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:25:32 +0000
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 879AE100015;
 Thu,  2 May 2019 08:25:26 +0000 (UTC)
Date: Thu, 2 May 2019 10:25:26 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 2/5] ASoC: sun4i-spdif: Add support for H6 SoC
Message-ID: <20190502082526.c5zo4uzceqzizbxo@flea>
References: <20190419191730.9437-1-peron.clem@gmail.com>
 <20190419191730.9437-3-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190419191730.9437-3-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_012531_212274_E3B84FEA 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1978318290209721193=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1978318290209721193==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wid6745ec7776hfu"
Content-Disposition: inline


--wid6745ec7776hfu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 19, 2019 at 09:17:27PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner H6 has a different mapping for the fifo register controller.
>
> Actually only the fifo tx flush bit is used.
>
> Add a new quirk to know the correct fifo tx flush bit.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-spdif.c | 42 ++++++++++++++++++++++++++++++-----
>  1 file changed, 36 insertions(+), 6 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-spdif.c b/sound/soc/sunxi/sun4i-spdif.c
> index b4af4aabead1..19e4bf9caa24 100644
> --- a/sound/soc/sunxi/sun4i-spdif.c
> +++ b/sound/soc/sunxi/sun4i-spdif.c
> @@ -75,6 +75,18 @@
>  	#define SUN4I_SPDIF_FCTL_RXOM(v)		((v) << 0)
>  	#define SUN4I_SPDIF_FCTL_RXOM_MASK		GENMASK(1, 0)
>
> +#define SUN50I_H6_SPDIF_FCTL (0x14)
> +	#define SUN50I_H6_SPDIF_FCTL_HUB_EN		BIT(31)
> +	#define SUN50I_H6_SPDIF_FCTL_FTX		BIT(30)
> +	#define SUN50I_H6_SPDIF_FCTL_FRX		BIT(29)
> +	#define SUN50I_H6_SPDIF_FCTL_TXTL(v)		((v) << 12)
> +	#define SUN50I_H6_SPDIF_FCTL_TXTL_MASK		GENMASK(19, 12)
> +	#define SUN50I_H6_SPDIF_FCTL_RXTL(v)		((v) << 4)
> +	#define SUN50I_H6_SPDIF_FCTL_RXTL_MASK		GENMASK(10, 4)
> +	#define SUN50I_H6_SPDIF_FCTL_TXIM		BIT(2)
> +	#define SUN50I_H6_SPDIF_FCTL_RXOM(v)		((v) << 0)
> +	#define SUN50I_H6_SPDIF_FCTL_RXOM_MASK		GENMASK(1, 0)
> +
>  #define SUN4I_SPDIF_FSTA	(0x18)
>  	#define SUN4I_SPDIF_FSTA_TXE			BIT(14)
>  	#define SUN4I_SPDIF_FSTA_TXECNTSHT		(8)
> @@ -169,16 +181,25 @@ struct sun4i_spdif_dev {
>  	struct snd_soc_dai_driver cpu_dai_drv;
>  	struct regmap *regmap;
>  	struct snd_dmaengine_dai_dma_data dma_params_tx;
> +	const struct sun4i_spdif_quirks *quirks;

I guess this will generate a warning since the structure hasn't been
defined yet?

> +};
> +
> +struct sun4i_spdif_quirks {
> +	unsigned int reg_dac_txdata;	/* TX FIFO offset for DMA config */
> +	unsigned int reg_fctl_ftx;	/* TX FIFO flush bitmask */
> +	bool has_reset;

You don't really need to move it around, you can just add the
structure prototype.

If you do want to move it around, then please do so in a separate patch

>  };
>
>  static void sun4i_spdif_configure(struct sun4i_spdif_dev *host)
>  {
> +	const struct sun4i_spdif_quirks *quirks =3D host->quirks;
> +
>  	/* soft reset SPDIF */
>  	regmap_write(host->regmap, SUN4I_SPDIF_CTL, SUN4I_SPDIF_CTL_RESET);
>
>  	/* flush TX FIFO */
>  	regmap_update_bits(host->regmap, SUN4I_SPDIF_FCTL,
> -			   SUN4I_SPDIF_FCTL_FTX, SUN4I_SPDIF_FCTL_FTX);
> +			   quirks->reg_fctl_ftx, quirks->reg_fctl_ftx);
>
>  	/* clear TX counter */
>  	regmap_write(host->regmap, SUN4I_SPDIF_TXCNT, 0);
> @@ -405,22 +426,26 @@ static struct snd_soc_dai_driver sun4i_spdif_dai =
=3D {
>  	.name =3D "spdif",
>  };
>
> -struct sun4i_spdif_quirks {
> -	unsigned int reg_dac_txdata;	/* TX FIFO offset for DMA config */
> -	bool has_reset;
> -};
> -
>  static const struct sun4i_spdif_quirks sun4i_a10_spdif_quirks =3D {
>  	.reg_dac_txdata	=3D SUN4I_SPDIF_TXFIFO,
> +	.reg_fctl_ftx   =3D SUN4I_SPDIF_FCTL_FTX,
>  };
>
>  static const struct sun4i_spdif_quirks sun6i_a31_spdif_quirks =3D {
>  	.reg_dac_txdata	=3D SUN4I_SPDIF_TXFIFO,
> +	.reg_fctl_ftx   =3D SUN4I_SPDIF_FCTL_FTX,
>  	.has_reset	=3D true,
>  };
>
>  static const struct sun4i_spdif_quirks sun8i_h3_spdif_quirks =3D {
>  	.reg_dac_txdata	=3D SUN8I_SPDIF_TXFIFO,
> +	.reg_fctl_ftx   =3D SUN4I_SPDIF_FCTL_FTX,
> +	.has_reset	=3D true,
> +};
>
> +static const struct sun4i_spdif_quirks sun50i_h6_spdif_quirks =3D {
> +	.reg_dac_txdata	=3D SUN8I_SPDIF_TXFIFO,
> +	.reg_fctl_ftx   =3D SUN50I_H6_SPDIF_FCTL_FTX,
>  	.has_reset	=3D true,

The reg_dac_txdata and reg_fctl_ftx changes here should also be part
of a separate patch.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--wid6745ec7776hfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXMqpdgAKCRDj7w1vZxhR
xWH5AP0V7WwgeoLzp2Jy/IqaN2gkHTAxsL4rN9x34ddtQ9CO2AEA9tdoCjIN+Pu8
eH0aZZcT+yIqU0dkGQCUJfpkZdUMZQE=
=bqND
-----END PGP SIGNATURE-----

--wid6745ec7776hfu--


--===============1978318290209721193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1978318290209721193==--

