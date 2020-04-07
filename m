Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A63A1A16BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 22:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KN6AjqMQLsswHERcWW2s2QCe2kYgpD+HA4rn3/XGCyg=; b=ectpJDhg3HFMZs
	ACzfOFqS4YluNsiwZtVyVfrt/o649aT1lhGcc7elMFokIm2ElQZDbz+FrVTGT0Cynm1q0ZJA/uCRo
	zZZoAPQCnNc1VgxnvzFlBtaGIRZY92s/U5+SigZpud8Mpli4eDOG3a4zNZht0vgKoFzr0Y/m/vEsM
	bDtpjGXZTmmsdawZuZxaE4DibKtOBKhjAsFPUkiRHIfQnADrgmDKfTbdsa52ZuiRywUccPsb/T4GD
	1z3rSOaIDjiE+tG7dbGJGf92mZgGLyM4yPnjNNlmZ08wK6h6LMZ7qbqgtsD+1eqlzJBIJBaRlH2TP
	1X57XfGE8Bqx+C9Fc1fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLuma-0000cV-Sc; Tue, 07 Apr 2020 20:25:16 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLumF-0000c1-UJ; Tue, 07 Apr 2020 20:24:58 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id B55DF80532;
 Tue,  7 Apr 2020 22:24:51 +0200 (CEST)
Date: Tue, 7 Apr 2020 22:24:50 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: display: convert rockchip vop
 bindings to yaml
Message-ID: <20200407202450.GC28801@ravnborg.org>
References: <20200403142235.8870-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403142235.8870-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8
 a=VwQbUJbxAAAA:8 a=gEfo2CItAAAA:8 a=s8YR1HE3AAAA:8 a=e5mUnYsNAAAA:8
 a=I1IL0Xl9k2phEoxdptwA:9 a=oHOzSfBX9ZjYUJn9:21 a=-5uzdQ6-SERdSyDy:21
 a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22 a=sptkURWiP4Gy88Gu7hUp:22
 a=jGH_LyMDp9YhSvY-UuyI:22 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_132456_334466_1481BEB6 
X-CRM114-Status: GOOD (  24.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Johan.

On Fri, Apr 03, 2020 at 04:22:34PM +0200, Johan Jonker wrote:
> Current dts files with 'vop' nodes are manually verified.
> In order to automate this process rockchip-vop.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Thanks, I have applied the patches to drm-misc-next.
They will hit the upstream kernel when next merge window opens.

	Sam

> ---
> Changes v5:
>   Add reviewed by
>   Fix irq.h already included in arm-gic.h
> 
> Changes v4:
>   Change description
>   Replace compatible oneOf by enum
>   Change interrupts description
>   Remove resets minItems
> 
> Changes v3:
>   Change description
> 
> Changes v2:
>   No new properties
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt     |  74 -------------
>  .../bindings/display/rockchip/rockchip-vop.yaml    | 123 +++++++++++++++++++++
>  2 files changed, 123 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> deleted file mode 100644
> index 8b3a5f514..000000000
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
> +++ /dev/null
> @@ -1,74 +0,0 @@
> -device-tree bindings for rockchip soc display controller (vop)
> -
> -VOP (Visual Output Processor) is the Display Controller for the Rockchip
> -series of SoCs which transfers the image data from a video memory
> -buffer to an external LCD interface.
> -
> -Required properties:
> -- compatible: value should be one of the following
> -		"rockchip,rk3036-vop";
> -		"rockchip,rk3126-vop";
> -		"rockchip,px30-vop-lit";
> -		"rockchip,px30-vop-big";
> -		"rockchip,rk3066-vop";
> -		"rockchip,rk3188-vop";
> -		"rockchip,rk3288-vop";
> -		"rockchip,rk3368-vop";
> -		"rockchip,rk3366-vop";
> -		"rockchip,rk3399-vop-big";
> -		"rockchip,rk3399-vop-lit";
> -		"rockchip,rk3228-vop";
> -		"rockchip,rk3328-vop";
> -
> -- reg: Must contain one entry corresponding to the base address and length
> -	of the register space. Can optionally contain a second entry
> -	corresponding to the CRTC gamma LUT address.
> -
> -- interrupts: should contain a list of all VOP IP block interrupts in the
> -		 order: VSYNC, LCD_SYSTEM. The interrupt specifier
> -		 format depends on the interrupt controller used.
> -
> -- clocks: must include clock specifiers corresponding to entries in the
> -		clock-names property.
> -
> -- clock-names: Must contain
> -		aclk_vop: for ddr buffer transfer.
> -		hclk_vop: for ahb bus to R/W the phy regs.
> -		dclk_vop: pixel clock.
> -
> -- resets: Must contain an entry for each entry in reset-names.
> -  See ../reset/reset.txt for details.
> -- reset-names: Must include the following entries:
> -  - axi
> -  - ahb
> -  - dclk
> -
> -- iommus: required a iommu node
> -
> -- port: A port node with endpoint definitions as defined in
> -  Documentation/devicetree/bindings/media/video-interfaces.txt.
> -
> -Example:
> -SoC specific DT entry:
> -	vopb: vopb@ff930000 {
> -		compatible = "rockchip,rk3288-vop";
> -		reg = <0x0 0xff930000 0x0 0x19c>, <0x0 0xff931000 0x0 0x1000>;
> -		interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru ACLK_VOP0>, <&cru DCLK_VOP0>, <&cru HCLK_VOP0>;
> -		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
> -		resets = <&cru SRST_LCDC1_AXI>, <&cru SRST_LCDC1_AHB>, <&cru SRST_LCDC1_DCLK>;
> -		reset-names = "axi", "ahb", "dclk";
> -		iommus = <&vopb_mmu>;
> -		vopb_out: port {
> -			#address-cells = <1>;
> -			#size-cells = <0>;
> -			vopb_out_edp: endpoint@0 {
> -				reg = <0>;
> -				remote-endpoint=<&edp_in_vopb>;
> -			};
> -			vopb_out_hdmi: endpoint@1 {
> -				reg = <1>;
> -				remote-endpoint=<&hdmi_in_vopb>;
> -			};
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> new file mode 100644
> index 000000000..42ee2b5c3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SoC display controller (VOP)
> +
> +description:
> +  VOP (Video Output Processor) is the display controller for the Rockchip
> +  series of SoCs which transfers the image data from a video memory
> +  buffer to an external LCD interface.
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,px30-vop-big
> +      - rockchip,px30-vop-lit
> +      - rockchip,rk3036-vop
> +      - rockchip,rk3066-vop
> +      - rockchip,rk3126-vop
> +      - rockchip,rk3188-vop
> +      - rockchip,rk3228-vop
> +      - rockchip,rk3288-vop
> +      - rockchip,rk3328-vop
> +      - rockchip,rk3366-vop
> +      - rockchip,rk3368-vop
> +      - rockchip,rk3399-vop-big
> +      - rockchip,rk3399-vop-lit
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description:
> +          Must contain one entry corresponding to the base address and length
> +          of the register space.
> +      - description:
> +          Can optionally contain a second entry corresponding to
> +          the CRTC gamma LUT address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The VOP interrupt is shared by several interrupt sources, such as
> +      frame start (VSYNC), line flag and other status interrupts.
> +
> +  clocks:
> +    items:
> +      - description: Clock for ddr buffer transfer.
> +      - description: Pixel clock.
> +      - description: Clock for the ahb bus to R/W the phy regs.
> +
> +  clock-names:
> +    items:
> +      - const: aclk_vop
> +      - const: dclk_vop
> +      - const: hclk_vop
> +
> +  resets:
> +    maxItems: 3
> +
> +  reset-names:
> +    items:
> +      - const: axi
> +      - const: ahb
> +      - const: dclk
> +
> +  port:
> +    type: object
> +    description:
> +      A port node with endpoint definitions as defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +  iommus:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    vopb: vopb@ff930000 {
> +      compatible = "rockchip,rk3288-vop";
> +      reg = <0x0 0xff930000 0x0 0x19c>,
> +            <0x0 0xff931000 0x0 0x1000>;
> +      interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru ACLK_VOP0>,
> +               <&cru DCLK_VOP0>,
> +               <&cru HCLK_VOP0>;
> +      clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
> +      resets = <&cru SRST_LCDC1_AXI>,
> +               <&cru SRST_LCDC1_AHB>,
> +               <&cru SRST_LCDC1_DCLK>;
> +      reset-names = "axi", "ahb", "dclk";
> +      iommus = <&vopb_mmu>;
> +      vopb_out: port {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        vopb_out_edp: endpoint@0 {
> +          reg = <0>;
> +          remote-endpoint=<&edp_in_vopb>;
> +        };
> +        vopb_out_hdmi: endpoint@1 {
> +          reg = <1>;
> +          remote-endpoint=<&hdmi_in_vopb>;
> +        };
> +      };
> +    };
> -- 
> 2.11.0
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
