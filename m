Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB37B121C28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 22:50:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6g4kxmMamAE9JLmPRaYVKdq4oqxAbUHYirMWYyfhhFs=; b=nje4p/26LHz3dD
	xdGDAm+yVpkyYBerhgUT7Pa53CMPJjV8EfNAlie51Ypq9mbU7nt5gxbSAPnsPXDDDutCAtlu5/RuO
	h2gnCiwxS3sZuNrjccXm73EQ2uUa92oqyPGTJmBrcf2ws3lO85KgCf2bwyvywrpMDOkn7wz+h0cPN
	KRx8W0141THDFXDiOVk9eMdeQp2uVOxncA6uUfxJBuGF2xVYpOKlAQROKBUhqC9zTngEmAwdaP9cB
	iW4Mw045hoDFNcy070XhIO63KwSjd5hIj0p9hupxDDbxj2vhtYunXxf0a0Osh05OQudKpHGrGfWWJ
	G94e59I6WTxuLLoZnsvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyFr-0003ht-Mb; Mon, 16 Dec 2019 21:50:20 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyFX-0003hW-Qc
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 21:49:57 +0000
Received: by mail-ot1-f65.google.com with SMTP id i4so10932586otr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 13:49:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HptzT5nDCrwY5+Ndy5nDuVXNd62G0fSk6plJscs64+s=;
 b=nkL9Pb2EWpP2h0KTNRn1zqbk+C1+YYZNLTzZphyfAP2PNNf3KRUu97ce3f1cfqtmAK
 +CDn9Pr4fVtTcr10hZ8uRPkpscy+hYUHINhHdAHSrG87L56blqslCmw8ZtYfOqPZv11x
 RYjETbGJ+1enVrCLS8sMmOg5bAAF8ALeQLxMla5QszWv9Qq2jkiO/6wyr7nz5lD+vQCg
 Hs1bYvFu+izlbBDLldkY8Lju0j0T3f1kAmN2QoZmAPAvRci2G5Mc+8UHCchrXCUDU52R
 7/lRfN0LkyfSU0frRVF8v+cpTAzDp7Kqc76vwr4IxOtu9GIBR+8iaedmB2fhaDpPuZBS
 cnQQ==
X-Gm-Message-State: APjAAAVLU0dhGLmWn7AsRceKm4qqrDmU3Zwksue7k7qCxljnvcJ20uKd
 DbLfplDr7ydCQ53V8makFQ==
X-Google-Smtp-Source: APXvYqxgkaB403WtaFAWNwC6m5B7AcOnZaowDtuEndM91PV4Kl26ED2Pp1qFpLftHvbaAM9KlR57Hw==
X-Received: by 2002:a05:6830:14d3:: with SMTP id
 t19mr35544056otq.278.1576532992820; 
 Mon, 16 Dec 2019 13:49:52 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q22sm7146652otm.2.2019.12.16.13.49.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 13:49:51 -0800 (PST)
Date: Mon, 16 Dec 2019 15:49:51 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: spi: Convert stm32 spi bindings to
 json-schema
Message-ID: <20191216214951.GA9328@bogus>
References: <20191204153233.791-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204153233.791-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_134955_864259_2B39BC4F 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Amelie Delaunay <amelie.delaunay@st.com>, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, broonie@kernel.org,
 Erwan Leray <erwan.leray@st.com>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 04:32:33PM +0100, Benjamin Gaignard wrote:
> Convert the STM32 spi binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> CC: Erwan Leray <erwan.leray@st.com>
> CC: Fabrice Gasnier <fabrice.gasnier@st.com>
> CC: Amelie Delaunay <amelie.delaunay@st.com>
> ---
>  .../devicetree/bindings/spi/spi-stm32.txt          |  62 ------------
>  .../devicetree/bindings/spi/st,stm32-spi.yaml      | 105 +++++++++++++++++++++
>  2 files changed, 105 insertions(+), 62 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-stm32.txt
>  create mode 100644 Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-stm32.txt b/Documentation/devicetree/bindings/spi/spi-stm32.txt
> deleted file mode 100644
> index d82755c63eaf..000000000000
> --- a/Documentation/devicetree/bindings/spi/spi-stm32.txt
> +++ /dev/null
> @@ -1,62 +0,0 @@
> -STMicroelectronics STM32 SPI Controller
> -
> -The STM32 SPI controller is used to communicate with external devices using
> -the Serial Peripheral Interface. It supports full-duplex, half-duplex and
> -simplex synchronous serial communication with external devices. It supports
> -from 4 to 32-bit data size. Although it can be configured as master or slave,
> -only master is supported by the driver.
> -
> -Required properties:
> -- compatible: Should be one of:
> -  "st,stm32h7-spi"
> -  "st,stm32f4-spi"
> -- reg: Offset and length of the device's register set.
> -- interrupts: Must contain the interrupt id.
> -- clocks: Must contain an entry for spiclk (which feeds the internal clock
> -	  generator).
> -- #address-cells:  Number of cells required to define a chip select address.
> -- #size-cells: Should be zero.
> -
> -Optional properties:
> -- resets: Must contain the phandle to the reset controller.
> -- A pinctrl state named "default" may be defined to set pins in mode of
> -  operation for SPI transfer.
> -- dmas: DMA specifiers for tx and rx dma. DMA fifo mode must be used. See the
> -  STM32 DMA bindings, Documentation/devicetree/bindings/dma/stm32-dma.txt.
> -- dma-names: DMA request names should include "tx" and "rx" if present.
> -- cs-gpios: list of GPIO chip selects. See the SPI bus bindings,
> -  Documentation/devicetree/bindings/spi/spi-bus.txt
> -
> -
> -Child nodes represent devices on the SPI bus
> -  See ../spi/spi-bus.txt
> -
> -Optional properties:
> -- st,spi-midi-ns: Only for STM32H7, (Master Inter-Data Idleness) minimum time
> -		  delay in nanoseconds inserted between two consecutive data
> -		  frames.
> -
> -
> -Example:
> -	spi2: spi@40003800 {
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -		compatible = "st,stm32h7-spi";
> -		reg = <0x40003800 0x400>;
> -		interrupts = <36>;
> -		clocks = <&rcc SPI2_CK>;
> -		resets = <&rcc 1166>;
> -		dmas = <&dmamux1 0 39 0x400 0x01>,
> -		       <&dmamux1 1 40 0x400 0x01>;
> -		dma-names = "rx", "tx";
> -		pinctrl-0 = <&spi2_pins_b>;
> -		pinctrl-names = "default";
> -		cs-gpios = <&gpioa 11 0>;
> -
> -		aardvark@0 {
> -			compatible = "totalphase,aardvark";
> -			reg = <0>;
> -			spi-max-frequency = <4000000>;
> -			st,spi-midi-ns = <4000>;
> -		};
> -	};
> diff --git a/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
> new file mode 100644
> index 000000000000..57ef3a0f57e0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/st,stm32-spi.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/st,stm32-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 SPI Controller bindings
> +
> +description: |
> +  The STM32 SPI controller is used to communicate with external devices using
> +  the Serial Peripheral Interface. It supports full-duplex, half-duplex and
> +  simplex synchronous serial communication with external devices. It supports
> +  from 4 to 32-bit data size.
> +
> +maintainers:
> +  - Erwan Leray <erwan.leray@st.com>
> +  - Fabrice Gasnier <fabrice.gasnier@st.com>
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +  - if:
> +      properties:
> +        comptatible:
> +          constains:

One of the features of json-schema is ignoring unknown keywords like 
'constains'. I've tried to mitigate this with the meta-schema, but seems 
this one didn't get caught. But checkpatch.pl caught it.


> +            st,stm32f4-spi
> +    then:
> +      properties:
> +        st,spi-midi-ns: false
> +
> +properties:
> +  compatible:
> +    enum:
> +      - st,stm32f4-spi
> +      - st,stm32h7-spi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  dmas:
> +    description: |
> +      DMA specifiers for tx and rx dma. DMA fifo mode must be used. See
> +      the STM32 DMA bindings Documentation/devicetree/bindings/dma/stm32-dma.txt.
> +    items:
> +      - description: rx DMA channel
> +      - description: tx DMA channel
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +patternProperties:
> +  "^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-f]+$":
> +    type: object
> +    # SPI slave nodes must be children of the SPI master node and can
> +    # contain the following properties.
> +    properties:
> +      st,spi-midi-ns:
> +        $ref: /schemas/types.yaml#/definitions/uint32

Don't need a type since it has a standard unit. I'd assume there's 
at least some max less than 2^32 you could define.

> +        description: |
> +          Only for STM32H7, (Master Inter-Data Idleness) minimum time
> +          delay in nanoseconds inserted between two consecutive data frames.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    spi@4000b000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      compatible = "st,stm32h7-spi";
> +      reg = <0x4000b000 0x400>;
> +      interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&rcc SPI2_K>;
> +      resets = <&rcc SPI2_R>;
> +      dmas = <&dmamux1 0 39 0x400 0x05>,
> +             <&dmamux1 1 40 0x400 0x05>;
> +      dma-names = "rx", "tx";
> +      cs-gpios = <&gpioa 11 0>;
> +
> +      aardvark@0 {
> +        compatible = "totalphase,aardvark";
> +        reg = <0>;
> +        spi-max-frequency = <4000000>;
> +        st,spi-midi-ns = <4000>;
> +      };
> +    };
> +
> +...
> -- 
> 2.15.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
