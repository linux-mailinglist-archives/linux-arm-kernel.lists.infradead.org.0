Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AE558686
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 17:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SCHy0m+FaVt99MfnqtUtpYeFTmm89siANJDm6ZZtBoM=; b=jN7JeHihNaMo39UzLfZ/ed23S
	H2jr6Y3PEZrihDtJ9dfLQhcFbyIhfQeCIdM7X2z7plGwl2STGsRsp3fgkDvl5/R8WeXKDHv8f4WRx
	9kGLddGcHHTct/JPwXv3ZHr1DPZnmSXqkCbffO2Wh0V9qcMyU99/5HwMYYF3gvzuITaE8KE7TOr1g
	coLnLBln0PzufRd9bfQo4fMTv8IoN58Itdyq0Y+BI2zFWkRo82hzMwSMGSxE7iewGrEJ8MGJ6Wenj
	r0aeHCDvOQ7amlxnt2oaw6gqBU/zkgpGflJzEOEa7oRC1GHQp/1oqhPr1039pRTbTC3SVNDw8M/GW
	kLW0xfhDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgWmR-00018j-8N; Thu, 27 Jun 2019 15:57:47 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgWlt-0000st-PN
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 15:57:16 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 8270F1BF211;
 Thu, 27 Jun 2019 15:57:09 +0000 (UTC)
Date: Thu, 27 Jun 2019 17:57:08 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v4 03/13] dt-bindings: net: Add a YAML schemas for the
 generic MDIO options
Message-ID: <20190627155708.myxychzngc3trxhc@flea>
References: <cover.e80da8845680a45c2e07d5f17280fdba84555b8a.1561649505.git-series.maxime.ripard@bootlin.com>
 <e99ff7377a0d3d140cf62200fd9d62c108dac24e.1561649505.git-series.maxime.ripard@bootlin.com>
 <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKQoj6x-8cMxp2PFQLcu93aitGO2wALDYaH2h72cPSyfg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_085714_962834_C9312C0B 
X-CRM114-Status: GOOD (  21.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 Antoine =?utf-8?Q?T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: multipart/mixed; boundary="===============3457512297622407730=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3457512297622407730==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fr3al6no3addfpyv"
Content-Disposition: inline


--fr3al6no3addfpyv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Thu, Jun 27, 2019 at 09:48:06AM -0600, Rob Herring wrote:
> On Thu, Jun 27, 2019 at 9:32 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The MDIO buses have a number of available device tree properties that can
> > be used in their device tree node. Add a YAML schemas for those.
> >
> > Suggested-by: Andrew Lunn <andrew@lunn.ch>
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  Documentation/devicetree/bindings/net/mdio.txt  | 38 +-------------
> >  Documentation/devicetree/bindings/net/mdio.yaml | 51 ++++++++++++++++++-
> >  2 files changed, 52 insertions(+), 37 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/net/mdio.yaml
>
> Reviewed-by: Rob Herring <robh@kernel.org>
>
> However, some comments for a follow-up...
>
> > diff --git a/Documentation/devicetree/bindings/net/mdio.yaml b/Documentation/devicetree/bindings/net/mdio.yaml
> > new file mode 100644
> > index 000000000000..b8fa8251c4bc
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
> > +    davinci_mdio: mdio@5c030000 {
>
> Can we enforce nodename to be mdio? That may not work for muxes.
> You'll probably have to implement it and see.

Ok, I'll send a follow-up patch for this.

> > +        compatible = "ti,davinci_mdio";
> > +        reg = <0x5c030000 0x1000>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
>
> These 2 should have a schema.

Indeed, I'll do it for that too.

> > +
> > +        reset-gpios = <&gpio2 5 1>;
> > +        reset-delay-us = <2>;
> > +
> > +        ethphy0: ethernet-phy@1 {
> > +            reg = <1>;
>
> Need a child node schema to validate the unit-address and reg property.

This should be already covered by the ethernet-phy.yaml schemas
earlier in this series.

Were you expecting something else?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--fr3al6no3addfpyv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXRTnVAAKCRDj7w1vZxhR
xe3EAQCErMl25qlGQzJBVvU6zEMusgjhLvAGFqJVeEB50qFp4gEAiohuJBVAAHsi
fBpN91UvLx/o1V4K3KlpeQefakcjpAU=
=hiQD
-----END PGP SIGNATURE-----

--fr3al6no3addfpyv--


--===============3457512297622407730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3457512297622407730==--

