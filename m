Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A216F1203A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:21:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=61bSezqS8gUrPMP7B1DAytJcMPIodxbjyWtbdZChj9o=; b=GJWkaK/3wL7PvQOhRm4x0sXbq
	nYQmMK74nXJMOKl5ZZ3oDwxs/locfPvlujLd+1S/7Yu/uxAySqI3yA0IyIAhwGfITLJPZBmJmxIpN
	9ltUTLMdAhA57Iq/+DDsCyZzfKdjz8kbj207QhLI8+j9hdJXx+C95X3X4aUDagq2mwcQBky2IzuFW
	NMFsvQejzUi1EL8+R35I6mJ6GH2968FhRjC6hw96bqJS29MEozL2pcEqJkhtTy3be8rowV/yJtmXH
	ioN0lPhuUdh3kX1Outlt4M/h4NjN/UsHWrXfXKTbNYbD00ugohPrv2oBHSjSM+idmK/y6dF/3wPCq
	WZY4z+Z8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoR6-0005oR-Gm; Mon, 16 Dec 2019 11:21:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoQh-0005hA-Hz
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:20:49 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77993206CB;
 Mon, 16 Dec 2019 11:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576495247;
 bh=Mpc6KplCorpdPPjd389Z2K1v+WF0Ie2Wk28APYU3EIs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UGMeVmTnoijpaXf0URFSEnCAv2QMv1w4vRp1RBYhvOjr4CWEskkLNUgDf2fd+/91T
 u9eHV45b6wdXZsbDBv6MufHf+l5akQjQKX51yICGrGeVg8jgDQZilSbp6BAom+IqcC
 Y7wsZm3BFQcwZ8XuLl9OoumuAFnRAITIuNShN1oI=
Date: Mon, 16 Dec 2019 12:20:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Message-ID: <20191216112042.f4xvlgnbm4dk6wkq@gilmour.lan>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-2-jagan@amarulasolutions.com>
 <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
 <CAMty3ZDU57Hj3ZSBC6sSMFWN9-HQadA03hmXUNUVS1W0UQQ3DA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDU57Hj3ZSBC6sSMFWN9-HQadA03hmXUNUVS1W0UQQ3DA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032047_707479_809C651E 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============2598674938377041044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2598674938377041044==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="j7bmzwiznwnaw3ax"
Content-Disposition: inline


--j7bmzwiznwnaw3ax
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 04:37:20PM +0530, Jagan Teki wrote:
> On Wed, Dec 4, 2019 at 7:06 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Tue, Dec 03, 2019 at 07:18:10PM +0530, Jagan Teki wrote:
> > > The MIPI DSI controller in Allwinner A64 is similar to A33.
> > >
> > > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > > to have separate compatible for A64 on the same driver.
> > >
> > > DSI_SCLK uses mod clock-names on dt-bindings, so the same
> > > is not required for A64.
> > >
> > > On that note
> > > - A64 require minimum of 1 clock like the bus clock
> > > - A33 require minimum of 2 clocks like both bus, mod clocks
> > >
> > > So, update dt-bindings so-that it can document both A33,
> > > A64 bindings requirements.
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > > Changes for v12:
> > > - Use 'enum' instead of oneOf+const
> > >
> > >  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
> > >  1 file changed, 18 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > index dafc0980c4fa..b91446475f35 100644
> > > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > @@ -15,7 +15,9 @@ properties:
> > >    "#size-cells": true
> > >
> > >    compatible:
> > > -    const: allwinner,sun6i-a31-mipi-dsi
> > > +    enum:
> > > +      - allwinner,sun6i-a31-mipi-dsi
> > > +      - allwinner,sun50i-a64-mipi-dsi
> > >
> > >    reg:
> > >      maxItems: 1
> > > @@ -24,6 +26,8 @@ properties:
> > >      maxItems: 1
> > >
> > >    clocks:
> > > +    minItems: 1
> > > +    maxItems: 2
> > >      items:
> > >        - description: Bus Clock
> > >        - description: Module Clock
> > > @@ -63,13 +67,25 @@ required:
> > >    - reg
> > >    - interrupts
> > >    - clocks
> > > -  - clock-names
> > >    - phys
> > >    - phy-names
> > >    - resets
> > >    - vcc-dsi-supply
> > >    - port
> > >
> > > +allOf:
> > > +  - if:
> > > +      properties:
> > > +         compatible:
> > > +           contains:
> > > +             const: allwinner,sun6i-a31-mipi-dsi
> > > +      then:
> > > +        properties:
> > > +          clocks:
> > > +            minItems: 2
> > > +        required:
> > > +          - clock-names
> > > +
> >
> > Your else condition should check that the number of clocks items is 1
> > on the A64
>
> But the minItems mentioned as 1 in clocks, which is unchanged number
> by default. doesn't it sufficient?

In the main schema, it's said that the clocks property can have one or
two elements (to cover the A31 case that has one, and the A64 case
that has 2).

This is fine.

Later on, you enforce that the A64 has two elements, and this is fine
too.

However, you never check that on the A31 you only have one clock, and
you could very well have two and no one would notice.

Maxime

--j7bmzwiznwnaw3ax
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdoigAKCRDj7w1vZxhR
xeS/AP9UV7Xns9t5VOhLEF+tbuQ+jcstzHVAz1d0xXveWqK7uAEAqK1mC/scTm09
qaYD48OkBiF38cUHEBrXBJdLGSE9gQI=
=7xiu
-----END PGP SIGNATURE-----

--j7bmzwiznwnaw3ax--


--===============2598674938377041044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2598674938377041044==--

