Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5241F4CB66
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jk2xAS6cBhHl/92h2A1Tn/AhzxO9Fz21nP99X5A3PJs=; b=iZ99/t/HslKjCr6x3fgU6S5rC
	1eq8vCPTkbCuGZzc0TFMUv2cUcX0Pls1+6dv81vqzrPJfOBbB782aoIMiAtO6zc2FfQcdaeSpq3uX
	RjYOvIvRRfoLyyRPshMsdnNbReFx+mfLwMoDJfVK12e+7xCKO3vBcte/KLS4Msv2js01ZTetRY9JD
	u1dGCUcGmQLGvPG2hYGNgixSpjESQg+zWRhbwpeGI4dlGQMTgZS/MtT96mmZV1IRUvTLLN6/75/4P
	VDbrR2tl3k1xIrQqDQerPt2Cc/Xade7WePcCjgu0emG6/8r13m8knNDrd7R0fJKp4v0i9aSV6h4aH
	/s5DnsCuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtol-0002BM-8L; Thu, 20 Jun 2019 09:57:19 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtoV-0002Ac-Jz
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:57:06 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id CCFE8200022;
 Thu, 20 Jun 2019 09:56:53 +0000 (UTC)
Date: Thu, 20 Jun 2019 11:56:53 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 03/16] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
Message-ID: <20190620095653.ffq7ii5n6bzlyfpl@flea>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
 <89b834af795fa6ad5ba1f04a5a61c54204bf4f96.1560937626.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKeGrXEECmP8Gec5DdLTikyx0xS+kaopRXNQ7RUEJbx4g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKeGrXEECmP8Gec5DdLTikyx0xS+kaopRXNQ7RUEJbx4g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_025703_973289_DD8FA3AF 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============6336541170934973334=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6336541170934973334==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="onszyfussrb4jgai"
Content-Disposition: inline


--onszyfussrb4jgai
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jun 19, 2019 at 08:17:52AM -0600, Rob Herring wrote:
> On Wed, Jun 19, 2019 at 3:47 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The MDIO buses have a number of available device tree properties that can
> > be used in their device tree node. Add a YAML schemas for those.
> >
> > Suggested-by: Andrew Lunn <andrew@lunn.ch>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > ---
> >
> > Changes from v2:
> >   - New patch
> > ---
> >  Documentation/devicetree/bindings/net/mdio.txt  | 38 +-------------
> >  Documentation/devicetree/bindings/net/mdio.yaml | 51 ++++++++++++++++++-
> >  2 files changed, 52 insertions(+), 37 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/mdio.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/net/mdio.txt b/Documentation/devicetree/bindings/net/mdio.txt
> > index e3e1603f256c..cf8a0105488e 100644
> > --- a/Documentation/devicetree/bindings/net/mdio.txt
> > +++ b/Documentation/devicetree/bindings/net/mdio.txt
> > @@ -1,37 +1 @@
> > -Common MDIO bus properties.
> > -
> > -These are generic properties that can apply to any MDIO bus.
> > -
> > -Optional properties:
> > -- reset-gpios: One GPIO that control the RESET lines of all PHYs on that MDIO
> > -  bus.
> > -- reset-delay-us: RESET pulse width in microseconds.
> > -
> > -A list of child nodes, one per device on the bus is expected. These
> > -should follow the generic phy.txt, or a device specific binding document.
> > -
> > -The 'reset-delay-us' indicates the RESET signal pulse width in microseconds and
> > -applies to all PHY devices. It must therefore be appropriately determined based
> > -on all PHY requirements (maximum value of all per-PHY RESET pulse widths).
> > -
> > -Example :
> > -This example shows these optional properties, plus other properties
> > -required for the TI Davinci MDIO driver.
> > -
> > -       davinci_mdio: ethernet@5c030000 {
> > -               compatible = "ti,davinci_mdio";
> > -               reg = <0x5c030000 0x1000>;
> > -               #address-cells = <1>;
> > -               #size-cells = <0>;
> > -
> > -               reset-gpios = <&gpio2 5 GPIO_ACTIVE_LOW>;
> > -               reset-delay-us = <2>;
> > -
> > -               ethphy0: ethernet-phy@1 {
> > -                       reg = <1>;
> > -               };
> > -
> > -               ethphy1: ethernet-phy@3 {
> > -                       reg = <3>;
> > -               };
> > -       };
> > +This file has moved to mdio.yaml.
> > diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
> > new file mode 100644
> > index 000000000000..8f4f9d0a2882
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/net/mdio.yaml
> > @@ -0,0 +1,51 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/net/mdio.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: MDIO Bus Generic Binding
> > +
> > +maintainers:
> > +  - Andrew Lunn <andrew@lunn.ch>
> > +  - Florian Fainelli <f.fainelli@gmail.com>
> > +  - Heiner Kallweit <hkallweit1@gmail.com>
> > +
> > +description:
> > +  These are generic properties that can apply to any MDIO bus. Any
> > +  MDIO bus must have a list of child nodes, one per device on the
> > +  bus. These should follow the generic ethernet-phy.yaml document, or
> > +  a device specific binding document.
> > +
> > +properties:
> > +  reset-gpios:
> > +    maxItems: 1
> > +    description:
> > +      The phandle and specifier for the GPIO that controls the RESET
> > +      lines of all PHYs on that MDIO bus.
> > +
> > +  reset-delay-us:
> > +    description:
> > +      RESET pulse width in microseconds. It applies to all PHY devices
> > +      and must therefore be appropriately determined based on all PHY
> > +      requirements (maximum value of all per-PHY RESET pulse widths).
> > +
> > +examples:
> > +  - |
> > +    davinci_mdio: ethernet@5c030000 {
>
> Shouldn't this be mdio@... ?

Yeah, I'll fix it.

> > +        compatible = "ti,davinci_mdio";
> > +        reg = <0x5c030000 0x1000>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        reset-gpios = <&gpio2 5 1>;
> > +        reset-delay-us = <2>;
> > +
> > +        ethphy0: ethernet-phy@1 {
>
> Would be good to have some unit-address checks. Could be a follow-up
> though.

I guess this could be good, but I'm not sure how to do that. We could
add a patternProperties with the proper regex, but that would find
some issues only if we have additionalProperties set, which we don't
want since this is a generic binding and that would create another set
of problems :)

maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--onszyfussrb4jgai
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQtYZQAKCRDj7w1vZxhR
xUIZAQDbawIfMQk4npmYd9v7KdUsUaiL+bsN4pqAueXi6IONoQEAxmM4fLqvHxL0
AH6nNHvkriJ6iQmigbD9FRAC9gDHkQw=
=tTSl
-----END PGP SIGNATURE-----

--onszyfussrb4jgai--


--===============6336541170934973334==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6336541170934973334==--

