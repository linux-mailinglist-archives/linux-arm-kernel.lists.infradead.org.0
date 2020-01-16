Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2E913FCD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 00:18:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a4Vpab7Au1EkCX0rN8/2YAFNVTwRatl0TdwtSkw/Zk=; b=Jt6yEji69qsc6n
	So10dljAVwe/NWz279omCD9XUO9IkJXPw9aiQi9RLL9kXjWescbfD/5UK46+TG6NqMbpXHm3tLn44
	w0W6DJsqr32e7ELCj0QMbfP5RcJ2BjpIW/c2lzfvAF1x0NuE4z8bG99lbT8iG0ZGnJeoPVyuzDLqy
	RoifOh2pR1c+sau2YXZPqQAsez3qFlAjixbLubcwJ0XHxdLyl5MVrhFseXXsMzVZzSQW8440dfY9O
	hHZQUkmVicQjVvfucUn/67CzHgRKRjSxQACMYxrjNdkEqy971CjlcZSmY7YOME1VUJqn8Sn+X0CEU
	dw3KQvM1lelXLtymnEMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isEP4-0004g8-R7; Thu, 16 Jan 2020 23:18:18 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isEOs-0004fK-6G
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 23:18:08 +0000
Received: by mail-oi1-f194.google.com with SMTP id d62so20471326oia.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 15:18:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AxYTHo1xbvVXlE9BL422q+BMWDP33NtgDNx+D8mvMAI=;
 b=c0fWFbVNUllFgFDomjoARAasXULyMtorDuHo7LMjmiI2hhXJBDsdRPeYak69JAUwj0
 oeV6M7Y5nejYc9q9HPT0+2Aa3RS7sID9R0o5LFhitCBQIhMoX0+t0D9/Sy2UkfQVpBYy
 zpgDNFmVnXsNy/4m2NqxxBScRD5z7VkL3pgPGgNuyQVAjXNQBFqYqkGCWH/Jv1oVxxtS
 reyFxtBQbBBT8ru0Vv5gx3BaLqMJvjexxK8p3y9vg34ko6OWK8nw17cONtX+aAWE0t1s
 fSucxC9RluMPiuQVIWvpj0OA4m2Mj0dO5nT4ZLjTwf5VdPPO40a2VJ8HRAizIrDREsYV
 bF6w==
X-Gm-Message-State: APjAAAWNDdTTFjYuXClAth5NTq8Qfk3EPa9MDsgStR/YpAwpARreFE7k
 VI4VOSYsF37Gv/yH5FeGkw==
X-Google-Smtp-Source: APXvYqzZJygX0GSguvTQM81bKzfOop6LBjuapSvKPn1gt2ZgNjWt9VE/fJhIO05KbnfYneSZhP3g+A==
X-Received: by 2002:aca:c386:: with SMTP id t128mr1347117oif.32.1579216683166; 
 Thu, 16 Jan 2020 15:18:03 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e21sm7211797oib.16.2020.01.16.15.18.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 15:18:02 -0800 (PST)
Received: (nullmailer pid 30679 invoked by uid 1000);
 Thu, 16 Jan 2020 23:18:01 -0000
Date: Thu, 16 Jan 2020 17:18:01 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: stm32: convert spdfirx to
 json-schema
Message-ID: <20200116231801.GA18958@bogus>
References: <20200116105244.13485-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116105244.13485-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_151806_233804_EE673C2F 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

On Thu, Jan 16, 2020 at 11:52:44AM +0100, Olivier Moysan wrote:
> Convert the STM32 SPDIFRX bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes in v2:
> - Add "additionalProperties: false"
> - Also change minItems to 2 for dmas property, as both DMAs are required.
> ---
>  .../bindings/sound/st,stm32-spdifrx.txt       | 56 -------------
>  .../bindings/sound/st,stm32-spdifrx.yaml      | 84 +++++++++++++++++++
>  2 files changed, 84 insertions(+), 56 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
> deleted file mode 100644
> index 33826f2459fa..000000000000
> --- a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.txt
> +++ /dev/null
> @@ -1,56 +0,0 @@
> -STMicroelectronics STM32 S/PDIF receiver (SPDIFRX).
> -
> -The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
> -IEC-60958 and IEC-61937.
> -
> -Required properties:
> -  - compatible: should be "st,stm32h7-spdifrx"
> -  - reg: cpu DAI IP base address and size
> -  - clocks: must contain an entry for kclk (used as S/PDIF signal reference)
> -  - clock-names: must contain "kclk"
> -  - interrupts: cpu DAI interrupt line
> -  - dmas: DMA specifiers for audio data DMA and iec control flow DMA
> -    See STM32 DMA bindings, Documentation/devicetree/bindings/dma/stm32-dma.txt
> -  - dma-names: two dmas have to be defined, "rx" and "rx-ctrl"
> -
> -Optional properties:
> -  - resets: Reference to a reset controller asserting the SPDIFRX
> -
> -The device node should contain one 'port' child node with one child 'endpoint'
> -node, according to the bindings defined in Documentation/devicetree/bindings/
> -graph.txt.
> -
> -Example:
> -spdifrx: spdifrx@40004000 {
> -	compatible = "st,stm32h7-spdifrx";
> -	reg = <0x40004000 0x400>;
> -	clocks = <&rcc SPDIFRX_CK>;
> -	clock-names = "kclk";
> -	interrupts = <97>;
> -	dmas = <&dmamux1 2 93 0x400 0x0>,
> -	       <&dmamux1 3 94 0x400 0x0>;
> -	dma-names = "rx", "rx-ctrl";
> -	pinctrl-0 = <&spdifrx_pins>;
> -	pinctrl-names = "default";
> -
> -	spdifrx_port: port {
> -		cpu_endpoint: endpoint {
> -			remote-endpoint = <&codec_endpoint>;
> -		};
> -	};
> -};
> -
> -spdif_in: spdif-in {
> -	compatible = "linux,spdif-dir";
> -
> -	codec_port: port {
> -		codec_endpoint: endpoint {
> -			remote-endpoint = <&cpu_endpoint>;
> -		};
> -	};
> -};
> -
> -soundcard {
> -	compatible = "audio-graph-card";
> -	dais = <&spdifrx_port>;
> -};
> diff --git a/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
> new file mode 100644
> index 000000000000..e19313e7a552
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/st,stm32-spdifrx.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/st,stm32-spdifrx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 S/PDIF receiver (SPDIFRX)
> +
> +maintainers:
> +  - Olivier Moysan <olivier.moysan@st.com>
> +
> +description: |
> +  The SPDIFRX peripheral, is designed to receive an S/PDIF flow compliant with
> +  IEC-60958 and IEC-61937.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32h7-spdifrx
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: kclk
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  dmas:
> +    description: |
> +      Two DMA channel specifiers are requested:
> +      - audio data capture DMA
> +      - IEC status bits capture DMA
> +      See STM32 DMA bindings /bindings/dma/stm32-dma.txt.
> +    minItems: 2
> +    maxItems: 2

dmas:
  items:
    - description: audio data capture DMA
    - description: IEC status bits capture DMA

And minItems/maxItems aren't necessary.

I'd probably just drop 'See STM32 DMA bindings 
/bindings/dma/stm32-dma.txt' too, so we don't have to update this when 
that file is converted to schema.

> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: rx-ctrl
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
> +    spdifrx: spdifrx@40004000 {
> +        compatible = "st,stm32h7-spdifrx";
> +        #sound-dai-cells = <0>;
> +        reg = <0x40004000 0x400>;
> +        clocks = <&rcc SPDIF_K>;
> +        clock-names = "kclk";
> +        interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
> +        dmas = <&dmamux1 2 93 0x400 0x0>,
> +               <&dmamux1 3 94 0x400 0x0>;
> +        dma-names = "rx", "rx-ctrl";
> +        pinctrl-0 = <&spdifrx_pins>;
> +        pinctrl-names = "default";
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
