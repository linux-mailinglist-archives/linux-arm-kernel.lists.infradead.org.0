Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC8382720
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfffmfxZZNSwUONSnhxdxtLuMXK5jDWnsD3n3MJqF6U=; b=qCinnWfBIDoHzW
	EgrXJBk2JylDK+nhNXIU/KaH6rqq8F7Ed7wmUkh33Z0Ie73C2CdbdKMDqvSK8ly8b0vFssAZx+j0e
	QyQnVjFQ4s4+Ll4wt1N++DMQiL0AF6yYcRR9cHQXPNcEe+XWKqVv0jw3VBquhDk6MCmCED81ewfhj
	2ojZ8n+xFIAGMREiDOz2j8iNuUrlXQM70xlD6aWlxTBWBj77XoCZza78lrzUyBn0Cc8ZKufUawjcV
	5J3wbXV+Cm1nvc274xxaCj/L68/mds4Mx1heGTLDmz8MLcvcLhoXCabdpkgiExCmtqvQHx0tI7fAz
	+nnPDTP7oBKV3CyIEooQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huko2-00056r-ID; Mon, 05 Aug 2019 21:46:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huknp-00055X-SZ; Mon, 05 Aug 2019 21:46:03 +0000
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D11620C01;
 Mon,  5 Aug 2019 21:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565041561;
 bh=subSU4ANuK0qDVBd0vAG1AnkJerzP5pOi4fyuHG8xv8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=13tUIInKnE4eHNYqfY1p4vcbK2rEnqAFvan1kVXBDW5FZeUc/8i5HWU+RjTF0itMs
 +boDbn8fAivIGCUSTItUaBOwiciY4eztk4XvucyK4bMgGINLKBaIPaggQPc9KbX1nR
 7PC+lVjFWRm3eoAteReg3RaM3tm6BqPXNMJG6WrY=
Received: by mail-qt1-f170.google.com with SMTP id r6so78278454qtt.0;
 Mon, 05 Aug 2019 14:46:01 -0700 (PDT)
X-Gm-Message-State: APjAAAXvt8WQpT9xLUdZP/Q/NKozVgAiU5SWTVszlwpkMYTZEssIR89r
 +Wi6JHWypyyJ+vfrbN6wiaTvdTbEyLAGJJBivQ==
X-Google-Smtp-Source: APXvYqzBwGXmcn81biCg4KLoojhRENYm4XDLvNlQS3MkA879bNBj02ITgrBwmCGub/Tr10uEARqqTe/pjnCfytTfQ3E=
X-Received: by 2002:aed:3f10:: with SMTP id p16mr249407qtf.110.1565041560261; 
 Mon, 05 Aug 2019 14:46:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190805120320.32282-1-narmstrong@baylibre.com>
 <20190805120320.32282-4-narmstrong@baylibre.com>
In-Reply-To: <20190805120320.32282-4-narmstrong@baylibre.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 5 Aug 2019 15:45:48 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+WQ6KAE+d2_Pu03s6cSbu4PUErUWrGj81cAivTBNWBxQ@mail.gmail.com>
Message-ID: <CAL_Jsq+WQ6KAE+d2_Pu03s6cSbu4PUErUWrGj81cAivTBNWBxQ@mail.gmail.com>
Subject: Re: [RFCv2 3/9] dt-bindings: spi: meson: convert to yaml
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_144601_966998_47ED2307 
X-CRM114-Status: GOOD (  16.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-spi <linux-spi@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 6:03 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic SPI controllers over to two separate YAML schemas.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/spi/amlogic,meson-gx-spicc.yaml  | 67 +++++++++++++++++++
>  .../bindings/spi/amlogic,meson6-spifc.yaml    | 53 +++++++++++++++
>  .../devicetree/bindings/spi/spi-meson.txt     | 55 ---------------
>  3 files changed, 120 insertions(+), 55 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
>  create mode 100644 Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-meson.txt
>
> diff --git a/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
> new file mode 100644
> index 000000000000..49b617c98ae7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/amlogic,meson-gx-spicc.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/spi/amlogic,meson-gx-spicc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson SPI Communication Controller
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +
> +description: |
> +  The Meson SPICC is a generic SPI controller for general purpose Full-Duplex
> +  communications with dedicated 16 words RX/TX PIO FIFOs.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-gx-spicc # SPICC controller on Amlogic GX and compatible SoCs
> +      - amlogic,meson-axg-spicc # SPICC controller on Amlogic AXG and compatible SoCs
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    description: input clock for the baud rate generator
> +    items:
> +      - const: core
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  - |
> +    spi@c1108d80 {
> +          compatible = "amlogic,meson-gx-spicc";
> +          reg = <0xc1108d80 0x80>;
> +          interrupts = <112>;
> +          clocks = <&clk81>;
> +          clock-names = "core";
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          ethernet-switch@0 {
> +              compatible = "micrel,ks8995m";
> +              spi-max-frequency = <1000000>;
> +              reg = <0>;
> +          };
> +    };
> +
> diff --git a/Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml b/Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
> new file mode 100644
> index 000000000000..67dcedc81a5e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/amlogic,meson6-spifc.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/spi/amlogic,meson6-spifc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson SPI Flash Controller
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +
> +description: |
> +  The Meson SPIFC is a controller optimized for communication with SPI
> +  NOR memories, without DMA support and a 64-byte unified transmit /
> +  receive buffer.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson6-spifc # SPI Flash Controller on Meson6 and compatible SoCs
> +      - amlogic,meson-gxbb-spifc # SPI Flash Controller on GXBB and compatible SoCs
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +examples:
> +  - |
> +    spi@c1108c80 {
> +          compatible = "amlogic,meson6-spifc";
> +          reg = <0xc1108c80 0x80>;
> +          clocks = <&clk81>;
> +          #address-cells = <1>;
> +          #size-cells = <0>;
> +
> +          flash: m25p80@0 {

flash@0

I need to write a schema for this or I'll never stop giving this comment...

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

> +              compatible = "spansion,m25p80", "jedec,spi-nor";
> +              reg = <0>;
> +              spi-max-frequency = <40000000>;
> +          };
> +    };
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
