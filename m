Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD611E87B3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:25:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Kytu6KmaxEUAgJVUdxnlUcZbSdwUiB4dPJLnS8/xHA=; b=i1eUVWaUqx9u2Q
	rHggk8x2UCEQCXoQyXHio272ydu5kk2B9bMYGzgVEKr+ODJKP8Wso0z+B5GlBSXONaKxI94s6BoCC
	AG40c0LJCC/CJVIL5bmnXpU6UwY+gddliDLqWR/2aB2bU9fu/uSVxPMxtRGes473HSp3DDfo8SlzY
	Ee9Xw6ZSCg1X/x9ka8aRWy8fZtMD1ZMxWP9CXb9sJIRT5dqtBA9UEWWpk97Hcqfo7Ao5UEjNWlWLw
	dJWYljSK49n9Qji66A8EdWIx4swgSNTCJVGcfbCf/X+X3j9BtQNnq+K853JYU11/Ozlwai+APBjoh
	zdOQxrbM/DdO6pcyGG9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekcl-0007jt-Vj; Fri, 29 May 2020 19:25:00 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekcb-0007it-FL; Fri, 29 May 2020 19:24:50 +0000
Received: by mail-io1-f66.google.com with SMTP id p20so506952iop.11;
 Fri, 29 May 2020 12:24:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ncA1UY1KFuVSo+dgrM2Ia9S54/5AbQa0Xrtk2pQ7Rpg=;
 b=T0xWl0Ws+mb6EMCNQqVN/JvQlfHg3cjQ1Vwq8sf63PrdcGy+ngsQnlIdmSLLrN2n1S
 rYj9KqcSUexY4QCzByTB0kVQMctSF+8Naog8MEXiK3wtbFkBC0wAdBvWOLPDFicMM4Pq
 tr99nNfLlXpZA9UqW8invIJB+PUO034rvCq0XFS7GhhVYZtczYYKzRXMioq2j2l+E9c+
 qVHpNQBi6j0ZtdhTamoqsEmklG8QP9dTI1NzagmNekI2XHFSXyni9drdv0KVec9RT8qW
 upswftaAiNhTG5fRjSP0EXqMhwihsu+8N4t6m5C/4XKdltInAHNZMgEMQ6I3U+M8UcdO
 44iw==
X-Gm-Message-State: AOAM530f7nha8IdPNAruyX663GDDX7dnr+ThzMCibyJ+ohUts0xF8u6X
 ZtYYSn9MYItIstsXlArs4w==
X-Google-Smtp-Source: ABdhPJwqvXK5Nh8UeEPtncN2XbompTf/OSEA4G54suYQIG3STlJL/YnP452nV6nfPe4nUqyJuC6XDw==
X-Received: by 2002:a6b:e714:: with SMTP id b20mr8135145ioh.195.1590780287110; 
 Fri, 29 May 2020 12:24:47 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p3sm4241556iog.31.2020.05.29.12.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:24:45 -0700 (PDT)
Received: (nullmailer pid 2795396 invoked by uid 1000);
 Fri, 29 May 2020 19:24:43 -0000
Date: Fri, 29 May 2020 13:24:43 -0600
From: Rob Herring <robh@kernel.org>
To: EastL <EastL.Lee@mediatek.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: dmaengine: Add MediaTek
 Command-Queue DMA controller bindings
Message-ID: <20200529192443.GA2785767@bogus>
References: <1590659832-31476-1-git-send-email-EastL.Lee@mediatek.com>
 <1590659832-31476-2-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1590659832-31476-2-git-send-email-EastL.Lee@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_122449_512024_41627945 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, vkoul@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 05:57:09PM +0800, EastL wrote:
> Document the devicetree bindings for MediaTek Command-Queue DMA controller
> which could be found on MT6779 SoC or other similar Mediatek SoCs.
> 
> Signed-off-by: EastL <EastL.Lee@mediatek.com>

Need a full name.

> ---
>  .../devicetree/bindings/dma/mtk-cqdma.yaml         | 100 +++++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> 
> diff --git a/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> new file mode 100644
> index 0000000..045aa0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/mtk-cqdma.yaml
> @@ -0,0 +1,100 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/mtk-cqdma.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek Command-Queue DMA controller Device Tree Binding
> +
> +maintainers:
> +  - EastL <EastL.Lee@mediatek.com>
> +
> +description:
> +  MediaTek Command-Queue DMA controller (CQDMA) on Mediatek SoC
> +  is dedicated to memory-to-memory transfer through queue based
> +  descriptor management.
> +

Need a $ref to dma-controller.yaml

> +properties:
> +  "#dma-cells":
> +    minimum: 1
> +    # Should be enough
> +    maximum: 255
> +    description:
> +      Used to provide DMA controller specific information.
> +
> +  compatible:
> +    const: mediatek,cqdma

Needs SoC specific compatible string(s).

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 255

You can have 255 register regions?

You need to define what each region is if more than 1.

> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 255

255 interrupts?

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: cqdma
> +
> +  dma-channel-mask:
> +    description:
> +      Bitmask of available DMA channels in ascending order that are
> +      not reserved by firmware and are available to the
> +      kernel. i.e. first channel corresponds to LSB.
> +      The first item in the array is for channels 0-31, the second is for
> +      channels 32-63, etc.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      minItems: 1
> +      # Should be enough
> +      maxItems: 255

This already has a definition in dma-common.yaml. Don't copy-n-paste 
it. Just add any constraints you have. Like what is the max number of 
channels?

> +
> +  dma-channels:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Number of DMA channels supported by the controller.
> +
> +  dma-requests:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Number of DMA request signals supported by the controller.

Same comment on these 2.

> +
> +required:
> +  - "#dma-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - dma-channel-mask
> +  - dma-channels
> +  - dma-requests
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/mt6779-clk.h>
> +    cqdma: dma-controller@10212000 {
> +        compatible = "mediatek,cqdma";
> +        reg = <0 0x10212000 0 0x80>,
> +            <0 0x10212080 0 0x80>,
> +            <0 0x10212100 0 0x80>;

Examples default to 1 cell each for address and size.

> +        interrupts = <GIC_SPI 139 IRQ_TYPE_LEVEL_LOW>,
> +            <GIC_SPI 140 IRQ_TYPE_LEVEL_LOW>,
> +            <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
> +        clocks = <&infracfg_ao CLK_INFRA_CQ_DMA>;
> +        clock-names = "cqdma";
> +        dma-channel-mask = <63>;
> +        dma-channels = <3>;
> +        dma-requests = <32>;
> +        #dma-cells = <1>;
> +    };
> +
> +...
> -- 
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
