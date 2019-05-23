Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F9C12801C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 16:45:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xGuxu1JRl0Qi7HdadNqbXalkjLOt+Inku+MJ8Fh7OoQ=; b=Gtx1nQZilyyt/d
	KmbYPcYeRT6FVvd5dRmxwgQU1ZIl4JCudzYb9cxzYPfOsshOgoyjy20tTOiefHFz8WiWsrJuOMZaN
	cl+R5MvM9kVDKfgi9t3psT0zIg0yTRb1bAtyZgj8xnLPL4wOUwSzBjpcgKaVdgjUMl5cSti3DhfTi
	nyCNAf1BFHwxEVrUPo3+rWSenlVvrurCmnw6FZwi0U2dhgRDgkW+oAND4CjbAbzCxwTdNBjiIpAhQ
	fqwaRbfFQ/qM7XEo40VaMbDiNmYBcWPwLgXROeDSy3TAS1enUvYUam5bYKVuPvFWH5BKALmZwWJNH
	d17m2n9vw5Ton+swzKUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToyM-0003Fb-9A; Thu, 23 May 2019 14:45:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToxv-00021y-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 14:45:13 +0000
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
 [209.85.222.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3E93217F9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 14:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558622704;
 bh=UJ6x3F7sdFiOx8Qz/M2AGY26AYeMGeaR3viNAzUA7p4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JUBp0myiJ7iWl85P2mfSxSP+8boBDZ0T0Qznd0KYDovFON67XvzlmO5HI2uwS3yGM
 4jCxZsd5xuKN7Fsuc/LcspQVTm4izKpyKkRnHC7yUxgno7WpMQVNP7pdSpN/IpXX5v
 gMITLGxP3+FH+QMPFqgYsHoWszMEnP6mv62g2Vy4=
Received: by mail-qk1-f170.google.com with SMTP id i125so1827057qkd.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 07:45:03 -0700 (PDT)
X-Gm-Message-State: APjAAAVMUsW13Xsz4bWrazE2tpBWTzjmpm6a9SNMY62BhgKOpDDj8m0p
 geJtIUTzjLmENFHyPUUylTojm2fDoyWh65ybjw==
X-Google-Smtp-Source: APXvYqyW7iDCtnwbv4EZaFOhy7TBsqR2kCrTlF0HdyA4uTDUp13t2mH2O1gAJ3Mc9pvOziiL7skpu0AaShDUQLHjP+s=
X-Received: by 2002:ae9:c208:: with SMTP id j8mr2382677qkg.264.1558622703175; 
 Thu, 23 May 2019 07:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <74d98cc3c744d53710c841381efd41cf5f15e656.1558605170.git-series.maxime.ripard@bootlin.com>
 <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <aa5ec90854429c2d9e2c565604243e1b10cfd94b.1558605170.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 23 May 2019 09:44:51 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJvgUAmON5Vew-mnwkFjNuRkx_f7quiy_7Rv_55JpzOOA@mail.gmail.com>
Message-ID: <CAL_JsqJvgUAmON5Vew-mnwkFjNuRkx_f7quiy_7Rv_55JpzOOA@mail.gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: net: Add a YAML schemas for the generic
 PHY options
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_074508_165399_B851EA95 
X-CRM114-Status: GOOD (  26.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 =?UTF-8?Q?Antoine_T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev <netdev@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com,
 Chen-Yu Tsai <wens@csie.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 4:57 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The networking PHYs have a number of available device tree properties that
> can be used in their device tree node. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/net/ethernet-phy.yaml | 148 +++++++++-
>  Documentation/devicetree/bindings/net/phy.txt           |  80 +-----
>  2 files changed, 149 insertions(+), 79 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/ethernet-phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> new file mode 100644
> index 000000000000..eb79ee6db977
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
> @@ -0,0 +1,148 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/ethernet-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ethernet PHY Generic Binding
> +
> +maintainers:
> +  - David S. Miller <davem@davemloft.net>
> +
> +properties:
> +  $nodename:
> +    pattern: "^ethernet-phy(@[a-f0-9])?$"
> +
> +  compatible:
> +    oneOf:
> +      - const: ethernet-phy-ieee802.3-c22
> +        description: PHYs that implement IEEE802.3 clause 22
> +      - const: ethernet-phy-ieee802.3-c45
> +        description: PHYs that implement IEEE802.3 clause 45
> +      - pattern: "^ethernet-phy-id[a-f0-9]{4}\\.[a-f0-9]{4}$"
> +        description:
> +          The first group of digits is the 16 bit Phy Identifier 1
> +          register, this is the chip vendor OUI bits 3:18. The
> +          second group of digits is the Phy Identifier 2 register,
> +          this is the chip vendor OUI bits 19:24, followed by 10
> +          bits of a vendor specific ID.
> +
> +  reg:
> +    maxItems: 1
> +    minimum: 0
> +    maximum: 31

min/max need to be under 'items'. I don't think these would ever be
valid if the type is an array.

I've modified the meta-schema to catch this.

> +    description:
> +      The ID number for the PHY.
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  max-speed:
> +    enum:
> +      - 10
> +      - 100
> +      - 1000
> +    description:
> +      Maximum PHY supported speed in Mbits / seconds.
> +
> +  broken-turn-around:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      If set, indicates the PHY device does not correctly release
> +      the turn around line low at the end of a MDIO transaction.
> +
> +  enet-phy-lane-swap:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      If set, indicates the PHY will swap the TX/RX lanes to
> +      compensate for the board being designed with the lanes
> +      swapped.
> +
> +  eee-broken-100tx:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Mark the corresponding energy efficient ethernet mode as
> +      broken and request the ethernet to stop advertising it.
> +
> +  eee-broken-1000t:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Mark the corresponding energy efficient ethernet mode as
> +      broken and request the ethernet to stop advertising it.
> +
> +  eee-broken-10gt:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Mark the corresponding energy efficient ethernet mode as
> +      broken and request the ethernet to stop advertising it.
> +
> +  eee-broken-1000kx:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Mark the corresponding energy efficient ethernet mode as
> +      broken and request the ethernet to stop advertising it.
> +
> +  eee-broken-10gkx4:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Mark the corresponding energy efficient ethernet mode as
> +      broken and request the ethernet to stop advertising it.
> +
> +  eee-broken-10gkr:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      Mark the corresponding energy efficient ethernet mode as
> +      broken and request the ethernet to stop advertising it.
> +
> +  phy-is-integrated:
> +    $ref: /schemas/types.yaml#definitions/flag
> +    description:
> +      If set, indicates that the PHY is integrated into the same
> +      physical package as the Ethernet MAC. If needed, muxers
> +      should be configured to ensure the integrated PHY is
> +      used. The absence of this property indicates the muxers
> +      should be configured so that the external PHY is used.
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: phy
> +
> +  reset-gpios:
> +    description:
> +      The GPIO phandle and specifier for the PHY reset signal.

maxItems: 1

I have a meta-schema change to catch this, but It will require updates
to some existing cases.


> +
> +  reset-assert-us:
> +    description:
> +      Delay after the reset was asserted in microseconds. If this
> +      property is missing the delay will be skipped.
> +
> +  reset-deassert-us:
> +    description:
> +      Delay after the reset was deasserted in microseconds. If
> +      this property is missing the delay will be skipped.
> +
> +required:
> +  - reg
> +  - interrupts
> +
> +examples:
> +  - |
> +    ethernet {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ethernet-phy@0 {
> +            compatible = "ethernet-phy-id0141.0e90", "ethernet-phy-ieee802.3-c22";
> +            interrupt-parent = <&PIC>;
> +            interrupts = <35 1>;
> +            reg = <0>;
> +
> +            resets = <&rst 8>;
> +            reset-names = "phy";
> +            reset-gpios = <&gpio1 4 1>;
> +            reset-assert-us = <1000>;
> +            reset-deassert-us = <2000>;
> +        };
> +    };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
