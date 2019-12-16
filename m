Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106C5120441
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:45:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+2rA8hMIdckTA3OeHPa20TRD1xm1bk0ec1dS7MkvGbw=; b=CeKLLxOkpDjRXaOh6RH/BBGOE
	CbZcppF7l7uYPNKJQsI2oY+suwXV5g8y5zplYqGLenPb6H8wttpxK+swJo/Tw7xwZHE4KzHgixbQ+
	L+rRs8CYfGhxosvmZ/BCLXAtNrWkSlJate+wbXuqcYG3w7l/1qQSccRRpYW2GwyYZPFGDNdq7rcFz
	dx9dt1S5csFitI3ZylrvMViNLkJKehl4ha/5Ib7wIuiEpcsw8PtSYTe25i9jkCKWt12KzE42B2cK5
	B/q6bILqlhoOW4OCVm3thWFG3ZHsqMk/Ysy2WUuH4Y1kpbsh1Q+py00lYSO6rNn3WAhig9LSZK0lj
	aVE7DWgyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igooP-0001C1-Js; Mon, 16 Dec 2019 11:45:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igooA-0000cv-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:45:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6BFE1FB;
 Mon, 16 Dec 2019 03:44:56 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3535C3F6CF;
 Mon, 16 Dec 2019 03:44:56 -0800 (PST)
Date: Mon, 16 Dec 2019 11:44:54 +0000
From: Mark Brown <broonie@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v3 3/6] dt-bindings: mfd: da9062: add regulator voltage
 selection documentation
Message-ID: <20191216114454.GB4161@sirena.org.uk>
References: <20191129172537.31410-1-m.felsch@pengutronix.de>
 <20191129172537.31410-4-m.felsch@pengutronix.de>
 <20191204134631.GT1998@sirena.org.uk>
 <20191210094144.mxximpuouchy3fqu@pengutronix.de>
 <AM5PR1001MB099497419E4DCA69D424EC35805A0@AM5PR1001MB0994.EURPRD10.PROD.OUTLOOK.COM>
 <20191211170918.q7kqkd4lrwwp7jl3@pengutronix.de>
 <20191212161019.GF4310@sirena.org.uk>
 <20191212162152.5uu3feacduetysq7@pengutronix.de>
 <20191212165124.GJ4310@sirena.org.uk>
 <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20191216085525.csr2aglm5md4vtsw@pengutronix.de>
X-Cookie: Backed up the system lately?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_034502_507984_5E051AC1 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Support Opensource <Support.Opensource@diasemi.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "andrew@aj.id.au" <andrew@aj.id.au>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "joel@jms.id.au" <joel@jms.id.au>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5410585593514957022=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5410585593514957022==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oC1+HKm2/end4ao3"
Content-Disposition: inline


--oC1+HKm2/end4ao3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 09:55:25AM +0100, Marco Felsch wrote:
> On 19-12-12 16:51, Mark Brown wrote:

> > Something needs to say what that thing is, especially if it's runtime
> > controllable.  In your case from the point of view of software there is
> > actually no enable control so we shouldn't be providing an enable
> > operation to the framework.

> The enabel control signal is always available, please check [1] table
> 63. There is a mux in front of the enable pin so:

What I'm saying is that I think the binding needs to explicitly talk
about that since at the minute it's really confusing reading it as it
is, it sounds very much like it's trying to override that in a chip
specific fashion as using gpiolib and the GPIO bindings for pinmuxing is
really quite unusual.

--oC1+HKm2/end4ao3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl33bjYACgkQJNaLcl1U
h9CVdAf+Kp9Gt6jI1smdYRC5q9QzC1/I+pAe/kPYZU9nCkKrN7T/h4QamB0ktmgq
8ovpP1GU56emAoDhnLgevc9IiJHlvlzog0LL0RWzMb4zf7CuC3hqDt/mIEwKvVqv
vXueIgBOwgBYjkunL4ECOsMz4I1v5uBCmbJTCQwnZWpzkTdabJmr49W0LX2y/yPI
9AgCDJBU1mvD78xAlwMiBWHILuSWcja4dXyBFE0Q4IWyFF1HkslkgrBQL7YY0LaI
wFmnd/nERtjKaTK3ZqL7cXKjz+PbyswmJXT0E1Y4rDRit//tgtJVoUGVmCP5KYpY
bBjSjH7xodB796EmcMPayWwZ23L96g==
=MSqr
-----END PGP SIGNATURE-----

--oC1+HKm2/end4ao3--


--===============5410585593514957022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5410585593514957022==--

