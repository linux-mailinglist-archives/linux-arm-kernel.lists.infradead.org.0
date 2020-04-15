Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330391A9C3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rMoAPnbakoht6wAWQt0TwsPRmfREMMq50gsaBtXb8SU=; b=hiCSaVtA1yawz6dEOzXDRU1wA
	jZ10hE968OHR4FYV9ox4+6lP/0it/hBjydrQbSVJ4fHnlauDZKolfn62IHs1TGXB+VEJcZaUiwF+O
	53jTi5v/nJe60OcJWTV/1JS7eDj9ZCgBPY7hEwBmqsqem1dtrDqjlFzsb7QgExoVLubnC69AS1O27
	Ut4keFsjhbF8sZIzP0ZmpRuMPHG8tqfaxxlglCPEnVr4JIHvdD1Vbu924ILVhr5WzWLNDTrXFPvXS
	h9wMTy1aY/R4/FLdVttWbOyPekw9pscht+cNikqdCg4nZYV8IYMju5CZBc76BN15oT4b7DGWo0FGH
	WDPVlsaGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgCa-0000xL-SO; Wed, 15 Apr 2020 11:27:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgCM-0000wS-Hg; Wed, 15 Apr 2020 11:27:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id BB2FA2A0A37
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v6 5/8] dt-bindings: display: add i.MX6 MIPI DSI host
 controller doc
In-Reply-To: <20200414204202.GL19819@pendragon.ideasonboard.com>
References: <20200414151955.311949-1-adrian.ratiu@collabora.com>
 <20200414151955.311949-6-adrian.ratiu@collabora.com>
 <20200414204202.GL19819@pendragon.ideasonboard.com>
Date: Wed, 15 Apr 2020 14:28:25 +0300
Message-ID: <87wo6hj8di.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_042718_856482_F8C64C3C 
X-CRM114-Status: GOOD (  22.12  )
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
 linux-imx@nxp.com, Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020, Laurent Pinchart 
<laurent.pinchart@ideasonboard.com> wrote:
> Hi Adrian, 
> 
> Thank you for the patch. 

Hi Laurent,

Thank you for the review - you raised some good points which will 
be addressed in the next revision (will leave this on review a bit 
more).

I will also convert the dw_mipi_dsi.txt to yaml as you suggest and 
send that as a separate patch.

Best wishes,
Adrian

> 
> On Tue, Apr 14, 2020 at 06:19:52PM +0300, Adrian Ratiu wrote: 
>> This provides an example DT binding for the MIPI DSI host 
>> controller present on the i.MX6 SoC based on Synopsis 
>> DesignWare v1.01 IP.   Cc: Rob Herring <robh@kernel.org> Cc: 
>> Neil Armstrong <narmstrong@baylibre.com> Cc: Fabio Estevam 
>> <festevam@gmail.com> Cc: devicetree@vger.kernel.org Tested-by: 
>> Adrian Pop <pop.adrian61@gmail.com> Tested-by: Arnaud Ferraris 
>> <arnaud.ferraris@collabora.com> Signed-off-by: Sjoerd Simons 
>> <sjoerd.simons@collabora.com> Signed-off-by: Martyn Welch 
>> <martyn.welch@collabora.com> Signed-off-by: Adrian Ratiu 
>> <adrian.ratiu@collabora.com> --- Changes since v5: 
>>   - Fixed missing reg warning (Fabio) - Updated dt-schema and 
>>   fixed warnings (Rob) 
>>  Changes since v4: 
>>   - Fixed yaml binding to pass `make dt_binding_check 
>>   dtbs_check` and addressed received binding feedback (Rob) 
>>  Changes since v3: 
>>   - Added commit message (Neil) - Converted to yaml format 
>>   (Neil) - Minor dt node + driver fixes (Rob) - Added small 
>>   panel example to the host controller binding 
>>  Changes since v2: 
>>   - Fixed commit tags (Emil) 
>> --- 
>>  .../display/imx/fsl,mipi-dsi-imx6.yaml        | 139 
>>  ++++++++++++++++++ 1 file changed, 139 insertions(+) create 
>>  mode 100644 
>>  Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>>  diff --git 
>> a/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> new file mode 100644 index 000000000000..10e289ea219a --- 
>> /dev/null +++ 
>> b/Documentation/devicetree/bindings/display/imx/fsl,mipi-dsi-imx6.yaml 
>> @@ -0,0 +1,139 @@ +# SPDX-License-Identifier: (GPL-2.0-only OR 
>> BSD-2-Clause) +%YAML 1.2 +--- +$id: 
>> http://devicetree.org/schemas/display/imx/fsl,mipi-dsi-imx6.yaml# 
>> +$schema: http://devicetree.org/meta-schemas/core.yaml# + 
>> +title: Freescale i.MX6 DW MIPI DSI Host Controller + 
>> +maintainers: +  - Adrian Ratiu <adrian.ratiu@collabora.com> + 
>> +description: | +  The i.MX6 DSI host controller is a Synopsys 
>> DesignWare MIPI DSI v1.01 +  IP block with a companion PHY IP. 
>> + +  These DT bindings follow the Synopsys DW MIPI DSI bindings 
>> defined in + 
>> Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt 
>> with +  the following device-specific properties. 
> 
> Not necessarily a prerequisite for this patch, but it would be 
> nice to get that converted to yaml, and included here with 
> 
> allOf: 
>   $ref: ../bridge/snps,dw-mipi-dsi.yaml# 
> 
> (assuming that's how the file will be called). 
>

Yes, I will do this conversion but in a separate patch to avoid 
making this series bigger.

Thanks,
Adrian

>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - const: fsl,imx6q-mipi-dsi
>> +      - const: snps,dw-mipi-dsi
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    items:
>> +      - description: Module Clock
>> +      - description: DSI bus clock
>> +
>> +  clock-names:
>> +    items:
>> +      - const: ref
>> +      - const: pclk
>> +
>> +  fsl,gpr:
>> +    description: Phandle to the iomuxc-gpr region containing the multiplexer control register.
>
> Could you please wrap liens at a 80 columns boundary ?
>
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +
>> +  ports:
>> +    type: object
>> +    description: |
>> +      A node containing DSI input & output port nodes with endpoint
>> +      definitions as documented in
>> +      Documentation/devicetree/bindings/media/video-interfaces.txt
>> +      Documentation/devicetree/bindings/graph.txt
>> +    properties:
>
> You should add
>
>        '#address-cells':
>          const: 1
>
>        '#size-cells':
>          const: 0
>
>> +      port@0:
>> +        type: object
>> +        description:
>> +          DSI input port node, connected to the ltdc rgb output port.
>> +
>> +      port@1:
>> +        type: object
>> +        description:
>> +          DSI output port node, connected to a panel or a bridge input port"
>
>
> Should this be "RGB output port node" ? And s/"/./
>
> And here you should add
>
>        additionalProperties: false
>
>> +
>> +patternProperties:
>> +  "^panel@[0-3]$":
>> +    type: object
>> +    description: |
>> +      A node containing the panel or bridge description as documented in
>> +      Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
>> +    properties:
>> +      port:
>> +        type: object
>> +        description:
>> +          Panel or bridge port node, connected to the DSI output port (port@1)
>
> Does this belong here ? I think the port property for the panel needs to
> be described in the panel's binding instead.
>
>> +
>> +  "#address-cells":
>> +    const: 1
>> +
>> +  "#size-cells":
>> +    const: 0
>
> These two properties are not pattern properties, right ? Should they be
> listed under the properties above ?
>
>> +
>> +required:
>> +  - "#address-cells"
>> +  - "#size-cells"
>> +  - compatible
>> +  - reg
>> +  - interrupts
>> +  - clocks
>> +  - clock-names
>> +  - ports
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |+
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +    #include <dt-bindings/clock/imx6qdl-clock.h>
>> +    #include <dt-bindings/gpio/gpio.h>
>
> Alphabetical order ?
>
>> +
>> +    dsi: dsi@21e0000 {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +        compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
>> +        reg = <0x021e0000 0x4000>;
>> +        interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
>> +        fsl,gpr = <&gpr>;
>> +        clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
>> +                 <&clks IMX6QDL_CLK_MIPI_IPG>;
>> +        clock-names = "ref", "pclk";
>> +
>> +        ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +            port@1 {
>> +                reg = <1>;
>> +                dsi_out: endpoint {
>> +                    remote-endpoint = <&panel_in>;
>> +                };
>> +            };
>> +        };
>> +
>> +        panel@0 {
>> +            compatible = "sharp,ls032b3sx01";
>> +            reg = <0>;
>> +            reset-gpios = <&gpio6 8 GPIO_ACTIVE_LOW>;
>> +            ports {
>> +                #address-cells = <1>;
>> +                #size-cells = <0>;
>> +                port@0 {
>> +                    reg = <0>;
>> +                    panel_in: endpoint {
>> +                        remote-endpoint = <&dsi_out>;
>> +                    };
>> +                };
>> +            };
>> +        };
>> +    };
>> +
>> +...
>
> -- 
> Regards,
>
> Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
