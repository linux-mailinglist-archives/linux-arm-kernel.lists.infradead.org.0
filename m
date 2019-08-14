Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF268D1D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:12:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dql0F8YYt6DPKhnjnk1UX6GqEzUFaYqIjaktB0cDLOA=; b=Yyyf5RBIQ80gpZSR+TXF8QgMi
	ZVTEu70UexNOHAUmRAtwHcGvfrS28guwr6NNR4N18zKR6KrwZti2ubsRCKbdn8S8LwOS+pfJTYMUX
	Ss5QEcvGIHZ6zfPYs4Ogyb2NZC8RcmYYWevhsycuRWGV3/b9aPm4Qo70Jgxnlmdu7IAvsXv2phkQy
	JgliaJhsDtBNe8EZJo1hFNIJuxNTaqqSiH5shJdHjO8U55CwgSMCov4zQvFpFtiUz90c+jndGfBlU
	fVCReGCccaOeZQOXiOtiQTkRwcyQrBPcAn3hYSCtej2tq/Pq+i8YrveV40WQK/81TnkzXk6fX36nh
	7lRCitZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrCx-0000Nx-SK; Wed, 14 Aug 2019 11:12:48 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr93-0006Mc-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:08:49 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 055BE240006;
 Wed, 14 Aug 2019 11:08:36 +0000 (UTC)
Date: Wed, 14 Aug 2019 09:13:43 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 03/15] ASoC: sun4i-i2s: Correct divider calculations
Message-ID: <20190814071343.vvjbozrmv5ionwnf@flea>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-4-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-4-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040846_817400_D6A13B31 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============1373204951442690859=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1373204951442690859==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bamdgrdnwpokqt4x"
Content-Disposition: inline


--bamdgrdnwpokqt4x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

(I just noticed this, but can you update my mail address, it's not
@free-electrons for quite a while, you probably want to change your
scripts to use mripard@kernel.org)

On Wed, Aug 14, 2019 at 08:08:42AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> The clock division circuitry is different on the H3 and later SoCs.
> The division of bclk is now based on pll2.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 73 +++++++++++++++++++++++++------------
>  1 file changed, 49 insertions(+), 24 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 7c37b6291df0..34f31439ae7b 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -127,8 +127,6 @@ struct sun4i_i2s;
>   * @has_chsel_offset: SoC uses offset for selecting dai operational mode.
>   * @reg_offset_txdata: offset of the tx fifo.
>   * @sun4i_i2s_regmap: regmap config to use.
> - * @mclk_offset: Value by which mclkdiv needs to be adjusted.
> - * @bclk_offset: Value by which bclkdiv needs to be adjusted.
>   * @field_clkdiv_mclk_en: regmap field to enable mclk output.
>   * @field_fmt_wss: regmap field to set word select size.
>   * @field_fmt_sr: regmap field to set sample resolution.
> @@ -150,8 +148,6 @@ struct sun4i_i2s_quirks {
>  	bool				has_chsel_offset;
>  	unsigned int			reg_offset_txdata;	/* TX FIFO */
>  	const struct regmap_config	*sun4i_i2s_regmap;
> -	unsigned int			mclk_offset;
> -	unsigned int			bclk_offset;
>
>  	/* Register fields for i2s */
>  	struct reg_field		field_clkdiv_mclk_en;
> @@ -212,7 +208,25 @@ static const struct sun4i_i2s_clk_div sun4i_i2s_bclk_div[] = {
>  	{ .div = 8, .val = 3 },
>  	{ .div = 12, .val = 4 },
>  	{ .div = 16, .val = 5 },
> -	/* TODO - extend divide ratio supported by newer SoCs */
> +};
> +
> +static const struct sun4i_i2s_clk_div sun8i_i2s_clk_div[] = {
> +	{ .div = 0, .val = 0 },

Having a divider of 0 seems like a bad idea.

> +	{ .div = 1, .val = 1 },
> +	{ .div = 2, .val = 2 },
> +	{ .div = 4, .val = 3 },
> +	{ .div = 6, .val = 4 },
> +	{ .div = 8, .val = 5 },
> +	{ .div = 12, .val = 6 },
> +	{ .div = 16, .val = 7 },
> +	{ .div = 24, .val = 8 },
> +	{ .div = 32, .val = 9 },
> +	{ .div = 48, .val = 10 },
> +	{ .div = 64, .val = 11 },
> +	{ .div = 96, .val = 12 },
> +	{ .div = 128, .val = 13 },
> +	{ .div = 176, .val = 14 },
> +	{ .div = 192, .val = 15 },
>  };
>
>  static const struct sun4i_i2s_clk_div sun4i_i2s_mclk_div[] = {
> @@ -224,21 +238,21 @@ static const struct sun4i_i2s_clk_div sun4i_i2s_mclk_div[] = {
>  	{ .div = 12, .val = 5 },
>  	{ .div = 16, .val = 6 },
>  	{ .div = 24, .val = 7 },
> -	/* TODO - extend divide ratio supported by newer SoCs */
>  };
>
>  static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
>  				  unsigned int oversample_rate,
> -				  unsigned int word_size)
> +				  unsigned int word_size,
> +				  const struct sun4i_i2s_clk_div *bdiv,
> +				  unsigned int size)

Wouldn't it be simpler to just have the divider list in the variant
structure? It would avoid having to refactor all the functions, and
it's not like it's really going to change from one call to another
anyway.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--bamdgrdnwpokqt4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVO0pwAKCRDj7w1vZxhR
xeUlAP9r6Z9EM/cbBKKY+kiTaI16sfr7c9NwecdxGZCT7mrOkAEAlrY4YQHdPrGM
Ek/ZDh1DW7Q85spOkTJgAF0ugAOlDwQ=
=8Nke
-----END PGP SIGNATURE-----

--bamdgrdnwpokqt4x--


--===============1373204951442690859==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1373204951442690859==--

