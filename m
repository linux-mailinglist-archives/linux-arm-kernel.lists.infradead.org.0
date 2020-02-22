Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D25D2168E81
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:33:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=c63h1DBEjqXaG4PkyNZcKp7oA6U50JM1afgMoHOU/yE=; b=BNP7JX05SYCm4w3LFoSbRtd2W
	f0+kE/tRMvYJDARA28VuI2xxujUxe7Lj81+aJoE84OneRL46VojkfZqU8Pil7+C+Bwco0CMY/BUCM
	sZkg920PiehlcE2gbnG4jIrXGY5XHS75VElXj/QYuqpmlJY1n/oXLHZ+gxfru6dxvFZWVgsxEWpg5
	SL1koryGC9y+H9WEN4SYaoISnK2xxJNkvgqQDi7sDLnQSXkrvdVq3uEGtswNskjD413taj6QtEwOp
	+5TRmONI35UxFCUJozXqiAnGpKsken8hUuR7wj8/MbwE+lOMgI+KvtDnoE8S2VyA/08ac27JpmJxa
	SOdDy9Rxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5T25-0003sB-2o; Sat, 22 Feb 2020 11:33:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5T1t-0003ri-Gd
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:33:07 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id DAFA52C07F9;
 Sat, 22 Feb 2020 12:33:01 +0100 (CET)
Date: Sat, 22 Feb 2020 12:33:01 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: i2c: at91: document optional bus
 recovery properties
Message-ID: <20200222113301.GA1716@kunai>
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-2-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200115115422.17097-2-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_033305_703997_ACF1D29B 
X-CRM114-Status: UNSURE (   7.33  )
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
Content-Type: multipart/mixed; boundary="===============5803468872050274691=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5803468872050274691==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2020 at 01:54:17PM +0200, Codrin Ciubotariu wrote:
> From: Kamel Bouhara <kamel.bouhara@bootlin.com>
>=20
> The at91 I2C controller can support bus recovery by re-assigning SCL
> and SDA to gpios. Add the optional pinctrl and gpio properties to do
> so.
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> [codrin.ciubotariu@microchip.com: rebased]
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to for-next, thanks!


--pf9I7BMVVzbSWLtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5REWUACgkQFA3kzBSg
KbYSSQ/+Og6OQ8KKYGzfH/m0bVgrt4ZZ6XseXHSbqLqZPLwt0ZdTqJRwTTC4nGoA
VwQTF8w/OteA1gO2MIX9aibT9CAiqVM3lgPKBNyABF9IAHKVLjkm2eqwe3HoGfbX
30iL3vfiJqkXsgN/l+WQiFzEB0Pzb3XfUJd1WDoKyMRckdKsYiUlMX8tQyP8XN2a
qHebhGgDLLIy4Lf/mYdTYmVsa5U+RHT8oTfMlwDUaYNs+u6cx6CuHdN2bkVvKMqE
0BMoSi6MNpE1jY1C3VrfooxqVlGFoxYIC2mlIxDYY1B6pRJRXuot3cNdvudVPC82
B/+MOeJRCRsMAmZ/eOP8sGBV+D978ackCQvKJtHDaOedf7eIzoeTA7BouAQvpqp/
/KY6mcfNB4JQCjQOWnL0gKPfLTf5p2/C8F1ozdefav+en0CyxGA957KStiXy6YBJ
DeJbJz5TMmEbPzFvysflXbFr9h8kfDbPMuiBJjm1ICS3KJMPmMPAoDQPoTPREHRC
F5vK00iTwuiFTHm8NnmD4FT0qN0XJBC3JCU+eVkPlCCd1Jb9WGZVYP78/vXRmYKx
AAn1SO2fM1MzgxEaE84V3CwCRltuMkE7h9EBTPLCO2iKAFMW1ww2F/Mc2zhs1tbt
wMPhow+wsY9KonG0r4xTplzJjry9EcECTXCJUnti9RNZ3Zdzbao=
=+3Bp
-----END PGP SIGNATURE-----

--pf9I7BMVVzbSWLtt--


--===============5803468872050274691==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5803468872050274691==--

