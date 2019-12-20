Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8CD1276FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 09:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Japv1g4z7jbYPFwuIVHvzUgpAJXxlDKDavYYathGrk=; b=qyaj+vK3EK9YRw
	DFKtbPw1E4b2tdbHY/GK9gRpmhuoK6teXJ9eD9YFnuRdTzL80jJB/IaZD4mdfyFYmn6uhCsWFs0ai
	v12HeoWDsRVNQuQLw+Ptji6hlTIApGPJvGiaL+Wp2mhnwItPnVGNrHxS8+9gSkZ8mcwn4tL+41NlO
	SSqGFmZTZoJoSCNKorCWvcGFr+axXbnAYB4rxsPAFdU93OAC9sdF0Mwpb+IT1BQfxjexUU5CjJXC2
	fEpN9Bep9ytZ0PJ+LcjkeJJ5QwFwbqHgQcloQ1vveGkNrdmvjvKY+QYUBMqI7x0OoFKSJ6JFp8QfV
	dAxHEGQ7USk5xkn/f5dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiDMi-0005se-4b; Fri, 20 Dec 2019 08:10:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiDMY-0005sC-K1
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 08:10:20 +0000
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
 [209.85.128.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C3AF24682
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 08:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576829417;
 bh=+Ue4YMhrP/TWYQlndBEEgxM06Vnt+rRsoVr9iQWxelE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=S0oIFPQObmtIOa9rw99ptEgYXT/oj/IwIuSfBD4Nbq1CVfvNpxC7EUG0f7kL0HRkn
 SFeq/dBmmBu1c3aNPkxIAPGdUq+EyNjwanTM5M1J9nMPL24B2JZqX4hlWVnrYuCZmb
 woEBI8/f6KPjS0AS8mWBtfG6TJ7zpInKTMXfgAGg=
Received: by mail-wm1-f52.google.com with SMTP id p9so7967286wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 00:10:17 -0800 (PST)
X-Gm-Message-State: APjAAAWhPviYHTpr3PR7ByrYi4lDGz1oe+CX1Z/DUWAMbEmOyHQKar4J
 LGTEa4jMt8FXXEy/PUCpqWz3GWZw1Pb1PirO5kQ=
X-Google-Smtp-Source: APXvYqxhnNTk+tBts6iL8RTAJJTNANczfG9ySH/QeJ429H9ZAEV4BLijfH7J3nM108Y2UmJVOEn06rVPMnKstFJR8BY=
X-Received: by 2002:a1c:3c45:: with SMTP id j66mr14308187wma.2.1576829415971; 
 Fri, 20 Dec 2019 00:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20191219084332.944123-1-maxime@cerno.tech>
 <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
 <20191220080310.w2xtgzxend5bmv2q@gilmour.lan>
In-Reply-To: <20191220080310.w2xtgzxend5bmv2q@gilmour.lan>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 20 Dec 2019 16:10:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v65+zpc1_0K2Co4uOUrfshzmVCf1Rc6Ob2YtmdmdsNTAvQ@mail.gmail.com>
Message-ID: <CAGb2v65+zpc1_0K2Co4uOUrfshzmVCf1Rc6Ob2YtmdmdsNTAvQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_001018_700623_8C39EBAC 
X-CRM114-Status: GOOD (  27.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 4:03 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi,
>
> On Thu, Dec 19, 2019 at 11:24:52PM +0800, Chen-Yu Tsai wrote:
> > On Thu, Dec 19, 2019 at 4:43 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > > with a matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
> > >  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
> > >  2 files changed, 135 insertions(+), 37 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > new file mode 100644
> > > index 000000000000..ded7d6f0a119
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > @@ -0,0 +1,135 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Allwinner A80 USB PHY Device Tree Bindings
> > > +
> > > +maintainers:
> > > +  - Chen-Yu Tsai <wens@csie.org>
> > > +  - Maxime Ripard <mripard@kernel.org>
> > > +
> > > +properties:
> > > +  "#phy-cells":
> > > +    const: 0
> > > +
> > > +  compatible:
> > > +    const: allwinner,sun9i-a80-usb-phy
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    anyOf:
> > > +      - description: Main PHY Clock
> > > +
> > > +      - items:
> > > +          - description: Main PHY clock
> > > +          - description: HSIC 12MHz clock
> > > +          - description: HSIC 480MHz clock
> > > +
> > > +  clock-names:
> > > +    oneOf:
> > > +      - const: phy
> > > +
> > > +      - items:
> > > +          - const: phy
> > > +          - const: hsic_12M
> > > +          - const: hsic_480M
> > > +
> > > +  resets:
> > > +    anyOf:
> > > +      - description: Normal USB PHY reset
> > > +
> > > +      - items:
> > > +          - description: Normal USB PHY reset
> > > +          - description: HSIC Reset
> > > +
> > > +  reset-names:
> > > +    oneOf:
> > > +      - const: phy
> > > +
> > > +      - items:
> > > +          - const: phy
> > > +          - const: hsic
> > > +
> > > +  phy_type:
> > > +    const: hsic
> > > +    description:
> > > +      When absent, the PHY type will be assumed to be normal USB.
> > > +
> > > +  phy-supply:
> > > +    description:
> > > +      Regulator that powers VBUS
> > > +
> > > +required:
> > > +  - "#phy-cells"
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - resets
> > > +  - reset-names
> > > +
> > > +additionalProperties: false
> > > +
> > > +if:
> > > +  properties:
> > > +    phy_type:
> > > +      const: hsic
> > > +
> > > +  required:
> > > +    - phy_type
> > > +
> > > +then:
> > > +  properties:
> > > +    clocks:
> > > +      maxItems: 3
> > > +
> > > +    clock-names:
> > > +      maxItems: 3
> > > +
> > > +    resets:
> > > +      maxItems: 2
> > > +
> > > +    reset-names:
> > > +      maxItems: 2
> >
> > So this is slightly incorrect. If phy_type == "hsic", then the
> > "phy" clock and reset should not be needed. I say should because
> > no boards actually came with HSIC implemented. The A80 Optimus
> > board had the HSIC lines on one of the GPIO headers, but I never
> > had any HSIC chips lol.
>
> This isn't what the previous binding was saying though :/

From the original binding:

- clock-names : depending on the "phy_type" property,
  * "phy" for normal USB
  * "hsic_480M", "hsic_12M" for HSIC
- resets : a list of phandle + reset specifier pairs
- reset-names : depending on the "phy_type" property,
  * "phy" for normal USB
  * "hsic" for HSIC

It is recommended to list all clocks and resets available.
The driver will only use those matching the phy_type.

> > > -- phy_type : "hsic" for HSIC usage;
> > > -            other values or absence of this property indicates normal USB
> > > -- clocks : phandle + clock specifier for the phy clocks
> > > -- clock-names : depending on the "phy_type" property,
> > > -  * "phy" for normal USB
> > > -  * "hsic_480M", "hsic_12M" for HSIC
> > > -- resets : a list of phandle + reset specifier pairs
> > > -- reset-names : depending on the "phy_type" property,
> > > -  * "phy" for normal USB
> > > -  * "hsic" for HSIC
>
> It's speficied that the reset and clock is needed. If we want to
> revise that, we can do it, but I guess it should be in a separate
> patch than the one doing the conversion. Here we just want to express
> the exact same thing.

So the original binding only recommends having all clocks.
But given that these are internal to the SoC, having them
all is easier I suppose.

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
