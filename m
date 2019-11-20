Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D73103600
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 09:30:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tEhTzaIiy6wtUCxDANIDbqbU6sPjGkup1RDY3dFQF6w=; b=bysG8aQlbXbeiuIJJcpO9uMLu
	OrUvY+RYOeeGI53ug+QCVTpDol2P/SCNaNt/NxJj7VuzCG820MwNVIAWlygJTS1Q7beUj3HA2ZmaU
	WCbQ22cer8HUrUUmz370OvnTHpXgZpH7/2DUo8Hh9lk6oUfVduxDgwOAqkMeLiDIod0WUKWA3AsHF
	KDy51i2aN32Oev03nIWG6M4L2Zr3I350TOTnA9moq47kLsQcwTMAnAxluTSQ4vPRyVTI/Xb9G+Qq5
	+0ybmwnrmnjLephvW/D8mFLd4plqu0fLhpE7d+7PRZbTAU+irs55IKAizggh6sGFOw8VP9hIHtZCb
	RQKj4WISA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLNS-0003Hy-Gz; Wed, 20 Nov 2019 08:30:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLNG-00028p-K6
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 08:30:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iXLN6-0004qS-8S; Wed, 20 Nov 2019 09:29:56 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>)
 id 1iXLN5-0006AT-7N; Wed, 20 Nov 2019 09:29:55 +0100
Date: Wed, 20 Nov 2019 09:29:55 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2] ARM: dts: imx25: fix usbhost1 node
Message-ID: <20191120082955.3ovsoziurntmv7by@pengutronix.de>
References: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
 <20191115083415.28976-1-m.grzeschik@pengutronix.de>
 <20191115201409.5ztt7vrhf2btpoed@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191115201409.5ztt7vrhf2btpoed@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:28:09 up 135 days, 14:38, 138 users,  load average: 0.22, 0.21,
 0.18
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_003006_704255_DEFD6B58 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1993914508573662109=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1993914508573662109==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m7xzwwcaqk6e4zvj"
Content-Disposition: inline


--m7xzwwcaqk6e4zvj
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 15, 2019 at 09:14:09PM +0100, Uwe Kleine-K=F6nig wrote:
> Hello Michael,
>=20
> On Fri, Nov 15, 2019 at 09:34:15AM +0100, Michael Grzeschik wrote:
> > The usb port represented by &usbhost1 uses an USB phy internal to the
> > SoC. We add the phy_type to the base dtsi so the board dts only have to
> > overwrite it if they use a different configuration. While at it we also
> > pin the usbhost port to host mode and limit the speed of the phy to
> > full-speed only, which it is only capable of.
>=20
> The subject line suggests this is a fix but the commit log and the
> actual change don't support this. Maybe better:
>=20
> 	ARM: dts: imx25: consolidate properties of usbhost1 in dtsi file
>=20

Will send a new series with this suggestion.

> ?=20
>=20
> > diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
> > index 9a097ef014af5..40b95a290bd6b 100644
> > --- a/arch/arm/boot/dts/imx25.dtsi
> > +++ b/arch/arm/boot/dts/imx25.dtsi
> > @@ -570,6 +570,9 @@
> >  				clock-names =3D "ipg", "ahb", "per";
> >  				fsl,usbmisc =3D <&usbmisc 1>;
> >  				fsl,usbphy =3D <&usbphy1>;
> > +				maximum-speed =3D "full-speed";
> > +				phy_type =3D "serial";
> > +				dr_mode =3D "host";
>=20
> Would it make sense to split this patch in two? One that moves phy_type
> and dr_mode from the dts files using imx25.dtsi (which has no effects on
> the resulting dtb files). And another that adds maximum-speed.

And a second patch including the speed limitation change.

Thanks,
Michael

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--m7xzwwcaqk6e4zvj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl3U+YMACgkQC+njFXoe
LGRtixAAlyFKmJgYeg6duQVqKdTinYouh9xcyRKXQ/8qMcGtZm3pad0+qZozdycj
AjWhY3F8fJdQxMUAZN6lTgpNuGuBpTCJ+scLv9VnU+lYKS85UBCAJ9VXIZ4f0yQ+
VolO+AkD5oLf5gv6ZU1opnpTMRam2KptGqEyRLfxoniuHGEJf046H3nrdy8hx4n6
JxRZsgzKe3abM1T205elQSzZFy6fsDDVYZfdVwpVvs+9p/GytwHl3TKucNuWb4Qe
4JDdIiMAS3B7Rf4RNMKHKVGBr7puibkcGAfL5lUEfG9Ta/utiFMYH7I9Php0d8Bn
n2ZgaGwRoAoj1x7xqn6RQFgRlCaecR2Glqwko9cLwVfMzUZJGCBafaYTQgVBRTar
7mq/BAVDSPJssowJrkaQ929NjgkUzdhcbD7avWt3OQA2ije1Syfa5aCp8RPh4RAn
VUNqIS7i27bTOkSXa8FZaTo6C2/zqDlQIWJ7/2VlSgTqD5zrDEp7RP14Ykbgdj3M
Au0IoymMMVbo3chEbA+1FH6bbnWY1MY2tBGPXyc3EgzufbXOK4/MiTIz26qNGnpj
+9S42DkuOijLKLV+au22M3VCVyD0sfSfQsj1qZY1QJqIEp2GPQLSo86YcqH1sZIJ
DnBzv3mYDN5OmhvWZ4qoBLjCIB1+Ws+5EX21NkpNCn7ehQTDMH0=
=OvER
-----END PGP SIGNATURE-----

--m7xzwwcaqk6e4zvj--


--===============1993914508573662109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1993914508573662109==--

