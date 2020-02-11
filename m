Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B4A158A45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 08:20:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZCkDYrwdzyk5cZPESz1+Kl7qcrWXltt9IP0cARjp71Q=; b=ZthqrJ5jXtEA4avbmcEarMp9i
	fS6eaUOgkHv32qydf0Gkqbmxn2yxm+1CdCZRj6kWo9bAG/wR0SOoM5Z0wCh0pIaPgh2yKvCXXPFH5
	F575e05tcEj90xRr0ZZIJf2SjA6B9S+nj20ZlXa2Cizfrop42aVuMub/ldSdpEI2XaTlt4gsNtgrE
	l06CfRGukycotEgAwpAm61VXhplyKGLk1jjmEMHxpVI0SYXOj6tdca43y2h1vvs6nMX531CaXcRXh
	vFVcbiz1Yucb+6m4Xaxe5Rse1+x6rjTkNkdFy8bnvFG7w5xmakF1VC9o4PgCiSW2G1kKwyLo6e8rS
	ldaYHdXQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1PqH-0007HV-9T; Tue, 11 Feb 2020 07:20:21 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1PqA-0007Gr-Gv
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 07:20:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 4EC2221C0F;
 Tue, 11 Feb 2020 02:20:13 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 11 Feb 2020 02:20:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=BU30pT44LeYjqGun9tCYcCsIKDQ
 26EjzbD9vWsO8Hk4=; b=cT+VkzidJxvWZvNBOZfS46qlXD1n3kMzoPEXeBcZbiv
 MYLbPwQf/KfbWBtE1al+zm8+lDYvS+RTCyMnDIi64aYWRa6p7NSGE84sCkZbBqVf
 OIEk0sf2nzi1p0SnYCwJQf/GCLFUtCwDObtpifn9tp/yAaNLSFze6Dk8WeNEM61U
 puDtmDNKM5OB0Oc/PWvwm2OPQj6+aNNiEwTnfRGs62uLN6YJaj7BEB0ejeeQx1Ai
 VLv4ZrOxmzFz4IBEM5JoPh+AARCPVPAFGHfN+KzSpY76P4gST2p5BF5iwT6EWMoo
 yJEURhKfule5UoOH+d94aJg7Q5TQL6sYyGHTgL+7SIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=BU30pT
 44LeYjqGun9tCYcCsIKDQ26EjzbD9vWsO8Hk4=; b=4NgOeEleWgaGYA6AO3YAqB
 E/hjIUhUCGadDurB7nW0dgh4psqpdjQuOdb0pA2Z0r2lB3J3e6NgIOFE+hnnXPEB
 T/h/JPQzHhYTvr/LT2bZZweabe4jMi/cUYAzOJzRJOeSCcGQ1flP6+KRL7+36hyz
 8Wl22kqlTWNXI1P5NqCIv880/1/Ux19/GHYMyIdnxgedkBj66Deg0xpWHlDCUE71
 cjY1aTJuBYGsfsloXdCnLo2h9AkHNyG42jYefJNSxiif19G3aXO9xLXqjHELGmLm
 UI7N4JoTaVGm2kbhUKz6cEWE+BBuYd1i/wq8eaqaljGrQA1qGZaYQU1WEVjxuzFQ
 ==
X-ME-Sender: <xms:plVCXl4cif1LxJSmHn5w0D9a9vTDkgVDkIDeTNriHXFzKWKv5iBHWQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedvgddutdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:plVCXiWs7OhCqSHs03thXNB0Y-oKakEpoJbxesyoZZBnhb-ExMCUiQ>
 <xmx:plVCXtiOtSvg6tpcrMcghYwln7R9ucHPmaX9grCCynKaKo3ODtWkiw>
 <xmx:plVCXidVbu0QEnlAGDEh0t3m9yK2x2juH03UsyCO-v-u_u3d55e6zw>
 <xmx:rVVCXjQU0ZA8Tp0TqLyLUX6R1WYxeGYBGkOrwG5d5CaYeb9fY_UTmQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2D4453280060;
 Tue, 11 Feb 2020 02:20:06 -0500 (EST)
Date: Tue, 11 Feb 2020 08:20:04 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andrey Lebedev <andrey.lebedev@gmail.com>
Subject: Re: [PATCH 1/1] Support LVDS output on Allwinner A20
Message-ID: <20200211072004.46tbqixn5ftilxae@gilmour.lan>
References: <20200210195633.GA21832@kedthinkpad>
MIME-Version: 1.0
In-Reply-To: <20200210195633.GA21832@kedthinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_232015_224067_2EFC9D43 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6688492786362691340=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6688492786362691340==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7u7alefvy7ml5d3s"
Content-Disposition: inline


--7u7alefvy7ml5d3s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Feb 10, 2020 at 09:56:33PM +0200, Andrey Lebedev wrote:
> A20 SoC (found in Cubieboard 2 among others) requires different LVDS set
> up procedure than A33. Timing controller (tcon) driver only implements
> sun6i-style procedure, that doesn't work on A20 (sun7i).

You're missing your Signed-off-by here.

> The support for such procedure is ported from u-boot and follows u-boot
> naming convention: SUN6I* for sun6i-style procedure, and SUN4I for other
> (which happens to be compatible with A20).

A commit log is mostly about why you're doing a change, this part can
be left out.

> ---
>  drivers/gpu/drm/sun4i/sun4i_tcon.c | 91 ++++++++++++++++++++----------
>  drivers/gpu/drm/sun4i/sun4i_tcon.h | 12 ++++
>  2 files changed, 73 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> index c81cdce6ed55..78896e907ca9 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
> @@ -114,46 +114,74 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
>  	}
>  }
>
> +static void sun4i_tcon_lvds_sun6i_enable(struct sun4i_tcon *tcon,
> +					 const struct drm_encoder *encoder) {

This doesn't match the kernel coding style, make sure to run checkpatch.

Also, using something like sun6i_tcon_setup_lvds_phy would be more fit
to what this function is doing.

> +	u8 val;
> +	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +		     SUN6I_TCON0_LVDS_ANA0_C(2) |
> +		     SUN6I_TCON0_LVDS_ANA0_V(3) |
> +		     SUN6I_TCON0_LVDS_ANA0_PD(2) |
> +		     SUN6I_TCON0_LVDS_ANA0_EN_LDO);
> +	udelay(2);
> +
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_MB,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_MB);
> +	udelay(2);
> +
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
> +			   SUN6I_TCON0_LVDS_ANA0_EN_DRVC);
> +
> +	if (sun4i_tcon_get_pixel_depth(encoder) == 18)
> +		val = 7;
> +	else
> +		val = 0xf;
> +
> +	regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
> +			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
> +
> +}
> +
> +static void sun4i_tcon_lvds_sun4i_enable(struct sun4i_tcon *tcon) {

And sun4i_tcon_setup_lvds_phy.

> +	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> +		     SUN4I_TCON0_LVDS_ANA0_CK_EN |
> +		     SUN4I_TCON0_LVDS_ANA0_REG_V |
> +		     SUN4I_TCON0_LVDS_ANA0_REG_C |
> +		     SUN4I_TCON0_LVDS_ANA0_EN_MB |
> +		     SUN4I_TCON0_LVDS_ANA0_PD |
> +		     SUN4I_TCON0_LVDS_ANA0_DCHS);
> +
> +	udelay(2); /* delay at least 1200 ns */
> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
> +			   SUN4I_TCON0_LVDS_ANA1_INIT,
> +			   SUN4I_TCON0_LVDS_ANA1_INIT);
> +	udelay(1); /* delay at least 1200 ns */

The delay and your comment don't match.

> +	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
> +			   SUN4I_TCON0_LVDS_ANA1_UPDATE,
> +			   SUN4I_TCON0_LVDS_ANA1_UPDATE);

You refer to U-Boot in your commit log, but the sequence is not quite
the same, why did you change it?

> +}
> +
> +
>  static void sun4i_tcon_lvds_set_status(struct sun4i_tcon *tcon,
>  				       const struct drm_encoder *encoder,
>  				       bool enabled)
>  {
>  	if (enabled) {
> -		u8 val;
> -
> +		// Enable LVDS interface

There's no need for that comment, it's simple enough :)

>  		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
>  				   SUN4I_TCON0_LVDS_IF_EN,
>  				   SUN4I_TCON0_LVDS_IF_EN);
>
> -		/*
> -		 * As their name suggest, these values only apply to the A31
> -		 * and later SoCs. We'll have to rework this when merging
> -		 * support for the older SoCs.
> -		 */
> -		regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> -			     SUN6I_TCON0_LVDS_ANA0_C(2) |
> -			     SUN6I_TCON0_LVDS_ANA0_V(3) |
> -			     SUN6I_TCON0_LVDS_ANA0_PD(2) |
> -			     SUN6I_TCON0_LVDS_ANA0_EN_LDO);
> -		udelay(2);
> -
> -		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> -				   SUN6I_TCON0_LVDS_ANA0_EN_MB,
> -				   SUN6I_TCON0_LVDS_ANA0_EN_MB);
> -		udelay(2);
> -
> -		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> -				   SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
> -				   SUN6I_TCON0_LVDS_ANA0_EN_DRVC);
> -
> -		if (sun4i_tcon_get_pixel_depth(encoder) == 18)
> -			val = 7;
> -		else
> -			val = 0xf;
> +		// Perform SoC-specific setup procedure

Ditto.

> +		if (tcon->quirks->sun6i_lvds_init) {
> +			sun4i_tcon_lvds_sun6i_enable(tcon, encoder);
> +		}
> +		else {
> +			sun4i_tcon_lvds_sun4i_enable(tcon);
> +		}
>
> -		regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
> -				  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
> -				  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
>  	} else {
>  		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
>  				   SUN4I_TCON0_LVDS_IF_EN, 0);
> @@ -1454,6 +1482,7 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
>  };
>
>  static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
> +	.supports_lvds		= true,
>  	.has_channel_0		= true,
>  	.has_channel_1		= true,
>  	.dclk_min_div		= 4,
> @@ -1464,11 +1493,13 @@ static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
>  static const struct sun4i_tcon_quirks sun8i_a33_quirks = {
>  	.has_channel_0		= true,
>  	.has_lvds_alt		= true,
> +	.sun6i_lvds_init	= true,

Using a function pointer here (like we're doing with set_mux) would be
more future proof.

>  	.dclk_min_div		= 1,
>  };
>
>  static const struct sun4i_tcon_quirks sun8i_a83t_lcd_quirks = {
>  	.supports_lvds		= true,
> +	.sun6i_lvds_init	= true,
>  	.has_channel_0		= true,
>  	.dclk_min_div		= 1,
>  };
> diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> index a62ec826ae71..973901c1bee5 100644
> --- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
> +++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
> @@ -193,6 +193,13 @@
>  #define SUN4I_TCON_MUX_CTRL_REG			0x200
>
>  #define SUN4I_TCON0_LVDS_ANA0_REG		0x220
> +#define SUN4I_TCON0_LVDS_ANA0_DCHS			BIT(16)
> +#define SUN4I_TCON0_LVDS_ANA0_PD			BIT(20) | BIT(21)
> +#define SUN4I_TCON0_LVDS_ANA0_EN_MB			BIT(22)
> +#define SUN4I_TCON0_LVDS_ANA0_REG_C			BIT(24) | BIT(25)
> +#define SUN4I_TCON0_LVDS_ANA0_REG_V			BIT(26) | BIT(27)
> +#define SUN4I_TCON0_LVDS_ANA0_CK_EN			BIT(29) | BIT(28)
> +
>  #define SUN6I_TCON0_LVDS_ANA0_EN_MB			BIT(31)
>  #define SUN6I_TCON0_LVDS_ANA0_EN_LDO			BIT(30)
>  #define SUN6I_TCON0_LVDS_ANA0_EN_DRVC			BIT(24)
> @@ -201,6 +208,10 @@
>  #define SUN6I_TCON0_LVDS_ANA0_V(x)			(((x) & 3) << 8)
>  #define SUN6I_TCON0_LVDS_ANA0_PD(x)			(((x) & 3) << 4)
>
> +#define SUN4I_TCON0_LVDS_ANA1_REG		0x224
> +#define SUN4I_TCON0_LVDS_ANA1_INIT			(0x1f << 26 | 0x1f << 10)
> +#define SUN4I_TCON0_LVDS_ANA1_UPDATE			(0x1f << 16 | 0x1f << 00)

Having proper defines for those fields would be great too.

Side question, this will need some DT changes too, right?

Maxime

--7u7alefvy7ml5d3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkJVpAAKCRDj7w1vZxhR
xbVKAQCeNvcaswq45QY1IeN4a1lVn0bCHRnVx5A6B6hs3R2IHQD5ASxx6F8VvA11
Rk3zeIkh5pwhQnYBkw+TM0mmHeC7KQ4=
=md1S
-----END PGP SIGNATURE-----

--7u7alefvy7ml5d3s--


--===============6688492786362691340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6688492786362691340==--

