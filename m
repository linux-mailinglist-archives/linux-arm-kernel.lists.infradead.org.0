Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E97571055C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 16:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iP00s1ZgqkQYLFlpcvGbuuy4XNXTGyesDc60dm5q/TE=; b=cb09u+gLUwt64n
	uaINvXGrxpEYljgLcf7M6C3eEXY2xwhFihb0Q8FaQ2L3FSmRAHRce2SqJ+YYHJx4rRl0c3wkiEVSD
	yDIzwwxN4ABrTRmDsP95/Ilr1p6RMdS9Bs3kWHuHjbjMD0jTnEeh8M91Jr9fuD1WVMa0LuUcdVIGG
	iR3riQaZCb24r59LR7mFp+nyWZzsA62itlaEHZmMYuZU5bugA4F0tzsSMJdDt7evICsznm3Thjv5V
	eb22t4cVWSL8MAUCR5iPWnL49Zzygk+DEjEVhn5c0m3KkRHuumR6fUMIG2AxbStpeEkd3qiHWzkkN
	mJWDzhmpqtQ36BepeiGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXoXm-0001ux-2T; Thu, 21 Nov 2019 15:38:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXoXe-0001uK-NH; Thu, 21 Nov 2019 15:38:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 616E1DA7;
 Thu, 21 Nov 2019 07:38:45 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5DF73F703;
 Thu, 21 Nov 2019 07:38:44 -0800 (PST)
Date: Thu, 21 Nov 2019 15:38:43 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 5/6] PCI: brcmstb: add MSI capability
Message-ID: <20191121153842.GZ43905@e119886-lin.cambridge.arm.com>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
 <20191112155926.16476-6-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112155926.16476-6-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_073846_850657_1C07B648 
X-CRM114-Status: GOOD (  34.94  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, mbrugger@suse.com, maz@kernel.org,
 phil@raspberrypi.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com,
 Eric Anholt <eric@anholt.net>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 james.quinlan@broadcom.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 04:59:24PM +0100, Nicolas Saenz Julienne wrote:
> From: Jim Quinlan <james.quinlan@broadcom.com>
> 
> This commit adds MSI to the Broadcom STB PCIe host controller. It does
> not add MSIX since that functionality is not in the HW.  The MSI
> controller is physically located within the PCIe block, however, there
> is no reason why the MSI controller could not be moved elsewhere in
> the future.
> 
> Since the internal Brcmstb MSI controller is intertwined with the PCIe
> controller, it is not its own platform device but rather part of the
> PCIe platform device.
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Co-developed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v1:
>   - Move revision code and some registers to this patch
>   - Use PCIE_MSI_IRQ_DOMAIN in Kconfig
>   - Remove redundant register read from ISR
>   - Fail probe on MSI init error
>   - Get rid of msi_internal
>   - Use bitmap family of functions
>   - Use edge triggered setup
>   - Add comment regarding MultiMSI
>   - Simplify compose_msi_msg to avoid reg read
> 
> This is based on Jim's original submission[1] with some slight changes
> regarding how pcie->msi_target_addr is decided.
> 
> [1] https://patchwork.kernel.org/patch/10605955/
> 
>  drivers/pci/controller/Kconfig        |   1 +
>  drivers/pci/controller/pcie-brcmstb.c | 326 +++++++++++++++++++++++++-
>  2 files changed, 326 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
> index 486d4d570233..eb9d973ad8e5 100644
> --- a/drivers/pci/controller/Kconfig
> +++ b/drivers/pci/controller/Kconfig
> @@ -285,6 +285,7 @@ config PCIE_BRCMSTB
>  	bool "Broadcom Brcmstb PCIe host controller"
>  	depends on ARCH_BCM2835 || COMPILE_TEST
>  	depends on OF
> +	depends on PCI_MSI_IRQ_DOMAIN
>  	help
>  	  Say Y here to enable PCIe host controller support for
>  	  Broadcom STB based SoCs, like the Raspberry Pi 4.
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 8d81c5ab5979..35afd82107a7 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0+
>  /* Copyright (C) 2009 - 2019 Broadcom */
>  
> +#include <linux/bitops.h>
>  #include <linux/clk.h>
>  #include <linux/compiler.h>
>  #include <linux/delay.h>
> @@ -8,11 +9,13 @@
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/ioport.h>
> +#include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
>  #include <linux/kernel.h>
>  #include <linux/list.h>
>  #include <linux/log2.h>
>  #include <linux/module.h>
> +#include <linux/msi.h>
>  #include <linux/of_address.h>
>  #include <linux/of_irq.h>
>  #include <linux/of_pci.h>
> @@ -46,13 +49,18 @@
>  #define PCIE_MISC_RC_BAR2_CONFIG_LO			0x4034
>  #define PCIE_MISC_RC_BAR2_CONFIG_HI			0x4038
>  #define PCIE_MISC_RC_BAR3_CONFIG_LO			0x403c
> +#define PCIE_MISC_MSI_BAR_CONFIG_LO			0x4044
> +#define PCIE_MISC_MSI_BAR_CONFIG_HI			0x4048
> +#define PCIE_MISC_MSI_DATA_CONFIG			0x404c
>  #define PCIE_MISC_PCIE_CTRL				0x4064
>  #define PCIE_MISC_PCIE_STATUS				0x4068
> +#define PCIE_MISC_REVISION				0x406c
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT	0x4070
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_HI		0x4080
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LIMIT_HI		0x4084
>  #define PCIE_MISC_HARD_PCIE_HARD_DEBUG			0x4204
>  #define PCIE_INTR2_CPU_BASE				0x4300
> +#define PCIE_MSI_INTR2_BASE				0x4500
>  
>  /*
>   * Broadcom STB PCIe Register Field shift and mask info. The names are from the
> @@ -87,6 +95,8 @@
>  #define PCIE_MISC_PCIE_STATUS_PCIE_PHYLINKUP_SHIFT		0x4
>  #define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_MASK		0x40
>  #define PCIE_MISC_PCIE_STATUS_PCIE_LINK_IN_L23_SHIFT		0x6
> +#define PCIE_MISC_REVISION_MAJMIN_MASK				0xffff
> +#define PCIE_MISC_REVISION_MAJMIN_SHIFT				0

I don't think these two are used.

>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_MASK	0xfff00000
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_LIMIT_SHIFT	0x14
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_BASE_LIMIT_BASE_MASK	0xfff0
> @@ -104,6 +114,11 @@
>  #define PCIE_RGR1_SW_INIT_1_PERST_SHIFT				0x0
>  
>  #define BRCM_NUM_PCIE_OUT_WINS		0x4
> +#define BRCM_INT_PCI_MSI_NR		32
> +#define BRCM_PCIE_HW_REV_33		0x0303
> +
> +#define BRCM_MSI_TARGET_ADDR_LT_4GB	0x0fffffffcULL
> +#define BRCM_MSI_TARGET_ADDR_GT_4GB	0xffffffffcULL
>  
>  #define BURST_SIZE_128			0
>  
> @@ -182,6 +197,33 @@ struct brcm_window {
>  	dma_addr_t size;
>  };
>  
> +struct brcm_msi {
> +	struct device		*dev;
> +	void __iomem		*base;
> +	struct device_node	*np;
> +	struct irq_domain	*msi_domain;
> +	struct irq_domain	*inner_domain;
> +	struct mutex		lock; /* guards the alloc/free operations */
> +	u64			target_addr;
> +	int			irq;
> +
> +	/* intr_base is the base pointer for interrupt status/set/clr regs */
> +	void __iomem		*intr_base;
> +
> +	/* intr_legacy_mask indicates how many bits are MSI interrupts */
> +	u32			intr_legacy_mask;
> +
> +	/*
> +	 * intr_legacy_offset indicates bit position of MSI_01. It is
> +	 * to map the register bit position to a hwirq that starts at 0.
> +	 */
> +	u32			intr_legacy_offset;
> +
> +	/* used indicates which MSI interrupts have been alloc'd */
> +	unsigned long		used;
> +	unsigned int		rev;
> +};
> +
>  /* Internal PCIe Host Controller Information.*/
>  struct brcm_pcie {
>  	struct device		*dev;
> @@ -191,7 +233,10 @@ struct brcm_pcie {
>  	struct device_node	*np;
>  	bool			ssc;
>  	int			gen;
> +	u64			msi_target_addr;
>  	struct brcm_window	out_wins[BRCM_NUM_PCIE_OUT_WINS];
> +	struct brcm_msi		*msi;
> +	unsigned int		rev;
>  	const int		*reg_offsets;
>  	const int		*reg_field_info;
>  	enum pcie_type		type;
> @@ -433,6 +478,259 @@ static void brcm_pcie_set_outbound_win(struct brcm_pcie *pcie,
>  			   LIMIT, tmp);
>  }
>  
> +static struct irq_chip brcm_msi_irq_chip = {
> +	.name            = "BRCM STB PCIe MSI",
> +	.irq_ack         = irq_chip_ack_parent,
> +	.irq_mask        = pci_msi_mask_irq,
> +	.irq_unmask      = pci_msi_unmask_irq,
> +};
> +
> +static struct msi_domain_info brcm_msi_domain_info = {
> +	/* TODO: Multi MSI is technically supported by the controller */

As I understand we're not supporting MSI_FLAG_MULTI_PCI_MSI, not because there
is no hardware capability, but because the current use-case (RPi EPs) have no
need for it. It wouldn't be a stretch to add this support (compare your alloc
implementation with nwl_irq_domain_alloc from pcie-xilinx-nwl.c) - though I
appreciate the difficulity you may have with testing.

I'd probably replace the TODO line with:

/* Multi MSI is supported by the controller, but not by this driver */

> +	.flags	= (MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
> +		   MSI_FLAG_PCI_MSIX),

Why the MSIX flag if the commit message says "It does not add MSIX since that
functionality is not in the HW." in the commit message?

> +	.chip	= &brcm_msi_irq_chip,
> +};
> +
> +static void brcm_pcie_msi_isr(struct irq_desc *desc)
> +{
> +	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	unsigned long status, virq;
> +	struct brcm_msi *msi;
> +	u32 mask, bit, hwirq;
> +	struct device *dev;
> +
> +	chained_irq_enter(chip, desc);
> +	msi = irq_desc_get_handler_data(desc);
> +	mask = msi->intr_legacy_mask;

NIT: As you only use this variable once, you could get rid of it.

> +	dev = msi->dev;
> +
> +	status = bcm_readl(msi->intr_base + STATUS) & mask;
> +	for_each_set_bit(bit, &status, BRCM_INT_PCI_MSI_NR) {
> +
> +		/* Account for legacy interrupt offset */
> +		hwirq = bit - msi->intr_legacy_offset;
> +		virq = irq_find_mapping(msi->inner_domain, hwirq);
> +		if (virq)
> +			generic_handle_irq(virq);
> +		else
> +			dev_dbg(dev, "unexpected MSI\n");
> +	}
> +	chained_irq_exit(chip, desc);
> +}
> +
> +static void brcm_msi_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
> +{
> +	struct brcm_msi *msi = irq_data_get_irq_chip_data(data);
> +
> +	msg->address_lo = lower_32_bits(msi->target_addr);
> +	msg->address_hi = upper_32_bits(msi->target_addr);
> +	msg->data = 0x6540 | data->hwirq;
> +}
> +
> +static int brcm_msi_set_affinity(struct irq_data *irq_data,
> +				 const struct cpumask *mask, bool force)
> +{
> +	return -EINVAL;
> +}
> +
> +static void brcm_msi_ack_irq(struct irq_data *data)
> +{
> +	struct brcm_msi *msi = irq_data_get_irq_chip_data(data);
> +	u32 bit = data->hwirq + msi->intr_legacy_offset;
> +
> +	bcm_writel(1 << bit, msi->intr_base + CLR);
> +}
> +
> +
> +static struct irq_chip brcm_msi_bottom_irq_chip = {
> +	.name			= "BRCM STB MSI",
> +	.irq_compose_msi_msg	= brcm_msi_compose_msi_msg,
> +	.irq_set_affinity	= brcm_msi_set_affinity,
> +	.irq_ack                = brcm_msi_ack_irq,
> +};
> +
> +static int brcm_msi_alloc(struct brcm_msi *msi)
> +{
> +	int hwirq;
> +
> +	mutex_lock(&msi->lock);
> +	hwirq = bitmap_find_free_region(&msi->used, BRCM_INT_PCI_MSI_NR, 0);
> +	if (hwirq >= 0)
> +		hwirq = hwirq - msi->intr_legacy_offset;
> +	mutex_unlock(&msi->lock);
> +
> +	return hwirq;
> +}
> +
> +static void brcm_msi_free(struct brcm_msi *msi, unsigned long hwirq)
> +{
> +	mutex_lock(&msi->lock);
> +	bitmap_release_region(&msi->used, hwirq + msi->intr_legacy_offset, 0);
> +	mutex_unlock(&msi->lock);
> +}
> +
> +static int brcm_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
> +				 unsigned int nr_irqs, void *args)
> +{
> +	struct brcm_msi *msi = domain->host_data;
> +	int hwirq;
> +
> +	hwirq = brcm_msi_alloc(msi);
> +
> +	if (hwirq < 0)
> +		return hwirq;
> +
> +	irq_domain_set_info(domain, virq, (irq_hw_number_t)hwirq,
> +			    &brcm_msi_bottom_irq_chip, domain->host_data,
> +			    handle_edge_irq, NULL, NULL);
> +	return 0;
> +}
> +
> +static void brcm_irq_domain_free(struct irq_domain *domain,
> +				 unsigned int virq, unsigned int nr_irqs)
> +{
> +	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
> +	struct brcm_msi *msi = irq_data_get_irq_chip_data(d);
> +
> +	brcm_msi_free(msi, d->hwirq);
> +}
> +
> +static const struct irq_domain_ops msi_domain_ops = {
> +	.alloc	= brcm_irq_domain_alloc,
> +	.free	= brcm_irq_domain_free,
> +};
> +
> +static int brcm_allocate_domains(struct brcm_msi *msi)
> +{
> +	struct fwnode_handle *fwnode = of_node_to_fwnode(msi->np);
> +	struct device *dev = msi->dev;
> +
> +	msi->inner_domain = irq_domain_add_linear(NULL, BRCM_INT_PCI_MSI_NR,
> +						  &msi_domain_ops, msi);
> +	if (!msi->inner_domain) {
> +		dev_err(dev, "failed to create IRQ domain\n");
> +		return -ENOMEM;
> +	}
> +
> +	msi->msi_domain = pci_msi_create_irq_domain(fwnode,
> +						    &brcm_msi_domain_info,
> +						    msi->inner_domain);
> +	if (!msi->msi_domain) {
> +		dev_err(dev, "failed to create MSI domain\n");
> +		irq_domain_remove(msi->inner_domain);
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
> +static void brcm_free_domains(struct brcm_msi *msi)
> +{
> +	irq_domain_remove(msi->msi_domain);
> +	irq_domain_remove(msi->inner_domain);
> +}
> +
> +static void brcm_msi_remove(struct brcm_pcie *pcie)
> +{
> +	struct brcm_msi *msi = pcie->msi;
> +
> +	if (!msi)
> +		return;
> +	irq_set_chained_handler(msi->irq, NULL);
> +	irq_set_handler_data(msi->irq, NULL);
> +	brcm_free_domains(msi);
> +}
> +
> +static void brcm_msi_set_regs(struct brcm_msi *msi)
> +{
> +	u32 data_val, msi_lo, msi_hi;
> +
> +	if (msi->rev >= BRCM_PCIE_HW_REV_33) {
> +		/*
> +		 * ffe0 -- least sig 5 bits are 0 indicating 32 msgs
> +		 * 6540 -- this is our arbitrary unique data value
> +		 */
> +		data_val = 0xffe06540;
> +	} else {
> +		/*
> +		 * fff8 -- least sig 3 bits are 0 indicating 8 msgs
> +		 * 6540 -- this is our arbitrary unique data value
> +		 */
> +		data_val = 0xfff86540;
> +	}
> +
> +	/* Unmaks MSIs */
> +	bcm_writel(0xffffffff & msi->intr_legacy_mask,
> +		   msi->intr_base + MASK_CLR);
> +
> +	msi_lo = lower_32_bits(msi->target_addr);
> +	msi_hi = upper_32_bits(msi->target_addr);
> +	/*
> +	 * The 0 bit of PCIE_MISC_MSI_BAR_CONFIG_LO is repurposed to MSI
> +	 * enable, which we set to 1.
> +	 */
> +	bcm_writel(msi_lo | 1, msi->base + PCIE_MISC_MSI_BAR_CONFIG_LO);
> +	bcm_writel(msi_hi, msi->base + PCIE_MISC_MSI_BAR_CONFIG_HI);
> +	bcm_writel(data_val, msi->base + PCIE_MISC_MSI_DATA_CONFIG);
> +}
> +
> +static int brcm_pcie_enable_msi(struct brcm_pcie *pcie)
> +{
> +	struct brcm_msi *msi;
> +	int irq, ret;
> +	struct device *dev = pcie->dev;
> +
> +	irq = irq_of_parse_and_map(dev->of_node, 1);
> +	if (irq <= 0) {
> +		dev_err(dev, "cannot map msi intr\n");

NIT: I think we can spare a few more characters and replace intr with interrupt.

> +		return -ENODEV;
> +	}
> +
> +	msi = devm_kzalloc(dev, sizeof(struct brcm_msi), GFP_KERNEL);
> +	if (!msi)
> +		return -ENOMEM;
> +
> +	msi->dev = dev;
> +	msi->base = pcie->base;
> +	msi->rev =  pcie->rev;
> +	msi->np = pcie->np;
> +	msi->target_addr = pcie->msi_target_addr;
> +	msi->irq = irq;
> +
> +	ret = brcm_allocate_domains(msi);
> +	if (ret)
> +		return ret;
> +
> +	irq_set_chained_handler_and_data(msi->irq, brcm_pcie_msi_isr, msi);
> +
> +	if (msi->rev >= BRCM_PCIE_HW_REV_33) {
> +		msi->intr_base = msi->base + PCIE_MSI_INTR2_BASE;
> +		/*
> +		 * This version of PCIe hw has only 32 intr bits
> +		 * starting at bit position 0.
> +		 */
> +		msi->intr_legacy_mask = 0xffffffff;
> +		msi->intr_legacy_offset = 0x0;
> +		msi->used = 0x0;
> +
> +	} else {
> +		msi->intr_base = msi->base + PCIE_INTR2_CPU_BASE;
> +		/*
> +		 * This version of PCIe hw has only 8 intr bits starting
> +		 * at bit position 24.
> +		 */
> +		msi->intr_legacy_mask = 0xff000000;
> +		msi->intr_legacy_offset = 24;
> +		msi->used = 0x00ffffff;
> +	}
> +
> +	brcm_msi_set_regs(msi);
> +	pcie->msi = msi;
> +
> +	return 0;
> +}
> +
>  /* Configuration space read/write support */
>  static int brcm_pcie_cfg_index(int busnr, int devfn, int reg)
>  {
> @@ -584,6 +882,10 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	/* Wait for SerDes to be stable */
>  	usleep_range(100, 200);
>  
> +	/* Grab the PCIe hw revision number */
> +	tmp = bcm_readl(base + PCIE_MISC_REVISION);
> +	pcie->rev = EXTRACT_FIELD(tmp, PCIE_MISC_REVISION, MAJMIN);
> +
>  	/* Set SCB_MAX_BURST_SIZE, CFG_READ_UR_MODE, SCB_ACCESS_EN */
>  	tmp = INSERT_FIELD(0, PCIE_MISC_MISC_CTRL, SCB_ACCESS_EN, 1);
>  	tmp = INSERT_FIELD(tmp, PCIE_MISC_MISC_CTRL, CFG_READ_UR_MODE, 1);
> @@ -596,6 +898,18 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	if (ret)
>  		return ret;
>  
> +	/*
> +	 * We ideally want the MSI target address to be located in the 32bit
> +	 * addressable memory area. Some devices might depend on it. This is
> +	 * possible either when the inbound window is located above the lower
> +	 * 4GB or when the inbound and outbound areas fit in the lower 4GB of
> +	 * memory.
> +	 */
> +	if (rc_bar2_offset >= SZ_4G || (rc_bar2_size + rc_bar2_offset) <= SZ_4G)
> +		pcie->msi_target_addr = BRCM_MSI_TARGET_ADDR_LT_4GB;
> +	else
> +		pcie->msi_target_addr = BRCM_MSI_TARGET_ADDR_GT_4GB;
> +

Can this above hunk me moved into brcm_pcie_enable_msi? You could then avoid
having the pcie->msi_target_addr and just have a single msi->target_addr
variable?

Thanks,

Andrew Murray

>  	tmp = lower_32_bits(rc_bar2_offset);
>  	tmp = INSERT_FIELD(tmp, PCIE_MISC_RC_BAR2_CONFIG_LO, SIZE,
>  			   brcm_pcie_encode_ibar_size(rc_bar2_size));
> @@ -734,6 +1048,7 @@ static void brcm_pcie_turn_off(struct brcm_pcie *pcie)
>  
>  static void __brcm_pcie_remove(struct brcm_pcie *pcie)
>  {
> +	brcm_msi_remove(pcie);
>  	brcm_pcie_turn_off(pcie);
>  	clk_disable_unprepare(pcie->clk);
>  	clk_put(pcie->clk);
> @@ -758,7 +1073,7 @@ MODULE_DEVICE_TABLE(of, brcm_pcie_match);
>  
>  static int brcm_pcie_probe(struct platform_device *pdev)
>  {
> -	struct device_node *np = pdev->dev.of_node;
> +	struct device_node *np = pdev->dev.of_node, *msi_np;
>  	const struct pcie_cfg_data *data;
>  	struct pci_host_bridge *bridge;
>  	struct brcm_pcie *pcie;
> @@ -813,6 +1128,15 @@ static int brcm_pcie_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto fail;
>  
> +	msi_np = of_parse_phandle(pcie->np, "msi-parent", 0);
> +	if (pci_msi_enabled() && msi_np == pcie->np) {
> +		ret = brcm_pcie_enable_msi(pcie);
> +		if (ret) {
> +			dev_err(pcie->dev, "probe of internal MSI failed");
> +			goto fail;
> +		}
> +	}
> +
>  	bridge->dev.parent = &pdev->dev;
>  	bridge->busnr = 0;
>  	bridge->ops = &brcm_pcie_ops;
> -- 
> 2.24.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
