Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F9B71CFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 18:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RX74eytTb02cBuG+bRvVqhyeuhcw5jvTaBeVu8DFa8s=; b=AeBUrbMD8gdtQi
	EtI48mN+SiRGDm1odCEmlmN2UhIGpMUCfiuRjFb4BKh/U5r8i5tdRnPzzcrQzyorWdwkxq28nQ4Ls
	0sWDIM13/248lfqcJmjPxuGl6z0PHp9IvVtBsD+uFyk+6YMPhQygjSwW6jU+Wb/3Y4EctEcAvo+I1
	UdMPsojTwoW6HBulEWP1wON0+oZraQCzgtnto6lpU1mZTx+9WEmKY87tn/oIm7kuoG+VBfnMG8axt
	ym9FhMV/hmMhIWY2Rsj0kLB/YYOLnBnypWcs/jlY3Kyux+3HT9Lfr9BEiStBIe/7T0a0rxkQFFWPq
	GpKbXx2xPCbGMASFChzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxj4-00007c-49; Tue, 23 Jul 2019 16:33:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxih-0008Os-3T
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 16:32:56 +0000
Received: from mail-yw1-f44.google.com (mail-yw1-f44.google.com
 [209.85.161.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95DD1227BF
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 16:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563899574;
 bh=UkC9CMAg2OA3YyFW059HsAnan8UVUBUydqVwz+KnGXo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JFx1udfR2Smg079z8oHQ9gAztG5ijfvP0ayA7dJh/CWZ+dFoSF0CSse1tkcFPy/+j
 dmrr4zl3dAdoODQEILGkWHAeR6RBe16FOqzohVwKhIrEUCsotVnaUudtjwAzTUAuvA
 uWFSMcttwIlJLgdwfw0vGKTqDXmgJVLvsTtyJV80=
Received: by mail-yw1-f44.google.com with SMTP id u141so17161148ywe.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 09:32:54 -0700 (PDT)
X-Gm-Message-State: APjAAAV7+3aZBVNBWM60WMW79oh6SN6+xLUjW/bxn51lqyCLvjCHSaQT
 JaD9XMPh802Lf8zb8uxCsT2Y1bObiZl1GBXU8g==
X-Google-Smtp-Source: APXvYqzTkj0IYYWKDgZSL/Io1oTkkh3szkCRGZDjVJgYHjvYn6KAws+dxyPhaOCU7BlGZaFaH9GYfScLchP2GVsEVbs=
X-Received: by 2002:a81:6a05:: with SMTP id f5mr47818045ywc.368.1563899573743; 
 Tue, 23 Jul 2019 09:32:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190723132658.5068-1-maxime.ripard@bootlin.com>
 <20190723132658.5068-2-maxime.ripard@bootlin.com>
In-Reply-To: <20190723132658.5068-2-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 23 Jul 2019 10:32:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
Message-ID: <CAL_JsqJkTrCuscnWgm5cDmQj5RPGnd3qXkzR40XWKB2skZFwXA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: irq: Convert Allwinner NMI Controller to
 a schema
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_093255_193287_E722180D 
X-CRM114-Status: GOOD (  22.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Jason Cooper <jason@lakedaemon.net>, maz@kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Thomas Gleixner <tglx@linutronix.de>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 7:27 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The Allwinner SoCs have an interrupt controller called NMI supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../allwinner,sun7i-a20-sc-nmi.yaml           | 83 +++++++++++++++++++
>  .../allwinner,sunxi-nmi.txt                   | 29 -------
>  2 files changed, 83 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/interrupt-controller/allwinner,sunxi-nmi.txt
>
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> new file mode 100644
> index 000000000000..cb8077b0c8dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A20 Non-Maskable Interrupt Controller Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +allOf:
> +  - $ref: /schemas/interrupt-controller.yaml#
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - allwinner,sun6i-a31-r-intc
> +          - allwinner,sun7i-a20-sc-nmi
> +          - allwinner,sun9i-a80-sc-nmi

This should have all the possible compatibles in case all are not listed.

> +
> +          # Deprecated
> +          - allwinner,sun6i-a31-sc-nmi

I know we already did things this way before, but perhaps this should
be listed below with the 'deprecated' property. The tools can include
it in select, but then remove it from compatible property.

> +
> +  required:
> +    - compatible
> +
> +properties:
> +  "#interrupt-cells":
> +    const: 2
> +    description:
> +      The first cell is the IRQ number, the second cell the trigger
> +      type as defined in interrupt.txt in this directory.
> +
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun6i-a31-r-intc
> +      - const: allwinner,sun7i-a20-sc-nmi
> +      - items:
> +        - const: allwinner,sun8i-a83t-r-intc
> +        - const: allwinner,sun6i-a31-r-intc
> +      - const: allwinner,sun9i-a80-sc-nmi
> +      - items:
> +        - const: allwinner,sun50i-a64-r-intc
> +        - const: allwinner,sun6i-a31-r-intc
> +      - items:
> +        - const: allwinner,sun50i-h6-r-intc
> +        - const: allwinner,sun6i-a31-r-intc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-controller: true
> +
> +required:
> +  - "#interrupt-cells"
> +  - compatible
> +  - reg
> +  - interrupts
> +  - interrupt-controller
> +
> +# FIXME: We should set it, but it would report all the generic
> +# properties as additional properties.
> +# additionalProperties: false
> +
> +examples:
> +  - |
> +    interrupt-controller@1c00030 {
> +        compatible = "allwinner,sun7i-a20-sc-nmi";
> +        interrupt-controller;
> +        #interrupt-cells = <2>;
> +        reg = <0x01c00030 0x0c>;
> +        interrupt-parent = <&gic>;
> +        interrupts = <0 0 4>;
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
