Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD2D114930
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 23:24:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FggyHXPf+91uzdvcZDglJG0jsYD6EGH/UBWwmIC+td8=; b=V1lvbhAU5n8RZZ
	nDbOolumOohD3rqxDL79A1VyB0AXbfkcc4tvxEJ663frEhSj3lbOwNUpSkARLly+BQhHWMmZO68JO
	pMWU4IMKvB3u7xaLS+bSLpVVnzT6WDimGhM55QPvBpJHRBTHRxnkJNSX1/ivOOdu5AiAQj6fu3IrX
	8e+1AOzGlTulksOsAMePGKRSqw5zs7QbEs1YwMfMxuq9R+OmbRtV2XKA78q3FPFj3WzhxsFyqNgsj
	n8KZ8Mprs3njDMKjM+BqPLHBhlTiT5Cx8O4pzVa4iTtNvVpHacRy4PA8QGaKFQg6JNDbLFGOadJSD
	39x/80R/Syzxso+8P55g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iczY6-0003bi-FE; Thu, 05 Dec 2019 22:24:38 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iczXr-0003aP-LW
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 22:24:25 +0000
Received: by mail-ot1-f65.google.com with SMTP id d17so4128769otc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 14:24:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V+ntObkjRpAa/oOIcrXOi6B2bOSJNJ8qawZSdjlonVM=;
 b=LXEo8F557OuAW3Y1VrJtdz5RmJSURqF/NgZ6RZknqc2+B70Ts8/sFP0SJ4TBz0+rew
 lN3VIL2CwG3ZiVsJDCQsu13P0J+BpjjV/SNFKZIirzpT8tMN+/M9L/sjdapz8Z6/Odew
 vO9m9xzK2yjm9RY10Cxyx2w9wXMyTB8JBWG0wdFFGoBdN7Vxe+wjb/iOLokJ6Ed1442o
 7/AQ79hHrGDtmIV8gqAY+XzoAGfl3kiozqt/m9P4dCgHRR5GbS6PJ9tJaKMKrH+F/CU6
 HUAynLRWRHC/FtgWa+UTgofk0go/j4C210T804BMkXg+bvDvwBSIlqKXtFKW6Fxy8v3Y
 o4SQ==
X-Gm-Message-State: APjAAAX6EUhAoQkTrIEThwx1h4ARuDkfx2YB0NSthMUHFhdCTmtNG3N/
 1xh3H3phh+NxH/E7i5E1pw==
X-Google-Smtp-Source: APXvYqzwgOnIep4g2tpFIV3s/3gibmbz5buTcOGPMtyrZVZBEnUJrTuNJw11+0nE6brk2O2rA2p/LQ==
X-Received: by 2002:a9d:7305:: with SMTP id e5mr8346342otk.64.1575584662374;
 Thu, 05 Dec 2019 14:24:22 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r24sm3868153ota.61.2019.12.05.14.24.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 14:24:21 -0800 (PST)
Date: Thu, 5 Dec 2019 16:24:21 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: stm32-adc: convert bindings to
 json-schema
Message-ID: <20191205222421.GA312@bogus>
References: <1574873325-9916-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574873325-9916-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_142423_702561_9D4DAE9B 
X-CRM114-Status: GOOD (  26.51  )
X-Spam-Score: 2.2 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
 1.0 PDS_BTC_MSGID          Bitcoin ID with T_MSGID_NOFQDN2
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 alexandre.torgue@st.com, linux-iio@vger.kernel.org, pmeerw@pmeerw.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 mcoquelin.stm32@gmail.com, knaack.h@gmx.de,
 linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 05:48:45PM +0100, Fabrice Gasnier wrote:
> Convert the STM32 ADC binding to DT schema format using json-schema
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
> Note: this applies on top of IIO tree currently (iio-for-5.5c).
> ---
>  .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
>  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 448 +++++++++++++++++++++
>  2 files changed, 448 insertions(+), 149 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml


> diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> new file mode 100644
> index 00000000..2ebc2e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> @@ -0,0 +1,448 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/bindings/iio/adc/st,stm32-adc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: STMicroelectronics STM32 ADC bindings
> +
> +description: |
> +  STM32 ADC is a successive approximation analog-to-digital converter.
> +  It has several multiplexed input channels. Conversions can be performed
> +  in single, continuous, scan or discontinuous mode. Result of the ADC is
> +  stored in a left-aligned or right-aligned 32-bit data register.
> +  Conversions can be launched in software or using hardware triggers.
> +
> +  The analog watchdog feature allows the application to detect if the input
> +  voltage goes beyond the user-defined, higher or lower thresholds.
> +
> +  Each STM32 ADC block can have up to 3 ADC instances.
> +
> +maintainers:
> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32f4-adc-core
> +      - st,stm32h7-adc-core
> +      - st,stm32mp1-adc-core
> +
> +  reg:
> +    description: Offset and length of the ADC block register set

Don't need generic description of a standard property.

> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      One or more interrupts for ADC block, depending on part used:
> +        - stm32f4 and stm32h7 share a common ADC interrupt line.
> +        - stm32mp1 has two separate interrupt lines, one for each ADC within
> +          ADC block.

You can put minItems: 1, maxItems: 2 here.

> +
> +  clocks:
> +    description: |
> +      Core can use up to two clocks, depending on part used:
> +        - "adc" clock: for the analog circuitry, common to all ADCs.
> +          It's required on stm32f4.
> +          It's optional on stm32h7 and stm32mp1.
> +        - "bus" clock: for registers access, common to all ADCs.
> +          It's not present on stm32f4.
> +          It's required on stm32h7 and stm32mp1.
> +
> +  clock-names: true
> +
> +  st,max-clk-rate-hz:
> +    description: |
> +      Allow to specify desired max clock rate used by analog circuitry.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

*-hz already has a type, so you can drop this.

No range you can specify?

> +
> +  vdda-supply:
> +    description: Phandle to the vdda input analog voltage.
> +
> +  vref-supply:
> +    description: Phandle to the vref input analog reference voltage.
> +
> +  booster-supply:
> +    description: |

There's not any formatting here, so '|' can be dropped.

> +      Phandle to the embedded booster regulator that can be used to supply ADC
> +      analog input switches on stm32h7 and stm32mp1.
> +
> +  vdd-supply:
> +    description: |
> +      Phandle to the vdd input voltage. It can be used to supply ADC analog
> +      input switches on stm32mp1.
> +
> +  st,syscfg:
> +    description: |
> +      Phandle to system configuration controller. It can be used to control the
> +      analog circuitry on stm32mp1.
> +    allOf:
> +      - $ref: "/schemas/types.yaml#/definitions/phandle-array"
> +
> +  interrupt-controller: true
> +
> +  '#interrupt-cells':
> +    const: 1
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32f4-adc-core
> +
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +
> +        clock-names:
> +          items:
> +            const: adc
> +          maxItems: 1

You can simplify to:

clock-names:
  const: adc

Note that if you did have 'items' it should be a list (i.e. have '-').

> +
> +        interrupts:
> +          items:
> +            - description: interrupt line common for all ADCs
> +
> +        booster-supply: false
> +
> +        vdd-supply: false
> +
> +        st,syscfg: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32h7-adc-core
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: bus
> +            - const: adc
> +          minItems: 1
> +          maxItems: 2
> +
> +        interrupts:
> +          items:
> +            - description: interrupt line common for all ADCs
> +
> +        vdd-supply: false
> +
> +        st,syscfg: false
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32mp1-adc-core
> +
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 1
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            - const: bus
> +            - const: adc
> +          minItems: 1
> +          maxItems: 2
> +
> +        interrupts:
> +          items:
> +            - description: interrupt line for ADC1
> +            - description: interrupt line for ADC2
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - vdda-supply
> +  - vref-supply
> +  - interrupt-controller
> +  - '#interrupt-cells'
> +  - '#address-cells'
> +  - '#size-cells'
> +
> +patternProperties:
> +  "^adc@[0-9]+$":
> +    type: object
> +    description: |
> +      An ADC block node should contain at least one subnode, representing an
> +      ADC instance available on the machine.
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - st,stm32f4-adc
> +          - st,stm32h7-adc
> +          - st,stm32mp1-adc
> +
> +      reg:
> +        description: |
> +          Offset of ADC instance in ADC block. Valid values are:
> +            - 0x0:   ADC1
> +            - 0x100: ADC2
> +            - 0x200: ADC3 (stm32f4 only)
> +        maxItems: 1
> +
> +      '#io-channel-cells':
> +        const: 1
> +
> +      interrupts:
> +        description: |
> +          IRQ Line for the ADC instance. Valid values are:
> +            - 0 for adc@0
> +            - 1 for adc@100
> +            - 2 for adc@200 (stm32f4 only)
> +        maxItems: 1
> +
> +      clocks:
> +        description: |
> +          Input clock private to this ADC instance. It's required only on
> +          stm32f4, that has per instance clock input for registers access.
> +        maxItems: 1
> +
> +      dmas:
> +        description: RX DMA Channel
> +        maxItems: 1
> +
> +      dma-names:
> +        const: rx
> +
> +      assigned-resolution-bits:
> +        description: |
> +          Resolution (bits) to use for conversions:
> +            - can be 6, 8, 10 or 12 on stm32f4
> +            - can be 8, 10, 12, 14 or 16 on stm32h7 and stm32mp1
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +      st,adc-channels:
> +        description: |
> +          List of single-ended channels muxed for this ADC. It can have up to:
> +            - 16 channels, numbered from 0 to 15 (for in0..in15) on stm32f4
> +            - 20 channels, numbered from 0 to 19 (for in0..in19) on stm32h7 and
> +              stm32mp1.
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +      st,adc-diff-channels:
> +        description: |
> +          List of differential channels muxed for this ADC. Some channels can
> +          be configured as differential instead of single-ended on stm32h7 and
> +          on stm32mp1. Positive and negative inputs pairs are listed:
> +          <vinp vinn>, <vinp vinn>,... vinp and vinn are numbered from 0 to 19.
> +
> +          Note: At least one of "st,adc-channels" or "st,adc-diff-channels" is
> +          required. Both properties can be used together. Some channels can be
> +          used as single-ended and some other ones as differential (mixed). But
> +          channels can't be configured both as single-ended and differential.
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +          - items:
> +              items:
> +                - description: |
> +                    "vinp" indicates positive input number
> +                  minimum: 0
> +                  maximum: 19
> +                - description: |
> +                    "vinn" indicates negative input number
> +                  minimum: 0
> +                  maximum: 19
> +
> +      st,min-sample-time-nsecs:
> +        description: |
> +          Minimum sampling time in nanoseconds. Depending on hardware (board)
> +          e.g. high/low analog input source impedance, fine tune of ADC
> +          sampling time may be recommended. This can be either one value or an
> +          array that matches "st,adc-channels" and/or "st,adc-diff-channels"
> +          list, to set sample time resp. for all channels, or independently for
> +          each channel.
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +
> +    allOf:
> +      - if:
> +          properties:
> +            compatible:
> +              contains:
> +                const: st,stm32f4-adc

There's a lot of if/thens in this binding. I wonder if splitting this 
into 2 files might be cleaner. 

> +
> +        then:
> +          properties:
> +            reg:
> +              enum:
> +                - 0x0
> +                - 0x100
> +                - 0x200
> +
> +            interrupts:
> +              minimum: 0
> +              maximum: 2
> +
> +            assigned-resolution-bits:
> +              allOf:
> +                - enum: [6, 8, 10, 12]
> +                - default: 12
> +
> +            st,adc-channels:
> +              allOf:
> +                - maxItems: 16
> +                  items:
> +                    minimum: 0
> +                    maximum: 15
> +
> +            st,adc-diff-channels: false
> +
> +            st,min-sample-time-nsecs:
> +              allOf:
> +                - maxItems: 16
> +                  items:
> +                    minimum: 80
> +
> +          required:
> +            - clocks
> +
> +      - if:
> +          properties:
> +            compatible:
> +              contains:
> +                enum:
> +                  - st,stm32h7-adc
> +                  - st,stm32mp1-adc
> +
> +        then:
> +          properties:
> +            reg:
> +              enum:
> +                - 0x0
> +                - 0x100
> +
> +            interrupts:
> +              minimum: 0
> +              maximum: 1
> +
> +            assigned-resolution-bits:
> +              allOf:

Shouldn't need the allOf here.

> +                - enum: [8, 10, 12, 14, 16]
> +                - default: 16
> +
> +            st,adc-channels:
> +              allOf:

Shouldn't need the allOf here.

> +                - maxItems: 20
> +                  items:
> +                    minimum: 0
> +                    maximum: 19
> +
> +            st,min-sample-time-nsecs:
> +              allOf:

Shouldn't need the allOf here.

> +                - maxItems: 20
> +                  items:
> +                    minimum: 40
> +
> +    additionalProperties: false
> +
> +    anyOf:
> +      - required:
> +          - st,adc-channels
> +      - required:
> +          - st,adc-diff-channels
> +
> +    required:
> +      - compatible
> +      - reg
> +      - interrupts
> +      - '#io-channel-cells'
> +
> +examples:
> +  - |
> +    // Example 1: with stm32f429
> +      adc123: adc@40012000 {
> +        compatible = "st,stm32f4-adc-core";
> +        reg = <0x40012000 0x400>;
> +        interrupts = <18>;
> +        clocks = <&rcc 0 168>;
> +        clock-names = "adc";
> +        st,max-clk-rate-hz = <36000000>;
> +        vdda-supply = <&vdda>;
> +        vref-supply = <&vref>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        adc@0 {
> +          compatible = "st,stm32f4-adc";
> +          #io-channel-cells = <1>;
> +          reg = <0x0>;
> +          clocks = <&rcc 0 168>;
> +          interrupt-parent = <&adc123>;
> +          interrupts = <0>;
> +          st,adc-channels = <8>;
> +          dmas = <&dma2 0 0 0x400 0x0>;
> +          dma-names = "rx";
> +          assigned-resolution-bits = <8>;
> +        };
> +        // ...
> +        // other adc child nodes follow...
> +      };
> +
> +  - |
> +    // Example 2: with stm32mp157c to setup ADC1 with:
> +    // - channel 1 as single-ended
> +    // - channels 2 & 3 as differential (with resp. 6 & 7 negative inputs)
> +      #include <dt-bindings/interrupt-controller/arm-gic.h>
> +      #include <dt-bindings/clock/stm32mp1-clks.h>
> +      adc12: adc@48003000 {
> +        compatible = "st,stm32mp1-adc-core";
> +        reg = <0x48003000 0x400>;
> +        interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&rcc ADC12>, <&rcc ADC12_K>;
> +        clock-names = "bus", "adc";
> +        booster-supply = <&booster>;
> +        vdd-supply = <&vdd>;
> +        vdda-supply = <&vdda>;
> +        vref-supply = <&vref>;
> +        st,syscfg = <&syscfg>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        adc@0 {
> +          compatible = "st,stm32mp1-adc";
> +          #io-channel-cells = <1>;
> +          reg = <0x0>;
> +          interrupt-parent = <&adc12>;
> +          interrupts = <0>;
> +          st,adc-channels = <1>;
> +          st,adc-diff-channels = <2 6>, <3 7>;
> +          st,min-sample-time-nsecs = <5000>;
> +          dmas = <&dmamux1 9 0x400 0x05>;
> +          dma-names = "rx";
> +        };
> +        // ...
> +        // other adc child node follow...
> +      };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
