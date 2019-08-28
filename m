Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58179A0247
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:54:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p4p2AW3ae17P7Ws7vF0Fp/zce8elTB7nTC22FnVgkpc=; b=VETGOiOr03MMr+QmRLIvbtrwr
	E+YoR+edlcXbDnYNfV5URJuO/hh1L93vwfWjrXwV3d1Sqi/aVEDA0TqIeZAy0NL0nk79v7fhN0dAZ
	x0+cxc8iMVontyjsL9FytwV/Wq9TiluxCKcSvkAWcj58pjSbof79iBK7sSrpoP6iYTLnHHj6LWUI0
	eD9vH4kV595JH+X3hPEkIRoznQiEMKWTeBCUhQ+41ALDvFOhdzDhY27Bo8uFVOUO0XQ2XPX7Jdk9/
	E8kxIIOxxlsCsphdW0uF2Lwn9q4etUuYGWy7hZtwDDtGDqTFeUUUyJSKZbV6xpgIKwpBW6qXHGNyZ
	pCjONz0zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xSd-0006p1-TN; Wed, 28 Aug 2019 12:54:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xRR-0005uK-Kl
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:52:51 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C85D122DA7;
 Wed, 28 Aug 2019 12:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566996769;
 bh=pWrQgmISDkbqSBxXp7l8VKfrAdsJraHRh2Qj6d4vPWo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VnLmHsw/scI8JLANLRg4jxD21qcb3AVY8M5amBfOqQTwnWdHt7b0mSUhW8Sz9+kWD
 seKxiOVLboAYrylCrJfL5wNUNfLYIKOtKX3CX/9ZDesEd1klWnPUnyzB7WmewXKsRD
 8UIbnI++kdXt/YTa39V3Admt9sVNhhB3Ms2thNiQ=
Date: Wed, 28 Aug 2019 14:52:46 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 3/5] dt-bindings: sound: Convert Allwinner A33 codec to a
 schema
Message-ID: <20190828125246.zy7ucra7dkiw4ia7@flea>
References: <20190827142547.14577-1-mripard@kernel.org>
 <20190827142547.14577-3-mripard@kernel.org>
 <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67tEgtD9PEus0TaPQg9969L_7dn2c4GFZSioR1AtxBpmQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_055249_854861_36C11BA2 
X-CRM114-Status: GOOD (  25.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5540322501219056388=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5540322501219056388==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="asta7q4d6eqzmvrk"
Content-Disposition: inline


--asta7q4d6eqzmvrk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Aug 27, 2019 at 10:29:33PM +0800, Chen-Yu Tsai wrote:
> On Tue, Aug 27, 2019 at 10:25 PM Maxime Ripard <mripard@kernel.org> wrote:
> >
> > From: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
> > with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
> >  .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
> >  2 files changed, 57 insertions(+), 63 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> >
> > diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> > new file mode 100644
> > index 000000000000..5e7cc05bbff1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a33-codec.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A33 Codec Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +properties:
> > +  "#sound-dai-cells":
> > +    const: 0
> > +
> > +  compatible:
> > +    const: allwinner,sun8i-a33-codec
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: Bus Clock
> > +      - description: Module Clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bus
> > +      - const: mod
> > +
> > +required:
> > +  - "#sound-dai-cells"
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    audio-codec@1c22e00 {
> > +      #sound-dai-cells = <0>;
> > +      compatible = "allwinner,sun8i-a33-codec";
> > +      reg = <0x01c22e00 0x400>;
> > +      interrupts = <0 29 4>;
> > +      clocks = <&ccu 47>, <&ccu 92>;
> > +      clock-names = "bus", "mod";
> > +    };
> > +
> > +...
> > diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> > deleted file mode 100644
> > index 7ecf6bd60d27..000000000000
> > --- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
> > +++ /dev/null
> > @@ -1,63 +0,0 @@
> > -Allwinner SUN8I audio codec
> > -------------------------------------
> > -
> > -On Sun8i-A33 SoCs, the audio is separated in different parts:
> > -         - A DAI driver. It uses the "sun4i-i2s" driver which is
> > -         documented here:
> > -         Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
> > -         - An analog part of the codec which is handled as PRCM registers.
> > -         See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
> > -         - An digital part of the codec which is documented in this current
> > -         binding documentation.
> > -         - And finally, an audio card which links all the above components.
> > -         The simple-audio card will be used.
> > -         See Documentation/devicetree/bindings/sound/simple-card.txt
> > -
> > -This bindings documentation exposes Sun8i codec (digital part).
> > -
> > -Required properties:
> > -- compatible: must be "allwinner,sun8i-a33-codec"
> > -- reg: must contain the registers location and length
> > -- interrupts: must contain the codec interrupt
> > -- clocks: a list of phandle + clock-specifer pairs, one for each entry
> > -  in clock-names.
> > -- clock-names: should contain followings:
> > -   - "bus": the parent APB clock for this controller
> > -   - "mod": the parent module clock
> > -
> > -Here is an example to add a sound card and the codec binding on sun8i SoCs that
> > -are similar to A33 using simple-card:
> > -
> > -       sound {
> > -               compatible = "simple-audio-card";
> > -               simple-audio-card,name = "sun8i-a33-audio";
> > -               simple-audio-card,format = "i2s";
> > -               simple-audio-card,frame-master = <&link_codec>;
> > -               simple-audio-card,bitclock-master = <&link_codec>;
> > -               simple-audio-card,mclk-fs = <512>;
> > -               simple-audio-card,aux-devs = <&codec_analog>;
> > -               simple-audio-card,routing =
> > -                               "Left DAC", "Digital Left DAC",
> > -                               "Right DAC", "Digital Right DAC";
>
> At some point we should start listing the endpoints available for routing?

Yeah, we should do that. I'm not sure how easy it would be using the
schemas though.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--asta7q4d6eqzmvrk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWZ5HgAKCRDj7w1vZxhR
xXkPAP45zvC7zUeQS2lM/nuzMIyZuUlKZcv+ZSPsCmK5nymqtQD/Zgsn1N/j/WrL
6VwTMy3hqtsI1G18kLcl6eq/vQdYsAw=
=pJOp
-----END PGP SIGNATURE-----

--asta7q4d6eqzmvrk--


--===============5540322501219056388==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5540322501219056388==--

