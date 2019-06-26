Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B530157002
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 19:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cejJFboJ4/KI1T5C+9kcYaaH4Sxv5qZHl1vvwzP7H8=; b=s2i4sTzTA3iElq
	NjrZ9v1M5wyRonPu1xY5TXEBYu4B/p2wojVCnAmHyLBM/3o9uZuHM5fNjcCtWyF5KWMWigm9JVNGg
	btEPOIuFumdOZxSGTLK3U/VFwcjDUbNJ6Y5eduiE8w8K2xVrLxcP0rHaKngVMzd8hi6JK9IZ1+rrG
	ATw/MU6JUOTfGDVYIKn7N+8OiAM+QYF1TltmKKjaibGy89AuGzT+S646PmidoDR30Jc7QXMZgnYhf
	ngf0k9J0ZFm3H+Svs7+88Qdj3/cFB/Key2jmtoHf6lMUNlqeCf6ZW5jradAe892V6rkGIRxG5sEWH
	3dTMBMkxgxV388f/YhgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgC5b-0005Bg-7x; Wed, 26 Jun 2019 17:52:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgC5L-0005Ap-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 17:51:57 +0000
Received: from localhost (c-67-164-175-55.hsd1.co.comcast.net [67.164.175.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B046B216FD;
 Wed, 26 Jun 2019 17:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561571514;
 bh=Sca4Z3OaKtXYUI/5YyPbiGGtd0DSIOE2gztWP1tFwRg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LZnYzW45b3DGtb+CSPIw9lW7eg1jZASAqQPgdDRKfJ/J8WWC8+6IG/TKWE9KqQEdV
 1qvhJ3wa+JEDaYDwsmK2m9ViNBpE+a6nXrW7LmK++vw19GHOw3SzLOY98opv9FCoEH
 8lOrIL5bqyp5EksDA0XqzgVxiLhcPXvGcyMNLcNo=
Date: Wed, 26 Jun 2019 12:51:53 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCHv2 2/2] PCI: layerscape: EP and RC drivers are compiled
 separately
Message-ID: <20190626175153.GC103694@google.com>
References: <20190626111139.32878-1-xiaowei.bao@nxp.com>
 <20190626111139.32878-2-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190626111139.32878-2-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_105155_934363_99C46C2F 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, roy.zang@nxp.com, lorenzo.pieralisi@arm.com,
 arnd@arndb.de, devicetree@vger.kernel.org, gregkh@linuxfoundation.org,
 kstewart@linuxfoundation.org, linuxppc-dev@lists.ozlabs.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 minghuan.Lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, pombredanne@nexb.com, leoyang.li@nxp.com,
 shawnguo@kernel.org, shawn.lin@rock-chips.com, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If you post another revision for any reason, please change the subject
so it's worded as a command and mentions the new config options, e.g.,

  PCI: layerscape: Add CONFIG_PCI_LAYERSCAPE_EP to build EP/RC separately

On Wed, Jun 26, 2019 at 07:11:39PM +0800, Xiaowei Bao wrote:
> Compile the EP and RC drivers separately with different configuration
> options, this looks clearer.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
> v2:
>  - No change.
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
