Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FE41E83AC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2gCmaVE0EuCufz+suOTzTDEwLosrD3sG93Z6oa+2bc4=; b=EkizvFgRlUCiil50No5V4cOTI
	t6gKM9DQNf+sxCMqUKaiuibsBpejORasLT7qDHyHdq9LR+PVJdd06ZWHrUzziAvlPvnsuWFwyJMin
	Llm37ezKfiXluXMm7egVPIXjemXMbc6Gn3Z2RnHotnZsWOcU1MgmcwVtXXz0M7hUigoSadpbMXuId
	IrsfcNua+Rtgre7RS3B/fzP2jx31orBOHlFPF/WjcBO4njupZy92XUs/eHazChJHmsxsF89DVjFfa
	7z7eaSyNskgbXEHSIkhKY3REJ4mPILUOj1NFVDAcnVlb+0lEBLkPEV9kp+2qbA69Tin0lipx1tDf4
	0WoN0KEVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehsZ-0001Pd-Pl; Fri, 29 May 2020 16:29:07 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehsK-0001Oj-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 16:28:58 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 31A621C0388; Fri, 29 May 2020 18:28:51 +0200 (CEST)
Date: Fri, 29 May 2020 18:28:50 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH 1/2] arm64: dts: Add a device tree for the Librem5 phone
Message-ID: <20200529162850.GC3709@amd>
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
MIME-Version: 1.0
In-Reply-To: <20200514155737.12160-1-martin.kepplinger@puri.sm>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_092852_577771_6CFC71F6 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, mchehab@kernel.org, festevam@gmail.com, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4025085397784531895=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4025085397784531895==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="69pVuxX8awAiJ7fD"
Content-Disposition: inline


--69pVuxX8awAiJ7fD
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> From: "Angus Ainslie (Purism)" <angus@akkea.ca>
>=20
> Add a devicetree description for the Librem 5 phone. The early batches
> that have been sold are supported as well as the mass-produced device
> available later this year, see https://puri.sm/products/librem-5/
>=20
> This boots to a working console with working WWAN modem, wifi usdhc,
> IMU sensor device, proximity sensor, haptic motor, gpio keys, GNSS and LE=
Ds.
>=20
> Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
> Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>


> +		blue {
> +			label =3D "phone:blue:front";
> +			label =3D "phone:green:front";
> +			label =3D "phone:red:front";

Droid 4 uses "status-led:{red,green,blue}". Could this use same
naming?

> +			label =3D "lm3560:flash";
> +			label =3D "lm3560:torch";

This is one LED, right? I'm pretty sure we don't want lm3560 in the
name... "main-camera:flash" would be better. Even better would be
something that's already in use.

> +			label =3D "white:backlight_cluster";

Make this ":backlight", please. Again, we want something that's
already used.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--69pVuxX8awAiJ7fD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl7ROEIACgkQMOfwapXb+vI8+QCdF8wNC5jeYX5/Wh8OaSGtEnXx
/fIAn1pviKJxbywSaQ66KE3evYxXdC/i
=B/bw
-----END PGP SIGNATURE-----

--69pVuxX8awAiJ7fD--


--===============4025085397784531895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4025085397784531895==--

