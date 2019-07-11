Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B085065EB0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 19:34:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlY8S8xVWv8/l5MxTYnauOQEdaXW0FZowQu90tNPi/Q=; b=SamPu++Q6iLBFg
	68fAMjAIC9pOmpBloweR4W/D8zvzhrvEUfzHkbK20PRJ01sLZZSWXlBsCDgOryxe49CeOiUNph772
	uaOA3OMYAc01VPMPntnxHkBM2O6DmWGKwww6oOLinMU6wSwakflgs7UIGOPZAwgei3p4IFwmsI4Am
	ZzoVuTPn8R02f021jgHSYCS5q5n2bgFl3Qhpm35mSP+R6vt8eENAmYVbE6C3/kVRdjwNq+wnMF+QX
	yL5RHSbQLkpwkNYkisq+nRoSujVPlKP+1WB6ib70YcBQmFOGN8puTxYM3FugiZGKSPCHUv7JSaS8G
	xDc96AVHrsa/qRea5Tww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlcxI-00085Q-Q3; Thu, 11 Jul 2019 17:34:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlcwx-00084S-SP
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 17:33:45 +0000
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 340B921670
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 17:33:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562866422;
 bh=zqhPb2oAGKoCkNFyISU+5AP+rwJicpwT0WCuFuDmmfY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mcSl8FdX2iGtSqxD6gKtzKChXuIH1McE33wG65Fu4kog2+zxp0w4pd5vkManrJzJT
 X788MV26q6BjJdmnvG7Mvxtc2ZTdPqjKpFJ/ETjI+peCvVygIZSEjpGc6GtNMm6xjo
 YOp5S64IdB9IgUybWec0FxJGs1hbsQWBCP+Ut6CQ=
Received: by mail-qk1-f174.google.com with SMTP id t8so4283797qkt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 10:33:42 -0700 (PDT)
X-Gm-Message-State: APjAAAX6K/cHZWy/o3rSQz/VEDyG2X9ASOwC0bR56ZrN3coGLLsysK4C
 g+S0e3g6NI7uJOWag10wOQhQ4PU6HQdVOZHbQA==
X-Google-Smtp-Source: APXvYqxiQdcwj4k5sQshf/YxJBG3tGFJGkg/XguY+QAVpESWH2Q0zZl+I1EhiBoulpQ6D5vcPivvknOAwfJkwC3o4Wo=
X-Received: by 2002:a05:620a:1447:: with SMTP id
 i7mr2913253qkl.254.1562866421381; 
 Thu, 11 Jul 2019 10:33:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190711092158.14678-1-maxime.ripard@bootlin.com>
In-Reply-To: <20190711092158.14678-1-maxime.ripard@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 11 Jul 2019 11:33:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLh8QEwa-3v9-Vs=e55k3GyyvwsNVxmdBMWMD_VxqKMyA@mail.gmail.com>
Message-ID: <CAL_JsqLh8QEwa-3v9-Vs=e55k3GyyvwsNVxmdBMWMD_VxqKMyA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: dma: Add YAML schemas for the generic
 DMA bindings
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Jon Hunter <jonathanh@nvidia.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_103343_955375_F3C28AC0 
X-CRM114-Status: GOOD (  34.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Chen-Yu Tsai <wens@csie.org>, Vinod Koul <vkoul@kernel.org>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 3:34 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> The DMA controllers and consumers have a bunch of generic properties that
> are needed in a device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> ---
>  .../devicetree/bindings/dma/dma-consumer.yaml |  60 +++++++++

This already exists in the dt-schema/schemas/dma/dma.yaml though not
the descriptions because that needs relicensing.

Looks like we need NVidia's (Jon H) and TI's (Peter U) permission.

>  .../bindings/dma/dma-controller.yaml          |  79 ++++++++++++
>  Documentation/devicetree/bindings/dma/dma.txt | 114 +-----------------
>  3 files changed, 140 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-consumer.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-controller.yaml
>
> diff --git a/Documentation/devicetree/bindings/dma/dma-consumer.yaml b/Documentation/devicetree/bindings/dma/dma-consumer.yaml
> new file mode 100644
> index 000000000000..2f6315863ad1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/dma-consumer.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/dma-consumer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DMA Consumer Generic Binding
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +select: true
> +
> +properties:
> +  dmas:
> +    description:
> +      List of one or more DMA specifiers, each consisting of
> +          - A phandle pointing to DMA controller node
> +          - A number of integer cells, as determined by the
> +            \#dma-cells property in the node referenced by phandle
> +            containing DMA controller specific information. This
> +            typically contains a DMA request line number or a
> +            channel number, but can contain any data that is
> +            required for configuring a channel.
> +
> +  dma-names:
> +    description:
> +      Contains one identifier string for each DMA specifier in the
> +      dmas property. The specific strings that can be used are defined
> +      in the binding of the DMA client device.  Multiple DMA
> +      specifiers can be used to represent alternatives and in this
> +      case the dma-names for those DMA specifiers must be identical
> +      (see examples).
> +
> +dependencies:
> +  dma-names: [ dmas ]
> +
> +examples:
> +  - |
> +    /* A device with one DMA read channel, one DMA write channel */
> +    i2c1: i2c@1 {
> +         /* ... */
> +         dmas = <&dma 2>,      /* read channel */
> +                <&dma 3>;      /* write channel */
> +        dma-names = "rx", "tx";
> +        /* ... */
> +    };
> +
> +  - |
> +    /* A single read-write channel with three alternative DMA controllers */
> +    dmas = <&dma1 5>, <&dma2 7>, <&dma3 2>;
> +    dma-names = "rx-tx", "rx-tx", "rx-tx";
> +
> +  - |
> +    /* A device with three channels, one of which has two alternatives */
> +    dmas = <&dma1 2>,          /* read channel */
> +           <&dma1 3>,          /* write channel */
> +           <&dma2 0>,          /* error read */
> +           <&dma3 0>;          /* alternative error read */
> +    dma-names = "rx", "tx", "error", "error";
> diff --git a/Documentation/devicetree/bindings/dma/dma-controller.yaml b/Documentation/devicetree/bindings/dma/dma-controller.yaml
> new file mode 100644
> index 000000000000..17c650131b78
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/dma-controller.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/dma-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DMA Controller Generic Binding
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  Generic binding to provide a way for a driver using DMA Engine to
> +  retrieve the DMA request or channel information that goes from a
> +  hardware device to a DMA controller.
> +
> +properties:
> +  $nodename:
> +    pattern: "^dma-controller(@.*)?$"
> +
> +  "#dma-cells":
> +    # minimum: 1
> +    description:
> +      Used to provide DMA controller specific information.
> +
> +  dma-channel-masks:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Bitmask of available DMA channels in ascending order that are
> +      not reserved by firmware and are available to the
> +      kernel. i.e. first channel corresponds to LSB.
> +
> +  dma-channels:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Number of DMA channels supported by the controller.
> +
> +  dma-masters:
> +    $ref: /schemas/types.yaml#definitions/phandle-array
> +    description:
> +      DMA routers are transparent IP blocks used to route DMA request
> +      lines from devices to the DMA controller. Some SoCs (like TI
> +      DRA7x) have more peripherals integrated with DMA requests than
> +      what the DMA controller can handle directly.
> +
> +      In such a case, dma-masters is an array of phandle to the DMA
> +      controllers the router can direct the signal to.
> +
> +  dma-requests:
> +    $ref: /schemas/types.yaml#definitions/uint32
> +    description:
> +      Number of DMA request signals supported by the controller.
> +
> +examples:
> +  - |
> +    dma: dma@48000000 {

dma-controller@...

This is a case where I'd like some check that the schema is actually
applied to the schema's example.

> +        compatible = "ti,omap-sdma";
> +        reg = <0x48000000 0x1000>;
> +        interrupts = <0 12 0x4
> +                      0 13 0x4
> +                      0 14 0x4
> +                      0 15 0x4>;
> +        #dma-cells = <1>;
> +        dma-channels = <32>;
> +        dma-requests = <127>;
> +        dma-channel-mask = <0xfffe>;
> +    };
> +
> +  - |
> +    sdma_xbar: dma-router@4a002b78 {
> +        compatible = "ti,dra7-dma-crossbar";
> +        reg = <0x4a002b78 0xfc>;
> +        #dma-cells = <1>;
> +        dma-requests = <205>;
> +        ti,dma-safe-map = <0>;
> +        dma-masters = <&sdma>;
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/dma/dma.txt b/Documentation/devicetree/bindings/dma/dma.txt
> index eeb4e4d1771e..90a67a016a48 100644
> --- a/Documentation/devicetree/bindings/dma/dma.txt
> +++ b/Documentation/devicetree/bindings/dma/dma.txt
> @@ -1,113 +1 @@
> -* Generic DMA Controller and DMA request bindings
> -
> -Generic binding to provide a way for a driver using DMA Engine to retrieve the
> -DMA request or channel information that goes from a hardware device to a DMA
> -controller.
> -
> -
> -* DMA controller
> -
> -Required property:
> -- #dma-cells:          Must be at least 1. Used to provide DMA controller
> -                       specific information. See DMA client binding below for
> -                       more details.
> -
> -Optional properties:
> -- dma-channels:        Number of DMA channels supported by the controller.
> -- dma-requests:        Number of DMA request signals supported by the
> -                       controller.
> -- dma-channel-mask:    Bitmask of available DMA channels in ascending order
> -                       that are not reserved by firmware and are available to
> -                       the kernel. i.e. first channel corresponds to LSB.
> -
> -Example:
> -
> -       dma: dma@48000000 {
> -               compatible = "ti,omap-sdma";
> -               reg = <0x48000000 0x1000>;
> -               interrupts = <0 12 0x4
> -                             0 13 0x4
> -                             0 14 0x4
> -                             0 15 0x4>;
> -               #dma-cells = <1>;
> -               dma-channels = <32>;
> -               dma-requests = <127>;
> -               dma-channel-mask = <0xfffe>
> -       };
> -
> -* DMA router
> -
> -DMA routers are transparent IP blocks used to route DMA request lines from
> -devices to the DMA controller. Some SoCs (like TI DRA7x) have more peripherals
> -integrated with DMA requests than what the DMA controller can handle directly.
> -
> -Required property:
> -- dma-masters:         phandle of the DMA controller or list of phandles for
> -                       the DMA controllers the router can direct the signal to.
> -- #dma-cells:          Must be at least 1. Used to provide DMA router specific
> -                       information. See DMA client binding below for more
> -                       details.
> -
> -Optional properties:
> -- dma-requests:        Number of incoming request lines the router can handle.
> -- In the node pointed by the dma-masters:
> -       - dma-requests: The router driver might need to look for this in order
> -                       to configure the routing.
> -
> -Example:
> -       sdma_xbar: dma-router@4a002b78 {
> -               compatible = "ti,dra7-dma-crossbar";
> -               reg = <0x4a002b78 0xfc>;
> -               #dma-cells = <1>;
> -               dma-requests = <205>;
> -               ti,dma-safe-map = <0>;
> -               dma-masters = <&sdma>;
> -       };
> -
> -* DMA client
> -
> -Client drivers should specify the DMA property using a phandle to the controller
> -followed by DMA controller specific data.
> -
> -Required property:
> -- dmas:                        List of one or more DMA specifiers, each consisting of
> -                       - A phandle pointing to DMA controller node
> -                       - A number of integer cells, as determined by the
> -                         #dma-cells property in the node referenced by phandle
> -                         containing DMA controller specific information. This
> -                         typically contains a DMA request line number or a
> -                         channel number, but can contain any data that is
> -                         required for configuring a channel.
> -- dma-names:           Contains one identifier string for each DMA specifier in
> -                       the dmas property. The specific strings that can be used
> -                       are defined in the binding of the DMA client device.
> -                       Multiple DMA specifiers can be used to represent
> -                       alternatives and in this case the dma-names for those
> -                       DMA specifiers must be identical (see examples).
> -
> -Examples:
> -
> -1. A device with one DMA read channel, one DMA write channel:
> -
> -       i2c1: i2c@1 {
> -               ...
> -               dmas = <&dma 2          /* read channel */
> -                       &dma 3>;        /* write channel */
> -               dma-names = "rx", "tx";
> -               ...
> -       };
> -
> -2. A single read-write channel with three alternative DMA controllers:
> -
> -       dmas = <&dma1 5
> -               &dma2 7
> -               &dma3 2>;
> -       dma-names = "rx-tx", "rx-tx", "rx-tx";
> -
> -3. A device with three channels, one of which has two alternatives:
> -
> -       dmas = <&dma1 2                 /* read channel */
> -               &dma1 3                 /* write channel */
> -               &dma2 0                 /* error read */
> -               &dma3 0>;               /* alternative error read */
> -       dma-names = "rx", "tx", "error", "error";
> +This file has been moved to dma-controller.yaml.
> --
> 2.21.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
