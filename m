Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61499E3AFD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 20:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3U8S8DTjObE04/vh7BZoIj0Cr1Wul+ApwNd0fafunZQ=; b=Pd4ZSsPmfQ26KIhziuSZN2Lpx
	FQ2srVQXlN6ZfeBcA+SYk7Nced3HG54So2LyfPXf+IWvSo4HWFfYWj04Gn7otPKJveAr1VqnWq2O8
	2RiKVdJG5bjmzjLc4mpCPuVQoW21RoUUv7d9L25M6XQopE1Q2nq2UXZ7Xf8UJZ9HXwQlmW2Bjfmhf
	L1Grt9kOsrN0AeUjmSFh0yDKj/sl+CoM3WXrusV9yzxbVWC5OQkur5//YS6XgmwUBxHcn4tcSfoaE
	RdX6N2Y1wqtC3GHKkdCgRZ/QRmUUnlBHdHouAJ8PJsRe+3zgK4XVrPT6vAEEkEHNVmNcEs9OiA5XW
	73aKpp4Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNhsl-0003do-69; Thu, 24 Oct 2019 18:30:47 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNhsb-0003dT-PQ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 18:30:39 +0000
Received: from localhost (x4d0bc9de.dyn.telefonica.de [77.11.201.222])
 by pokefinder.org (Postfix) with ESMTPSA id 5D3C52C011D;
 Thu, 24 Oct 2019 20:30:36 +0200 (CEST)
Date: Thu, 24 Oct 2019 20:30:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Message-ID: <20191024183035.GA1870@kunai>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_113037_977476_7D1EF5CD 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2213004300415883606=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2213004300415883606==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2019 at 08:24:14AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
>=20
> Hello,
>=20
> This series adds support for analog and digital filters for i2c controlle=
rs
>=20
> This series is based on the series:
> [PATCH v2 0/9] i2c: at91: filters support for at91 SoCs
> and later
> [PATCH v4 0/9] i2c: add support for filters
> and enhanced to add the bindings for all controllers plus an extra bindin=
gs
> for the width of the spikes in nanoseconds (digital filters) and cut-off
> frequency (analog filters)
>=20
> First, bindings are created for
> 'i2c-analog-filter'
> 'i2c-digital-filter'
> 'i2c-digital-filter-width-ns'
> 'i2c-analog-filter-cutoff-frequency'
>=20
> The support is added in the i2c core to retrieve filter width/cutoff freq=
uency
> and add it to the timings structure.
> Next, the at91 driver is enhanced for supporting digital filter, advanced
> digital filter (with selectable spike width) and the analog filter.
>=20
> Finally the device tree for two boards are modified to make use of the
> new properties.
>=20
> This series is the result of the comments on the ML in the direction
> requested: to make the bindings globally available for i2c drivers.

Applied patches 1-7 to for-next (patch 3 is v6). Thanks for your
patience and thanks to Ludovic and Peter for the review! Patches 8-9
should go via the at91 tree.


--+QahgC5+KEYLbs62
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2x7ccACgkQFA3kzBSg
Kba+Dg//cHsbTuGv5z7zSiIUbnmUbVpJKyL+PUx03ES4RnXIjjdVJRM/sgyTocpE
zkokcnhPi9H4kv7O7CFo8VGVsQ1v1aBOgLSF9sRvdGB0kdEwRDJGypFLdmYFPpSE
fwxxDvhwCtKkxBtKwxCAmx7aP5wemaNemm1l2dTkC0dLZsfSce/HZQ7Q11MK5V7Y
I7gJMneVuUIw98wcLnut83YULvXC5HJNyKyhmRRivqE5+TZoJTwVIhxiFswjCTNO
Br6JoVz0ODQBmGUOCH4dFkI5X5CsBSRwRNC4V4x0ygr2iIjR/Rd/TU422wqylJk2
91d7wRXozOk/4f//UCxt3nlTeCXhgSUsO+7j6ljkjCHFxY3ONXdJ05lTMPZXJUAc
m0qVQjU73ZMl08RAItQOwcaQi1qiGcNHXJN40aJu3/z7dLjLgCPCKAUjnQTDWrrz
rwZejgvmHmTOd+zM3mmweCFu5v9qkuEeL7UCqLrGYyUHQPF3ycm5N96FkMbgbVnX
lROYUlXXOXp3QBSzqZ/EavNT26siD6joTXpKZMPml5u4VgmJ9MJ1AW7iTHwPZyYk
vqubo6pR02wJ95b9vyEr7OohP5sewbrNpHsk+8Tzyp4AlbcmdoIqMPgVb/77mpKN
frMOQ5tiehviyqrYqbv1IbJANmRg3UQD7RzDRX0lMIMW/BMyHxw=
=u9NZ
-----END PGP SIGNATURE-----

--+QahgC5+KEYLbs62--


--===============2213004300415883606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2213004300415883606==--

