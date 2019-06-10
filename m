Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9673B677
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cHkSpkH4zYsBEWKEh2dfNLUMD4A8z9CWCbGeB8I8oXM=; b=R+hzvliqsPrVJ5IN5O6Re7tBM
	V3xI0gNcuUtjSaYN7G4IbB7S9VLhAO5TBaZVye5KBQwDMwncHym1J0OKrx8nXuhPRGcwHqp6kJ/zJ
	dRexLDlBCT1Zib5ej4OmTWD0RNEeYsTa4cJmO43sz0vAlcPt+V+Uidfd4/iqv9eBs6aufgl/Fn/n+
	zH/xfZWTzQLZ9DcDcTy2wwwiFss3EPppX+GyQ/V3KaUr/FlzAobsjt4hOoRRoT8LG7U7i9YdxAfpW
	fkoNzCH7tnHoklVcyA0iriIBxg22Qjczvq/EiFla3ZROgUEoq0I8QAchWuf085eIG3WFpi+DsVWWo
	tbHclUqRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haKi5-0001ar-4o; Mon, 10 Jun 2019 13:51:41 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haKhp-0001ZH-5G; Mon, 10 Jun 2019 13:51:27 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 22AD7E0004;
 Mon, 10 Jun 2019 13:51:09 +0000 (UTC)
Date: Mon, 10 Jun 2019 15:51:09 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset
 GPIO
Message-ID: <20190610135109.7alkvruvw2jbtwph@flea>
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609204510.GB8247@lunn.ch>
 <20190610114700.tymqzzax334ahtz4@flea>
 <CAFBinCCs5pa1QmaV32Dk9rOADKGXXFpZsSK=LUk4CGWMrG5VUQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFBinCCs5pa1QmaV32Dk9rOADKGXXFpZsSK=LUk4CGWMrG5VUQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_065125_513195_B4FD9D41 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, alexandre.torgue@st.com,
 bgolaszewski@baylibre.com, netdev@vger.kernel.org, linus.walleij@linaro.org,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, joabreu@synopsys.com,
 khilman@baylibre.com, peppe.cavallaro@st.com,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5597522775939242324=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5597522775939242324==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hlwqgl7jkkjm4sqs"
Content-Disposition: inline


--hlwqgl7jkkjm4sqs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Martin,

On Mon, Jun 10, 2019 at 02:31:17PM +0200, Martin Blumenstingl wrote:
> On Mon, Jun 10, 2019 at 1:47 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > Hi Andrew,
> >
> > On Sun, Jun 09, 2019 at 10:45:10PM +0200, Andrew Lunn wrote:
> > > > Patch #1 and #4 are minor cleanups which follow the boyscout rule:
> > > > "Always leave the campground cleaner than you found it."
> > >
> > > > I
> > > > am also looking for suggestions how to handle these cross-tree changes
> > > > (patch #2 belongs to the linux-gpio tree, patches #1, 3 and #4 should
> > > > go through the net-next tree. I will re-send patch #5 separately as
> > > > this should go through Kevin's linux-amlogic tree).
> > >
> > > Patches 1 and 4 don't seem to have and dependencies. So i would
> > > suggest splitting them out and submitting them to netdev for merging
> > > independent of the rest.
> >
> > Jumping on the occasion of that series. These properties have been
> > defined to deal with phy reset, while it seems that the PHY core can
> > now handle that pretty easily through generic properties.
> >
> > Wouldn't it make more sense to just move to that generic properties
> > that already deals with the flags properly?
> thank you for bringing this up!
> if anyone else (just like me) doesn't know about it, there are generic
> bindings defined here: [0]
>
> I just tested this on my X96 Max by defining the following properties
> inside the PHY node:
>   reset-delay-us = <10000>;
>   reset-assert-us = <10000>;
>   reset-deassert-us = <10000>;
>   reset-gpios = <&gpio GPIOZ_15 (GPIO_ACTIVE_LOW | GPIO_OPEN_DRAIN)>;
>
> that means I don't need any stmmac patches which seems nice.

I'm glad it works for you :)

> instead I can submit a patch to mark the snps,reset-gpio properties in
> the dt-bindings deprecated (and refer to the generic bindings instead)
> what do you think?

I already did as part of the binding reworks I did earlier today:
http://lists.infradead.org/pipermail/linux-arm-kernel/2019-June/658427.html

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hlwqgl7jkkjm4sqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP5gTQAKCRDj7w1vZxhR
xTX2AQDErQs37AlgMjoegkuBtrfya5ARL23dKC2yJPk5bFAPIQEA8brM32gT3g4u
5bbyMYmku0KJTlZo2bHr8P+VKtd70A0=
=Jc07
-----END PGP SIGNATURE-----

--hlwqgl7jkkjm4sqs--


--===============5597522775939242324==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5597522775939242324==--

