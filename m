Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B4C8B519
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 12:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxAGIHftv99Sl8hLRXzxeYbRcoltf9UTf2vFNWHZxRs=; b=bjlq4l6Jn1roaQ
	a2kmyUVIM83z2mp+pO+Jltzv36KQxf4CmS8r319XGM+RMc8GR8DueEdUAyYa2lNV41u1ByZs33i0V
	VEtlDRSmgPVq/2FM7pNWZwezuIWzaEBFP+x6dZ9dJm4Xq+99+HzeeClCHAGLB/hkCJy6k0JSEdPon
	FViyUrj14G4QvlxUBiduORhQOhiII3sk5eEAcP+pG0glwbz2BjtW3i+RGgf/bchMqU4OBzNRLZRDb
	x/hoI/njlmZNlf790vmqLolL5L7rJaJ0FUxIBs/Vhps14Wz8NQXOOcgMzCMxHeMUxzxR/5nwnPQpF
	6TDnqRBMbzws3PjwDqcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxTlH-0001jg-Ks; Tue, 13 Aug 2019 10:10:40 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxTkr-0001ih-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 10:10:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 4D013FB03;
 Tue, 13 Aug 2019 12:10:08 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qBv1tHLBoCNN; Tue, 13 Aug 2019 12:10:06 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 0825F416CC; Tue, 13 Aug 2019 12:10:05 +0200 (CEST)
Date: Tue, 13 Aug 2019 12:10:05 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
Message-ID: <20190813101005.GA10751@bogon.m.sigxcpu.org>
References: <cover.1565367567.git.agx@sigxcpu.org>
 <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
 <CAL_JsqK-5=WMZgNuJDTJ3Dm3YOJNw_9QCrPOOSe7MQzMV26pHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqK-5=WMZgNuJDTJ3Dm3YOJNw_9QCrPOOSe7MQzMV26pHw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_031013_516059_96F2E874 
X-CRM114-Status: GOOD (  22.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Jernej Skrabec <jernej.skrabec@siol.net>, Daniel Vetter <daniel@ffwll.ch>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
thanks for having a look!

On Fri, Aug 09, 2019 at 02:41:03PM -0600, Rob Herring wrote:
> On Fri, Aug 9, 2019 at 10:24 AM Guido G=FCnther <agx@sigxcpu.org> wrote:
> >
> > The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> >
> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> >  .../bindings/display/bridge/nwl-dsi.yaml      | 155 ++++++++++++++++++
> >  1 file changed, 155 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/nw=
l-dsi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.y=
aml b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > new file mode 100644
> > index 000000000000..5ed8bc4a4d18
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > @@ -0,0 +1,155 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/imx-nwl-dsi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Northwest Logic MIPI-DSI on imx SoCs
> > +
> > +maintainers:
> > +  - Guido G=FAnther <agx@sigxcpu.org>
> > +  - Robert Chiras <robert.chiras@nxp.com>
> > +
> > +description: |
> > +  NWL MIPI-DSI host controller found on i.MX8 platforms. This is a dsi=
 bridge for
> > +  the SOCs NWL MIPI-DSI host controller.
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +        - const: fsl,imx8mq-nwl-dsi
> =

> Don't need oneOf nor items here for a single possible value:

I wanted to prepare for adding other SoCs so there's less diff noise
(other imx8 SoCs will be rather simple) but let's go with 'const' for
now then.

> compatible:
>   const: fsl,imx8mq-nwl-dsi
> =

> Or go ahead and add other compatibles because the 'if' below seems to
> indicate you'll have more.

> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    items:
> > +      - description: DSI core clock
> > +      - description: RX_ESC clock (used in escape mode)
> > +      - description: TX_ESC clock (used in escape mode)
> > +      - description: PHY_REF clock
> > +
> > +  clock-names:
> > +    items:
> > +      - const: core
> > +      - const: rx_esc
> > +      - const: tx_esc
> > +      - const: phy_ref
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description:
> > +      A phandle to the phy module representing the DPHY
> > +
> > +  phy-names:
> > +    items:
> > +      - const: dphy
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +    description:
> > +      A phandle to the power domain
> > +
> > +  resets:
> > +    maxItems: 4
> > +    description:
> > +      A phandle to the reset controller
> =

> Sounds like 4 phandles... This should look similar to 'clocks'.

Added them individually, will be soc specific too later on.

> =

> > +
> > +  reset-names:
> > +    items:
> > +      - const: byte
> > +      - const: dpi
> > +      - const: esc
> > +      - const: pclk
> > +
> > +  mux-sel:
> =

> Needs a vendor prefix and will need a $ref to the type.

Made that fsl,mux-sel. This require me to add '$ref:
/schemas/types.yaml#definitions/phandle' as well which
I hope is correct.

> > +    maxItems: 1
> > +    description:
> > +      A phandle to the MUX register set
> > +
> > +  port:
> > +    type: object
> > +    description:
> > +      A input put or output port node.
> > +
> > +  ports:
> > +    type: object
> > +    description:
> > +      A node containing DSI input & output port nodes with endpoint
> > +      definitions as documented in
> > +      Documentation/devicetree/bindings/graph.txt.
> =

> You need to define what port@0 and port@1 are.

Added.

> =

> > +
> > +patternProperties:
> > +  "^panel@[0-9]+$": true
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - fsl,imx8mq-nwl-dsi
> =

> This conditional isn't needed until you have more than one compatible.

Again intended for other upcoming SoCs but dropped for now.

> > +      required:
> > +        - resets
> > +        - reset-names
> > +        - mux-sel
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - phys
> > +  - phy-names
> =

> ports should be required.

Added.

> > +
> > +examples:
> > + - |
> > +
> > +   mipi_dsi: mipi_dsi@30a00000 {
> > +              #address-cells =3D <1>;
> > +              #size-cells =3D <0>;
> > +              compatible =3D "fsl,imx8mq-nwl-dsi";
> > +              reg =3D <0x30A00000 0x300>;
> > +              clocks =3D <&clk 163>, <&clk 244>, <&clk 245>, <&clk 164=
>;
> > +              clock-names =3D "core", "rx_esc", "tx_esc", "phy_ref";
> > +              interrupts =3D <0 34 4>;
> > +              power-domains =3D <&pgc_mipi>;
> > +              resets =3D <&src 0>, <&src 1>, <&src 2>, <&src 3>;
> > +              reset-names =3D "byte", "dpi", "esc", "pclk";
> > +              mux-sel =3D <&iomuxc_gpr>;
> > +              phys =3D <&dphy>;
> > +              phy-names =3D "dphy";
> > +
> > +              panel@0 {
> > +                      compatible =3D "...";
> =

> Needs to be a valid compatible. Also need 'reg' here or drop the
> unit-address.

Fixed.

> =

> =

> > +                      port@0 {
> > +                           panel_in: endpoint {
> > +                                     remote-endpoint =3D <&mipi_dsi_ou=
t>;
> > +                           };
> > +                      };
> > +              };
> > +
> > +              ports {
> > +                    #address-cells =3D <1>;
> > +                    #size-cells =3D <0>;
> > +
> > +                    port@0 {
> > +                           reg =3D <0>;
> > +                           mipi_dsi_in: endpoint {
> > +                                        remote-endpoint =3D <&lcdif_mi=
pi_dsi>;
> > +                           };
> > +                    };
> > +                    port@1 {
> > +                           reg =3D <1>;
> > +                           mipi_dsi_out: endpoint {
> > +                                         remote-endpoint =3D <&panel_i=
n>;
> > +                           };
> > +                    };
> > +              };
> > +      };
> > --
> > 2.20.1
> >
> =


Cheers and thanks again for having a look!
 -- Guido

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
