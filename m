Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74001FCF66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 16:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LQFrdrOL5dC6/SOGTG1r6YEjQUd+J/vOwZwqmOaLsgM=; b=IA+QCRZIjj0Y+hQczCjXYN92H
	2g9VRyx2HroAR6guggMYCkVDpbecr4bBy8TTP6dtlufef4Yih7LNNEhzkOftkM2xYVh48cSHDoeTy
	U2Gv9WjEYsiXVp9PXgfYfGBgz/PuRCe4Cx7n5xKv3cTtzPlxG7WO3YiWwtv+Bme3rUaK6llZGHdgc
	v4v0HvO+UbqqpIxTPVbR2U0lz2wFAcV83MzLx7ZfDhrgUPPa9qv54JPOk/UQclQX52p7h46ir+Xow
	X1zsGGOie5HSLaj8hf33z3xWbaZICtgBB1K8oSg3ArpzgG7iL/X2Api1q72YAo+sUC8woijxqyozb
	NENX9jTLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlYwJ-0005Tv-3R; Wed, 17 Jun 2020 14:21:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlYwA-0005T7-PL
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 14:21:12 +0000
Received: by mail-wr1-x443.google.com with SMTP id a6so577719wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 07:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wnkF0qAd0m6lU0nAw6xOw+RvpdtRu+AUHGX38SZX7AU=;
 b=EcAqQG8Z9FtoT4kcyTuD+2yqmQD7Je8v3O2rOBZmh4yDyJYStlLPTLfJs585qxCniO
 A9dSN5fRFKV41jzll9NMn9KYoqURUTem0OjeIJ2s5AildJ9euNly49VGd1MbGZHcOiVt
 mwrxo25n3RPAecyVac/5IAhzFmqrXEdg67nKT2iLDu9Y4CCriLet9gLb7I0s7hyefP3+
 87Ip69rznoGZXj9CdzZzIyZ1NwV+7F2vqx0FpTXW+WX+l1+Dz/vYP5hMKq3Owz9M1NPm
 CcGKoXttH33WiW77WEw6mkkB0clMNQlJRquKlVdl13R/UiowfPFWTpZkXPG6vEy5WQ47
 H5+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wnkF0qAd0m6lU0nAw6xOw+RvpdtRu+AUHGX38SZX7AU=;
 b=kTog+3bMjM7Hk8yBeKiG7FLnI+Rsnnd9nK0Jf0/cKBRSheJeCd+kVu0i02JUpEKyi2
 O2bYWB0IhEHFguc43gWGkr6P7hcirYouxWoHER7N8nBUS2f/E5CmhXLOBeufZgJyYe5m
 0o1cIhOJDOrt5wELyWerkj1CqtuwQMQB3dRb9hx1qnX9bL94+M0qQiE3hN60WFtKE+7n
 btA1Y8cjuZl050OZ9z+deLdJeG34EtuO+9+IzQfwicjI9GLdjAJRtwl8AHxX0R/+/SHo
 Eqdx9gS5nR+GVr5vhKta81udj8wbU3Tu0bTeIU96KfiBrNnxvr4mpmHo0+1c5o0SW4Ur
 aI5g==
X-Gm-Message-State: AOAM530Po831zWYcap4FeZhR1RvfLdAGT7/m2kK6/auMIVeVbOtKU2hD
 kNn/xgZ9LaphZniinRZiKc4=
X-Google-Smtp-Source: ABdhPJw7ZsUd1dV8adTs5lqVaiySNQwkutQ7QFw6eBubQEc4eriuo/jkNZZXjvWUOwhTI1iSyhYDqA==
X-Received: by 2002:a5d:4d89:: with SMTP id b9mr9367838wru.210.1592403669213; 
 Wed, 17 Jun 2020 07:21:09 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id k64sm584323wmf.34.2020.06.17.07.21.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 07:21:06 -0700 (PDT)
Date: Wed, 17 Jun 2020 16:21:05 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH 02/73] ARM: tegra: Remove simple clocks bus
Message-ID: <20200617142105.GD3536291@ulmo>
References: <20200616135238.3001888-1-thierry.reding@gmail.com>
 <20200616135238.3001888-3-thierry.reding@gmail.com>
 <74f8be81-216b-b69b-4517-c90d5f7d578a@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <74f8be81-216b-b69b-4517-c90d5f7d578a@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_072110_840396_405B93CA 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Content-Type: multipart/mixed; boundary="===============8282294876537540115=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8282294876537540115==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NklN7DEeGtkPCoo3"
Content-Disposition: inline


--NklN7DEeGtkPCoo3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 16, 2020 at 08:06:56PM +0100, Jon Hunter wrote:
>=20
>=20
> On 16/06/2020 14:51, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > The standard way to do this is to list out the clocks at the top-level.
> > Adopt the standard way to fix validation.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  arch/arm/boot/dts/tegra114-dalmore.dts    | 15 ++++-----------
> >  arch/arm/boot/dts/tegra114-roth.dts       | 15 ++++-----------
> >  arch/arm/boot/dts/tegra114-tn7.dts        | 15 ++++-----------
> >  arch/arm/boot/dts/tegra124-jetson-tk1.dts | 15 ++++-----------
> >  arch/arm/boot/dts/tegra124-nyan.dtsi      | 15 ++++-----------
> >  arch/arm/boot/dts/tegra124-venice2.dts    | 15 ++++-----------
> >  arch/arm/boot/dts/tegra20-harmony.dts     | 15 ++++-----------
> >  arch/arm/boot/dts/tegra20-paz00.dts       | 15 ++++-----------
> >  arch/arm/boot/dts/tegra20-seaboard.dts    | 15 ++++-----------
> >  arch/arm/boot/dts/tegra20-trimslice.dts   | 19 ++++++-------------
> >  arch/arm/boot/dts/tegra20-ventana.dts     | 15 ++++-----------
> >  arch/arm/boot/dts/tegra30-beaver.dts      | 15 ++++-----------
> >  arch/arm/boot/dts/tegra30-cardhu.dtsi     | 15 ++++-----------
> >  13 files changed, 54 insertions(+), 145 deletions(-)
>=20
> ...
>=20
> > diff --git a/arch/arm/boot/dts/tegra20-trimslice.dts b/arch/arm/boot/dt=
s/tegra20-trimslice.dts
> > index 8debd3d3c20d..5b26482a55b7 100644
> > --- a/arch/arm/boot/dts/tegra20-trimslice.dts
> > +++ b/arch/arm/boot/dts/tegra20-trimslice.dts
> > @@ -366,30 +366,23 @@ usb-phy@c5008000 {
> >  		status =3D "okay";
> >  	};
> > =20
> > -	sdhci@c8000000 {
> > +	mmc@c8000000 {
> >  		status =3D "okay";
> >  		broken-cd;
> >  		bus-width =3D <4>;
> >  	};
> > =20
> > -	sdhci@c8000600 {
> > +	mmc@c8000600 {
> >  		status =3D "okay";
> >  		cd-gpios =3D <&gpio TEGRA_GPIO(P, 1) GPIO_ACTIVE_LOW>;
> >  		wp-gpios =3D <&gpio TEGRA_GPIO(P, 2) GPIO_ACTIVE_HIGH>;
> >  		bus-width =3D <4>;
> >  	};
>=20
> I think that the above belongs in patch 13/73.

Good catch!

Thierry

--NklN7DEeGtkPCoo3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7qJtEACgkQ3SOs138+
s6HcrxAAicsQoBWmck3fLH4YsCVXI4UjmKyIslIPaDhNvYpcReFd1VVFxJAD5JSJ
7M028pMWqTYgpFRbgLUKGiDSeWjyu3lD55fIGCOqkEPS1X6hMxMjt0uF2St4RJX6
blvW0Y7AgM8ScVyLGvTYiPU+ILofcRP7YKFAATLMfqeXuEPgx+eT0aPcayUnGxi0
1DEOsjWRmCx9NELuSDLPpIImApVPR8TMNeV0BwhuITZbRbqtBzP0UBi+P4P+M84I
sqJp94fa4wzFRjITjyPYUFxaNL/VeBz+aVVetvjN4bICANNm24vxGBsMZ/Y3+iXI
u0AMcJCGH5XXKuM1uV3NE5ear/oFzpUCoOz6DyzeuyK3NZpiDfRMZhSOtEL3EGFP
rqlWcldeqaN4pik0nUbOVIcXTUKqhW9jL1ulPJl4V9jQhQiKMcM+bRXz4BvwO4ur
bt3WxFqhJyru3eBxl6Cf4RkeKGVB417k4bXStYvBKbAJWHI1RIptE8ovK+tJ1Lxr
iFK4UqdXIUJRQdv4AHzRTIhcwcaJwjmfBshfoNvNL2W3YYP+9bDXOuEnpcADkWIc
kxZAF/SxU4DG6Lae0/uDEYAg/kSObYSQdydNoq/vrpV9DmhKjRN+0DmYNLkZfHVS
o9Mq9b4RWP+k6VznumN+an5Qd5fWN9GW+JLdl+2tO0Tw57zzxYk=
=ME3C
-----END PGP SIGNATURE-----

--NklN7DEeGtkPCoo3--


--===============8282294876537540115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8282294876537540115==--

