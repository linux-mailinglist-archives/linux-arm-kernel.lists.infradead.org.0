Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 956EB1B09F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f6ce/AXe9UNsEkelvTkBZD77FLupP9quiqfVXbbT08k=; b=uk0JfvmHaU66ph19xOxxF3/6F
	C5qO9uEwmnxfz9bSO6GVgsKolyQ6LOWR2O4rFCotZ/Lon1QmwaIGH9dzR9WjLOz6nGQUsNRTBUQpr
	FEfmZ6HwowAGd1v/FxE8L8D9CZXGHG9Pg0s4Uj5UNTzZ3eg854yAoMJR2ho/0UcO7qrzsVhSU8cPp
	//9y1tq9CXBhiIB3nCCNZ5stsvx0gS/hHeLGnbH9+/B6MkULfBKAc1XTtjOb9K4WLX69W4tFE+BGn
	CWNLgdd/dP0D7iLmyc1ZmSfdaUomWZobp6bWX6E7hIgAaCtt7qC23T5NNlmM7PNqJH165mX8OPPTk
	g/3mBw4Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVna-0003Hk-2d; Mon, 20 Apr 2020 12:45:18 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVnG-0003GL-1j
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:44:59 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 52D074C5;
 Mon, 20 Apr 2020 08:44:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:44:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=MqLfkwpdNL7mp3m1F9XwsIzRecE
 hB8iVnMkOo+tYlvE=; b=BIJcY8dMYlT/pUxxe3Wgbu8vn7Ba8supxZGHJXCIRVg
 Bdq6cDK+35jxQCL6BMSu0aTPwB69OCLgYt057uvCejkVnYxdWEiHOZiTg7G5aVtk
 Am0N2yQJmkgl1Y/J5bwb1a57fKa3xnyAyTvb4wj0SLmy4EGlfjY2Xn8tPDY8O23G
 7ANketaYsuIN0XiE8hqk+V5MKLyhTbL+z7BhVZIK3vidN7YskBTbhT1fszJhkvr0
 BeJkL5+kQq2z0EOxZxRidgcXX4bdzszafZLuYoDJPCaUwAV+Y05VS3PEIP0hFU6V
 SrjXgpQvhxIKHdlRjEecBR2eLfga/peAwrfjrjT2psw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MqLfkw
 pdNL7mp3m1F9XwsIzRecEhB8iVnMkOo+tYlvE=; b=1dE5TdF/oSc5fkO9xP13n3
 Icezf4EMu2Xmxm51rIU5+1L/DXFNwRBLEvK2klQzJ7KsoaBbu699V7rUdX8aQm7i
 VQxrsCwWaePBJ2OT/7KPHIjoIhCGD8cQcEUMe+jpYERrxljm2jpnzUZL+6Od9MNQ
 HXUDXkvfZEuu+uv9cRbTNGqkA3rmwMG/8Kc6D1wULh54HHEmP4U/rkBlHACxWC8H
 Nd20HpX5HX5cyWi0EDngOw+XQAy8XemaHj/UvEEyXO1KOkcVSC/kBYOQ6lT+oAkr
 EiJOLljyDpPNa67mgz9ae5OBKKFYr+HAhUc8UQa9wGGDEq53N15I7no3WvZPDDDQ
 ==
X-ME-Sender: <xms:RZmdXrl8WX44p-xNd5hAZAh1sasqxaHvTwDHID0Bdiut568CXoGIhw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RpmdXvi3q8kvqD35TX9GkqngpnyIKjjAFvVtUc7mY4U6TiZtormUEg>
 <xmx:RpmdXmL21jAJap1tflUbPdnmC-sxW0g07LZE4OTbnZcHCiCWIg3Guw>
 <xmx:RpmdXkF9jR09dwtQy8JObWOtjmKrOfhCw8yEE0s80NpsO1L3tGMLgg>
 <xmx:R5mdXpSRezKvumAUViK6s6pl-JX8sOXCPZm15XmFiAXs6DyM6oB_SYWifss>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id ADEA03065C0C;
 Mon, 20 Apr 2020 08:44:53 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:44:52 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 4/7] ASoC: sun4i-i2s: Set sign extend sample
Message-ID: <20200420124452.5vaoyw73n76jwmey@gilmour.lan>
References: <20200418224435.23672-1-peron.clem@gmail.com>
 <20200418224435.23672-5-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200418224435.23672-5-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054458_140851_8F41AF38 
X-CRM114-Status: GOOD (  17.48  )
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
Content-Type: multipart/mixed; boundary="===============4353679341650805197=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4353679341650805197==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rrhtfkb63mjeypmw"
Content-Disposition: inline


--rrhtfkb63mjeypmw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 19, 2020 at 12:44:32AM +0200, Cl=E9ment P=E9ron wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> On the newer SoCs such as the H3 and A64 this is set by default
> to transfer a 0 after each sample in each slot. However the A10
> and A20 SoCs that this driver was developed on had a default
> setting where it padded the audio gain with zeros.
>=20
> This isn't a problem whilst we have only support for 16bit audio
> but with larger sample resolution rates in the pipeline then SEXT
> bits should be cleared so that they also pad at the LSB. Without
> this the audio gets distorted.
>=20
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  sound/soc/sunxi/sun4i-i2s.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>=20
> diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
> index a23c9f2a3f8c..618bbc5156f1 100644
> --- a/sound/soc/sunxi/sun4i-i2s.c
> +++ b/sound/soc/sunxi/sun4i-i2s.c
> @@ -48,6 +48,9 @@
>  #define SUN4I_I2S_FMT0_FMT_I2S				(0 << 0)
> =20
>  #define SUN4I_I2S_FMT1_REG		0x08
> +#define SUN4I_I2S_FMT1_REG_SEXT_MASK		BIT(8)
> +#define SUN4I_I2S_FMT1_REG_SEXT(sext)			((sext) << 8)
> +
>  #define SUN4I_I2S_FIFO_TX_REG		0x0c
>  #define SUN4I_I2S_FIFO_RX_REG		0x10
> =20
> @@ -105,6 +108,9 @@
>  #define SUN8I_I2S_FMT0_BCLK_POLARITY_INVERTED		(1 << 7)
>  #define SUN8I_I2S_FMT0_BCLK_POLARITY_NORMAL		(0 << 7)
> =20
> +#define SUN8I_I2S_FMT1_REG_SEXT_MASK		GENMASK(5,4)
> +#define SUN8I_I2S_FMT1_REG_SEXT(sext)			((sext) << 4)
> +
>  #define SUN8I_I2S_INT_STA_REG		0x0c
>  #define SUN8I_I2S_FIFO_TX_REG		0x20
> =20
> @@ -663,6 +669,12 @@ static int sun4i_i2s_set_soc_fmt(const struct sun4i_=
i2s *i2s,
>  	}
>  	regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
>  			   SUN4I_I2S_CTRL_MODE_MASK, val);
> +
> +	/* Set sign extension to pad out LSB with 0 */
> +	regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT1_REG,
> +			   SUN4I_I2S_FMT1_REG_SEXT_MASK,
> +			   SUN4I_I2S_FMT1_REG_SEXT(0));
> +
>  	return 0;
>  }
> =20
> @@ -765,6 +777,11 @@ static int sun8i_i2s_set_soc_fmt(const struct sun4i_=
i2s *i2s,
>  			   SUN8I_I2S_CTRL_BCLK_OUT | SUN8I_I2S_CTRL_LRCK_OUT,
>  			   val);
> =20
> +	/* Set sign extension to pad out LSB with 0 */
> +	regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT1_REG,
> +			   SUN8I_I2S_FMT1_REG_SEXT_MASK,
> +			   SUN8I_I2S_FMT1_REG_SEXT(0));
> +
>  	return 0;
>  }
> =20
> @@ -867,6 +884,11 @@ static int sun50i_i2s_set_soc_fmt(const struct sun4i=
_i2s *i2s,
>  			   SUN8I_I2S_CTRL_BCLK_OUT | SUN8I_I2S_CTRL_LRCK_OUT,
>  			   val);
> =20
> +	/* Set sign extension to pad out LSB with 0 */
> +	regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT1_REG,
> +			   SUN8I_I2S_FMT1_REG_SEXT_MASK,
> +			   SUN8I_I2S_FMT1_REG_SEXT(0));
> +

If this is an issue only on the A10 / A20, why are you setting it up on the
other generations too?

Maxime

--rrhtfkb63mjeypmw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2ZRAAKCRDj7w1vZxhR
xd2KAQDAdGFkpNxxWDH2yNhAsQfitBlOB1UiMnXX7HRIiSxsGAEAikvadyrGtuaM
MfXY74N8vHWHTDr8hd6svx6Kpc/dNQg=
=7wY5
-----END PGP SIGNATURE-----

--rrhtfkb63mjeypmw--


--===============4353679341650805197==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4353679341650805197==--

