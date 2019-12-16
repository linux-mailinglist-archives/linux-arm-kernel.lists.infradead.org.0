Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8419D12172D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 19:34:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yYbH3WlhZrLpY/wAhbrE4wcH6ZkUT54hnN+ISRPErKg=; b=liA8fq6PVSSD07P54mM2w54zM
	1LxQ2MxULEB2qneqFN5C/8pqUHdi9X78fsrJYhCYhKQLRsvyybI8q8m9hCU3KoAWMTcq6F42DUxuO
	iRr/y42beZgdpfsRy/8uhcdOJtqL9xXx0c9Uzm2+Zj0j3JX2bH2KP2cSAYFnlDqDZ35p3dia30OJg
	m47n9PNYMwSIJC5jqNZbrGpKqtXeUzSVYFvOcBgf54hQKSzEl5AMfSD1wmhQovvmjHxkOuELJk/at
	tAgaNCXXnQB56zFq2VVNjzNoSFjxptTOmftY/3d7/A9QColZb3ILwh1toYb1DJZrFBCk6wLYoTxlH
	9x/iQzLiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igvCK-0002wL-Lb; Mon, 16 Dec 2019 18:34:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igvC9-0002vW-D6
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 18:34:14 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80EC2206EC;
 Mon, 16 Dec 2019 18:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576521253;
 bh=3B/xY3EwSSqZ4KRIPY2Ks0+ZNevGFMiaNyRoFEJVXfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lEUGZ0qHZo+CVeE5WsVgQhI7P2irPvdQQdvpMgxYvGTSp1kwZc3UY1nH28TmfQwXF
 VNmlZ6HSmQKZiCCqF6fT4KzAArKVHd/uGAZlo48DHA2Y7y+VFeZL0lJIo4ooiEmRzI
 n05Cczd68EE7ioFDM6k6mV3KJahfqsKGnqjwqA5s=
Date: Mon, 16 Dec 2019 19:34:10 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v12 1/7] dt-bindings: sun6i-dsi: Document A64 MIPI-DSI
 controller
Message-ID: <20191216183410.akrmytbvaeg37wms@gilmour.lan>
References: <20191203134816.5319-1-jagan@amarulasolutions.com>
 <20191203134816.5319-2-jagan@amarulasolutions.com>
 <20191204133600.gnv6dnhk6upe7xod@gilmour.lan>
 <CAMty3ZDU57Hj3ZSBC6sSMFWN9-HQadA03hmXUNUVS1W0UQQ3DA@mail.gmail.com>
 <20191216112042.f4xvlgnbm4dk6wkq@gilmour.lan>
 <CAMty3ZBU-XaxR_vM5L2yVbhR5ftfbtDn3jP00qCxBF+owVyqDQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMty3ZBU-XaxR_vM5L2yVbhR5ftfbtDn3jP00qCxBF+owVyqDQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_103413_483857_AC3F45BA 
X-CRM114-Status: GOOD (  26.95  )
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
Content-Type: multipart/mixed; boundary="===============3109552588372485372=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3109552588372485372==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mp32uvvqn4k2266y"
Content-Disposition: inline


--mp32uvvqn4k2266y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 10:29:08PM +0530, Jagan Teki wrote:
> On Mon, Dec 16, 2019 at 4:50 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > On Mon, Dec 16, 2019 at 04:37:20PM +0530, Jagan Teki wrote:
> > > On Wed, Dec 4, 2019 at 7:06 PM Maxime Ripard <mripard@kernel.org> wrote:
> > > >
> > > > On Tue, Dec 03, 2019 at 07:18:10PM +0530, Jagan Teki wrote:
> > > > > The MIPI DSI controller in Allwinner A64 is similar to A33.
> > > > >
> > > > > But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
> > > > > to have separate compatible for A64 on the same driver.
> > > > >
> > > > > DSI_SCLK uses mod clock-names on dt-bindings, so the same
> > > > > is not required for A64.
> > > > >
> > > > > On that note
> > > > > - A64 require minimum of 1 clock like the bus clock
> > > > > - A33 require minimum of 2 clocks like both bus, mod clocks
> > > > >
> > > > > So, update dt-bindings so-that it can document both A33,
> > > > > A64 bindings requirements.
> > > > >
> > > > > Reviewed-by: Rob Herring <robh@kernel.org>
> > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > ---
> > > > > Changes for v12:
> > > > > - Use 'enum' instead of oneOf+const
> > > > >
> > > > >  .../display/allwinner,sun6i-a31-mipi-dsi.yaml | 20 +++++++++++++++++--
> > > > >  1 file changed, 18 insertions(+), 2 deletions(-)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > > index dafc0980c4fa..b91446475f35 100644
> > > > > --- a/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > > +++ b/Documentation/devicetree/bindings/display/allwinner,sun6i-a31-mipi-dsi.yaml
> > > > > @@ -15,7 +15,9 @@ properties:
> > > > >    "#size-cells": true
> > > > >
> > > > >    compatible:
> > > > > -    const: allwinner,sun6i-a31-mipi-dsi
> > > > > +    enum:
> > > > > +      - allwinner,sun6i-a31-mipi-dsi
> > > > > +      - allwinner,sun50i-a64-mipi-dsi
> > > > >
> > > > >    reg:
> > > > >      maxItems: 1
> > > > > @@ -24,6 +26,8 @@ properties:
> > > > >      maxItems: 1
> > > > >
> > > > >    clocks:
> > > > > +    minItems: 1
> > > > > +    maxItems: 2
> > > > >      items:
> > > > >        - description: Bus Clock
> > > > >        - description: Module Clock
> > > > > @@ -63,13 +67,25 @@ required:
> > > > >    - reg
> > > > >    - interrupts
> > > > >    - clocks
> > > > > -  - clock-names
> > > > >    - phys
> > > > >    - phy-names
> > > > >    - resets
> > > > >    - vcc-dsi-supply
> > > > >    - port
> > > > >
> > > > > +allOf:
> > > > > +  - if:
> > > > > +      properties:
> > > > > +         compatible:
> > > > > +           contains:
> > > > > +             const: allwinner,sun6i-a31-mipi-dsi
> > > > > +      then:
> > > > > +        properties:
> > > > > +          clocks:
> > > > > +            minItems: 2
> > > > > +        required:
> > > > > +          - clock-names
> > > > > +
> > > >
> > > > Your else condition should check that the number of clocks items is 1
> > > > on the A64
> > >
> > > But the minItems mentioned as 1 in clocks, which is unchanged number
> > > by default. doesn't it sufficient?
> >
> > In the main schema, it's said that the clocks property can have one or
> > two elements (to cover the A31 case that has one, and the A64 case
> > that has 2).
> >
> > This is fine.
> >
> > Later on, you enforce that the A64 has two elements, and this is fine
> > too.
>
> Actually A31 case has 2 and A64 case has 1.
>
> >
> > However, you never check that on the A31 you only have one clock, and
> > you could very well have two and no one would notice.
>
> I did check A31 case for 2 but not in A64. this is what you mean? so
> adding A64 check like below would fine?
>
> allOf:
>   - if:
>       properties:
>          compatible:
>            contains:
>              const: allwinner,sun6i-a31-mipi-dsi

You need a new line here

>       then:

This is the wrong level of indentation, it needs to be at the same level than if

>         properties:
>           clocks:
>             minItems: 2

Newline

>         required:
>           - clock-names

Newline

>   - if:
>       properties:
>          compatible:
>            contains:
>              const: allwinner,sun50i-a64-mipi-dsi
>       then:
>         properties:
>           clocks:
>             minItems: 1

(and same thing here).

But yeah, otherwise that's what I meant

Maxime

--mp32uvvqn4k2266y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXffOIgAKCRDj7w1vZxhR
xeCTAPwKh1UHnjrREIv+Ip48UOc+A2n/MnUOkDPNQizA9EusMgD/RunnzYlmm6CU
wsu3s/XV5XJ3nmdYaKKmSIlQ7HZmEAs=
=RcnJ
-----END PGP SIGNATURE-----

--mp32uvvqn4k2266y--


--===============3109552588372485372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3109552588372485372==--

