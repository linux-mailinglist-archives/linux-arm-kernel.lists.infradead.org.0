Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE8F1276EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rHHxx2hfIuGnHVq7yFotqlmhBaTi7+j8fXx2b+sH8A8=; b=SjlcJ5cq6bAUGEUNsZ/kX5mr2
	8fmYw3WC3LfxmBab7oTAI/kAwJmiBwduKx+Q2y9mDwoVizInbJkRVZ/aiMLtsNB/jLWJfwbmPGRAA
	T0fYBqP4feMNHtwJiKADK88pXSYiAfYjysV2yu4DvEBh1X5HCdbjGIxAJ3zouZB7kXydaT7PxCfxZ
	d9Kiqlj5q4EfEhZOKNm+CKg/3s5RH4sHBkkkd+rieKVOutdyx4zKQnh82Q1AaFOkJAxVH3KDT2hTT
	LIYJm3SzebaJ9lJjssxyVF6dzIqPgTHyoxrmAF4GwhoiRoyC0Z2ayx9NK676gNrvtyRNAThdH7Bt2
	CGi84zHpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDFq-0002fe-GL; Fri, 20 Dec 2019 08:03:22 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDFh-0002fL-O9
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:03:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id E81B522452;
 Fri, 20 Dec 2019 03:03:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 20 Dec 2019 03:03:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=P05QFYyJXu05BQJPt60bECzjIiL
 xz5zzubxatFHTuWo=; b=UYTlmZGE5QB93pvPV/g36IgVw2sca7YYx0Ug7dVOWBW
 l7cBrNZ/IuMcvJgHv6uPwcbpShsEJ+zgea2BjZG0HdPrbbIvP7vcX9m6HgRPCmP2
 XtXKdjg9rrXOOkJKY0t29pQlos2Cb27jr9XqBXyBu8YRkh5NPm7Z/ty03ww4FNEv
 RH58e8ubEbS6Ktn8n6Fs+EUxJ4bDzl3TdNieFG6JylOJbb8m4vrUAUb2RYJtXlSa
 sOZCWK3D1qbw2Ilid9bPIKsA153ZrTariFQhZ3pylnFQBumDkglzxP8adSjQnXYw
 1vpD73RiMGVPMmIHjoS2HKb/jIomMqtgyGU/Kmh44KA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=P05QFY
 yJXu05BQJPt60bECzjIiLxz5zzubxatFHTuWo=; b=YS6eykLtDsAWM9Ji7ig6+f
 8jb7H1usN586n5TnCnLEJZKn1i6wYvvvbgFCt8O8QVDux+mELZ/j84nxo8eIOQLn
 ZzXu6IQAOtKB6b0xnXhj7OSTqxYaBNj/d/Ud+jSOHt53Ajn8IpFvQKzoV8QvmgpD
 5tpoEZlmWajCFuZEhFC7ymghBaNjFWv3PQElivnbw/b3wkvaYBg7JHb8kWknaKLp
 XoMxHZs1VOhQoG2ji5bzcXsjDJmKLqaxpWYL948AGOl0Of+g1S3PdzK02+kC6OTk
 LG5qnDDq2Mg1uTDYEIrL5cTg6iN1lvUTYX+0Wg/GP6tJ2JaZHv9eUXtLED8a63Xw
 ==
X-ME-Sender: <xms:QID8XW2gMYpxo0mVouQRpk2WRR7RPrSvfaq2zOD22ct_jfj89Gj1fA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduvddgudduvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecu
 rfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:QID8XV3mCXXRyoDdcPQVS2F6SwWuvreFo6vNYCKQvIWG7SYXSsWkoQ>
 <xmx:QID8XZcjfxh1XrvFFjJ3LRTik40YN7w_xvI6LavfZKwWxk4OzIX-yw>
 <xmx:QID8XbGLTXVTOl5zDL0B-JPHrg_XwEg3rJ15gnzKuhqBwmNHLs_7_A>
 <xmx:QID8XSOZyeas3Tn1n4rI40Rjm_R01uXiY4FyR28VCWmWj2UuYLMJDw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0192B306088B;
 Fri, 20 Dec 2019 03:03:11 -0500 (EST)
Date: Fri, 20 Dec 2019 09:03:10 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
Message-ID: <20191220080310.w2xtgzxend5bmv2q@gilmour.lan>
References: <20191219084332.944123-1-maxime@cerno.tech>
 <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_000313_925257_FEE8A045 
X-CRM114-Status: GOOD (  22.29  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============9134380808924041994=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9134380808924041994==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w4wy6vydjn7c7a6g"
Content-Disposition: inline


--w4wy6vydjn7c7a6g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Dec 19, 2019 at 11:24:52PM +0800, Chen-Yu Tsai wrote:
> On Thu, Dec 19, 2019 at 4:43 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
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
> So this is slightly incorrect. If phy_type == "hsic", then the
> "phy" clock and reset should not be needed. I say should because
> no boards actually came with HSIC implemented. The A80 Optimus
> board had the HSIC lines on one of the GPIO headers, but I never
> had any HSIC chips lol.

This isn't what the previous binding was saying though :/

> > -- phy_type : "hsic" for HSIC usage;
> > -            other values or absence of this property indicates normal USB
> > -- clocks : phandle + clock specifier for the phy clocks
> > -- clock-names : depending on the "phy_type" property,
> > -  * "phy" for normal USB
> > -  * "hsic_480M", "hsic_12M" for HSIC
> > -- resets : a list of phandle + reset specifier pairs
> > -- reset-names : depending on the "phy_type" property,
> > -  * "phy" for normal USB
> > -  * "hsic" for HSIC

It's speficied that the reset and clock is needed. If we want to
revise that, we can do it, but I guess it should be in a separate
patch than the one doing the conversion. Here we just want to express
the exact same thing.

Maxime

--w4wy6vydjn7c7a6g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfyAPQAKCRDj7w1vZxhR
xW5+AP9OQT0iG1KACB7+fyhb1ftgTYAtbu5A3+Qdmq1mZkzQTQEA+VI4epD3poDc
WIyy6GR5gCIfVqFBIX8TjubkJWEq0w4=
=z95X
-----END PGP SIGNATURE-----

--w4wy6vydjn7c7a6g--


--===============9134380808924041994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9134380808924041994==--

