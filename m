Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7121660B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 16:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkZ20YUq2q1VbcLzYJVV4u4ck0XjRQzoSSkq8U+Nza8=; b=DZa+J3YDlc6R8S
	30TfAGfvJuNEj01/1k301cnDdn38btFL77sayf6A42aoXS738rs2TU4zDVayOkeHLrIhNyz3ZJZwB
	CArP1vBB9uVQ4eY8ICrXIGe0NPyD8AcLKVPNpWthqRw5KM+hsrlWxRo1AwCyyhq/1lJsIxyoRqEkD
	eaQ6UbQLa7pZoyk5/J7eb5DwByFhQRHuDl67I3ZMvu1hb0TTdohVmOhhhuzrh2WnDi/WYoXG+jpCm
	COMzC5dxT8VTlyzdh5Jj0FKC5PFI4dq887PsZoLxo/ZPeSo1u8cRYpX36UtdtJLxX5X80alAloCKu
	v/NE6FNUWf8gEZuSgKIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1Ru-0001YQ-V0; Tue, 07 May 2019 14:52:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1Rn-0001Y6-He
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 14:52:01 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9B9921479
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 14:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557240719;
 bh=gWUxo89d44SUn3J2Zc928qElLW2XT8oWIyto8ecrjIY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YUtgkGToiqE6/WiAbanqadOhny/GrUBQ7hVL+t9ZAGA2iEdyxQtd38ixlsU4zL3y8
 w+xWAtKkx73pRR7L41YbY9B5/OtTMHhgAsIhu49ZJsJnAEFqRaj8NF3OLQDefAIJOT
 kgi1vgjg5tXIIEE+/VLjaVz39OGKHTGmPR61RfXw=
Received: by mail-qt1-f182.google.com with SMTP id o7so7373213qtp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 07:51:58 -0700 (PDT)
X-Gm-Message-State: APjAAAV8DAl+yYnFGsU0NG2gkWRTT34+JADGA5j++8FlvW+7OW7fEo69
 rGSHLU5z35is3+noFiucxIz9qQ8BsQe2UCWkmQ==
X-Google-Smtp-Source: APXvYqzxIefvVeNFRFHHncOA0m/a9ZI1n2OxWxSSZe8gViWqPJVgQkyi4KCb2IcqBYcRyd+wlZBqTVovXgTwYP7ETyw=
X-Received: by 2002:aed:2471:: with SMTP id s46mr6594381qtc.144.1557240718119; 
 Tue, 07 May 2019 07:51:58 -0700 (PDT)
MIME-Version: 1.0
References: <b7a6095a5c900fa23cc54d1ccd8e8ef0ccf6e788.1557236840.git-series.maxime.ripard@bootlin.com>
 <e39713deed69735e5c02c4273bf84572aa589736.1557236840.git-series.maxime.ripard@bootlin.com>
In-Reply-To: <e39713deed69735e5c02c4273bf84572aa589736.1557236840.git-series.maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 7 May 2019 09:51:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLJ+aeG8zakZokv2qfwiLBiJ-49ByGuQ_-YuTUyGXtNnQ@mail.gmail.com>
Message-ID: <CAL_JsqLJ+aeG8zakZokv2qfwiLBiJ-49ByGuQ_-YuTUyGXtNnQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: spi: sun6i: Add YAML schemas
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_075159_622801_3FE00DB0 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-spi <linux-spi@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 8:48 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Switch the DT binding to a YAML schema to enable the DT validation.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml | 106 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  Documentation/devicetree/bindings/spi/spi-sun6i.txt                |  44 +------------------------------
>  2 files changed, 106 insertions(+), 44 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-sun6i.txt
>
> diff --git a/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> new file mode 100644
> index 000000000000..0cd7244653a8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/allwinner,sun6i-a31-spi.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/allwinner,sun6i-a31-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A31 SPI Controller Device Tree Bindings
> +
> +allOf:
> +  - $ref: "spi-controller.yaml"
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  "#address-cells": true
> +  "#size-cells": true
> +
> +  compatible:
> +    enum:
> +      - allwinner,sun6i-a31-spi
> +      - allwinner,sun8i-h3-spi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: ahb
> +      - const: mod
> +
> +  resets:
> +    maxItems: 1
> +
> +  dmas:
> +    items:
> +      - description: RX DMA Channel
> +      - description: TX DMA Channel
> +
> +  dma-names:
> +    items:
> +      - const: rx
> +      - const: tx
> +
> +  num-cs: true
> +
> +patternProperties:
> +  "^[a-z]+@[0-9]+$":

Same issues here as patch 1.

> +    properties:
> +      reg:
> +        items:
> +          minimum: 0
> +          maximum: 4
> +
> +      spi-rx-bus-width:
> +        const: 1
> +
> +      spi-tx-bus-width:
> +        const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi1: spi@1c69000 {
> +        compatible = "allwinner,sun6i-a31-spi";
> +        reg = <0x01c69000 0x1000>;
> +        interrupts = <0 66 4>;
> +        clocks = <&ahb1_gates 21>, <&spi1_clk>;
> +        clock-names = "ahb", "mod";
> +        resets = <&ahb1_rst 21>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +    };
> +
> +  - |
> +    spi0: spi@1c68000 {
> +        compatible = "allwinner,sun8i-h3-spi";
> +        reg = <0x01c68000 0x1000>;
> +        interrupts = <0 65 4>;
> +        clocks = <&ccu 30>, <&ccu 82>;
> +        clock-names = "ahb", "mod";
> +        dmas = <&dma 23>, <&dma 23>;
> +        dma-names = "rx", "tx";
> +        resets = <&ccu 15>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/spi/spi-sun6i.txt b/Documentation/devicetree/bindings/spi/spi-sun6i.txt
> deleted file mode 100644
> index 435a8e0731ac..000000000000
> --- a/Documentation/devicetree/bindings/spi/spi-sun6i.txt
> +++ /dev/null
> @@ -1,44 +0,0 @@
> -Allwinner A31/H3 SPI controller
> -
> -Required properties:
> -- compatible: Should be "allwinner,sun6i-a31-spi" or "allwinner,sun8i-h3-spi".
> -- reg: Should contain register location and length.
> -- interrupts: Should contain interrupt.
> -- clocks: phandle to the clocks feeding the SPI controller. Two are
> -          needed:
> -  - "ahb": the gated AHB parent clock
> -  - "mod": the parent module clock
> -- clock-names: Must contain the clock names described just above
> -- resets: phandle to the reset controller asserting this device in
> -          reset
> -
> -Optional properties:
> -- dmas: DMA specifiers for rx and tx dma. See the DMA client binding,
> -       Documentation/devicetree/bindings/dma/dma.txt
> -- dma-names: DMA request names should include "rx" and "tx" if present.
> -
> -Example:
> -
> -spi1: spi@1c69000 {
> -       compatible = "allwinner,sun6i-a31-spi";
> -       reg = <0x01c69000 0x1000>;
> -       interrupts = <0 66 4>;
> -       clocks = <&ahb1_gates 21>, <&spi1_clk>;
> -       clock-names = "ahb", "mod";
> -       resets = <&ahb1_rst 21>;
> -};
> -
> -spi0: spi@1c68000 {
> -       compatible = "allwinner,sun8i-h3-spi";
> -       reg = <0x01c68000 0x1000>;
> -       interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
> -       clocks = <&ccu CLK_BUS_SPI0>, <&ccu CLK_SPI0>;
> -       clock-names = "ahb", "mod";
> -       dmas = <&dma 23>, <&dma 23>;
> -       dma-names = "rx", "tx";
> -       pinctrl-names = "default";
> -       pinctrl-0 = <&spi0_pins>;
> -       resets = <&ccu RST_BUS_SPI0>;
> -       #address-cells = <1>;
> -       #size-cells = <0>;
> -};
> --
> git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
