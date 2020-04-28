Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C8D1BB82A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FB5LrPljcprviFVLI3S6n2B7w66jukYx33q3ProP318=; b=irvDpOG79AiErMv/HVuSopCuG
	O6kxRxNOM1UoMusJOFNBoVAN7A+Ysy0Zjp2F4LwyENs4j+f05EZ9WtHHf68ttPUT6trjyhhmLHmXN
	t6Fd7kGGgHDSBpkSqSEjJDWVXL3HDfGEQHRIv5A25QyZLnT+UoNJ0yqS3nqUXVy+cKoM4iDoKA376
	VQDhgoXBCABv85Kw13HXT7hKKw0njiBWcqI23QYtLBcTXH3XedXIwnq/GKWqVT7TJtiZa1X5hW8y8
	WWVx5MkATJS0zIL2TVBq6SyVhy14nD6lT8rA1GC8ryWhWg5gjDzdmQMGmKNGhbJOEgxEDvobUCJBI
	kziubFYiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTL47-0000LR-3y; Tue, 28 Apr 2020 07:54:03 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTL3x-0000Kt-35
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:53:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 80A095C022F;
 Tue, 28 Apr 2020 03:53:48 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 03:53:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=ZPB1hC2KG5pqxR0AOhhwZaeUt+5
 oFtswYv6gIhtQcvk=; b=ZBnCEL8go8qe1oAOd9Zt9BOKRiQfydtlzVup/5/KW82
 ChAqOh+rkdwzt91dFzPtFer/+OsQeLrO4owOWYhweqR15jwy4/DcAfycrKvMKZKV
 717aiWU6D4G7/xo56yNih/yjTqHzd8FMFMNEH7VOKIug5mcg4wgu50raA94utCj1
 hcW7OljeCPQcSVyynTj4s72aeiQT9cfOQFiJp0WbBAAFsDBzJQq54RYFuvr317Fq
 a0PaiRQl8H9BPK090IuQDXW/iy5/Aol0T6jJOQ25NNVFVkYe7YBa0XzzDfHBpI+H
 wtsbsC1mvztAPK8IT/Bj4cY0Ez+JIE+bJBN2QsgDgmQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZPB1hC
 2KG5pqxR0AOhhwZaeUt+5oFtswYv6gIhtQcvk=; b=2uEqZ6z/t9bAOFZM/cRHRw
 Pvz05NUDRFepI166pCa5B6bFjUQSiy/Kiu7hA7hDHUEYGvXSjcWN1H3Kvwf8LXhA
 luKFaZb21J1bDo/RrODGyli+2V9I2UypsPC90xqH0jRtbXL9C4mdWjsdTuVKAK8O
 MqATCTOKBckD1yXuwZvrNMbgTCeSGTyI5ui3UvyWfLC+n0Mf8IX/XijvJFU2IIsu
 XOk3sCiK8URzoO5r3NILbnKSdQ52PufAVTJSlZNKdcafnjRRlAvIPt/8Y1mrQxNL
 9G0vOuSvRX8absxHQrEoTaGWTW3psf0K3iDYqmcRd0lMHh+LEXqoZJCkoK67XPXA
 ==
X-ME-Sender: <xms:C-GnXrtFziZhvCvgN2bZrBk2hOgEqQnGuTw5-5L1DhLv7CX0k5CkxA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedtgdduvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:C-GnXoMcYGXFoTMHJi-tlyoWneC9bs6drcru-P-PIQe-6WvcZPdpNQ>
 <xmx:C-GnXnVVfGaxHXpZg8Ex9yWuf0sIv7oCJHk9wHNcM839UwSQ4jUjJA>
 <xmx:C-GnXrW2IZIcL-80XmCsnn7d1Xno45tNUuZX95VOrOjq7754Sb-p4w>
 <xmx:DOGnXl1ZpTtwuB0YBdGniaZR-3yXiTpMWuGBz8u6-DWDeA85GprxRQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id AB64C3065E9C;
 Tue, 28 Apr 2020 03:53:47 -0400 (EDT)
Date: Tue, 28 Apr 2020 09:53:46 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Peter Vasil <peter.vasil@gmail.com>
Subject: Re: [PATCH] pwm: sun4i: direct clock output support for Allwinner A64
Message-ID: <20200428075346.xjzmmvios64emg5z@gilmour.lan>
References: <20200426101122.98318-1-peter.vasil@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200426101122.98318-1-peter.vasil@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_005353_269905_199A7C24 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4047640111961819312=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4047640111961819312==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="sjnuyyybmloorp7b"
Content-Disposition: inline


--sjnuyyybmloorp7b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Sun, Apr 26, 2020 at 12:11:22PM +0200, Peter Vasil wrote:
> Allwinner A64 is capable of a direct clock output on PWM (see A64
> User Manual chapter 3.10). Add support for this in the sun4i PWM
> driver and adjust compatibility in sun50i-a64 base device tree.
>=20
> Signed-off-by: Peter Vasil <peter.vasil@gmail.com>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 6 ++----
>  drivers/pwm/pwm-sun4i.c                       | 9 +++++++++
>  2 files changed, 11 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/b=
oot/dts/allwinner/sun50i-a64.dtsi
> index 31143fe64d91..c334fd106854 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
> @@ -1069,8 +1069,7 @@ gic: interrupt-controller@1c81000 {
>  		};
> =20
>  		pwm: pwm@1c21400 {
> -			compatible =3D "allwinner,sun50i-a64-pwm",
> -				     "allwinner,sun5i-a13-pwm";
> +			compatible =3D "allwinner,sun50i-a64-pwm";
>  			reg =3D <0x01c21400 0x400>;
>  			clocks =3D <&osc24M>;
>  			pinctrl-names =3D "default";
> @@ -1252,8 +1251,7 @@ r_ir: ir@1f02000 {
>  		};
> =20
>  		r_pwm: pwm@1f03800 {
> -			compatible =3D "allwinner,sun50i-a64-pwm",
> -				     "allwinner,sun5i-a13-pwm";
> +			compatible =3D "allwinner,sun50i-a64-pwm";

There's no need to remove that compatible, it's actually working as intende=
d..

>  			reg =3D <0x01f03800 0x400>;
>  			clocks =3D <&osc24M>;
>  			pinctrl-names =3D "default";
> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 5c677c563349..18fbbe3277d0 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -352,6 +352,12 @@ static const struct sun4i_pwm_data sun4i_pwm_single_=
bypass =3D {
>  	.npwm =3D 1,
>  };
> =20
> +static const struct sun4i_pwm_data sun50i_a64_pwm_data =3D {
> +	.has_prescaler_bypass =3D true,
> +	.has_direct_mod_clk_output =3D true,
> +	.npwm =3D 1,
> +};
> +
>  static const struct sun4i_pwm_data sun50i_h6_pwm_data =3D {
>  	.has_prescaler_bypass =3D true,
>  	.has_direct_mod_clk_output =3D true,
> @@ -374,6 +380,9 @@ static const struct of_device_id sun4i_pwm_dt_ids[] =
=3D {
>  	}, {
>  		.compatible =3D "allwinner,sun8i-h3-pwm",
>  		.data =3D &sun4i_pwm_single_bypass,
> +	}, {
> +		.compatible =3D "allwinner,sun50i-a64-pwm",
> +		.data =3D &sun50i_a64_pwm_data,

Ie, if the OS only has support for the A13, then it will use it as an A13, =
and
if it has support for the A64 variant, then it can use some more advanced
features.

Maxime

--sjnuyyybmloorp7b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqfhCgAKCRDj7w1vZxhR
xWYNAP0XwagPq8Ucjl/id9ax9GqE/UVZAeVIhpIf1azXshxpKAEAjhQ3ptJzGoRq
WPVqQ9VSEdoRLsCRzcOfVK2X5rKvMQQ=
=sF/u
-----END PGP SIGNATURE-----

--sjnuyyybmloorp7b--


--===============4047640111961819312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4047640111961819312==--

