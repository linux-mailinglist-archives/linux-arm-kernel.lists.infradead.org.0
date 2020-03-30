Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE64119873E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 00:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ipfD71mOpXQFISYiuUW4COVCo+KWNG/LC93xnkh8hE=; b=SGtUIhG3+hrDUW
	w/ssE9Z81eNrDlp0MWKU5C/IQZNL79TpxPcQlCt+DFL8ZkXc+kQElO7sHpsKX4uZ4Nb1dI12JRV39
	4hH50Zko46sCjUPzwumWvkKh6KOSLDnvjvI5YQ3JinlruvQ4g9vXtr9QUn2EZXrgSJgok1suhDTLR
	pg2w/i3zVRcwB9i5mP5YYN64/Q6lw5gz7XUP6ZZShtdgho47HPVhUa2Htz9T/GRCVQyzyWy0Zc+D+
	K6kCrIjzdsw6MWsS+wwq0qDtZAcHCf53sjH/twhnHifxLe3cj4HWjjVj/qWlzs7onO2yvecqLQIn5
	d6vlxrRW+4lcYqPHUniw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2j2-0005Rq-Br; Mon, 30 Mar 2020 22:17:44 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2it-0005Qy-19
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 22:17:36 +0000
Received: by mail-il1-f195.google.com with SMTP id j9so17547464ilr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 15:17:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5D3JWTl1QzLG/V+Hra/4SEMj8E+g/+5w/ra3WOml/tY=;
 b=th8dLa0uD/HoeJE6MYI4zFJnu/2Z57i+BhhWZWokcZAT3COHsxE1sNQLiBiXkjGi3c
 rPtlct8UTyVQhUDJ6QCgzWi+boac8FB6zqn+hqEHJ+tRgN4qPJ60n8WeO2unavoDrH8w
 V+gsWeO7YnmgzMbpbW21MS1D4d6tsfGD7sswgmIuwKwMpt3mqlWvtOVTKSmBSdu56OuU
 ECINdLYHDQRFNsduVb9b6OyjHJ7miWV6DaHSzzq3IsNRw9tBzWvPJJzurLGHcJdAxBKJ
 DP/+iIhJxbpJzbbrZ0amxCL7BUXflaCdcFvwFug6+CvyLi5BHDuzHj7ezE+MDWz/1C/V
 b2Pw==
X-Gm-Message-State: ANhLgQ17vE04pHORLdI5/aua7GSOmDddyfUd51QnQ/3ITPBwKYXqC4oG
 21l8KD+SVSNiDbmGGi+Drg==
X-Google-Smtp-Source: ADFU+vu+RdYKFetamtyJZ77gVC5CWVXmhc8ENkRdLPahpmm6UCJX0YRLuzxicB8PcFkskdG5xwAueA==
X-Received: by 2002:a92:798f:: with SMTP id
 u137mr14150243ilc.231.1585606652756; 
 Mon, 30 Mar 2020 15:17:32 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id 10sm5310473ilb.45.2020.03.30.15.17.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:17:32 -0700 (PDT)
Received: (nullmailer pid 26371 invoked by uid 1000);
 Mon, 30 Mar 2020 22:17:30 -0000
Date: Mon, 30 Mar 2020 16:17:30 -0600
From: Rob Herring <robh@kernel.org>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCHv2 2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to DT
 schema
Message-ID: <20200330221730.GA17878@bogus>
References: <20200317151706.25810-1-christophe.roullier@st.com>
 <20200317151706.25810-3-christophe.roullier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317151706.25810-3-christophe.roullier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_151735_079420_D505F60F 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
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

On Tue, Mar 17, 2020 at 04:17:06PM +0100, Christophe Roullier wrote:
> Convert stm32 dwmac to DT schema.
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>  .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
>  .../devicetree/bindings/net/stm32-dwmac.yaml  | 160 ++++++++++++++++++
>  2 files changed, 160 insertions(+), 44 deletions(-)
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
> index 000000000000..4440216917b3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> @@ -0,0 +1,160 @@
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

This schema is only applied when these compatibles are present, so you 
don't need the 'if' and all this can move to the main section.

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
> +          - description: For MPU family, used for PHY without quartz
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
> +      set this property in RMII mode when you have PHY without crystal 50MHz and want to
> +      select RCC clock instead of ETH_REF_CLK.
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

Don't show status in examples.

> +       phy-mode = "rgmii";
> +       };

Wrong indentation.

> +
> +    //Example 2 (MCU example)
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
> +    //Example 3
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
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
