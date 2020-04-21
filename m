Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4B41B2004
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 09:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gZ1SApti/uqc5ADa2rvM0KZEBIggEdhgxevb4iQLB6o=; b=sMiZIaKmn7N5Cw4hZ1Q+vz0i/
	WrpgXVwiNTtQxj/kVn1HaUpc8T/GzL3VXSnyqYsTzbVUVWmaGBw7LO1dD8r+n45DvtyxTtxZ4QcWd
	P7qVl+bxMgAxjWt2FE16hToZKZKY4xN0LmoQMtLbap+InsFkHCiz75wW1d/wiGDKE7QmG8YFC5VAl
	H0UTTDHemrogeUk3nn6tO2O5ljy1Pt7Mwgffxv8kaDdq7yMo8KJJiyblqVBv7Ft1qCPQDuMUDfqXB
	dgreZKJ5AFxakB0BsYU1UOTNxVdiSKIjB8RK4auF7hvrdirn5fUncoc8Jg22SzcuNpCINR435joZB
	k3If5AJFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQnVy-0007HI-B1; Tue, 21 Apr 2020 07:40:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQnVe-0007E7-Ti
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 07:40:00 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1jQnVa-0001KH-KN; Tue, 21 Apr 2020 09:39:54 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1jQnVa-00047T-5r; Tue, 21 Apr 2020 09:39:54 +0200
Date: Tue, 21 Apr 2020 09:39:54 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v3 2/5] ARM: dts: add Protonic PRTI6Q board
Message-ID: <20200421073954.dh4omcokxap2vh2v@pengutronix.de>
References: <20200324110432.25062-1-o.rempel@pengutronix.de>
 <20200324110432.25062-3-o.rempel@pengutronix.de>
 <20200421040747.GE8571@dragon>
 <20200421073713.hnv3poogl65ln77w@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200421073713.hnv3poogl65ln77w@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:38:50 up 157 days, 22:57, 167 users,  load average: 0.13, 0.10,
 0.09
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_003958_962991_B8DBC035 
X-CRM114-Status: GOOD (  19.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Jander <david@protonic.nl>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8362909081481280724=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8362909081481280724==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yldmmw33f7ntstg3"
Content-Disposition: inline


--yldmmw33f7ntstg3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 21, 2020 at 09:37:13AM +0200, Oleksij Rempel wrote:
> Hi Shawn,
>=20
> Thank you for the review. You was reviewing v3, the last version is v5.
> Never the less, part of comments still apply. I'll fix them.
>=20
>=20
> On Tue, Apr 21, 2020 at 12:07:49PM +0800, Shawn Guo wrote:
> > On Tue, Mar 24, 2020 at 12:04:29PM +0100, Oleksij Rempel wrote:
> > > Protonic PRTI6Q is a development board and a base class for different
> > > specific customer application boards based on the i.MX6 family of SoC=
s,
> > > developed by Protonic Holland.
> > >=20
> > > Signed-off-by: David Jander <david@protonic.nl>
> > > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > > ---
>=20
> > > +&usdhc2 {
> > > +	pinctrl-names =3D "default";
> > > +	pinctrl-0 =3D <&pinctrl_usdhc2>;
> > > +	non-removable;
> > > +	vmmc-supply =3D <&reg_wifi>;
> > > +	cap-power-off-card;
> > > +	keep-power-in-suspend;
> > > +	status =3D "okay";
> > > +
> > > +	wifi {
> > > +		compatible =3D "ti,wl1271";
> > > +		pinctrl-names =3D "default";
> > > +		pinctrl-0 =3D <&pinctrl_wifi>;
> > > +		irq-gpio =3D <&gpio1 30 GPIO_ACTIVE_HIGH>;
> >=20
> > I failed to find this in "ti,wl1271" bindings.
>=20
> Indeed. But it is required by the code:
>=20
> drivers/net/wireless/ti/wlcore/sdio.c:
> static int wlcore_probe_of(struct device *dev, int *irq, int *wakeirq,
> 			   struct wlcore_platdev_data *pdev_data)
> {
> ....
> 	*irq =3D irq_of_parse_and_map(np, 0);
> 	if (!*irq) {
> 		dev_err(dev, "No irq in platform data\n");
> 		return -EINVAL;
> 	}
>=20
> I'll send a patch to fix it.


Ah.. forget it, my mistake. It should be interrupts.

Regards,
Oleksij
--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--yldmmw33f7ntstg3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEERBNZvwSgvmcMY/T74omh9DUaUbMFAl6eo0kACgkQ4omh9DUa
UbNblw/9HVrRv9NQo100spx7YQPlrOsoOMy3ti3SUlnExUfoTh0HIa6S7tzfE5rh
DYN8cgfxp/EwAg81w4BK0qBwv1CNu0Z7aCjxD8m0nVRAojoz9E00BwWIrmppY2Gj
8722PAA/lVwXNwhsw9wnG7I19iBrYaUsFfogff2w6MEUhzim0lDVYQ4j8DQwFs5x
88FuXM34yJliQ5G6b+GWDRJVJR2m6ULBKSX5tZxFrG8P4t648HrM+gpEP69/0Joy
MlEkbwzohcc2Y5cJcFlc1twxgapdM+zI0iGs9jZTg9gg+S+WZl9XG9ZfB+JTUujC
MZ1NMg/bVnaDyTHqwACEgehBLKPVlUy2s2EOxIVOr+JAXeMsfaF6eTlR8HE0BWCX
tAhH5x54N5493O+lZeVFD3nFizptb5MpEAzDmNHdLEBrX/1ms8+eEnL0cYQqzyRz
sLqud802H/8tc8RveBBso3lNHGOpPTUimpp7/GoZSGdHvula95ZU49E/fpPE0ggL
imC17uBNagu9WB/dTyBLavYnIDly34wSJURWQaT1tByDjp2y+/r42/esVF31LajP
xFW+bRUUDjPpboGlZqNDedkk39U9jLFnJEFN4XH3g5YJIYZBeS64y4LSrlIGcmnC
FQqGG8+XwX3DwKnJyVM13KKnAR675h+eRheFJaLIhWVy5fZ0/W4=
=5rx1
-----END PGP SIGNATURE-----

--yldmmw33f7ntstg3--


--===============8362909081481280724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8362909081481280724==--

