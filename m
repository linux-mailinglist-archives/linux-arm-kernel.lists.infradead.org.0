Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8C21C59CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UzeY/kGRRLKWXsrJ/d6aidtLSbtVN0OuwzjX/oOfYRs=; b=pm+x5HQ7V1xUHsb9xlmmrr0iS
	xQ5rlKKHZFvYMne4stjAQyuHXsRQ0piBy8ZEshErMchLiOYCu2E3HNcnJTOzyGmBJDbKG+OrNsPK5
	vmX+b4YU++arIHm80PMv8L/yw8X/SG/Fx7Mp5zkpBAGHfNY35SBkErTJxC7CNPjwYX+IlMu+x8Upf
	jrxCnH6eDApPSDz/g3wFmYndmfIJi8az0K6J97EH2VUM8D3d93Vc44tFss5jxpjiv9LmltWCptzQc
	tNMyLlwKDOXSewPDBNokNZL24TETNGOQFI2xM7iVKEGRkkO7W7lbQVBpSY0SYHZMH/9emHaO7mcNf
	K4aTYHu7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyhl-0000kp-CA; Tue, 05 May 2020 14:37:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyhY-0000jh-Qp
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:37:42 +0000
Received: from localhost (p54B335A1.dip0.t-ipconnect.de [84.179.53.161])
 by pokefinder.org (Postfix) with ESMTPSA id 1C0DE2C0892;
 Tue,  5 May 2020 16:37:40 +0200 (CEST)
Date: Tue, 5 May 2020 16:37:39 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v4 1/4] i2c: at91: Send bus clear command if SDA is down
Message-ID: <20200505143739.GE2468@ninjato>
References: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200225155012.22764-1-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_073741_016730_95BFEFE8 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org, linux@armlinux.org.uk,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1690333703892309137=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1690333703892309137==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J4XPiPrVK1ev6Sgr"
Content-Disposition: inline


--J4XPiPrVK1ev6Sgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 25, 2020 at 05:50:09PM +0200, Codrin Ciubotariu wrote:
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SDA pin. We can generate a bus clear command, hoping that the slave
> might release the pins.
> If the CLEAR command is not supported, we will use gpio recovery, if
> available, to reset the bus.
>=20
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Applied to for-next, thanks!


--J4XPiPrVK1ev6Sgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6xejMACgkQFA3kzBSg
Kba7ng//aczcnwIHXEHGSAGdX7AjPZp/niO98R7pHZFfdm2mzqMTZ033SOgF6hSt
dCiYvgUUkCfo5gnOaIgJgBX/l/H6JY8MsScJi/zZQKZJgj4RR1b0xJgtcxjIMbb0
C/WHo29TSP7tutQph38nJa9S1T9hx9AulHgb0Xrmb2s7Qo3iLyame1VxP1pmWreO
U7KID0sB34vmdXKI9aC9T8Uh9eA2xwkceqZedr3+Cp68S0ljLhYnir1p3jnXEb0P
49+yIOBRDdTc5OImkGheeySqoIZ/pHl/6HtKkNXFpx9mrt/chhAWoDKMAb35tDtD
ZrC/8lTTc19r6WxqrSg1LeI9SwXAlYCY8SHNNsx5vUZxKmOQWoTAdZbOz4v/+NRe
LBlgO6BTKre2//N2qzgQm5ZeEqsDYeCLat5EK6l+EJQ0v4SyKHsC8UM2jyq0UY6g
Uiu9ursq22CUDwuUOSDjeJEQ5BFJOjF3dgJCKq+L7FzdunQGVr5usvf6MtiX+Y7h
bDP913w76vEvPvj7QhSwXK6qazZ3v3Q9Mz74cMmFXOczxe9GHgSouqBrbxYgjU3k
kV4hEaDLfHUrsE4FwFkt/Suq4Cn9UHBpG4ZgTbnKIjIxNrYb6oQqT915kA1GjTRf
+KW8m5gpTU6zdVRHgHX9FYSBzYvG+BsYk+W2c88teSd1HBpzn8A=
=vY/v
-----END PGP SIGNATURE-----

--J4XPiPrVK1ev6Sgr--


--===============1690333703892309137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1690333703892309137==--

