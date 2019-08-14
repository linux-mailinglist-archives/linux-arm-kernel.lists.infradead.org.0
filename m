Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4228D1D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:13:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5beEEsfS36zLb4UIBduG+IOZIkQ6//pIv8pZKnvYPbg=; b=h0Doi/vW5SwTcEcwIDJMzjdtf
	h4/r6c2RUpSCOR+47EodVwtBswiO7F0rN/E5BQsJ8NYIpDNebphSnwDE5YWp/ppDojiH4q9zRV7SV
	Gyuv0oo0Kf2JZkkENO01StrSCu8XNTKsmmOyyMabRtjxlYCGwnt12ZZsdsnxXX6nLcQZ2gS6f7mC2
	AOnH2xgtdnRR/Gz60lOxVKMWbD7u83dI8P+/3vDkn5BQsbOBiRxUcdMbNAJL7OupdDbJcCZWV06cD
	EGAO3dkFgcxQnfU9v27QcNj3PKX3QHAg/fR9Zh3o8FUjFKeTUDwSBAV2CYO9aefuwsYNyu993Ii76
	ubZZNW5rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrDf-0000yD-Hv; Wed, 14 Aug 2019 11:13:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr9X-0006S5-8a
 for linux-arm-kernel@bombadil.infradead.org; Wed, 14 Aug 2019 11:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KwvGOULW6ov3FVAc/ci3hbqDH8HsgycwW49ODMQsmVs=; b=LK6Om+JBSZhlToI6HTfj17VU4
 DYMGofZd2p6+1rhnCc11LgYtfI+xkaHLq4duyLStrNQZ2yoOgnSgJYf9/EvWsyAVBRTEePycdHqk6
 ViPByunmGOGv2Nil2hTviyf5hB3lCTC1XcOG7BfAgeuFtT9Z2CBxtFBdBDpxANi8/JMlePo805Q2m
 dTsCwpXpofNdfA9ExbVvIfm56a7MPeegn0vpZ58ql8B/9FKFpAVTgH4yj68pfuZY6qJRjAu7Bw/Lu
 ok1+kKd8nIC83+yVT6hk17MCMw1PuX/uM5S5lyz3f7F8ZI+MDjULTXvsLQG9IecwVR/SnuisXwE+b
 uP6J9GMVw==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr9T-0005q5-DP
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:09:13 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 97D71E0003;
 Wed, 14 Aug 2019 11:08:35 +0000 (UTC)
Date: Wed, 14 Aug 2019 09:09:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 02/15] ASoC: sun4i-i2s: Add set_tdm_slot functionality
Message-ID: <20190814070923.wwkw7hybjvy3p4br@flea>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-3-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-3-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
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
Content-Type: multipart/mixed; boundary="===============5920341790674902500=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5920341790674902500==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mpw4oztj7vyrpshs"
Content-Disposition: inline


--mpw4oztj7vyrpshs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Aug 14, 2019 at 08:08:41AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Codecs without a control connection such as i2s based HDMI audio and
> the Pine64 DAC require a different amount of bit clocks per frame than
> what is calculated by the sample width. Use the tdm slot bindings to
> provide this mechanism.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 8201334a059b..7c37b6291df0 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -195,6 +195,9 @@ struct sun4i_i2s {
>  	struct regmap_field	*field_rxchansel;
>
>  	const struct sun4i_i2s_quirks	*variant;
> +
> +	unsigned int	tdm_slots;
> +	unsigned int	slot_width;
>  };
>
>  struct sun4i_i2s_clk_div {
> @@ -346,7 +349,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
>  	if (i2s->variant->has_fmt_set_lrck_period)
>  		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
>  				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> -				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
> +				   SUN8I_I2S_FMT0_LRCK_PERIOD(word_size));
>
>
>  	/* Set sign extension to pad out LSB with 0 */
>  	regmap_field_write(i2s->field_fmt_sext, 0);
> @@ -450,7 +453,8 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>  	regmap_field_write(i2s->field_fmt_sr, sr);
>
>  	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> -				      params_width(params));
> +				      i2s->tdm_slots ?
> +				      i2s->slot_width : params_width(params));

This is slightly more complicated than that.

On the H3 (and all related ones), the CHAN_CFG_TX_SLOT_NUM and
_RX_SLOT_NUM fields in the CHAN_CFG register need to be set to the
number of slots as well.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--mpw4oztj7vyrpshs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVOzowAKCRDj7w1vZxhR
xYQiAQDZAhUPiv1ty7F7fpZyPJeJRXOokKvsfX401+9n0UxeEwEAimWXgMxiGvqG
BMajnuQhZjSi5H9ncO28lJkw9KzobwU=
=2WOa
-----END PGP SIGNATURE-----

--mpw4oztj7vyrpshs--


--===============5920341790674902500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5920341790674902500==--

