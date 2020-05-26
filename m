Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 586611E22F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Egvm5iqxBA0RaQM/x3knL0BVdcVi4d1rHjDiM88vZS4=; b=EKfC5WjjtW21Tz
	2zHTZ8RZlLNotLe3gXlo79J6cGdRNWxr8HKvGU3rIjvCU4PuKWtRzYCV0Jo0ZiSK7dheJ+mKTVcPK
	Yts5Fc/0GDI6zRxEoKNdJ0iwswEES6Z9SrVC+Tnq1D1K/MpKt6x/N5b9oTnSop9/uydUG1TriKTn5
	pEAtTs0p0952iPej1dPOVXSntnceSeq1rANu9PORc2ilPiLjC8TCXFCTGbOaUN+EshD6vVbnnh+dx
	Neeemz3GRVbCfJBBZczr7hBxYq8mhQTZsOeHx0YmXBgiYY454XMv8vuX4eRMhXibGU9mKG9uqnmom
	208id2D5wrYEphXYP9ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZjv-0006XY-Tz; Tue, 26 May 2020 13:35:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZjQ-0006AM-Oh
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:35:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C24351FB;
 Tue, 26 May 2020 06:34:58 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DF703F6C4;
 Tue, 26 May 2020 06:34:57 -0700 (PDT)
Date: Tue, 26 May 2020 14:34:50 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, robh+dt@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: PCI: Add UniPhier PCIe endpoint
 controller description
Message-ID: <20200526133450.GA24169@e121166-lin.cambridge.arm.com>
References: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589457801-12796-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589457801-12796-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_063500_902290_89BD53F6 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 09:03:20PM +0900, Kunihiko Hayashi wrote:
> Add DT bindings for PCIe controller implemented in UniPhier SoCs
> when configured in endpoint mode. This controller is based on
> the DesignWare PCIe core.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../bindings/pci/socionext,uniphier-pcie-ep.yaml   | 92 ++++++++++++++++++++++
>  MAINTAINERS                                        |  2 +-
>  2 files changed, 93 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml

Hi Rob,

are you OK with this patch ? Please let me know, I'd like to pull
the series, thanks.

Lorenzo

> diff --git a/Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml b/Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
> new file mode 100644
> index 0000000..f0558b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/socionext,uniphier-pcie-ep.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext UniPhier PCIe endpoint controller
> +
> +description: |
> +  UniPhier PCIe endpoint controller is based on the Synopsys DesignWare
> +  PCI core. It shares common features with the PCIe DesignWare core and
> +  inherits common properties defined in
> +  Documentation/devicetree/bindings/pci/designware-pcie.txt.
> +
> +maintainers:
> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> +
> +allOf:
> +  - $ref: "pci-ep.yaml#"
> +
> +properties:
> +  compatible:
> +    const: socionext,uniphier-pro5-pcie-ep
> +
> +  reg:
> +    maxItems: 4
> +
> +  reg-names:
> +    items:
> +      - const: dbi
> +      - const: dbi2
> +      - const: link
> +      - const: addr_space
> +
> +  clocks:
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: gio
> +      - const: link
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: gio
> +      - const: link
> +
> +  num-ib-windows:
> +    const: 16
> +
> +  num-ob-windows:
> +    const: 16
> +
> +  num-lanes: true
> +
> +  phys:
> +    maxItems: 1
> +
> +  phy-names:
> +    const: pcie-phy
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pcie_ep: pcie-ep@66000000 {
> +        compatible = "socionext,uniphier-pro5-pcie-ep";
> +        reg-names = "dbi", "dbi2", "link", "addr_space";
> +        reg = <0x66000000 0x1000>, <0x66001000 0x1000>,
> +              <0x66010000 0x10000>, <0x67000000 0x400000>;
> +        clock-names = "gio", "link";
> +        clocks = <&sys_clk 12>, <&sys_clk 24>;
> +        reset-names = "gio", "link";
> +        resets = <&sys_rst 12>, <&sys_rst 24>;
> +        num-ib-windows = <16>;
> +        num-ob-windows = <16>;
> +        num-lanes = <4>;
> +        phy-names = "pcie-phy";
> +        phys = <&pcie_phy>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 92657a1..7f26748 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -13211,7 +13211,7 @@ PCIE DRIVER FOR SOCIONEXT UNIPHIER
>  M:	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>  L:	linux-pci@vger.kernel.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/pci/uniphier-pcie.txt
> +F:	Documentation/devicetree/bindings/pci/uniphier-pcie*
>  F:	drivers/pci/controller/dwc/pcie-uniphier.c
>  
>  PCIE DRIVER FOR ST SPEAR13XX
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
