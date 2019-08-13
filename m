Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6634F8AEEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 07:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukbQKMaJDO7bJ2wTDY/zMELLDIynjXIBGYe5bs5JMdI=; b=MDN6zqTB5leQ4r
	zp4nZiSRqsoCOcQg54It4grnW/jhh7ZPRxMG9E9Oiomkb7DGUUcgBb3KQxpb+zcb5TvSx7p1yCPsm
	0lXuVTLZPqAmdYOajOrMHsKlRVeEDgLEKG0eJU5GYAPaxq+V0LzXzurwHLN1Krc0ZLO/TLKNppllB
	7NFWMxikLEx40u17gkztmZgk3YWcdCtD2c9OnXZD4/R+IoYrs104E+XFXbPpyUNO4QHqwvdohwGST
	TCiLXxR6HkzLzvkswRO4M4u7RcS1m1lX9ZKtyOsQxugieOt6lyc7dRL6FtvY6S5vW8Uy0VqxF2SU6
	NALaku0KuvPSKxUWt2nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxPf5-0002Zh-Px; Tue, 13 Aug 2019 05:48:00 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxPes-0002Yy-48
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 05:47:48 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1381A20003;
 Tue, 13 Aug 2019 05:47:38 +0000 (UTC)
Date: Tue, 13 Aug 2019 07:47:38 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller
 to a schema
Message-ID: <20190813054738.ge2jdu6qn2vaoasd@flea>
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
 <20190723132658.5068-2-maxime.ripard@bootlin.com>
 <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_224746_467982_BF8E9142 
X-CRM114-Status: GOOD (  24.05  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Tue, Jul 23, 2019 at 10:32:41AM -0600, Rob Herring wrote:
> On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The Allwinner SoCs have an interrupt controller called NMI supported in
> > Linux, with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > ---
> >  .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
> >  .../allwinner,sunxi-nmi.txt                   | 29 -------
> >  2 files changed, 83 insertions(+), 29 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
> >
> > diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > new file mode 100644
> > index 000000000000..cb8077b0c8dd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> > @@ -0,0 +1,83 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Chen-Yu Tsai <wens@csie.org>
> > +  - Maxime Ripard <maxime.ripard@bootlin.com>
> > +
> > +allOf:
> > +  - $ref: /schemas/interrupt-controller.yaml#
> > +
> > +select:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - allwinner,sun6i-a31-r-intc
> > +          - allwinner,sun7i-a20-sc-nmi
> > +          - allwinner,sun9i-a80-sc-nmi
>
> This should have all the possible compatibles in case all are not
> listed.

I'm sorry, but I'm not sure I understood what you meant here :/

>
> > +
> > +          # Deprecated
> > +          - allwinner,sun6i-a31-sc-nmi
>
> I know we already did things this way before, but perhaps this should
> be listed below with the 'deprecated' property. The tools can include
> it in select, but then remove it from compatible property.

Can we have more than just one of the choice for an enum?

In this particular case, since we have oneOf it's not really too much
of an issue, but there's a significant amount of users of enum for the
compatibles.

Thanks!
Maxime

> > +
> > +  required:
> > +    - compatible
> > +
> > +properties:
> > +  "#interrupt-cells":
> > +    const: 2
> > +    description:
> > +      The first cell is the IRQ number, the second cell the trigger
> > +      type as defined in interrupt.txt in this directory.
> > +
> > +  compatible:
> > +    oneOf:
> > +      - const: allwinner,sun6i-a31-r-intc
> > +      - const: allwinner,sun7i-a20-sc-nmi
> > +      - items:
> > +        - const: allwinner,sun8i-a83t-r-intc
> > +        - const: allwinner,sun6i-a31-r-intc
> > +      - const: allwinner,sun9i-a80-sc-nmi
> > +      - items:
> > +        - const: allwinner,sun50i-a64-r-intc
> > +        - const: allwinner,sun6i-a31-r-intc
> > +      - items:
> > +        - const: allwinner,sun50i-h6-r-intc
> > +        - const: allwinner,sun6i-a31-r-intc
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  interrupt-controller: true
> > +
> > +required:
> > +  - "#interrupt-cells"
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - interrupt-controller
> > +
> > +# FIXME: We should set it, but it would report all the generic
> > +# properties as additional properties.
> > +# additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    interrupt-controller@1c00030 {
> > +        compatible = "allwinner,sun7i-a20-sc-nmi";
> > +        interrupt-controller;
> > +        #interrupt-cells = <2>;
> > +        reg = <0x01c00030 0x0c>;
> > +        interrupt-parent = <&gic>;
> > +        interrupts = <0 0 4>;
> > +    };
> > +
> > +...

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
