Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10751A888B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qo6E7VqR6WbCO4zJDurZ3jiDwYFQJ+R6macU+8OzyU=; b=KIYuVtRT9TNBv3
	qZobD+cP8s3uHdrPmm8eHZ0DFcYn/jeHAQ69G4TaUHUa8xc8vAmbQqUu/XhYqpfNpxsEhnfHatnPT
	Sy4PDRpdCrQOm0it7jyObqRbkjiBSsmtJqa5Tto0Z0XX2403EM7C5mjnrJlrMPyJQsfgoOq2b6A7F
	Lf97zSBNX5tRvIH6xugasIxtdu1482Iz9LMJx5LURROL0ur2iSMSUHEMSgLG4a8cnc2gMkimkNiAN
	p3tnRPbzhc2fH1dZnAxKsJqZSW8UwSNjNgwEaRDAKL/3sHwyyThD4l9K2Y7oamV2zQ0PakRx3GtYN
	EmeMjmYSxtquw9Jksegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPwE-0008Gv-Nl; Tue, 14 Apr 2020 18:05:34 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPuy-0004vp-Qo
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:04:20 +0000
Received: by mail-oi1-f195.google.com with SMTP id k133so10502391oih.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 11:04:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zQ0PimyRdMABhjhHh/Gv5/rP+w4JWlh3TdDCCaak8Qg=;
 b=MrpBcolz1QA4ADUediNqF/iiMOkMxVsxb4EOjvWNZCBhnygrcuTt0XYjG5ziOK85sz
 RCt2YbnTIXhkQ+3QMuOPNFrGBeQP97JiRp7f7QFBJ+Gt36ITZYzTRVkxkZB6ewpz4Bm7
 oRvj6DOXXMOw/k1EMgyXKjbkK8YOt28HezYvjPGHBPjbhN5BIBxbOFsv2rBR5MVFG0jR
 MMH7hA/QxtOQMzqkkNVoYY3rFOXIfDD2QUKE5jlLrIwyjQQw2k2ua9VWZxoavJBB1PHQ
 4RAMlc0qHi6V3igUWkcdb72jSzzO6Q19HO4toRerJ+ro36btnWwRSGRg/0wNjz8qVQEF
 YCcA==
X-Gm-Message-State: AGi0PuYc5fT76tRglr2PdMnjWAsHeUnVJlUcvtc81oXvhO0PD77Ln5Nv
 XSfUXM5oLt2DN6q1XQtFQA==
X-Google-Smtp-Source: APiQypKFUIbErgo20KGe3E34B2dSQ+p6+Rq8KlCqQOyTgLPxoH4qjOuY/QFqublHD1xJYLoIqVNeSg==
X-Received: by 2002:aca:b104:: with SMTP id a4mr14281712oif.103.1586887455780; 
 Tue, 14 Apr 2020 11:04:15 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o204sm5707995oib.12.2020.04.14.11.04.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:04:15 -0700 (PDT)
Received: (nullmailer pid 18713 invoked by uid 1000);
 Tue, 14 Apr 2020 18:04:13 -0000
Date: Tue, 14 Apr 2020 13:04:13 -0500
From: Rob Herring <robh@kernel.org>
To: Christophe Roullier <christophe.roullier@st.com>
Subject: Re: [PATCH V2 2/2] dt-bindings: net: dwmac: Convert stm32 dwmac to
 DT schema
Message-ID: <20200414180413.GB4816@bogus>
References: <20200403140415.29641-1-christophe.roullier@st.com>
 <20200403140415.29641-3-christophe.roullier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403140415.29641-3-christophe.roullier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110416_951138_1E9B0BC2 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Apr 03, 2020 at 04:04:15PM +0200, Christophe Roullier wrote:
> Convert stm32 dwmac to DT schema.
> 
> Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
> ---
>  .../devicetree/bindings/net/stm32-dwmac.txt   |  44 -----
>  .../devicetree/bindings/net/stm32-dwmac.yaml  | 150 ++++++++++++++++++
>  2 files changed, 150 insertions(+), 44 deletions(-)
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
> index 000000000000..f559293dbab5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/stm32-dwmac.yaml
> @@ -0,0 +1,150 @@
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
> +  clocks:
> +    minItems: 3
> +    maxItems: 5
> +    items:
> +        - description: GMAC main clock
> +        - description: MAC TX clock
> +        - description: MAC RX clock
> +        - description: For MPU family, used for power mode
> +        - description: For MPU family, used for PHY without quartz
> +
> +  clock-names:
> +    minItems: 3
> +    maxItems: 5
> +    contains:
> +      enum:
> +        - stmmaceth
> +        - mac-clk-tx
> +        - mac-clk-rx
> +        - ethstp
> +        - eth-ck
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
> +           compatible = "st,stm32mp1-dwmac", "snps,dwmac-4.20a";
> +           reg = <0x5800a000 0x2000>;
> +           reg-names = "stmmaceth";
> +           interrupts = <&intc GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> +           interrupt-names = "macirq";
> +           clock-names = "stmmaceth",
> +                     "mac-clk-tx",
> +                     "mac-clk-rx",
> +                     "ethstp",
> +                     "eth-ck";
> +           clocks = <&rcc ETHMAC>,
> +                <&rcc ETHTX>,
> +                <&rcc ETHRX>,
> +                <&rcc ETHSTP>,
> +                <&rcc ETHCK_K>;
> +           st,syscon = <&syscfg 0x4>;
> +           snps,pbl = <2>;
> +           snps,axi-config = <&stmmac_axi_config_0>;
> +           snps,tso;
> +           phy-mode = "rgmii";
> +       };
> +
> +    //Example 2 (MCU example)
> +     ethernet1: ethernet@40028000 {
> +           compatible = "st,stm32-dwmac", "snps,dwmac-3.50a";
> +           reg = <0x40028000 0x8000>;
> +           reg-names = "stmmaceth";
> +           interrupts = <0 61 0>, <0 62 0>;
> +           interrupt-names = "macirq", "eth_wake_irq";
> +           clock-names = "stmmaceth", "mac-clk-tx", "mac-clk-rx";
> +           clocks = <&rcc 0 25>, <&rcc 0 26>, <&rcc 0 27>;
> +           st,syscon = <&syscfg 0x4>;
> +           snps,pbl = <8>;
> +           snps,mixed-burst;
> +           dma-ranges;

dma-ranges is not valid here. I will drop on applying, but you should 
check your dts files.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
