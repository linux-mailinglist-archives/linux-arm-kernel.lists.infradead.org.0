Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6113B438
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 13:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1BS3qdqV7nzcoUtMxav9ZmQmOX2SB7KNYL9ljRsWyxk=; b=XO3IxQjceDYloPA4znn1MAbEO
	URL/e+I6qgXu9x0JKC+kq7CwmePfbWWMAldgoZiwykwZ15AhoFjWVBKXY5qmOIWdqSlyq6XpDCBT2
	ESGiAwBlMJ3wglTFk5DeL3vgv+2sVp4BkTH5SuSwR/slW9aImObPIIhtcBKYyqbJZtgDd4ERMNXjL
	DltcjIVPL5T3hlAabwM/EV4Oe7USDmJDHFkLVzs1+FcF19phKI3Q5AEozyTDORK/dLSCo5z5520/H
	DYA0bB/dbp/NgYeK4pf++SNyLia2gbuU3WM+J2ynBp6GkeKYrqEl74hi7JLmupXRiIeTCrttqGhth
	YlxdHMxvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIml-0000kF-Qm; Mon, 10 Jun 2019 11:48:23 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIlf-0008VP-85; Mon, 10 Jun 2019 11:47:17 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 2DA15FF811;
 Mon, 10 Jun 2019 11:47:00 +0000 (UTC)
Date: Mon, 10 Jun 2019 13:47:00 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset
 GPIO
Message-ID: <20190610114700.tymqzzax334ahtz4@flea>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609204510.GB8247@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20190609204510.GB8247@lunn.ch>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_044715_557584_4570DD6E 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-gpio@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev@vger.kernel.org, linus.walleij@linaro.org, narmstrong@baylibre.com,
 linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com, joabreu@synopsys.com,
 khilman@baylibre.com, peppe.cavallaro@st.com,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8645625802909445824=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8645625802909445824==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fo7fw3siaxhdftz7"
Content-Disposition: inline


--fo7fw3siaxhdftz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

On Sun, Jun 09, 2019 at 10:45:10PM +0200, Andrew Lunn wrote:
> > Patch #1 and #4 are minor cleanups which follow the boyscout rule:
> > "Always leave the campground cleaner than you found it."
>
> > I
> > am also looking for suggestions how to handle these cross-tree changes
> > (patch #2 belongs to the linux-gpio tree, patches #1, 3 and #4 should
> > go through the net-next tree. I will re-send patch #5 separately as
> > this should go through Kevin's linux-amlogic tree).
>
> Patches 1 and 4 don't seem to have and dependencies. So i would
> suggest splitting them out and submitting them to netdev for merging
> independent of the rest.

Jumping on the occasion of that series. These properties have been
defined to deal with phy reset, while it seems that the PHY core can
now handle that pretty easily through generic properties.

Wouldn't it make more sense to just move to that generic properties
that already deals with the flags properly?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fo7fw3siaxhdftz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP5DNAAKCRDj7w1vZxhR
xa7wAPsFyeyyMzy2Mo76JgsYSYvgpcYRFmoiWzu3x+sgya0khgEAjtxK626tAXRA
KJga7pcCDwguE9DoA7ftHh5GzRGyjQo=
=h3Ed
-----END PGP SIGNATURE-----

--fo7fw3siaxhdftz7--


--===============8645625802909445824==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8645625802909445824==--

