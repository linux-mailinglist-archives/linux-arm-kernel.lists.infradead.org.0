Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A3C1E6D75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 23:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuMH3Na5up+sTHNwEuN/eHBUfZULQhd8XbbxrfhtMkA=; b=WHAcWsR/DBEXYB
	jKY/oxDpgpgpf6J6MPRCj8HuVvGRNgEAattfxRBg/iXXgEuzRRyqcy+UAUuvDnpXvwC5UxjHrgRw0
	KTM+tnO80nkyTah3cRYcP8/4THPGzQBSs4wqEZIzxik+irYxbBjpdIfpaAakZFK/2gB/llMeCJgCz
	AyG6dXWLRnVP4m0EMUf6ZNa7ikiLnrB00R0g7aUT6ClVQW0icHQxZmRJAWUVJPhzdGj9kq+yUP0n4
	LMJ0O8GXeOJboKi0M4udvoK0/digILSEH02UpQ4jqPnaOFJbQ7fvsIsOOS4fmcsiFayQN9mjIFl6r
	n0//A9JVj+wL1i2AcvxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jePu6-0003px-H3; Thu, 28 May 2020 21:17:30 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jePtr-0003pL-Nc; Thu, 28 May 2020 21:17:17 +0000
Received: by mail-io1-f68.google.com with SMTP id d5so25893ios.9;
 Thu, 28 May 2020 14:17:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+TqS7m/JgHBOxozCv+TMWYsXzg4EAp9FGtr063H8zmQ=;
 b=FmLy8uT+0Ip82u9dFmZ2MR8H3J5pIsW9fDWDdoQNt3fQP7SPOsIkfn6m09vt4SK/mJ
 OsGdb6vP6Nq4jDYyCCH1/b6XKn1FGKDtKy3OhL1sd+fPvOOplrcy7qUUEmnoY5PcoyLX
 /fZtT2D7hBoN3BnZW69bPc89CbDnK9euPUUVNw/xmphpScAEZkDBhL0Tg4jO+2qTs7nb
 2Ktahd92aA49UiPulNOd54S6Up81iLMsu0zGVo9EJoF9cPi9WVnTeDUZP1jf/yzBu9oq
 GMB5z6DyzyVaumuBg5EJ9r5TrshIWaXp8zDIfs1y9SIlny2rzcu2CdwzWzZB03MQwVrS
 +yNQ==
X-Gm-Message-State: AOAM532Vs+Jqeq8HFyaxBg8hPv0qotsIgCA2g8VZ2ZSX1KC1KBMQm2gY
 hhJzQU8cA5fGtGupnDTiEw==
X-Google-Smtp-Source: ABdhPJzARk90ztvxx/gdvNEIrY2JRoL+qqPXKEfDIuVIoN0XaThXMyPQd8haBzHcKWW6L/tkwe7jfw==
X-Received: by 2002:a6b:cac5:: with SMTP id a188mr4013104iog.145.1590700635021; 
 Thu, 28 May 2020 14:17:15 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id o18sm3648294ils.30.2020.05.28.14.17.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 14:17:14 -0700 (PDT)
Received: (nullmailer pid 701364 invoked by uid 1000);
 Thu, 28 May 2020 21:17:13 -0000
Date: Thu, 28 May 2020 15:17:13 -0600
From: Rob Herring <robh@kernel.org>
To: Amit Singh Tomar <amittomer25@gmail.com>
Subject: Re: [PATCH v2 05/10] dt-bindings: dmaengine: convert Actions Semi
 Owl SoCs bindings to yaml
Message-ID: <20200528211713.GA694871@bogus>
References: <1589912368-480-1-git-send-email-amittomer25@gmail.com>
 <1589912368-480-6-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589912368-480-6-git-send-email-amittomer25@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_141715_770424_B8F2B68C 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, andre.przywara@arm.com,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 cristian.ciocaltea@gmail.com, vkoul@kernel.org,
 manivannan.sadhasivam@linaro.org, dan.j.williams@intel.com, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 11:49:23PM +0530, Amit Singh Tomar wrote:
> Converts the device tree bindings for the Actions Semi Owl SoCs DMA
> Controller over to YAML schemas.
> 
> It also adds new compatible string "actions,s700-dma".
> 
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>
> ---
> Change since v1:
> 	* Updated the description field to reflect
> 	  only the necessary information.
> 	* replaced the maxItems field with description for each 
>           controller attribute(except interrupts).
> 	* Replaced the clock macro with number to keep the example
>           as independent as possible.
> 	  	
>  New patch, was not there in RFC.
> ---
>  Documentation/devicetree/bindings/dma/owl-dma.txt  | 47 -------------
>  Documentation/devicetree/bindings/dma/owl-dma.yaml | 76 ++++++++++++++++++++++
>  2 files changed, 76 insertions(+), 47 deletions(-)
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
> index 000000000000..82e7d261e967
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/owl-dma.yaml
> @@ -0,0 +1,76 @@
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
> +    description:
> +      DMA registers location and length.

Don't need a description. Just need: 

maxItems: 1

> +
> +  interrupts:
> +    description:
> +      controller supports 4 interrupts, which are freely assignable to the
> +      DMA channels.
> +    maxItems: 4
> +
> +  "#dma-cells":
> +    const: 1
> +
> +  dma-channels:
> +    description:
> +      Physical channels supported.

Already defined in dma-controller.yaml. You need to add any constraints.
2^32 channels okay?

> +
> +  dma-requests:
> +    description:
> +      Number of DMA request signals supported by the controller.

Same here.

> +
> +  clocks:
> +    description:
> +      Phandle and Specifier of the clock feeding the DMA controller.

How many?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#dma-cells"
> +  - dma-channels
> +  - dma-requests
> +  - clocks

Add:

unevaluatedProperties: false

> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
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
> +        clocks = <&clock 22>;
> +    };
> +
> +...
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
