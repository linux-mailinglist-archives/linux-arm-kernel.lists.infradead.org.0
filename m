Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E696C1B09EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nE7wipcmczgRxrbvIM2q79PSVXmVWV3BQqObVSLh0DQ=; b=OfqWk2B0dBkNeZxwe/QB6IrGE
	81wYKTXGLgs6eWCnwu/APEjQraRss4teUxMIsLxm6ZxfBvRpx12NNoknDfKVoTli6GbSQtwyp5u6x
	inW6Zv9zIhGgQNQkD3S0EHJ+yp8gwynbzWurcHl/AeQCD2Z1mfpl5/ff7okaV6gDKK9QfuFhmFt0Q
	6AvIkKIZfWw5/EjAkB3Gb4ZBb+XtlT9vCVISuGdJE/CtqAfUn1LN9twB1Jxwf1qfoWFHYUTx+N8wT
	R5j9xdJ9OBntJVBAErUm6111j5pPE2ngBP3SjNYOH9P5Uf52nI9RTakvhgPR1HqLQWyLzR1ejjI7G
	pc7E+mZRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVlt-0002aJ-4o; Mon, 20 Apr 2020 12:43:33 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVlf-0002YQ-9g
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:43:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 73B5A2F9;
 Mon, 20 Apr 2020 08:43:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:43:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=TvYRlFDj5zsASC2QmdA2noOwsmc
 CRDtMDyLSI/jIk0k=; b=LCFHVeE4T71WZZIv2FrPLgKJDXMoykf/BGFDXZYi/Aj
 1a9n4dHxcZGltrrXKdDybjLp2BAF4ZlsWTfqu2+r5IUxBMvADrE1LCY6VmPEXYp4
 zg0DMYF3bhK8yb/BXu+oS8ZXC/cQPgU3rPUAukOmFXihUHpIg4PNU6SOsWLbApLe
 3WGliK3U5gBu3vgcdt9PpaM3WdN51GIyXsfRSlQT2eUBZlKjqDGgvbLZ69UXxqlM
 vaA0RRaUxfpxEyY2kqsHEEMVIr2FLqoS1r7faVmomZ3hSfmrJTCDnK2S+sNCTXaZ
 vPMIqpFiqApmLkhhUoMvbB2UPKu4PSQGYKsW2XpsAZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=TvYRlF
 Dj5zsASC2QmdA2noOwsmcCRDtMDyLSI/jIk0k=; b=iysWqtWMLst7ZT8vsZ9KCc
 epow6uvk+8jL+KmQbuakko9wESjXyFP4TBms1P0+Ifl4Uyh9+6SUZ5VjioUXIQvF
 LLCtoBxn6Q8yG2Vlhg8+qCJuTO8PsvacqR0KRBVIBq5b4UlCJYlPawrctd5lhbyA
 IXetfvhc0NpsrGnzYrX3rdhhy69+X5NkYf4SGuNh1yIAK3dYVvwenA8TH8nU1saD
 DyJMFSUHcdcCp0gDfGFgyvK7XNYPbNRKq7bLizCe0n3J/5gkiYPp2xpYNBWbjBKy
 DEnHC/LKlJLskXL2O51BCada25v+rn/TN3zwSKeCHn3UQm8pKa0gRhhSTt5EcQXQ
 ==
X-ME-Sender: <xms:4ZidXryRtKF9WpJtlaBuFQSLEjoeODKwv4PDVwaTIWRJGTmsy4JwbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:4ZidXt_6zVTed1cCY_VRx6YKkyqPwjCrXizeMyOWDtfPKzol8DrZRQ>
 <xmx:4ZidXuD0LYA9tvy8S7BIw7RX0aWIaKGPK-5Qf6fzyC5GB9iTgxYgyw>
 <xmx:4ZidXsolCJYxxR48sl3MSwKD2MU3-KVcz7rh0XZ0TS7n3s48juQflg>
 <xmx:45idXmchzfABjIhHaedjLkMwU7JQkXapU6Bl7YTJE5heFB5LCqJNLdrmYos>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DA8A63280059;
 Mon, 20 Apr 2020 08:43:12 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:43:10 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 6/7] ASoC: sun4i-i2s: Adjust regmap settings
Message-ID: <20200420124310.u5475fgdkmidkvy5@gilmour.lan>
References: <20200418224435.23672-1-peron.clem@gmail.com>
 <20200418224435.23672-7-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200418224435.23672-7-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054319_590837_E6EFFC5D 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Rob Herring <robh+dt@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0124687711133252943=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0124687711133252943==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="exd7f2bctn454xtt"
Content-Disposition: inline


--exd7f2bctn454xtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 19, 2020 at 12:44:34AM +0200, Cl=E9ment P=E9ron wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> Bypass the regmap cache when flushing the i2s FIFOs and modify the tables
> to reflect this.

I think that commit log requires a bit more work.

As far as I can see, you're doing several things here:

> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 31 ++++++++-----------------------
>  1 file changed, 8 insertions(+), 23 deletions(-)
>=20
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index 9778af37fbca..9053d290dd87 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -921,7 +921,7 @@ static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai,=
 unsigned int fmt)
>  static void sun4i_i2s_start_capture(struct sun4i_i2s *i2s)
>  {
>  	/* Flush RX FIFO */
> -	regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
> +	regmap_write_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_RX);

You change regmap_update_bits to regmap_write_bits, I assume this is what t=
he
commit log means by "bypassing the cache", so that every write actually gets
done even if the bit is already set.

I'm not quite sure why it's needed though, since that bit is self-clearing.

> @@ -942,7 +942,7 @@ static void sun4i_i2s_start_capture(struct sun4i_i2s =
*i2s)
>  static void sun4i_i2s_start_playback(struct sun4i_i2s *i2s)
>  {
>  	/* Flush TX FIFO */
> -	regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
> +	regmap_write_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_TX,
>  			   SUN4I_I2S_FIFO_CTRL_FLUSH_TX);

Ditto.

> =20
> @@ -1096,13 +1096,7 @@ static const struct snd_soc_component_driver sun4i=
_i2s_component =3D {
> =20
>  static bool sun4i_i2s_rd_reg(struct device *dev, unsigned int reg)
>  {
> -	switch (reg) {
> -	case SUN4I_I2S_FIFO_TX_REG:
> -		return false;
> -
> -	default:
> -		return true;
> -	}
> +	return true;
>  }

You seem to be allowing reads to FIFO_TX_REG now for some reason?

>  static bool sun4i_i2s_wr_reg(struct device *dev, unsigned int reg)
> @@ -1121,6 +1115,8 @@ static bool sun4i_i2s_volatile_reg(struct device *d=
ev, unsigned int reg)
>  {
>  	switch (reg) {
>  	case SUN4I_I2S_FIFO_RX_REG:
> +	case SUN4I_I2S_FIFO_TX_REG:
> +	case SUN4I_I2S_FIFO_STA_REG:

I assume that your issue was that the flushed bit got cached since the regi=
ster
wasn't volatile, and therefore each time we were supposed to flush, we actu=
ally
ended up doing nothing. Marking it as volatile would prevent the cache to c=
atch
that write and make regmap_update_bits work, actually fixing what you menti=
on in
the commit log.

Either way, it should be in the log itself, and it doesn't really explain t=
he
rest of the patch either.

Maxime

--exd7f2bctn454xtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2Y3gAKCRDj7w1vZxhR
xflOAQCVwRLNlTJ29+AhudZfusq9rCP92TknvSasZPb5hBVDvAD9Egi4/19S8hh+
N0gRqtNKtk7xNh853KYpeLbrgcD1iQ8=
=CrtL
-----END PGP SIGNATURE-----

--exd7f2bctn454xtt--


--===============0124687711133252943==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0124687711133252943==--

