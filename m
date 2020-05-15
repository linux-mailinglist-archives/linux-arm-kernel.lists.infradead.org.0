Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E201D5537
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 17:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IH+EAvSnH3FQsnDnOtT/lrRyflyuvuaGhf8nH5ULuII=; b=lwtJFn12scfHY/
	pwnzc0dD+Y3mo/fYwDe2zwRq1JmL7ksscAs4r9gpx0Bv7HE+OgcIFP2BkjLJglJLm3TzCCfEergpC
	L8O6ei7P1PeqNSSJ0pwd3RyFHuV3+TCr4Y1kV6NtSUPjASB121BHSIJRN8slG9Y/6oLkuZEkYMFBH
	ksUWrtLyk3f8Rs2wZQxjDxkWIXBJrWqvmesJYzHodvpodYSt5avmATL0PvnJUnpLFt6eTHrrnmgx4
	X/KlYheROTSV9Exart682w6drDJURjeemUDJjF56dh56UxXhgXhA8QAIjuVbO0WXS4XyVcItSraz4
	G3vORthuWQD+CeqtUM2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZcgC-0004X2-6R; Fri, 15 May 2020 15:55:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcfu-00033Z-3h; Fri, 15 May 2020 15:55:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B4722F;
 Fri, 15 May 2020 08:55:01 -0700 (PDT)
Received: from [192.168.2.22] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C81AE3F305;
 Fri, 15 May 2020 08:54:59 -0700 (PDT)
Subject: Re: [PATCH v1 5/9] dt-bindings: dmaengine: convert Actions Semi Owl
 SoCs bindings to yaml
To: Amit Singh Tomar <amittomer25@gmail.com>, afaerber@suse.de,
 manivannan.sadhasivam@linaro.org, robh+dt@kernel.org
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-6-git-send-email-amittomer25@gmail.com>
From: =?UTF-8?Q?Andr=c3=a9_Przywara?= <andre.przywara@arm.com>
Autocrypt: addr=andre.przywara@arm.com; prefer-encrypt=mutual; keydata=
 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
 i4aIXCH3Wv6K
Organization: ARM Ltd.
Message-ID: <afc0d7f3-d763-b936-988c-d802b86836bc@arm.com>
Date: Fri, 15 May 2020 16:54:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589472657-3930-6-git-send-email-amittomer25@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_085502_262066_4306C48C 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-actions@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, cristian.ciocaltea@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14/05/2020 17:10, Amit Singh Tomar wrote:

Hi,

> Converts the device tree bindings for the Actions Semi Owl SoCs DMA
> Controller over to YAML schemas.
> 
> It also adds new compatible string "actions,s700-dma" to match
> the driver.
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
> New patch, was not there in RFC.
> ---
>  Documentation/devicetree/bindings/dma/owl-dma.txt  | 47 ------------
>  Documentation/devicetree/bindings/dma/owl-dma.yaml | 84 ++++++++++++++++++++++
>  2 files changed, 84 insertions(+), 47 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/dma/owl-dma.txt
>  create mode 100644 Documentation/devicetree/bindings/dma/owl-dma.yaml
> 
> diff --git a/Documentation/devicetree/bindings/dma/owl-dma.txt b/Documentation/devicetree/bindings/dma/owl-dma.txt
> deleted file mode 100644
> index 03e9bb12b75f..000000000000
> --- a/Documentation/devicetree/bindings/dma/owl-dma.txt
> +++ /dev/null
> @@ -1,47 +0,0 @@
> -* Actions Semi Owl SoCs DMA controller
> -
> -This binding follows the generic DMA bindings defined in dma.txt.
> -
> -Required properties:
> -- compatible: Should be "actions,s900-dma".
> -- reg: Should contain DMA registers location and length.
> -- interrupts: Should contain 4 interrupts shared by all channel.
> -- #dma-cells: Must be <1>. Used to represent the number of integer
> -              cells in the dmas property of client device.
> -- dma-channels: Physical channels supported.
> -- dma-requests: Number of DMA request signals supported by the controller.
> -                Refer to Documentation/devicetree/bindings/dma/dma.txt
> -- clocks: Phandle and Specifier of the clock feeding the DMA controller.
> -
> -Example:
> -
> -Controller:
> -                dma: dma-controller@e0260000 {
> -                        compatible = "actions,s900-dma";
> -                        reg = <0x0 0xe0260000 0x0 0x1000>;
> -                        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> -                                     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
> -                                     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
> -                                     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
> -                        #dma-cells = <1>;
> -                        dma-channels = <12>;
> -                        dma-requests = <46>;
> -                        clocks = <&clock CLK_DMAC>;
> -                };
> -
> -Client:
> -
> -DMA clients connected to the Actions Semi Owl SoCs DMA controller must
> -use the format described in the dma.txt file, using a two-cell specifier
> -for each channel.
> -
> -The two cells in order are:
> -1. A phandle pointing to the DMA controller.
> -2. The channel id.
> -
> -uart5: serial@e012a000 {
> -        ...
> -        dma-names = "tx", "rx";
> -        dmas = <&dma 26>, <&dma 27>;
> -        ...
> -};
> diff --git a/Documentation/devicetree/bindings/dma/owl-dma.yaml b/Documentation/devicetree/bindings/dma/owl-dma.yaml
> new file mode 100644
> index 000000000000..12e68c0ece67
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/owl-dma.yaml
> @@ -0,0 +1,84 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/owl-dma.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Actions Semi Owl SoCs DMA controller
> +
> +description: |
> +  The OWL DMA is a general-purpose direct memory access controller capable of
> +  supporting 10 and 12 independent DMA channels for S700 and S900 SoCs
> +  respectively.

From here on the description is pretty much how DMA controller
references work in general, so I don't see the point of including this
in the description here.

> +  DMA clients connected to the Actions Semi Owl SoCs DMA controller must
> +  use the format described in the owl-dma.yaml file, using a two-cell specifier
> +  for each channel.
> +
> +  The two cells in order are:
> +  1. A phandle pointing to the DMA controller.
> +  2. The channel id.
> +
> +  uart5: serial@e012a000 {
> +    ...
> +    dma-names = "tx", "rx";
> +    dmas = <&dma 26>, <&dma 27>;
> +    ...
> +  };
> +
> +maintainers:
> +  - Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> +
> +allOf:
> +  - $ref: "dma-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    enum:
> +      - actions,s900-dma
> +      - actions,s700-dma
> +
> +  reg:
> +    maxItems: 1

Could you replace those "maxItems: 1" here and below with:
  - description: ...., copying in the explanation from the .txt binding?
That should serve the same purpose as "maxItems: 1", but is more
descriptive.

> +
> +  interrupts:
> +    maxItems: 4

Please mention that the controller supports 4 interrupts, which are
freely assignable to the interrupt channels.
(The kernel chose to use only one, but that's nothing the binding is
concerned about).

> +
> +  "#dma-cells":
> +    const: 1
> +
> +  dma-channels:
> +    maxItems: 1
> +
> +  dma-requests:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#dma-cells"
> +  - dma-channels
> +  - dma-requests
> +  - clocks
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/actions,s700-cmu.h>

I would drop this line and replace CLK_DMAC with some number below, to
keep this *example* as independent as possible.

Cheers,
Andre

> +    dma: dma-controller@e0260000 {
> +        compatible = "actions,s900-dma";
> +        reg = <0x0 0xe0260000 0x0 0x1000>;
> +        interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 59 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
> +        #dma-cells = <1>;
> +        dma-channels = <12>;
> +        dma-requests = <46>;
> +        clocks = <&clock CLK_DMAC>;
> +    };
> +
> +...
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
