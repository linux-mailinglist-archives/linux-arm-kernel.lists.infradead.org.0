Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22E712E5FA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 13:02:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9G8xkelsU6O1I3pdFThY2TpLEJAJbNJ6LVh0TLGQGmI=; b=XnE5+HZni/k701f8IpMQSJLgV
	Pc2iIezGRaSb7u7Xz9nd7Rl4RaLlqrgM0vPdWHEokD0q/gzSqGNlMKeHOiZZT3u3npQszwBMrVoYR
	wyq7QsE2WgEGM8gQw1wwnmIzl8nFJrxKUbSIHqX4c6BVfkCYgLotlS2pf9q9qmrgi8w3KTamyS2gv
	Lh5QQjWJ0k6W5ePKRlTsybYiV2fo88lsX7DUFi72WhnVEM532MOvEtaPvl9LpDqU42F7bTX8yseli
	SYsmw5kRdlPpW/jOkDk6zh96iX4Y+LzqWXYOX4UkzQaLr+0rLzLZ7rbZZhv0LgE7d9WCvROF/0B8k
	a7d+ek87w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imzBa-0001hX-IO; Thu, 02 Jan 2020 12:02:42 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imzBQ-0001gT-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 12:02:34 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id DAF8921AB4;
 Thu,  2 Jan 2020 07:02:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 02 Jan 2020 07:02:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=zuWDcg7zSB2C8mn4sg/ZiVp1gTg
 MO2RFHU05NgdgKPo=; b=ZcQJaYmjRbymIq7CJNgM5Ycvh2VUOdoFgqNauD9i88o
 vKN791gcjYsyQnN+7M47GzVutfVQiaRf9hBsJR0mc8AgxdlZsjLXUt9FzmMsOjqQ
 /bgakPZUHA802+VmQATzrix/3PWHf9wwh9MHkKS5xmTsYO04tvFxjGop6N5mbOXf
 Bw7byr8ffDPwl7C/V1RNOWdD5eKRkut7b0Kvx0NuwRZao6h/B+ITJsAzS1PCD0nS
 cVUDRhIdof/PVFfU5M5RrV99O5ITZu6sbep3jXtdW9egn5vuS2I1v9vG14GV7O6Q
 /shzPJXeK4gerhhdO2FifT8BIAJ5tfEfhJnrt3vzPLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=zuWDcg
 7zSB2C8mn4sg/ZiVp1gTgMO2RFHU05NgdgKPo=; b=OPi7g8lttnV6QpDPmeB1hM
 U6jufUtwLtiAA/lfprR4NbfUkRx5O77reNlVsMS7ncN0sCiZZGhtode2ZBbAUmGl
 4fY1xXxF9sTjLmVbnLf1Zwe3uUP2iYfsyKF8fJHsYNv1tN2ecf3rTWrQZ6oQddS8
 U7OeOnZlnLmnEr3sa+arnXb4U+z7glBRk51dbs/r5qIJIyZTG2qrIZlhrfQNt/Qa
 UKZAlZenF0wN3jtO0PASA0jWCW3U4JeTQRZQXBHjmocxf1iuC0fVTLHP7GcdkLtM
 W/um78hkWBPeFEl3TDsiRt2O0jjJWoKczOibEPLWVIZSGscBppx1T5mFFZr4N/DA
 ==
X-ME-Sender: <xms:0dsNXklazYzvw6PbdTXtd-RYAozODDtWhb_nmU3cQ18WwdhXYCI7tw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeguddgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucfr
 rghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlh
 hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:0dsNXvUNsVIMHy-RSUP5i08MDp7EWtvaNcscQGdb32t0qP19GxNTYw>
 <xmx:0dsNXorGeYNy5EMh3m_JA2_Veg1rj9-hoIE4UEQNjmTWZ508LH1nCw>
 <xmx:0dsNXuVZ-UxnhzSpBLLBZQ8cb3Dz1W0ijGLREsTdhYsbtgo8Hsv_OA>
 <xmx:0dsNXugP0d2yAvXAxn3sqZs_kwRgCLeNWKzMOL9ifjJuoXsywYH_ZA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D9C9E80060;
 Thu,  2 Jan 2020 07:02:24 -0500 (EST)
Date: Thu, 2 Jan 2020 13:02:22 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
Message-ID: <20200102120222.yl7vlposk4b7hbu7@gilmour.lan>
References: <20191219084332.944123-1-maxime@cerno.tech>
 <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
 <20191220080310.w2xtgzxend5bmv2q@gilmour.lan>
 <CAGb2v65+zpc1_0K2Co4uOUrfshzmVCf1Rc6Ob2YtmdmdsNTAvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65+zpc1_0K2Co4uOUrfshzmVCf1Rc6Ob2YtmdmdsNTAvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_040232_730086_29577C20 
X-CRM114-Status: GOOD (  24.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============0628307089137039021=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0628307089137039021==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ipbwaosvpccerm6p"
Content-Disposition: inline


--ipbwaosvpccerm6p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Dec 20, 2019 at 04:10:03PM +0800, Chen-Yu Tsai wrote:
> On Fri, Dec 20, 2019 at 4:03 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > Hi,
> >
> > On Thu, Dec 19, 2019 at 11:24:52PM +0800, Chen-Yu Tsai wrote:
> > > On Thu, Dec 19, 2019 at 4:43 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > >
> > > > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > > > with a matching Device Tree binding.
> > > >
> > > > Now that we have the DT validation in place, let's convert the device tree
> > > > bindings for that controller over to a YAML schemas.
> > > >
> > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > ---
> > > >  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
> > > >  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
> > > >  2 files changed, 135 insertions(+), 37 deletions(-)
> > > >  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > >  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > new file mode 100644
> > > > index 000000000000..ded7d6f0a119
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > @@ -0,0 +1,135 @@
> > > > +# SPDX-License-Identifier: GPL-2.0
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Allwinner A80 USB PHY Device Tree Bindings
> > > > +
> > > > +maintainers:
> > > > +  - Chen-Yu Tsai <wens@csie.org>
> > > > +  - Maxime Ripard <mripard@kernel.org>
> > > > +
> > > > +properties:
> > > > +  "#phy-cells":
> > > > +    const: 0
> > > > +
> > > > +  compatible:
> > > > +    const: allwinner,sun9i-a80-usb-phy
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  clocks:
> > > > +    anyOf:
> > > > +      - description: Main PHY Clock
> > > > +
> > > > +      - items:
> > > > +          - description: Main PHY clock
> > > > +          - description: HSIC 12MHz clock
> > > > +          - description: HSIC 480MHz clock
> > > > +
> > > > +  clock-names:
> > > > +    oneOf:
> > > > +      - const: phy
> > > > +
> > > > +      - items:
> > > > +          - const: phy
> > > > +          - const: hsic_12M
> > > > +          - const: hsic_480M
> > > > +
> > > > +  resets:
> > > > +    anyOf:
> > > > +      - description: Normal USB PHY reset
> > > > +
> > > > +      - items:
> > > > +          - description: Normal USB PHY reset
> > > > +          - description: HSIC Reset
> > > > +
> > > > +  reset-names:
> > > > +    oneOf:
> > > > +      - const: phy
> > > > +
> > > > +      - items:
> > > > +          - const: phy
> > > > +          - const: hsic
> > > > +
> > > > +  phy_type:
> > > > +    const: hsic
> > > > +    description:
> > > > +      When absent, the PHY type will be assumed to be normal USB.
> > > > +
> > > > +  phy-supply:
> > > > +    description:
> > > > +      Regulator that powers VBUS
> > > > +
> > > > +required:
> > > > +  - "#phy-cells"
> > > > +  - compatible
> > > > +  - reg
> > > > +  - clocks
> > > > +  - clock-names
> > > > +  - resets
> > > > +  - reset-names
> > > > +
> > > > +additionalProperties: false
> > > > +
> > > > +if:
> > > > +  properties:
> > > > +    phy_type:
> > > > +      const: hsic
> > > > +
> > > > +  required:
> > > > +    - phy_type
> > > > +
> > > > +then:
> > > > +  properties:
> > > > +    clocks:
> > > > +      maxItems: 3
> > > > +
> > > > +    clock-names:
> > > > +      maxItems: 3
> > > > +
> > > > +    resets:
> > > > +      maxItems: 2
> > > > +
> > > > +    reset-names:
> > > > +      maxItems: 2
> > >
> > > So this is slightly incorrect. If phy_type == "hsic", then the
> > > "phy" clock and reset should not be needed. I say should because
> > > no boards actually came with HSIC implemented. The A80 Optimus
> > > board had the HSIC lines on one of the GPIO headers, but I never
> > > had any HSIC chips lol.
> >
> > This isn't what the previous binding was saying though :/
>
> From the original binding:
>
> - clock-names : depending on the "phy_type" property,
>   * "phy" for normal USB
>   * "hsic_480M", "hsic_12M" for HSIC
> - resets : a list of phandle + reset specifier pairs
> - reset-names : depending on the "phy_type" property,
>   * "phy" for normal USB
>   * "hsic" for HSIC
>
> It is recommended to list all clocks and resets available.
> The driver will only use those matching the phy_type.

I'm not quite sure how we want to fix this then, or even what there's
to fix.

The previous binding is saying that we need either phy or hsic, and
that we should ideally set both. The DT are following that
recommendation, and we have either one item for the clocks (phy), or
three (phy + 2 HSIC clocks). resets is in a similar situation.

The binding allows to have either one or three, and enforce that in
HSIC we have three (but leaves the option open to have either 1 or 3
in the normal phy type).

As far as I can see, we cover what the binding was saying. Am I
missing something?

Maxime

--ipbwaosvpccerm6p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg3bzgAKCRDj7w1vZxhR
xQpAAP9mI/nk8u/HUiPnMzDhVNDQiIEkXsacwj7tjGpJXZ6ViAEA2UYFYHvdhhX8
RiRb5HF5w+8hji8Ui039Z8pkhhF7xgM=
=q0Wo
-----END PGP SIGNATURE-----

--ipbwaosvpccerm6p--


--===============0628307089137039021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0628307089137039021==--

