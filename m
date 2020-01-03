Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F65C12F6E2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 11:52:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vrOwr95BewIs4/mStxr3MVWj2v7LxAyUxrWCjIC6hFY=; b=IFZ07fgdj/DUG6
	iwfzkAfIk2TKX9x79kiNbH1RA+kUpy7M90HlvYcvMOJaN+5IixgBLuyhdifbHouUcL3W0ujEkE4p/
	yJz96bZsiCcHWwW8GbHkXw68WiSjldNN7VCK9x8x8Uya9nN2ke2vb/q5oayCofloO+hHcpjHv+sJv
	4aqqPSwP2jnPUi7RaNaaEUAF29+6YqRDiCM8chbBUP/5l9lElobSRQQxcVl/Hn3PxkfXnuWgysThH
	sx6a30yI1Ato9x1V7wawXu5UTrMqXEu3e5EBnODPKEAdALuLyd8i2BvXJPWZsO6QFzRc3MBbGfsHC
	UFdZfOrSsp/00WqP7z5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inKYi-0005yz-O9; Fri, 03 Jan 2020 10:52:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inKYb-0005yU-MS
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 10:51:55 +0000
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BFB224649
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Jan 2020 10:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578048712;
 bh=xgCqWC9gMvYtoY+vNfhgrpAK9WwuqpgEvs1GflowvdE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zrDCCB+ukMN6zESqhRipK1VWve6wiprPFMaZMROg7bxZgibByIKzw/fROISff30WB
 Es9WRWSB5LHfectabqcjtDJ46vsIzVEEt/cmRYrplXtZHb+sJRZQuCJ9qzWfms8Fcu
 jlKtrGeUDFouS0JMkCUVzMmCkRqWyyrlnKx4GizI=
Received: by mail-wr1-f49.google.com with SMTP id c9so42021617wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 02:51:52 -0800 (PST)
X-Gm-Message-State: APjAAAXeCIh5ZBp2cfhcHN/8TdM41pwMjtnhDXqdvgkrRuiaBy0h0T9w
 sMcPkx4VcowgcUI9um7iuDaA2BjatkPDZZUn5Sg=
X-Google-Smtp-Source: APXvYqxr9XPHqQfkTDnCjdV5SYfOp0JHGElgFTkLIVUUHmsexTwkpsAxHVcuWUJ2D7X9tCsBgct67+zsdoterXKR1nY=
X-Received: by 2002:adf:cf12:: with SMTP id o18mr88985838wrj.361.1578048710506; 
 Fri, 03 Jan 2020 02:51:50 -0800 (PST)
MIME-Version: 1.0
References: <20191219084332.944123-1-maxime@cerno.tech>
 <CAGb2v643z-GwEgOV_OS96ESihDgGNOwp2s7eyJr68QFyPNqd_Q@mail.gmail.com>
 <20191220080310.w2xtgzxend5bmv2q@gilmour.lan>
 <CAGb2v65+zpc1_0K2Co4uOUrfshzmVCf1Rc6Ob2YtmdmdsNTAvQ@mail.gmail.com>
 <20200102120222.yl7vlposk4b7hbu7@gilmour.lan>
 <CAGb2v66pixivryxffXWceLknFLErRJH3BQgtQUQSeyQq-FO=ng@mail.gmail.com>
 <20200102152641.kgckxlcq7u7xjjrl@gilmour.lan>
In-Reply-To: <20200102152641.kgckxlcq7u7xjjrl@gilmour.lan>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 3 Jan 2020 18:51:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v65NBnua8V1r8OD6V67NtyHmnq0TUTTutJ+7MthrWDYjLQ@mail.gmail.com>
Message-ID: <CAGb2v65NBnua8V1r8OD6V67NtyHmnq0TUTTutJ+7MthrWDYjLQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: Convert Allwinner A80 USB PHY
 controller to a schema
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_025153_775574_99D05D2F 
X-CRM114-Status: GOOD (  31.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 devicetree <devicetree@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 11:26 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> On Thu, Jan 02, 2020 at 08:31:40PM +0800, Chen-Yu Tsai wrote:
> > On Thu, Jan 2, 2020 at 8:02 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi,
> > >
> > > On Fri, Dec 20, 2019 at 04:10:03PM +0800, Chen-Yu Tsai wrote:
> > > > On Fri, Dec 20, 2019 at 4:03 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > On Thu, Dec 19, 2019 at 11:24:52PM +0800, Chen-Yu Tsai wrote:
> > > > > > On Thu, Dec 19, 2019 at 4:43 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > >
> > > > > > > The Allwinner A80 SoCs have a USB PHY controller that is used by Linux,
> > > > > > > with a matching Device Tree binding.
> > > > > > >
> > > > > > > Now that we have the DT validation in place, let's convert the device tree
> > > > > > > bindings for that controller over to a YAML schemas.
> > > > > > >
> > > > > > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > > > > > ---
> > > > > > >  .../phy/allwinner,sun9i-a80-usb-phy.yaml      | 135 ++++++++++++++++++
> > > > > > >  .../devicetree/bindings/phy/sun9i-usb-phy.txt |  37 -----
> > > > > > >  2 files changed, 135 insertions(+), 37 deletions(-)
> > > > > > >  create mode 100644 Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > > > >  delete mode 100644 Documentation/devicetree/bindings/phy/sun9i-usb-phy.txt
> > > > > > >
> > > > > > > diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > > > > new file mode 100644
> > > > > > > index 000000000000..ded7d6f0a119
> > > > > > > --- /dev/null
> > > > > > > +++ b/Documentation/devicetree/bindings/phy/allwinner,sun9i-a80-usb-phy.yaml
> > > > > > > @@ -0,0 +1,135 @@
> > > > > > > +# SPDX-License-Identifier: GPL-2.0
> > > > > > > +%YAML 1.2
> > > > > > > +---
> > > > > > > +$id: http://devicetree.org/schemas/phy/allwinner,sun9i-a80-usb-phy.yaml#
> > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > +
> > > > > > > +title: Allwinner A80 USB PHY Device Tree Bindings
> > > > > > > +
> > > > > > > +maintainers:
> > > > > > > +  - Chen-Yu Tsai <wens@csie.org>
> > > > > > > +  - Maxime Ripard <mripard@kernel.org>
> > > > > > > +
> > > > > > > +properties:
> > > > > > > +  "#phy-cells":
> > > > > > > +    const: 0
> > > > > > > +
> > > > > > > +  compatible:
> > > > > > > +    const: allwinner,sun9i-a80-usb-phy
> > > > > > > +
> > > > > > > +  reg:
> > > > > > > +    maxItems: 1
> > > > > > > +
> > > > > > > +  clocks:
> > > > > > > +    anyOf:
> > > > > > > +      - description: Main PHY Clock
> > > > > > > +
> > > > > > > +      - items:
> > > > > > > +          - description: Main PHY clock
> > > > > > > +          - description: HSIC 12MHz clock
> > > > > > > +          - description: HSIC 480MHz clock
> > > > > > > +
> > > > > > > +  clock-names:
> > > > > > > +    oneOf:
> > > > > > > +      - const: phy
> > > > > > > +
> > > > > > > +      - items:
> > > > > > > +          - const: phy
> > > > > > > +          - const: hsic_12M
> > > > > > > +          - const: hsic_480M
> > > > > > > +
> > > > > > > +  resets:
> > > > > > > +    anyOf:
> > > > > > > +      - description: Normal USB PHY reset
> > > > > > > +
> > > > > > > +      - items:
> > > > > > > +          - description: Normal USB PHY reset
> > > > > > > +          - description: HSIC Reset
> > > > > > > +
> > > > > > > +  reset-names:
> > > > > > > +    oneOf:
> > > > > > > +      - const: phy
> > > > > > > +
> > > > > > > +      - items:
> > > > > > > +          - const: phy
> > > > > > > +          - const: hsic
> > > > > > > +
> > > > > > > +  phy_type:
> > > > > > > +    const: hsic
> > > > > > > +    description:
> > > > > > > +      When absent, the PHY type will be assumed to be normal USB.
> > > > > > > +
> > > > > > > +  phy-supply:
> > > > > > > +    description:
> > > > > > > +      Regulator that powers VBUS
> > > > > > > +
> > > > > > > +required:
> > > > > > > +  - "#phy-cells"
> > > > > > > +  - compatible
> > > > > > > +  - reg
> > > > > > > +  - clocks
> > > > > > > +  - clock-names
> > > > > > > +  - resets
> > > > > > > +  - reset-names
> > > > > > > +
> > > > > > > +additionalProperties: false
> > > > > > > +
> > > > > > > +if:
> > > > > > > +  properties:
> > > > > > > +    phy_type:
> > > > > > > +      const: hsic
> > > > > > > +
> > > > > > > +  required:
> > > > > > > +    - phy_type
> > > > > > > +
> > > > > > > +then:
> > > > > > > +  properties:
> > > > > > > +    clocks:
> > > > > > > +      maxItems: 3
> > > > > > > +
> > > > > > > +    clock-names:
> > > > > > > +      maxItems: 3
> > > > > > > +
> > > > > > > +    resets:
> > > > > > > +      maxItems: 2
> > > > > > > +
> > > > > > > +    reset-names:
> > > > > > > +      maxItems: 2
> > > > > >
> > > > > > So this is slightly incorrect. If phy_type == "hsic", then the
> > > > > > "phy" clock and reset should not be needed. I say should because
> > > > > > no boards actually came with HSIC implemented. The A80 Optimus
> > > > > > board had the HSIC lines on one of the GPIO headers, but I never
> > > > > > had any HSIC chips lol.
> > > > >
> > > > > This isn't what the previous binding was saying though :/
> > > >
> > > > From the original binding:
> > > >
> > > > - clock-names : depending on the "phy_type" property,
> > > >   * "phy" for normal USB
> > > >   * "hsic_480M", "hsic_12M" for HSIC
> > > > - resets : a list of phandle + reset specifier pairs
> > > > - reset-names : depending on the "phy_type" property,
> > > >   * "phy" for normal USB
> > > >   * "hsic" for HSIC
> > > >
> > > > It is recommended to list all clocks and resets available.
> > > > The driver will only use those matching the phy_type.
> > >
> > > I'm not quite sure how we want to fix this then, or even what there's
> > > to fix.
> > >
> > > The previous binding is saying that we need either phy or hsic, and
> > > that we should ideally set both. The DT are following that
> > > recommendation, and we have either one item for the clocks (phy), or
> > > three (phy + 2 HSIC clocks). resets is in a similar situation.
> > >
> > > The binding allows to have either one or three, and enforce that in
> > > HSIC we have three (but leaves the option open to have either 1 or 3
> > > in the normal phy type).
> > >
> > > As far as I can see, we cover what the binding was saying. Am I
> > > missing something?
> >
> > I guess you're right. Lets just keep why you've done already.
> > Sorry for the noise.
>
> Is that a Reviewed-by ? :)

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

:)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
