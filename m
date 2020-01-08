Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397531339B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 04:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UDP6sNHrefNrgG5SY3nMxQuQVjeLmj6vWoCb3b8UO7k=; b=BgJJCp3RS93TSs
	6w9mnk1zynAtod94mz0OPzAUExK07t3RqtildG8PUZU6JWH77FVJfLA6nVogLG1RBRvzDOrA6/jB9
	xFTAgZgtmwOR4xND2sMm8PHJtNKsgJdcloULeBFZID6PBUqGIb5+zuxyvaX22GP8TTikD50onH48H
	U59zSQu9I+I0fuKByh+y30Gtxeeoq7IyeIgVCIU9yPzPN1b4YnQ9yf3UTxj8biFk8/xfLyqa9ZXRr
	qWNpV8Dyqy9AxDb8ajRv0Z9sM48wlVdTyImjnuKWIr5sizAxo5o6Ev+mKJGYFqunWOF7vR5x/Qvf0
	l8EAnE0ugfHqytZwPddQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2Fj-0003tR-2J; Wed, 08 Jan 2020 03:43:27 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2Fb-0003t7-RN
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 03:43:21 +0000
Received: by mail-oi1-f195.google.com with SMTP id c77so1481179oib.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 19:43:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ilH05ihXEuc/NhF/tPgNdcykj6uPjvXn5uaHX6J7/Ak=;
 b=MyoFoufpIBxU63/pqyjjE0jXF7RT14jq8QAwTCMxMdZuIWuvBvjAX7mmnwt8qyLAWG
 kC1/5l6OPu4XPIJtoZ7bEOZAeG4ltQRpAGifL57RXPhHUyINGzwBhS7qQ2V/xUCUov2N
 pPZw4PbQaiK4Um7SUlCekXjpVgK5DIkdke8Sk2eah/ItRbaq7lCXTfqf307dAWxQQLa1
 zTTn4oG8dLBN3wU8MP5In0xZ4U9UP0HtwN+J1dhkk4GJ1ackEcrrCK6zpbsh5KpKOj5Y
 +K1ZHj0EhwC/IUzn/85+5wv8wa3JGzBpTJJAhagPqLvBt0YaNgvgT/RVTd8G/0+rYz0T
 NWbw==
X-Gm-Message-State: APjAAAU+zyKxcMq7Sy9kNn8xUUxD4noEmiUwC18Ej0eZqKaCRaCcm613
 26XXsHkAazmsIIRfMWFio92PdP8=
X-Google-Smtp-Source: APXvYqyREuYzTaUCc81d9bD3tovpHQlihrT/yPi2w5+GeyYpe3PtXy/xt6bB2VPtbYwdwVrXNakNAA==
X-Received: by 2002:a05:6808:3d0:: with SMTP id
 o16mr1484358oie.79.1578454997452; 
 Tue, 07 Jan 2020 19:43:17 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v25sm638254otk.51.2020.01.07.19.43.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 19:43:15 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219e3
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 07 Jan 2020 21:43:14 -0600
Date: Tue, 7 Jan 2020 21:43:14 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v2 01/14] dt-bindings: PCI: cadence: Add PCIe RC/EP DT
 schema for Cadence PCIe
Message-ID: <20200108034314.GA5412@bogus>
References: <20200106102058.19183-1-kishon@ti.com>
 <20200106102058.19183-2-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106102058.19183-2-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_194319_887243_FF7B74ED 
X-CRM114-Status: GOOD (  18.69  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 03:50:45PM +0530, Kishon Vijay Abraham I wrote:
> Add PCIe Host (RC) and Endpoint (EP) device tree schema for Cadence
> PCIe core library. Platforms using Cadence PCIe core can include the
> schemas added here in the platform specific schemas.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../devicetree/bindings/pci/cdns-pcie-ep.yaml | 20 ++++++++++++
>  .../bindings/pci/cdns-pcie-host.yaml          | 30 +++++++++++++++++
>  .../devicetree/bindings/pci/cdns-pcie.yaml    | 32 +++++++++++++++++++
>  3 files changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/cdns-pcie.yaml

Need to remove the old files.

Note that I posted a conversion of Cadence host[1]. Yours goes further, 
but please compare and add anything mine has that yours doesn't.

[1] https://lore.kernel.org/linux-pci/20191231193903.15929-2-robh@kernel.org/

> 
> diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
> new file mode 100644
> index 000000000000..36aaae5931c3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/cdns-pcie-ep.yaml
> @@ -0,0 +1,20 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +--
> +$id: "http://devicetree.org/schemas/pci/cdns-pcie-ep.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Cadence PCIe Endpoint
> +
> +maintainers:
> +  - Tom Joseph <tjoseph@cadence.com>
> +
> +allOf:
> +  - $ref: "cdns-pcie.yaml#"
> +
> +properties:
> +  max-functions:
> +    description: Maximum number of functions that can be configured (default 1)
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint8
> diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
> new file mode 100644
> index 000000000000..78261bc4f0c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/cdns-pcie-host.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/pci/cdns-pcie-host.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Cadence PCIe Host
> +
> +maintainers:
> +  - Tom Joseph <tjoseph@cadence.com>
> +
> +allOf:
> +  - $ref: "/schemas/pci/pci-bus.yaml#"
> +  - $ref: "cdns-pcie.yaml#"
> +
> +properties:
> +  vendor-id:
> +    description: The PCI vendor ID (16 bits, default is design dependent)
> +
> +  device-id:
> +    description: The PCI device ID (16 bits, default is design dependent)

While these got defined here as 16-bits, these should be fixed to 32-bit 
because they are established properties for a long time.

> +
> +  cdns,no-bar-match-nbits:
> +    description: Set into the no BAR match register to configure the number
> +      of least significant bits kept during inbound (PCIe -> AXI) address
> +      translations (default 32)
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

What about compatible?

> +
> diff --git a/Documentation/devicetree/bindings/pci/cdns-pcie.yaml b/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
> new file mode 100644
> index 000000000000..497d3dc2e6f2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/cdns-pcie.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/pci/cdns-pcie.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Cadence PCIe Core
> +
> +maintainers:
> +  - Tom Joseph <tjoseph@cadence.com>
> +
> +properties:
> +  max-link-speed:
> +    minimum: 1
> +    maximum: 3
> +
> +  num-lanes:
> +    minimum: 1
> +    maximum: 2

Needs a type.

The Cadence IP can't support x4, x8, or x16?

> +
> +  cdns,max-outbound-regions:
> +    description: Set to maximum number of outbound regions.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  phys:
> +    description: List of Generic PHY phandles. One per lane if more than one in
> +      the list. If only one PHY listed it must manage all lanes.
> +
> +  phy-names:
> +    description: List of names to identify the PHY.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
