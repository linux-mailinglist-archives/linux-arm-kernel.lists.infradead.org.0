Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE7761DB7F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:20:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JVHT6j0VA8RzA+V0V9LqwEkmba6yzVsrhl/4drmGiNE=; b=d7tK05ZjllQ59rDasOOlidzPB
	yk9Hl5kIMCHMXTrr2jTNvut1rDqt9BTI8L2SGoTxOjWajj2NsYO9J4e1gurUYStgrrUGr2HtGm7cD
	Lftcu/N4zW+Rhyg6EKO99bHwA+A8GRyXqkBoQJ1Uq3B20P9bVkg06oKZD08yWOJRRxWtu5AJPxeY5
	7vR5eFLnkiJYwou0gbrZB4o2zHvLzFmj2NGIhGqQiS5j6pm2g3tWooMINxOQKT12PFKjJE1tgN1B6
	+lO/KTwmxXNEJKyfvS5QpU7V7dhF1dYs5LNgsIym1HJkCSTMxUrSqHxNKRKHicLTt/5Lftc2kSVaD
	glEDbebtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbQW2-0000Lj-3v; Wed, 20 May 2020 15:20:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbQVn-0007Zp-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:20:05 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jbQVh-0005kX-IH; Wed, 20 May 2020 17:19:57 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jbQVg-0002uG-9b; Wed, 20 May 2020 17:19:56 +0200
Date: Wed, 20 May 2020 17:19:56 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v7 0/5] mainline Protonic boards
Message-ID: <20200520151956.sdkbxh3xkmoj7jvx@pengutronix.de>
References: <20200520092937.15797-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200520092937.15797-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:18:55 up 187 days,  6:37, 194 users,  load average: 0.05, 0.07,
 0.11
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_082003_669634_AE617F56 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0286187394915617535=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0286187394915617535==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rtjclzefu7dbfjwq"
Content-Disposition: inline


--rtjclzefu7dbfjwq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Please ignore this version, i used wrong commit hash to format-patch.

On Wed, May 20, 2020 at 11:29:32AM +0200, Oleksij Rempel wrote:
> changes v7:
> - VT7: reorder node alphabetically
> - VT7: rename "reg_12v_bl: regulator-bl-12v" to "reg_bl_12v0: regulator-b=
l-12v0"
> - VT7: remove panel and TS nodes. This drivers are currently not
>   mainline.
> - prti6q.dtsi: move reg_1v8 to prti6q.dts
> - prti6q.dtsi: remove pinctrl from the can1 node. It is done on almost
>   every board file.
>=20
> changes v6:
> - move fsl.yaml changes to separate patch
> - remove partitions, they are provided by the bootloader
> - update flash compatible
> - rename can3 to can
> - fix fsl,mode
> - fix interrupt in the wlan node on PRTI6Q
>=20
> changes v5:
> - PRTI6Q: remove status from the pwm-backlight node
> - drop the vendor-prefixes patch, it is already taken by Rob
> - add Reviewed-by: Rob Herring <robh@kernel.org>
>=20
> changes v4:
> - VT7: fix typo
>=20
> changes v3:
> - move compatible to the start of node
> - move status to the end
> - use generic names in compatible
> - refactor dts/dtsi
> - use alphabet order for pinctrl and phandels
> - remove unused or currently not supported nodes
>=20
> changes v2:
> - squash PRTI6Q patches
>=20
> Oleksij Rempel (5):
>   ARM: dts: add Protonic PRTI6Q board
>   ARM: dts: add Protonic WD2 board
>   ARM: dts: add Protonic VT7 board
>   ARM: dts: add Protonic RVT board
>   dt-bindings: arm: fsl: add different Protonic boards
>=20
>  .../devicetree/bindings/arm/fsl.yaml          |   4 +
>  arch/arm/boot/dts/Makefile                    |   4 +
>  arch/arm/boot/dts/imx6dl-prtrvt.dts           | 182 ++++++
>  arch/arm/boot/dts/imx6dl-prtvt7.dts           | 472 ++++++++++++++++
>  arch/arm/boot/dts/imx6q-prti6q.dts            | 529 ++++++++++++++++++
>  arch/arm/boot/dts/imx6q-prtwd2.dts            | 188 +++++++
>  arch/arm/boot/dts/imx6qdl-prti6q.dtsi         | 174 ++++++
>  7 files changed, 1553 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6dl-prtrvt.dts
>  create mode 100644 arch/arm/boot/dts/imx6dl-prtvt7.dts
>  create mode 100644 arch/arm/boot/dts/imx6q-prti6q.dts
>  create mode 100644 arch/arm/boot/dts/imx6q-prtwd2.dts
>  create mode 100644 arch/arm/boot/dts/imx6qdl-prti6q.dtsi
>=20
> --=20
> 2.26.2
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--rtjclzefu7dbfjwq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl7FSpgACgkQ4omh9DUa
UbPNBBAAgrOuGaQL3A6w7l6/WjkgEYXtLUlTmqnvmGT93ref/kOZCGB6euAiNOhF
1JORufLhqt3fpT3j0x1RZ0gPzahQr3iVSDVHe0zvFJMVPlzeYDEG+qVq4ozDanSL
LIA6H9D/IWnLNF0C7Z2ho9fyymgRguyjUwUQZCqiNnfbOMLOJbf2HUvTMoF2nLES
NTSHPHTQa7qBLpxsu7XRPHbXPqwDsnfSYzbRxcvE0hu2YGk7Jsz+4NZXoVd7XXS2
cQIkSp9Su2Uh0qnTB/UGm/PeKgqqt1cHypIhoISSkjjyzlAtG+RciEpA1lbDgeBC
mP0ga3d/we+PU98hShT1ElK7GJyXSjTqeXsumgibl1d7NnwZuHFtDHgzq0vj+Yfh
pWWmpG2uteAgf41u0k0ezn9B9c9a2VetaHRlHPyUlsp8GYEremqG/X81fL+uIslM
4Y22irZ7JzuOpI6E8s/fS0UUPJmJikPhUlpaboylRoIAH5B78kOI+H0PpdnicMXi
ioLyL82aJyNgkPrvVSSdZivxeQ69ShpDKTbUmGlSii9kMgfzZtiMtCebaIg7gE+A
gB7ikUefVpFUcHupR52vdcnutB8HmZFfZDDxWGaKRPK7p2DP02aJ8eQpnpZVTNAI
mj85FrbM1whU+KiK5xU+cRsQWglHs5nDXElkVtQ36HOK56IyATg=
=MQg1
-----END PGP SIGNATURE-----

--rtjclzefu7dbfjwq--


--===============0286187394915617535==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0286187394915617535==--

