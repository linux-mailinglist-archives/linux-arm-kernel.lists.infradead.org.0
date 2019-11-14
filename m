Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF0BFCD52
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:22:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBzTXs+HJfxBKBXhMix4SvpwkcYTNwutx4oV1l0Adhk=; b=IvHDFx9Uc/4Sgr
	aRw2Vu71hNPDy+EV545dtxm/lttsc72otZULU1SE7aSBFJWcigsyNTUvZJ9mb7/lZ4P7VtBI45kZC
	H5BlNzyi1zEjBmDxmtX1olqXRLN5Kk9pBW5l9Im1bZpY1U1yrtrndMpqd+KL0ExrzkNORCw3dc9QJ
	7RGMendRsqVnyGDd0hLKu/nInaaxu2cSjYZ80i2eB7cNKFDogCmrhnunRhCcmDSxOkygvKSPTgLxW
	QLL6AghT92kEnPP/7zCDzGNjcay18qCnYue4YFUqXwppa/Ot6lTKpgJ9shP5MuGL4g0hpB0HkgAX2
	xD9ULLr09DbwC/fBi7gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJlI-00075L-7v; Thu, 14 Nov 2019 18:22:32 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJl4-000720-5D
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:22:20 +0000
Received: by mail-oi1-f193.google.com with SMTP id n14so6126263oie.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:22:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3ZM0l7/aVkkc7/tbWYVkGWwf0qSsYfEVwIFWdU8EXKQ=;
 b=B702j50vnZlKBVBUdYOjYwk9gyWbU+cQeH6ZKN/mENLGG09l71FhGDpFPcqs7GK+zg
 p6ykeaXBqjtPwskxHi1/0+tQLEw2VTJJ24alFoIeX4Qxt8cNP4I3s4oAeKNkI9kEujVi
 iLt5eHIC7PxEC1R4Q6WOnS0GaN9p6ysITmTVI/XkEcJgy9FFiL80IXyDadhZSOertdm5
 qII9hvu6c+OHeuyhcAehUO4pd5KL4FFejrC51sIyUBr9mn4ePEoJXaIzue6RUF5nsC0H
 Em75/awriv0tR/Cs7gDYNCxktqCCZoBlZ2J2h8jy8nftIYvCDfk1hVeR93qIrl4USjIA
 SdXw==
X-Gm-Message-State: APjAAAVcMZg54DBtd+DY/loRapB4E9u/buVATHapy7YCTQjp2aEE48oX
 lYqDY8n2xJAk97Vj7tapzA==
X-Google-Smtp-Source: APXvYqxgQRQdrim9O091TB59rW3d/3ojEsp/TMb0NUApED2QTgVSziIztxDUDPJ0tpPU7uU0F7UhOA==
X-Received: by 2002:aca:4891:: with SMTP id v139mr2287416oia.175.1573755735866; 
 Thu, 14 Nov 2019 10:22:15 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i12sm2079082ota.10.2019.11.14.10.22.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:22:15 -0800 (PST)
Date: Thu, 14 Nov 2019 12:22:14 -0600
From: Rob Herring <robh@kernel.org>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH  2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to DT
 schema
Message-ID: <20191114182214.GA22693@bogus>
References: <20191108103526.22254-1-christophe.roullier@st.com>
 <20191108103526.22254-3-christophe.roullier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108103526.22254-3-christophe.roullier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_102218_340347_CD3F32EA 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 narmstrong@baylibre.com, martin.blumenstingl@googlemail.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 alexandru.ardelean@analog.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 11:35:26AM +0100, Christophe Roullier wrote:
> Convert stm32 dwmac to DT schema.

Lots of checkpatch errors with trailing WS.

> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>  .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
>  .../devicetree/bindings/net/stm32-dwmac.yaml  | 161 ++++++++++++++++++
>  2 files changed, 161 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.txt
>  create mode 100644 Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.txt b/Documentation/devicetree/bindings/net/stm32-dwmac.txt
> deleted file mode 100644
> index a90eef11dc46..000000000000
> --- a/Documentation/devicetree/bindings/net/stm32-dwmac.txt
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -STMicroelectronics STM32 / MCU DWMAC glue layer controller
> -
> -This file documents platform glue layer for stmmac.
> -Please see stmmac.txt for the other unchanged properties.
> -
> -The device node has following properties.
> -
> -Required properties:
> -- compatible:  For MCU family should be "st,stm32-dwmac" to select glue, and
> -	       "snps,dwmac-3.50a" to select IP version.
> -	       For MPU family should be "st,stm32mp1-dwmac" to select
> -	       glue, and "snps,dwmac-4.20a" to select IP version.
> -- clocks: Must contain a phandle for each entry in clock-names.
> -- clock-names: Should be "stmmaceth" for the host clock.
> -	       Should be "mac-clk-tx" for the MAC TX clock.
> -	       Should be "mac-clk-rx" for the MAC RX clock.
> -	       For MPU family need to add also "ethstp" for power mode clock
> -- interrupt-names: Should contain a list of interrupt names corresponding to
> -           the interrupts in the interrupts property, if available.
> -		   Should be "macirq" for the main MAC IRQ
> -		   Should be "eth_wake_irq" for the IT which wake up system
> -- st,syscon : Should be phandle/offset pair. The phandle to the syscon node which
> -	       encompases the glue register, and the offset of the control register.
> -
> -Optional properties:
> -- clock-names:     For MPU family "eth-ck" for PHY without quartz
> -- st,eth-clk-sel (boolean) : set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
> -- st,eth-ref-clk-sel (boolean) :  set this property in RMII mode when you have PHY without crystal 50MHz and want to select RCC clock instead of ETH_REF_CLK.
> -
> -Example:
> -
> -	ethernet@40028000 {
> -		compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
> -		reg = <0x40028000 0x8000>;
> -		reg-names = "stmmaceth";
> -		interrupts = <0 61 0>, <0 62 0>;
> -		interrupt-names = "macirq", "eth_wake_irq";
> -		clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
> -		clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
> -		st,syscon = <&syscfg 0x4>;
> -		snps,pbl = <8>;
> -		snps,mixed-burst;
> -		dma-ranges;
> -	};
> diff --git a/Documentation/devicetree/bindings/net/stm32-dwmac.yaml b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> new file mode 100644
> index 000000000000..eb0fd831f59d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> @@ -0,0 +1,161 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/net/stm32-dwmac.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: STMicroelectronics STM32 / MCU DWMAC glue layer controller
> +
> +maintainers:
> +  - Alexandre Torgue <alexandre.torgue@st.com>
> +  - Christophe Roullier <christophe.roullier@st.com>
> +
> +description:
> +  This file documents platform glue layer for stmmac.
> +
> +# We need a select here so we don't match all nodes with 'snps,dwmac'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - st,stm32-dwmac
> +          - st,stm32mp1-dwmac
> +  required:
> +    - compatible
> +
> +allOf:
> +  - $ref: "snps,dwmac.yaml#"
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - st,stm32-dwmac
> +              - st,stm32mp1-dwmac
> +    then:
> +      properties:
> +       clocks:
> +         minItems: 3 
> +         maxItems: 5
> +         items:
> +          - description: GMAC main clock
> +          - description: MAC TX clock
> +          - description: MAC RX clock
> +          - description: For MPU family, used for power mode

What does 'power mode' mean? IIRC, some DW MACs have a clock for WoL 
called LPI or something. Are you sure this is ST specific and not DW 
config or version specific?

> +          - description: For MPU family, used for PHY without quartz

It would be cleaner to define the clock always present and use a 
fixed-clock when you have an external quartz. 

> +
> +       clock-names:
> +         minItems: 3          
> +         maxItems: 5
> +         contains:
> +          enum:
> +            - stmmaceth
> +            - mac-clk-tx
> +            - mac-clk-rx
> +            - ethstp
> +            - eth-ck     
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - st,stm32mp1-dwmac
> +          - const: snps,dwmac-4.20a
> +      - items:
> +          - enum:
> +              - st,stm32-dwmac
> +          - const: snps,dwmac-4.10a
> +      - items:
> +          - enum:
> +              - st,stm32-dwmac
> +          - const: snps,dwmac-3.50a            
> +
> +  st,syscon:
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
> +    description:
> +      Should be phandle/offset pair. The phandle to the syscon node which
> +      encompases the glue register, and the offset of the control register
> +
> +  st,eth-clk-sel:
> +    description:
> +      set this property in RGMII PHY when you want to select RCC clock instead of ETH_CLK125.
> +    type: boolean
> +    
> +  st,eth-ref-clk-sel:
> +    description:
> +      set this property in RMII mode when you have PHY without crystal 50MHz and want to select RCC clock instead of ETH_REF_CLK.

Wrap lines.

> +    type: boolean   
> +
> +required:
> +  - compatible
> +  - clocks
> +  - clock-names
> +  - st,syscon
> +
> +examples:
> + - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    #include <dt-bindings/mfd/stm32h7-rcc.h>  
> +    //Example 1
> +     ethernet0: ethernet@5800a000 {
> +       compatible = "st,stm32mp1-dwmac", "snps,dwmac-4.20a";
> +       reg = <0x5800a000 0x2000>;
> +       reg-names = "stmmaceth";
> +       interrupts = <&intc GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> +       interrupt-names = "macirq";
> +       clock-names = "stmmaceth",
> +                     "mac-clk-tx",
> +                     "mac-clk-rx",
> +                     "ethstp",
> +                     "eth-ck";				      
> +       clocks = <&rcc ETHMAC>,
> +                <&rcc ETHTX>,
> +                <&rcc ETHRX>,
> +                <&rcc ETHSTP>,
> +                <&rcc ETHCK_K>;	
> +       st,syscon = <&syscfg 0x4>;
> +       snps,pbl = <2>;
> +       snps,axi-config = <&stmmac_axi_config_0>;
> +       snps,tso;
> +       status = "disabled";
> +       phy-mode = "rgmii";       
> +       };
> +
> +    //Example 1 (MCU example)

2 Example 1's?

> +     ethernet1: ethernet@40028000 {
> +       compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
> +       reg = <0x40028000 0x8000>;
> +       reg-names = "stmmaceth";
> +       interrupts = <0 61 0>, <0 62 0>;
> +       interrupt-names = "macirq", "eth_wake_irq";
> +       clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
> +       clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
> +       st,syscon = <&syscfg 0x4>;
> +       snps,pbl = <8>;
> +       snps,mixed-burst;
> +       dma-ranges;
> +       phy-mode = "mii";       
> +       };
> +
> +    //Example 2 
> +     ethernet2: ethernet@40027000 {
> +       compatible = "st,stm32-dwmac", "snps,dwmac-4.10a";
> +       reg = <0x40028000 0x8000>;
> +       reg-names = "stmmaceth";
> +       interrupts = <61>;
> +       interrupt-names = "macirq";
> +       clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
> +       clocks = <&rcc 62>, <&rcc 61>, <&rcc 60>;
> +       st,syscon = <&syscfg 0x4>;
> +       snps,pbl = <8>;
> +       status = "disabled";
> +       phy-mode = "mii";        
> +       };
> +
> +       
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
