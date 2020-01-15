Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAB513B715
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 02:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBL8/ye5rSUILmykNUPpJEPbxeGXCc/GgsbUQKSpk/I=; b=uSppFy2Qx5ZK9z
	nS8lkaKFGaWQo19cgiufask6US3laubppMpX2VidMzxkroWHmIgeka3ydK3ohDyNxMGzMISUX40AU
	/V3IiotFQrtisKj4i8i2d0a7xQUowRgVYW5yhrUvEu/Ul2sI2bVuepwny+et+fpVz7MNa5TTfg1yj
	7z1TMj7WJ9ngSeR5Hrm+U+Z7WqvRmmVpVQM8yLK2cWa6y82auFB+IPtAuFMIIr8C5XXEahlyH7SWf
	8wdYIi2/kKlOWME36gBNKpUGWVOAKcfeUOFHK+CzFd8NQ6mmN1Ougtn8tNMPLHtdw0n0X7AgteOrq
	b8U86vD6lHLFvSRDGJOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irXfo-0003S8-Qt; Wed, 15 Jan 2020 01:40:44 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irXfb-0003QV-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 01:40:32 +0000
Received: by mail-oi1-f195.google.com with SMTP id v140so13922660oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 17:40:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3bD/LT4C3MC6J/wcM/SaP9VxFISKGm7IY0gKpOMd0Pg=;
 b=r9U3bmUPoZ3tPDzbR8azLhlRC0oxaNsD0HB8KqeF07Vnhbpl3oVeh9XPmRoBsUIOdR
 iH0cfeT2e4qZq0HVOeKGDEWOxq66IFB2wM3Qf2OtDrZ6bbQ+Nn22FxEcFIRrQ2+/6pd4
 Jc3saEs18DVUGcugBF2VWzgNB2qRQSjZ52mNjvOqB2wsLpkzsYVGweCpxYU5hLQtc7/o
 wX9cYp3asFQOesHLVNtFB5uG3IY6HZ1sfLREwabeOs0qAIAYg75N9wA0bEsV5P4o5b9m
 OMU+gmO1Msk7fHDlvoYunkA/yhzVfDXyJk+MCRwWQ+g1Ccl9NJeXJFp7+WEqNHSdtv8e
 V4kQ==
X-Gm-Message-State: APjAAAVgLoLoAJnfIQ+UDsxeSeBlgsHpYRggeJ0kQ3l/NnbT7PugfPGq
 2VSf7HNqPatKTT5PX/fYGUvgdOo=
X-Google-Smtp-Source: APXvYqzADNIzVwDrHwePG9eOdTFls6WQcv6HYaHD8kCvLSfEWlzg/QZ6//dMOW96d/D5jsNQ2jHz9Q==
X-Received: by 2002:aca:c551:: with SMTP id v78mr19484846oif.161.1579052428623; 
 Tue, 14 Jan 2020 17:40:28 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h1sm6046643otn.6.2020.01.14.17.40.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 17:40:27 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2209ae
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 19:40:26 -0600
Date: Tue, 14 Jan 2020 19:40:26 -0600
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH 2/7] dt-bindings: PCI: cadence: Add binding to specify
 max virtual functions
Message-ID: <20200115014026.GA10726@bogus>
References: <20191231113534.30405-1-kishon@ti.com>
 <20191231113534.30405-3-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191231113534.30405-3-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_174031_500056_44247013 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>,
 Jonathan Corbet <corbet@lwn.net>, Jingoo Han <jingoohan1@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tom Joseph <tjoseph@cadence.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 05:05:29PM +0530, Kishon Vijay Abraham I wrote:
> Add binding to specify maximum number of virtual functions that can be
> associated with each physical function.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../devicetree/bindings/pci/cdns,cdns-pcie-ep.txt         | 2 ++
>  .../devicetree/bindings/pci/ti,j721e-pci-ep.yaml          | 8 ++++++++
>  2 files changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> index 4a0475e2ba7e..432578202733 100644
> --- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> +++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
> @@ -9,6 +9,8 @@ Required properties:
>  
>  Optional properties:
>  - max-functions: Maximum number of functions that can be configured (default 1).
> +- max-virtual-functions: Maximum number of virtual functions that can be
> +    associated with each physical function.
>  - phys: From PHY bindings: List of Generic PHY phandles. One per lane if more
>    than one in the list.  If only one PHY listed it must manage all lanes. 
>  - phy-names:  List of names to identify the PHY.
> diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> index 4621c62016c7..1d4964ba494f 100644
> --- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> +++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
> @@ -61,6 +61,12 @@ properties:
>      minimum: 1
>      maximum: 6
>  
> +  max-virtual-functions:
> +    minItems: 1
> +    maxItems: 6

Is there a PCIe spec limit to number of virtual functions per phy 
function? Or 2^32 virtual functions is okay.

> +    description: As defined in
> +                 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt

I suspect this this be a common property.

> +
>    dma-coherent:
>      description: Indicates that the PCIe IP block can ensure the coherency
>  
> @@ -85,6 +91,7 @@ required:
>    - cdns,max-outbound-regions
>    - dma-coherent
>    - max-functions
> +  - max-virtual-functions
>    - phys
>    - phy-names
>  
> @@ -107,6 +114,7 @@ examples:
>              clock-names = "fck";
>              cdns,max-outbound-regions = <16>;
>              max-functions = /bits/ 8 <6>;
> +            max-virtual-functions = /bits/ 16 <4 4 4 4 0 0>;
>              dma-coherent;
>              phys = <&serdes0_pcie_link>;
>              phy-names = "pcie_phy";
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
