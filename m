Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA9F23AA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ir16RS8ETT31xisBtYhJs4q9IMMN8ViVH1b8w4bs4io=; b=D79PrRysHs3E554q9RzMBPhnp
	qZ8wwscAj/5SrUeYX1T9uJTlyKZlTJaL0nHKJ+9QPmVAooJiCK4zJv6xa8/Aqz86qmlXzn6ao5uvu
	QlnGCyf0EgqEuq8+xWev/5Dx6ckgD2t/IgaOfE8GTmQXB47TfHGy+R4mrNdT2QWZe3uZJsjYh7sPt
	gNx+7mOUqwfT7Ut+3PHmAiFvzfjnCO45HtICsYZRDoY9MaybHYXiYNI4qMXAf7Qray/EVhzr/tiLs
	iW3gaQBr1oEYPJIm9xHbbEFdd++atirpu8RzCFt8hV1S73AWs5TavrSy5VyEd0yBLZOpchBhoM60Q
	Sz1/u096w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjVe-0005Cl-IZ; Mon, 20 May 2019 14:43:26 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjVT-0005CE-Lx
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:43:17 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 67E061BF20E;
 Mon, 20 May 2019 14:42:59 +0000 (UTC)
Date: Mon, 20 May 2019 16:42:58 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: watchdog: add Allwinner H6 watchdog
Message-ID: <20190520144258.eauhvvwfxuhiczie@flea>
References: <20190518152355.11134-1-peron.clem@gmail.com>
 <20190518152355.11134-2-peron.clem@gmail.com>
 <20190520073529.nxptfbibexrqyzfi@flea>
 <CAJiuCcdrW7RcEKePCr1DaL-be8dA5oOjvHdxYkiu=h37z2e7tw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdrW7RcEKePCr1DaL-be8dA5oOjvHdxYkiu=h37z2e7tw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_074315_867880_ECCAEED8 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============6598481268391925981=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6598481268391925981==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vpv227evtpkmkqyk"
Content-Disposition: inline


--vpv227evtpkmkqyk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 20, 2019 at 10:14:10AM +0200, Cl=E9ment P=E9ron wrote:
> >
> > > +     - "allwinner,sun4i-a10-wdt"
> > > +     - "allwinner,sun50i-a64-wdt","allwinner,sun6i-a31-wdt"
> > > +     - "allwinner,sun50i-h6-wdt","allwinner,sun50i-a64-wdt",
> > > +       "allwinner,sun6i-a31-wdt"
> >
> > Is there a reason to keep the A64 compatible?
>
> Yes, A64 and H6 has the exact same memory mapping looking at the datashee=
t.
> So if there is an errata or a new feature for the A64, it should be
> also compatible with the H6.
> Which is not the case with A31 (WDT_KEY_FIELD is not preset)

The thing is, if you use those three compatibles, then you're saying
that it's ok for the OS to use first the H6 driver, then the A64
driver, and then the A31 driver.

If the A31 isn't compatible, then it shouldn't be listed there. And if
it is, then you can skip the A64 compatible.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--vpv227evtpkmkqyk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOK88gAKCRDj7w1vZxhR
xQlAAPsE6kzsQQMSHryqgwmd6OWp/s6AtN+TcU7ip7ukhfmmlgEA24/Tc3t6XRAH
2cNOcp+yz6bb7jinJ2k9sXjsqBcyywo=
=7TNO
-----END PGP SIGNATURE-----

--vpv227evtpkmkqyk--


--===============6598481268391925981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6598481268391925981==--

