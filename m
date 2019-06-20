Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234DC4CA5A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RIve7NB+DaZsu5ikdujsm4aVXjkXznajJmlaA2nNgKc=; b=uoYxoMTwx+dt5D31o7SJovwoE
	7oTtBfsPGZCF6XNQv2XIkL3oQtTt/Uk1NfSBRbSQnMm0Rlbh6ZIrl5H3q3OatZykGP8PxXwqkY17k
	tbCr3ubf+KxFB2NbDFjAxSbyAyhMuhz13YLqsh96t1vXaYXQohzxeP/qARp3t95GwatTz4A9NHjh4
	p3nj9Tz4HSOF3j31cLR6AQJkcepruQ1cjaYLE0rf78iJyEO+ZhvCSIB4beyKdVH5ZhI3Jnb5h6AMU
	4IaeW4001hfAg9kBuhT44GS9WFs83iF1TDUiER+Jje52wQDrsecIVeQjteYZwkgiB9iF8/uK930Ld
	dFAWUyZmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdt4b-0005eF-Fk; Thu, 20 Jun 2019 09:09:37 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdt4O-0005e8-Ht
 for linux-arm-kernel@bombadil.infradead.org; Thu, 20 Jun 2019 09:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=npzSyTYttvUp0v41W4c6wlOTjsmE/npDLARSse/TGjI=; b=UMLFVqNtW+EN9iOlcFKFIlejm
 fnl13UgpGCWCNSI+0TjUKp7UZRcUrtKNhAojsVk3NH8l1G0d3V9ncUnhppEdcw9/FzoeODUr7hECX
 N5RbmVScwZV2vnHcvsoob6qsZVS2d3y9mF8nO29MSCGzFhtbmUPyxpIf32xlpUSAMX7xYgZPKXSHJ
 6ebTETAIrQ82+7y+Ye35Z4jgIsaRZeqeYkYovSPBhoMAyoPoShiZ+KOH7gLmXDfn5W4Q/ihAJLxGZ
 gSah3sagbhb1U+zG5CGh3qEFmH1d66VGKBbogXi1FCWp54VCOqVIjG9nPMWxjTvpyKEAEiCAsf2JO
 /sI2AfItw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdt4J-000511-RG
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:09:21 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 145D4FF80E;
 Thu, 20 Jun 2019 09:08:57 +0000 (UTC)
Date: Thu, 20 Jun 2019 11:08:57 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH v3 01/16] dt-bindings: net: Add YAML schemas for the
 generic Ethernet options
Message-ID: <20190620090857.z6gru4cilq6z7e4w@flea>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <20190619140314.GC18352@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20190619140314.GC18352@lunn.ch>
User-Agent: NeoMutt/20180716
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Rob Herring <robh@kernel.org>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============2425472036496638087=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2425472036496638087==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="52tq5ryctgrkeugj"
Content-Disposition: inline


--52tq5ryctgrkeugj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

On Wed, Jun 19, 2019 at 04:03:14PM +0200, Andrew Lunn wrote:
> > +  phy-connection-type:
> > +    description:
> > +      Operation mode of the PHY interface
> > +    enum:
> > +      # There is not a standard bus between the MAC and the PHY,
> > +      # something proprietary is being used to embed the PHY in the
> > +      # MAC.
>
> ...
>
> > +
> > +  phy-mode:
> > +    $ref: "#/properties/phy-connection-type"
> > +    deprecated: true
>
> I don't think phy-mode is actually deprecated. ethernet.txt actually says:
>
> "This is now a de-facto standard property;" and no mentions that is
> should not be used. Looking at actual device trees, phy-mode is by far
> more popular than phy-connection-type.

Looking at the phy-connection-type documentation, I was under this
impression, sorry.

I'll drop it then.

> fwnode_get_phy_mode() first looks for phy-mode and only falls back to
> phy-connection-type if it is not present. The same is true for
> of_get_phy_mode().
>
> > +  fixed-link:
> > +    allOf:
> > +      - if:
> > +          type: array
> > +        then:
> > +          minItems: 1
> > +          maxItems: 1
> > +          items:
> > +            items:
> > +              - minimum: 0
> > +                maximum: 31
> > +                description:
> > +                  Emulated PHY ID, choose any but unique to the all
> > +                  specified fixed-links
> > +
> > +              - enum: [0, 1]
> > +                description:
> > +                  Duplex configuration. 0 for half duplex or 1 for
> > +                  full duplex
> > +
> > +              - enum: [10, 100, 1000]
> > +                description:
> > +                  Link speed in Mbits/sec.
> > +
> > +              - enum: [0, 1]
> > +                description:
> > +                  Pause configuration. 0 for no pause, 1 for pause
> > +
> > +              - enum: [0, 1]
> > +                description:
> > +                  Asymmetric pause configuration. 0 for no asymmetric
> > +                  pause, 1 for asymmetric pause
> > +
>
> This array of 5 values format should be marked as deprecated.

Right, I'll add it.

> > +
> > +      - if:
> > +          type: object
> > +        then:
> > +          properties:
> > +            speed:
> > +              allOf:
> > +                - $ref: /schemas/types.yaml#definitions/uint32
> > +                - enum: [10, 100, 1000]
>
> This recently changed, depending on context. If PHYLINK is being used,
> any speed is allowed. If phylib is used, then only these speeds are
> allowed. And we are starting to see some speeds other than listed
> here.

phylink seems to be described in a separate binding document, maybe we
can adjust that later?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--52tq5ryctgrkeugj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQtNKQAKCRDj7w1vZxhR
xU1mAP9UxX/bUs/+sGjv2lf1IVQAuWCDAFQPe+SNpltGaaRbzAD/Z9kZa0JhhgBo
aIO1LH2YT0uPFhUlcf7U7bvipC2mnQ0=
=QITW
-----END PGP SIGNATURE-----

--52tq5ryctgrkeugj--


--===============2425472036496638087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2425472036496638087==--

