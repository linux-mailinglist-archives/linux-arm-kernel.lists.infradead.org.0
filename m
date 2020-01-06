Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE749130F6A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I2WktZXn5dnp8Idza/5L9wOM4q0EjmHE7zfjooA4Pwg=; b=FJjUeflZoFRDd7bj6ex6cUoAg
	nTzHaG3v0VDO/2u+5BkNg5c0vCG1EiZfP6zkghasNLlhizhm3zCv8EC54BNmS1NyZaavp3px2QMHj
	MOLz4MLLjXSk7MHRt2t2I1XBNpQ4r4BOp2eQRJlnLkeC5xQrmL6b66HSxH+Eky+VzU9Z/9jqhUp4/
	SkTSufNlJ1NMlZqmRH1y538fL+0j8GAeZQSEIkWJAf5Jvz1B0ONh9Ic2nEqoRRAJaby/gGq9XhAyq
	JQHMqJ/LLDdmkGjnQ4VR8jJktZB5PGRDpsFHGowXAA6DinR0xFQqD8x6nhM48/VT85FF8T74sXMdp
	igFe2c7Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOfq-0006Zx-V5; Mon, 06 Jan 2020 09:27:46 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOfb-0006We-TD
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:27:37 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 004E321F83;
 Mon,  6 Jan 2020 04:27:26 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 06 Jan 2020 04:27:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=AD0WwGxa4vEtYVpmX4Bn98NZdb8
 UG8gq8ruZldWqfFQ=; b=cLag7isjvYNFz1/HpV5BQv84cdbSzYJfvKPOR+++0pS
 yoiR853GzL2i75zg6w49qoySqj097YsBnP/pn67nzwKxE+Zob6sd8OTrDOkL7KHD
 wV7/HpVlWvK/KhQBij+1u4nT1p4RCRzbWJcOZ9NV3Tfcu6wjkYoJePbiEIctLdYo
 vA22lZn23R5J4MOQY3M/ZtahHZ9RpchmZ0Oodr/MHGmYH59ME7PPCyWs9adhbVT2
 +joNE99ehfDY8K57qbY31xbpnAbD6Dj6BGJokUMO9M83DMtlYXPHpyLRXrszWw1k
 Qq01SvhWaA546tClqSNwmGgWhTq+1bU30RAOvBIhPvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=AD0WwG
 xa4vEtYVpmX4Bn98NZdb8UG8gq8ruZldWqfFQ=; b=rVKZ7IlwMl9UIsTeJUU2mA
 eGzw997p780+sa50JCs9n11byVdRh3ewZq0B2IfbUxYoSLwmxmmtx1pj2Q9H8+Jm
 VLyNoTgwcHmjVwordd9iC5jcpBor5NA3AwiZ6cgcH8NwR66GdU5ghedmVPAItfnc
 0tBZBpeQc+CY1o2EsTEcJUDDf61lAdqGcXHOHBgvoUKZVJT/Ne/7WptJVldTAK/U
 5ycrIw0UrTJ7OEL2CHUGCWic3mvc1N2wH0AyLhIAUeOleXE9B5sbYvjnLmA8h7bV
 gcuI9tRkAwRkzOsm36wMNrbH56ZOasypSL/lWxRasdo3hK1/wbzxaBWBoGR1FI3g
 ==
X-ME-Sender: <xms:fv0SXgLwl2zHlgDrdGLWXp2abLkUMRWovMDghaBocRhNerV7nHDvRQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdehtddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucfr
 rghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:fv0SXr0PxaZyA38ebNMaaNdSWPpxnjZ_EKoxCPBwdm4c2DO2782rbg>
 <xmx:fv0SXsVms3qbFoRnJo4yaPIcmQGrYchGM7TTgwU2m278g2_kZncyag>
 <xmx:fv0SXpgeuO96xSWmPnJPo0mt69vpTmfduxPcmPjmrZX1yJ3W3qd-ig>
 <xmx:fv0SXrxqlbBkNYd8H_bKzhEYY9MH5k2v6I3SqCU2V28YyYo5R1TXnA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 21ECC80060;
 Mon,  6 Jan 2020 04:27:26 -0500 (EST)
Date: Mon, 6 Jan 2020 10:27:24 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
Message-ID: <20200106092724.pi2kbui7zayrhhzi@gilmour.lan>
References: <20200103152824.47383-1-maxime@cerno.tech>
 <20200104221321.GA11672@bogus>
MIME-Version: 1.0
In-Reply-To: <20200104221321.GA11672@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_012732_384498_D1A4437C 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 kishon@ti.com, Chen-Yu Tsai <wens@csie.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8290285757871653590=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8290285757871653590==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jfhnjtzfmxu4jsz2"
Content-Disposition: inline


--jfhnjtzfmxu4jsz2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Sat, Jan 04, 2020 at 03:13:21PM -0700, Rob Herring wrote:
> On Fri, Jan 03, 2020 at 04:28:24PM +0100, Maxime Ripard wrote:
> > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >
> > ---
> >
> > Changes from v1:
> >   - Added r-b tag from chen-yu
> > ---
> >  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
> >  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
> >  2 files changed, 135 insertions(+), 37 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> >
> > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..ded7d6f0a119
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > @@ -0,0 +1,135 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A80 USB PHY Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <mripard@kernel.org>
> > +
> > +properties:
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  compatible:
> > +    const: allwinner,sun9i-a80-usb-phy
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    anyOf:
> > +      - description: Main PHY Clock
> > +
> > +      - items:
> > +          - description: Main PHY clock
> > +          - description: HSIC 12MHz clock
> > +          - description: HSIC 480MHz clock
>
> Rather than anyOf, just 'minItems: 1' would work here. Though I guess
> this disallows 2 items.

Yeah, 2 items is not allowed so I wanted to prevent that.

> > +
> > +  clock-names:
> > +    oneOf:
> > +      - const: phy
> > +
> > +      - items:
> > +          - const: phy
> > +          - const: hsic_12M
> > +          - const: hsic_480M
> > +
> > +  resets:
> > +    anyOf:
> > +      - description: Normal USB PHY reset
> > +
> > +      - items:
> > +          - description: Normal USB PHY reset
> > +          - description: HSIC Reset
> > +
> > +  reset-names:
> > +    oneOf:
> > +      - const: phy
> > +
> > +      - items:
> > +          - const: phy
> > +          - const: hsic
> > +
> > +  phy_type:
> > +    const: hsic
> > +    description:
> > +      When absent, the PHY type will be assumed to be normal USB.
> > +
> > +  phy-supply:
> > +    description:
> > +      Regulator that powers VBUS
> > +
> > +required:
> > +  - "#phy-cells"
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> > +
> > +additionalProperties: false
> > +
> > +if:
> > +  properties:
> > +    phy_type:
> > +      const: hsic
> > +
> > +  required:
> > +    - phy_type
> > +
> > +then:
> > +  properties:
> > +    clocks:
> > +      maxItems: 3
> > +
> > +    clock-names:
> > +      maxItems: 3
> > +
> > +    resets:
> > +      maxItems: 2
> > +
> > +    reset-names:
> > +      maxItems: 2
>
> Do you intend that only a single item is allowed when not HSIC? If so,
> that's not what is happening.

That's intentional indeed, the former binding was making the hsic
clocks and resets mandatory when the phy was in HSIC mode, but only
recommending listing them otherwise. Maybe we can change that in the
future, but that seems out of scope for a conversion.

Maxime

--jfhnjtzfmxu4jsz2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhL9fAAKCRDj7w1vZxhR
xYcDAQCNoZxKDfvA/zKYWnLh123pQrSfnCIT3udI4N3sqlNiBQEA3LOztTGe4r9g
jqPT0pzltu4HVmYLfflM/aNrJBQsgQQ=
=9byl
-----END PGP SIGNATURE-----

--jfhnjtzfmxu4jsz2--


--===============8290285757871653590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8290285757871653590==--

