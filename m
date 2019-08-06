Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D107B83981
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 21:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaDo+sHzlfUZTO5p0VCdG3LWmS38L+0+Vs+7d8lVoR0=; b=RENTv7VIZYoNLP
	VMkD/1wER2v5EEOywIOj31vUjsCyURG38Hu5DRyIcBt7SaEySV84WSYam4vcqdnH6DWrivrAtASzT
	mYUSka0At1o5fAOlFKcoEX2zOT/1CpaoGQxrxToDFHF0mZycYW+l2fE/cKukBnfxM2GyxftlSIa5w
	gfEZ9TSMswhiaAR/lPBWJm36UX/YpmGO6/1Df2ZF4yV2kzhFxlbmlJWhTw1K+p5cm/+kOfaLOiIXA
	m1hoQzXIS40HmRxl/sdmOUnhLDNVosWJcZ19aSRgkMPSVUrcPMBy2T6+4yL80GdbZN725nxrB3EYo
	yUJkauJuqE5r+dpdr+aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv4yU-0005UH-Jo; Tue, 06 Aug 2019 19:18:22 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv4yM-0005Sv-PN; Tue, 06 Aug 2019 19:18:16 +0000
Received: by mail-oi1-x243.google.com with SMTP id a127so68194003oii.2;
 Tue, 06 Aug 2019 12:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QksYxQSRVQDPGMXGjLmAF5kWT3zgenhIbfjlqIRDB50=;
 b=iw+xNSGevvMp6QLQVcVDCK0k0UGmX2/q6doQuB+4F7OBPyZTK3hzRgdZyPv1BpuCNR
 41aiHV5FtoCKa7c9e/LEqc6QhaFwd3tNOcUN9yCOJI6Zm91427xrlixL94Wu1vF8XPjI
 lk/YT2YB+3V1T5s1DuyLpLYeVLSqkc5lgcYyWMTEIAf/oqnKgmsRyr8Vv5WYQQCXddgv
 a0y9wO5WiWcFZm6yav6zWYEo2+sguptnPXTLjcnOZc97NgZf4+0SKGbl/8dWSsf2wfyF
 cheAsvSdNs+6FEn03jWyUp6ZC4jz6sgBeJyM+/l58GHPZfm24/PyjQQIaju/mlTAq993
 2exQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QksYxQSRVQDPGMXGjLmAF5kWT3zgenhIbfjlqIRDB50=;
 b=Qsd2VXAC7Z2sDn5UQiyPV/8XidEaHvC4ASk2jyxf4gqkBybXKiH3+fN2KuSh8TZ5Fu
 YmJkOwkFV/PNJRluYjbCP20rsMPu4BDN0bQWSBNGUPQ2XtbwrQs89CKacSDD/8SwElDU
 D+QJjZgPe12dqgrleCPh3X8qYU6ZS3qJ2mE/jeQxTX914WXjebIxYnQYP1tDjUpqggha
 oe3EJF0Im8aPYhGnm3eS8jZTYLNs44jrXGfMzg8wLehcOPwCM0ht5qNAR95ztadZTBWi
 N/viukkII748oPEco1Il8C/oQxnPPIAlJ2N+6O7rmRa1drFa4kpeqFkBHxujTVpLkn60
 rkRQ==
X-Gm-Message-State: APjAAAXaQ7bfSxp6dyU5z7vvlmo0j8UtTT6iYJFo6ykHqqRgelzYd23D
 tglPuHPzmiOpJW/LReBRkyvJcDiXvD9Y3ogszMM=
X-Google-Smtp-Source: APXvYqwZTvJvfIjhNSPBRRSCo+e2K2SBi/qn4E7udh0JEH4LHYhlDQFNci1czKK09aurjIPZPDW+4WBLDxj7tgdfX8I=
X-Received: by 2002:a05:6808:8f0:: with SMTP id
 d16mr2928463oic.47.1565119093090; 
 Tue, 06 Aug 2019 12:18:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com>
 <20190805120320.32282-9-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-9-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 6 Aug 2019 21:18:02 +0200
Message-ID: <CAFBinCBSC-wrSxKajwfQNJuzf3ZGFNS4bYPE8qnJF92gTMK_8w@mail.gmail.com>
Subject: Re: [RFCv2 8/9] dt-bindings: serial: meson-uart: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_121814_845561_3BD563F5 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, robh+dt@kernel.org,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

On Mon, Aug 5, 2019 at 2:06 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic UART Serial controller over to a YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
two nit-picks below, but overall this looks good:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

> ---
>  .../bindings/serial/amlogic,meson-uart.txt    | 38 ----------
>  .../bindings/serial/amlogic,meson-uart.yaml   | 73 +++++++++++++++++++
>  2 files changed, 73 insertions(+), 38 deletions(-)
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
> index 000000000000..5d48a8c04aa9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/amlogic,meson-uart.yaml
> @@ -0,0 +1,73 @@
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
Always instead of Allways

[...]
> +examples:
> +  - |
> +    serial@84c0 {
> +          compatible = "amlogic,meson-gx-uart";
> +          reg = <0x84c0 0x14>;
> +          interrupts = <26>;
> +          clocks = <&xtal>, <&pclk>, <&xtal>;
> +          clock-names = "xtal", "pclk", "baud";
> +    };
more a hint than a nit-pick: you can add #includes to the example,
just like in the real .dtb
then you can keep the GIC_SPI and IRQ_TYPE_... macros

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
