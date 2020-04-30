Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 029611BEE28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 04:13:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zd2CnbCLdCJWp4Ag8YV1AC9tLbk+hWpKKXJvf4L5TTc=; b=GQxtDC+AWT2FIj
	govZFzxQDye5g/F3+rU0gCgj7k9mdKOx8+IVFfLs1roch91gbg7fVyKMLNh4TBh5+OMun/TZnBAc9
	jxr/fCbXDrG9AuIugKlJLGF9LH6ku8Tf++V4PAKwRoTzHaqj0PxtJCozOPJuyiebj7OEAkJpd+I/T
	/uFYyhs4mdvMUl3qLPf5S5bbcvarAYZJIG0ENhvqnR/bp+VifxS/+oKt7X7rxBqFVqDolvAiXU2LB
	iFeR6U4y9TesLkEj4Aa8FVko11nNekfEWQShcQmevf0doD+DGgWU2GhDLSx5ylMeNaRdbknugaZsp
	H5mSbnI/2h4OPtXfVbAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTyhn-0002Xr-Dz; Thu, 30 Apr 2020 02:13:39 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTyhe-0002XP-SM
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 02:13:32 +0000
Received: by mail-ot1-f68.google.com with SMTP id z17so3625470oto.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 19:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kv25T34DmFJSTkCcpG3EkQ4F91aBPygfe37SiYRfZ1w=;
 b=H+m23YzSaO14XAfhK0ljDjtToyI2zL4uC8GwlYD1sW+waHJBthTGuCYFOetCbyj9RF
 iYXdtq00fVUTsDMU5JF911UWXz2uhMpdLg6gQFQWogBMBokdYmTCU49ZPr6yRIOBUbxl
 8yB2S9aa8a//oM/09eclSmJWJSyShqZsZZqduov0byMcrcrfcz/itN3SlTtB67DrXedl
 aOWyr7d1YLM2T6pSSlOZBsOI5+M25SNKMlAHJCQ7rTKxCnTtIAKrZuIqtVIufEB/EXRn
 x72tH+pIonyXvpSxo8yClkViyIcy8yEHLdNJrCVTKNimqXHJUvLfNLfegvwq7EmQLsVF
 a3nQ==
X-Gm-Message-State: AGi0PubhC6apjzhLYEiNEnANKJjtbH468x5pKAoWyC1fe2q3x8xytXY5
 EDgEdNYcr8lIYH4U5TEpLw==
X-Google-Smtp-Source: APiQypKCVHjHs9J7+JAq/qDUcEL9ABy6N/M3B+18ySskwV1Nxa/XGc71ZP1EJkAjD4Yq5SIhFutpbA==
X-Received: by 2002:a9d:810:: with SMTP id 16mr772676oty.56.1588212810207;
 Wed, 29 Apr 2020 19:13:30 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id z13sm884559oth.10.2020.04.29.19.13.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 19:13:29 -0700 (PDT)
Received: (nullmailer pid 21985 invoked by uid 1000);
 Thu, 30 Apr 2020 02:13:28 -0000
Date: Wed, 29 Apr 2020 21:13:28 -0500
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v3 11/14] dt-bindings: PCI: Add EP mode dt-bindings for
 TI's J721E SoC
Message-ID: <20200430021327.GA18326@bogus>
References: <20200417125753.13021-1-kishon@ti.com>
 <20200417125753.13021-12-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417125753.13021-12-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_191330_913635_F5E80BBA 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 06:27:50PM +0530, Kishon Vijay Abraham I wrote:
> Add PCIe EP mode dt-bindings for TI's J721E SoC.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/pci/ti,j721e-pci-ep.yaml         | 89 +++++++++++++++++++
>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> new file mode 100644
> index 000000000000..cb25c45d5a96
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/pci/ti,j721e-pci-ep.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: TI J721E PCI EP (PCIe Wrapper)
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +allOf:
> +  - $ref: "cdns-pcie-ep.yaml#"
> +
> +properties:
> +  compatible:
> +      enum:
> +          - ti,j721e-pcie-ep

Wrong indentation.

Otherwise,

Reviewed-by: Rob Herring <robh@kernel.org>

> +
> +  reg:
> +    maxItems: 4
> +
> +  reg-names:
> +    items:
> +      - const: intd_cfg
> +      - const: user_cfg
> +      - const: reg
> +      - const: mem
> +
> +  ti,syscon-pcie-ctrl:
> +    description: Phandle to the SYSCON entry required for configuring PCIe mode
> +                 and link speed.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: clock-specifier to represent input to the PCIe
> +
> +  clock-names:
> +    items:
> +      - const: fck
> +
> +  dma-coherent:
> +    description: Indicates that the PCIe IP block can ensure the coherency
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - ti,syscon-pcie-ctrl
> +  - max-link-speed
> +  - num-lanes
> +  - power-domains
> +  - clocks
> +  - clock-names
> +  - cdns,max-outbound-regions
> +  - dma-coherent
> +  - max-functions
> +  - phys
> +  - phy-names
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +     pcie0_ep: pcie-ep@d000000 {
> +            compatible = "ti,j721e-pcie-ep";
> +            reg = <0x00 0x02900000 0x00 0x1000>,
> +                  <0x00 0x02907000 0x00 0x400>,
> +                  <0x00 0x0d000000 0x00 0x00800000>,
> +                  <0x00 0x10000000 0x00 0x08000000>;
> +            reg-names = "intd_cfg", "user_cfg", "reg", "mem";
> +            ti,syscon-pcie-ctrl = <&pcie0_ctrl>;
> +            max-link-speed = <3>;
> +            num-lanes = <2>;
> +            power-domains = <&k3_pds 239 TI_SCI_PD_EXCLUSIVE>;
> +            clocks = <&k3_clks 239 1>;
> +            clock-names = "fck";
> +            cdns,max-outbound-regions = <16>;
> +            max-functions = /bits/ 8 <6>;
> +            dma-coherent;
> +            phys = <&serdes0_pcie_link>;
> +            phy-names = "pcie-phy";
> +    };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
