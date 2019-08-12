Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2A489AC9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjEOGuMSPQJT8sb55SQg4K4FbtvzXOwN3lv4ss3IvF8=; b=XYwVHj7p0YbH0W
	a55b72uBazw8TwwLq0/g1+3sBhKscabQzVcrV5yzmvWBCTQtQUzNygrR4IjbYFQgObCMHBkn67USO
	I4zBBpUohCIeSkuzHLOMbg358S6oNTr1DHoaqhcLU92FR8CdzADuKLlOiQcztf7xWbI2DBLzMhZoW
	+Ku14Z24t28EMvUr79jC1FAVrZF26OyOZ4HHql7CvYXdzxex933iUAtorms0h6geQQlANiDGk5XkJ
	Oqr1HGhnj7X46MXOx8RLCNDalg5Zh170QKg+BAejjyqVTNyg7SXGX25LAbmZJN40z9N2qH2NpqfiZ
	uqkvzAaexyLyOl81yqIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7DZ-00052B-6A; Mon, 12 Aug 2019 10:06:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7DP-00050u-2T
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:06:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13F0115A2;
 Mon, 12 Aug 2019 03:06:08 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98CE53F718;
 Mon, 12 Aug 2019 03:06:05 -0700 (PDT)
Date: Mon, 12 Aug 2019 11:06:00 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCHv3 2/2] PCI: layerscape: Add CONFIG_PCI_LAYERSCAPE_EP to
 build EP/RC separately
Message-ID: <20190812100600.GA20861@e121166-lin.cambridge.arm.com>
References: <20190628013826.4705-1-xiaowei.bao@nxp.com>
 <20190628013826.4705-2-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628013826.4705-2-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_030611_204579_9403985A 
X-CRM114-Status: GOOD (  15.66  )
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, arnd@arndb.de,
 devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 kstewart@linuxfoundation.org, linuxppc-dev@lists.ozlabs.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 minghuan.Lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, pombredanne@nexb.com,
 bhelgaas@google.com, leoyang.li@nxp.com, shawnguo@kernel.org,
 shawn.lin@rock-chips.com, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 28, 2019 at 09:38:26AM +0800, Xiaowei Bao wrote:
> Add CONFIG_PCI_LAYERSCAPE_EP to build EP/RC separately.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - No change.
> v3:
>  - modify the commit message.
> 
>  drivers/pci/controller/dwc/Kconfig  |   20 ++++++++++++++++++--
>  drivers/pci/controller/dwc/Makefile |    3 ++-
>  2 files changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index a6ce1ee..a41ccf5 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -131,13 +131,29 @@ config PCI_KEYSTONE_EP
>  	  DesignWare core functions to implement the driver.
>  
>  config PCI_LAYERSCAPE
> -	bool "Freescale Layerscape PCIe controller"
> +	bool "Freescale Layerscape PCIe controller - Host mode"
>  	depends on OF && (ARM || ARCH_LAYERSCAPE || COMPILE_TEST)
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	select MFD_SYSCON
>  	select PCIE_DW_HOST
>  	help
> -	  Say Y here if you want PCIe controller support on Layerscape SoCs.
> +	  Say Y here if you want to enable PCIe controller support on Layerscape
> +	  SoCs to work in Host mode.
> +	  This controller can work either as EP or RC. The RCW[HOST_AGT_PEX]

What's "The RCW" ? This entry should explain why a kernel configuration
should enable it.

Lorenzo

> +	  determines which PCIe controller works in EP mode and which PCIe
> +	  controller works in RC mode.
> +
> +config PCI_LAYERSCAPE_EP
> +	bool "Freescale Layerscape PCIe controller - Endpoint mode"
> +	depends on OF && (ARM || ARCH_LAYERSCAPE || COMPILE_TEST)
> +	depends on PCI_ENDPOINT
> +	select PCIE_DW_EP
> +	help
> +	  Say Y here if you want to enable PCIe controller support on Layerscape
> +	  SoCs to work in Endpoint mode.
> +	  This controller can work either as EP or RC. The RCW[HOST_AGT_PEX]
> +	  determines which PCIe controller works in EP mode and which PCIe
> +	  controller works in RC mode.
>  
>  config PCI_HISI
>  	depends on OF && (ARM64 || COMPILE_TEST)
> diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> index b085dfd..824fde7 100644
> --- a/drivers/pci/controller/dwc/Makefile
> +++ b/drivers/pci/controller/dwc/Makefile
> @@ -8,7 +8,8 @@ obj-$(CONFIG_PCI_EXYNOS) += pci-exynos.o
>  obj-$(CONFIG_PCI_IMX6) += pci-imx6.o
>  obj-$(CONFIG_PCIE_SPEAR13XX) += pcie-spear13xx.o
>  obj-$(CONFIG_PCI_KEYSTONE) += pci-keystone.o
> -obj-$(CONFIG_PCI_LAYERSCAPE) += pci-layerscape.o pci-layerscape-ep.o
> +obj-$(CONFIG_PCI_LAYERSCAPE) += pci-layerscape.o
> +obj-$(CONFIG_PCI_LAYERSCAPE_EP) += pci-layerscape-ep.o
>  obj-$(CONFIG_PCIE_QCOM) += pcie-qcom.o
>  obj-$(CONFIG_PCIE_ARMADA_8K) += pcie-armada8k.o
>  obj-$(CONFIG_PCIE_ARTPEC6) += pcie-artpec6.o
> -- 
> 1.7.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
