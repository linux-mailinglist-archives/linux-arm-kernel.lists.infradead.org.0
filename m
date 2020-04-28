Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A91D1BB892
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UNainhVozgFHGiJQcjoEsKk5pp/0F4COv7EJgJNNU74=; b=rAW1iA6KzSpo2ruJvf9jEinOI
	HAyz+DTUlqxvpaH5g+0K2Th53T1+CUphFihM/zrYv1s9k4xysL1RwL5FQVaIDdYSQ+qBEjbykvHQE
	inAFxoRGRgV80EAf6aSx8BtvnRE41dIEui/KNPn6gEaF+LVPUltxwkb5JkRLiB4YOZ/l3BuM+BV4T
	W9Cbl4PHLOJcO7TiKeipq5pRYUl9cXxuqOSu0RelAC366rJGIknep3mpGwjW5nkj3bIspjvbpB6Q/
	YWMI9rTnLrRAFIRv1MOZe6EUBN8GAGZ6xMCWhWGZr7zB2fhNtlORB+zs4FMQBiIgvNek/wKLdXlPH
	D2FaE3QIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLN1-0008OW-2B; Tue, 28 Apr 2020 08:13:35 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLMr-0008Nn-CZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:13:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A17D25800D6;
 Tue, 28 Apr 2020 04:13:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 04:13:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=aNL6gNiksq4r4UbKFxC+u35ZMwz
 PjR4FLCxhPYO1ZHQ=; b=Ow9QCQxHMFqXBKP/9h6hzsznq8rDy5fQ9VO1YndVbr2
 a2Wm5YZ1aD4n8/JWVtd6i9LOavWI2m0lzfAPVQehZBo9TdQ1JbyWPb/wke5DIWCw
 k4RngA6/Wet2p7sMEfz5Ubwh96s4UuTXcolqQsqCUeSr/d1lWzYBd8FQtyxZwrbN
 CP8SOiJjdkP0xUs7zWO4iDG0X7bqRFJQR3ujI6P3298oywHmT5XLg6x3iYXMWezf
 5HAG/8drt6KTqjuqofDo0BZAaGf5whP2XHKJ2o+BYz6eZETWsuJz7BFOfy07Ey/C
 P2JjxdBHPrtglVT2hDcV1aWNjtXtP8754ANHLDV6kSw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aNL6gN
 iksq4r4UbKFxC+u35ZMwzPjR4FLCxhPYO1ZHQ=; b=QILMzCzyEaCrJJhYtR1Zps
 H/3ckqluppkUdd/xt9zDocbPx7ZFeUa0AWxWGSet25a3HWuuHvFnVjVTeNfMx4FS
 XcFP/6b1JeBk2AYVPiMiDHMCxcM/z/3pbWZ6pLFpCnUXzeyQ2KqDj1S2pS8KdN1r
 mfLa7g+CXY9pA5mIbbo/+TzpAOi3aoDbM8d42qX3tJl3YjNTKKIHQ9fLByPf7llQ
 M0tO59Qc6fzFSbgIoYvGheDzZp+f469p+7/bvSnOZcst1Qy2n7v8h4KVQQh2QTe4
 W+PSYNiAcOPF/C/FupRh/RtCp5ex4o5NaS8SO0eHPH2k26IlkfXQwbY0bVxdjLog
 ==
X-ME-Sender: <xms:o-WnXloq0ZC0sxFTMmAjuGzZHSppskXtXJGzTpYnNhIA_LxoTSKTig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedugddtudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:o-WnXj_Rvm0CbMeCkMsaC4ldOE2sJQTnHXqhLW6uEL94k6TMeHE68w>
 <xmx:o-WnXk-7UMGZwzPs2zSwi-YSGziaoWNibn7ZWWHYEx2M1zPq7Oew7A>
 <xmx:o-WnXitaEN9iqXogA8et9-gamTdv22Fg51U40qpYXV3sGXMFiZnreg>
 <xmx:pOWnXlxbTY2BlSQh_Rqc6-znSdCS9T2adHEgLupYOgqxTXUcxi0jWw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C214D3280068;
 Tue, 28 Apr 2020 04:13:22 -0400 (EDT)
Date: Tue, 28 Apr 2020 10:13:21 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 3/7] ASoC: sun4i-i2s: Add support for H6 I2S
Message-ID: <20200428081321.ht3el26yqhsnyfm4@gilmour.lan>
References: <20200426104115.22630-1-peron.clem@gmail.com>
 <20200426104115.22630-4-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426104115.22630-4-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_011325_562934_E2384534 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Takashi Iwai <tiwai@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Marcus Cooper <codekipper@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7888383166080717438=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7888383166080717438==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7bvfzopuk76upvmv"
Content-Disposition: inline


--7bvfzopuk76upvmv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 26, 2020 at 12:41:11PM +0200, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
>=20
> H6 I2S is very similar to that in H3, except it supports up to 16
> channels.
>=20
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 227 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 227 insertions(+)
>=20
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 4198a5410bf9..a23c9f2a3f8c 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -124,6 +124,21 @@
>  #define SUN8I_I2S_RX_CHAN_SEL_REG	0x54
>  #define SUN8I_I2S_RX_CHAN_MAP_REG	0x58
> =20
> +/* Defines required for sun50i-h6 support */
> +#define SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET_MASK	GENMASK(21, 20)
> +#define SUN50I_H6_I2S_TX_CHAN_SEL_OFFSET(offset)	((offset) << 20)
> +#define SUN50I_H6_I2S_TX_CHAN_SEL_MASK		GENMASK(19, 16)
> +#define SUN50I_H6_I2S_TX_CHAN_SEL(chan)		((chan - 1) << 16)
> +#define SUN50I_H6_I2S_TX_CHAN_EN_MASK		GENMASK(15, 0)
> +#define SUN50I_H6_I2S_TX_CHAN_EN(num_chan)	(((1 << num_chan) - 1))
> +
> +#define SUN50I_H6_I2S_TX_CHAN_MAP0_REG	0x44
> +#define SUN50I_H6_I2S_TX_CHAN_MAP1_REG	0x48
> +
> +#define SUN50I_H6_I2S_RX_CHAN_SEL_REG	0x64
> +#define SUN50I_H6_I2S_RX_CHAN_MAP0_REG	0x68
> +#define SUN50I_H6_I2S_RX_CHAN_MAP1_REG	0x6C
> +
>  struct sun4i_i2s;
> =20
>  /**
> @@ -469,6 +484,65 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i=
_i2s *i2s,
>  	return 0;
>  }
> =20
> +static int sun50i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
> +				   const struct snd_pcm_hw_params *params)
> +{
> +	unsigned int channels =3D params_channels(params);
> +	unsigned int slots =3D channels;
> +	unsigned int lrck_period;
> +
> +	if (i2s->slots)
> +		slots =3D i2s->slots;
> +
> +	/* Map the channels for playback and capture */
> +	regmap_write(i2s->regmap, SUN50I_H6_I2S_TX_CHAN_MAP1_REG, 0x76543210);
> +	regmap_write(i2s->regmap, SUN50I_H6_I2S_RX_CHAN_MAP1_REG, 0x76543210);
> +
> +	/* Configure the channels */
> +	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
> +			   SUN50I_H6_I2S_TX_CHAN_SEL_MASK,
> +			   SUN50I_H6_I2S_TX_CHAN_SEL(channels));
> +	regmap_update_bits(i2s->regmap, SUN50I_H6_I2S_RX_CHAN_SEL_REG,
> +			   SUN50I_H6_I2S_TX_CHAN_SEL_MASK,
> +			   SUN50I_H6_I2S_TX_CHAN_SEL(channels));
> +
> +	regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
> +			   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
> +			   SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
> +	regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
> +			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
> +			   SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));
> +
> +	switch (i2s->format & SND_SOC_DAIFMT_FORMAT_MASK) {
> +	case SND_SOC_DAIFMT_DSP_A:
> +	case SND_SOC_DAIFMT_DSP_B:
> +	case SND_SOC_DAIFMT_LEFT_J:
> +	case SND_SOC_DAIFMT_RIGHT_J:
> +		lrck_period =3D params_physical_width(params) * slots;
> +		break;
> +
> +	case SND_SOC_DAIFMT_I2S:
> +		lrck_period =3D params_physical_width(params);
> +		break;
> +
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (i2s->slot_width)
> +		lrck_period =3D i2s->slot_width;
> +
> +	regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
> +			   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> +			   SUN8I_I2S_FMT0_LRCK_PERIOD(lrck_period));
> +
> +	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
> +			   SUN50I_H6_I2S_TX_CHAN_EN_MASK,
> +			   SUN50I_H6_I2S_TX_CHAN_EN(channels));
> +
> +	return 0;
> +}
> +
>  static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>  			       struct snd_pcm_hw_params *params,
>  			       struct snd_soc_dai *dai)
> @@ -694,6 +768,108 @@ static int sun8i_i2s_set_soc_fmt(const struct sun4i=
_i2s *i2s,
>  	return 0;
>  }
> =20
> +static int sun50i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
> +				 unsigned int fmt)

The alignment is off here

> +{
> +	u32 mode, val;
> +	u8 offset;
> +
> +	/*
> +	 * DAI clock polarity
> +	 *
> +	 * The setup for LRCK contradicts the datasheet, but under a
> +	 * scope it's clear that the LRCK polarity is reversed
> +	 * compared to the expected polarity on the bus.
> +	 */

Did you check this or has it been copy-pasted?

Thanks!
Maxime

--7bvfzopuk76upvmv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfloQAKCRDj7w1vZxhR
xbV7AQCtzcyuXWod6ueBp9bCOgBmzvi9IbRXyMUpg8mupkFJzQD/YCKUuoTYmeh+
WHfw3z1Sgn4sv5c7EKyNffkPSqGpeQA=
=uH8m
-----END PGP SIGNATURE-----

--7bvfzopuk76upvmv--


--===============7888383166080717438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7888383166080717438==--

