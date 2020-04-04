Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739FA19E41D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Apr 2020 11:35:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gQ9L4L+6vb+Gy4qqp65DT4otLF/6W2ZVASYTXj0NCns=; b=Q7rl5yRT8/DvhtAL9Ibxq7Ab7
	ESchmbOWgcprenAiTWAoae48RagCnsWz4XdDcNhVb7XDPz5UbqAEUkqjB2K8pffBgzHC8FPkuD2CM
	BPDR1k1qHIY7g/UyJwJ/GST+zzhdZ9F4qbuY7c7gqsPirxUm+mrWZQLKp4fZzxoJeTURM7P6y+Y+p
	5cYGkIArYS4SeWevH6xHWzQeaAgjFSRMQ3zgcMLgaKZ75XG7qvjoHA6RgbVRs1BEGAzvoq0KqJO9O
	Iu6zalvdfU5R/ViPD3eHTBJJCJaPZMvu4+IWuqBJXJ4i72qkvTu9vuDttjTYsyfWiGLX/8RfUM8bl
	sb8vXM7rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKfCe-0005UW-5K; Sat, 04 Apr 2020 09:35:00 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKfCW-0005Ts-Hl
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Apr 2020 09:34:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DC5394CD;
 Sat,  4 Apr 2020 05:34:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Sat, 04 Apr 2020 05:34:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=FY1Oow54h4PlHtGEUJQlldelkiL
 OrjxVelH7alz3RMw=; b=GuZ+YlhfLGVVOkW+4Jk3n6bQ9fEr5jjjK42H4x//E6V
 iz55JRgosCRFRJIB/b4cx61dezjpd6Y6hrh9wLN1LNVn3WUyJvFisTjbmfm0ylEG
 /ZtsPXYY5Ji2fMnBCgwWMUmqqfjTY7aEcUUtLxnlnIe4NuuHLO8zV6U0XDMmqMEC
 4vajZY9wwKxWYuloQLQWQMfZiWsAy3yKF0Fc0a9JfkxpgXW+R6DxtWQFiASivmEj
 Puv+vVyj1tbpunm7PPCctm35j6rxQsoui6i87tZA3lmVP1ZzrH0hZmGkIcPadWWB
 acF95vvuUZo0KOr86kolCqvoHJ2RBV4378xZ20kHpNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=FY1Oow
 54h4PlHtGEUJQlldelkiLOrjxVelH7alz3RMw=; b=GiMCFCDqT67bQny9MPOys7
 ZoMyVgXrHWeAbR8oWi6xzHPcn2LyJC+mwgTP7l83bwIaWxUH+ji4ukU1qMGfxyFg
 me6+iX1WgjUvlZ9JJXT6WTm2Q44RXIUhUJ0VpYCkddymVFBs5Ql7F2Itv13NOO7/
 pUc4Z7wMgeyBgPfYkcTnVoDZQDO0Gp7rkzNj5p0rUB93SrNKlnnKuV0OZ42FW6SM
 kAS3P0BrgBK9l3/5jAYqsO88NrqiBxWPiGRSVZMWm4/IZFMLD5v/QN3XwmlqfLpQ
 4UdQscYS8Syvr6aBmoIzEllICl2nQBRoHvMkszgq0LsfiX1KxVxD81QhppUKS8Gg
 ==
X-ME-Sender: <xms:t1SIXiyQJZgsH-FNG9WdF-swlT_i64YbHRCm8ZnEKmF_xIJo1fQYUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtdekgddujecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
 gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:t1SIXqkklt_2gbDU5gqWmizUcOnu2yV4ldEdIIzAxNuulvdwo8Gg5g>
 <xmx:t1SIXpC3hDQDIjDcL27KTCLt0U8MkWMwJjkLykY5wibBiGgV9dRQKw>
 <xmx:t1SIXtB-jFoeg9BbYUmHwOP2K6rnn9gcYluBH1Pr9RUO415Ii-HLjg>
 <xmx:uFSIXpmUnw5xjqd0wx-3Ms2BBTvbO9wnNsYUKiQIa27b9Hp0rCbGsw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 52D99328005A;
 Sat,  4 Apr 2020 05:34:47 -0400 (EDT)
Date: Sat, 4 Apr 2020 11:34:46 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
 <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
 <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_023452_626840_7AB38CD1 
X-CRM114-Status: GOOD (  34.86  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3377458531347251325=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3377458531347251325==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="djr4evzau2mf4j23"
Content-Disposition: inline


--djr4evzau2mf4j23
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Apr 04, 2020 at 02:27:36AM +0300, Sakari Ailus wrote:
> Hi Robert,
>
> On Thu, Apr 02, 2020 at 12:10:00PM +0200, Robert Foss wrote:
> > Hey Maxime,
> >
> > On Wed, 1 Apr 2020 at 10:07, Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi,
> > >
> > > On Tue, Mar 31, 2020 at 03:33:44PM +0200, Robert Foss wrote:
> > > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > >
> > > > This patch adds documentation of device tree in YAML schema for the
> > > > OV8856 CMOS image sensor.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > > > ---
> > > >
> > > > - Changes since v5:
> > > >   * Add assigned-clocks and assigned-clock-rates
> > > >   * robher: dt-schema errors
> > > >
> > > > - Changes since v4:
> > > >   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
> > > >   * Add clock-lanes property to example
> > > >   * robher: Fix syntax error in devicetree example
> > > >
> > > > - Changes since v3:
> > > >   * robher: Fix syntax error
> > > >   * robher: Removed maxItems
> > > >   * Fixes yaml 'make dt-binding-check' errors
> > > >
> > > > - Changes since v2:
> > > >   Fixes comments from from Andy, Tomasz, Sakari, Rob.
> > > >   * Convert text documentation to YAML schema.
> > > >
> > > > - Changes since v1:
> > > >   Fixes comments from Sakari, Tomasz
> > > >   * Add clock-frequency and link-frequencies in DT
> > > >
> > > >  .../devicetree/bindings/media/i2c/ov8856.yaml | 150 ++++++++++++++++++
> > > >  MAINTAINERS                                   |   1 +
> > > >  2 files changed, 151 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > > new file mode 100644
> > > > index 000000000000..beeddfbb8709
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > > > @@ -0,0 +1,150 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +# Copyright (c) 2019 MediaTek Inc.
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Ben Kao <ben.kao@intel.com>
> > > > +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > +
> > > > +description: |-
> > > > +  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapixel, CMOS
> > > > +  image sensor that delivers 3264x2448 at 30fps. It provides full-frame,
> > > > +  sub-sampled, and windowed 10-bit MIPI images in various formats via the
> > > > +  Serial Camera Control Bus (SCCB) interface. This chip is programmable
> > > > +  through I2C and two-wire SCCB. The sensor output is available via CSI-2
> > > > +  serial data output (up to 4-lane).
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: ovti,ov8856
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    maxItems: 1
> > > > +
> > > > +  clock-names:
> > > > +    description:
> > > > +      Input clock for the sensor.
> > > > +    items:
> > > > +      - const: xvclk
> > > > +
> > > > +  clock-frequency:
> > > > +    description:
> > > > +      Frequency of the xvclk clock in Hertz.
> > >
> > > We also had that discussion recently for another omnivision sensor
> > > (ov5645 iirc), but what is clock-frequency useful for?
> > >
> > > It seems that the sensor is passed in clocks, so if you need to
> > > retrieve the clock rate you should use the clock API instead.
> > >
> > > Looking at the driver, it looks like it first retrieves the clock, set
> > > it to clock-frequency, and then checks that this is OV8856_XVCLK_19_2
> > > (19.2 MHz).
> >
> > As far as I understand it, 19.2MHz is requirement for the sensor mode
> > that currently defaults to. Some modes require higher clock speeds
> > than this however.
>
> It's very system specific. Either way, bindings should not assume a
> particular driver implementation.
>
> >
> > >
> > > The datasheet says that the sensor can have any frequency in the 6 -
> > > 27 MHz range, so this is a driver limitation and should be set in the
> > > driver using the clock API, and you can always bail out if it doesn't
> > > provide a rate that is not acceptable for the drivers assumption.
> > >
> > > In any case, you don't need clock-frequency here...
> >
> > So your suggestion is that we remove all clocks-rate properties, and
> > replace the clk_get_rate() calls in the driver with clk_set_rate()
> > calls for the desired frequencies?
>
> The driver shouldn't set the rate here unless it gets it from DT (but that
> was not the intention). So the driver should get the frequency instead.

I'm actually saying the opposite :)

Like you were saying, the binding (or DT, for that matter) shouldn't
assume a particular driver implementation.

So one corollary is that if the driver has some restrictions in Linux,
it shouldn't be part of the binding, right?

This binding uses multiple clock properties but as far as I can see,
the driver retrieves a clock using clocks and makes sure that its rate
match its limitation of 19.2MHz using clock-frequency (which is
redundant on a clk_get_rate on the clocks provided earlier).

I'm suspecting that the parent clock on multiple SoCs can be
configured and is not a fixed rate crystal, so assigned-clocks-rate is
here just to make sure we set the frequency at the one being checked
in the driver's probe so that it all works.

But that 19.2MHz is not a limitation of the device itself, it's a
limitation of our implementation, so we can instead implement
something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
sure that our parent clock is configured at the right rate) and the
clk_get_rate and compare that to 19.2MHz (to make sure that it's not
been rounded too far apart from the frequency we expect).

This is doing exactly the same thing, except that we don't encode our
implementation limitations in the DT, but in the driver instead.

Maxime

--djr4evzau2mf4j23
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXohUtgAKCRDj7w1vZxhR
xa04AQDRDZj8iqRv1ye60lZl+ZE0i447z0o0QQpsHESgFQCaEwEA6Witl7MLY22W
8M+ct09Qd2jsVr7nuHnhhrgwRxWG/gw=
=a/qP
-----END PGP SIGNATURE-----

--djr4evzau2mf4j23--


--===============3377458531347251325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3377458531347251325==--

