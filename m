Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5882BBB1C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 11:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86/47HFaIYPjxZsPKo5t2PMVipaTARJC26zK0NBzvT0=; b=lq6dDd1GuHxQTs
	A7a0MFiKETB+ulnScOw5Lc6FkwY6NSJWSZjwNtn2aiQTQcPVaPExlgvTyRPd4vLoQRSVEC4Lp29ic
	QWuKbm2+6njopGJHPvnoebBpXFuamxua7JzKn0OCB2MyqwprOI1cUcbXRGin2fm3sCNpd+ohL3Wzv
	ix+AyM4gbFCabKYNrYYLArnM3cQSM9u5kp6uliLpX/vVeV2pgB0c5j4kkoydUY2kSBBgfB0N2y1kJ
	m3Ooj3BmbXknYV+KHBJx6yKBUqGzEmOMtBXzq2lPi9Spt86h4zoJtD5vjqpMbsN8vVZ7UtBZnXv8I
	QdYYVYZhvBHP1Hot76LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCL5Y-0000aN-9k; Mon, 23 Sep 2019 09:57:00 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCL5L-0000Zw-Lh
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 09:56:49 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id CFEE1FB03;
 Mon, 23 Sep 2019 11:56:44 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v9IW8wa-mQuy; Mon, 23 Sep 2019 11:56:42 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 64590486BC; Mon, 23 Sep 2019 02:56:42 -0700 (PDT)
Date: Mon, 23 Sep 2019 02:56:42 -0700
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v6 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
Message-ID: <20190923095642.GA8381@bogon.m.sigxcpu.org>
References: <cover.1569170717.git.agx@sigxcpu.org>
 <CGME20190922164722epcas3p2c44bddf9e6fd86cae5ab72ca078296b8@epcas3p2.samsung.com>
 <3bef8eb6a7dd32406e31c68f39ccde3accb58222.1569170717.git.agx@sigxcpu.org>
 <18619804-ffe8-f3a5-aa54-ab590b3a83c0@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <18619804-ffe8-f3a5-aa54-ab590b3a83c0@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_025648_020901_535FF488 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
On Mon, Sep 23, 2019 at 10:59:34AM +0200, Andrzej Hajda wrote:
> On 22.09.2019 18:47, Guido G=FCnther wrote:
> > The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> >
> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > Tested-by: Robert Chiras <robert.chiras@nxp.com>
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../bindings/display/bridge/nwl-dsi.yaml      | 176 ++++++++++++++++++
> >  1 file changed, 176 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/nw=
l-dsi.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.y=
aml b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > new file mode 100644
> > index 000000000000..31119c7885ff
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> > @@ -0,0 +1,176 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: https://protect2.fireeye.com/url?k=3D7c9397fbdbbe3fd5.7c921cb4-87=
fc4542b5f41502&u=3Dhttp://devicetree.org/schemas/display/bridge/nwl-dsi.yam=
l#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Northwest Logic MIPI-DSI controller on i.MX SoCs
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
> > +    const: fsl,imx8mq-nwl-dsi
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#address-cells':
> > +    const: 1
> > +
> > +  '#size-cells':
> > +    const: 0
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
> > +  mux-controls:
> > +    description:
> > +      mux controller node to use for operating the input mux
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
> > +
> > +  resets:
> > +    items:
> > +      - description: dsi byte reset line
> > +      - description: dsi dpi reset line
> > +      - description: dsi esc reset line
> > +      - description: dsi pclk reset line
> > +
> > +  reset-names:
> > +    items:
> > +      - const: byte
> > +      - const: dpi
> > +      - const: esc
> > +      - const: pclk
> > +
> > +  ports:
> > +    type: object
> > +    description:
> > +      A node containing DSI input & output port nodes with endpoint
> > +      definitions as documented in
> > +      Documentation/devicetree/bindings/graph.txt.
> > +    properties:
> > +      port@0:
> > +        type: object
> > +        description:
> > +          Input port node to receive pixel data from the
> > +          display controller
> > +
> > +      port@1:
> > +        type: object
> > +        description:
> > +          DSI output port node to the panel or the next bridge
> > +          in the chain
> > +
> > +      '#address-cells':
> > +        const: 1
> > +
> > +      '#size-cells':
> > +        const: 0
> > +
> > +    required:
> > +      - '#address-cells'
> > +      - '#size-cells'
> > +      - port@0
> > +      - port@1
> > +
> > +    additionalProperties: false
> > +
> > +patternProperties:
> > +  "^panel@[0-9]+$":
> > +    type: object
> > +
> > +required:
> > +  - '#address-cells'
> > +  - '#size-cells'
> > +  - clock-names
> > +  - clocks
> > +  - compatible
> > +  - interrupts
> > +  - mux-controls
> =

> =

> As I understand mux is not a part of the device, so maybe would be safer
> to make it optional.

I had mux-sel required for imx8mq *only* but Rob suggested to make things
required in general until we add other SoCs:

    https://lore.kernel.org/linux-arm-kernel/CAL_JsqK-5=3DWMZgNuJDTJ3Dm3YOJ=
Nw_9QCrPOOSe7MQzMV26pHw@mail.gmail.com/

Cheers,
 -- Guido

> =

> =

> Regards
> =

> Andrzej
> =

> =

> > +  - phy-names
> > +  - phys
> > +  - ports
> > +  - reg
> > +  - reset-names
> > +  - resets
> > +
> > +additionalProperties: false
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
> > +              mux-controls =3D <&mux 0>;
> > +              power-domains =3D <&pgc_mipi>;
> > +              resets =3D <&src 0>, <&src 1>, <&src 2>, <&src 3>;
> > +              reset-names =3D "byte", "dpi", "esc", "pclk";
> > +              phys =3D <&dphy>;
> > +              phy-names =3D "dphy";
> > +
> > +              panel@0 {
> > +                      compatible =3D "rocktech,jh057n00900";
> > +                      reg =3D <0>;
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
> =

> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
