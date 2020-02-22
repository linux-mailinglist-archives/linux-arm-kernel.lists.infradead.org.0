Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C90168E85
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:34:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2IoeX1DfPGDC5ctLJK8kLG+Ju6w1COxBljbUIxTKOiw=; b=cvdMAy+4ukWAHR+W9yK+wdQKt
	JWiA2eEDusklfq8po1MGLRH01tp130RqsEp51u+aKGVwFGTvI4rf6nlJlNUQYQnI3nHeGi9JBF+5E
	+zS9qn8ael7Mmkdm87tW4xaVCt+lzA7YnyTcHDcUZgVP6/tefwQmtrNKmYy9c+1WnMg418jH7BReV
	TWMxU8OMkjBIDjckkDspW/LlMqiAxQwXoBURU1kk23AVSH8nKzoc4aywDbS1YnrXxADkAaO7zDN3p
	zrND6hdNtxZYHKTVRViDwx8hJ812RRCfmrzOpGC5s6whpXwabQFgZU7RvB9Xm4y6wMaYtoC+MlSRH
	UmjEztFKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5T2w-00048u-7i; Sat, 22 Feb 2020 11:34:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5T2l-00048d-V1
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:34:01 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id 4BB2A2C07F9;
 Sat, 22 Feb 2020 12:33:59 +0100 (CET)
Date: Sat, 22 Feb 2020 12:33:58 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 2/6] i2c: at91: implement i2c bus recovery
Message-ID: <20200222113358.GB1716@kunai>
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-3-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200115115422.17097-3-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_033400_149299_FC2E8A0A 
X-CRM114-Status: UNSURE (   7.60  )
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux@armlinux.org.uk, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8729710406767939627=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8729710406767939627==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+g7M9IMkV8truYOl"
Content-Disposition: inline


--+g7M9IMkV8truYOl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2020 at 01:54:18PM +0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
>=20
> Implement i2c bus recovery when slaves devices might hold SDA low.
> In this case re-assign SCL/SDA to gpios and issue 9 dummy clock pulses
> until the slave release SDA.
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Applied to for-next, thanks!

The implementation is very similar to i2c-imx. Maybe we should move this
mechanism into the core somewhen...


--+g7M9IMkV8truYOl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5REaYACgkQFA3kzBSg
Kbb/5BAAjIRoPQE9LABWbJpndp9jLdUzU84jFgAC8Doa8diKtDq4FRlalY3b3N+D
ciV1rCm+jDxHbvrtSkzoB4zzqVwoHbCYG2UqCDeb6kGQW+64oCn2PaRGETahlzTt
t6xJGm/VCwYNoDOTlp6M27TWtP89PAIc2byd6YgejLdkPld5gfYatdWT5WIv4zci
ayDRoh7drxaSKT3umNfixWaafLSLnrVP4ylTA+2FZ2mgp9luw6y6scnSj0Yyk0do
elir7QNRItWLYJdtEI5oo2Jfm8wII5P0V3MMS9RWK3diOheswZBdJuX7mEMHXHLz
7hqFRGpkW9U0/7kXfFaLBQWJFAANZeoNHVKg7MyA9rIbRwAqrngy6uVwZD1KPtxn
DIYRKZotx/PNmOOaZEMGuwwU70vM9ff0b/ZOYQtYBTzwYDDirXO/ZGipUFLyfaIl
sfvCQB6FNb8f8qQpOip20ecYjorUP4duRY2kK0ZTvfqJQTyQi7ziRPLVSB1ukNv+
LG8jlj0RyWojDK/jl0lTUW4mbncWkqBMhWigd5nIJp5qAGRZLfCjKW+xhGos7CNc
AJAYLMyGhVazIidpUhju9zqqsTMNXVLwbmwqXd76TmK4hhneqjJqN+uRndSiZNY8
EfnrgyJ6mdYSBxh6MhBZ6fw/s1FplEMs1SR5aOMN1LzGdYIoQg0=
=BEk4
-----END PGP SIGNATURE-----

--+g7M9IMkV8truYOl--


--===============8729710406767939627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8729710406767939627==--

