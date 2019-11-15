Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50383FD7E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 09:28:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bZFjeEaL0mf1yRGF90YBU8JcYg4XuJLX25IOqDQnq6o=; b=gGt47udEgFPeFZC2Mr+CLN+KX
	6M7KBn/+PGFhodMNRAiFN165+TeJfYL5Hm3wc3nFkSKwb2fCvS0qhKfEdrFNwC2jtOnHAGsFeTb9H
	E7216IqxposNd8+eULR0DEnNY6z3gLkBGqhCyF9pVs7dJ2cREKAJ+tm3qtvUfmptQ0n7v8119WRp6
	nRw5IqVVgOOePPxKcOCerYtKdUOIie8xpHtSbpRdWEB9vK6GvQ4zYmSpHP81EY/ulwo83/WKlKJnt
	Sey3RhmGgHbjBqJJxyubW/h9g8TSuCWuDo7Vms+sd+4lhVdJOgbHkvwyBB+pwykGlusbNq+bKXLtV
	H/nNEaHpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVWyE-000150-SN; Fri, 15 Nov 2019 08:28:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWy5-00014G-7L
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 08:28:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iVWxx-00035K-1e; Fri, 15 Nov 2019 09:28:29 +0100
Received: from mgr by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mgr@pengutronix.de>)
 id 1iVWxw-0005Il-Io; Fri, 15 Nov 2019 09:28:28 +0100
Date: Fri, 15 Nov 2019 09:28:28 +0100
From: Michael Grzeschik <mgr@pengutronix.de>
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx25: fix usbhost1 node
Message-ID: <20191115082828.tc3dbjnv7bojgrg4@pengutronix.de>
References: <20191111114655.9583-1-m.grzeschik@pengutronix.de>
 <20191114211708.77d6bttkyj426yqy@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191114211708.77d6bttkyj426yqy@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:27:20 up 130 days, 14:37, 121 users,  load average: 0.17, 0.16,
 0.15
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_002837_263258_C591241C 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, festevam@gmail.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8160318567202742768=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8160318567202742768==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="prnwotkb3gjhqohe"
Content-Disposition: inline


--prnwotkb3gjhqohe
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 14, 2019 at 10:17:08PM +0100, Uwe Kleine-K=F6nig wrote:
> On Mon, Nov 11, 2019 at 12:46:56PM +0100, Michael Grzeschik wrote:
> > The usb port represented by &usbhost1 uses an USB phy internal to the
> > SoC. We add the phy_type to the base dtsi so the board dts only have to
> > overwrite it if they use a different configuration. While at it we also
> > pin the usbhost port to host mode.
> >=20
> > Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks for the ACK.

I just figured out that we also can add the limitation
to maximum-speed =3D "full-speed" into to dts. Since the
internal phy maximum speed is limited to that.

I will send an v2.

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

--prnwotkb3gjhqohe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEElXvEUs6VPX6mDPT8C+njFXoeLGQFAl3OYakACgkQC+njFXoe
LGQPhRAAwwmh0pLFGDajFYvnBK59/qcOgTpCWpRj3DRglHJp8Eu7aI9tTLrfGed1
MWpJPtrvFKFWdc4HjC7XEcSo/KwIzpI9d92oiXB7LwfiLoCrVmDvwTCxICqe3aLM
XgU9otlF2k8cK9s7IRb0UEo2wj06B1FUVGlBpd6YbxhI/mLtgvQGRb/RXacbEJC1
fvc7YtgjeA1piiVadonjrS2WuxMdz7aPxgHGDuC9pO5/O04xSBIZ1w96oxnbyxtp
dFH+Cf5lNIbUcAn+V6HIyc54ZOWgdc7ZdlBbnXrBHM2eqsF/+VDJuEynCr/rVTcs
l29Iwq/jcN6vP1mFeoBAPkLtBFQ3ReszjK7kaiDsK6NG7oNSMDWyMf6L4DDpO5kr
MScLAqZHU9/7lXg+CmtBw2EJGQW5/cSLWQuIUqWrtDJkRD0yjvVS+mQyHrx+hkFI
y6SxaHpj7y98uBActiB/8CBJZJ+g8w1hsB0ttlN7qOUr2zq9cf0qzRgvG+6k9zlp
SN5AG5zWoUF6JFfyd9u5GZWfpwmHiiOfqmXpy3X/riXW5YsVEYUiXtmlLydCPt/x
+SyehRxLa0DA79vFju5ykeNj4GmwR3DaYKuYTJDie2m7olt9TQY2Y6Erk+aHDVkD
90ji6y4LTivFUPo364/rTliM7mO80sRb4/Nw1Fu7MfMnuHmQq+w=
=oazr
-----END PGP SIGNATURE-----

--prnwotkb3gjhqohe--


--===============8160318567202742768==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8160318567202742768==--

