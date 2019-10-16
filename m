Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BCBD8DAB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 12:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktWXLv7rZWdTE73H4JxiMYXWIByrmHddvnhf1exHCxo=; b=j2RED60r6t5VsK
	wwkecJqk6Oo8T7/mbE/uIPoExTxaZp2wdhk077t0czQixrs+RWnrPDAgcSmj1O6MTCRLiaUljPg4D
	LydzdF5Ic7X6wPNUjo2nfW/7pfhj+eDVSPPbnVmj8wuHJo0Cno+hzMDObkSd0YbinYpsRtiCKI9km
	NUN1My7u7QiffGK59EsCjnPwIqUAdxKut9muusx4c3pJBw3Ae18hpfAW1LbItPGdHevpGvpabTyI/
	iLmG9X7Ev9GPneyFHRwORXuNV65GiFP5Wf8DqiTP4dNB3Dx9QwaLuVgw9q0uRx0BIQH9pAEd0KaB9
	a6LIAYX1RSleA1dz1H5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKgMP-000471-MG; Wed, 16 Oct 2019 10:16:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKgMH-000461-FX
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 10:16:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87B0528;
 Wed, 16 Oct 2019 03:16:41 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50ECB3F6C4;
 Wed, 16 Oct 2019 03:16:39 -0700 (PDT)
Date: Wed, 16 Oct 2019 11:16:36 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Srinath Mannam <srinath.mannam@broadcom.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: pci: Update iProc PCI binding for
 INTx support
Message-ID: <20191016101636.GB22848@e121166-lin.cambridge.arm.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
 <1566982488-9673-2-git-send-email-srinath.mannam@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566982488-9673-2-git-send-email-srinath.mannam@broadcom.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_031645_603644_2079F1B0 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Arnd Bergmann <arnd@arndb.de>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Bjorn Helgaas <bhelgaas@google.com>, Ray Jui <ray.jui@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 02:24:43PM +0530, Srinath Mannam wrote:
> From: Ray Jui <ray.jui@broadcom.com>
> 
> Update the iProc PCIe binding document for better modeling of the legacy
> interrupt (INTx) support
> 
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
> ---
>  .../devicetree/bindings/pci/brcm,iproc-pcie.txt    | 48 ++++++++++++++++++----
>  1 file changed, 41 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt
> index df065aa..f23decb 100644
> --- a/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt
> +++ b/Documentation/devicetree/bindings/pci/brcm,iproc-pcie.txt
> @@ -13,9 +13,6 @@ controller, used in Stingray
>    PAXB-based root complex is used for external endpoint devices. PAXC-based
>  root complex is connected to emulated endpoint devices internal to the ASIC
>  - reg: base address and length of the PCIe controller I/O register space
> -- #interrupt-cells: set to <1>
> -- interrupt-map-mask and interrupt-map, standard PCI properties to define the
> -  mapping of the PCIe interface to interrupt numbers
>  - linux,pci-domain: PCI domain ID. Should be unique for each host controller
>  - bus-range: PCI bus numbers covered
>  - #address-cells: set to <3>
> @@ -41,6 +38,21 @@ Required:
>  - brcm,pcie-ob-axi-offset: The offset from the AXI address to the internal
>  address used by the iProc PCIe core (not the PCIe address)
>  
> +Legacy interrupt (INTx) support (optional):
> +
> +Note INTx is for PAXB only.
> +- interrupt-map-mask and interrupt-map, standard PCI properties to define
> +the mapping of the PCIe interface to interrupt numbers
> +
> +In addition, a sub-node that describes the legacy interrupt controller built
> +into the PCIe controller.
> +This sub-node must have the following properties:
> + - compatible: must be "brcm,iproc-intc"
> + - interrupt-controller: claims itself as an interrupt controller for INTx
> + - #interrupt-cells: set to <1>
> + - interrupts: interrupt line wired to the generic GIC for INTx support
> + - interrupt-parent: Phandle to the parent interrupt controller
> +
>  MSI support (optional):
>  
>  For older platforms without MSI integrated in the GIC, iProc PCIe core provides
> @@ -77,8 +89,11 @@ Example:
>  		reg = <0x18012000 0x1000>;
>  
>  		#interrupt-cells = <1>;
> -		interrupt-map-mask = <0 0 0 0>;
> -		interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_NONE>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie0_intc 1>,
> +				<0 0 0 2 &pcie0_intc 2>,
> +				<0 0 0 3 &pcie0_intc 3>,
> +				<0 0 0 4 &pcie0_intc 4>;

This is not how the interrupt controller works in your PCI host
bridge.

You are mapping INT{A,B,C,D} to pin 0,1,2,3 of the interrupt
controller.

This is how it is meant to be (which is also removing the completely
bogus need for the (+1) in the irq domain allocation (ie the domain
size is PCI_NUM_INTX not (PCI_NUM_INTX + 1))):

interrupt-map = <0 0 0 1 &pcie0_intc 0>,
		<0 0 0 2 &pcie0_intc 1>,
		<0 0 0 3 &pcie0_intc 2>,
		<0 0 0 4 &pcie0_intc 3>;

We need to write common bindings and kernel code to deal with these PCI
host controller interrupt controllers they are almost all implemented
wrongly in the kernel and copy and paste does the rest.

The IRQ domain subsequent patch is wrong too, please have a look
at how:

drivers/pci/controller/pci-ftpci100.c

models the legacy IRQ domain and follow it.
>  
>  		linux,pci-domain = <0>;
>  
> @@ -98,6 +113,14 @@ Example:
>  
>  		msi-parent = <&msi0>;
>  
> +		pcie0_intc: interrupt-controller {
> +			compatible = "brcm,iproc-intc";
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 100 IRQ_TYPE_NONE>;
> +		};
> +
>  		/* iProc event queue based MSI */
>  		msi0: msi@18012000 {
>  			compatible = "brcm,iproc-msi";
> @@ -115,8 +138,11 @@ Example:
>  		reg = <0x18013000 0x1000>;
>  
>  		#interrupt-cells = <1>;
> -		interrupt-map-mask = <0 0 0 0>;
> -		interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_NONE>;
> +		interrupt-map-mask = <0 0 0 7>;
> +		interrupt-map = <0 0 0 1 &pcie1_intc 1>,
> +				<0 0 0 2 &pcie1_intc 2>,
> +				<0 0 0 3 &pcie1_intc 3>,
> +				<0 0 0 4 &pcie1_intc 4>;
>  
>  		linux,pci-domain = <1>;
>  
> @@ -130,4 +156,12 @@ Example:
>  
>  		phys = <&phy 1 6>;
>  		phy-names = "pcie-phy";
> +
> +		pcie1_intc: interrupt-controller {
> +			compatible = "brcm,iproc-intc";
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +			interrupt-parent = <&gic>;
> +			interrupts = <GIC_SPI 106 IRQ_TYPE_NONE>;
> +		};
>  	};
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
