Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F635166414
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:13:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAw4RhJQ8GLI5Fq7Ca5yFIt3GrCYH0li5WRmtTBc8t0=; b=GBrnlobFWuA86a
	yGi0TTNbMSfqppBRsbrsqzUoQudc6Vd11OwRG5CWxOf1Pycyv0yF+e6coamNBymOpm+/vUnaZZEro
	1yxFpypvJAv/uDmRi5Qg7a50n4nBs/aLdegJIzrGGSUfa497vDYssiHmFcrGFFNDNW/F1w4eO0MxS
	UE+srR+fsIma5B7YwfY/LhQInbGZQ09mrB39dH0w+7920J4uCIeEh8H3RejNVbhLLuP4KOLjYI191
	TlGyKZ8xjMl5GDrtot6Hd5TjL6XKZypEvTZyZIQIn9eS2fsBtvAbSYolu8fW15IYBVDmLTditWRmB
	nBJcmGulPem6I0YZNHRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pO4-0005B9-8k; Thu, 20 Feb 2020 17:13:20 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pNn-0005Ac-VV
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:13:06 +0000
Received: by mail-wr1-x444.google.com with SMTP id n10so5547862wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:13:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ol3Y90+yikMLSLeaOyoTNTDqWzKvu/tflPpzS3YJnLU=;
 b=iVh9ETFTFOPTFGDO2qeaCVyMm+dprGUXaF5AkG5VxNfmTgY3dtwIzu9HEIhmDmrQiz
 QKTuY6dss0izXId7QGhgbnDmp6SND+uKPQo4afPdByOSWy3kMy/Kg1oSAYdZf60+wU1G
 Pl5W6KnFgkiyDg5hN2l1e6HRtH1VHAi9jHj9nN2lVbE7x8+VTSRuAKi1NeuegxFOs++6
 ollqzuFcbb844tUq0BKFADqOqcYrvCyLiior3iGh/DP5HGVRjbjt+aZMkZ9yvUxEqIpJ
 gR21MhzIEYqSYoli7nXUlwMG867iNMNZksmtwTkJbdvs8RywRoeVZNEyXyJlbsrsT2ms
 jdfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ol3Y90+yikMLSLeaOyoTNTDqWzKvu/tflPpzS3YJnLU=;
 b=gTbjp2IvPyc4CRO+4WOAFi2bydM1KD9nlouy2ftImY+oomJcbSMlpF7NOq52plfYB0
 ExuMm4z0hSQzaw27zmveBVS6QtdRiXUdF/WnjS4efcL1C8REnWxhlNt7k/gu5CzxKP6q
 XPCIgw6qaIHb+2JQM5Zs2D/WUd4DFjAYUXViUXAMbYwkulq5z6HkS0Z4kSTBsEdAHhGr
 JF5jLZzL9DvWQLQVEE+Y8exW5JJ0bDcRBjJsbssS1N+WvS+umvxaB4vXwhnlNFaCQvRw
 Uw0eei+CRrPUkKFcKJq7fFP4bCdgljSxO+HnyESplTYN2Owv5OqDs0t1RvYEXJxDPBk8
 +5cg==
X-Gm-Message-State: APjAAAVFmZmmym3IB30d6RCCfqxGsjuo/9zgGWiWSa+AH7MKBF1k+GiU
 7BuUZBkB5dIHt5ILP3RiPzoFRw==
X-Google-Smtp-Source: APXvYqxZx6HjS2DKlsfjbpqq9GWGnZZoWtamGVCo1O9FNJx45sTN3CUoxDrSBdThfsbryQH22ZbQVA==
X-Received: by 2002:a5d:4dc5:: with SMTP id f5mr44600717wru.114.1582218782031; 
 Thu, 20 Feb 2020 09:13:02 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id e18sm199802wrw.70.2020.02.20.09.13.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:13:01 -0800 (PST)
Date: Thu, 20 Feb 2020 17:12:59 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 01/13] PCI: mobiveil: Introduce a new structure
 mobiveil_root_port
Message-ID: <20200220171259.GD19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-2-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-2-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_091304_200494_74CC655B 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 m.karthikeyan@mobiveil.co.in, arnd@arndb.de, linux-pci@vger.kernel.org,
 l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, Xiaowei.Bao@nxp.com,
 catalin.marinas@arm.com, bhelgaas@google.com, andrew.murray@arm.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:06:32PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> The Mobiveil PCIe controller can work in either Root Complex
> mode or Endpoint mode. So introduce a new structure
> mobiveil_root_port, and abstract the RC related members into
> it such that the code can be used by both mode.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - Refined the subject and change log.
>  - Added prefix mobiveil to the root port structure.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 99 ++++++++++++++++----------
>  1 file changed, 60 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 3a696ca45bfa..d4de560cd711 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -3,7 +3,10 @@
>   * PCIe host controller driver for Mobiveil PCIe Host controller
>   *
>   * Copyright (c) 2018 Mobiveil Inc.
> + * Copyright 2019-2020 NXP
> + *
>   * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> + *	   Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
>   */
>  
>  #include <linux/delay.h>
> @@ -138,22 +141,27 @@ struct mobiveil_msi {			/* MSI information */
>  	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
>  };
>  
> +struct mobiveil_root_port {
> +	char root_bus_nr;
> +	void __iomem *config_axi_slave_base;	/* endpoint config base */
> +	struct resource *ob_io_res;
> +	int irq;
> +	raw_spinlock_t intx_mask_lock;
> +	struct irq_domain *intx_domain;
> +	struct mobiveil_msi msi;
> +	struct pci_host_bridge *bridge;
> +};
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
> +	struct mobiveil_root_port rp;
>  };
>  
>  /*
> @@ -281,16 +289,17 @@ static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
>  static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
>  {
>  	struct mobiveil_pcie *pcie = bus->sysdata;
> +	struct mobiveil_root_port *rp = &pcie->rp;
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
> +	struct mobiveil_root_port *rp = &pcie->rp;
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
> +	struct mobiveil_root_port *rp = &pcie->rp;
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
> +	struct mobiveil_root_port *rp = &pcie->rp;
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
> +	struct mobiveil_root_port *rp = &pcie->rp;
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
> +	struct mobiveil_root_port *rp;
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
> +	struct mobiveil_root_port *rp;
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
> +	struct mobiveil_root_port *rp = &pcie->rp;
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
> +	struct mobiveil_root_port *rp;
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
