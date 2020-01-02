Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08D512E80C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 16:26:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eIobi1NKQYh6uV7o8Xpz8H3AavBue0E7M3ZuBwcdOuc=; b=f4QyaZpY9qj7VZxKCmdI5YeAm
	WZDsLz3TpSt5KZWBJqDiUfHXuW8w8/whFzSRDmthmgvKmY2dcJnWr46aRmjAZDvY3eIsftT5vAx8/
	50NVNNdJCbvAav6NueqJUzB/njpl3+5lVnEbDwIQOMaAmbLCkxmbLJ2XNpoBJEopeQ3scvt05YwYs
	MmZKiI5EKJzacqZUfKYjj8VVVUgRE62vVWNWPiFHcEU0MgXbxq4Iy2cQuWVZwWgzl7p5yAXMyP7Fy
	w0S2jbqyMTG9VpwH6kgPbNAdpeKEEqmQzM3fOya9z4eZCJXnnWyfC4RHdmJCLpP7u46d5Ewfcb7Iu
	dEO2Hn73Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2NA-0004rm-UA; Thu, 02 Jan 2020 15:26:52 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2N3-0004rC-AI
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 15:26:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id C956522008;
 Thu,  2 Jan 2020 10:26:43 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 02 Jan 2020 10:26:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=t3ubyuab2VlswOR9/ymEdLAoVp9
 ly3n1q2XwluYw9jc=; b=T9StJhSkG0u+LtZXX0qZIGwMh4bMpTVZVssW7rCFJ8I
 sz9caqTAqae3XB60lCrIMpUpSX8iYrTkOxqkN8ysTXu2GXBGqhmhdFwfC5IV+m3W
 oli7Ibp+wNlqleJI2CAhGzh03emecRMfUXB2aJfAExYKJ0PjD4xvSQThF1UbuDbT
 M3y/e3SDD5NpgIXv5dkry5HD090OGsrd1yacITbEb6xLELOt66ZOOqQLB3nX6Pxj
 N2uxKsJGAypMlFgOY8JXqecOIMkuQg9R19VFsxcLVztMUC3J6IaAI3i0oJ1ySuaZ
 LVGu0DuB8kk5pU/RV0UOf65+kDYmoyJoaxjIWeFX5GA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=t3ubyu
 ab2VlswOR9/ymEdLAoVp9ly3n1q2XwluYw9jc=; b=w5yDnx3dZCi5yiKUmkwE4B
 DSLQxUSPxGQw/Z4WFS9/tmUtODpBrTOxq4KT+yTZc/zixI2MH2SPlt8YzEJURGn8
 97cP36AAo3M5Hm5+lOqbvg77cIxmDxqrMfSprhHSvV/8J5zOD4tDmDmNCUEXdgI2
 XudcGRQLn1OCmue2bjyPekUq0dZeWdefZsG6IO5vKB5FPAxMe6KvIP4kyJ9I/1fq
 a6L2AB41KpbH6hwpbT/gMKCGbfTbSQgBUwoTdHSddV6FAj/nthCiJH/q+6+k9b7M
 Jin+QCdIuOeTolqzgtspI8Eac0FVIfXwmmSJxoNnl1BmXhUJbHOG1axHD0EzSqmQ
 ==
X-ME-Sender: <xms:swsOXrwTDgylDG_GwbNh9PYU0c0YxSKdZc9NFgLpRutgRlfwgvujqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeguddgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucfr
 rghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:swsOXptw0wrxT0i1PrFHbR8AzuqWHYbJflHkvY0h0CfENhi1JaUX9g>
 <xmx:swsOXi3oJJb1JwTP39vHxuL7Hm30LFELB9ZsF0E2nPhpvjFTHWHh1Q>
 <xmx:swsOXt5WhaS8ljqtmJj2ARrrRYJNlokFMhEG-kzdrVyYc21gncmmsg>
 <xmx:swsOXmxoj6zrfsjg31x45I_qk9qUJkEUxtvnfA2juQcFUENjv6nGGA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5E99B3060741;
 Thu,  2 Jan 2020 10:26:43 -0500 (EST)
Date: Thu, 2 Jan 2020 16:26:41 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
Message-ID: <20200102152641.kgckxlcq7u7xjjrl@gilmour.lan>
References: <20191219084332.944123-1-maxime@cerno.tech>
 <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
 <20191220080310.w2xtgzxend5bmv2q@gilmour.lan>
 <CAGb2v65+zpc1_0K2Co4uOUrfshzmVCf1Rc6Ob2YtmdmdsNTAvQ@mail.gmail.com>
 <20200102120222.yl7vlposk4b7hbu7@gilmour.lan>
 <CAGb2v66pixivryxffXWceLknFLErRJH3BQgtQUQSeyQq-FO=ng@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66pixivryxffXWceLknFLErRJH3BQgtQUQSeyQq-FO=ng@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_072645_497863_283AC7C1 
X-CRM114-Status: GOOD (  28.20  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 devicetree <devicetree@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3951408042765002876=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3951408042765002876==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vnza7bcg3bx47puo"
Content-Disposition: inline


--vnza7bcg3bx47puo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 02, 2020 at 08:31:40PM +0800, Chen-Yu Tsai wrote:
> On Thu, Jan 2, 2020 at 8:02 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Fri, Dec 20, 2019 at 04:10:03PM +0800, Chen-Yu Tsai wrote:
> > > On Fri, Dec 20, 2019 at 4:03 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > >
> > > > Hi,
> > > >
> > > > On Thu, Dec 19, 2019 at 11:24:52PM +0800, Chen-Yu Tsai wrote:
> > > > > On Thu, Dec 19, 2019 at 4:43 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > >
> > > > > > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > > > > > with a matching Device Tree binding.
> > > > > >
> > > > > > Now that we have the DT validation in place, let's convert the device tree
> > > > > > bindings for that controller over to a YAML schemas.
> > > > > >
> > > > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > > > ---
> > > > > >  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
> > > > > >  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
> > > > > >  2 files changed, 135 insertions(+), 37 deletions(-)
> > > > > >  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > > >  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> > > > > >
> > > > > > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > > > new file mode 100644
> > > > > > index 000000000000..ded7d6f0a119
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > > > @@ -0,0 +1,135 @@
> > > > > > +# SPDX-License-Identifier: GPL-2.0
> > > > > > +%YAML 1.2
> > > > > > +---
> > > > > > +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > +
> > > > > > +title: Allwinner A80 USB PHY Device Tree Bindings
> > > > > > +
> > > > > > +maintainers:
> > > > > > +  - Chen-Yu Tsai <wens@csie.org>
> > > > > > +  - Maxime Ripard <mripard@kernel.org>
> > > > > > +
> > > > > > +properties:
> > > > > > +  "#phy-cells":
> > > > > > +    const: 0
> > > > > > +
> > > > > > +  compatible:
> > > > > > +    const: allwinner,sun9i-a80-usb-phy
> > > > > > +
> > > > > > +  reg:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  clocks:
> > > > > > +    anyOf:
> > > > > > +      - description: Main PHY Clock
> > > > > > +
> > > > > > +      - items:
> > > > > > +          - description: Main PHY clock
> > > > > > +          - description: HSIC 12MHz clock
> > > > > > +          - description: HSIC 480MHz clock
> > > > > > +
> > > > > > +  clock-names:
> > > > > > +    oneOf:
> > > > > > +      - const: phy
> > > > > > +
> > > > > > +      - items:
> > > > > > +          - const: phy
> > > > > > +          - const: hsic_12M
> > > > > > +          - const: hsic_480M
> > > > > > +
> > > > > > +  resets:
> > > > > > +    anyOf:
> > > > > > +      - description: Normal USB PHY reset
> > > > > > +
> > > > > > +      - items:
> > > > > > +          - description: Normal USB PHY reset
> > > > > > +          - description: HSIC Reset
> > > > > > +
> > > > > > +  reset-names:
> > > > > > +    oneOf:
> > > > > > +      - const: phy
> > > > > > +
> > > > > > +      - items:
> > > > > > +          - const: phy
> > > > > > +          - const: hsic
> > > > > > +
> > > > > > +  phy_type:
> > > > > > +    const: hsic
> > > > > > +    description:
> > > > > > +      When absent, the PHY type will be assumed to be normal USB.
> > > > > > +
> > > > > > +  phy-supply:
> > > > > > +    description:
> > > > > > +      Regulator that powers VBUS
> > > > > > +
> > > > > > +required:
> > > > > > +  - "#phy-cells"
> > > > > > +  - compatible
> > > > > > +  - reg
> > > > > > +  - clocks
> > > > > > +  - clock-names
> > > > > > +  - resets
> > > > > > +  - reset-names
> > > > > > +
> > > > > > +additionalProperties: false
> > > > > > +
> > > > > > +if:
> > > > > > +  properties:
> > > > > > +    phy_type:
> > > > > > +      const: hsic
> > > > > > +
> > > > > > +  required:
> > > > > > +    - phy_type
> > > > > > +
> > > > > > +then:
> > > > > > +  properties:
> > > > > > +    clocks:
> > > > > > +      maxItems: 3
> > > > > > +
> > > > > > +    clock-names:
> > > > > > +      maxItems: 3
> > > > > > +
> > > > > > +    resets:
> > > > > > +      maxItems: 2
> > > > > > +
> > > > > > +    reset-names:
> > > > > > +      maxItems: 2
> > > > >
> > > > > So this is slightly incorrect. If phy_type == "hsic", then the
> > > > > "phy" clock and reset should not be needed. I say should because
> > > > > no boards actually came with HSIC implemented. The A80 Optimus
> > > > > board had the HSIC lines on one of the GPIO headers, but I never
> > > > > had any HSIC chips lol.
> > > >
> > > > This isn't what the previous binding was saying though :/
> > >
> > > From the original binding:
> > >
> > > - clock-names : depending on the "phy_type" property,
> > >   * "phy" for normal USB
> > >   * "hsic_480M", "hsic_12M" for HSIC
> > > - resets : a list of phandle + reset specifier pairs
> > > - reset-names : depending on the "phy_type" property,
> > >   * "phy" for normal USB
> > >   * "hsic" for HSIC
> > >
> > > It is recommended to list all clocks and resets available.
> > > The driver will only use those matching the phy_type.
> >
> > I'm not quite sure how we want to fix this then, or even what there's
> > to fix.
> >
> > The previous binding is saying that we need either phy or hsic, and
> > that we should ideally set both. The DT are following that
> > recommendation, and we have either one item for the clocks (phy), or
> > three (phy + 2 HSIC clocks). resets is in a similar situation.
> >
> > The binding allows to have either one or three, and enforce that in
> > HSIC we have three (but leaves the option open to have either 1 or 3
> > in the normal phy type).
> >
> > As far as I can see, we cover what the binding was saying. Am I
> > missing something?
>
> I guess you're right. Lets just keep why you've done already.
> Sorry for the noise.

Is that a Reviewed-by ? :)

Maxime

--vnza7bcg3bx47puo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg4LsQAKCRDj7w1vZxhR
xR6SAQDvqLC0h+09wIbderWyKg+USHYEopIVTFTMBgcuOvhXVgEAua5wcziPRm30
+Ws7KYnlYb9VRZusKakxeTqUbHw2qQM=
=wtW2
-----END PGP SIGNATURE-----

--vnza7bcg3bx47puo--


--===============3951408042765002876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3951408042765002876==--

