Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C956E402
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W8QgU/I/HqBYBd3Qk7CICZhecUqKRJqWpB4N6A+H2T0=; b=ljia0JrGI6adpxWkUM7ikY1MP
	xggU3NmJPpDtb77yiBk5ALt+ugzDzhMRbqFH1ra134zuWQJ57ouOjODXuSW/SeRIf+YCCsPiQCMVx
	3HVePCtXFqrCH5dbuLA1ZKYkhKwc5BuFqrahhuw1PvF5+68nc/pUInSw1uazO7BO2vY4/Edy3Uuvo
	aUSEX4VPUs4wwcHFrwFajd7D2dsK8KO5qqpU6ojVQw5IpAmFtcleEUtR8INzklWBo2TssKk6n5yHN
	H/g5yRnakyPQ1ARmA/s9yGLQCF1JH+xWVtsTTBjgZd6Tryd4UvaSz6lUtXQ/AVfHYOF+Xg3D4+GKA
	25SGRgieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoPru-0005oW-EM; Fri, 19 Jul 2019 10:12:02 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoPre-0005nf-AW
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:11:48 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 0CA3780302; Fri, 19 Jul 2019 12:11:30 +0200 (CEST)
Date: Fri, 19 Jul 2019 12:11:41 +0200
From: Pavel Machek <pavel@denx.de>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: USB Modem support for Droid 4
Message-ID: <20190719101141.GA18760@amd>
References: <20190718201713.GA25103@amd>
 <20190719052205.GK5447@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20190719052205.GK5447@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_031146_512502_0FD86DBF 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mpartap@gmx.net, Pavel Machek <pavel@denx.de>, merlijn@wizzup.org,
 linux-usb@vger.kernel.org, kernel list <linux-kernel@vger.kernel.org>,
 sre@kernel.org, nekit1000@gmail.com, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7176383174827682669=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7176383174827682669==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> * Pavel Machek <pavel@denx.de> [190718 20:17]:
> > From: Tony Lindgren <tony@atomide.com>
> >=20
> > Droid starts to have useful support in linux-next. Modem is tricky to
> > play with, but this is enough to get basic support.
>=20
> Below is a better patch using option driver adding support for all
> the ports. I'll send it out with a proper description after -rc1.

Thanks!

It works for me, too.

Tested-by: Pavel Machek <pavel@ucw.cz>

> @@ -83,6 +83,12 @@ static void option_instat_callback(struct urb *urb);
>  #define HUAWEI_PRODUCT_K4605			0x14C6
>  #define HUAWEI_PRODUCT_E173S6			0x1C07
> =20
> +#define MOTOROLA_VENDOR_ID			0x22b8
> +#define MOTOROLA_PRODUCT_MDM6600		0x2a70
> +#define MOTOROLA_PRODUCT_MDM9600		0x2e0a
> +#define MOTOROLA_PRODUCT_MDM_RAM_DL		0x4281
> +#define MOTOROLA_PRODUCT_MDM_QC_DL		0x900e
> +
>  #define QUANTA_VENDOR_ID			0x0408
>  #define QUANTA_PRODUCT_Q101			0xEA02
>  #define QUANTA_PRODUCT_Q111			0xEA03
> @@ -968,6 +974,10 @@ static const struct usb_device_id option_ids[] =3D {
>  	{ USB_VENDOR_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0xff, 0x06, 0x7B) },
>  	{ USB_VENDOR_AND_INTERFACE_INFO(HUAWEI_VENDOR_ID, 0xff, 0x06, 0x7C) },
> =20
> +	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MD=
M6600, 0xff, 0xff, 0xff) },
> +	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MD=
M9600, 0xff, 0xff, 0xff) },
> +	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MD=
M_RAM_DL, 0x0a, 0x00, 0xfc) },
> +	{ USB_DEVICE_AND_INTERFACE_INFO(MOTOROLA_VENDOR_ID, MOTOROLA_PRODUCT_MD=
M_QC_DL, 0xff, 0xff, 0xff) },
> =20
>  	{ USB_DEVICE(NOVATELWIRELESS_VENDOR_ID, NOVATELWIRELESS_PRODUCT_V640) },
>  	{ USB_DEVICE(NOVATELWIRELESS_VENDOR_ID, NOVATELWIRELESS_PRODUCT_V620) },

--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl0xl10ACgkQMOfwapXb+vLrVACfXkgc5UNVTqP4Cs6nTFriszl9
quwAmwWLaqYxjvrh50FxYi5/99eL4kxh
=GSbE
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--


--===============7176383174827682669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7176383174827682669==--

