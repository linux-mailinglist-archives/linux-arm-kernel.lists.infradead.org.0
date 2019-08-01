Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B877DE99
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvHqZRVMjCbZW5C2XiYjKGfH3rpuSDL9fi971wuWfsc=; b=iPusXmFDY1LFQG
	Mps2GW4TqoUWz8E9QxxfpT7wTPbOtcntl6lzjDYEWL29SnPtRfspK8ZT853Cptjmx15T8iPgAjSD5
	mOo6I9oLB4kS5DCCXbj2aaFcgufTx9hyFFQ7qaX36PCOLpyiKDdktXfBqBcpRgcYsLzo7KihyE17t
	9yrQ9fyFFdNzaj6/HJ1BjjnXoW/FxSXDSEUPu7IkrazyUc5gni3E9t8l0wwIQqOK/beJe6Pm+ERCH
	RB56WUrt1WNIKIj1tcZ/4q75pocK/Yjxn3IhbAVkBl3gdlXeIIIfnP1leFtweZ5fqacnnY7kEcuOl
	dy9Why+3+hwKEpuKcdAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCng-0005vz-9n; Thu, 01 Aug 2019 15:15:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htCnW-0005uu-1a; Thu, 01 Aug 2019 15:15:19 +0000
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 938FB216C8;
 Thu,  1 Aug 2019 15:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564672517;
 bh=uA5DuDfByrWnX/ae2A1G+1Mtk6MansklqnA2pEJdupo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=J2mrSmLujUUFABdK72fcr2TW7agwhVkmfa/Cf259JquuoLyGhU1gCczm1hJqzgDAc
 TYlkBVwQ8g37RNKu54reyUtCZ3wCgvEOJPkQ2kVTLN70qFdJRFxTmUydVfS401y0dY
 XPW2JwX2cGRw3pXnotPCRaKKaJRk7ec1iOvuhE/s=
Received: by mail-qk1-f177.google.com with SMTP id m14so26600653qka.10;
 Thu, 01 Aug 2019 08:15:17 -0700 (PDT)
X-Gm-Message-State: APjAAAXeGLNu8XIQu/35AvyqYtD2tBlC1PHxgHsUnk6j+0DZYOYp7Q2a
 5leXOSSgb8NBdPiTk4a4lOAlkPIGMJQEZeeSWg==
X-Google-Smtp-Source: APXvYqz01CYxZNt/Xy/YcsZufgzVCjzSi/3SAevXz+2Mup+zxxWrzaySvqq35mED05tE8I4G9MmfZPTnjTC/K4sAw9M=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr21034952qke.393.1564672516768; 
 Thu, 01 Aug 2019 08:15:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190801135644.12843-1-narmstrong@baylibre.com>
 <20190801135644.12843-9-narmstrong@baylibre.com>
In-Reply-To: <20190801135644.12843-9-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 1 Aug 2019 09:15:05 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+FyKhLfKHXS71cSRSKmvBj_BquOMbaNUenr1uivnDCng@mail.gmail.com>
Message-ID: <CAL_Jsq+FyKhLfKHXS71cSRSKmvBj_BquOMbaNUenr1uivnDCng@mail.gmail.com>
Subject: Re: [RFC 8/9] dt-bindings: serial: meson-uart: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_081518_132162_1BB9E08B 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 7:56 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/serial/amlogic,meson-uart.txt    | 38 ----------
>  .../bindings/serial/amlogic,meson-uart.yaml   | 75 +++++++++++++++++++
>  2 files changed, 75 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
>  create mode 100644 Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
>
> diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
> deleted file mode 100644
> index c06c045126fc..000000000000
> --- a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.txt
> +++ /dev/null
> @@ -1,38 +0,0 @@
> -Amlogic Meson SoC UART Serial Interface
> -=======================================
> -
> -The Amlogic Meson SoC UART Serial Interface is present on a large range
> -of SoCs, and can be present either in the "Always-On" power domain or the
> -"Everything-Else" power domain.
> -
> -The particularity of the "Always-On" Serial Interface is that the hardware
> -is active since power-on and does not need any clock gating and is usable
> -as very early serial console.
> -
> -Required properties:
> -- compatible : compatible: value should be different for each SoC family as :
> -       - Meson6 : "amlogic,meson6-uart"
> -       - Meson8 : "amlogic,meson8-uart"
> -       - Meson8b : "amlogic,meson8b-uart"
> -       - GX (GXBB, GXL, GXM) : "amlogic,meson-gx-uart"
> -       eventually followed by : "amlogic,meson-ao-uart" if this UART interface
> -       is in the "Always-On" power domain.
> -- reg : offset and length of the register set for the device.
> -- interrupts : identifier to the device interrupt
> -- clocks : a list of phandle + clock-specifier pairs, one for each
> -          entry in clock names.
> -- clock-names :
> -   * "xtal" for external xtal clock identifier
> -   * "pclk" for the bus core clock, either the clk81 clock or the gate clock
> -   * "baud" for the source of the baudrate generator, can be either the xtal
> -       or the pclk.
> -
> -e.g.
> -uart_A: serial@84c0 {
> -       compatible = "amlogic,meson-gx-uart";
> -       reg = <0x0 0x84c0 0x0 0x14>;
> -       interrupts = <GIC_SPI 26 IRQ_TYPE_EDGE_RISING>;
> -       /* Use xtal as baud rate clock source */
> -       clocks = <&xtal>, <&clkc CLKID_UART0>, <&xtal>;
> -       clock-names = "xtal", "pclk", "baud";
> -};
> diff --git a/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
> new file mode 100644
> index 000000000000..e150e3504fa0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/serial/amlogic,meson-uart.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson SoC UART Serial Interface
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +description: |
> +  The Amlogic Meson SoC UART Serial Interface is present on a large range
> +  of SoCs, and can be present either in the "Always-On" power domain or the
> +  "Everything-Else" power domain.
> +
> +  The particularity of the "Always-On" Serial Interface is that the hardware
> +  is active since power-on and does not need any clock gating and is usable
> +  as very early serial console.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: Allways-on power domain UART controller
> +        items:
> +        - enum:
> +          - amlogic,meson6-uart
> +          - amlogic,meson8-uart
> +          - amlogic,meson8b-uart
> +          - amlogic,meson-gx-uart
> +        - const: amlogic,meson-ao-uart
> +      - description: Everything-Else power domain UART controller
> +        enum:
> +        - amlogic,meson6-uart
> +        - amlogic,meson8-uart
> +        - amlogic,meson8b-uart
> +        - amlogic,meson-gx-uart
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 3
> +    maxItems: 3

Should list out what each clock is.

items:
  - description: external xtal clock identifier
  - description: the bus core clock, either the clk81 clock or the gate clock
  - description: the source of the baudrate generator, can be either
the xtal or the pclk

This makes minItems/maxItems implicit.

> +
> +  clock-names:
> +    description: |
> +      "xtal" for external xtal clock identifier
> +      "pclk" for the bus core clock, either the clk81 clock or the gate clock
> +      "baud" for the source of the baudrate generator, can be either the xtal
> +      or the pclk.

Then this description can be dropped.

> +    items:
> +      - const: xtal
> +      - const: pclk
> +      - const: baud
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names

interrupts?

If the old binding was wrong, it's fine to fix here. Just mention what
you're fixing in the commit message.

> +
> +examples:
> +  - |
> +    serial@84c0 {
> +          compatible = "amlogic,meson-gx-uart";
> +          reg = <0x84c0 0x14>;
> +          interrupts = <26>;
> +          clocks = <&xtal>, <&pclk>, <&xtal>;
> +          clock-names = "xtal", "pclk", "baud";
> +    };
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
