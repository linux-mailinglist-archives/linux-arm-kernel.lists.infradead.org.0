Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159871DDFA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 08:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qv46ycZ7qv6q/OldzZ81ajTE1ujnh/WuoM1Kf8dt3nY=; b=C0AaxnW1DxEBYPudPWog+YAL/
	g5mLdn3zbcqg/Vw9lotxeqr1z0bE7h2hr4uz0vbzLTjjPfAAGYA2vLTFA4krkKUYlH4XvUBjqDKfc
	N7NSmSC2IgbI8Lg2I+ut2uH8PsOQ9aSUuxSbG5raZ+DaJDi+M872FT7A2RhuWPYyxFi/aGPxMogma
	DNg7qes0kspcfWeyZMhkF3lIoeH6Ors2uucs194JKAyobpkNyVZJ3nRTQNKY2n9kA2FuqkpIua+o1
	qKPpxJl199uxV4yooT0tI8w+XHWReY8fwns8meYvMsRvEYmoMPbemrgHX88TDU48OkH5qc8IeUnRx
	5qMwcYZdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc0mY-0004oM-OA; Fri, 22 May 2020 06:03:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc0mL-0004kk-St
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 06:03:35 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jc0mA-0001ss-IU; Fri, 22 May 2020 08:03:22 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jc0m9-0001bD-HH; Fri, 22 May 2020 08:03:21 +0200
Date: Fri, 22 May 2020 08:03:21 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: robh@kernel.org
Subject: Re: [PATCH v8 5/5] dt-bindings: arm: fsl: add different Protonic
 boards
Message-ID: <20200522060321.j73heuzhughmrvrw@pengutronix.de>
References: <20200520154116.12909-1-o.rempel@pengutronix.de>
 <20200520154116.12909-6-o.rempel@pengutronix.de>
 <20200521200002.GA2800876@bogus>
MIME-Version: 1.0
In-Reply-To: <20200521200002.GA2800876@bogus>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:01:27 up 188 days, 21:20, 178 users,  load average: 0.24, 0.14,
 0.04
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_230333_926600_F2B9B089 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7033439321916223899=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7033439321916223899==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bqrs4b63lj2fy3tv"
Content-Disposition: inline


--bqrs4b63lj2fy3tv
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 21, 2020 at 02:00:02PM -0600, robh@kernel.org wrote:
> On Wed, 20 May 2020 17:41:16 +0200, Oleksij Rempel wrote:
> > Add Protonic PRTI6Q, WD2, RVT, VT7 boards.
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++
> >  1 file changed, 4 insertions(+)
> >=20
>=20
>=20
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>=20
> If a tag was not added on purpose, please state why and what changed.

Sorry, there is no special reason. I just missed it.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--bqrs4b63lj2fy3tv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7HayEACgkQ4omh9DUa
UbMcmg//c0+BK3cTveZkOGqDqq4z9leCABwaeqO9pETzG5eMyjwl8c/AktiGc43O
BVAx2ejlrRPSOfH9Y6NtMd3qkF563mqYfK+L9OWmhvnk6pfN9rgnxNxNE8ZBqT3+
AwjaOBVD6+YhzOxFk/pywM4E96ER5h4A3PB6lYoQo88nzTSfv3aSxzwh5IzyISOL
oAZYO+cs+XDi5Snj1r2gfjuFIRoHbc8dTX1v3m3nefkKdHI3pDPgB7AckE9OtPEW
io/87X3WevPbd7JqEBWqR5LoB+SLse8DTAqNwwZSV+W5GeNAWFY/tnHz5wJPy68c
nYtJN6hMjZ5o9pVLFtYpVhM1MVJOJ/nCC3DtKO6vDU4RN+yulgtXEWPC4sXYaB7P
6qmaCnQ0s+cFkEPCexG/6NpBAgexFd4OtHwZpvDUW9IMRK8ln5YIn4PC2YsNBJuh
gC9Is07Q6JvdggqSa+QqZBNMow/gpZpNaTRVI6w/Xg7oQv9nVAEQuipCH291nt0F
NNKGSzMYwCh7nMAdvOAlV0xpx/ruPrJG9C2PpJwQtyPFBUj2BOjdgsm56pW1qN7M
be4HakGTav/oiuwqz0v+D3q/UvnHyi8NKWw5akhBk8dYWcFdkjo90Yv4YIHLNE/w
pWluoSaAUk4orYOZpEZ48sB5e18uuKCIX388QTf3WLgm0Zo8bIE=
=EHZY
-----END PGP SIGNATURE-----

--bqrs4b63lj2fy3tv--


--===============7033439321916223899==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7033439321916223899==--

