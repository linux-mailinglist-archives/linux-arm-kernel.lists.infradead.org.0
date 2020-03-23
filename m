Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8FE18FDD9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:41:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W6eLPZ/kp5QOrTIKv0inbDLPHBXMW8HfIbLDSj5AGL8=; b=L1U3CpdvrTqH8E
	HUtzI76SkK5QK0PySJiWZIykufxoQk8w3RjTBINS8EU5Ql9DXW+q7QkRB3zVMUxO2lfyQjEEVwcyX
	CJdysg0+DVYWtNbYLp0UI7fmf9c9auDoy+RwzEQrnvXtow2ZZAX55TT9bZeeGwLYrfWocW4lFUT+0
	dU3ihZEEhr9ZNiPP0CGrIIGUURF4V2mTQbxpnHwtyrowJZO/6/z1AkPVLy7hSl/zYt3G+vgGgeKEx
	QHpX8VSIUC5nJvXyreCWp3ZdZ+6rhSlrP16aBnYOI+fATrnMqy8AiKCaLfOop+ATmp+bBCXNXmVie
	zePIA0JaUet0LpSVjdNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSxC-0004h6-P9; Mon, 23 Mar 2020 19:41:42 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSx0-0004fw-OX; Mon, 23 Mar 2020 19:41:32 +0000
Received: by mail-il1-f196.google.com with SMTP id h3so14539131ils.3;
 Mon, 23 Mar 2020 12:41:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wZqIgGpvp/4WvbCX5pHBFK/yoCSdaoYyZWmUWDi0I6w=;
 b=JYWLP12mS9qt3UnLekspazMRJwuHCJDlyXGLsy9ol+VviKHixs5zrHQITuSgxg1Eys
 xP7CLsUR5s3m9b8QcwOHycCJgglEzY061wz8vmnQVTH73aDPERhf9XeBPxWQEQ293sfE
 TOILuq4ahBe7UN+Z+e3p8592by5KlAh+4h0ogc45ZvML1q0KdECotJU5Ob+UPOZA6W3F
 cv8FDxLrCptolEXs14fk2NS7KVO463y3KE0kK9KKU8nnQaCafNfucjG4engwJmmOiqaX
 RUD/jp0uvkdWh0Fotssw2AmU52N9k651oEjHf+havNk50hZ80hkuSoxKwQQcW/tpDZGv
 1alg==
X-Gm-Message-State: ANhLgQ0LYpzGStQhMuETC5woPuvrJId5kWS78qjecxwX+QdI+zgSK3+5
 C4PZ7mkOyrGrRyt0GJIh1Q==
X-Google-Smtp-Source: ADFU+vvGYTk0BRk7h8eRIHfK7+xZWKAn2MCIiE63wBii1saw9W0SBjLLJ/OUebYGdQPaJwZK8SFAlw==
X-Received: by 2002:a92:41c7:: with SMTP id o190mr22269984ila.11.1584992489760; 
 Mon, 23 Mar 2020 12:41:29 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id m14sm795371ilr.16.2020.03.23.12.41.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 12:41:29 -0700 (PDT)
Received: (nullmailer pid 15741 invoked by uid 1000);
 Mon, 23 Mar 2020 19:41:28 -0000
Date: Mon, 23 Mar 2020 13:41:28 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1] dt-bindings: display: rockchip: convert rockchip vop
 bindings to yaml
Message-ID: <20200323194128.GD8470@bogus>
References: <20200306170353.11393-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306170353.11393-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_124130_806949_A6B97635 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 06:03:53PM +0100, Johan Jonker wrote:
> Current dts files with 'vop' nodes are manually verified.
> In order to automate this process rockchip-vop.txt
> has to be converted to yaml. Also included are new
> properties needed for the latest Rockchip Socs.
> 
> Added properties:
>   assigned-clocks
>   assigned-clock-rates
>   power-domains
>   rockchip,grf
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../bindings/display/rockchip/rockchip-vop.txt     |  74 -----------
>  .../bindings/display/rockchip/rockchip-vop.yaml    | 141 +++++++++++++++++++++
>  2 files changed, 141 insertions(+), 74 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.txt
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml


> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> new file mode 100644
> index 000000000..93ccd32aa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop.yaml
> @@ -0,0 +1,141 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/rockchip/rockchip-vop.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip soc display controller (VOP)
> +
> +description:
> +  VOP (Visual Output Processor) is the Display Controller for the Rockchip
> +  series of SoCs which transfers the image data from a video memory
> +  buffer to an external LCD interface.
> +
> +maintainers:
> +  - Sandy Huang <hjc@rock-chips.com>
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,px30-vop-big
> +      - const: rockchip,px30-vop-lit
> +      - const: rockchip,rk3036-vop
> +      - const: rockchip,rk3066-vop
> +      - const: rockchip,rk3126-vop
> +      - const: rockchip,rk3188-vop
> +      - const: rockchip,rk3228-vop
> +      - const: rockchip,rk3288-vop
> +      - const: rockchip,rk3328-vop
> +      - const: rockchip,rk3366-vop
> +      - const: rockchip,rk3368-vop
> +      - const: rockchip,rk3399-vop-big
> +      - const: rockchip,rk3399-vop-lit

Use an 'enum' instead of oneOf+const.

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
> +      Should contain a list of all VOP IP block interrupts in the
> +      order VSYNC, LCD_SYSTEM. The interrupt specifier
> +      format depends on the interrupt controller used.

maxItems and the description disagree.

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
> +    minItems: 3
> +    maxItems: 3

Just maxItems is enough.

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
> +  assigned-clocks:
> +    maxItems: 2
> +
> +  assigned-clock-rates:
> +    maxItems: 2
> +
> +  iommus:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  rockchip,grf:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      The phandle of the syscon node for
> +      the general register file (GRF).
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
> +    #include <dt-bindings/interrupt-controller/irq.h>
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
