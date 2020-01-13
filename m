Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11755138E97
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 11:10:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFuzQnZY3ZKVnuvM+I+s/YPVjq4E45SRkMvSTZy7diM=; b=szBULMfEKsNimc
	+IEG3bbELq5jNkClqs2T6xsxwN+OfQ2/pc5DfF3MfTrtOG4h2rlTgOe2Da7vK2UvOp3FDkNby36g0
	6MJr76eH4Wo3PkLhRUYytFn4IQVaXPZNrLtCmJD5kJTJHen5USoSIeBrgmTUUAMkpQxySvdbPsoNS
	bw7brnJOhAJvxBmRg7SXbEcwPzeLlXFT8fwy63c9SXadh7OMluCaOS1SwsPoww7K0PZD8ovzZjELR
	f8m5HZUGxH7cQM58IpneRnf/7B/1JxeLVVNSZ0Y8MrrOMS5wSM+mezrefN67GgUXuFVFaZXkZoXnU
	bDwhkZPyAOH12C60pXzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwfe-0005Fc-OB; Mon, 13 Jan 2020 10:10:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwfB-0004u6-TY
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 10:09:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 745A213D5;
 Mon, 13 Jan 2020 02:09:35 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B587C3F534;
 Mon, 13 Jan 2020 02:09:34 -0800 (PST)
Date: Mon, 13 Jan 2020 10:09:33 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv9 01/12] PCI: mobiveil: Re-abstract the private structure
Message-ID: <20200113100931.GG42593@e119886-lin.cambridge.arm.com>
References: <20191120034451.30102-1-Zhiqiang.Hou@nxp.com>
 <20191120034451.30102-2-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120034451.30102-2-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_020938_108535_1101AF7E 
X-CRM114-Status: GOOD (  28.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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

On Wed, Nov 20, 2019 at 03:45:23AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> The Mobiveil PCIe controller can work in either Root Complex
> mode or Endpoint mode. So introduce a new structure root_port,
> and abstract the RC related members into it.

The first sentence explains the trigger for this work, the second
explains what you are changing, it would be helpful to also describe
why you need to make this change. You could do this by extending the
last sentence, e.g.

"So introduce a new structure root_port, and abstract the RC
 related members into it such that it can be used by both ..."

As this series doesn't actually add a EP driver, this abstraction
isn't needed now - but it is nice to have - it may be helpful to explain
this.

The email subject could also more precisely explain what this patch
does.


> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> V9:
>  - New patch splited from the #1 of V8 patches to make it easy to review.

Indeed, it's much nicer to review - thanks.


> 
>  drivers/pci/controller/pcie-mobiveil.c | 99 ++++++++++++++++----------
>  1 file changed, 60 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 3a696ca45bfa..5fd26e376af2 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -3,7 +3,10 @@
>   * PCIe host controller driver for Mobiveil PCIe Host controller
>   *
>   * Copyright (c) 2018 Mobiveil Inc.
> + * Copyright 2019 NXP
> + *
>   * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> + * Recode: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

As per my previous feedback, I'm not sure the value of using the term refactor
or a synonym of it. And I certaintly don't want to encourage anyone that
modifies this file to add a similar tag when the information is easily visible
via GIT and the get_maintainers script.

>   */
>  
>  #include <linux/delay.h>
> @@ -138,22 +141,27 @@ struct mobiveil_msi {			/* MSI information */
>  	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
>  };
>  
> +struct root_port {
> +	char root_bus_nr;
> +	void __iomem *config_axi_slave_base;	/* endpoint config base */
> +	struct resource *ob_io_res;
> +	int irq;
> +	raw_spinlock_t intx_mask_lock;
> +	struct irq_domain *intx_domain;
> +	struct mobiveil_msi msi;
> +	struct pci_host_bridge *bridge;
> +};

Please prefix with mobiveil given we have mobiveil related structures
inside it.

(Also on your respin, please rebase as per Olof's feedback).

Thanks,

Andrew Murray

> +
>  struct mobiveil_pcie {
>  	struct platform_device *pdev;
> -	void __iomem *config_axi_slave_base;	/* endpoint config base */
>  	void __iomem *csr_axi_slave_base;	/* root port config base */
>  	void __iomem *apb_csr_base;	/* MSI register base */
>  	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
> -	struct irq_domain *intx_domain;
> -	raw_spinlock_t intx_mask_lock;
> -	int irq;
>  	int apio_wins;
>  	int ppio_wins;
>  	int ob_wins_configured;		/* configured outbound windows */
>  	int ib_wins_configured;		/* configured inbound windows */
> -	struct resource *ob_io_res;
> -	char root_bus_nr;
> -	struct mobiveil_msi msi;
> +	struct root_port rp;
>  };
>  
>  /*
> @@ -281,16 +289,17 @@ static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
>  static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
>  {
>  	struct mobiveil_pcie *pcie = bus->sysdata;
> +	struct root_port *rp = &pcie->rp;
>  
>  	/* Only one device down on each root port */
> -	if ((bus->number == pcie->root_bus_nr) && (devfn > 0))
> +	if ((bus->number == rp->root_bus_nr) && (devfn > 0))
>  		return false;
>  
>  	/*
>  	 * Do not read more than one device on the bus directly
>  	 * attached to RC
>  	 */
> -	if ((bus->primary == pcie->root_bus_nr) && (PCI_SLOT(devfn) > 0))
> +	if ((bus->primary == rp->root_bus_nr) && (PCI_SLOT(devfn) > 0))
>  		return false;
>  
>  	return true;
> @@ -304,13 +313,14 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
>  					   unsigned int devfn, int where)
>  {
>  	struct mobiveil_pcie *pcie = bus->sysdata;
> +	struct root_port *rp = &pcie->rp;
>  	u32 value;
>  
>  	if (!mobiveil_pcie_valid_device(bus, devfn))
>  		return NULL;
>  
>  	/* RC config access */
> -	if (bus->number == pcie->root_bus_nr)
> +	if (bus->number == rp->root_bus_nr)
>  		return pcie->csr_axi_slave_base + where;
>  
>  	/*
> @@ -325,7 +335,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
>  
>  	mobiveil_csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
>  
> -	return pcie->config_axi_slave_base + where;
> +	return rp->config_axi_slave_base + where;
>  }
>  
>  static struct pci_ops mobiveil_pcie_ops = {
> @@ -339,7 +349,8 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  	struct irq_chip *chip = irq_desc_get_chip(desc);
>  	struct mobiveil_pcie *pcie = irq_desc_get_handler_data(desc);
>  	struct device *dev = &pcie->pdev->dev;
> -	struct mobiveil_msi *msi = &pcie->msi;
> +	struct root_port *rp = &pcie->rp;
> +	struct mobiveil_msi *msi = &rp->msi;
>  	u32 msi_data, msi_addr_lo, msi_addr_hi;
>  	u32 intr_status, msi_status;
>  	unsigned long shifted_status;
> @@ -365,7 +376,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  		shifted_status >>= PAB_INTX_START;
>  		do {
>  			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
> -				virq = irq_find_mapping(pcie->intx_domain,
> +				virq = irq_find_mapping(rp->intx_domain,
>  							bit + 1);
>  				if (virq)
>  					generic_handle_irq(virq);
> @@ -424,15 +435,16 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  	struct device *dev = &pcie->pdev->dev;
>  	struct platform_device *pdev = pcie->pdev;
>  	struct device_node *node = dev->of_node;
> +	struct root_port *rp = &pcie->rp;
>  	struct resource *res;
>  
>  	/* map config resource */
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
>  					   "config_axi_slave");
> -	pcie->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
> -	if (IS_ERR(pcie->config_axi_slave_base))
> -		return PTR_ERR(pcie->config_axi_slave_base);
> -	pcie->ob_io_res = res;
> +	rp->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
> +	if (IS_ERR(rp->config_axi_slave_base))
> +		return PTR_ERR(rp->config_axi_slave_base);
> +	rp->ob_io_res = res;
>  
>  	/* map csr resource */
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> @@ -455,9 +467,9 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
>  		pcie->ppio_wins = MAX_PIO_WINDOWS;
>  
> -	pcie->irq = platform_get_irq(pdev, 0);
> -	if (pcie->irq <= 0) {
> -		dev_err(dev, "failed to map IRQ: %d\n", pcie->irq);
> +	rp->irq = platform_get_irq(pdev, 0);
> +	if (rp->irq <= 0) {
> +		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
>  		return -ENODEV;
>  	}
>  
> @@ -564,9 +576,9 @@ static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
>  static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
>  {
>  	phys_addr_t msg_addr = pcie->pcie_reg_base;
> -	struct mobiveil_msi *msi = &pcie->msi;
> +	struct mobiveil_msi *msi = &pcie->rp.msi;
>  
> -	pcie->msi.num_of_vectors = PCI_NUM_MSI;
> +	msi->num_of_vectors = PCI_NUM_MSI;
>  	msi->msi_pages_phys = (phys_addr_t)msg_addr;
>  
>  	writel_relaxed(lower_32_bits(msg_addr),
> @@ -579,7 +591,8 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
>  
>  static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  {
> -	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
> +	struct root_port *rp = &pcie->rp;
> +	struct pci_host_bridge *bridge = rp->bridge;
>  	u32 value, pab_ctrl, type;
>  	struct resource_entry *win;
>  
> @@ -629,8 +642,8 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	 */
>  
>  	/* config outbound translation window */
> -	program_ob_windows(pcie, WIN_NUM_0, pcie->ob_io_res->start, 0,
> -			   CFG_WINDOW_TYPE, resource_size(pcie->ob_io_res));
> +	program_ob_windows(pcie, WIN_NUM_0, rp->ob_io_res->start, 0,
> +			   CFG_WINDOW_TYPE, resource_size(rp->ob_io_res));
>  
>  	/* memory inbound translation window */
>  	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
> @@ -667,32 +680,36 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
>  {
>  	struct irq_desc *desc = irq_to_desc(data->irq);
>  	struct mobiveil_pcie *pcie;
> +	struct root_port *rp;
>  	unsigned long flags;
>  	u32 mask, shifted_val;
>  
>  	pcie = irq_desc_get_chip_data(desc);
> +	rp = &pcie->rp;
>  	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
> -	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
> +	raw_spin_lock_irqsave(&rp->intx_mask_lock, flags);
>  	shifted_val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
>  	shifted_val &= ~mask;
>  	mobiveil_csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
> -	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
> +	raw_spin_unlock_irqrestore(&rp->intx_mask_lock, flags);
>  }
>  
>  static void mobiveil_unmask_intx_irq(struct irq_data *data)
>  {
>  	struct irq_desc *desc = irq_to_desc(data->irq);
>  	struct mobiveil_pcie *pcie;
> +	struct root_port *rp;
>  	unsigned long flags;
>  	u32 shifted_val, mask;
>  
>  	pcie = irq_desc_get_chip_data(desc);
> +	rp = &pcie->rp;
>  	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
> -	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
> +	raw_spin_lock_irqsave(&rp->intx_mask_lock, flags);
>  	shifted_val = mobiveil_csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
>  	shifted_val |= mask;
>  	mobiveil_csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
> -	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
> +	raw_spin_unlock_irqrestore(&rp->intx_mask_lock, flags);
>  }
>  
>  static struct irq_chip intx_irq_chip = {
> @@ -760,7 +777,7 @@ static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
>  					 unsigned int nr_irqs, void *args)
>  {
>  	struct mobiveil_pcie *pcie = domain->host_data;
> -	struct mobiveil_msi *msi = &pcie->msi;
> +	struct mobiveil_msi *msi = &pcie->rp.msi;
>  	unsigned long bit;
>  
>  	WARN_ON(nr_irqs != 1);
> @@ -787,7 +804,7 @@ static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
>  {
>  	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
>  	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
> -	struct mobiveil_msi *msi = &pcie->msi;
> +	struct mobiveil_msi *msi = &pcie->rp.msi;
>  
>  	mutex_lock(&msi->lock);
>  
> @@ -808,9 +825,9 @@ static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
>  {
>  	struct device *dev = &pcie->pdev->dev;
>  	struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
> -	struct mobiveil_msi *msi = &pcie->msi;
> +	struct mobiveil_msi *msi = &pcie->rp.msi;
>  
> -	mutex_init(&pcie->msi.lock);
> +	mutex_init(&msi->lock);
>  	msi->dev_domain = irq_domain_add_linear(NULL, msi->num_of_vectors,
>  						&msi_domain_ops, pcie);
>  	if (!msi->dev_domain) {
> @@ -834,18 +851,19 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  {
>  	struct device *dev = &pcie->pdev->dev;
>  	struct device_node *node = dev->of_node;
> +	struct root_port *rp = &pcie->rp;
>  	int ret;
>  
>  	/* setup INTx */
> -	pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> -						  &intx_domain_ops, pcie);
> +	rp->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> +						&intx_domain_ops, pcie);
>  
> -	if (!pcie->intx_domain) {
> +	if (!rp->intx_domain) {
>  		dev_err(dev, "Failed to get a INTx IRQ domain\n");
>  		return -ENOMEM;
>  	}
>  
> -	raw_spin_lock_init(&pcie->intx_mask_lock);
> +	raw_spin_lock_init(&rp->intx_mask_lock);
>  
>  	/* setup MSI */
>  	ret = mobiveil_allocate_msi_domains(pcie);
> @@ -862,6 +880,7 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	struct pci_bus *child;
>  	struct pci_host_bridge *bridge;
>  	struct device *dev = &pdev->dev;
> +	struct root_port *rp;
>  	int ret;
>  
>  	/* allocate the PCIe port */
> @@ -870,6 +889,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  		return -ENOMEM;
>  
>  	pcie = pci_host_bridge_priv(bridge);
> +	rp = &pcie->rp;
> +	rp->bridge = bridge;
>  
>  	pcie->pdev = pdev;
>  
> @@ -904,12 +925,12 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
> +	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
>  
>  	/* Initialize bridge */
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = pcie;
> -	bridge->busnr = pcie->root_bus_nr;
> +	bridge->busnr = rp->root_bus_nr;
>  	bridge->ops = &mobiveil_pcie_ops;
>  	bridge->map_irq = of_irq_parse_and_map_pci;
>  	bridge->swizzle_irq = pci_common_swizzle;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
