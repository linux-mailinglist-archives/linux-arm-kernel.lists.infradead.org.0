Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EB416487D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:26:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asmagdgoZtdXkA2voq/fh5NMFDqJvC7UQdJR1zvY7sc=; b=W+jGaHt3hkxvnz
	w/21RUE/Kor6/1NIVEkcsIz8hm4NzDCkkGl0bbcs2Vx1FaVbxMvWieVPKvrm740SlzwXST/GrlSi2
	KYLwQYMsZFdwOXQa2Sm9bTV917eBiyeqRSgGvCzCQhnEbi4Ev7ExXAeM76L6OcXVhEMOsesjIceyj
	lB1SQmvYXZV/a2xuUjR1QhLeZNC2i4CEE906bYHD+lC15/3hQ8kxy+Xfk3LlbNq6xgzCCbv1OiGr9
	Dcgir7E1SXFFFiBr6slf3r4bdIjTVAJx+4BIxv9ndxZvjsTjWiac3FHdB/oXaVigZi5zZa/VS8w6p
	nJhUYlpkur89O/ddnIrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4REl-0008WS-Mg; Wed, 19 Feb 2020 15:26:07 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4REE-0008Dh-Sj
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:25:38 +0000
Received: by mail-ot1-f65.google.com with SMTP id r27so474444otc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:25:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9A6Pw6ubtA8XD2+nVSoO+kGVpenKZJvMby8DWoqvDxQ=;
 b=K5ygt5rRWEYUvcejw49+c9ljNAWUD3bMVehVmGz5gqvw8Zna6g46T3CnYI7amAICm4
 V2GU/Q2pfuopjTJCQF38fN7v9rF1VqTrXdKmIwycMoate6hnimc8NikTP9iSNaKxt1xd
 qNI17hCz9AruQZRD819J6va/CZIkfhXX54UiLbcytNe5B9jCOMle/uk1obxlhdg4bdXu
 uVPNkPar26c4OOrs155PCI7HRjBQiQ/bpuiPxIGNCA8F17yO6xhPk4JlISUu0qm0wFSB
 It+7qvPt8917yXfMTwsUkLwSaQoTikiRSXM0WDiWyWqGpuAf8LlShwhekAYXnd5I/qbC
 tbnw==
X-Gm-Message-State: APjAAAU2wqTNDj6O9mIDyeuI7w4bTgdojKDs2/O+mmmMbwyPYVyG7khy
 PCFNO8G48Ql8qVYcgibBWA==
X-Google-Smtp-Source: APXvYqz4EKkFWfBwsA+AUk6dcz7mZdu764nBiKi9eG73eELzPOgg8tPTfPvjMlS+TihdEuYh8ej3wA==
X-Received: by 2002:a05:6830:607:: with SMTP id
 w7mr21047225oti.155.1582125933500; 
 Wed, 19 Feb 2020 07:25:33 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z21sm11646oto.52.2020.02.19.07.25.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 07:25:32 -0800 (PST)
Received: (nullmailer pid 18178 invoked by uid 1000);
 Wed, 19 Feb 2020 15:25:32 -0000
Date: Wed, 19 Feb 2020 09:25:32 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: stm32: convert sai to json-schema
Message-ID: <20200219152532.GA10041@bogus>
References: <20200212131259.18805-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212131259.18805-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072534_998676_1CA1399E 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, perex@perex.cz, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 02:12:59PM +0100, Olivier Moysan wrote:
> Convert the STM32 SAI bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes in v2:
> - use pattern for compatible of child nodes
> - rework dmas and clocks properties
> - add "additionalProperties"
> ---
>  .../bindings/sound/st,stm32-sai.txt           | 107 ----------
>  .../bindings/sound/st,stm32-sai.yaml          | 191 ++++++++++++++++++
>  2 files changed, 191 insertions(+), 107 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.txt b/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
> deleted file mode 100644
> index 944743dd9212..000000000000
> --- a/Documentation/devicetree/bindings/sound/st,stm32-sai.txt
> +++ /dev/null
> @@ -1,107 +0,0 @@
> -STMicroelectronics STM32 Serial Audio Interface (SAI).
> -
> -The SAI interface (Serial Audio Interface) offers a wide set of audio protocols
> -as I2S standards, LSB or MSB-justified, PCM/DSP, TDM, and AC'97.
> -The SAI contains two independent audio sub-blocks. Each sub-block has
> -its own clock generator and I/O lines controller.
> -
> -Required properties:
> -  - compatible: Should be "st,stm32f4-sai" or "st,stm32h7-sai"
> -  - reg: Base address and size of SAI common register set.
> -  - clocks: Must contain phandle and clock specifier pairs for each entry
> -	in clock-names.
> -  - clock-names: Must contain "pclk" "x8k" and "x11k"
> -	"pclk": Clock which feeds the peripheral bus interface.
> -	        Mandatory for "st,stm32h7-sai" compatible.
> -	        Not used for "st,stm32f4-sai" compatible.
> -	"x8k": SAI parent clock for sampling rates multiple of 8kHz.
> -	"x11k": SAI parent clock for sampling rates multiple of 11.025kHz.
> -  - interrupts: cpu DAI interrupt line shared by SAI sub-blocks
> -
> -Optional properties:
> -  - resets: Reference to a reset controller asserting the SAI
> -
> -SAI subnodes:
> -Two subnodes corresponding to SAI sub-block instances A et B can be defined.
> -Subnode can be omitted for unsused sub-block.
> -
> -SAI subnodes required properties:
> -  - compatible: Should be "st,stm32-sai-sub-a" or "st,stm32-sai-sub-b"
> -	for SAI sub-block A or B respectively.
> -  - reg: Base address and size of SAI sub-block register set.
> -  - clocks: Must contain one phandle and clock specifier pair
> -	for sai_ck which feeds the internal clock generator.
> -	If the SAI shares a master clock, with another SAI set as MCLK
> -	clock provider, SAI provider phandle must be specified here.
> -  - clock-names: Must contain "sai_ck".
> -	Must also contain "MCLK", if SAI shares a master clock,
> -	with a SAI set as MCLK clock provider.
> -  - dmas: see Documentation/devicetree/bindings/dma/stm32-dma.txt
> -  - dma-names: identifier string for each DMA request line
> -	"tx": if sai sub-block is configured as playback DAI
> -	"rx": if sai sub-block is configured as capture DAI
> -  - pinctrl-names: should contain only value "default"
> -  - pinctrl-0: see Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> -
> -SAI subnodes Optional properties:
> -  - st,sync: specify synchronization mode.
> -	By default SAI sub-block is in asynchronous mode.
> -	This property sets SAI sub-block as slave of another SAI sub-block.
> -	Must contain the phandle and index of the sai sub-block providing
> -	the synchronization.
> -  - st,iec60958: support S/PDIF IEC6958 protocol for playback
> -	IEC60958 protocol is not available for capture.
> -	By default, custom protocol is assumed, meaning that protocol is
> -	configured according to protocol defined in related DAI link node,
> -	such as i2s, left justified, right justified, dsp and pdm protocols.
> -	Note: ac97 protocol is not supported by SAI driver
> -   - #clock-cells: should be 0. This property must be present if the SAI device
> -	is a master clock provider, according to clocks bindings, described in
> -	Documentation/devicetree/bindings/clock/clock-bindings.txt.
> -
> -The device node should contain one 'port' child node with one child 'endpoint'
> -node, according to the bindings defined in Documentation/devicetree/bindings/
> -graph.txt.
> -
> -Example:
> -sound_card {
> -	compatible = "audio-graph-card";
> -	dais = <&sai1b_port>;
> -};
> -
> -sai1: sai1@40015800 {
> -	compatible = "st,stm32h7-sai";
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	ranges = <0 0x40015800 0x400>;
> -	reg = <0x40015800 0x4>;
> -	clocks = <&rcc SAI1_CK>, <&rcc PLL1_Q>, <&rcc PLL2_P>;
> -	clock-names = "pclk", "x8k", "x11k";
> -	interrupts = <87>;
> -
> -	sai1a: audio-controller@40015804 {
> -		compatible = "st,stm32-sai-sub-a";
> -		reg = <0x4 0x1C>;
> -		clocks = <&rcc SAI1_CK>;
> -		clock-names = "sai_ck";
> -		dmas = <&dmamux1 1 87 0x400 0x0>;
> -		dma-names = "tx";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&pinctrl_sai1a>;
> -
> -		sai1b_port: port {
> -			cpu_endpoint: endpoint {
> -				remote-endpoint = <&codec_endpoint>;
> -				format = "i2s";
> -			};
> -		};
> -	};
> -};
> -
> -audio-codec {
> -	codec_port: port {
> -		codec_endpoint: endpoint {
> -			remote-endpoint = <&cpu_endpoint>;
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> new file mode 100644
> index 000000000000..51dd2b3bdeb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> @@ -0,0 +1,191 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/st,stm32-sai.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Serial Audio Interface (SAI)
> +
> +maintainers:
> +  - Olivier Moysan <olivier.moysan@st.com>
> +
> +description:
> +  The SAI interface (Serial Audio Interface) offers a wide set of audio
> +  protocols as I2S standards, LSB or MSB-justified, PCM/DSP, TDM, and AC'97.
> +  The SAI contains two independent audio sub-blocks. Each sub-block has
> +  its own clock generator and I/O lines controller.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32f4-sai
> +      - st,stm32h7-sai
> +
> +  reg:
> +    items:
> +      - description: Base address and size of SAI common register set.
> +      - description: Base address and size of SAI identification register set.
> +    minItems: 1
> +    maxItems: 2
> +
> +  ranges:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: pclk feeds the peripheral bus interface.
> +      - description: x8k, SAI parent clock for sampling rates multiple of 8kHz.
> +      - description: x11k, SAI parent clock for sampling rates multiple of 11.025kHz.
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: x8k
> +      - const: x11k
> +
> +required:
> +  - compatible
> +  - reg
> +  - ranges
> +  - "#address-cells"
> +  - "#size-cells"
> +  - clocks
> +  - clock-names
> +
> +patternProperties:
> +  "^audio-controller@[0-9a-f]+$":
> +    type: object
> +    description:
> +      Two subnodes corresponding to SAI sub-block instances A et B
> +      can be defined. Subnode can be omitted for unsused sub-block.
> +
> +    properties:
> +      compatible:
> +        description: Compatible for SAI sub-block A or B.
> +        pattern: "st,stm32-sai-sub-[ab]"
> +
> +      "#sound-dai-cells":
> +        const: 0
> +
> +      reg:
> +        maxItems: 1
> +
> +      clocks:
> +        items:
> +          - description: sai_ck clock feeding the internal clock generator.
> +          - description: MCLK clock from a SAI set as master clock provider.
> +        minItems: 1
> +        maxItems: 2
> +
> +      clock-names:
> +        items:
> +          - const: sai_ck
> +          - const: MCLK
> +        minItems: 1
> +        maxItems: 2
> +
> +      dmas:
> +        maxItems: 1
> +
> +      dma-names:
> +        description: |
> +          rx: SAI sub-block is configured as a capture DAI.
> +          tx: SAI sub-block is configured as a playback DAI.
> +        enum: [ rx, tx ]
> +
> +      st,sync:
> +        description:
> +          Configure the SAI sub-block as slave of another SAI sub-block.
> +          By default SAI sub-block is in asynchronous mode.
> +          Must contain the phandle and index of the SAI sub-block providing
> +          the synchronization.
> +        allOf:
> +          - $ref: /schemas/types.yaml#definitions/phandle-array
> +          - maxItems: 1
> +
> +      st,iec60958:
> +        description:
> +          If set, support S/PDIF IEC6958 protocol for playback.
> +          IEC60958 protocol is not available for capture.
> +          By default, custom protocol is assumed, meaning that protocol is
> +          configured according to protocol defined in related DAI link node,
> +          such as i2s, left justified, right justified, dsp and pdm protocols.
> +        allOf:
> +          - $ref: /schemas/types.yaml#definitions/flag
> +
> +      "#clock-cells":
> +        description: Configure the SAI device as master clock provider.
> +        const: 0
> +
> +    required:
> +      - compatible
> +      - "#sound-dai-cells"
> +      - reg
> +      - clocks
> +      - clock-names
> +      - dmas
> +      - dma-names
> +
> +    additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32f4-sai
> +
> +  - then:

The '-' makes this 2 different schema.

> +      properties:
> +        clocks:
> +          items:
> +            - description: x8k, SAI parent clock for sampling rates multiple of 8kHz.
> +            - description: x11k, SAI parent clock for sampling rates multiple of 11.025kHz.        
> +
> +        clock-names:
> +          items:
> +            - const: x8k
> +            - const: x11k

It is impossible for the first definition and this one to both be true. 
You'll have to put the first definition in an 'else' clause here. 

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    sai1: sai@4400a000 {
> +      compatible = "st,stm32h7-sai";
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges = <0 0x4400a000 0x400>;
> +      reg = <0x4400a000 0x4>, <0x4400a3f0 0x10>;
> +      interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&rcc SAI1>, <&rcc PLL1_Q>, <&rcc PLL2_P>;
> +      clock-names = "pclk", "x8k", "x11k";
> +      resets = <&rcc SAI1_R>;
> +
> +      sai1a: audio-controller@4400a004 {
> +        compatible = "st,stm32-sai-sub-a";
> +        #sound-dai-cells = <0>;
> +        reg = <0x4 0x1c>;
> +        clocks = <&rcc SAI1_K>;
> +        clock-names = "sai_ck";
> +        dmas = <&dmamux1 87 0x400 0x01>;
> +        dma-names = "tx";
> +      };
> +    };
> +
> +...
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
