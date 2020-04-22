Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C841B3D64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 12:15:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aijCOt8ACeogeCneM81f8PUkFoz+u3oFzv6WWUxZ6ak=; b=q5FLEuveM5jEv6dnyMrW2lbrf
	DLciDf+7EG2qwmNnOVIYK4qqZgoHCCtszN7wtt1skpNfrRb8RltyFG0QDwOH09eNkc6hSCq2Vx4Dn
	S1EYXe598uvtXokXIxcrtUtXKprpDd/s3WIwD+G7I5/FUxIng6xdQ8FtnPOMOXRVdH3LAJ6ucbdZU
	h3A6iozQ+nn/0fBQBsq+DAUgEj9IYD/RmbUzt1pFYbYdq+jkjt1jylnFUIVwi9LZREIOmKNFLKeBY
	8VD9EBlDgLOxq4jDWWZcli/QfaZ7+ylMusQAKW765n2sQAwvSpjePWLgtVl/6kclhW1Nri5xAJ6A8
	8xsuCoHew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRCP3-0005Us-Bp; Wed, 22 Apr 2020 10:14:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRCOs-0005T3-Qz; Wed, 22 Apr 2020 10:14:41 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 87A342A1A72
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>
Subject: Re: [PATCH v7 5/8] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
In-Reply-To: <20200422010155.GL5983@pendragon.ideasonboard.com>
References: <20200421161610.1501827-1-adrian.ratiu@collabora.com>
 <20200421161610.1501827-6-adrian.ratiu@collabora.com>
 <20200422005832.GK5983@pendragon.ideasonboard.com>
 <20200422010155.GL5983@pendragon.ideasonboard.com>
Date: Wed, 22 Apr 2020 13:15:41 +0300
Message-ID: <877dy7ker6.fsf@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_031439_876486_CF029230 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Adrian Pop <pop.adrian61@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Martyn Welch <martyn.welch@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 22 Apr 2020, Laurent Pinchart 
<laurent.pinchart@ideasonboard.com> wrote:
> Hi Adrian, 
>

Hi Laurent,
 
> On Wed, Apr 22, 2020 at 03:58:33AM +0300, Laurent Pinchart 
> wrote: 
>> On Tue, Apr 21, 2020 at 07:16:07PM +0300, Adrian Ratiu wrote: 
>> > This provides an example DT binding for the MIPI DSI host 
>> > controller present on the i.MX6 SoC based on Synopsis 
>> > DesignWare v1.01 IP.   Cc: Rob Herring <robh@kernel.org> Cc: 
>> > Neil Armstrong <narmstrong@baylibre.com> Cc: Fabio Estevam 
>> > <festevam@gmail.com> Cc: Laurent Pinchart 
>> > <laurent.pinchart@ideasonboard.com> Cc: 
>> > devicetree@vger.kernel.org Tested-by: Adrian Pop 
>> > <pop.adrian61@gmail.com> Tested-by: Arnaud Ferraris 
>> > <arnaud.ferraris@collabora.com> Signed-off-by: Sjoerd Simons 
>> > <sjoerd.simons@collabora.com> Signed-off-by: Martyn Welch 
>> > <martyn.welch@collabora.com> Signed-off-by: Adrian Ratiu 
>> > <adrian.ratiu@collabora.com> --- Changes since v6: 
>> >   - Added ref to the newly created snps,dw-mipi-dsi.yaml 
>> >   (Laurent) - Moved *-cells properties outside 
>> >   patternProperties (Laurent) - Removed the panel port 
>> >   documentation (Laurent) - Wrapped lines at 80 chars, typo 
>> >   fixes, sort includes (Laurent) 
>> >  Changes since v5: 
>> >   - Fixed missing reg warning (Fabio) - Updated dt-schema and 
>> >   fixed warnings (Rob) 
>> >  Changes since v4: 
>> >   - Fixed yaml binding to pass `make dt_binding_check 
>> >   dtbs_check` and addressed received binding feedback (Rob) 
>> >  Changes since v3: 
>> >   - Added commit message (Neil) - Converted to yaml format 
>> >   (Neil) - Minor dt node + driver fixes (Rob) - Added small 
>> >   panel example to the host controller binding 
>> >  Changes since v2: 
>> >   - Fixed commit tags (Emil) 
>> > --- 
>> >  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 135 
>> >  ++++++++++++++++++ 1 file changed, 135 insertions(+) create 
>> >  mode 100644 
>> >  Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> >  diff --git 
>> > a/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> > b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> > new file mode 100644 index 0000000000000..b73e3ae33a852 --- 
>> > /dev/null +++ 
>> > b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> > @@ -0,0 +1,135 @@ +# SPDX-License-Identifier: (GPL-2.0-only 
>> > OR BSD-2-Clause) +%YAML 1.2 +--- +$id: 
>> > http://devicetree.org/schemas/display/imx/fsl,mipi-dsi-imx6.yaml# 
>> > +$schema: http://devicetree.org/meta-schemas/core.yaml# + 
>> > +title: Freescale i.MX6 DW MIPI DSI Host Controller + 
>> > +maintainers: +  - Adrian Ratiu <adrian.ratiu@collabora.com> 
>> > + +description: | +  The i.MX6 DSI host controller is a 
>> > Synopsys DesignWare MIPI DSI v1.01 +  IP block with a 
>> > companion PHY IP. 
> 
> I forgot to mention, if there's a companion PHY, shouldn't it be 
> referenced from the DT bindings ? 
>

I don't think so, that description was copied verbatim from the 
imx6 ref manual IIRC, the physical layer is the same for MIPI DSI 
which does TX as for MIPI CSI which does RX, but looking at the 
ref manual and how drivers are written I don't think it's 
necessary.

This might change if we wanted to unify the DSI and CSI drivers a 
bit, but considering the scope already associated with this patch 
series I'm a bit afraid to open a subject like that =)

>> > +
>> > +  These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
>> > +  Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
>> > +  the following device-specific properties.
>> > +
>> > +allOf:
>> > +  - $ref: ../bridge/snps,dw-mipi-dsi.yaml#
>> > +
>> > +properties:
>> > +  '#address-cells':
>> > +    const: 1
>> > +
>> > +  '#size-cells':
>> > +    const: 0
>> > +
>> > +  compatible:
>> > +    items:
>> > +      - const: fsl,imx6q-mipi-dsi
>> > +      - const: snps,dw-mipi-dsi
>> > +
>> > +  reg:
>> > +    maxItems: 1
>> > +
>> > +  interrupts:
>> > +    maxItems: 1
>> > +
>> > +  clocks:
>> > +    items:
>> > +      - description: Module Clock
>> > +      - description: DSI bus clock
>> > +
>> > +  clock-names:
>> > +    items:
>> > +      - const: ref
>> > +      - const: pclk
>> > +
>> > +  fsl,gpr:
>> > +    description:
>> > +      Phandle to the iomuxc-gpr region containing the multiplexer ctrl register.
>> > +    $ref: /schemas/types.yaml#/definitions/phandle
>> > +
>> > +  ports:
>> > +    type: object
>> > +    description: |
>> > +      A node containing DSI input & output port nodes with endpoint
>> > +      definitions as documented in
>> > +      Documentation/devicetree/bindings/media/video-interfaces.txt
>> > +      Documentation/devicetree/bindings/graph.txt
>> > +    properties:
>> > +      port@0:
>> > +        type: object
>> > +        description:
>> > +          DSI input port node, connected to the ltdc rgb output port.
>> > +
>> > +      port@1:
>> > +        type: object
>> > +        description:
>> > +          RGB output port node, connected to a panel or a bridge input port.
>> 
>> Isn't it the other way around, doesn't the bridge take RGB input and
>> output DSI ? And to be precise, it's not about RGB, but about the input
>> being parallel interface (DSI will also carry RGB).
>> 
>> I would add
>> 
>>     required:
>>       - port@0
>>       - port@1
>> 
>> > +
>> > +additionalProperties: false
>> > +
>> > +patternProperties:
>> > +  "^panel@[0-3]$":
>> > +    type: object
>> > +
>> > +required:
>> > +  - "#address-cells"
>> > +  - "#size-cells"
>> > +  - compatible
>> > +  - reg
>> > +  - interrupts
>> > +  - clocks
>> > +  - clock-names
>> > +  - ports
>> > +
>> > +examples:
>> > +  - |+
>> > +    #include <dt-bindings/clock/imx6qdl-clock.h>
>> > +    #include <dt-bindings/gpio/gpio.h>
>> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> > +
>> > +    dsi: dsi@21e0000 {
>> > +        #address-cells = <1>;
>> > +        #size-cells = <0>;
>> > +        compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
>> > +        reg = <0x021e0000 0x4000>;
>> > +        interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
>> > +        fsl,gpr = <&gpr>;
>> > +        clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
>> > +                 <&clks IMX6QDL_CLK_MIPI_IPG>;
>> > +        clock-names = "ref", "pclk";
>> > +
>> > +        ports {
>> > +            #address-cells = <1>;
>> > +            #size-cells = <0>;
>> 
>> port@0 is missing.
>> 
>> > +            port@1 {
>> > +                reg = <1>;
>> > +                dsi_out: endpoint {
>> > +                    remote-endpoint = <&panel_in>;
>> > +                };
>> > +            };
>> > +        };
>> > +
>> > +        panel@0 {
>> > +            compatible = "sharp,ls032b3sx01";
>> > +            reg = <0>;
>> > +            reset-gpios = <&gpio6 8 GPIO_ACTIVE_LOW>;
>> > +            ports {
>> > +                #address-cells = <1>;
>> > +                #size-cells = <0>;
>> > +                port@0 {
>> > +                    reg = <0>;
>> > +                    panel_in: endpoint {
>> > +                        remote-endpoint = <&dsi_out>;
>> > +                    };
>> > +                };
>> > +            };
>> > +        };
>> > +    };
>> > +
>> > +...
>
> -- 
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
