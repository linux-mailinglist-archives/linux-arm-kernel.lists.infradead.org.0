Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AADB11FCF6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YH6I34JHRoEIITv14XMtQQKj4sLdoiPACpkjktcCphY=; b=X4fr0x4YGlfCHVujeriQS6ypL
	/2jzXPcwIUoluCCzjeU51XSK0+chFp+/io8l/sK5WE9xT4pmJ/M4q7DxJr9632PyuTNosRCDrY+SP
	IVBeko1zVekDxGkKYtQ8rflqproR2VDG4v5xIAIlcfE+nbz+eMZ8rRjyF0niXqWSrRTxz5DtJPND9
	PikXjR+ni4mDcV3Yi04Cd4HqLyjI9UywtJlhyzZoRgB32fsgDE+IEggnt5riu9PPcwfUJ/+SuRvx1
	y6NvoE86nGwn/ZRP7oRTH2wtFYwaBG/exdtrVF1WovsGLy3bFxaJassRYwXK5FS5LpDQMrBCTdcBp
	ce9iAto+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYxx-000603-JV; Wed, 17 Jun 2020 14:23:01 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYxp-0005zV-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:22:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id q25so2215883wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 07:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YT6y0QdscTZc3QJ49ERR5+BK/AVLLjbnp4M8eduSxD4=;
 b=o1Cutz1/u70GlYT3gs8+yM9DcYXX+fY0XtB1MEFnUdVql3nw6KewxdQDZWXvHHfzLF
 H9XQCpg5YakISdw+5A3h1CE5AfhVdO6RzNkAq7Oi/gu+688a9Bd2WjwBsiJfiFnnazxW
 zDmtNWBUxAUpeWMVHMMsspo0/+K92DbBMP4Z4r4Ng4Up5mHaq4YG1Imn9mpPe+YZ6ajK
 UC1Md1U4AxtCC56YpIJrnM20+eywvkFQxbZvJplBgoL30uKqPC76N8Sd0Vm9V6TVM642
 MIKBTKGRGmVn34QgL/3hLpPmngAVxqoYGGrXjs5zZ18vKbGH+6noa7ADSbmAqfbuvJAu
 bJvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YT6y0QdscTZc3QJ49ERR5+BK/AVLLjbnp4M8eduSxD4=;
 b=ePoEdpLawE+hWztW3wiKSqu+OIhhSMIQG+07IcgTrJzkpOReeLyAY7CQqs6gM8lY67
 pLVBua6zb7tOZuDcG+JzfZGAyTWM3SZsE0UEZZexNgLeWgptX4dY2RXZAzeGu6XIQ4tO
 fx33OUYzbH0dotMyQu1wi1vdvaEDtvSU+sT0tgKvFcclqjMUSEGsgxi9WgYoOgeqm3Gh
 bSEFwpqpzUO1dcV34ByF3FSwJgXGdfMA1wXBID2hlH7pM/1fPXTEf5p22K8MxNiO/Sbi
 0WZD9Kzd/dGNVyNZMY6m+tBJL+2A8ttLKOE60Zsbik/iPKToA/xqXF6vrTvPLZg+qSNb
 G/xA==
X-Gm-Message-State: AOAM531/98yQ9yq6NCTgxZzqb5DPzhW1SP2+IAafHdVkrmlzQXzJ8Kek
 rDoABiLn/8XkDXFRDJmoa2w=
X-Google-Smtp-Source: ABdhPJzvtUXyWAj8ztokFJ6AXmMvi8LozKN6OM/G1mGhYmHjB0ER2CpUDZsb81YDGvhcG75tdhyPfg==
X-Received: by 2002:a7b:ce15:: with SMTP id m21mr8927935wmc.117.1592403770312; 
 Wed, 17 Jun 2020 07:22:50 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id u74sm586890wmu.31.2020.06.17.07.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 07:22:49 -0700 (PDT)
Date: Wed, 17 Jun 2020 16:22:48 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH 03/73] ARM: tegra: Remove simple regulators bus
Message-ID: <20200617142248.GE3536291@ulmo>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
 <20200616135238.3001888-4-thierry.reding@gmail.com>
 <cf8eb9d4-70d5-400f-ecc8-2139c25563a9@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <cf8eb9d4-70d5-400f-ecc8-2139c25563a9@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_072253_152506_E8525A15 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5744080030786874365=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5744080030786874365==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cPi+lWm09sJ+d57q"
Content-Disposition: inline


--cPi+lWm09sJ+d57q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2020 at 08:24:11PM +0100, Jon Hunter wrote:
>=20
>=20
> On 16/06/2020 14:51, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > The standard way to do this is to list out the regulators at the top
> > level. Adopt the standard way to fix validation.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  arch/arm/boot/dts/tegra114-dalmore.dts    | 129 +++++------
> >  arch/arm/boot/dts/tegra114-roth.dts       | 120 +++++-----
> >  arch/arm/boot/dts/tegra114-tn7.dts        |  65 +++---
> >  arch/arm/boot/dts/tegra124-jetson-tk1.dts | 238 +++++++++----------
> >  arch/arm/boot/dts/tegra124-nyan.dtsi      | 259 ++++++++++-----------
> >  arch/arm/boot/dts/tegra124-venice2.dts    | 265 ++++++++++------------
> >  arch/arm/boot/dts/tegra20-harmony.dts     | 121 +++++-----
> >  arch/arm/boot/dts/tegra20-medcom-wide.dts |  66 +++---
> >  arch/arm/boot/dts/tegra20-paz00.dts       |  38 ++--
> >  arch/arm/boot/dts/tegra20-plutux.dts      |  66 +++---
> >  arch/arm/boot/dts/tegra20-seaboard.dts    | 125 +++++-----
> >  arch/arm/boot/dts/tegra20-tamonten.dtsi   |  39 +---
> >  arch/arm/boot/dts/tegra20-tec.dts         |  66 +++---
> >  arch/arm/boot/dts/tegra20-trimslice.dts   |  85 +++----
> >  arch/arm/boot/dts/tegra20-ventana.dts     |  85 +++----
> >  arch/arm/boot/dts/tegra30-beaver.dts      | 193 ++++++++--------
> >  arch/arm/boot/dts/tegra30-cardhu-a02.dts  | 128 +++++------
> >  arch/arm/boot/dts/tegra30-cardhu-a04.dts  | 149 ++++++------
> >  arch/arm/boot/dts/tegra30-cardhu.dtsi     | 261 ++++++++++-----------
> >  19 files changed, 1130 insertions(+), 1368 deletions(-)
>=20
> ...
>=20
> > diff --git a/arch/arm/boot/dts/tegra124-venice2.dts b/arch/arm/boot/dts=
/tegra124-venice2.dts
> > index 6a7a31c831c5..effdb303c7f7 100644
> > --- a/arch/arm/boot/dts/tegra124-venice2.dts
> > +++ b/arch/arm/boot/dts/tegra124-venice2.dts
> > @@ -1077,164 +1077,145 @@ power {
> > =20
> >  	panel: panel {
> >  		compatible =3D "lg,lp129qe";
> > -
> > +		power-supply =3D <&vdd_3v3_panel>;
> >  		backlight =3D <&backlight>;
> >  		ddc-i2c-bus =3D <&dpaux>;
> >  	};
>=20
> Is this meant to be in this patch?
>=20
> > diff --git a/arch/arm/boot/dts/tegra20-tamonten.dtsi b/arch/arm/boot/dt=
s/tegra20-tamonten.dtsi
> > index 20137fc578b1..95e6bccdb4f6 100644
> > --- a/arch/arm/boot/dts/tegra20-tamonten.dtsi
> > +++ b/arch/arm/boot/dts/tegra20-tamonten.dtsi
> > @@ -495,40 +495,25 @@ usb-phy@c5008000 {
> >  		status =3D "okay";
> >  	};
> > =20
> > -	sdhci@c8000600 {
> > +	mmc@c8000600 {
> >  		cd-gpios =3D <&gpio TEGRA_GPIO(H, 2) GPIO_ACTIVE_LOW>;
> >  		wp-gpios =3D <&gpio TEGRA_GPIO(H, 3) GPIO_ACTIVE_HIGH>;
> >  		bus-width =3D <4>;
> >  		status =3D "okay";
> >  	};
> > =20
> > -	clocks {
> > -		compatible =3D "simple-bus";
> > -		#address-cells =3D <1>;
> > -		#size-cells =3D <0>;
> > -
> > -		clk32k_in: clock@0 {
> > -			compatible =3D "fixed-clock";
> > -			reg =3D <0>;
> > -			#clock-cells =3D <0>;
> > -			clock-frequency =3D <32768>;
> > -		};
> > +	clk32k_in: clock@0 {
> > +		compatible =3D "fixed-clock";
> > +		clock-frequency =3D <32768>;
> > +		#clock-cells =3D <0>;
> >  	};
>=20
> The above appears in to be in the wrong patch.
>=20
> > diff --git a/arch/arm/boot/dts/tegra30-cardhu-a02.dts b/arch/arm/boot/d=
ts/tegra30-cardhu-a02.dts
> > index a02ec5082287..4899e05a0d9c 100644
> > --- a/arch/arm/boot/dts/tegra30-cardhu-a02.dts
> > +++ b/arch/arm/boot/dts/tegra30-cardhu-a02.dts
> > @@ -9,87 +9,75 @@ / {
> >  	model =3D "NVIDIA Tegra30 Cardhu A02 evaluation board";
> >  	compatible =3D "nvidia,cardhu-a02", "nvidia,cardhu", "nvidia,tegra30";
> > =20
> > -	sdhci@78000400 {
> > +	mmc@78000400 {
> >  		status =3D "okay";
> >  		power-gpios =3D <&gpio TEGRA_GPIO(D, 4) GPIO_ACTIVE_HIGH>;
> >  		bus-width =3D <4>;
> >  		keep-power-in-suspend;
> >  	};
>=20
> And here.
>=20
> > diff --git a/arch/arm/boot/dts/tegra30-cardhu-a04.dts b/arch/arm/boot/d=
ts/tegra30-cardhu-a04.dts
> > index 9234988624ec..c1c0ca628af1 100644
> > --- a/arch/arm/boot/dts/tegra30-cardhu-a04.dts
> > +++ b/arch/arm/boot/dts/tegra30-cardhu-a04.dts
> > @@ -11,99 +11,86 @@ / {
> >  	model =3D "NVIDIA Tegra30 Cardhu A04 (A05, A06, A07) evaluation board=
";
> >  	compatible =3D "nvidia,cardhu-a04", "nvidia,cardhu", "nvidia,tegra30";
> > =20
> > -	sdhci@78000400 {
> > +	mmc@78000400 {
> >  		status =3D "okay";
> >  		power-gpios =3D <&gpio TEGRA_GPIO(D, 3) GPIO_ACTIVE_HIGH>;
> >  		bus-width =3D <4>;
> >  		keep-power-in-suspend;
> >  	};
>=20
> And here.

Ugh... indeed. To be honest, I'm surprised there aren't more of these
issues given the amount of rebasing that I needed to get this whole set
sorted out. I'll do some more rebasing to get these into the right
patches.

Thanks,
Thierry

--cPi+lWm09sJ+d57q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7qJzgACgkQ3SOs138+
s6GeIQ/+J2lsBCzJxTfh2vuAnI5VXFYbSlZfzXLgO3Oc4vC7n34qPpCllusLHkQU
iwtJ3JOAC2yVLYdxuohuBY5lo7QW80BkWygEV3AFB/5RlmiV4QR9g2jbHJTFda4H
OurYypb15TO8Za76IoFJBuEVk/48YG3EKzOGA9A4HrpRjgMeQLPgyQPWgCxihiw5
iNQ7BlqNMCoBXjc9SKvOoPNn0My5OKuT0Qy/wqWq5m8J2zUxkbG0kgHnPVixaY1N
C65dsDIz0mdi+hRD+aopCh+Xxx2o3bCwXAbD/IcRI3r75hn1LyZMEYnSAacZF0Le
JXLaMLc8wyBJG5y1oBFASG5BwDM3rDy3Zr2D0f47zNh6T8YTK5wQIZV15rs6J4a0
Cg4WlbaVM0fnnbLXJ0G7Z+IjlUNtdEz5tmP5mrjThcbRGN7hijGXHs3XXyco8W1Y
jBvgm78+Td3YVx8i8Yjdl9KgYlTi61FpVixfuIl2MhmE1x1tnNyNRf+916exFeS5
ffEXw6kKJedkpmwVkwErrMxkOOKpNK0CWfA2EnTb81rc7eD06n9ERL/DUTZXIRxk
7V3L6VV04sMdVLNNVe5G3abGDc0m6TAm8ihsOMPe1aiu5wyizPRskKkJaOmY2ihD
AVa/W16njKpgjpwicQ+NRzpR6Dkl/QPtMOfGhL3L/nsubsdbkMA=
=QN5s
-----END PGP SIGNATURE-----

--cPi+lWm09sJ+d57q--


--===============5744080030786874365==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5744080030786874365==--

