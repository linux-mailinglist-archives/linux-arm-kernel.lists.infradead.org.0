Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91833B61FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 13:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bf0Lbna/NQKxzDWTvfRrLzjpKLZ/em0/x9QrEsIz1Sg=; b=dJC5i8N9oiQDtB
	oj82eCEWGU5g+9tFEi90RY2CMCtgpdLNAbgLze9aLfeuWYq9cx5+S+SgiLt4M3DVNlb4ZX2vpmvAJ
	5iv4Qr7ixAfOB3DcQMtaBDvAarPoym4aBQYWaHPIfPI6bAV/yxkBPHLRaPSgY0gAsOSL7c2IeLXob
	H9oV1cmMX6+JzXhggcmFmb1qLVdCXK/luPqUhndjKFn/6fuIQqIHdelFoUmgsO403cTFmuzhG/yjC
	CmUi3aLwVJfl+cOWdM39ljc2QtRKjGdfjdbS68cNc2dQ6rlM9RBUOoFh5uuoWv5AGEvlNRfzvnxtf
	cT2E9/vjK9ubIYQp1O5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXkk-0000jp-Jx; Wed, 18 Sep 2019 11:04:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXkX-0000iT-LA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 11:03:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8574F337;
 Wed, 18 Sep 2019 04:03:52 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 749493F59C;
 Wed, 18 Sep 2019 04:03:51 -0700 (PDT)
Date: Wed, 18 Sep 2019 12:03:49 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv8 1/7] PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge
 IP driver
Message-ID: <20190918110349.GE9720@e119886-lin.cambridge.arm.com>
References: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
 <20190813110557.45643-2-Zhiqiang.Hou@nxp.com>
 <20190917113636.GW9720@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917113636.GW9720@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_040353_846167_D0EB36A1 
X-CRM114-Status: GOOD (  35.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 17, 2019 at 12:36:37PM +0100, Andrew Murray wrote:
> Hi Hou Zhiqiang,
> 
> Apologies if I bring up any feedback that has previously been discussed as
> I've only recently began reviewing controller patches.
> 
> On Tue, Aug 13, 2019 at 11:03:57AM +0000, Z.q. Hou wrote:
> > From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > 
> > Refactor the Mobiveil PCIe Host Bridge IP driver to make
> > it easier to add support for both RC and EP mode driver.
> > This patch moved the Mobiveil driver to an new directory
> 
> Rephase to "This patch moves the Mobiveil driver to a new directory"
> 
> Also with regards to the commit title: "Refactor Mobiveil PCIe Host
> Bridge" - this is a very generic phrase and could mean anything. It would
> be more helpful to be specific, e.g. "Move definitions to header file" or
> "Split driver into host and platform parts" or similar.
> 
> > 'drivers/pci/controller/mobiveil' and refactor it according
> > to the RC and EP abstraction.
> > 
> > Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> > Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> > Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > ---
> > V8:
> >  - Re-generate the patch on the new code base.
> > 
> >  MAINTAINERS                                   |   2 +-
> >  drivers/pci/controller/Kconfig                |  11 +-
> >  drivers/pci/controller/Makefile               |   2 +-
> >  drivers/pci/controller/mobiveil/Kconfig       |  24 +
> >  drivers/pci/controller/mobiveil/Makefile      |   4 +
> >  .../pcie-mobiveil-host.c}                     | 525 +++---------------
> >  .../controller/mobiveil/pcie-mobiveil-plat.c  |  59 ++
> >  .../pci/controller/mobiveil/pcie-mobiveil.c   | 227 ++++++++
> >  .../pci/controller/mobiveil/pcie-mobiveil.h   | 189 +++++++
> >  9 files changed, 592 insertions(+), 451 deletions(-)
> >  create mode 100644 drivers/pci/controller/mobiveil/Kconfig
> >  create mode 100644 drivers/pci/controller/mobiveil/Makefile
> >  rename drivers/pci/controller/{pcie-mobiveil.c => mobiveil/pcie-mobiveil-host.c} (54%)
> >  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
> >  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.c
> >  create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.h
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index df85ee4dbdc7..0d88e0d3960b 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -12367,7 +12367,7 @@ M:	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> >  L:	linux-pci@vger.kernel.org
> >  S:	Supported
> >  F:	Documentation/devicetree/bindings/pci/mobiveil-pcie.txt
> > -F:	drivers/pci/controller/pcie-mobiveil.c
> > +F:	drivers/pci/controller/mobiveil/pcie-mobiveil*
> >  
> >  PCI DRIVER FOR MVEBU (Marvell Armada 370 and Armada XP SOC support)
> >  M:	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> > diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> > index fe9f9f13ce11..dec8e038cb17 100644
> > --- a/drivers/pci/controller/Kconfig
> > +++ b/drivers/pci/controller/Kconfig
> > @@ -241,16 +241,6 @@ config PCIE_MEDIATEK
> >  	  Say Y here if you want to enable PCIe controller support on
> >  	  MediaTek SoCs.
> >  
> > -config PCIE_MOBIVEIL
> > -	bool "Mobiveil AXI PCIe controller"
> > -	depends on ARCH_ZYNQMP || COMPILE_TEST
> > -	depends on OF
> > -	depends on PCI_MSI_IRQ_DOMAIN
> > -	help
> > -	  Say Y here if you want to enable support for the Mobiveil AXI PCIe
> > -	  Soft IP. It has up to 8 outbound and inbound windows
> > -	  for address translation and it is a PCIe Gen4 IP.
> > -
> >  config PCIE_TANGO_SMP8759
> >  	bool "Tango SMP8759 PCIe controller (DANGEROUS)"
> >  	depends on ARCH_TANGO && PCI_MSI && OF
> > @@ -282,4 +272,5 @@ config VMD
> >  	  module will be called vmd.
> >  
> >  source "drivers/pci/controller/dwc/Kconfig"
> > +source "drivers/pci/controller/mobiveil/Kconfig"
> >  endmenu
> > diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
> > index d56a507495c5..b79a615041a0 100644
> > --- a/drivers/pci/controller/Makefile
> > +++ b/drivers/pci/controller/Makefile
> > @@ -26,11 +26,11 @@ obj-$(CONFIG_PCIE_ROCKCHIP) += pcie-rockchip.o
> >  obj-$(CONFIG_PCIE_ROCKCHIP_EP) += pcie-rockchip-ep.o
> >  obj-$(CONFIG_PCIE_ROCKCHIP_HOST) += pcie-rockchip-host.o
> >  obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
> > -obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
> >  obj-$(CONFIG_PCIE_TANGO_SMP8759) += pcie-tango.o
> >  obj-$(CONFIG_VMD) += vmd.o
> >  # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
> >  obj-y				+= dwc/
> > +obj-y				+= mobiveil/
> >  
> >  
> >  # The following drivers are for devices that use the generic ACPI
> > diff --git a/drivers/pci/controller/mobiveil/Kconfig b/drivers/pci/controller/mobiveil/Kconfig
> > new file mode 100644
> > index 000000000000..64343c07bfed
> > --- /dev/null
> > +++ b/drivers/pci/controller/mobiveil/Kconfig
> > @@ -0,0 +1,24 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +menu "Mobiveil PCIe Core Support"
> > +	depends on PCI
> > +
> > +config PCIE_MOBIVEIL
> > +	bool
> > +
> > +config PCIE_MOBIVEIL_HOST
> > +        bool
> > +	depends on PCI_MSI_IRQ_DOMAIN
> > +        select PCIE_MOBIVEIL
> 
> This has the same inconsistent indentation as dwc/Kconfig - please you use
> tabs here instead of spaces for the 'depends' line.
> 
> > +
> > +config PCIE_MOBIVEIL_PLAT
> > +	bool "Mobiveil AXI PCIe controller"
> > +	depends on ARCH_ZYNQMP || COMPILE_TEST
> > +	depends on OF
> > +	select PCIE_MOBIVEIL_HOST
> > +	help
> > +	  Say Y here if you want to enable support for the Mobiveil AXI PCIe
> > +	  Soft IP. It has up to 8 outbound and inbound windows
> > +	  for address translation and it is a PCIe Gen4 IP.
> 
> Does this description describe both host and EP?

Apologies, I misread your cover letter and expected an EP driver. I can see
that this series does not add an EP driver, so please ignore the above
comment.

> 
> There appears to be two existing in-tree approaches to sharing code between EP
> and host:
> 
>  The 'dwc' approach (the one you've taken) - this puts has its own directory,
>  vendor.c, vendor-ep.c, vendor-host.c and vendor-plat.c files.
> 
>  The 'cadence','rockchip' approach - this uses the same directory and has a
>  vendor.c, vendor-ep.c and vendor-host.c
> 
> The 'dwc' approach is well suited for its own directory because there are
> many DWC drivers and probably many more to come. Why have you chosen this
> approach?

I'm still interested in why this approach - is there an expectation of future
Mobiveil drivers?

Thanks,

Andrew Murray

> 
> > +
> > +endmenu
> > diff --git a/drivers/pci/controller/mobiveil/Makefile b/drivers/pci/controller/mobiveil/Makefile
> > new file mode 100644
> > index 000000000000..9fb6d1c6504d
> > --- /dev/null
> > +++ b/drivers/pci/controller/mobiveil/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
> > +obj-$(CONFIG_PCIE_MOBIVEIL_HOST) += pcie-mobiveil-host.o
> > +obj-$(CONFIG_PCIE_MOBIVEIL_PLAT) += pcie-mobiveil-plat.o
> > diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> > similarity index 54%
> > rename from drivers/pci/controller/pcie-mobiveil.c
> > rename to drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> > index a45a6447b01d..995487c4f760 100644
> > --- a/drivers/pci/controller/pcie-mobiveil.c
> > +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> > @@ -3,10 +3,12 @@
> >   * PCIe host controller driver for Mobiveil PCIe Host controller
> >   *
> >   * Copyright (c) 2018 Mobiveil Inc.
> > + * Copyright 2019 NXP
> > + *
> >   * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > + * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
> 
> I'm not sure the value of adding a 'Refactor:' tag here. It's not
> a tag I've seen anywhere else in the kernel. I'd rather people rely
> on git log to understand the revision history. Though I wouldn't have
> any objection to you adding yourself alongside Subrahmanya as a
> co-author.
> 
> >   */
> >  
> > -#include <linux/delay.h>
> >  #include <linux/init.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/irq.h>
> > @@ -23,274 +25,21 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/slab.h>
> >  
> > -#include "../pci.h"
> > -
> > -/* register offsets and bit positions */
> > -
> > -/*
> > - * translation tables are grouped into windows, each window registers are
> > - * grouped into blocks of 4 or 16 registers each
> > - */
> > -#define PAB_REG_BLOCK_SIZE		16
> > -#define PAB_EXT_REG_BLOCK_SIZE		4
> > -
> > -#define PAB_REG_ADDR(offset, win)	\
> > -	(offset + (win * PAB_REG_BLOCK_SIZE))
> > -#define PAB_EXT_REG_ADDR(offset, win)	\
> > -	(offset + (win * PAB_EXT_REG_BLOCK_SIZE))
> > -
> > -#define LTSSM_STATUS			0x0404
> > -#define  LTSSM_STATUS_L0_MASK		0x3f
> > -#define  LTSSM_STATUS_L0		0x2d
> > -
> > -#define PAB_CTRL			0x0808
> > -#define  AMBA_PIO_ENABLE_SHIFT		0
> > -#define  PEX_PIO_ENABLE_SHIFT		1
> > -#define  PAGE_SEL_SHIFT			13
> > -#define  PAGE_SEL_MASK			0x3f
> > -#define  PAGE_LO_MASK			0x3ff
> > -#define  PAGE_SEL_OFFSET_SHIFT		10
> > -
> > -#define PAB_AXI_PIO_CTRL		0x0840
> > -#define  APIO_EN_MASK			0xf
> > -
> > -#define PAB_PEX_PIO_CTRL		0x08c0
> > -#define  PIO_ENABLE_SHIFT		0
> > -
> > -#define PAB_INTP_AMBA_MISC_ENB		0x0b0c
> > -#define PAB_INTP_AMBA_MISC_STAT		0x0b1c
> > -#define  PAB_INTP_INTX_MASK		0x01e0
> > -#define  PAB_INTP_MSI_MASK		0x8
> > -
> > -#define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
> > -#define  WIN_ENABLE_SHIFT		0
> > -#define  WIN_TYPE_SHIFT			1
> > -#define  WIN_TYPE_MASK			0x3
> > -#define  WIN_SIZE_MASK			0xfffffc00
> > -
> > -#define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
> > -
> > -#define PAB_EXT_AXI_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0x80a0, win)
> > -#define PAB_AXI_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x0ba4, win)
> > -#define  AXI_WINDOW_ALIGN_MASK		3
> > -
> > -#define PAB_AXI_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x0ba8, win)
> > -#define  PAB_BUS_SHIFT			24
> > -#define  PAB_DEVICE_SHIFT		19
> > -#define  PAB_FUNCTION_SHIFT		16
> > -
> > -#define PAB_AXI_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x0bac, win)
> > -#define PAB_INTP_AXI_PIO_CLASS		0x474
> > -
> > -#define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
> > -#define  AMAP_CTRL_EN_SHIFT		0
> > -#define  AMAP_CTRL_TYPE_SHIFT		1
> > -#define  AMAP_CTRL_TYPE_MASK		3
> > -
> > -#define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
> > -#define PAB_EXT_PEX_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0xb4a0, win)
> > -#define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
> > -#define PAB_PEX_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x4ba8, win)
> > -#define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
> > -
> > -/* starting offset of INTX bits in status register */
> > -#define PAB_INTX_START			5
> > -
> > -/* supported number of MSI interrupts */
> > -#define PCI_NUM_MSI			16
> > -
> > -/* MSI registers */
> > -#define MSI_BASE_LO_OFFSET		0x04
> > -#define MSI_BASE_HI_OFFSET		0x08
> > -#define MSI_SIZE_OFFSET			0x0c
> > -#define MSI_ENABLE_OFFSET		0x14
> > -#define MSI_STATUS_OFFSET		0x18
> > -#define MSI_DATA_OFFSET			0x20
> > -#define MSI_ADDR_L_OFFSET		0x24
> > -#define MSI_ADDR_H_OFFSET		0x28
> > -
> > -/* outbound and inbound window definitions */
> > -#define WIN_NUM_0			0
> > -#define WIN_NUM_1			1
> > -#define CFG_WINDOW_TYPE			0
> > -#define IO_WINDOW_TYPE			1
> > -#define MEM_WINDOW_TYPE			2
> > -#define IB_WIN_SIZE			((u64)256 * 1024 * 1024 * 1024)
> > -#define MAX_PIO_WINDOWS			8
> > -
> > -/* Parameters for the waiting for link up routine */
> > -#define LINK_WAIT_MAX_RETRIES		10
> > -#define LINK_WAIT_MIN			90000
> > -#define LINK_WAIT_MAX			100000
> > -
> > -#define PAGED_ADDR_BNDRY		0xc00
> > -#define OFFSET_TO_PAGE_ADDR(off)	\
> > -	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
> > -#define OFFSET_TO_PAGE_IDX(off)		\
> > -	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
> > -
> > -struct mobiveil_msi {			/* MSI information */
> > -	struct mutex lock;		/* protect bitmap variable */
> > -	struct irq_domain *msi_domain;
> > -	struct irq_domain *dev_domain;
> > -	phys_addr_t msi_pages_phys;
> > -	int num_of_vectors;
> > -	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
> > -};
> > -
> > -struct mobiveil_pcie {
> > -	struct platform_device *pdev;
> > -	struct list_head resources;
> > -	void __iomem *config_axi_slave_base;	/* endpoint config base */
> > -	void __iomem *csr_axi_slave_base;	/* root port config base */
> > -	void __iomem *apb_csr_base;	/* MSI register base */
> > -	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
> > -	struct irq_domain *intx_domain;
> > -	raw_spinlock_t intx_mask_lock;
> > -	int irq;
> > -	int apio_wins;
> > -	int ppio_wins;
> > -	int ob_wins_configured;		/* configured outbound windows */
> > -	int ib_wins_configured;		/* configured inbound windows */
> > -	struct resource *ob_io_res;
> > -	char root_bus_nr;
> > -	struct mobiveil_msi msi;
> > -};
> > -
> > -/*
> > - * mobiveil_pcie_sel_page - routine to access paged register
> > - *
> > - * Registers whose address greater than PAGED_ADDR_BNDRY (0xc00) are paged,
> > - * for this scheme to work extracted higher 6 bits of the offset will be
> > - * written to pg_sel field of PAB_CTRL register and rest of the lower 10
> > - * bits enabled with PAGED_ADDR_BNDRY are used as offset of the register.
> > - */
> > -static void mobiveil_pcie_sel_page(struct mobiveil_pcie *pcie, u8 pg_idx)
> > -{
> > -	u32 val;
> > -
> > -	val = readl(pcie->csr_axi_slave_base + PAB_CTRL);
> > -	val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
> > -	val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;
> > -
> > -	writel(val, pcie->csr_axi_slave_base + PAB_CTRL);
> > -}
> > -
> > -static void *mobiveil_pcie_comp_addr(struct mobiveil_pcie *pcie, u32 off)
> > -{
> > -	if (off < PAGED_ADDR_BNDRY) {
> > -		/* For directly accessed registers, clear the pg_sel field */
> > -		mobiveil_pcie_sel_page(pcie, 0);
> > -		return pcie->csr_axi_slave_base + off;
> > -	}
> > -
> > -	mobiveil_pcie_sel_page(pcie, OFFSET_TO_PAGE_IDX(off));
> > -	return pcie->csr_axi_slave_base + OFFSET_TO_PAGE_ADDR(off);
> > -}
> > -
> > -static int mobiveil_pcie_read(void __iomem *addr, int size, u32 *val)
> > -{
> > -	if ((uintptr_t)addr & (size - 1)) {
> > -		*val = 0;
> > -		return PCIBIOS_BAD_REGISTER_NUMBER;
> > -	}
> > -
> > -	switch (size) {
> > -	case 4:
> > -		*val = readl(addr);
> > -		break;
> > -	case 2:
> > -		*val = readw(addr);
> > -		break;
> > -	case 1:
> > -		*val = readb(addr);
> > -		break;
> > -	default:
> > -		*val = 0;
> > -		return PCIBIOS_BAD_REGISTER_NUMBER;
> > -	}
> > -
> > -	return PCIBIOS_SUCCESSFUL;
> > -}
> > -
> > -static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
> > -{
> > -	if ((uintptr_t)addr & (size - 1))
> > -		return PCIBIOS_BAD_REGISTER_NUMBER;
> > -
> > -	switch (size) {
> > -	case 4:
> > -		writel(val, addr);
> > -		break;
> > -	case 2:
> > -		writew(val, addr);
> > -		break;
> > -	case 1:
> > -		writeb(val, addr);
> > -		break;
> > -	default:
> > -		return PCIBIOS_BAD_REGISTER_NUMBER;
> > -	}
> > -
> > -	return PCIBIOS_SUCCESSFUL;
> > -}
> > -
> > -static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
> > -{
> > -	void *addr;
> > -	u32 val;
> > -	int ret;
> > -
> > -	addr = mobiveil_pcie_comp_addr(pcie, off);
> > -
> > -	ret = mobiveil_pcie_read(addr, size, &val);
> > -	if (ret)
> > -		dev_err(&pcie->pdev->dev, "read CSR address failed\n");
> > -
> > -	return val;
> > -}
> > -
> > -static void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
> > -{
> > -	void *addr;
> > -	int ret;
> > -
> > -	addr = mobiveil_pcie_comp_addr(pcie, off);
> > -
> > -	ret = mobiveil_pcie_write(addr, size, val);
> > -	if (ret)
> > -		dev_err(&pcie->pdev->dev, "write CSR address failed\n");
> > -}
> > -
> > -static u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
> > -{
> > -	return csr_read(pcie, off, 0x4);
> > -}
> > -
> > -static void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
> > -{
> > -	csr_write(pcie, val, off, 0x4);
> > -}
> > -
> > -static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
> > -{
> > -	return (csr_readl(pcie, LTSSM_STATUS) &
> > -		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
> > -}
> > +#include "pcie-mobiveil.h"
> >  
> >  static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
> >  {
> >  	struct mobiveil_pcie *pcie = bus->sysdata;
> >  
> >  	/* Only one device down on each root port */
> > -	if ((bus->number == pcie->root_bus_nr) && (devfn > 0))
> > +	if ((bus->number == pcie->rp.root_bus_nr) && (devfn > 0))
> >  		return false;
> >  
> >  	/*
> >  	 * Do not read more than one device on the bus directly
> >  	 * attached to RC
> >  	 */
> > -	if ((bus->primary == pcie->root_bus_nr) && (PCI_SLOT(devfn) > 0))
> > +	if ((bus->primary == pcie->rp.root_bus_nr) && (PCI_SLOT(devfn) > 0))
> >  		return false;
> >  
> >  	return true;
> > @@ -310,7 +59,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
> >  		return NULL;
> >  
> >  	/* RC config access */
> > -	if (bus->number == pcie->root_bus_nr)
> > +	if (bus->number == pcie->rp.root_bus_nr)
> >  		return pcie->csr_axi_slave_base + where;
> >  
> >  	/*
> > @@ -325,7 +74,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
> >  
> >  	csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
> >  
> > -	return pcie->config_axi_slave_base + where;
> > +	return pcie->rp.config_axi_slave_base + where;
> >  }
> >  
> >  static struct pci_ops mobiveil_pcie_ops = {
> > @@ -339,7 +88,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> >  	struct irq_chip *chip = irq_desc_get_chip(desc);
> >  	struct mobiveil_pcie *pcie = irq_desc_get_handler_data(desc);
> >  	struct device *dev = &pcie->pdev->dev;
> > -	struct mobiveil_msi *msi = &pcie->msi;
> > +	struct mobiveil_msi *msi = &pcie->rp.msi;
> >  	u32 msi_data, msi_addr_lo, msi_addr_hi;
> >  	u32 intr_status, msi_status;
> >  	unsigned long shifted_status;
> > @@ -364,7 +113,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
> >  		shifted_status >>= PAB_INTX_START;
> >  		do {
> >  			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
> > -				virq = irq_find_mapping(pcie->intx_domain,
> > +				virq = irq_find_mapping(pcie->rp.intx_domain,
> >  							bit + 1);
> >  				if (virq)
> >  					generic_handle_irq(virq);
> > @@ -427,10 +176,10 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
> >  	/* map config resource */
> >  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> >  					   "config_axi_slave");
> > -	pcie->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
> > -	if (IS_ERR(pcie->config_axi_slave_base))
> > -		return PTR_ERR(pcie->config_axi_slave_base);
> > -	pcie->ob_io_res = res;
> > +	pcie->rp.config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
> > +	if (IS_ERR(pcie->rp.config_axi_slave_base))
> > +		return PTR_ERR(pcie->rp.config_axi_slave_base);
> > +	pcie->rp.ob_io_res = res;
> >  
> 
> The splitting up of this file into multiple file looks broadly consistent with
> 'dwc' - however it is tricky to review as in addition to moving code, we're also
> changing it. For example you introduce the concept of a root_port along with
> (mobiveil_rp_ops and mobiveil_pab_ops) - this changes the code that you are
> moving. There are also differences with interrupt handling.
> 
> It would be helpful to split this up.
> 
> Thanks,
> 
> Andrew Murray 
> 
> 
> >  	/* map csr resource */
> >  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> > @@ -440,12 +189,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
> >  		return PTR_ERR(pcie->csr_axi_slave_base);
> >  	pcie->pcie_reg_base = res->start;
> >  
> > -	/* map MSI config resource */
> > -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
> > -	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> > -	if (IS_ERR(pcie->apb_csr_base))
> > -		return PTR_ERR(pcie->apb_csr_base);
> > -
> >  	/* read the number of windows requested */
> >  	if (of_property_read_u32(node, "apio-wins", &pcie->apio_wins))
> >  		pcie->apio_wins = MAX_PIO_WINDOWS;
> > @@ -453,116 +196,15 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
> >  	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
> >  		pcie->ppio_wins = MAX_PIO_WINDOWS;
> >  
> > -	pcie->irq = platform_get_irq(pdev, 0);
> > -	if (pcie->irq <= 0) {
> > -		dev_err(dev, "failed to map IRQ: %d\n", pcie->irq);
> > -		return -ENODEV;
> > -	}
> > -
> >  	return 0;
> >  }
> >  
> > -static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
> > -			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
> > -{
> > -	u32 value;
> > -	u64 size64 = ~(size - 1);
> > -
> > -	if (win_num >= pcie->ppio_wins) {
> > -		dev_err(&pcie->pdev->dev,
> > -			"ERROR: max inbound windows reached !\n");
> > -		return;
> > -	}
> > -
> > -	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
> > -	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT | WIN_SIZE_MASK);
> > -	value |= type << AMAP_CTRL_TYPE_SHIFT | 1 << AMAP_CTRL_EN_SHIFT |
> > -		 (lower_32_bits(size64) & WIN_SIZE_MASK);
> > -	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
> > -
> > -	csr_writel(pcie, upper_32_bits(size64),
> > -		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
> > -
> > -	csr_writel(pcie, lower_32_bits(cpu_addr),
> > -		   PAB_PEX_AMAP_AXI_WIN(win_num));
> > -	csr_writel(pcie, upper_32_bits(cpu_addr),
> > -		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
> > -
> > -	csr_writel(pcie, lower_32_bits(pci_addr),
> > -		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
> > -	csr_writel(pcie, upper_32_bits(pci_addr),
> > -		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
> > -
> > -	pcie->ib_wins_configured++;
> > -}
> > -
> > -/*
> > - * routine to program the outbound windows
> > - */
> > -static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
> > -			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
> > -{
> > -	u32 value;
> > -	u64 size64 = ~(size - 1);
> > -
> > -	if (win_num >= pcie->apio_wins) {
> > -		dev_err(&pcie->pdev->dev,
> > -			"ERROR: max outbound windows reached !\n");
> > -		return;
> > -	}
> > -
> > -	/*
> > -	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
> > -	 * to 4 KB in PAB_AXI_AMAP_CTRL register
> > -	 */
> > -	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
> > -	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT | WIN_SIZE_MASK);
> > -	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
> > -		 (lower_32_bits(size64) & WIN_SIZE_MASK);
> > -	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
> > -
> > -	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
> > -
> > -	/*
> > -	 * program AXI window base with appropriate value in
> > -	 * PAB_AXI_AMAP_AXI_WIN0 register
> > -	 */
> > -	csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
> > -		   PAB_AXI_AMAP_AXI_WIN(win_num));
> > -	csr_writel(pcie, upper_32_bits(cpu_addr),
> > -		   PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
> > -
> > -	csr_writel(pcie, lower_32_bits(pci_addr),
> > -		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
> > -	csr_writel(pcie, upper_32_bits(pci_addr),
> > -		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
> > -
> > -	pcie->ob_wins_configured++;
> > -}
> > -
> > -static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
> > -{
> > -	int retries;
> > -
> > -	/* check if the link is up or not */
> > -	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
> > -		if (mobiveil_pcie_link_up(pcie))
> > -			return 0;
> > -
> > -		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
> > -	}
> > -
> > -	dev_err(&pcie->pdev->dev, "link never came up\n");
> > -
> > -	return -ETIMEDOUT;
> > -}
> > -
> >  static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
> >  {
> >  	phys_addr_t msg_addr = pcie->pcie_reg_base;
> > -	struct mobiveil_msi *msi = &pcie->msi;
> > +	struct mobiveil_msi *msi = &pcie->rp.msi;
> >  
> > -	pcie->msi.num_of_vectors = PCI_NUM_MSI;
> > +	msi->num_of_vectors = PCI_NUM_MSI;
> >  	msi->msi_pages_phys = (phys_addr_t)msg_addr;
> >  
> >  	writel_relaxed(lower_32_bits(msg_addr),
> > @@ -600,9 +242,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
> >  	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
> >  	csr_writel(pcie, pab_ctrl, PAB_CTRL);
> >  
> > -	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> > -		   PAB_INTP_AMBA_MISC_ENB);
> > -
> >  	/*
> >  	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
> >  	 * PAB_AXI_PIO_CTRL Register
> > @@ -624,20 +263,24 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
> >  	 */
> >  
> >  	/* config outbound translation window */
> > -	program_ob_windows(pcie, WIN_NUM_0, pcie->ob_io_res->start, 0,
> > -			   CFG_WINDOW_TYPE, resource_size(pcie->ob_io_res));
> > +	program_ob_windows(pcie, WIN_NUM_0, pcie->rp.ob_io_res->start, 0,
> > +			   CFG_WINDOW_TYPE, resource_size(pcie->rp.ob_io_res));
> >  
> >  	/* memory inbound translation window */
> >  	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
> >  
> >  	/* Get the I/O and memory ranges from DT */
> >  	resource_list_for_each_entry(win, &pcie->resources) {
> > -		if (resource_type(win->res) == IORESOURCE_MEM)
> > +		if (resource_type(win->res) == IORESOURCE_MEM) {
> >  			type = MEM_WINDOW_TYPE;
> > -		else if (resource_type(win->res) == IORESOURCE_IO)
> > +		} else if (resource_type(win->res) == IORESOURCE_IO) {
> >  			type = IO_WINDOW_TYPE;
> > -		else
> > +		} else if (resource_type(win->res) == IORESOURCE_BUS) {
> > +			pcie->rp.root_bus_nr = win->res->start;
> >  			continue;
> > +		} else {
> > +			continue;
> > +		}
> >  
> >  		/* configure outbound translation window */
> >  		program_ob_windows(pcie, pcie->ob_wins_configured,
> > @@ -652,9 +295,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
> >  	value |= (PCI_CLASS_BRIDGE_PCI << 16);
> >  	csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
> >  
> > -	/* setup MSI hardware registers */
> > -	mobiveil_pcie_enable_msi(pcie);
> > -
> >  	return 0;
> >  }
> >  
> > @@ -667,11 +307,11 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
> >  
> >  	pcie = irq_desc_get_chip_data(desc);
> >  	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
> > -	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
> > +	raw_spin_lock_irqsave(&pcie->rp.intx_mask_lock, flags);
> >  	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
> >  	shifted_val &= ~mask;
> >  	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
> > -	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
> > +	raw_spin_unlock_irqrestore(&pcie->rp.intx_mask_lock, flags);
> >  }
> >  
> >  static void mobiveil_unmask_intx_irq(struct irq_data *data)
> > @@ -683,11 +323,11 @@ static void mobiveil_unmask_intx_irq(struct irq_data *data)
> >  
> >  	pcie = irq_desc_get_chip_data(desc);
> >  	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
> > -	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
> > +	raw_spin_lock_irqsave(&pcie->rp.intx_mask_lock, flags);
> >  	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
> >  	shifted_val |= mask;
> >  	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
> > -	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
> > +	raw_spin_unlock_irqrestore(&pcie->rp.intx_mask_lock, flags);
> >  }
> >  
> >  static struct irq_chip intx_irq_chip = {
> > @@ -755,7 +395,7 @@ static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
> >  					 unsigned int nr_irqs, void *args)
> >  {
> >  	struct mobiveil_pcie *pcie = domain->host_data;
> > -	struct mobiveil_msi *msi = &pcie->msi;
> > +	struct mobiveil_msi *msi = &pcie->rp.msi;
> >  	unsigned long bit;
> >  
> >  	WARN_ON(nr_irqs != 1);
> > @@ -782,7 +422,7 @@ static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
> >  {
> >  	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
> >  	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
> > -	struct mobiveil_msi *msi = &pcie->msi;
> > +	struct mobiveil_msi *msi = &pcie->rp.msi;
> >  
> >  	mutex_lock(&msi->lock);
> >  
> > @@ -803,9 +443,9 @@ static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
> >  {
> >  	struct device *dev = &pcie->pdev->dev;
> >  	struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
> > -	struct mobiveil_msi *msi = &pcie->msi;
> > +	struct mobiveil_msi *msi = &pcie->rp.msi;
> >  
> > -	mutex_init(&pcie->msi.lock);
> > +	mutex_init(&msi->lock);
> >  	msi->dev_domain = irq_domain_add_linear(NULL, msi->num_of_vectors,
> >  						&msi_domain_ops, pcie);
> >  	if (!msi->dev_domain) {
> > @@ -832,15 +472,15 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
> >  	int ret;
> >  
> >  	/* setup INTx */
> > -	pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> > -						  &intx_domain_ops, pcie);
> > +	pcie->rp.intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> > +						     &intx_domain_ops, pcie);
> >  
> > -	if (!pcie->intx_domain) {
> > +	if (!pcie->rp.intx_domain) {
> >  		dev_err(dev, "Failed to get a INTx IRQ domain\n");
> >  		return -ENOMEM;
> >  	}
> >  
> > -	raw_spin_lock_init(&pcie->intx_mask_lock);
> > +	raw_spin_lock_init(&pcie->rp.intx_mask_lock);
> >  
> >  	/* setup MSI */
> >  	ret = mobiveil_allocate_msi_domains(pcie);
> > @@ -850,24 +490,58 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
> >  	return 0;
> >  }
> >  
> > -static int mobiveil_pcie_probe(struct platform_device *pdev)
> > +static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
> > +{
> > +	struct device *dev = &pcie->pdev->dev;
> > +	struct resource *res;
> > +	int ret;
> > +
> > +	if (pcie->rp.ops->interrupt_init)
> > +		return pcie->rp.ops->interrupt_init(pcie);
> > +
> > +	/* map MSI config resource */
> > +	res = platform_get_resource_byname(pcie->pdev, IORESOURCE_MEM,
> > +					   "apb_csr");
> > +	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> > +	if (IS_ERR(pcie->apb_csr_base))
> > +		return PTR_ERR(pcie->apb_csr_base);
> > +
> > +	/* setup MSI hardware registers */
> > +	mobiveil_pcie_enable_msi(pcie);
> > +
> > +	pcie->rp.irq = platform_get_irq(pcie->pdev, 0);
> > +	if (pcie->rp.irq <= 0) {
> > +		dev_err(dev, "failed to map IRQ: %d\n", pcie->rp.irq);
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* initialize the IRQ domains */
> > +	ret = mobiveil_pcie_init_irq_domain(pcie);
> > +	if (ret) {
> > +		dev_err(dev, "Failed creating IRQ Domain\n");
> > +		return ret;
> > +	}
> > +
> > +	irq_set_chained_handler_and_data(pcie->rp.irq,
> > +					 mobiveil_pcie_isr, pcie);
> > +
> > +	/* Enable interrupts */
> > +	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> > +		   PAB_INTP_AMBA_MISC_ENB);
> > +
> > +	return 0;
> > +}
> > +
> > +int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
> >  {
> > -	struct mobiveil_pcie *pcie;
> >  	struct pci_bus *bus;
> >  	struct pci_bus *child;
> > -	struct pci_host_bridge *bridge;
> > -	struct device *dev = &pdev->dev;
> > +	struct pci_host_bridge *bridge = pcie->bridge;
> > +	struct device *dev = &pcie->pdev->dev;
> >  	resource_size_t iobase;
> >  	int ret;
> >  
> > -	/* allocate the PCIe port */
> > -	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> > -	if (!bridge)
> > -		return -ENOMEM;
> > -
> > -	pcie = pci_host_bridge_priv(bridge);
> > -
> > -	pcie->pdev = pdev;
> > +	INIT_LIST_HEAD(&pcie->resources);
> >  
> >  	ret = mobiveil_pcie_parse_dt(pcie);
> >  	if (ret) {
> > @@ -875,8 +549,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
> >  		return ret;
> >  	}
> >  
> > -	INIT_LIST_HEAD(&pcie->resources);
> > -
> >  	/* parse the host bridge base addresses from the device tree file */
> >  	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> >  						    &pcie->resources, &iobase);
> > @@ -895,15 +567,12 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
> >  		goto error;
> >  	}
> >  
> > -	/* initialize the IRQ domains */
> > -	ret = mobiveil_pcie_init_irq_domain(pcie);
> > +	ret = mobiveil_pcie_interrupt_init(pcie);
> >  	if (ret) {
> > -		dev_err(dev, "Failed creating IRQ Domain\n");
> > +		dev_err(dev, "Interrupt init failed\n");
> >  		goto error;
> >  	}
> >  
> > -	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
> > -
> >  	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
> >  	if (ret)
> >  		goto error;
> > @@ -912,7 +581,7 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
> >  	list_splice_init(&pcie->resources, &bridge->windows);
> >  	bridge->dev.parent = dev;
> >  	bridge->sysdata = pcie;
> > -	bridge->busnr = pcie->root_bus_nr;
> > +	bridge->busnr = pcie->rp.root_bus_nr;
> >  	bridge->ops = &mobiveil_pcie_ops;
> >  	bridge->map_irq = of_irq_parse_and_map_pci;
> >  	bridge->swizzle_irq = pci_common_swizzle;
> > @@ -940,25 +609,3 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
> >  	pci_free_resource_list(&pcie->resources);
> >  	return ret;
> >  }
> > -
> > -static const struct of_device_id mobiveil_pcie_of_match[] = {
> > -	{.compatible = "mbvl,gpex40-pcie",},
> > -	{},
> > -};
> > -
> > -MODULE_DEVICE_TABLE(of, mobiveil_pcie_of_match);
> > -
> > -static struct platform_driver mobiveil_pcie_driver = {
> > -	.probe = mobiveil_pcie_probe,
> > -	.driver = {
> > -		.name = "mobiveil-pcie",
> > -		.of_match_table = mobiveil_pcie_of_match,
> > -		.suppress_bind_attrs = true,
> > -	},
> > -};
> > -
> > -builtin_platform_driver(mobiveil_pcie_driver);
> > -
> > -MODULE_LICENSE("GPL v2");
> > -MODULE_DESCRIPTION("Mobiveil PCIe host controller driver");
> > -MODULE_AUTHOR("Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>");
> > diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
> > new file mode 100644
> > index 000000000000..9c62fc58530c
> > --- /dev/null
> > +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
> > @@ -0,0 +1,59 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * PCIe host controller driver for Mobiveil PCIe Host controller
> > + *
> > + * Copyright (c) 2018 Mobiveil Inc.
> > + * Copyright 2019 NXP
> > + *
> > + * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > + * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
> > + */
> > +
> > +#include <linux/init.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of_pci.h>
> > +#include <linux/pci.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/slab.h>
> > +
> > +#include "pcie-mobiveil.h"
> > +
> > +static int mobiveil_pcie_probe(struct platform_device *pdev)
> > +{
> > +	struct mobiveil_pcie *pcie;
> > +	struct pci_host_bridge *bridge;
> > +	struct device *dev = &pdev->dev;
> > +
> > +	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> > +	if (!bridge)
> > +		return -ENOMEM;
> > +
> > +	pcie = pci_host_bridge_priv(bridge);
> > +
> > +	pcie->pdev = pdev;
> > +
> > +	return mobiveil_pcie_host_probe(pcie);
> > +}
> > +
> > +static const struct of_device_id mobiveil_pcie_of_match[] = {
> > +	{.compatible = "mbvl,gpex40-pcie",},
> > +	{},
> > +};
> > +
> > +MODULE_DEVICE_TABLE(of, mobiveil_pcie_of_match);
> > +
> > +static struct platform_driver mobiveil_pcie_driver = {
> > +	.probe = mobiveil_pcie_probe,
> > +	.driver = {
> > +		.name = "mobiveil-pcie",
> > +		.of_match_table = mobiveil_pcie_of_match,
> > +		.suppress_bind_attrs = true,
> > +	},
> > +};
> > +
> > +builtin_platform_driver(mobiveil_pcie_driver);
> > +
> > +MODULE_LICENSE("GPL v2");
> > +MODULE_DESCRIPTION("Mobiveil PCIe host controller driver");
> > +MODULE_AUTHOR("Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>");
> > diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.c b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
> > new file mode 100644
> > index 000000000000..94b23be1a06f
> > --- /dev/null
> > +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
> > @@ -0,0 +1,227 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * PCIe host controller driver for Mobiveil PCIe Host controller
> > + *
> > + * Copyright (c) 2018 Mobiveil Inc.
> > + * Copyright 2019 NXP
> > + *
> > + * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > + * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
> > + */
> > +
> > +#include <linux/delay.h>
> > +#include <linux/init.h>
> > +#include <linux/kernel.h>
> > +#include <linux/pci.h>
> > +#include <linux/platform_device.h>
> > +
> > +#include "pcie-mobiveil.h"
> > +
> > +/*
> > + * mobiveil_pcie_sel_page - routine to access paged register
> > + *
> > + * Registers whose address greater than PAGED_ADDR_BNDRY (0xc00) are paged,
> > + * for this scheme to work extracted higher 6 bits of the offset will be
> > + * written to pg_sel field of PAB_CTRL register and rest of the lower 10
> > + * bits enabled with PAGED_ADDR_BNDRY are used as offset of the register.
> > + */
> > +static void mobiveil_pcie_sel_page(struct mobiveil_pcie *pcie, u8 pg_idx)
> > +{
> > +	u32 val;
> > +
> > +	val = readl(pcie->csr_axi_slave_base + PAB_CTRL);
> > +	val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
> > +	val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;
> > +
> > +	writel(val, pcie->csr_axi_slave_base + PAB_CTRL);
> > +}
> > +
> > +static void *mobiveil_pcie_comp_addr(struct mobiveil_pcie *pcie, u32 off)
> > +{
> > +	if (off < PAGED_ADDR_BNDRY) {
> > +		/* For directly accessed registers, clear the pg_sel field */
> > +		mobiveil_pcie_sel_page(pcie, 0);
> > +		return pcie->csr_axi_slave_base + off;
> > +	}
> > +
> > +	mobiveil_pcie_sel_page(pcie, OFFSET_TO_PAGE_IDX(off));
> > +	return pcie->csr_axi_slave_base + OFFSET_TO_PAGE_ADDR(off);
> > +}
> > +
> > +static int mobiveil_pcie_read(void __iomem *addr, int size, u32 *val)
> > +{
> > +	if ((uintptr_t)addr & (size - 1)) {
> > +		*val = 0;
> > +		return PCIBIOS_BAD_REGISTER_NUMBER;
> > +	}
> > +
> > +	switch (size) {
> > +	case 4:
> > +		*val = readl(addr);
> > +		break;
> > +	case 2:
> > +		*val = readw(addr);
> > +		break;
> > +	case 1:
> > +		*val = readb(addr);
> > +		break;
> > +	default:
> > +		*val = 0;
> > +		return PCIBIOS_BAD_REGISTER_NUMBER;
> > +	}
> > +
> > +	return PCIBIOS_SUCCESSFUL;
> > +}
> > +
> > +static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
> > +{
> > +	if ((uintptr_t)addr & (size - 1))
> > +		return PCIBIOS_BAD_REGISTER_NUMBER;
> > +
> > +	switch (size) {
> > +	case 4:
> > +		writel(val, addr);
> > +		break;
> > +	case 2:
> > +		writew(val, addr);
> > +		break;
> > +	case 1:
> > +		writeb(val, addr);
> > +		break;
> > +	default:
> > +		return PCIBIOS_BAD_REGISTER_NUMBER;
> > +	}
> > +
> > +	return PCIBIOS_SUCCESSFUL;
> > +}
> > +
> > +u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
> > +{
> > +	void *addr;
> > +	u32 val;
> > +	int ret;
> > +
> > +	addr = mobiveil_pcie_comp_addr(pcie, off);
> > +
> > +	ret = mobiveil_pcie_read(addr, size, &val);
> > +	if (ret)
> > +		dev_err(&pcie->pdev->dev, "read CSR address failed\n");
> > +
> > +	return val;
> > +}
> > +
> > +void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
> > +{
> > +	void *addr;
> > +	int ret;
> > +
> > +	addr = mobiveil_pcie_comp_addr(pcie, off);
> > +
> > +	ret = mobiveil_pcie_write(addr, size, val);
> > +	if (ret)
> > +		dev_err(&pcie->pdev->dev, "write CSR address failed\n");
> > +}
> > +
> > +bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
> > +{
> > +	if (pcie->ops->link_up)
> > +		return pcie->ops->link_up(pcie);
> > +
> > +	return (csr_readl(pcie, LTSSM_STATUS) &
> > +		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
> > +}
> > +
> > +void program_ib_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
> > +			u64 pci_addr, u32 type, u64 size)
> > +{
> > +	u32 value;
> > +	u64 size64 = ~(size - 1);
> > +
> > +	if (win_num >= pcie->ppio_wins) {
> > +		dev_err(&pcie->pdev->dev,
> > +			"ERROR: max inbound windows reached !\n");
> > +		return;
> > +	}
> > +
> > +	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
> > +	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT | WIN_SIZE_MASK);
> > +	value |= type << AMAP_CTRL_TYPE_SHIFT | 1 << AMAP_CTRL_EN_SHIFT |
> > +		 (lower_32_bits(size64) & WIN_SIZE_MASK);
> > +	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
> > +
> > +	csr_writel(pcie, upper_32_bits(size64),
> > +		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
> > +
> > +	csr_writel(pcie, lower_32_bits(cpu_addr),
> > +		   PAB_PEX_AMAP_AXI_WIN(win_num));
> > +	csr_writel(pcie, upper_32_bits(cpu_addr),
> > +		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
> > +
> > +	csr_writel(pcie, lower_32_bits(pci_addr),
> > +		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
> > +	csr_writel(pcie, upper_32_bits(pci_addr),
> > +		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
> > +
> > +	pcie->ib_wins_configured++;
> > +}
> > +
> > +/*
> > + * routine to program the outbound windows
> > + */
> > +void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
> > +			u64 pci_addr, u32 type, u64 size)
> > +{
> > +	u32 value;
> > +	u64 size64 = ~(size - 1);
> > +
> > +	if (win_num >= pcie->apio_wins) {
> > +		dev_err(&pcie->pdev->dev,
> > +			"ERROR: max outbound windows reached !\n");
> > +		return;
> > +	}
> > +
> > +	/*
> > +	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
> > +	 * to 4 KB in PAB_AXI_AMAP_CTRL register
> > +	 */
> > +	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
> > +	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT | WIN_SIZE_MASK);
> > +	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
> > +		 (lower_32_bits(size64) & WIN_SIZE_MASK);
> > +	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
> > +
> > +	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
> > +
> > +	/*
> > +	 * program AXI window base with appropriate value in
> > +	 * PAB_AXI_AMAP_AXI_WIN0 register
> > +	 */
> > +	csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
> > +		   PAB_AXI_AMAP_AXI_WIN(win_num));
> > +	csr_writel(pcie, upper_32_bits(cpu_addr),
> > +		   PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
> > +
> > +	csr_writel(pcie, lower_32_bits(pci_addr),
> > +		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
> > +	csr_writel(pcie, upper_32_bits(pci_addr),
> > +		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
> > +
> > +	pcie->ob_wins_configured++;
> > +}
> > +
> > +int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
> > +{
> > +	int retries;
> > +
> > +	/* check if the link is up or not */
> > +	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
> > +		if (mobiveil_pcie_link_up(pcie))
> > +			return 0;
> > +
> > +		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
> > +	}
> > +
> > +	dev_err(&pcie->pdev->dev, "link never came up\n");
> > +
> > +	return -ETIMEDOUT;
> > +}
> > diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> > new file mode 100644
> > index 000000000000..4825e30030cd
> > --- /dev/null
> > +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> > @@ -0,0 +1,189 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/*
> > + * PCIe host controller driver for Mobiveil PCIe Host controller
> > + *
> > + * Copyright (c) 2018 Mobiveil Inc.
> > + * Copyright 2019 NXP
> > + *
> > + * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> > + * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
> > + */
> > +
> > +#ifndef _PCIE_MOBIVEIL_H
> > +#define _PCIE_MOBIVEIL_H
> > +
> > +#include <linux/pci.h>
> > +#include <linux/irq.h>
> > +#include <linux/msi.h>
> > +#include "../../pci.h"
> > +
> > +/* register offsets and bit positions */
> > +
> > +/*
> > + * translation tables are grouped into windows, each window registers are
> > + * grouped into blocks of 4 or 16 registers each
> > + */
> > +#define PAB_REG_BLOCK_SIZE		16
> > +#define PAB_EXT_REG_BLOCK_SIZE		4
> > +
> > +#define PAB_REG_ADDR(offset, win)	\
> > +	(offset + (win * PAB_REG_BLOCK_SIZE))
> > +#define PAB_EXT_REG_ADDR(offset, win)	\
> > +	(offset + (win * PAB_EXT_REG_BLOCK_SIZE))
> > +
> > +#define LTSSM_STATUS			0x0404
> > +#define  LTSSM_STATUS_L0_MASK		0x3f
> > +#define  LTSSM_STATUS_L0		0x2d
> > +
> > +#define PAB_CTRL			0x0808
> > +#define  AMBA_PIO_ENABLE_SHIFT		0
> > +#define  PEX_PIO_ENABLE_SHIFT		1
> > +#define  PAGE_SEL_SHIFT			13
> > +#define  PAGE_SEL_MASK			0x3f
> > +#define  PAGE_LO_MASK			0x3ff
> > +#define  PAGE_SEL_OFFSET_SHIFT		10
> > +
> > +#define PAB_AXI_PIO_CTRL		0x0840
> > +#define  APIO_EN_MASK			0xf
> > +
> > +#define PAB_PEX_PIO_CTRL		0x08c0
> > +#define  PIO_ENABLE_SHIFT		0
> > +
> > +#define PAB_INTP_AMBA_MISC_ENB		0x0b0c
> > +#define PAB_INTP_AMBA_MISC_STAT		0x0b1c
> > +#define  PAB_INTP_INTX_MASK		0x01e0
> > +#define  PAB_INTP_MSI_MASK		0x8
> > +
> > +#define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
> > +#define  WIN_ENABLE_SHIFT		0
> > +#define  WIN_TYPE_SHIFT			1
> > +#define  WIN_TYPE_MASK			0x3
> > +#define  WIN_SIZE_MASK			0xfffffc00
> > +
> > +#define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
> > +
> > +#define PAB_EXT_AXI_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0x80a0, win)
> > +#define PAB_AXI_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x0ba4, win)
> > +#define  AXI_WINDOW_ALIGN_MASK		3
> > +
> > +#define PAB_AXI_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x0ba8, win)
> > +#define  PAB_BUS_SHIFT			24
> > +#define  PAB_DEVICE_SHIFT		19
> > +#define  PAB_FUNCTION_SHIFT		16
> > +
> > +#define PAB_AXI_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x0bac, win)
> > +#define PAB_INTP_AXI_PIO_CLASS		0x474
> > +
> > +#define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
> > +#define  AMAP_CTRL_EN_SHIFT		0
> > +#define  AMAP_CTRL_TYPE_SHIFT		1
> > +#define  AMAP_CTRL_TYPE_MASK		3
> > +
> > +#define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
> > +#define PAB_EXT_PEX_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0xb4a0, win)
> > +#define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
> > +#define PAB_PEX_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x4ba8, win)
> > +#define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
> > +
> > +/* starting offset of INTX bits in status register */
> > +#define PAB_INTX_START			5
> > +
> > +/* supported number of MSI interrupts */
> > +#define PCI_NUM_MSI			16
> > +
> > +/* MSI registers */
> > +#define MSI_BASE_LO_OFFSET		0x04
> > +#define MSI_BASE_HI_OFFSET		0x08
> > +#define MSI_SIZE_OFFSET			0x0c
> > +#define MSI_ENABLE_OFFSET		0x14
> > +#define MSI_STATUS_OFFSET		0x18
> > +#define MSI_DATA_OFFSET			0x20
> > +#define MSI_ADDR_L_OFFSET		0x24
> > +#define MSI_ADDR_H_OFFSET		0x28
> > +
> > +/* outbound and inbound window definitions */
> > +#define WIN_NUM_0			0
> > +#define WIN_NUM_1			1
> > +#define CFG_WINDOW_TYPE			0
> > +#define IO_WINDOW_TYPE			1
> > +#define MEM_WINDOW_TYPE			2
> > +#define IB_WIN_SIZE			((u64)256 * 1024 * 1024 * 1024)
> > +#define MAX_PIO_WINDOWS			8
> > +
> > +/* Parameters for the waiting for link up routine */
> > +#define LINK_WAIT_MAX_RETRIES		10
> > +#define LINK_WAIT_MIN			90000
> > +#define LINK_WAIT_MAX			100000
> > +
> > +#define PAGED_ADDR_BNDRY		0xc00
> > +#define OFFSET_TO_PAGE_ADDR(off)	\
> > +	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
> > +#define OFFSET_TO_PAGE_IDX(off)		\
> > +	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
> > +
> > +struct mobiveil_pcie;
> > +
> > +struct mobiveil_msi {			/* MSI information */
> > +	struct mutex lock;		/* protect bitmap variable */
> > +	struct irq_domain *msi_domain;
> > +	struct irq_domain *dev_domain;
> > +	phys_addr_t msi_pages_phys;
> > +	int num_of_vectors;
> > +	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
> > +};
> > +
> > +struct mobiveil_rp_ops {
> > +	int (*interrupt_init)(struct mobiveil_pcie *pcie);
> > +};
> > +
> > +struct root_port {
> > +	u8 root_bus_nr;
> > +	void __iomem *config_axi_slave_base;	/* endpoint config base */
> > +	struct resource *ob_io_res;
> > +	struct mobiveil_rp_ops *ops;
> > +	int irq;
> > +	raw_spinlock_t intx_mask_lock;
> > +	struct irq_domain *intx_domain;
> > +	struct mobiveil_msi msi;
> > +};
> > +
> > +struct mobiveil_pab_ops {
> > +	int (*link_up)(struct mobiveil_pcie *pcie);
> > +};
> > +
> > +struct mobiveil_pcie {
> > +	struct platform_device *pdev;
> > +	struct list_head resources;
> > +	void __iomem *csr_axi_slave_base;	/* PAB registers base */
> > +	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
> > +	void __iomem *apb_csr_base;	/* MSI register base */
> > +	u32 apio_wins;
> > +	u32 ppio_wins;
> > +	u32 ob_wins_configured;		/* configured outbound windows */
> > +	u32 ib_wins_configured;		/* configured inbound windows */
> > +	const struct mobiveil_pab_ops *ops;
> > +	struct root_port rp;
> > +	struct pci_host_bridge *bridge;
> > +};
> > +
> > +int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie);
> > +bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie);
> > +int mobiveil_bringup_link(struct mobiveil_pcie *pcie);
> > +void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
> > +			u64 pci_addr, u32 type, u64 size);
> > +void program_ib_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
> > +			u64 pci_addr, u32 type, u64 size);
> > +u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size);
> > +void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size);
> > +
> > +static inline u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
> > +{
> > +	return csr_read(pcie, off, 0x4);
> > +}
> > +
> > +static inline void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
> > +{
> > +	csr_write(pcie, val, off, 0x4);
> > +}
> > +
> > +#endif /* _PCIE_MOBIVEIL_H */
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
