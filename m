Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD43131C9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 01:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hePeYfYJVdtqygpSVys9OjEqN2uwg+hGXVUhLbbSs1k=; b=GKEjLvSMbenOZs
	1zIciksJvJstnSEt4nD32KIDDmgy+xtzJ9rlCxuPcX5qgZ8YihB0dySnN1eQxp2++7gWJCghjJmQ6
	MeOeChpRCr/o14dclki1reDvW8mKrQBfcaDuCVllnFD49LI1Co74rjvFG4Cnhu+YRxi/a8prKQf/I
	u6VcBbg73YhsBX8mDF7RUw7WfhZ0JD8VI0UG7iNOr3yJYah3mUGU8n3tvIOF2ynwRAua96uWK1s+Q
	44oEIjs4+kX5jocXI28tCwxc1V9z+CRmUvTr9jIL2zaD4xxk7Q76xFMCFCgRnV8F5rnF+kBg6sEub
	SG8pbOrUbZHbbnwH1aOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iocIP-00036G-E2; Tue, 07 Jan 2020 00:00:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iocIG-00035D-08; Tue, 07 Jan 2020 00:00:22 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 755B252F;
 Tue,  7 Jan 2020 01:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1578355207;
 bh=9VHkNEnMxkNw7CIek1nfHpk8hjLtgRvsk9eM6Lgfkr4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gf7XCgxSRpHjF+Bq8d2Sg562EcBm2VSUxvBnhV/l/t+TaQuh15R+e9JQvEEUqNnZM
 WttXVvA3957CmLL34BnX92BBdg/c8YbwWsj3hCJ2husoAkrR6+mlR5SdDGVCFtzCCt
 XOFdDsgLzw/oIZgArzZeUseZDcSxiDeaMKQV/VW4=
Date: Tue, 7 Jan 2020 01:59:57 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v12 08/11] media: staging: dt-bindings: add Rockchip ISP1
 yaml bindings
Message-ID: <20200106235957.GA28230@pendragon.ideasonboard.com>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-9-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227200116.2612137-9-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_160020_346729_74669045 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 kernel@collabora.com, heiko@sntech.de, ezequiel@collabora.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, hans.verkuil@cisco.com,
 linux-arm-kernel@lists.infradead.org, sakari.ailus@linux.intel.com,
 joacim.zetterling@gmail.com, mchehab@kernel.org, andrey.konovalov@linaro.org,
 jacob-chen@iotwrt.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen,

Thank you for the patch.

On Fri, Dec 27, 2019 at 05:01:13PM -0300, Helen Koike wrote:
> Add yaml DT bindings for Rockchip ISP1.
> 
> This was tested and verified with:
> mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> Changes in v12:
> - The commit replaces the following commit in previous series named
> media: staging: dt-bindings: Document the Rockchip ISP1 bindings
> This new patch adds yaml binding and was verified with
> make dtbs_check and make dt_binding_check
> 
> Changes in v11:
> - add clock-names values
> 
> Changes in v10:
> - unsquash
> 
> Changes in v9:
> - squash
> - move to staging
> 
> Changes in v8:
> - fix title division style
> 
> Changes in v7:
> - update document with new design and tested example
> 
>  .../bindings/media/rockchip-isp1.yaml         | 193 ++++++++++++++++++
>  1 file changed, 193 insertions(+)
>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> new file mode 100644
> index 000000000000..4d1b2c67a4cd
> --- /dev/null
> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -0,0 +1,193 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC Image Signal Processing unit v1
> +
> +maintainers:
> +  - Helen Koike <helen.koike@collabora.com>
> +
> +description: |
> +  Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
> +  which contains image processing, scaling, and compression funcitons.
> +
> +properties:
> +  compatible:
> +    const: rockchip,rk3399-cif-isp
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  phys:
> +    maxItems: 1
> +    description: phandle for the PHY port

According to http://opensource.rock-chips.com/wiki_Camera_driver, RK3388
can route either of DPHY RX0 or DPHY RX1 to the single ISP instance,
while RK3399 has one PHY per ISP instance, with DPHY RX1 being shared
with the display. Have you given any thought on how we will support this
in a backward-compatible way in the DT bindings ?

> +
> +  phy-names:
> +    const: dphy
> +
> +  clocks:
> +    items:
> +      - description: ISP clock
> +      - description: ISP aclk clock
> +      - description: ISP aclk wrapper clock
> +      - description: ISP hclk clock
> +      - description: ISP hclk wrapper clock

I wonder what aclk and hclk stand far. In any case those names match the
CRU documentation, so that seems fine.

> +
> +  clock-names:
> +    items:
> +      - const: clk_isp
> +      - const: aclk_isp
> +      - const: aclk_isp_wrap
> +      - const: hclk_isp
> +      - const: hclk_isp_wrap
> +
> +  # See ./video-interfaces.txt for details
> +  ports:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +      port@0:
> +        type: object
> +        additionalProperties: false

I think this should have a description to tell what this port
corresponds to.

> +
> +        properties:
> +          "#address-cells":
> +            const: 1
> +
> +          "#size-cells":
> +            const: 0
> +
> +          reg:
> +            const: 0
> +            description: port identifier.

Here and for the endpoint below the description is probably not needed.

> +
> +        patternProperties:
> +          endpoint:
> +            type: object
> +            additionalProperties: false
> +
> +            properties:
> +              reg:
> +                maxItems: 1
> +                description: endpoint identifier.
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +              remote-endpoint: true
> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - iommus
> +  - phys
> +  - phy-names
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +
> +    #include <dt-bindings/clock/rk3399-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/rk3399-power.h>
> +
> +    parent0: parent@0 {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        isp0: isp0@ff910000 {
> +            compatible = "rockchip,rk3399-cif-isp";
> +            reg = <0x0 0xff910000 0x0 0x4000>;
> +            interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +            clocks = <&cru SCLK_ISP0>,
> +                     <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> +                     <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> +            clock-names = "clk_isp",
> +                          "aclk_isp", "aclk_isp_wrap",
> +                          "hclk_isp", "hclk_isp_wrap";
> +            power-domains = <&power RK3399_PD_ISP0>;
> +            iommus = <&isp0_mmu>;
> +            phys = <&dphy>;
> +            phy-names = "dphy";
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +                    reg = <0>;
> +
> +                    mipi_in_wcam: endpoint@0 {
> +                        reg = <0>;
> +                        remote-endpoint = <&wcam_out>;
> +                        data-lanes = <1 2>;
> +                    };
> +
> +                    mipi_in_ucam: endpoint@1 {
> +                        reg = <1>;
> +                        remote-endpoint = <&ucam_out>;
> +                        data-lanes = <1>;
> +                    };

Are those two cameras connected to the same CSI-2 lines with at most one
sensor out of reset ?

With the above small issues addressed,

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> +                };
> +            };
> +        };
> +
> +        i2c7: i2c@ff160000 {
> +            clock-frequency = <400000>;
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            wcam: camera@36 {
> +                compatible = "ovti,ov5695";
> +                reg = <0x36>;
> +
> +                port {
> +                    wcam_out: endpoint {
> +                        remote-endpoint = <&mipi_in_wcam>;
> +                        data-lanes = <1 2>;
> +                    };
> +                };
> +            };
> +
> +            ucam: camera@3c {
> +                compatible = "ovti,ov2685";
> +                reg = <0x3c>;
> +
> +                  port {
> +                      ucam_out: endpoint {
> +                          remote-endpoint = <&mipi_in_ucam>;
> +                          data-lanes = <1>;
> +                      };
> +                  };
> +            };
> +        };
> +    };

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
