Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D26F15CC70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QF87S1Jc//nTDKRN8nnW+UJYNTx1qaqi2j8zRx8IBs8=; b=Msa39TVsp5Mklh
	HhFw1Vztt8WL/0rq9+bzJsZuGOCi7yGPZdeZkK/JSQcnzZ6zGVoUxMs5+msK/qBxySUwfoKVQvEb/
	cdHBomVnOs7SjeRRNnDemj3m8eoSdg+kH0+D4Qf7N6Vavt0+d5cxXOlUr2i9GViBUDnt1D20HdeSO
	D70BkwXp/rrhV+24iJABCvL7mx8FrNki6jN/SeEl+eQ4+7C4wlxxm8NLjhmwCbCtzGtx0fw/YQl6G
	vc3voi4oZZ5gzCUw0kCbY/xdUO0eO2cBMC0d0BFV62+aEVAMoi2X8iVN2TmvVbV11PyhvZ96VQDMt
	e9yS3iLbQAkJGFpDOHTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LCm-0002MR-9U; Thu, 13 Feb 2020 20:35:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LCd-0002Lc-GY
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:35:17 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E7F424650
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 20:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581626115;
 bh=j7xkB4UBP/a4SB+tL6k6ZUvIyVPprRWnw43EzRyPaW8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=auLiMZ2UtabEA2a0gidgvM/qpqynCtWAh2YJU5yJ6JQt11GPonS3ognsM5zCb4uDw
 el4WZgCjHqVZF95vmDZKMfHcarTLtL/jgViGwRj0WKxHUwBS8qBLUmwVEiJS39l0lQ
 jU5VxGLIoT06xND5Hn8pEkpEfCj+vFUnuxzABb00=
Received: by mail-qt1-f180.google.com with SMTP id n17so5444151qtv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:35:15 -0800 (PST)
X-Gm-Message-State: APjAAAWwviRZU6VQEWhXN4ZB3bAR3rV2oEYQ/GQ1Xghn893guZm5bUQ+
 pdgP1go9VS4QHgNKprysSb4Lbe7M8O5wtMtwLA==
X-Google-Smtp-Source: APXvYqwqr4BVYshVjg/S/mtUAD4tutWsr+wyOQtF1RhL365vMoqi766XHHE1A6knTgq1BghE5fQpEY38ESYEixHRCEM=
X-Received: by 2002:ac8:5513:: with SMTP id j19mr13527148qtq.143.1581626114034; 
 Thu, 13 Feb 2020 12:35:14 -0800 (PST)
MIME-Version: 1.0
References: <20200210092713.279105-1-linus.walleij@linaro.org>
 <20200210092713.279105-6-linus.walleij@linaro.org>
In-Reply-To: <20200210092713.279105-6-linus.walleij@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Feb 2020 14:35:03 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLG4dR6aeY2bP9ihjALT8DmQ3tHQy2mYdZBNay6xxanjA@mail.gmail.com>
Message-ID: <CAL_JsqLG4dR6aeY2bP9ihjALT8DmQ3tHQy2mYdZBNay6xxanjA@mail.gmail.com>
Subject: Re: [PATCH 5/7] dt-bindings: arm: Add RealView YAML schema
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_123515_593547_BF298F30 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 3:27 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> This implements the top-level schema for the ARM RealView
> platforms.
>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  .../devicetree/bindings/arm/arm,realview.yaml | 123 ++++++++++++++++++
>  1 file changed, 123 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,realview.yaml

Same comments as patch 3 apply here...

>
> diff --git a/Documentation/devicetree/bindings/arm/arm,realview.yaml b/Documentation/devicetree/bindings/arm/arm,realview.yaml
> new file mode 100644
> index 000000000000..d6e85d198afe
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,realview.yaml
> @@ -0,0 +1,123 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,realview.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM RealView Boards Device Tree Bindings
> +
> +maintainers:
> +  - Linus Walleij <linus.walleij@linaro.org>
> +
> +description: |+
> +  The ARM RealView series of reference designs were built to explore the ARM
> +  11, Cortex A-8 and Cortex A-9 CPUs. This included new features compared to
> +  the earlier CPUs such as TrustZone and multicore (MPCore).
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: ARM RealView Emulation Baseboard (HBI-0140) was created
> +          as a generic platform to test different FPGA designs, and has
> +          pluggable CPU modules, see ARM DUI 0303E.
> +        items:
> +          - const: arm,realview-eb
> +      - description: ARM RealView Platform Baseboard for ARM1176JZF-S
> +          (HBI-0147) was created as a development board to test ARM TrustZone,
> +          CoreSight and Intelligent Energy Management (IEM) see ARM DUI 0425F.
> +        items:
> +          - const: arm,realview-pb1176
> +      - description: ARM RealView Platform Baseboard for ARM 11 MPCore
> +          (HBI-0159, HBI-0175 and HBI-0176) was created to showcase
> +          multiprocessing with ARM11 using MPCore using symmetric
> +          multiprocessing (SMP). See ARM DUI 0351E.
> +        items:
> +          - const: arm,realview-pb11mp
> +      - description: ARM RealView Platform Baseboard for Cortex-A8 (HBI-0178,
> +          HBI-0176 and HBI-0175) was the first reference platform for the
> +          Cortex CPU family, including a Cortex-A8 test chip.
> +        items:
> +          - const: arm,realview-pba8
> +      - description: ARM RealView Platform Baseboard Explore for Cortex-A9
> +          (HBI-0182 and HBI-0183) was the reference platform for the Cortex-A9
> +          CPU.
> +        items:
> +          - const: arm,realview-pbx
> +
> +  soc:
> +    description: All RealView boards must provide a soc node in the root of the
> +      device tree, representing the System-on-Chip since these test chips are
> +      rather complex.
> +    type: object
> +    properties:
> +      compatible:
> +        oneOf:
> +          - items:
> +            - const: arm,realview-eb-soc
> +            - const: simple-bus
> +          - items:
> +            - const: arm,realview-pb1176-soc
> +            - const: simple-bus
> +          - items:
> +            - const: arm,realview-pb11mp-soc
> +            - const: simple-bus
> +          - items:
> +            - const: arm,realview-pba8-soc
> +            - const: simple-bus
> +          - items:
> +            - const: arm,realview-pbx-soc
> +            - const: simple-bus

Can be simplified.

> +
> +    patternProperties:
> +      "^.*syscon@[0-9a-f]+$":
> +        type: object
> +        description: All RealView boards must provide a syscon system controller
> +          node inside the soc node.
> +        properties:
> +          compatible:
> +            oneOf:
> +              - items:
> +                - const: arm,realview-eb11mp-revb-syscon
> +                - const: arm,realview-eb-syscon
> +                - const: syscon
> +                - const: simple-mfd
> +              - items:
> +                - const: arm,realview-eb11mp-revc-syscon
> +                - const: arm,realview-eb-syscon
> +                - const: syscon
> +                - const: simple-mfd

These 2 can be 1 items list.

> +              - items:
> +                - const: arm,realview-eb-syscon
> +                - const: syscon
> +                - const: simple-mfd
> +              - items:
> +                - const: arm,realview-pb1176-syscon
> +                - const: syscon
> +                - const: simple-mfd
> +              - items:
> +                - const: arm,realview-pb11mp-syscon
> +                - const: syscon
> +                - const: simple-mfd
> +              - items:
> +                - const: arm,realview-pba8-syscon
> +                - const: syscon
> +                - const: simple-mfd
> +              - items:
> +                - const: arm,realview-pbx-syscon
> +                - const: syscon
> +                - const: simple-mfd

And these 5 1 items list.

> +
> +        required:
> +          - compatible
> +          - reg
> +
> +    required:
> +      - compatible
> +
> +required:
> +  - compatible
> +  - soc
> +
> +...
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
