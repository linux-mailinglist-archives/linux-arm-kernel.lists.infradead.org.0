Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F392217F464
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FX0BcuN4PmybGKS1oWLYHgCSvgMCSYFkCHRH4S3avGk=; b=AOlExOeE5H66SPBLPAabLyQHw
	/0OXEZuCJsSDhYsxMShVUq7GqFjMGm+Z7IJWQrOysc2/dMexInw9nw0BRJdxxSvmaHPHsC8+zSIRe
	LqJLbutfbMVBaZlc7igA+jhfAEy840lwakMtwGo3rHdwKsUqmSPJDBP5/exZJ2g1LyRZwrj3fRbnd
	2bayuaOBld6SAQYKVt/cEkU6LtZ2bmvgsAic2nSkoeUH5B4hCBEeNXX+MCjdKrTZyy+tZQQRFDoUR
	YjBlyF0KcZ0fHvrextsLxkYGrcpCGyKuOjPcyWNDEGkfkcfnruJFQaEakDVdu6uWaN5Z4TGkuQc9y
	yhe0G6FSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbnb-0006yo-Lq; Tue, 10 Mar 2020 10:07:43 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbn7-0006nm-RE; Tue, 10 Mar 2020 10:07:15 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id 1F2E72C1EC6;
 Tue, 10 Mar 2020 11:07:13 +0100 (CET)
Date: Tue, 10 Mar 2020 11:07:12 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 01/89] dt-bindings: i2c: brcmstb: Convert the BRCMSTB
 binding to a schema
Message-ID: <20200310100712.GK1987@ninjato>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_030714_038452_17FF1B3E 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4824112525208778910=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4824112525208778910==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ah40dssYA/cDqAW1"
Content-Disposition: inline


--Ah40dssYA/cDqAW1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 10:06:03AM +0100, Maxime Ripard wrote:
> Switch the DT binding to a YAML schema to enable the DT validation.
>=20
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-i2c@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Applied to for-next, thanks!


--Ah40dssYA/cDqAW1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5nZtAACgkQFA3kzBSg
KbY+NxAApOA0DgL9E18jKGCjbNUZdoNygycR8UoNEsGm7J/mGOUAW0bk9z4483Tr
b1Jpea0h2FsKT8Hi8CYLCF7A4Ak4CwDIOOjeFrgekBcrqopEXe9k6uJfHvlVs4CC
Qj9CfTKsCJNzmdmEF52LTD0PKQ2pQzlIzxv+R6NaCDXdg1ny5gLiJOYh3taZ3Zfv
g0hk64L428pj3g2BU5CHkMeTakLEc2wyZy4ooK7b0vtGCkGTEKCMwmOh4hpVnpk9
Q3q0m93ylVuPisnG7KQrKhVYcYJVQylHZeMshW2siLhMRJ99LbAKudsSLJonivHS
iXZciqZWNOKtwWc33Kc3cGlSYdqc/gFi5o8bxk9mJZO45SvGSbBxCWrb5+HLhORk
f0yZijL17mcJfnN1gJbFpZNPvEJyLfX/toxP1JAp8JbXuL1DsgOx0u1Icm2ktiH7
+63SvGtyq/970XG81VyKn8Pi05VDaO9Lc9KF+U4e9X4ogVvUF2MXyBQR2N/aufoc
VHrfcWZBkmx55YyW+T01gsKtdIElXC2MlXdianIcCVRJjGUgNr47JhoGX0kPK7On
WSrujQEyv3TE1GBFlQ4pcVC4IRysR7QNjx0qhGaDMBP7dvkWQvsNxFjPU0UiQAyH
D5eCaht02CFa0uQRlHue7QZrUP2JxhWSsW+bNxFeIiL9PSA5buw=
=aQAg
-----END PGP SIGNATURE-----

--Ah40dssYA/cDqAW1--


--===============4824112525208778910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4824112525208778910==--

