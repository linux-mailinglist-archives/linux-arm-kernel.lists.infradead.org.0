Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51D123B0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 00:44:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6kkAq7p3JNq6bcKRS1vpgK6CvXjFqgVDzBpgJtZrGY=; b=nNvA7UOdOtGXgT
	hsAY1hjcsCdTjoDAcnDq1Haf9c801ijaAQZWa+Cop0aMl/gicXRb2klvfuBbyy44w4rPVRYrgfX1p
	SCCHRw4Pli9WMlhcSjkIVPG2nQ9YVtxlx5sHWy4ewBV51pF/ycJcY13eMco5Lsges1bnOcT5iRQ+s
	6vp1td17KfMHF8Ojz/UYEWaejIm9Iidl+nMBpgBxSaZzGLu4zMTIiNFTLfUCXSc0FZfbf6WhMsXUL
	gqoD42B8eFhfHE01JPWvJdSilJ/S7P9riK18fncCkrAlpexT8vUIaEQ+OVd0vAzLUDDA0RwU1FpHW
	HX46N2TEZ7KphevtKXTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihMVd-0001jA-6l; Tue, 17 Dec 2019 23:44:09 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihMVH-0001g2-Mi
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 23:43:50 +0000
Received: by mail-ot1-f65.google.com with SMTP id r27so44306otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Dec 2019 15:43:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IGVlsi51wBMoGedqeTz+Ey68UQlFM88VldO63Q3nLRQ=;
 b=EQqMuN8D4PrnlddKcaX3ax6u/uVPViKE5JgOhuKI/g4grZHR0V5nsiyOvErl50s7ir
 ytlK2dzkLkaSURXVZ4Q+uWltqQJ8yWvptuD5B9L8gkT1Zujhxpp+YtDfRSEVf5KPTYlH
 IpfTtyfrIG5Bx11jAFCzFg2tVGmBV7Gtbp+BPWdMxGBKQgX+7qBaNrhEG0nFfiKRAR/k
 vG9y3pxPk4wtvY8uOVkcYbkf45EL78bNz1s31oqR/qNLTKWoq/Uz+UEuJ5UUYqMpOgQ8
 cBOMQMuOyp78Hm5kGl9kD6ht4FQoMgZn1jsl/yhVPlPeEQ1oFJP2/MEU/3spTrp/hK3M
 0DVg==
X-Gm-Message-State: APjAAAVJTZ+ENbjAgNIH5WSQGaWcymwzJOSxiQFkfeaYatJYXSTrhJty
 syJK0/JOr1rjSwngQqAeTA==
X-Google-Smtp-Source: APXvYqyqrKdrMkctouGaopN51KC2pUjOQpD1RG3uWe9FRQZYCgz6+jOAqvGgyxFRpwmFELy9y3Lo+w==
X-Received: by 2002:a05:6830:1442:: with SMTP id
 w2mr56075otp.143.1576626226428; 
 Tue, 17 Dec 2019 15:43:46 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 4sm120089otu.0.2019.12.17.15.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 15:43:45 -0800 (PST)
Date: Tue, 17 Dec 2019 17:43:45 -0600
From: Rob Herring <robh@kernel.org>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2] dt-bindings: iio: adc: stm32-adc: convert bindings to
 json-schema
Message-ID: <20191217234345.GA7738@bogus>
References: <1575649028-10909-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575649028-10909-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_154347_777793_F91B3222 
X-CRM114-Status: GOOD (  26.11  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, alexandre.torgue@st.com, linux-iio@vger.kernel.org,
 pmeerw@pmeerw.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mcoquelin.stm32@gmail.com,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 06, 2019 at 05:17:08PM +0100, Fabrice Gasnier wrote:
> Convert the STM32 ADC binding to DT schema format using json-schema
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
> Note: this applies on top of IIO tree currently (iio-for-5.5c).
> 
> Changes in V2:
> - Take almost all of Rob suggestions (removed reg generic description,
>   added minItems, maxItems, st,max-clk-rate-hz range, drop some pipes,
>   simplify clock-names, remove unneeded allOfs)
> - For now, keep all in one file despite there are lots of if/thens in the
>   bindings
> ---
>  .../devicetree/bindings/iio/adc/st,stm32-adc.txt   | 149 -------
>  .../devicetree/bindings/iio/adc/st,stm32-adc.yaml  | 454 +++++++++++++++++++++
>  2 files changed, 454 insertions(+), 149 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml


> diff --git a/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> new file mode 100644
> index 00000000..60a0212
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/st,stm32-adc.yaml
> @@ -0,0 +1,454 @@
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
> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      One or more interrupts for ADC block, depending on part used:
> +        - stm32f4 and stm32h7 share a common ADC interrupt line.
> +        - stm32mp1 has two separate interrupt lines, one for each ADC within
> +          ADC block.
> +    minItems: 1
> +    maxItems: 2
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
> +    description:
> +      Allow to specify desired max clock rate used by analog circuitry.
> +
> +  vdda-supply:
> +    description: Phandle to the vdda input analog voltage.
> +
> +  vref-supply:
> +    description: Phandle to the vref input analog reference voltage.
> +
> +  booster-supply:
> +    description:
> +      Phandle to the embedded booster regulator that can be used to supply ADC
> +      analog input switches on stm32h7 and stm32mp1.
> +
> +  vdd-supply:
> +    description:
> +      Phandle to the vdd input voltage. It can be used to supply ADC analog
> +      input switches on stm32mp1.
> +
> +  st,syscfg:
> +    description:
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
> +          const: adc
> +
> +        interrupts:
> +          items:
> +            - description: interrupt line common for all ADCs
> +
> +        st,max-clk-rate-hz:
> +          minimum: 600000
> +          maximum: 36000000
> +          default: 36000000
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
> +        st,max-clk-rate-hz:
> +          minimum: 120000
> +          maximum: 36000000
> +          default: 36000000
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
> +        st,max-clk-rate-hz:
> +          minimum: 120000
> +          maximum: 36000000
> +          default: 36000000
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
> +    description:
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
> +        description:
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
> +        description:
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
> +              enum: [6, 8, 10, 12]
> +              default: 12
> +
> +            st,adc-channels:
> +              minItems: 1
> +              maxItems: 16
> +              minimum: 0
> +              maximum: 15

You are mixing array and scalar constraints here. You need:

minItems: 1
maxItems:16
items:
  minimum: 0
  maximum: 15

Update dtschema. It will now catch this. There's a few others too.


> +
> +            st,adc-diff-channels: false
> +
> +            st,min-sample-time-nsecs:
> +              minItems: 1
> +              maxItems: 16
> +              minimum: 80
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
> +              enum: [8, 10, 12, 14, 16]
> +              default: 16
> +
> +            st,adc-channels:
> +              minItems: 1
> +              maxItems: 20
> +              minimum: 0
> +              maximum: 19
> +
> +            st,min-sample-time-nsecs:
> +              minItems: 1
> +              maxItems: 20
> +              minimum: 40
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
