Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB89154D38
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:46:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53Glr5DdD2hIRS3btg1Pq5ksyOSErx0wSAHojsS6p6A=; b=AUQ0M7YWtoT7wK
	q2jSwPy3E6qyyMQZf/P92G8IZo7Zwv4aPfDgwpzBmXJ+N352ULtV0iTMqcQ4QDfWns+mvT+Dv/xbf
	nOXx8qW+vtFZG1juP+8envRzIP4xenlCRAfDta1XidcAcrTtKZdMYDIkosj7f43nG3Ebzn0vI7eOM
	sNvAjKr5mwshGFzYMezUX6DldFPdNq0czq6y8Yjcktje/vfo0+zxZF8wLHBUyvqBwiCgrzEhDVahZ
	sa89xd6SDSzGbE83j6YYTfd8zZyh8xjbwod9gkZDDuaBgH5zApYOQdPfh+gckyHzM1Cs3Nhek/UWb
	jZfJQCYErZtHooaKC0lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo2J-0007iZ-V7; Thu, 06 Feb 2020 20:46:07 +0000
Received: from mail-pj1-f66.google.com ([209.85.216.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo1u-0007Ya-7s
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:45:47 +0000
Received: by mail-pj1-f66.google.com with SMTP id f2so655321pjq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:45:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JQfj0uzbhk9PL5wqDoKeIBKd41MQ1h8voivIlPs9HKc=;
 b=TP0shqLendq3ZKMaOEL4oPkiAp/AoqYQ5grHYwGPeMsfYjJp23eb5YfzDdYn07EmBz
 xG7R6/Wk85lTP/01RgLc4lgPzuM1ylb7xT2LorlWT4NWEsiUwDAQCxxGKUS/vEDK5M6L
 fgZ7zLwRRiwZoN4TddkZQk81okfV4DAmOkV042WT4WAIYFs02+ZXxbxuyEbQXlTgzP7b
 m7FA1/8vzvZtSUfn5ADE6nnoWpWsVmboRWVp+PhpoFcEai5+Rmz/GNhjUf0DxqMlDuCM
 Fd/Vi9jhMl9K9kkoKxrA5EUqw1rhtOg79Xk2JR/YNmprJFIBMoe5xgrn2koKSYHNFPj8
 HbtA==
X-Gm-Message-State: APjAAAWk4nYJ+gigbmu3nCEce3DW9X4YM6NT/+cX8ewcfPdA/KdvsTLS
 EFgeH2lXH0DEGBWxGwURYg9RYlXOmw==
X-Google-Smtp-Source: APXvYqzSMACQuqwX22lBn2rt4IX37CGDwizLP6s5gsYe5polHbDhnFefNbnnYKXjV0FMspaifpEDqg==
X-Received: by 2002:a17:90a:35e6:: with SMTP id
 r93mr6788847pjb.44.1581021940411; 
 Thu, 06 Feb 2020 12:45:40 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id 4sm284539pfn.90.2020.02.06.12.45.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:45:39 -0800 (PST)
Received: (nullmailer pid 24630 invoked by uid 1000);
 Thu, 06 Feb 2020 17:54:58 -0000
Date: Thu, 6 Feb 2020 17:54:58 +0000
From: Rob Herring <robh@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: dmaengine: Add UniPhier external DMA
 controller bindings
Message-ID: <20200206175458.GA12845@bogus>
References: <1580362048-28455-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1580362048-28455-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580362048-28455-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124542_302284_68671070 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Vinod Koul <vkoul@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 02:27:27PM +0900, Kunihiko Hayashi wrote:
> Add devicetree binding documentation for external DMA controller
> implemented on Socionext UniPhier SoCs.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/dma/socionext,uniphier-xdmac.yaml     | 57 ++++++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> 
> diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> new file mode 100644
> index 00000000..32abf18
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/socionext,uniphier-xdmac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext UniPhier external DMA controller
> +
> +description: |
> +  This describes the devicetree bindings for an external DMA engine to perform
> +  memory-to-memory or peripheral-to-memory data transfer capable of supporting
> +  16 channels, implemented in Socionext UniPhier SoCs.
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +
> +allOf:
> +  - $ref: "dma-controller.yaml#"
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: socionext,uniphier-xdmac

You can drop 'items' for a single item.

> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2

You need to say what each entry is:

items:
  - description: ...
  - description: ...

> +
> +  interrupts:
> +    maxItems: 1
> +
> +  "#dma-cells":
> +    const: 2
> +    description: |
> +      DMA request from clients consists of 2 cells:
> +        1. Channel index
> +        2. Transfer request factor number, If no transfer factor, use 0.
> +           The number is SoC-specific, and this should be specified with
> +           relation to the device to use the DMA controller.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#dma-cells"

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +    xdmac: dma-controller@5fc10000 {
> +        compatible = "socionext,uniphier-xdmac";
> +        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
> +        interrupts = <0 188 4>;
> +        #dma-cells = <2>;
> +        dma-channels = <16>;

Not documented. You need at least 'dma-channels: true' to indicate 
you're using this. But you should be able to have some constraints such 
as 'maximum: 16'.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
