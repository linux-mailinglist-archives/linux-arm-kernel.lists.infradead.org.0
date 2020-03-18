Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9192418A74D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 22:47:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azC25SV7kmfYa+ke07MLqm67QoM0vfmMYzmkmZhmv5U=; b=QgT3TU7otxvM8y
	XVFY+06XR/ogX57ZryQwxr7khtoQ9clHhPWcXcPr+cicVaTTctW0sGjmmv93r4qB0X+mjdXt6O0lR
	GqfrcuMoyfTJC6BZejBxLwQtymQTPyCdO5nv3XU0xBsTgVjRrbD43V/tipPGN4yKcX/d0JEGVbftL
	rhwqrfndkaxK3gfEfsVbCdg2kkfZMpy9I8xpJckuWTW2oun/gAdoQBynMKMPapRaM81K9YMpmoYKj
	iaIHxSAu5FSM3bq+xD/giNwRAi+CrEXMJwxLhqjgfAgBatgWlpACQU1SdCcnVZWQ6K479REYLce06
	lW5f5DBCYI18pHfmA4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgXQ-0005L9-Dm; Wed, 18 Mar 2020 21:47:44 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgXH-0005KS-GX
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 21:47:37 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3C38120023;
 Wed, 18 Mar 2020 22:47:33 +0100 (CET)
Date: Wed, 18 Mar 2020 22:47:31 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH v9 1/2] dt-bindings: display/bridge: Add binding for NWL
 mipi dsi host controller
Message-ID: <20200318214731.GB971@ravnborg.org>
References: <cover.1584544065.git.agx@sigxcpu.org>
 <e76a1e6cd3a18e4239915d3aee801b7a2aeac127.1584544065.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e76a1e6cd3a18e4239915d3aee801b7a2aeac127.1584544065.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=ze386MxoAAAA:8
 a=8AirrxEcAAAA:8 a=VwQbUJbxAAAA:8 a=7gkXJVJtAAAA:8 a=gEfo2CItAAAA:8
 a=Vm19FepyDpoABvc2yYMA:9 a=cVXEkGUna-Ne1Fa8:21 a=TVmiQ_s7cYx9mS0L:21
 a=wPNLvfGTeEIA:10 a=iBZjaW-pnkserzjvUTHh:22 a=ST-jHhOKWsTCqRlWije3:22
 a=AjGcO6oz07-iQ99wixmX:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_144735_908544_952DAE93 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
 Pengutronix Kernel Team <kernel@pengutronix.de>, Arnd Bergmann <arnd@arndb.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 04:09:07PM +0100, Guido G=FCnther wrote:
> The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> Tested-by: Robert Chiras <robert.chiras@nxp.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>

> ---
>  .../bindings/display/bridge/nwl-dsi.yaml      | 216 ++++++++++++++++++
>  1 file changed, 216 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/nwl-=
dsi.yaml
> =

> diff --git a/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yam=
l b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> new file mode 100644
> index 000000000000..ec1e7e12719d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml
> @@ -0,0 +1,216 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/nwl-dsi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Northwest Logic MIPI-DSI controller on i.MX SoCs
> +
> +maintainers:
> +  - Guido G=FAnther <agx@sigxcpu.org>
> +  - Robert Chiras <robert.chiras@nxp.com>
> +
> +description: |
> +  NWL MIPI-DSI host controller found on i.MX8 platforms. This is a dsi b=
ridge for
> +  the SOCs NWL MIPI-DSI host controller.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8mq-nwl-dsi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +  clocks:
> +    items:
> +      - description: DSI core clock
> +      - description: RX_ESC clock (used in escape mode)
> +      - description: TX_ESC clock (used in escape mode)
> +      - description: PHY_REF clock
> +      - description: LCDIF clock
> +
> +  clock-names:
> +    items:
> +      - const: core
> +      - const: rx_esc
> +      - const: tx_esc
> +      - const: phy_ref
> +      - const: lcdif
> +
> +  mux-controls:
> +    description:
> +      mux controller node to use for operating the input mux
> +
> +  phys:
> +    maxItems: 1
> +    description:
> +      A phandle to the phy module representing the DPHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    items:
> +      - description: dsi byte reset line
> +      - description: dsi dpi reset line
> +      - description: dsi esc reset line
> +      - description: dsi pclk reset line
> +
> +  reset-names:
> +    items:
> +      - const: byte
> +      - const: dpi
> +      - const: esc
> +      - const: pclk
> +
> +  ports:
> +    type: object
> +    description:
> +      A node containing DSI input & output port nodes with endpoint
> +      definitions as documented in
> +      Documentation/devicetree/bindings/graph.txt.
> +    properties:
> +      port@0:
> +        type: object
> +        description:
> +          Input port node to receive pixel data from the
> +          display controller. Exactly one endpoint must be
> +          specified.
> +        properties:
> +          '#address-cells':
> +            const: 1
> +
> +          '#size-cells':
> +            const: 0
> +
> +          endpoint@0:
> +            description: sub-node describing the input from LCDIF
> +            type: object
> +
> +          endpoint@1:
> +            description: sub-node describing the input from DCSS
> +            type: object
> +
> +          reg:
> +            const: 0
> +
> +        required:
> +          - '#address-cells'
> +          - '#size-cells'
> +          - reg
> +        additionalProperties: false
> +
> +      port@1:
> +        type: object
> +        description:
> +          DSI output port node to the panel or the next bridge
> +          in the chain
> +
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +    required:
> +      - '#address-cells'
> +      - '#size-cells'
> +      - port@0
> +      - port@1
> +
> +    additionalProperties: false
> +
> +patternProperties:
> +  "^panel@[0-9]+$":
> +    type: object
> +
> +required:
> +  - '#address-cells'
> +  - '#size-cells'
> +  - clock-names
> +  - clocks
> +  - compatible
> +  - interrupts
> +  - mux-controls
> +  - phy-names
> +  - phys
> +  - ports
> +  - reg
> +  - reset-names
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> + - |
> +
> +   #include <dt-bindings/clock/imx8mq-clock.h>
> +   #include <dt-bindings/interrupt-controller/arm-gic.h>
> +   #include <dt-bindings/reset/imx8mq-reset.h>
> +
> +   mipi_dsi: mipi_dsi@30a00000 {
> +              #address-cells =3D <1>;
> +              #size-cells =3D <0>;
> +              compatible =3D "fsl,imx8mq-nwl-dsi";
> +              reg =3D <0x30A00000 0x300>;
> +              clocks =3D <&clk IMX8MQ_CLK_DSI_CORE>,
> +                       <&clk IMX8MQ_CLK_DSI_AHB>,
> +                       <&clk IMX8MQ_CLK_DSI_IPG_DIV>,
> +                       <&clk IMX8MQ_CLK_DSI_PHY_REF>,
> +                       <&clk IMX8MQ_CLK_LCDIF_PIXEL>;
> +              clock-names =3D "core", "rx_esc", "tx_esc", "phy_ref", "lc=
dif";
> +              interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +              mux-controls =3D <&mux 0>;
> +              power-domains =3D <&pgc_mipi>;
> +              resets =3D <&src IMX8MQ_RESET_MIPI_DSI_RESET_BYTE_N>,
> +                       <&src IMX8MQ_RESET_MIPI_DSI_DPI_RESET_N>,
> +                       <&src IMX8MQ_RESET_MIPI_DSI_ESC_RESET_N>,
> +                       <&src IMX8MQ_RESET_MIPI_DSI_PCLK_RESET_N>;
> +              reset-names =3D "byte", "dpi", "esc", "pclk";
> +              phys =3D <&dphy>;
> +              phy-names =3D "dphy";
> +
> +              panel@0 {
> +                      compatible =3D "rocktech,jh057n00900";
> +                      reg =3D <0>;
> +                      port@0 {
> +                           panel_in: endpoint {
> +                                     remote-endpoint =3D <&mipi_dsi_out>;
> +                           };
> +                      };
> +              };
> +
> +              ports {
> +                    #address-cells =3D <1>;
> +                    #size-cells =3D <0>;
> +
> +                    port@0 {
> +                           #size-cells =3D <0>;
> +                           #address-cells =3D <1>;
> +                           reg =3D <0>;
> +                           mipi_dsi_in: endpoint@0 {
> +                                        reg =3D <0>;
> +                                        remote-endpoint =3D <&lcdif_mipi=
_dsi>;
> +                           };
> +                    };
> +                    port@1 {
> +                           reg =3D <1>;
> +                           mipi_dsi_out: endpoint {
> +                                         remote-endpoint =3D <&panel_in>;
> +                           };
> +                    };
> +              };
> +      };
> -- =

> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
