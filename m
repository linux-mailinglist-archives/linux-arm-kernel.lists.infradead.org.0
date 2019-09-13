Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CB2B2216
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 16:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ZSwqiIxxbr64etGGHaB7f21wj4E52m6+hZUXj/UhBM=; b=tJ2G8+Cxw/SbBm
	ry3zti26p5LFjQPrZa7qDgJvrD4+xXZDVPiV3lVmWR8sh8Q/K56UgnkWtjb4k7zRnAKjWCEHN5YCX
	iGsSH2FibfXf4GkVaddmjQJuJKyg7y/W0qRLXfF6COVwCTR09IRWhbBttVC22JROyYvpJQSkYVkUp
	W7bT7uBRC0H7uGnpHUZNsLvqZXelSDNhny1gN1ifUcAyC8WQdlCcxQ69kRvMzbn51BfiFfYkpKjGO
	5MEUUU+tOX4AycC7AMN8Lqzi7DleO10jfJjBGzgKbsjkJ0axbBZNuM0QsCpdyBBsqgyzyl28rL4Or
	E7hXOTixqdkRisC3B15w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mi8-0003Xh-A3; Fri, 13 Sep 2019 14:38:08 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8mgK-0002R7-Aq
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 14:36:18 +0000
Received: by mail-ot1-f65.google.com with SMTP id y39so29706876ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 07:36:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:to:cc:subject:references
 :mime-version:content-disposition:in-reply-to;
 bh=jPil7naIVMsYQGDdFjyUh8y7gh27b0UjFHm5hhvq39I=;
 b=hppiRcRKeOIJJHw1/ZUy93IEoV0GudABezM0K5IFNwg4PTF6ho9OqlGva5Z7AEILQs
 0I7Bo4l/tfU03wtXtsMDQ4iSv8FovVOG8gys+JSw0CC2JF4zBLG+H9zCE3m7NGyGQbFu
 6mhRcJxT8nTysMGFNpTKT8iNjf356ZCPQScyUfbG1020wIQiY0JbYIZong5XoGwAWVE9
 wTBysTKN3Muw6gzC0xdMXDhDZK5DMtT/l6BLTfCGmjzRSRbxT6whKa0oulEmZuV7UYaF
 hZ4oDkit1P9tQTxdbPvDWCwnnaQLLxREbPhQcu9fDKbKHwLMIvQu9cIPwxWkg/+LjSAW
 HN9g==
X-Gm-Message-State: APjAAAUTbo7VUUhtMuv/VC1kkAOstlGVo4pRCi23do62Y3/SFzExTTcO
 TbhkI5yf7wd7y0PRnmYAOw==
X-Google-Smtp-Source: APXvYqy9UfdHJCkKsInfemOdhROmQLnT8mAJxKh93E3hpPr0GDO3Y7CXrUsygxmMtbApr3jAKH3feA==
X-Received: by 2002:a9d:148:: with SMTP id 66mr11223347otu.1.1568385375377;
 Fri, 13 Sep 2019 07:36:15 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v2sm930279oic.49.2019.09.13.07.36.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 07:36:14 -0700 (PDT)
Message-ID: <5d7ba95e.1c69fb81.bba41.66c2@mx.google.com>
Date: Fri, 13 Sep 2019 15:36:14 +0100
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] dt-bindings: memory-controllers: Convert Samsung Exynos
 SROM bindings to json-schema
References: <20190907144442.16788-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907144442.16788-1-krzk@kernel.org>
X-Mutt-References: <20190907144442.16788-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_073616_512742_9ECFB653 
X-CRM114-Status: GOOD (  20.22  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 04:44:42PM +0200, Krzysztof Kozlowski wrote:
> Convert Samsung Exynos SROM controller bindings to DT schema format
> using json-schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  .../memory-controllers/exynos-srom.txt        |  79 ----------
>  .../memory-controllers/exynos-srom.yaml       | 136 ++++++++++++++++++
>  2 files changed, 136 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml


> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
> new file mode 100644
> index 000000000000..9573bcfd68bf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos-srom.yaml
> @@ -0,0 +1,136 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/exynos-srom.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung Exynos SoC SROM Controller driver
> +
> +maintainers:
> +  - Krzysztof Kozlowski <krzk@kernel.org>
> +
> +description: |+
> +  The SROM controller can be used to attach external peripherals. In this case
> +  extra properties, describing the bus behind it, should be specified.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: samsung,exynos4210-srom
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges:
> +    description: |
> +      Reflects the memory layout with four integer values per bank. Format:
> +      <bank-number> 0 <parent address of bank> <size>
> +
> +patternProperties:
> +  "^.*@[0-9]+,[0-9]+$":

How many chip selects? Can be a single digit?

Also, these should be hex values.

> +    type: object
> +    description:
> +      The actual device nodes should be added as subnodes to the SROMc node.
> +      These subnodes, in addition to regular device specification, should
> +      contain the following properties, describing configuration
> +      of the relevant SROM bank.
> +
> +    properties:
> +      reg:
> +        description:
> +          Bank number, base address (relative to start of the bank) and size
> +          of the memory mapped for the device. Note that base address will be
> +          typically 0 as this is the start of the bank.
> +        maxItems: 1
> +
> +      reg-io-width:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32
> +          - enum: [1, 2]
> +        description:
> +          Data width in bytes (1 or 2). If omitted, default of 1 is used.
> +
> +      samsung,srom-page-mode:
> +        description:
> +          If page mode is set, 4 data page mode will be configured,
> +          else normal (1 data) page mode will be set.
> +        type: boolean
> +
> +      samsung,srom-timing:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +          - items:
> +              minItems: 6
> +              maxItems: 6
> +        description: |
> +          Array of 6 integers, specifying bank timings in the following order:
> +          Tacp, Tcah, Tcoh, Tacc, Tcos, Tacs.
> +          Each value is specified in cycles and has the following meaning
> +          and valid range:
> +          Tacp: Page mode access cycle at Page mode (0 - 15)
> +          Tcah: Address holding time after CSn (0 - 15)
> +          Tcoh: Chip selection hold on OEn (0 - 15)
> +          Tacc: Access cycle (0 - 31, the actual time is N + 1)
> +          Tcos: Chip selection set-up before OEn (0 - 15)
> +          Tacs: Address set-up before CSn (0 - 15)
> +
> +    required:
> +      - reg
> +      - samsung,srom-timing
> +
> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - if:
> +      anyOf:
> +        - required: [ "#address-cells" ]
> +        - required: [ ranges ]
> +        - required: [ "#size-cells" ]
> +    then:
> +      required:
> +        - "#address-cells"
> +        - ranges
> +        - "#size-cells"

I don't think this is necessary as the core schema should take care of 
it. This can also be expressed using 'dependencies'. 

Rob


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
