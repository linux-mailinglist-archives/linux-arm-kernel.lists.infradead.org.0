Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E3A154D80
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:48:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbkFdy3TN4Ti1gOhEtkIfASTmgMvVuYxVURlfSIjRHg=; b=ILMO+otryeUppL
	zHgIMLCo0M1BItVP6LQHKzOOPPRg2b5kv/UzE8jb/XM5Z1KNpnc27UmVwtiwe9SdVlnMUwfcg5yPW
	MAzktFSgb7t+TbSHX+FBalk+ETOT8SC5Pqj8U5ny81z/uOc4HuNpjaawbllcRO6q5RGcMg5UN0oLE
	Qxry1Cj1Y6mpNRHOtioKf4bof3XwVDBE16GQd36Qhyj1Mc4rDX4TxshopZ+3WTz6T8o+oIQhOvlve
	tHExdFviPh+OC09essz0PK/iO0kjr34EoRQJLo2uJQH4lo9Z3PJ+yAua5A2juDcqVWydV3i4UWUk5
	x7EUw3cl8BoQuLzHgU0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo4O-0001Pu-Ru; Thu, 06 Feb 2020 20:48:16 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo2h-0008L0-9g
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:46:33 +0000
Received: by mail-pl1-f196.google.com with SMTP id e8so31039plt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:46:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+JpCejRz9cTdKzvN/s1Lqz/r+3bLOvKPVHP2ixVIjaA=;
 b=aDA/SYX+rcFDXves86enPj1VIST8Rsb/WdGnHJ7t6xt3C7GvYrVW/261iYDDN5FGyo
 DiNYRfBhHgNklxXTJA37FE9ZdxziOhu8YqZQ+dnvF8m8U2e4cHqLWueeFLCiR8LMhvL6
 mMVdQ0lZIcWVuoKDCAoMftXy/V4pe5lqTAdUFAmujvcVascc+7i+2cmB5DQtQ+DIlzaI
 FxvkebZzV9miRVOX2MmmdOXcjBjzo0AtpzQtKm+FaDTmXi5bqjwkodIEdHzq0noUHpVK
 UAeyRuIsrgg8qRn+OHN5H3hBCXD9Md2XNR80TQ4pLcZ+r1EOs4dV/AzZy+23vlc5ZuXp
 exVQ==
X-Gm-Message-State: APjAAAVKRnsN6SxAaRNeI2q9haGYa6tX/4U933Y0garEvc2KausRGaXs
 IDK1XZgmbd4pf/JjpFoQ5A==
X-Google-Smtp-Source: APXvYqwbC73hm+Agme/rCp48d6/0xYRA1eDWiKJsCgthOldvBiGk6RxTKAWpaJjx1M145Mgn2+p7Ag==
X-Received: by 2002:a17:902:504:: with SMTP id 4mr5425237plf.276.1581021989698; 
 Thu, 06 Feb 2020 12:46:29 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id g7sm288861pfq.33.2020.02.06.12.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:46:29 -0800 (PST)
Received: (nullmailer pid 9682 invoked by uid 1000);
 Thu, 06 Feb 2020 18:21:25 -0000
Date: Thu, 6 Feb 2020 18:21:25 +0000
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH] ASoC: dt-bindings: stm32: convert sai to json-schema
Message-ID: <20200206182125.GA23274@bogus>
References: <20200130135040.22575-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130135040.22575-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124631_341040_9F7EE96B 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, mcoquelin.stm32@gmail.com, perex@perex.cz,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 02:50:40PM +0100, Olivier Moysan wrote:
> Convert the STM32 SAI bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>  .../bindings/sound/st,stm32-sai.txt           | 107 ----------
>  .../bindings/sound/st,stm32-sai.yaml          | 193 ++++++++++++++++++
>  2 files changed, 193 insertions(+), 107 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml


> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> new file mode 100644
> index 000000000000..33dca007fc86
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> @@ -0,0 +1,193 @@
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
> +      enum: [ pclk, x8k, x11k ]
> +    minItems: 3
> +    maxItems: 3
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
> +        enum:
> +          - st,stm32-sai-sub-a
> +          - st,stm32-sai-sub-b

pattern: 'st,stm32-sai-sub-[ab]'

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
> +        items:
> +          - description: SAI sub-block is configured as a capture DAI.
> +          - description: SAI sub-block is configured as a playback DAI.
> +        minItems: 1
> +        maxItems: 1

This is defining that dmas has 2 entries, but then limits it to the 1st 
entry only.

> +
> +      dma-names:
> +        items:
> +          - enum: [ rx, tx ]
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

       additionalProperties: false.

> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: st,stm32f4-sai
> +
> +  - then:
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +
> +        clock-names:
> +          items:
> +            enum: [ x8k, x11k ]

Define the order.

> +          minItems: 2
> +          maxItems: 2
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
