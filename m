Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C37C91DBA12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 18:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9H7ndB33zMGWSB3DABF8VDhTyf4xYfgAXJ5Rd1O2L/w=; b=B1xIgGWtWiIPRgFvC3uMQ9IRL
	5WLIUcXlRe0eRwtCEXHWT+RtrosqQa62ZeIeo/cypBTNc2V4tgSo4CjDVOJon56wWleFgLZmC8P9k
	4L4z4kl6Yp+1B83wLe6ZPRxfkHZ19oh0VELBrJJfWDSXq6FDULs1uSnpMLilGRYHGWpsVHFnMjlJS
	wRfAHJu5la+NXixHVKrx9R3RqrO1Z0OR+7M2ipa0Xmf1thegN6fOYuYwuebLf0X1Uw4NPaMxKpR0x
	FzPf4Hx+vh0Uk2ZV1Fu6S1qUf1P2w+d8+DQyqs/FU5S/OBN7Oh5V3PA4e54qDdO5WxqBfI2oeYQ/V
	qQs5TydbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbRs7-0006bd-NM; Wed, 20 May 2020 16:47:11 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbRfQ-0005mh-JW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 16:34:06 +0000
Received: from localhost (p5486cd24.dip0.t-ipconnect.de [84.134.205.36])
 by pokefinder.org (Postfix) with ESMTPSA id 9119C2C1FD1;
 Wed, 20 May 2020 18:27:24 +0200 (CEST)
Date: Wed, 20 May 2020 18:27:24 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin.Ciubotariu@microchip.com
Subject: Re: Re: [RFC PATCH] i2c: at91: Fix pinmux after devm_gpiod_get() for
 bus recovery
Message-ID: <20200520162724.GG5759@ninjato>
References: <20200415070643.23663-1-codrin.ciubotariu@microchip.com>
 <20200505151256.GF2468@ninjato>
 <c7a35978-03dd-3c73-6e7d-15ed40b5c57c@microchip.com>
MIME-Version: 1.0
In-Reply-To: <c7a35978-03dd-3c73-6e7d-15ed40b5c57c@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_093404_825601_33C53EC6 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: alan@softiron.com, kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, Ludovic.Desroches@microchip.com,
 linux-i2c@vger.kernel.org, linux@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0943240688033884673=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0943240688033884673==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DWg365Y4B18r8evw"
Content-Disposition: inline


--DWg365Y4B18r8evw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > This will do for 5.7. For 5.8 or 5.9, I can imagine to take the two
> > pinctrl_state pointers into bus_recovery_info and handle all this in the
> > core. I will try this later this week if noone is super-eager to try it
> > out before.
> >=20
>=20
> By 'all this' you mean to move the entire function in the core, right?=20
> Having just these two pointers bus_recinovery_info won't help much. I=20
> can try it, if you haven't already started...

I mean to add those two pointers to bus_recinovery_info and if they are
populated, then the I2C core is doing the necessary magic (or maybe just
the pinctrl handle and assume the states have fixed names?). Russell
just sent patches to add it to the PXA driver, so we could now double
check how much could be factored out.

I haven't started yet, let's keep in touch who started first :)


--DWg365Y4B18r8evw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7FWmgACgkQFA3kzBSg
KbYxwRAAmUjg/PPDIGnjUCza3uhJUYZsY2bgkfy5OcjxXVotYkKYSBhrtw26GG33
DU2gPBQzDKZWB3T0kZo54GA6ZvzxRGuLKhfWLvLhbDdzz/hy94jX+DpoNJQ8mzr5
VPpn61UjFAd8/+W+DkpYzovXAQP78o2luuhnFuoqNZbhyEGJ4yWfHY+qICUJd1Ac
bdtL8oikCf653etM0rtpUPQQ6x/iw1cMH4u6xmtFSFi56jzdVnZB0MJKnc//t7VT
HfCkBiuOBu78HE007oPG0ylKU7TL8f5a2QCd0cLt87oDr2frfHTTVpLj+n7m8BAY
VEqc4bchKi58nHL8nD3h1kqFFjSxN08AFRcd6gWeUxyfVUTeuNhhxrzHnGObWJVp
ZKXcCnS6dgfKm2o/589Qo6I5H6VzYPTGUSwNLrSwUizT8sdqPawhQaKE3CE5sLYs
8OC7B/QmHT3+jk7Zlz0rQDT9w5mmvyP600CczkK+6ZXNFMuKjDz67X8IERmWoH6e
lp/7qtxPKxAXSPJ4qTNa3oIW2LIWNJ2dZJVSHGXPi/CuKwJMvJZs8HnXAY6BIWFj
MEFg1qbTxQ8fn3DNyRwf2iFkmS20RHoh2m80TsNcv71LYoq0ioASu/U4swiPh249
KnaM3i59M9VIN8cvqnpiAQCmgNJv+hzJifmd8tVpfswSfprOJgk=
=IUMo
-----END PGP SIGNATURE-----

--DWg365Y4B18r8evw--


--===============0943240688033884673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0943240688033884673==--

