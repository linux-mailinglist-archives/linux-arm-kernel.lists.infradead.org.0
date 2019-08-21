Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05060978CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rdl/nP+GkXRPUAAACbPztIpb6MIjhR13c03hBS1TxaY=; b=I0fqR3hM4ixXQML32y9+zyx+l
	lda6T9z73gQPAjvkMzLfYUdF9FpC0ej3Lvc+lILvQEXVuNHSFEOLZ+x/mdcZbVX5za9/CZR45krDw
	7g3/oWA8e9Jn0YYP+bTUWcoQ0Om9DgvBRrrcctjeDZ/OFjCn3hozQSr5gXRSVoON5gGCf7bFCeZEx
	hl99ykNFtsronOOSle9WRZ8L0/TFlXe2oO3F2+tH254sOEkvSG+koHNGf4ft4JRk6dLAhsTV6j0/q
	NF+Sa87AWHpwoA0kXmx4TSm3CAbCsILnGX2yuKFfIhf9CyrquWivFnp8eY0MvgsMOCQfeFpHx30DU
	G9/Q1yqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PNQ-0005FW-Of; Wed, 21 Aug 2019 12:06:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PNC-0005F7-6F
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:05:55 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6825C2089E;
 Wed, 21 Aug 2019 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566389153;
 bh=2FRrclBMVAhxORSkvx15JbwCjv+rECZrE3tmzTI6fjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IbIaUibt98RW+BrZlXwdHPhbsgLQ9iOj11mOxlw6Yjy1yayKkHC4aRDGmudrko7Kx
 noHVlKvbF69kchSJz2ghinFmicUmJh1uuf7G/o7kEBUZrBsJJqDiDMperYLvKafvYv
 b1eKr/vXsFluy6CmtTWTuLDHZlYoB+K02En2rqBs=
Date: Wed, 21 Aug 2019 14:05:51 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Sergey Suloev <ssuloev@orpaltech.com>
Subject: Re: [PATCH 20/21] ASoC: sun4i-i2s: Add support for TDM slots
Message-ID: <20190821120551.r4b3h4nnet357wem@flea>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
 <26392af30b3e7b31ee48d5b867d45be8675db046.1566242458.git-series.maxime.ripard@bootlin.com>
 <c311e88a-fdd2-8a01-275e-675d98dc90ba@orpaltech.com>
MIME-Version: 1.0
In-Reply-To: <c311e88a-fdd2-8a01-275e-675d98dc90ba@orpaltech.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_050554_274718_3D012CB0 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, codekipper@gmail.com,
 Chen-Yu Tsai <wens@csie.org>, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7742295218853340483=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7742295218853340483==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hsc5ca3rnlaanrdu"
Content-Disposition: inline


--hsc5ca3rnlaanrdu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 20, 2019 at 08:46:30AM +0300, Sergey Suloev wrote:
> Hi, Maxime,
>
> On 8/19/19 10:25 PM, Maxime Ripard wrote:
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The i2s controller supports TDM, for up to 8 slots. Let's support the TDM
> > API.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >   sound/soc/sunxi/sun4i-i2s.c | 40 ++++++++++++++++++++++++++++++++------
> >   1 file changed, 34 insertions(+), 6 deletions(-)
> >
> > diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> > index 0dac09814b65..4f76daeaaed7 100644
> > --- a/sound/soc/sunxi/sun4i-i2s.c
> > +++ b/sound/soc/sunxi/sun4i-i2s.c
> > @@ -168,6 +168,8 @@ struct sun4i_i2s {
> >   	struct reset_control *rst;
> >   	unsigned int	mclk_freq;
> > +	unsigned int	slots;
> > +	unsigned int	slot_width;
> >   	struct snd_dmaengine_dai_dma_data	capture_dma_data;
> >   	struct snd_dmaengine_dai_dma_data	playback_dma_data;
> > @@ -287,7 +289,7 @@ static bool sun4i_i2s_oversample_is_valid(unsigned int oversample)
> >   static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
> >   				  unsigned int rate,
> > -				  unsigned int channels,
> > +				  unsigned int slots,
> >   				  unsigned int word_size)
> >   {
> >   	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> > @@ -335,7 +337,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
> >   	bclk_parent_rate = i2s->variant->get_bclk_parent_rate(i2s);
> >   	bclk_div = sun4i_i2s_get_bclk_div(i2s, bclk_parent_rate,
> > -					  rate, channels, word_size);
> > +					  rate, slots, word_size);
> >   	if (bclk_div < 0) {
> >   		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
> >   		return -EINVAL;
> > @@ -419,6 +421,10 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
> >   				  const struct snd_pcm_hw_params *params)
> >   {
> >   	unsigned int channels = params_channels(params);
> > +	unsigned int slots = channels;
> > +
> > +	if (i2s->slots)
> > +		slots = i2s->slots;
> >   	/* Map the channels for playback and capture */
> >   	regmap_write(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
> > @@ -428,7 +434,6 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
> >   	regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
> >   			   SUN4I_I2S_CHAN_SEL_MASK,
> >   			   SUN4I_I2S_CHAN_SEL(channels));
> > -
> >   	regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
> >   			   SUN4I_I2S_CHAN_SEL_MASK,
> >   			   SUN4I_I2S_CHAN_SEL(channels));
> > @@ -452,10 +457,18 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> >   			       struct snd_soc_dai *dai)
> >   {
> >   	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> > +	unsigned int word_size = params_width(params);
> >   	unsigned int channels = params_channels(params);
> > +	unsigned int slots = channels;
> >   	int ret, sr, wss;
> >   	u32 width;
> > +	if (i2s->slots)
> > +		slots = i2s->slots;
> > +
> > +	if (i2s->slot_width)
> > +		word_size = i2s->slot_width;
> > +
> >   	ret = i2s->variant->set_chan_cfg(i2s, params);
> >   	if (ret < 0) {
> >   		dev_err(dai->dev, "Invalid channel configuration\n");
> > @@ -477,15 +490,14 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
> >   	if (sr < 0)
> >   		return -EINVAL;
> > -	wss = i2s->variant->get_wss(i2s, params_width(params));
> > +	wss = i2s->variant->get_wss(i2s, word_size);
> >   	if (wss < 0)
> >   		return -EINVAL;
> >   	regmap_field_write(i2s->field_fmt_wss, wss);
> >   	regmap_field_write(i2s->field_fmt_sr, sr);
> > -	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> > -				      channels, params_width(params));
> > +	return sun4i_i2s_set_clk_rate(dai, params_rate(params), slots, word_size);
> >   }
> >   static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
> > @@ -785,10 +797,26 @@ static int sun4i_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
> >   	return 0;
> >   }
> > +static int sun4i_i2s_set_tdm_slot(struct snd_soc_dai *dai,
> > +				  unsigned int tx_mask, unsigned int rx_mask,
> > +				  int slots, int slot_width)
> > +{
> > +	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
> > +
> > +	if (slots > 8)
> > +		return -EINVAL;
> > +
> > +	i2s->slots = slots;
> > +	i2s->slot_width = slot_width;
> > +
> > +	return 0;
> > +}
> > +
> >   static const struct snd_soc_dai_ops sun4i_i2s_dai_ops = {
> >   	.hw_params	= sun4i_i2s_hw_params,
> >   	.set_fmt	= sun4i_i2s_set_fmt,
> >   	.set_sysclk	= sun4i_i2s_set_sysclk,
> > +	.set_tdm_slot	= sun4i_i2s_set_tdm_slot,
> >   	.trigger	= sun4i_i2s_trigger,
> >   };
>
> it seems like you forgot to implement sun4i_i2s_dai_ops.set_bclk_ratio
> because, as I far as I understand, it should alter tdm slots functionality
> indirectly.

As far as I can see, while this indeed changes a few things on the TDM
setup, it's optional, orthogonal and it has a single user in the tree
(some intel platform card).

So I'd say that if someone ever needs it, we can have it, but it's not
a blocker.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hsc5ca3rnlaanrdu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV0znwAKCRDj7w1vZxhR
xRAgAP9EHPMB6Hx7FqcfcszC8f7EF/uLx9RlJGciIrJpOQnKcwEAuaxLthvSNVh/
RddPDN3sljHZtOQBGhyVmlCuwyQoUAk=
=iCnK
-----END PGP SIGNATURE-----

--hsc5ca3rnlaanrdu--


--===============7742295218853340483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7742295218853340483==--

