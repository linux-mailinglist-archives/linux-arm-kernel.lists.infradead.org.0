Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1C41535EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 18:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBLHe9hOpi6Zxiz7SjjVXCZ3sPTnH2ARf0PiLU1Zm6k=; b=uVzOL20hlMimh2
	qvK+FRgOPj2m7Zs+yXOzO7kIDuGgYeZDvvmogzPRVkWhkcw0E/ZVemtaCAtNMuUmyFQm7f1tAouvY
	2E+DeKSb+TV31s3KV3TL3qPuHzeZ6okMNhpJT00qcXAnfFK5VrELPXcLiBhCIWVQWuDI1Ea+8m3U2
	gfYmvGueFfdVH5ZuwYlXpPF6fXTivAR+3XdBdDE+X5Bo21qCMoXP0SELYpuxisRlxtWg76aZXHcoJ
	/2nTUwEdTGEHGKHZu7b6nLYXXRFYXswkfTzRiVrLvqXWwEN5GC6Gs1XAlb/I9qAd8DrSR5Zew4JaB
	6YhO0FVGG13tGvcXrbaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izOAM-0001Cy-RJ; Wed, 05 Feb 2020 17:08:42 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izOAG-0001CR-58
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 17:08:37 +0000
Received: by mail-wr1-f67.google.com with SMTP id u6so3703671wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 09:08:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wVyS98mSn4UeFr2rUO9PasOfBrlg4kFydqotmUAfD/w=;
 b=iPnYfLQuA6C7s7O5Dm/oGiv6JFK6gXTpIwnDjfmiDziCjlSQ3ld/iDCsw67w0m0i7H
 VJsSRkB3I6Ns71dFFHR4tFFnMn8Mgjx8DHuEQ5iRQO5yZ37aYz9/NPosRH+qGrlUQYYb
 0FmO7NzkTyDm5jqjRSHCLgK2ebLA+iO5DVTvNvXVoS0x13KcxYO/3DAU4toNC3Lz6YZw
 lVPyKdgtitgx5ID3kqy6a7Fik2mYhw0O7+uJjmrJ/2DDfGXPCj2BFYrrF4A14ZgfhBDp
 t7wSsNiugkY5RWkZ+ku6Q/4P6LSs+FtDJ5wvF6SF4KOxgTclaggw3F0UwHokPZJLdF87
 ZsRQ==
X-Gm-Message-State: APjAAAWl7ppLJmYI9lSyoSWsJ39Y/81pIeTj/A6lxzCc63BzC5bdk4v8
 YeRaVa6eF6rG0I+2qAN+FA==
X-Google-Smtp-Source: APXvYqwaQiQMAa8h+Izmp9nvuziS6m0uiZRyCGM1+IZ+qyjy4io1DJ/1o+lCJNm/dF9gYXsu8JczlA==
X-Received: by 2002:adf:ecd0:: with SMTP id s16mr28949693wro.325.1580922514565; 
 Wed, 05 Feb 2020 09:08:34 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id q1sm561081wrw.5.2020.02.05.09.08.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 09:08:33 -0800 (PST)
Received: (nullmailer pid 27473 invoked by uid 1000);
 Wed, 05 Feb 2020 17:08:32 -0000
Date: Wed, 5 Feb 2020 17:08:32 +0000
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] ASoC: dt-bindings: stm32: convert i2s to json-schema
Message-ID: <20200205170832.GA19383@bogus>
References: <20200127125420.29827-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127125420.29827-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_090836_194933_F1941984 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 01:54:20PM +0100, Olivier Moysan wrote:
> Convert the STM32 I2S bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> The items for dma-names and clock-names properties are all
> mandatory, but may be provided in any order.
> The syntax used for these properties allows to avoid order constraint.

Other than having .dts files with differing order, I don't see any 
reason we need to allow any order here. So decide which order is most 
prevalent and use that, and then fix the other dts files.

> ---
>  .../bindings/sound/st,stm32-i2s.txt           | 62 -------------
>  .../bindings/sound/st,stm32-i2s.yaml          | 91 +++++++++++++++++++
>  2 files changed, 91 insertions(+), 62 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-i2s.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-i2s.txt b/Documentation/devicetree/bindings/sound/st,stm32-i2s.txt
> deleted file mode 100644
> index cbf24bcd1b8d..000000000000
> --- a/Documentation/devicetree/bindings/sound/st,stm32-i2s.txt
> +++ /dev/null
> @@ -1,62 +0,0 @@
> -STMicroelectronics STM32 SPI/I2S Controller
> -
> -The SPI/I2S block supports I2S/PCM protocols when configured on I2S mode.
> -Only some SPI instances support I2S.
> -
> -Required properties:
> -  - compatible: Must be "st,stm32h7-i2s"
> -  - reg: Offset and length of the device's register set.
> -  - interrupts: Must contain the interrupt line id.
> -  - clocks: Must contain phandle and clock specifier pairs for each entry
> -	in clock-names.
> -  - clock-names: Must contain "i2sclk", "pclk", "x8k" and "x11k".
> -	"i2sclk": clock which feeds the internal clock generator
> -	"pclk": clock which feeds the peripheral bus interface
> -	"x8k": I2S parent clock for sampling rates multiple of 8kHz.
> -	"x11k": I2S parent clock for sampling rates multiple of 11.025kHz.
> -  - dmas: DMA specifiers for tx and rx dma.
> -    See Documentation/devicetree/bindings/dma/stm32-dma.txt.
> -  - dma-names: Identifier for each DMA request line. Must be "tx" and "rx".
> -  - pinctrl-names: should contain only value "default"
> -  - pinctrl-0: see Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml
> -
> -Optional properties:
> -  - resets: Reference to a reset controller asserting the reset controller
> -
> -The device node should contain one 'port' child node with one child 'endpoint'
> -node, according to the bindings defined in Documentation/devicetree/bindings/
> -graph.txt.
> -
> -Example:
> -sound_card {
> -	compatible = "audio-graph-card";
> -	dais = <&i2s2_port>;
> -};
> -
> -i2s2: audio-controller@40003800 {
> -	compatible = "st,stm32h7-i2s";
> -	reg = <0x40003800 0x400>;
> -	interrupts = <36>;
> -	clocks = <&rcc PCLK1>, <&rcc SPI2_CK>, <&rcc PLL1_Q>, <&rcc PLL2_P>;
> -	clock-names = "pclk", "i2sclk",  "x8k", "x11k";
> -	dmas = <&dmamux2 2 39 0x400 0x1>,
> -           <&dmamux2 3 40 0x400 0x1>;
> -	dma-names = "rx", "tx";
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&pinctrl_i2s2>;
> -
> -	i2s2_port: port@0 {
> -		cpu_endpoint: endpoint {
> -			remote-endpoint = <&codec_endpoint>;
> -			format = "i2s";
> -		};
> -	};
> -};
> -
> -audio-codec {
> -	codec_port: port@0 {
> -		codec_endpoint: endpoint {
> -			remote-endpoint = <&cpu_endpoint>;
> -		};
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml b/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
> new file mode 100644
> index 000000000000..cdfb375c7a14
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
> @@ -0,0 +1,91 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/st,stm32-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 SPI/I2S Controller
> +
> +maintainers:
> +  - Olivier Moysan <olivier.moysan@st.com>
> +
> +description:
> +  The SPI/I2S block supports I2S/PCM protocols when configured on I2S mode.
> +  Only some SPI instances support I2S.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32h7-i2s
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: clock feeding the peripheral bus interface.
> +      - description: clock feeding the internal clock generator.
> +      - description: I2S parent clock for sampling rates multiple of 8kHz.
> +      - description: I2S parent clock for sampling rates multiple of 11.025kHz.
> +
> +  clock-names:
> +    items:
> +      - enum: [ pclk, i2sclk, x8k, x11k ]
> +      - enum: [ pclk, i2sclk, x8k, x11k ]
> +      - enum: [ pclk, i2sclk, x8k, x11k ]
> +      - enum: [ pclk, i2sclk, x8k, x11k ]
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/string-array

*-names already has a type, so this is not needed.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dmas:
> +    items:
> +      - description: audio capture DMA.
> +      - description: audio playback DMA.
> +
> +  dma-names:
> +    items:
> +      - enum: [ rx, tx ]
> +      - enum: [ rx, tx ]
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/string-array
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - "#sound-dai-cells"
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - dmas
> +  - dma-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    i2s2: audio-controller@4000b000 {
> +        compatible = "st,stm32h7-i2s";
> +        #sound-dai-cells = <0>;
> +        reg = <0x4000b000 0x400>;
> +        clocks = <&rcc SPI2>, <&rcc SPI2_K>, <&rcc PLL3_Q>, <&rcc PLL3_R>;
> +        clock-names = "pclk", "i2sclk", "x8k", "x11k";
> +        interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +        dmas = <&dmamux1 39 0x400 0x01>,
> +               <&dmamux1 40 0x400 0x01>;
> +        dma-names = "rx", "tx";
> +        pinctrl-names = "default";
> +        pinctrl-0 = <&i2s2_pins_a>;
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
