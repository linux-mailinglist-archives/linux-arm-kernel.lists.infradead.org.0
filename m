Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 361389915C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 12:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9aKOde3/z4XhXApJhHL5/zSNAKfk5IYvZLToUV0fLbk=; b=g3g872ctpxp/Cx
	gLmBx24zwipeeHAlZ8E6BcNqLStCnAJjQWs8wXuJNYwgn6aGm+W15nlgpRxk4Qic4tUkqdXbx9doK
	kf+tOE64hSaA59Ryym+qwhxbH0enJSRLoCYwvuOgBK7xbtA5nM1+lk2/Qlva83zsuohtJ/Iq73NLr
	dojOfMPaR+ccsJaJWfGmSJ4y8FdSi6uK56Q4E7Ebo6Fg6kh8YkAPUFdJncxEoWAhEPeG/w3G2U9Zt
	k/8ZOBWXCGa01f2ERqQ7/b3RqRnDEtaw8L2J14AAD1shN88gQWyMVkZiq3ARj0RYtSM+Xa0pev2UR
	fSoCB1vLeC3sdWQjVj0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0kfH-00018q-9M; Thu, 22 Aug 2019 10:49:59 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0kex-00018O-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 10:49:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 9B2CFFB03;
 Thu, 22 Aug 2019 12:49:36 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IjpzZFxuq1Vk; Thu, 22 Aug 2019 12:49:34 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 80E444014F; Thu, 22 Aug 2019 12:49:34 +0200 (CEST)
Date: Thu, 22 Aug 2019 12:49:34 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
Message-ID: <20190822104934.GB28060@bogon.m.sigxcpu.org>
References: <cover.1565367567.git.agx@sigxcpu.org>
 <9c906bb6592424acdb1a67447a482e010a113b49.1565367567.git.agx@sigxcpu.org>
 <20190821181518.GB26759@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821181518.GB26759@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_034939_702566_CEC2A84F 
X-CRM114-Status: GOOD (  21.69  )
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
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robert Chiras <robert.chiras@nxp.com>, Lee Jones <lee.jones@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,
thanks for having a look!

On Wed, Aug 21, 2019 at 09:15:18PM +0300, Laurent Pinchart wrote:
> Hi Guido,
> =

> Thank you for the patch.
> =

> On Fri, Aug 09, 2019 at 06:24:22PM +0200, Guido G=FCnther wrote:
> > The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> >  .../bindings/display/bridge/nwl-dsi.yaml      | 155 ++++++++++++++++++
> >  1 file changed, 155 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/nw=
l-dsi.yaml
> > =

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
> > +
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
> > +
> > +  reset-names:
> > +    items:
> > +      - const: byte
> > +      - const: dpi
> > +      - const: esc
> > +      - const: pclk
> > +
> > +  mux-sel:
> > +    maxItems: 1
> > +    description:
> > +      A phandle to the MUX register set
> =

> Did you mean the MUX syscon ? A phandle to a register set sounds a bit
> strange.

That one is gone in v3 in favour of mux-controls.

> =

> > +
> > +  port:
> > +    type: object
> > +    description:
> > +      A input put or output port node.
> =

> s/input put/input/

Thanks! I've shuffled this around in v3 and added some more detail.
Cheers,
 -- Guido

> =

> > +
> > +  ports:
> > +    type: object
> > +    description:
> > +      A node containing DSI input & output port nodes with endpoint
> > +      definitions as documented in
> > +      Documentation/devicetree/bindings/graph.txt.
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
> > +    then:
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

> -- =

> Regards,
> =

> Laurent Pinchart
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
