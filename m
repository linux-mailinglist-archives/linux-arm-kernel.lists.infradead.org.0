Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A2C145AFE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 18:42:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RpDg2ONl8021+VEMzCkN70WYNAdJQiRyH81SX8BlC6s=; b=cvnrYh6aeGb9jC76HhG752W/x
	j18S+3JL0dYOJ5ACm+KW0Ua2ayrvp2RXUneXECiQ247/MLM3q5pWp+47CdxZJ45FUssrzr3TWEY1K
	SGZXfYmWvIGUI19MT+5bPgX3M0diz2NpJE/r7EP7x5CNzEf0qm7PF9ncG02utn63AGoFSgkbzEUkm
	ppkcmBPAtX8ca9Pj04PGIuYExW96deEeYA91RP7Qk+Xkr+iIo2BMOSgjygF8J7lykl0fu6ApO3OKB
	WBIdCx53DbLs4xgE95l8ZromQpj67dzZklcGfZhVBEtzFXO3LJYb9SJDDGlWtnzNo324b7zatEjnm
	dYRip6Fjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuK1P-0001SO-NJ; Wed, 22 Jan 2020 17:42:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuK1F-0001S3-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 17:42:22 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C76924125;
 Wed, 22 Jan 2020 17:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579714940;
 bh=ZwK1GS5yK1MyB/aRUXx77+g9jMMXlUdwoNTp+7I4lYU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zVcgfL6eiwVI0Le6A/KPOCt79RTF0cN03WNDgsZYCmlGbhwhv5b1pCEdlOipyxjGE
 /8FjjTMoUP79g6eMxcItXsMa7GgKfh6UGuSHWEmsRNE/Jj8Xrw3vStTdXFTgWyqx2x
 dELl4mOFA0XMYrXyzkkCXF0mWhRTsbYh/fA1xMGk=
Date: Wed, 22 Jan 2020 18:42:18 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 1/3] arm64: dts: allwinner: h6: tanix-tx6: enable emmc
Message-ID: <20200122174218.g4aan24f2pihjkpw@gilmour.lan>
References: <20200115193441.172902-1-jernej.skrabec@siol.net>
 <20200117181427.hy7qsyxwomsl3v2q@gilmour.lan>
 <3332569.R56niFO833@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <3332569.R56niFO833@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_094221_266074_031D7EB1 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1739544493431220904=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1739544493431220904==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2y2zbwn5zkttwz5b"
Content-Disposition: inline


--2y2zbwn5zkttwz5b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jan 17, 2020 at 07:18:58PM +0100, Jernej =C5=A0krabec wrote:
> Dne petek, 17. januar 2020 ob 19:14:27 CET je Maxime Ripard napisal(a):
> > On Wed, Jan 15, 2020 at 08:34:41PM +0100, Jernej Skrabec wrote:
> > > Tanix TX6 has 32 GiB eMMC. Add a node for it.
> > >
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > > ---
> > >
> > >  .../dts/allwinner/sun50i-h6-tanix-tx6.dts     | 20 +++++++++++++++++=
++
> > >  1 file changed, 20 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> > > b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts index
> > > 83e6cb0e59ce..8cbf4e4a761e 100644
> > > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> > > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix-tx6.dts
> > > @@ -31,6 +31,13 @@ hdmi_con_in: endpoint {
> > >
> > >  		};
> > >
> > >  	};
> > >
> > > +	reg_vcc1v8: vcc1v8 {
> > > +		compatible =3D "regulator-fixed";
> > > +		regulator-name =3D "vcc1v8";
> > > +		regulator-min-microvolt =3D <1800000>;
> > > +		regulator-max-microvolt =3D <1800000>;
> > > +	};
> > > +
> > >
> > >  	reg_vcc3v3: vcc3v3 {
> > >
> > >  		compatible =3D "regulator-fixed";
> > >  		regulator-name =3D "vcc3v3";
> > >
> > > @@ -78,6 +85,15 @@ &mmc0 {
> > >
> > >  	status =3D "okay";
> > >
> > >  };
> > >
> > > +&mmc2 {
> > > +	vmmc-supply =3D <&reg_vcc3v3>;
> > > +	vqmmc-supply =3D <&reg_vcc1v8>;
> > > +	non-removable;
> > > +	cap-mmc-hw-reset;
> > > +	bus-width =3D <8>;
> > > +	status =3D "okay";
> > > +};
> > > +
> > >
> > >  &ohci0 {
> > >
> > >  	status =3D "okay";
> > >
> > >  };
> > >
> > > @@ -86,6 +102,10 @@ &ohci3 {
> > >
> > >  	status =3D "okay";
> > >
> > >  };
> > >
> > > +&pio {
> > > +	vcc-pc-supply =3D <&reg_vcc1v8>;
> > > +};
> > > +
> >
> > Can you list all of the regulators for the H6 while you're at it (in a
> > preliminary patch, ideally)?
>
> Not sure what you mean. This box has only fixed regulators. I deducted ab=
ove
> from the fact that port C is mostly dedicated to eMMC, so it has to use s=
ame
> regulator as vqmmc. Other than that, I don't know.

If you don't really know, then setting all of them to 3.3v makes the
most sense. It should be described anyway.

Maxime

--2y2zbwn5zkttwz5b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiiJegAKCRDj7w1vZxhR
xcAZAP4vv4yjYsoEsxEn+hYjAeStYl6dLzr0TziDbUtV7pwXYQD/Z1zx4f5U7HAb
Jnn7ma32yEkphTh/TgQGVeWHaRuDjQM=
=1iAL
-----END PGP SIGNATURE-----

--2y2zbwn5zkttwz5b--


--===============1739544493431220904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1739544493431220904==--

