Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D35132804
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 14:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACA17n+p7BMsevzm0igkdiQzEOZMYzpoHWi3XL/ov0I=; b=t2meUqCXGg19Fx
	CK8HLkCPSbQENS2sGRP8oKKmre4gQx+luKX/WPQdrG5rxRXKQg73r2SLmzGeB76HjjOCTfuan8VNc
	KjKbbiTm31REovHdkx2uXiZW2Y9y/NAJcXRvJYwZOupto7JUhCbQALTuXxr2llAYuUE82nQECl3dl
	6dglqNt4mCQd7ElyoXfo+7BOUUT8ob3NSredKNFiDf4ZGETRXNH2z1IlnfsJr9uGBGaA4em71UkNX
	dyppbhXlr+kKUJXEGTnxTGSsbnGzm6zcXLP9Lu9OtQrM0+f+sOkt0wSTyxmX27Ngmsoi0RZRkL2ho
	e45SLPyAcJqX+mZ9GFrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iopAy-0001Gr-U9; Tue, 07 Jan 2020 13:45:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iopAr-0001Fy-BD; Tue, 07 Jan 2020 13:45:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4E9E82751AC
Message-ID: <a465c895f944b5cb0b63bfab2f8642fc81f1576e.camel@collabora.com>
Subject: Re: [PATCH v12 08/11] media: staging: dt-bindings: add Rockchip
 ISP1 yaml bindings
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Helen Koike
 <helen.koike@collabora.com>
Date: Tue, 07 Jan 2020 10:45:15 -0300
In-Reply-To: <20200106235957.GA28230@pendragon.ideasonboard.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-9-helen.koike@collabora.com>
 <20200106235957.GA28230@pendragon.ideasonboard.com>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_054533_647028_0DA20436 
X-CRM114-Status: GOOD (  26.87  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, sakari.ailus@linux.intel.com,
 joacim.zetterling@gmail.com, mchehab@kernel.org, andrey.konovalov@linaro.org,
 jacob-chen@iotwrt.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2020-01-07 at 01:59 +0200, Laurent Pinchart wrote:
> Hi Helen,
> 
> Thank you for the patch.
> 
> On Fri, Dec 27, 2019 at 05:01:13PM -0300, Helen Koike wrote:
> > Add yaml DT bindings for Rockchip ISP1.
> > 
> > This was tested and verified with:
> > mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
> > make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > 
> > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > 
> > ---
> > 
> > Changes in v12:
> > - The commit replaces the following commit in previous series named
> > media: staging: dt-bindings: Document the Rockchip ISP1 bindings
> > This new patch adds yaml binding and was verified with
> > make dtbs_check and make dt_binding_check
> > 
> > Changes in v11:
> > - add clock-names values
> > 
> > Changes in v10:
> > - unsquash
> > 
> > Changes in v9:
> > - squash
> > - move to staging
> > 
> > Changes in v8:
> > - fix title division style
> > 
> > Changes in v7:
> > - update document with new design and tested example
> > 
> >  .../bindings/media/rockchip-isp1.yaml         | 193 ++++++++++++++++++
> >  1 file changed, 193 insertions(+)
> >  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > 
> > diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > new file mode 100644
> > index 000000000000..4d1b2c67a4cd
> > --- /dev/null
> > +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> > @@ -0,0 +1,193 @@
> > +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip SoC Image Signal Processing unit v1
> > +
> > +maintainers:
> > +  - Helen Koike <helen.koike@collabora.com>
> > +
> > +description: |
> > +  Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
> > +  which contains image processing, scaling, and compression funcitons.
> > +
> > +properties:
> > +  compatible:
> > +    const: rockchip,rk3399-cif-isp
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  iommus:
> > +    maxItems: 1
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  phys:
> > +    maxItems: 1
> > +    description: phandle for the PHY port
> 
> According to http://opensource.rock-chips.com/wiki_Camera_driver, RK3388
> can route either of DPHY RX0 or DPHY RX1 to the single ISP instance,
> while RK3399 has one PHY per ISP instance, with DPHY RX1 being shared
> with the display. Have you given any thought on how we will support this
> in a backward-compatible way in the DT bindings ?
> 

As discussed on IRC, we could have multiple PHYs specifiers
in the phy property. The ISP would have multiple ports,
with one PHY per port.

> > +
> > +  phy-names:
> > +    const: dphy
> > +
> > +  clocks:
> > +    items:
> > +      - description: ISP clock
> > +      - description: ISP aclk clock
> > +      - description: ISP aclk wrapper clock
> > +      - description: ISP hclk clock
> > +      - description: ISP hclk wrapper clock
> 
> I wonder what aclk and hclk stand far. In any case those names match the
> CRU documentation, so that seems fine.
> 

IIRC, traditionally, Rockchip calls aclk to the AXI clock,
and hclk to the AHB. We'll improve this description.

> > +
> > +  clock-names:
> > +    items:
> > +      - const: clk_isp
> > +      - const: aclk_isp
> > +      - const: aclk_isp_wrap
> > +      - const: hclk_isp
> > +      - const: hclk_isp_wrap
> > +

I wonder if we should better amend the names as well.

> > +  # See ./video-interfaces.txt for details
> > +  ports:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      "#address-cells":
> > +        const: 1
> > +
> > +      "#size-cells":
> > +        const: 0
> > +
> > +      port@0:
> > +        type: object
> > +        additionalProperties: false
> 
> I think this should have a description to tell what this port
> corresponds to.
> 

OK.

> > +
> > +        properties:
> > +          "#address-cells":
> > +            const: 1
> > +
> > +          "#size-cells":
> > +            const: 0
> > +
> > +          reg:
> > +            const: 0
> > +            description: port identifier.
> 
> Here and for the endpoint below the description is probably not needed.
> 

OK.

> > +
> > +        patternProperties:
> > +          endpoint:
> > +            type: object
> > +            additionalProperties: false
> > +
> > +            properties:
> > +              reg:
> > +                maxItems: 1
> > +                description: endpoint identifier.
> > +
> > +              data-lanes:
> > +                minItems: 1
> > +                maxItems: 4
> > +
> > +              remote-endpoint: true
> > +
> > +    required:
> > +      - port@0
> > +
> > +required:
> > +  - compatible
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +  - power-domains
> > +  - iommus
> > +  - phys
> > +  - phy-names
> > +  - ports
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +
> > +    #include <dt-bindings/clock/rk3399-cru.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/power/rk3399-power.h>
> > +
> > +    parent0: parent@0 {
> > +        #address-cells = <2>;
> > +        #size-cells = <2>;
> > +
> > +        isp0: isp0@ff910000 {
> > +            compatible = "rockchip,rk3399-cif-isp";
> > +            reg = <0x0 0xff910000 0x0 0x4000>;
> > +            interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> > +            clocks = <&cru SCLK_ISP0>,
> > +                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> > +                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> > +            clock-names = "clk_isp",
> > +                          "aclk_isp", "aclk_isp_wrap",
> > +                          "hclk_isp", "hclk_isp_wrap";
> > +            power-domains = <&power RK3399_PD_ISP0>;
> > +            iommus = <&isp0_mmu>;
> > +            phys = <&dphy>;
> > +            phy-names = "dphy";
> > +
> > +            ports {
> > +                #address-cells = <1>;
> > +                #size-cells = <0>;
> > +
> > +                port@0 {
> > +                    #address-cells = <1>;
> > +                    #size-cells = <0>;
> > +                    reg = <0>;
> > +
> > +                    mipi_in_wcam: endpoint@0 {
> > +                        reg = <0>;
> > +                        remote-endpoint = <&wcam_out>;
> > +                        data-lanes = <1 2>;
> > +                    };
> > +
> > +                    mipi_in_ucam: endpoint@1 {
> > +                        reg = <1>;
> > +                        remote-endpoint = <&ucam_out>;
> > +                        data-lanes = <1>;
> > +                    };
> 
> Are those two cameras connected to the same CSI-2 lines with at most one
> sensor out of reset ?
> 

Indeed, these are two cameras connected to the same DPHY,
and only one can work at a time.

> With the above small issues addressed,
> 
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 

Thanks for the review!
Ezequiel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
