Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1D45948
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J1U8jd1ChOxfyYg+DthOH6vkDEzEFx6o/UxF+3ofarg=; b=YRk2DKDoBVd5SmA2v+our3cQ/
	Hw2OnFekC5XyqjlDb8VnMfKPaIaHT0stYTJs1XSfPwW3pSnCFX2pucgXk/byJB6kHKgJHgN9WGlH3
	zbUVLFM02mjh+CQ27Yv/1b+IFXKhvw783HrTjis1AaRU9eGuKh9erT5MhYgegpmkbUO9dB+QSgMTf
	xwI9EIQWY+Fnr62pdwXJseoTk3iZebX+J2CJx5m72Kv2u1JIK/99N1h9aL0xEeTGa2gxj2rSYlJio
	gxrTiorTRUWHaFIuj3S0gKTyUkw0h0phPBnaAkRdSWCq4lHa9BqorwKu7yaypOGmVTCNjMGw1n0ZD
	Bml365SHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbirg-0008Sy-UW; Fri, 14 Jun 2019 09:51:20 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbirQ-0008SG-Us
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:51:07 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id F1BB4C0008;
 Fri, 14 Jun 2019 09:50:48 +0000 (UTC)
Date: Fri, 14 Jun 2019 11:50:48 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 05/11] dt-bindings: net: sun4i-emac: Convert the
 binding to a schemas
Message-ID: <20190614095048.j2xwdsucucbakkl2@flea>
References: <91618c7e9a5497462afa74c6d8a947f709f54331.1560158667.git-series.maxime.ripard@bootlin.com>
 <d198d29119b37b2fdb700d8992b31963e98b6693.1560158667.git-series.maxime.ripard@bootlin.com>
 <20190610143139.GG28724@lunn.ch>
 <CAL_JsqJahCJcdu=+fA=ewbGezuEJ2W6uwMVxkQpdY6w+1OWVVA@mail.gmail.com>
 <20190611145856.ua2ggkn6ccww6vpp@flea>
 <CAL_Jsq+KwH-j8f+r+fWhMuqJPWcHdBQau+nUz3NRAXYTpsyuvg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+KwH-j8f+r+fWhMuqJPWcHdBQau+nUz3NRAXYTpsyuvg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_025105_317159_6DC348A5 
X-CRM114-Status: GOOD (  28.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============0531762470457378257=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0531762470457378257==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="arfnxch5fo5pq4gp"
Content-Disposition: inline


--arfnxch5fo5pq4gp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Thu, Jun 13, 2019 at 11:32:30AM -0600, Rob Herring wrote:
> On Thu, Jun 13, 2019 at 7:25 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > On Mon, Jun 10, 2019 at 12:59:29PM -0600, Rob Herring wrote:
> > > On Mon, Jun 10, 2019 at 8:31 AM Andrew Lunn <andrew@lunn.ch> wrote:
> > > >
> > > > > +required:
> > > > > +  - compatible
> > > > > +  - reg
> > > > > +  - interrupts
> > > > > +  - clocks
> > > > > +  - phy
> > > > > +  - allwinner,sram
> > > >
> > > > Quoting ethernet.txt:
> > > >
> > > > - phy: the same as "phy-handle" property, not recommended for new bindings.
> > > >
> > > > - phy-handle: phandle, specifies a reference to a node representing a PHY
> > > >   device; this property is described in the Devicetree Specification and so
> > > >   preferred;
> > > >
> > > > Can this be expressed in Yaml? Accept phy, but give a warning. Accept
> > > > phy-handle without a warning? Enforce that one or the other is
> > > > present?
> > >
> > > The common schema could have 'phy: false'. This works as long as we've
> > > updated (or plan to) all the dts files to use phy-handle. The issue is
> > > how far back do you need kernels to work with newer dtbs.
> >
> > I guess another question being raised by this is how hard do we want
> > to be a deprecating things, and should the DT validation be a tool to
> > enforce that validation.
> >
> > For example, you've used in you GPIO meta-schema false for anything
> > ending with -gpio, since it's deprecated. This means that we can't
> > convert any binding using a deprecated property without introducing a
> > build error in the schemas, which in turn means that you'll have a lot
> > of friction to support schemas, since you would have to convert your
> > driver to support the new way of doing things, before being able to
> > have a schema for your binding.
>
> I've err'ed on the stricter side. We may need to back off on some
> things to get to warning free builds. Really, I'd like to have levels
> to separate checks for existing bindings, new bindings, and pedantic
> checks.

That would be awesome. Do you have a plan for that already though? I
can't really think of a way to implement it at the moment.

> For '-gpio', we may be okay because the suffix is handled in the GPIO
> core. It should be safe to update the binding to use the preferred
> form.

It might require a bit of work though in drivers, since the fallback
is only handled if you're using the gpiod API, and not the legacy one.

> > And then, we need to agree on how to express the deprecation. I guess
> > we could allow the deprecated keyword that will be there in the
> > draft-8, instead of ad-hoc solutions?
>
> Oh, nice! I hadn't seen that. Seems like we should use that. We can
> start even without draft-8 support because unknown keywords are
> ignored (though we probably have to add it to our meta-schema). Then
> at some point we can add a 'disallow deprecated' flag to the tool.

So, in the generic ethernet binding, we would have:

properties:
  phy-handle:
    $ref: /schemas/types.yaml#definitions/phandle
    description:
      Specifies a reference to a node representing a PHY device.

  phy:
    $ref: "#/properties/phy-handle"
    deprecated: true

  phy-device:
    $ref: "#/properties/phy-handle"
    deprecated: true

Does that sound good?

Now, how do we handle the case above, in the device specific binding?
We just require the non-deprecated one, or the three?

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--arfnxch5fo5pq4gp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQNt+AAKCRDj7w1vZxhR
xc/rAP9oYo3RLFWNkmJJDZDeoHTXzgtXwUn55miw6RmHtD9HuQEAvRCq1//X+pH0
3IHUv+mhhSTrjKtCcpuBHvJv5oWybg4=
=S27r
-----END PGP SIGNATURE-----

--arfnxch5fo5pq4gp--


--===============0531762470457378257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0531762470457378257==--

