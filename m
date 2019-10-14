Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51EC4D6482
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 15:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcSm9gPasbMQJ+0pyZl0CpDrhSxqbK2Q08XX2Dfi1QM=; b=cLABKIWo6Ljqo/
	sCclsNY3zaLAuOojGYd3Ro1mga9upu0+/DF1RFd1bIAN1fYqs37YON0im5r6Ldj3+32+8gIs4dlXM
	ZWrOHbUHuG/bqUShWcyp+Ovgn+cvXGz6EKlWgs57q0PVGJRdeoFc8dER2XTDMLY9SWds2f1voR2QZ
	U4C6GJWVL+Nqj+UU88hdYMGGqHofFFqMhaMUK95X/+e9sSwQnUKEHXbE4FMzz1MRw26sSad4KkjhB
	DCaiYA2dI+zZNxEExwm4TA+Lom6xmOvypm9r0/7x7/hiuL2jdB/atCUYiLcaW7xAj9H2v3sT7wPWO
	RIyYPfiabaS1qAUMkihg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK0qy-00031k-5u; Mon, 14 Oct 2019 13:57:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK0qn-00030o-II
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 13:57:31 +0000
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84D1721928
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 13:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571061444;
 bh=LLH2uQ5gYg+SBXTksDYlU+T3+fs82qQa6ba8XCr/GLI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WhWA0Z26YBfhBAV8RCEZEMYp1v+sqt+colar2WnzuXDlL8iW6T6nbdwUUz7lR8xRD
 k0e4PvOQpMwHU+2BFSDNQzxl86uVe5XU5vttQ3NcDIoX47dI8JTqJVYmbE02q9jLiH
 nUhPVzxIyECh8oC7bBNWteH980agEaehLbva3a1w=
Received: by mail-qt1-f175.google.com with SMTP id o12so25567861qtf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 06:57:24 -0700 (PDT)
X-Gm-Message-State: APjAAAWjCoZ1WRgFBSJEbBE9H4N+yEsdhE5Sp0N0pWKea6EJKhVpG0kn
 LNgU7Dm5ELrOKvHBn3gowNQFNbexWAE6JdlzVw==
X-Google-Smtp-Source: APXvYqwX1KUTrKD9PfICXLuavHN6lAAtm6esRog7N3VFNyl9RY+ZCu7FqNsYVhKlnuWqdkfPcoK1JtogLpjhrB86EEs=
X-Received: by 2002:ac8:6782:: with SMTP id b2mr32574382qtp.143.1571061443573; 
 Mon, 14 Oct 2019 06:57:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191014091622.23562-1-benjamin.gaignard@st.com>
In-Reply-To: <20191014091622.23562-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 14 Oct 2019 08:57:11 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Z7G31vBhHn_csntOsBLnZoLFU0qZHk67kdC1kahd4kQ@mail.gmail.com>
Message-ID: <CAL_Jsq+Z7G31vBhHn_csntOsBLnZoLFU0qZHk67kdC1kahd4kQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: display: Convert stm32 display bindings
 to json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_065729_643865_8E35862C 
X-CRM114-Status: GOOD (  22.90  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexandre Torgue <alexandre.torgue@st.com>, David Airlie <airlied@linux.ie>,
 Philippe Cornu <philippe.cornu@st.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Yannick Fertre <yannick.fertre@st.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 4:16 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 display binding to DT schema format using json-schema.
> Split the original bindings in two yaml files:
> - one for display controller (ltdc)
> - one for DSI controller
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v3:
> - use (GPL-2.0-only OR BSD-2-Clause) license
>
> changes in v2:
> - use BSD-2-Clause license
> - add panel property
> - fix identation
> - remove pinctrl-names: true
> - remove pinctrl-[0-9]+: true
> - rework ports block to include port@0 and port@1
> - use const for #adress-cells and #size-cells
> - add additionalProperties: false
>
>  .../devicetree/bindings/display/st,stm32-dsi.yaml  | 151 +++++++++++++++++++++
>  .../devicetree/bindings/display/st,stm32-ltdc.txt  | 144 --------------------
>  .../devicetree/bindings/display/st,stm32-ltdc.yaml |  81 +++++++++++
>  3 files changed, 232 insertions(+), 144 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/st,stm32-ltdc.txt
>  create mode 100644 Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
> new file mode 100644
> index 000000000000..8dd727c7533e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/st,stm32-dsi.yaml
> @@ -0,0 +1,151 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/st,stm32-dsi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 DSI host controller
> +
> +maintainers:
> +  - Philippe Cornu <philippe.cornu@st.com>
> +  - Yannick Fertre <yannick.fertre@st.com>
> +
> +description:
> +  The STMicroelectronics STM32 DSI controller uses the Synopsys DesignWare MIPI-DSI host controller.
> +
> +properties:
> +  compatible:
> +    const: st,stm32-dsi
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Module Clock
> +      - description: DSI bus clock
> +      - description: Pixel clock
> +    minItems: 2
> +    maxItems: 3
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: ref
> +      - const: px_clk
> +    minItems: 2
> +    maxItems: 3
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: apb
> +
> +  phy-dsi-supply:
> +    maxItems: 1
> +    description:
> +        Phandle of the regulator that provides the supply voltage.
> +
> +  ports:
> +    type: object
> +    description:
> +      A node containing DSI input & output port nodes with endpoint
> +      definitions as documented in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt
> +      Documentation/devicetree/bindings/graph.txt
> +    properties:
> +      port@0:
> +        type: object
> +        description:
> +          DSI input port node, connected to the ltdc rgb output port.
> +
> +      port@1:
> +        type: object
> +        description:
> +          DSI output port node, connected to a panel or a bridge input port"
> +
> +patternProperties:
> +  "^(panel|panel-dsi)@[0-9]$":
> +    type: object
> +    description:
> +      A node containing the panel or bridge description as documented in
> +      Documentation/devicetree/bindings/display/mipi-dsi-bus.txt
> +    properties:
> +      port@0:

You can drop this. The unit address for the panel port is decided by
the panel binding, not this one.

> +        type: object
> +        description:
> +          Panel or bridge port node, connected to the DSI output port (port@1)

[...]

> diff --git a/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml b/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
> new file mode 100644
> index 000000000000..94a4137f7236
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/st,stm32-ltdc.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/st,stm32-ltdc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32 lcd-tft display controller
> +
> +maintainers:
> +  - Philippe Cornu <philippe.cornu@st.com>
> +  - Yannick Fertre <yannick.fertre@st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32-ltdc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 2
> +    maxItems: 2

Need to describe what each interrupt is.

items:
  - description: ...
  - description: ...

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: lcd
> +
> +  resets:
> +    maxItems: 1
> +
> +  port:
> +    type: object
> +    description:
> +      "Video port for DPI RGB output.
> +      ltdc has one video port with up to 2 endpoints:
> +      - for external dpi rgb panel or bridge, using gpios.
> +      - for internal dpi input of the MIPI DSI host controller.
> +      Note: These 2 endpoints cannot be activated simultaneously.
> +      Please refer to the bindings defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt."
> +
> +  dma-ranges:
> +    maxItems: 1

dma-ranges goes in bus nodes, not device nodes.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stm32mp1-clks.h>
> +    #include <dt-bindings/reset/stm32mp1-resets.h>
> +    ltdc: display-controller@40016800 {
> +        compatible = "st,stm32-ltdc";
> +        reg = <0x5a001000 0x400>;
> +        interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&rcc LTDC_PX>;
> +        clock-names = "lcd";
> +        resets = <&rcc LTDC_R>;
> +
> +        port {
> +             ltdc_out_dsi: endpoint {
> +                     remote-endpoint = <&dsi_in>;
> +             };
> +        };
> +    };
> +
> +...
> +
> --
> 2.15.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
