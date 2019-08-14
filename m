Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0835D8D1D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rD5Lw0b1qA8RM21stCjqyV0aawdvx4MMeCY7Y0p/JjA=; b=qP0tuCJUY8ySw5mi2nyKf0mq9
	6IIzmMiFA1awYcyLGDtOfieZ6CzreVrYQ8pdxugHWzcqBJ8sTb7I/LkVGOEQlNny6OmigUm7CLcUM
	FevtiQp0WTYYcHvzCEqRYIkF39QroMTurTTPf3FNmC3ekXVoSeAj/bMGHdGom/eqvzZ0CcgOV+/hZ
	CcRhmq655QzAdFmfDivR22j95kxKKIxCBVKrqufIEcrtO25SdsS8rfJ9q12H9CD/Qg15sxeeFxrD9
	j1hejNG85bVg+0R/uWVzFA99YGuvy2LsCIk/t4JBrGHi6ZSh7K44iIEnR9wH5LXOxvCU9xBLsYYZb
	3XlGb7eOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrDI-0000d9-5C; Wed, 14 Aug 2019 11:13:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr9V-0006Rj-Oc
 for linux-arm-kernel@bombadil.infradead.org; Wed, 14 Aug 2019 11:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lFx5Ruf23c+Basa8fDMvy5pDeWaBk2/ivQW+Y/I2Sl0=; b=qZNysiOmgkRxxjEobIVYRh7ZO
 3TlyFyY+RhyTrN2ajA9ohclKOlRsEprJQuBzqIBHAb6nnjSjqXK+blxpvp0RLtAhe8d2sXUw1ahQf
 yAP0lf/m0jOEo32EOXoNC87dV5Cj8PxQiEHNtEocDa6KmfLSzeumFd1pDHb0NXy5WzdG11Ih1aRfy
 M4SuFY37SZ6aJBdYdiZ/7+fKAh9IVijc0SKFmxph2W22tm8FLb164BpukxFpPM3XMhmKGO2amKRNE
 xxmp9dh+v7lUrnU5bpOwQoOgRljVVnatjfxT5h5wbItgBDxLJ7l3zz+gZ1eMCzPFsU8AreHe6atRg
 M24z1aX2A==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr9l-0005pg-BR
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:09:31 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 64E52E000A;
 Wed, 14 Aug 2019 11:08:40 +0000 (UTC)
Date: Wed, 14 Aug 2019 09:16:45 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 04/15] ASoC: sun4i-i2s: Support more formats on newer
 SoCs
Message-ID: <20190814071645.33qe7bvwpbakjg2e@flea>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-5-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-5-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_120929_448310_8EBFE2E3 
X-CRM114-Status: GOOD (  29.86  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============4841781077654757966=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4841781077654757966==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nwzjgr7m2im3tclk"
Content-Disposition: inline


--nwzjgr7m2im3tclk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 14, 2019 at 08:08:43AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> There is a need to support more formats on the newer SoCs(H3 and later).
> Extend the formats supported to include DSP_A and DSP_B modes.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 87 +++++++++++++++++++++++++++----------
>  1 file changed, 63 insertions(+), 24 deletions(-)
>
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 34f31439ae7b..3553c17318b0 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -27,6 +27,8 @@
>  #define SUN4I_I2S_CTRL_MODE_MASK		BIT(5)
>  #define SUN4I_I2S_CTRL_MODE_SLAVE			(1 << 5)
>  #define SUN4I_I2S_CTRL_MODE_MASTER			(0 << 5)
> +#define SUN4I_I2S_CTRL_PCM			BIT(4)
> +#define SUN4I_I2S_CTRL_LOOP			BIT(3)
>  #define SUN4I_I2S_CTRL_TX_EN			BIT(2)
>  #define SUN4I_I2S_CTRL_RX_EN			BIT(1)
>  #define SUN4I_I2S_CTRL_GL_EN			BIT(0)
> @@ -91,6 +93,9 @@
>  /* Defines required for sun8i-h3 support */
>  #define SUN8I_I2S_CTRL_BCLK_OUT			BIT(18)
>  #define SUN8I_I2S_CTRL_LRCK_OUT			BIT(17)
> +#define SUN8I_I2S_CTRL_MODE_RIGHT_J			(2 << 0)
> +#define SUN8I_I2S_CTRL_MODE_I2S_LEFT_J			(1 << 0)
> +#define SUN8I_I2S_CTRL_MODE_PCM				(0 << 0)
>
>  #define SUN8I_I2S_FMT0_LRCK_PERIOD_MASK		GENMASK(17, 8)
>  #define SUN8I_I2S_FMT0_LRCK_PERIOD(period)	((period - 1) << 8)
> @@ -164,6 +169,7 @@ struct sun4i_i2s_quirks {
>
>  	s8	(*get_sr)(const struct sun4i_i2s *, int);
>  	s8	(*get_wss)(const struct sun4i_i2s *, int);
> +	int	(*set_format)(struct sun4i_i2s *, unsigned int);
>  };
>
>  struct sun4i_i2s {
> @@ -194,6 +200,7 @@ struct sun4i_i2s {
>
>  	unsigned int	tdm_slots;
>  	unsigned int	slot_width;
> +	unsigned int	offset;
>  };
>
>  struct sun4i_i2s_clk_div {
> @@ -484,19 +491,14 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
>  				      i2s->slot_width : params_width(params));
>  }
>
> -static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
> +static int sun4i_i2s_set_format(struct sun4i_i2s *i2s, unsigned int fmt)
>  {
> -	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
>  	u32 val;
> -	u32 offset = 0;
> -	u32 bclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
> -	u32 lrclk_polarity = SUN4I_I2S_FMT0_POLARITY_NORMAL;
>
>  	/* DAI Mode */
>  	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
>  	case SND_SOC_DAIFMT_I2S:
>  		val = SUN4I_I2S_FMT0_FMT_I2S;
> -		offset = 1;
>  		break;
>  	case SND_SOC_DAIFMT_LEFT_J:
>  		val = SUN4I_I2S_FMT0_FMT_LEFT_J;
> @@ -505,32 +507,64 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
>  		val = SUN4I_I2S_FMT0_FMT_RIGHT_J;
>  		break;
>  	default:
> -		dev_err(dai->dev, "Unsupported format: %d\n",
> -			fmt & SND_SOC_DAIFMT_FORMAT_MASK);
>  		return -EINVAL;
>  	}
>
> -	if (i2s->variant->has_chsel_offset) {
> -		/*
> -		 * offset being set indicates that we're connected to an i2s
> -		 * device, however offset is only used on the sun8i block and
> -		 * i2s shares the same setting with the LJ format. Increment
> -		 * val so that the bit to value to write is correct.
> -		 */
> -		if (offset > 0)
> -			val++;
> -		/* blck offset determines whether i2s or LJ */
> -		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
> -				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
> -				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
> +	regmap_field_write(i2s->field_fmt_mode, val);
> +
> +	return 0;
> +}
> +
> +static int sun8i_i2s_set_format(struct sun4i_i2s *i2s, unsigned int fmt)
> +{
> +	u32 val;
>
> -		regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
> -				   SUN8I_I2S_TX_CHAN_OFFSET_MASK,
> -				   SUN8I_I2S_TX_CHAN_OFFSET(offset));
> +	/* DAI Mode */
> +	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> +	case SND_SOC_DAIFMT_I2S:
> +		i2s->offset = 1;
> +	case SND_SOC_DAIFMT_LEFT_J:
> +		val = SUN8I_I2S_CTRL_MODE_I2S_LEFT_J;
> +		break;
> +	case SND_SOC_DAIFMT_RIGHT_J:
> +		val = SUN8I_I2S_CTRL_MODE_RIGHT_J;
> +		break;
> +	case SND_SOC_DAIFMT_DSP_A:
> +		i2s->offset = 1;
> +	case SND_SOC_DAIFMT_DSP_B:
> +		val = SUN8I_I2S_CTRL_MODE_PCM;
> +		break;
> +
> +	default:
> +		return -EINVAL;
>  	}
>
> +	/*
> +	 * bclk offset determines whether i2s or LJ if in i2s mode and
> +	 * DSP_A or DSP_B if in PCM mode.
> +	 */
> +	i2s->variant->set_txchanoffset(i2s, 0);
> +	i2s->variant->set_rxchanoffset(i2s);
> +
>  	regmap_field_write(i2s->field_fmt_mode, val);

It's a bit more complicated in the sun8i case. The LRCK period also
needs to be changed when in PCM / DSP_* mode since it changes from a
number of periods for one channel to a number of periods for all the
channels.

I have patches that still need a bit of rework and take care of all of
that, I'll try to post them by the end of the week

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nwzjgr7m2im3tclk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVO1XQAKCRDj7w1vZxhR
xabVAP93GS5a1v4cD+dAvCoPqfc3FJHdxubU8RL/0aefRkFb4AEApe5CxRoTLDTx
zz+c4TDIrWSI/BuJxoj1cSGlbXXa1AY=
=dsSC
-----END PGP SIGNATURE-----

--nwzjgr7m2im3tclk--


--===============4841781077654757966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4841781077654757966==--

