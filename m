Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB10DD3F98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCeOjotmrmbJU9aHMWsUls9ROsjvBqhW1VslDta46uM=; b=GRh2894FAftT52
	Wne2LHQBnfNTXsl9oSssPByJaR6Di05QryjQSBeKbIftjUoJML5VbKACK/60qX02Lf9ERjpMyR/0M
	xb/z08Fz2ou5/C6YouNEybl/bCzEn+/HOhaFMWBWFw2uzPtJu6jEFZnGpWEQySzhYLCO7rWaXCtly
	c0RKowOifzxbUt/smR38JcWjj0cPGLWugcbCp7gpiqz+vf2aFtMqy0sJ9T4zAwhvXkviNCSxvcsCi
	euZFDEaW0M6vnDB5dLwoKWK1zKQpmdOlZXqG0nvIdUmS2sfidHpTdlt8e8MxuMhv0xrRwumdGYrS8
	GXZ0jLrfYncXogIVksKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIu9G-0004Em-8d; Fri, 11 Oct 2019 12:35:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIu97-0004EC-1T
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:35:50 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9755E206A1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 12:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570797348;
 bh=VNgydY1ynFilVs3+OYEfBMfTmvBOmjLQ3dKDPAsRGJk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ebAStlb6ubOzdbNbYRAVygtpjFLr4okk4rxF/Lpg17JMqyoumehNIPoLFtLGLLo2n
 s5UKLrYfdkyy0+L0988pgbQ8OY722qLzYrkCj5wSnQss5JSQOPMyMIsc4k0hQrA/sY
 9ZVZaBJysaaLkUyIzlKv/NzHGQFUt3EGc73zZMvU=
Received: by mail-qt1-f175.google.com with SMTP id n7so13589112qtb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 05:35:48 -0700 (PDT)
X-Gm-Message-State: APjAAAV9qhC74fdhbFAbK0AEtqgTZ9BpCCWWM3rh8ANN1w5mxqioqslL
 NNkGDieVSGXI4pF4mn3TuTj02NlhtkjiRT7+yA==
X-Google-Smtp-Source: APXvYqxPjHzWRhCEa77RLK5XieEQ5KWLu1XccZ9gxrD6cMKqUVp2wpc3H9eDAX5iDitxTvNlqnuBjyFuEMYz2Q5ML9o=
X-Received: by 2002:a0c:ed4f:: with SMTP id v15mr765035qvq.136.1570797347661; 
 Fri, 11 Oct 2019 05:35:47 -0700 (PDT)
MIME-Version: 1.0
References: <20191002151442.15428-1-benjamin.gaignard@st.com>
In-Reply-To: <20191002151442.15428-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 07:35:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKW91A96NXy8kwPp2mdgiifaqJyCQ0n5Mc=zZzoU4VzDg@mail.gmail.com>
Message-ID: <CAL_JsqKW91A96NXy8kwPp2mdgiifaqJyCQ0n5Mc=zZzoU4VzDg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: media: Convert stm32 dcmi bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_053549_121305_D2F03F8A 
X-CRM114-Status: GOOD (  24.87  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hugues Fruchet <hugues.fruchet@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 10:14 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 dcmi binding to DT schema format using json-schema
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../devicetree/bindings/media/st,stm32-dcmi.txt    | 45 ----------
>  .../devicetree/bindings/media/st,stm32-dcmi.yaml   | 97 ++++++++++++++++++++++
>  2 files changed, 97 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
>  create mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt b/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
> deleted file mode 100644
> index 3122ded82eb4..000000000000
> --- a/Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -STMicroelectronics STM32 Digital Camera Memory Interface (DCMI)
> -
> -Required properties:
> -- compatible: "st,stm32-dcmi"
> -- reg: physical base address and length of the registers set for the device
> -- interrupts: should contain IRQ line for the DCMI
> -- resets: reference to a reset controller,
> -          see Documentation/devicetree/bindings/reset/st,stm32-rcc.txt
> -- clocks: list of clock specifiers, corresponding to entries in
> -          the clock-names property
> -- clock-names: must contain "mclk", which is the DCMI peripherial clock
> -- pinctrl: the pincontrol settings to configure muxing properly
> -           for pins that connect to DCMI device.
> -           See Documentation/devicetree/bindings/pinctrl/st,stm32-pinctrl.yaml.
> -- dmas: phandle to DMA controller node,
> -        see Documentation/devicetree/bindings/dma/stm32-dma.txt
> -- dma-names: must contain "tx", which is the transmit channel from DCMI to DMA
> -
> -DCMI supports a single port node with parallel bus. It should contain one
> -'port' child node with child 'endpoint' node. Please refer to the bindings
> -defined in Documentation/devicetree/bindings/media/video-interfaces.txt.
> -
> -Example:
> -
> -       dcmi: dcmi@50050000 {
> -               compatible = "st,stm32-dcmi";
> -               reg = <0x50050000 0x400>;
> -               interrupts = <78>;
> -               resets = <&rcc STM32F4_AHB2_RESET(DCMI)>;
> -               clocks = <&rcc 0 STM32F4_AHB2_CLOCK(DCMI)>;
> -               clock-names = "mclk";
> -               pinctrl-names = "default";
> -               pinctrl-0 = <&dcmi_pins>;
> -               dmas = <&dma2 1 1 0x414 0x3>;
> -               dma-names = "tx";
> -               port {
> -                       dcmi_0: endpoint {
> -                               remote-endpoint = <...>;
> -                               bus-width = <8>;
> -                               hsync-active = <0>;
> -                               vsync-active = <0>;
> -                               pclk-sample = <1>;
> -                       };
> -               };
> -       };
> diff --git a/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> new file mode 100644
> index 000000000000..50e8cfed06f3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> @@ -0,0 +1,97 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/st,stm32-dcmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 Digital Camera Memory Interface (DCMI) binding
> +
> +maintainers:
> +  - Hugues Fruchet <hugues.fruchet@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-dcmi
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock

'maxItems: 1' is sufficient here as the description doesn't add anything.

> +
> +  clock-names:
> +    items:
> +      - const: mclk
> +
> +  pinctrl-names: true

This gets added automatically.

> +
> +  dmas:
> +    description:
> +      One DMA channel specifier following the convention outlined
> +      in bindings/dma/dma.txt

Drop this.

> +    maxItems: 1
> +
> +  dma-names:
> +    description:
> +      There must be one channel named "tx" for transmit

The schema says all this already.

> +    maxItems: 1

This is implied.

> +    additionalItems: true

This is wrong. You can't have more items because you set the max to 1.

> +    items:
> +      - const: tx
> +
> +  resets:
> +        maxItems: 1

Inconsistent indentation.

> +
> +  port:
> +    type: object
> +    description:
> +      DCMI supports a single port node with parallel bus. It should contain
> +      one 'port' child node with child 'endpoint' node. Please refer to the
> +      bindings defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +patternProperties:
> +  "^pinctrl-[0-9]+$": true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - dmas
> +  - dma-names
> +  - port
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    dcmi: dcmi@4c006000 {
> +        compatible = "st,stm32-dcmi";
> +        reg = <0x4c006000 0x400>;
> +        interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
> +        resets = <&rcc CAMITF_R>;
> +        clocks = <&rcc DCMI>;
> +        clock-names = "mclk";
> +        dmas = <&dmamux1 75 0x400 0x0d>;
> +        dma-names = "tx";
> +
> +        port {
> +             dcmi_0: endpoint {
> +                   remote-endpoint = <&ov5640_0>;
> +                   bus-width = <8>;
> +                   hsync-active = <0>;
> +                   vsync-active = <0>;
> +                   pclk-sample = <1>;
> +             };
> +        };
> +    };
> +
> +...
> --
> 2.15.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
