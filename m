Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA4A8D036
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xgTxyrMSDqan0Nd+Tc9TdO351FnWM8CIJG8u1LYS8/Q=; b=DcWHXNC79DJcOdp7XWYE51V0w
	JfvYLT5J8sxL1WU75KYB6pajhDrpfYyvLw/UQVl/v70zCmLdEYW5NJI8aWkg2mJVu0TBLZoyqKlTd
	7bhr/T9m5cEYI4W5zUMX1PkcsKiY2/uFfpdH4G0KW+tiyxAnudhTpg+CqEN+1UhiSLYz1X6qhorFn
	wqXHMoFhutaODj7Pau45JBhpRkA5Aed4r4hM3CFted+M6UfBjrmoO0njiFXRcK4F1aZjL+S9OiT5v
	l+oQKqRxhH1SxOEwIOeKEPRojLHGXkX0DuQzDV7WJmNqbcxPb77XrEyuzT2u3HCy8G1QhmyUwJsAA
	yYFQPphWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxq7s-0001t4-De; Wed, 14 Aug 2019 10:03:28 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxq6s-0001kG-Ba
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:02:32 +0000
Received: from localhost (p54B33326.dip0.t-ipconnect.de [84.179.51.38])
 by pokefinder.org (Postfix) with ESMTPSA id 5060F2C311C;
 Wed, 14 Aug 2019 12:02:25 +0200 (CEST)
Date: Wed, 14 Aug 2019 12:02:25 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v1] MAINTAINERS: i2c-imx: take over maintainership
Message-ID: <20190814100224.GE1511@ninjato>
References: <20190812050817.23279-1-o.rempel@pengutronix.de>
 <20190812064811.427cy7ahim54odkk@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20190812064811.427cy7ahim54odkk@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_030227_696267_94B0E7F0 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Oleksij Rempel <o.rempel@pengutronix.de>, linux-i2c@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6882891228784259974=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6882891228784259974==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZRyEpB+iJ+qUx0kp"
Content-Disposition: inline


--ZRyEpB+iJ+qUx0kp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> Even without this patch the generic "ARM/FREESCALE IMX / MXC ARM
> ARCHITECTURE" entry matches the i2c-imx driver.

It matches, but it didn't work well, I am afraid. Quite some IMX patches
in patchwork waiting for attention:

http://patchwork.ozlabs.org/project/linux-i2c/list/?series=&submitter=&state=&q=imx&archive=&delegate=


--ZRyEpB+iJ+qUx0kp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1T3CwACgkQFA3kzBSg
KbajTQ//VgglyM7CZxyc+Ld+REfPtwJNbH4MOU3yt3/ZblEZli85uYDYMuJvdPvA
8ujNPD7em/qfmwlnrhzNOCeNmdwGXFcs+T9e8qKwqZIazJ/2xZ11Ub9KeR5gixk+
+udm0DqRtnx5q019zanKGsuXsNDIjyOCKOkcU0v+dA4qZVw7cEv7OECGvMg6Z0gM
UyW9Qp0l39DsKJqRdwT/ei7K+tQl6slFi1kpMvZsiIEX+GIUK4nCHdjnc86uAIoZ
82ZlrciTgBMmMAqydTFOdGkp6NV3+2iiSZ/58Kqj2THHGVo2VxR2eMUrLyNn2Z1O
GPid13ndoVd6DOuevS6Bn/E1OovR6hIeZ3PetslltKmW/XKRbWwXsyayQxyH1Tqb
Jsey2AN8YXmNPKNyTUnYTKg6zkvvvtfCvrtKMIlAvEIEEQd1KShBPpEbPUqlLUv8
6XnmQsjuuiDytZAETbdOs3edV/hZJebz9/WH60qJlXmAzFLdnLgcn7Mv2zlZh6jn
wkLE3CEa+JG4hcYgzMsL68I1ccwXM8yVuzKOrEVuFILNjgA47yJFYqwb5f7eLk3G
wHuIN15QyeJ5LWslyr1LsSP7ekGq18qYKTvf8/qNx0nFF5w088AlKunLVoAqJwlI
TwoMZhdY0qfi3SGXmUQEt3oz8i9d1pW0nK/maZqmXS/I6Vp6UKw=
=m4xx
-----END PGP SIGNATURE-----

--ZRyEpB+iJ+qUx0kp--


--===============6882891228784259974==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6882891228784259974==--

