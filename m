Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA4543672
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 15:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XeuPmZhTnzikf9rFJAsSmDTIox3m5GcftuQiA+7+9MY=; b=eeHC2j8xCpQWZNseh9k8EOleN
	q2yCUu/kEDRQd4Lrf4aYBJSrFaKcWZdDY4pUYHc5AJeWgiwLHjdxQuOvPlkL04HqbHarYlT+URS+p
	sGAMI8TETXrUoD07Vev6/ksZlF0fpWUPID0mkvyLDg6LxdEgekBOdb3APGlVcEah7ntJqLWn8rqrd
	yMdcWur7BXfQNlbfhc5Ew6fia6qqP/rhqZ2mdmhqvlw7+0pJDwNqCNEnV1REa4h6pZ4RxPv73gO9X
	CHzzAeUYc/JVgLoWhfS45ZUBok7yxyJEhs7YA6OPugFPZ7cqpJrL9L+5Q2cyLSeMbc6qkdVOIuD9+
	GBwTwOKUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbPjm-0002yp-5J; Thu, 13 Jun 2019 13:25:54 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbPjW-0002xq-SA
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 13:25:40 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id B224FC0002;
 Thu, 13 Jun 2019 13:25:15 +0000 (UTC)
Date: Tue, 11 Jun 2019 16:58:56 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
Message-ID: <20190611145856.ua2ggkn6ccww6vpp@flea>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143139.GG28724@lunn.ch>
 <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_062539_238634_25A60153 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============2313426000568281042=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2313426000568281042==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="akgu3rpnhcjfd75m"
Content-Disposition: inline


--akgu3rpnhcjfd75m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Mon, Jun 10, 2019 at 12:59:29PM -0600, Rob Herring wrote:
> On Mon, Jun 10, 2019 at 8:31 AM Andrew Lunn <andrew@lunn.ch> wrote:
> >
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - interrupts
> > > +  - clocks
> > > +  - phy
> > > +  - allwinner,sram
> >
> > Quoting ethernet.txt:
> >
> > - phy: the same as "phy-handle" property, not recommended for new bindings.
> >
> > - phy-handle: phandle, specifies a reference to a node representing a PHY
> >   device; this property is described in the Devicetree Specification and so
> >   preferred;
> >
> > Can this be expressed in Yaml? Accept phy, but give a warning. Accept
> > phy-handle without a warning? Enforce that one or the other is
> > present?
>
> The common schema could have 'phy: false'. This works as long as we've
> updated (or plan to) all the dts files to use phy-handle. The issue is
> how far back do you need kernels to work with newer dtbs.

I guess another question being raised by this is how hard do we want
to be a deprecating things, and should the DT validation be a tool to
enforce that validation.

For example, you've used in you GPIO meta-schema false for anything
ending with -gpio, since it's deprecated. This means that we can't
convert any binding using a deprecated property without introducing a
build error in the schemas, which in turn means that you'll have a lot
of friction to support schemas, since you would have to convert your
driver to support the new way of doing things, before being able to
have a schema for your binding.

And then, we need to agree on how to express the deprecation. I guess
we could allow the deprecated keyword that will be there in the
draft-8, instead of ad-hoc solutions?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--akgu3rpnhcjfd75m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP/BsAAKCRDj7w1vZxhR
xU7tAQDcrE7AmbrNpKlW8XjNBwjZBTaNMJbwICwP0nzygayxHQD+MjHzz6TZnhQF
Qm1qbD7O25WDq9BPnYW8XMjLhY6IgQE=
=f1jE
-----END PGP SIGNATURE-----

--akgu3rpnhcjfd75m--


--===============2313426000568281042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2313426000568281042==--

