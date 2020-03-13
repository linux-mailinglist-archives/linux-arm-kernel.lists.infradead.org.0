Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33006184487
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 11:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KQdtWrGuNR1DROtD4zVNC4gFgGe0N/0IlFW/ZlD48a4=; b=oqupEmr7FBYnizKLH2rzYFjXX
	2NBCV8kl2fbkztCqsX0r+7GoHYd7YVeLndxZESL/HhzyfjVy9CSM37A8WaR/LGooufLpKZLJF0fhn
	2dO3R5HFwLZlWSCzAo5WQq+FniyIyuBwWRNaZtQIbedSu/yZeYAiRixpikrRy7TPi73Kp2oX8nDfu
	St85ffow+T5O5qlM1CjB+KwvmPp7nBSFbGdSALseFtXe8sGrmVaJHjKWZMP9aO76RjfbuIOJAzWuS
	JH/eIfdOt/GAUPJYL5wgVvAxUB4h6x7hzKJCvL4Ysj2pN6jWa1juAQAgTmZb5r2l4gLyHQQR5dIr7
	5QSB5oc6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChIm-0002S0-8F; Fri, 13 Mar 2020 10:12:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChIZ-0002RK-5a
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 10:12:12 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jChIV-0005CP-9b; Fri, 13 Mar 2020 11:12:07 +0100
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jChIU-000271-00; Fri, 13 Mar 2020 11:12:05 +0100
Date: Fri, 13 Mar 2020 11:12:05 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v2 2/2] ARM: dts: imx6q-marsboard: properly define rgmii
 PHY
Message-ID: <20200313101205.pxctcainreac7a6j@pengutronix.de>
References: <20200313053224.8172-1-o.rempel@pengutronix.de>
 <20200313053224.8172-3-o.rempel@pengutronix.de>
 <20200313095545.GD14553@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20200313095545.GD14553@lunn.ch>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:11:16 up 119 days,  1:29, 146 users,  load average: 0.01, 0.07,
 0.06
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_031211_209105_D4BFB111 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Florian Fainelli <f.fainelli@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============3438335862964576541=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3438335862964576541==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="btk4uzvcft3s7ycb"
Content-Disposition: inline


--btk4uzvcft3s7ycb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2020 at 10:55:45AM +0100, Andrew Lunn wrote:
> On Fri, Mar 13, 2020 at 06:32:24AM +0100, Oleksij Rempel wrote:
> > The Atheros AR8035 PHY can be autodetected but can't use interrupt
> > support provided on this board. Define MDIO bus and the PHY node to make
> > it work properly.
> >=20
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/boot/dts/imx6q-marsboard.dts | 15 ++++++++++++++-
> >  1 file changed, 14 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/arch/arm/boot/dts/imx6q-marsboard.dts b/arch/arm/boot/dts/=
imx6q-marsboard.dts
> > index 84b30bd6908f..1f31d86a217b 100644
> > --- a/arch/arm/boot/dts/imx6q-marsboard.dts
> > +++ b/arch/arm/boot/dts/imx6q-marsboard.dts
> > @@ -111,8 +111,21 @@ &fec {
> >  	pinctrl-names =3D "default";
> >  	pinctrl-0 =3D <&pinctrl_enet>;
> >  	phy-mode =3D "rgmii-id";
> > -	phy-reset-gpios =3D <&gpio3 31 GPIO_ACTIVE_LOW>;
> >  	status =3D "okay";
>=20
> Hi Oleksij=20
>=20
> I don't see a phy-handle here. So is it still using phy_find_first()?

Uff... right. Thx for pointing it.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--btk4uzvcft3s7ycb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl5rXHEACgkQ4omh9DUa
UbPogg//XjGtdb1pUZbPSkZBCCQhrYX8rLqM7CcGPmyDbDMo1EMZycc/B8pUPYir
Ea/Xipv8Uj0SFZ8Sd3NApY1u+wtotDYyIYFe3oh9QCD9W8RI3o1DyiD6d7w4DjKR
JqjSuj7pKbpRaFlGz6d724tuf8xImEumliUHJj7Smjhvz2srctfWBK5SODa1gj2x
CE8Y3fVmSDIbiq9tlJCNgjyUe9rzjgQAOAbKyTaRuUi/WJNOu0SUT3l+Ggh5f6VQ
OWXFKposcaFJWMVWyeqRttdsE+7396Pyk5T1W14YLKkBOY8CQrmdD7EnvjwYwsKX
WbGfYU/TTyCjcMI3YbuiachfU6k+uZO/uIihnlYax/tzNIslZg7Pi+8GAGadNpxo
pgZ6PUUUvAKEmfPNc2w9FJ9EGTHDrG6+KxobutnliGbsOtLSki6anNbbd/9cB3Qg
4ZCkD5oXOeH340aSzTG19QMdf0ACBKpwoMUHA97KWFMSLgl/7WHi9+ZogAb/bII2
+kb65UNwWsXdEOhtTcDWDk5hVTIRVmiSndJkdjam6LAdidZjEPct7ByXvPmefcHA
/qWcFUxPP1Wmoy5CJLALzRqIsW5LyonWhxnBwDA+Hl0u9POP28oCU7TY8qRoTCeS
oRR0ZGXS10zVLRJGC99Di0g5elRP8xyaOcuEK/zPxD0bBVlzGRA=
=ucl/
-----END PGP SIGNATURE-----

--btk4uzvcft3s7ycb--


--===============3438335862964576541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3438335862964576541==--

