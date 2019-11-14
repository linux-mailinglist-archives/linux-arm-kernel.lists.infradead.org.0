Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3C0FA7E4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 05:15:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dK+ur50Deq3iSRGdMjk6AiReXazAfL9wXKEuSkYnIGY=; b=W9rvjqv5/IzpHo
	pYzNIFk4DlLpcKZ+/smmUjQcC91F1cM6NwzBbDMWmcetnSGcXc/qZioUhBRHr/kK96QvfEh+qhxbq
	YrwM57SwuF/dy8OmixnPvhCFKTga5BzqcDqOXZNlG6s8wPL/GNJfRK9+5/YGnPUvPJxCv2C8mYiwh
	eDZBpipQdvVTVWr2L4RZc2R4qautSQknX/QbSAILD5Xpin6TqtaHOYZkEYYypnV8lCJkGJBSkfXlp
	T9A43xC4BBvydQR2YLI1uU2ihLwMOG6hf6VktshYBWlz8vOrfuBHhRt+KGqWmQA/5k+Yj5nKRRWlE
	3hELmxXb72L+1rQJ3JpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUk4H-0000rI-7A; Wed, 13 Nov 2019 04:15:45 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUk47-0000qk-NO; Wed, 13 Nov 2019 04:15:37 +0000
Received: by mail-ot1-f68.google.com with SMTP id f10so477362oto.3;
 Tue, 12 Nov 2019 20:15:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Fu3Y/4lCeDSudNWi+wvYdwt8kDwqIxhy6RedI/4rb48=;
 b=KU1HaAYoD/xIyR2a/FRun7sYOqpn9V1IoHJU+GMlOHIm0LenFeSYqxHqjiccsvPYfO
 S28gPjSjJ7O07judELOU6f0q+AaMuHlodrS5YE5iwOp2a9i1fQ11EZxDqloq6bzSySz8
 7XysDR/jh0XtBcg8MNOVAwf+tWZmSod+0fd5IN1bJPs7ZlJk4N+9DLhWoS/2ij3th+bN
 K1QXOGVaCZIVDzF/Z67/xmGvw4odGvC0qDa32fJO7kWwuWGPgrtlemvYN+G3JspUEZSv
 2s6iv6gK7CME2/sqxntuuqWjMUZd7HR7T4xELuaWL6dD5eFotQ1aPXPgFEVuPumpZeSj
 l1ew==
X-Gm-Message-State: APjAAAVAixfhe43ZUhlG6Cxhc7cTNFtQ+jHE2LywYEvpt2CrMiyYsWjB
 BwhR07h1nrs9UZ35dqJtFw==
X-Google-Smtp-Source: APXvYqxbN5/QlD1YTfwus6CP4J23kgOsBx8dLDfsU2Js+cOxTe7uQW9y/ENAShKBJ4fIZy7N6jInJw==
X-Received: by 2002:a9d:a63:: with SMTP id 90mr1061108otg.346.1573618534975;
 Tue, 12 Nov 2019 20:15:34 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o14sm295660oie.24.2019.11.12.20.15.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 20:15:34 -0800 (PST)
Date: Tue, 12 Nov 2019 22:15:33 -0600
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 1/4] dt-bindings: pci: add bindings for brcmstb's PCIe
 device
Message-ID: <20191113041533.GA25497@bogus>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <20191106214527.18736-2-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106214527.18736-2-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_201535_764991_5D75ACF0 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 james.quinlan@broadcom.com, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 10:45:23PM +0100, Nicolas Saenz Julienne wrote:
> From: Jim Quinlan <james.quinlan@broadcom.com>
> 
> The DT bindings description of the brcmstb PCIe device is described.
> This node can only be used for now on the Raspberry Pi 4.
> 
> This was based on Jim's original submission[1], converted to yaml and
> adapted to the RPi4 case.
> 
> [1] https://patchwork.kernel.org/patch/10605937/
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  .../bindings/pci/brcm,stb-pcie.yaml           | 116 ++++++++++++++++++
>  1 file changed, 116 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml

I'm working on a common PCI host schema that should cut down some of the 
standard props.

> diff --git a/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> new file mode 100644
> index 000000000000..0b81c26f8568
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/brcm,stb-pcie.yaml
> @@ -0,0 +1,116 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings please:

# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/brcm,stb-pcie.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Brcmstb PCIe Host Controller Device Tree Bindings
> +
> +maintainers:
> +  - Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> +
> +properties:
> +  compatible:
> +    const: brcm,bcm2711-pcie # The Raspberry Pi 4
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - description: PCIe host controller
> +      - description: builtin MSI controller
> +
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      - const: pcie
> +      - const: msi
> +
> +  "#address-cells":
> +    const: 3
> +
> +  "#size-cells":
> +    const: 2
> +
> +  "#interrupt-cells":
> +    const: 1
> +
> +  interrupt-map-mask: true
> +
> +  interrupt-map: true

4 entries?

You'll need to bracket <> each entry in the example and dts.

> +
> +  ranges: true

How many entries?

> +
> +  dma-ranges: true

How many entries?

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: sw_pcie
> +
> +  msi-controller:
> +    description: Identifies the node as an MSI controller.
> +    type: boolean
> +
> +  msi-parent:
> +    description: MSI controller the device is capable of using.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  linux,pci-domain:
> +    description: PCI domain ID. Should be unique for each host controller.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  brcm,enable-ssc:
> +    description: Indicates usage of spread-spectrum clocking.
> +    type: boolean
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#address-cells"
> +  - "#size-cells"
> +  - "#interrupt-cells"
> +  - interrupt-map-mask
> +  - interrupt-map
> +  - ranges
> +  - dma-ranges
> +  - linux,pci-domain
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    scb {
> +            #address-cells = <2>;
> +            #size-cells = <1>;
> +            pcie0: pcie@7d500000 {
> +                    compatible = "brcm,bcm2711-pcie";
> +                    reg = <0x0 0x7d500000 0x9310>;
> +                    #address-cells = <3>;
> +                    #size-cells = <2>;
> +                    #interrupt-cells = <1>;
> +                    interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +                                 <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +                    interrupt-names = "pcie", "msi";
> +                    interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +                    interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH
> +                                     0 0 0 2 &gicv2 GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH
> +                                     0 0 0 3 &gicv2 GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH
> +                                     0 0 0 4 &gicv2 GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
> +                    msi-parent = <&pcie0>;
> +                    msi-controller;
> +                    ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000 0x0 0x04000000>;
> +                    dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000 0x0 0x80000000>;
> +                    linux,pci-domain = <0>;
> +                    brcm,enable-ssc;
> +            };
> +    };
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
