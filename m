Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B795E7A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 17:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PtJvRH/f75zDhOmAGS+w5GRIs66Yr1kqfqZr7+Jzq7A=; b=edqdFJgYkHgaSU
	XOlAJpHTF1OW/FoKAno6zbYEX45H22xJzgucJ+ozN/OMJo64dAreSBFhienIp1sKeMYFm9cep6BHc
	6KyOnAhMbUAccQkqItjj/Tc/nmmsNQ59GRnLD/APFB011hxVEC7oMk/eTcJ76IiL6p5RFe0VcAKml
	ytXUQYCeeksz16CzG4gUq+3rHf7koH0norULN1ZcDRjDCpskLuIpfekM1Jtc3iJJKgcRyT6fkdkNh
	h4YcSl6EL+rrFQqR/NyE+VJrkcaakbeiMmK+3wubEErRVdnTOj6qP583v+fVvYfgLbk8pQ0/cLb4f
	MSxG7ybmH6Fat60xxQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hih2a-000578-KY; Wed, 03 Jul 2019 15:19:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hih2M-00056J-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 15:19:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0B3C344;
 Wed,  3 Jul 2019 08:19:09 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 82E913F718;
 Wed,  3 Jul 2019 08:19:07 -0700 (PDT)
Date: Wed, 3 Jul 2019 16:19:05 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 02/20] PCI: mobiveil: Format the code without
 functionality change
Message-ID: <20190703151905.GD26804@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-3-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-3-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_081910_771709_04962AA6 
X-CRM114-Status: GOOD (  27.63  )
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
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 08:35:24AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Just format the code without functionality change.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> ---
> V5:
>  - Retouched the subject.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 261 +++++++++++++------------
>  1 file changed, 137 insertions(+), 124 deletions(-)

Ok, dropping this patch means that everything else should be
rebased. So what I am going to do:

- I will publish a branch (pci/mobiveil) where I added the patches
  that are ready to be merged with commit logs rewritten; this patch
  is part of it but in the final version it must be split as requested.
- You have to split this patch and the other patches I requested
  you to split but do NOT modify the patches with my commit logs
  rewritten in pci/mobiveil, it took me time to rewrite them.

If you can manage to rebase patches on pci/mobiveil on top
of v5.2-rc1, send them separately so that I can merge them
as a base for the subsequent patches to be applied.

If you have any questions please ask, do not post patches
if there is something that is not clear.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index d55c7e780c6e..b87471f08a40 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -31,38 +31,40 @@
>   * translation tables are grouped into windows, each window registers are
>   * grouped into blocks of 4 or 16 registers each
>   */
> -#define PAB_REG_BLOCK_SIZE	16
> -#define PAB_EXT_REG_BLOCK_SIZE	4
> +#define PAB_REG_BLOCK_SIZE		16
> +#define PAB_EXT_REG_BLOCK_SIZE		4
>  
> -#define PAB_REG_ADDR(offset, win) (offset + (win * PAB_REG_BLOCK_SIZE))
> -#define PAB_EXT_REG_ADDR(offset, win) (offset + (win * PAB_EXT_REG_BLOCK_SIZE))
> +#define PAB_REG_ADDR(offset, win)	\
> +	(offset + (win * PAB_REG_BLOCK_SIZE))
> +#define PAB_EXT_REG_ADDR(offset, win)	\
> +	(offset + (win * PAB_EXT_REG_BLOCK_SIZE))
>  
> -#define LTSSM_STATUS		0x0404
> -#define  LTSSM_STATUS_L0_MASK	0x3f
> -#define  LTSSM_STATUS_L0	0x2d
> +#define LTSSM_STATUS			0x0404
> +#define  LTSSM_STATUS_L0_MASK		0x3f
> +#define  LTSSM_STATUS_L0		0x2d
>  
> -#define PAB_CTRL		0x0808
> -#define  AMBA_PIO_ENABLE_SHIFT	0
> -#define  PEX_PIO_ENABLE_SHIFT	1
> -#define  PAGE_SEL_SHIFT	13
> -#define  PAGE_SEL_MASK		0x3f
> -#define  PAGE_LO_MASK		0x3ff
> -#define  PAGE_SEL_OFFSET_SHIFT	10
> +#define PAB_CTRL			0x0808
> +#define  AMBA_PIO_ENABLE_SHIFT		0
> +#define  PEX_PIO_ENABLE_SHIFT		1
> +#define  PAGE_SEL_SHIFT			13
> +#define  PAGE_SEL_MASK			0x3f
> +#define  PAGE_LO_MASK			0x3ff
> +#define  PAGE_SEL_OFFSET_SHIFT		10
>  
> -#define PAB_AXI_PIO_CTRL	0x0840
> -#define  APIO_EN_MASK		0xf
> +#define PAB_AXI_PIO_CTRL		0x0840
> +#define  APIO_EN_MASK			0xf
>  
> -#define PAB_PEX_PIO_CTRL	0x08c0
> -#define  PIO_ENABLE_SHIFT	0
> +#define PAB_PEX_PIO_CTRL		0x08c0
> +#define  PIO_ENABLE_SHIFT		0
>  
>  #define PAB_INTP_AMBA_MISC_ENB		0x0b0c
> -#define PAB_INTP_AMBA_MISC_STAT	0x0b1c
> +#define PAB_INTP_AMBA_MISC_STAT		0x0b1c
>  #define  PAB_INTP_INTX_MASK		0x01e0
>  #define  PAB_INTP_MSI_MASK		0x8
>  
> -#define PAB_AXI_AMAP_CTRL(win)	PAB_REG_ADDR(0x0ba0, win)
> -#define  WIN_ENABLE_SHIFT	0
> -#define  WIN_TYPE_SHIFT	1
> +#define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
> +#define  WIN_ENABLE_SHIFT		0
> +#define  WIN_TYPE_SHIFT			1
>  
>  #define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
>  
> @@ -70,16 +72,16 @@
>  #define  AXI_WINDOW_ALIGN_MASK		3
>  
>  #define PAB_AXI_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x0ba8, win)
> -#define  PAB_BUS_SHIFT		24
> -#define  PAB_DEVICE_SHIFT	19
> -#define  PAB_FUNCTION_SHIFT	16
> +#define  PAB_BUS_SHIFT			24
> +#define  PAB_DEVICE_SHIFT		19
> +#define  PAB_FUNCTION_SHIFT		16
>  
>  #define PAB_AXI_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x0bac, win)
>  #define PAB_INTP_AXI_PIO_CLASS		0x474
>  
> -#define PAB_PEX_AMAP_CTRL(win)	PAB_REG_ADDR(0x4ba0, win)
> -#define  AMAP_CTRL_EN_SHIFT	0
> -#define  AMAP_CTRL_TYPE_SHIFT	1
> +#define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
> +#define  AMAP_CTRL_EN_SHIFT		0
> +#define  AMAP_CTRL_TYPE_SHIFT		1
>  
>  #define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
>  #define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
> @@ -87,39 +89,39 @@
>  #define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
>  
>  /* starting offset of INTX bits in status register */
> -#define PAB_INTX_START	5
> +#define PAB_INTX_START			5
>  
>  /* supported number of MSI interrupts */
> -#define PCI_NUM_MSI	16
> +#define PCI_NUM_MSI			16
>  
>  /* MSI registers */
> -#define MSI_BASE_LO_OFFSET	0x04
> -#define MSI_BASE_HI_OFFSET	0x08
> -#define MSI_SIZE_OFFSET	0x0c
> -#define MSI_ENABLE_OFFSET	0x14
> -#define MSI_STATUS_OFFSET	0x18
> -#define MSI_DATA_OFFSET	0x20
> -#define MSI_ADDR_L_OFFSET	0x24
> -#define MSI_ADDR_H_OFFSET	0x28
> +#define MSI_BASE_LO_OFFSET		0x04
> +#define MSI_BASE_HI_OFFSET		0x08
> +#define MSI_SIZE_OFFSET			0x0c
> +#define MSI_ENABLE_OFFSET		0x14
> +#define MSI_STATUS_OFFSET		0x18
> +#define MSI_DATA_OFFSET			0x20
> +#define MSI_ADDR_L_OFFSET		0x24
> +#define MSI_ADDR_H_OFFSET		0x28
>  
>  /* outbound and inbound window definitions */
> -#define WIN_NUM_0		0
> -#define WIN_NUM_1		1
> -#define CFG_WINDOW_TYPE	0
> -#define IO_WINDOW_TYPE		1
> -#define MEM_WINDOW_TYPE	2
> -#define IB_WIN_SIZE		((u64)256 * 1024 * 1024 * 1024)
> -#define MAX_PIO_WINDOWS	8
> +#define WIN_NUM_0			0
> +#define WIN_NUM_1			1
> +#define CFG_WINDOW_TYPE			0
> +#define IO_WINDOW_TYPE			1
> +#define MEM_WINDOW_TYPE			2
> +#define IB_WIN_SIZE			((u64)256 * 1024 * 1024 * 1024)
> +#define MAX_PIO_WINDOWS			8
>  
>  /* Parameters for the waiting for link up routine */
> -#define LINK_WAIT_MAX_RETRIES	10
> -#define LINK_WAIT_MIN	90000
> -#define LINK_WAIT_MAX	100000
> +#define LINK_WAIT_MAX_RETRIES		10
> +#define LINK_WAIT_MIN			90000
> +#define LINK_WAIT_MAX			100000
>  
> -#define PAGED_ADDR_BNDRY			0xc00
> -#define OFFSET_TO_PAGE_ADDR(off)		\
> +#define PAGED_ADDR_BNDRY		0xc00
> +#define OFFSET_TO_PAGE_ADDR(off)	\
>  	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
> -#define OFFSET_TO_PAGE_IDX(off)			\
> +#define OFFSET_TO_PAGE_IDX(off)		\
>  	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
>  
>  struct mobiveil_msi {			/* MSI information */
> @@ -297,14 +299,14 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
>  					unsigned int devfn, int where)
>  {
>  	struct mobiveil_pcie *pcie = bus->sysdata;
> +	u32 value;
>  
>  	if (!mobiveil_pcie_valid_device(bus, devfn))
>  		return NULL;
>  
> -	if (bus->number == pcie->root_bus_nr) {
> -		/* RC config access */
> +	/* RC config access */
> +	if (bus->number == pcie->root_bus_nr)
>  		return pcie->csr_axi_slave_base + where;
> -	}
>  
>  	/*
>  	 * EP config access (in Config/APIO space)
> @@ -312,10 +314,12 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
>  	 * (BDF) in PAB_AXI_AMAP_PEX_WIN_L0 Register.
>  	 * Relies on pci_lock serialization
>  	 */
> -	csr_writel(pcie, bus->number << PAB_BUS_SHIFT |
> -			PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
> -			PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT,
> -			PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
> +	value = bus->number << PAB_BUS_SHIFT |
> +		PCI_SLOT(devfn) << PAB_DEVICE_SHIFT |
> +		PCI_FUNC(devfn) << PAB_FUNCTION_SHIFT;
> +
> +	csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
> +
>  	return pcie->config_axi_slave_base + where;
>  }
>  
> @@ -350,22 +354,22 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  
>  	/* Handle INTx */
>  	if (intr_status & PAB_INTP_INTX_MASK) {
> -		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT) >>
> -			PAB_INTX_START;
> +		shifted_status = csr_readl(pcie, PAB_INTP_AMBA_MISC_STAT);
> +		shifted_status >>= PAB_INTX_START;
>  		do {
>  			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
>  				virq = irq_find_mapping(pcie->intx_domain,
> -						bit + 1);
> +							bit + 1);
>  				if (virq)
>  					generic_handle_irq(virq);
>  				else
> -					dev_err_ratelimited(dev,
> -						"unexpected IRQ, INT%d\n", bit);
> +					dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n",
> +							    bit);
>  
>  				/* clear interrupt */
>  				csr_writel(pcie,
> -					shifted_status << PAB_INTX_START,
> -					PAB_INTP_AMBA_MISC_STAT);
> +					   shifted_status << PAB_INTX_START,
> +					   PAB_INTP_AMBA_MISC_STAT);
>  			}
>  		} while ((shifted_status >> PAB_INTX_START) != 0);
>  	}
> @@ -375,8 +379,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  
>  	/* handle MSI interrupts */
>  	while (msi_status & 1) {
> -		msi_data = readl_relaxed(pcie->apb_csr_base
> -				+ MSI_DATA_OFFSET);
> +		msi_data = readl_relaxed(pcie->apb_csr_base + MSI_DATA_OFFSET);
>  
>  		/*
>  		 * MSI_STATUS_OFFSET register gets updated to zero
> @@ -385,18 +388,18 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
>  		 * two dummy reads.
>  		 */
>  		msi_addr_lo = readl_relaxed(pcie->apb_csr_base +
> -				MSI_ADDR_L_OFFSET);
> +					    MSI_ADDR_L_OFFSET);
>  		msi_addr_hi = readl_relaxed(pcie->apb_csr_base +
> -				MSI_ADDR_H_OFFSET);
> +					    MSI_ADDR_H_OFFSET);
>  		dev_dbg(dev, "MSI registers, data: %08x, addr: %08x:%08x\n",
> -				msi_data, msi_addr_hi, msi_addr_lo);
> +			msi_data, msi_addr_hi, msi_addr_lo);
>  
>  		virq = irq_find_mapping(msi->dev_domain, msi_data);
>  		if (virq)
>  			generic_handle_irq(virq);
>  
>  		msi_status = readl_relaxed(pcie->apb_csr_base +
> -				MSI_STATUS_OFFSET);
> +					   MSI_STATUS_OFFSET);
>  	}
>  
>  	/* Clear the interrupt status */
> @@ -413,7 +416,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  
>  	/* map config resource */
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> -			"config_axi_slave");
> +					   "config_axi_slave");
>  	pcie->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
>  	if (IS_ERR(pcie->config_axi_slave_base))
>  		return PTR_ERR(pcie->config_axi_slave_base);
> @@ -421,7 +424,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  
>  	/* map csr resource */
>  	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> -			"csr_axi_slave");
> +					   "csr_axi_slave");
>  	pcie->csr_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
>  	if (IS_ERR(pcie->csr_axi_slave_base))
>  		return PTR_ERR(pcie->csr_axi_slave_base);
> @@ -452,7 +455,7 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  }
>  
>  static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
> -		int pci_addr, u32 type, u64 size)
> +			       int pci_addr, u32 type, u64 size)
>  {
>  	int pio_ctrl_val;
>  	int amap_ctrl_dw;
> @@ -465,19 +468,20 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
>  	}
>  
>  	pio_ctrl_val = csr_readl(pcie, PAB_PEX_PIO_CTRL);
> -	csr_writel(pcie,
> -		pio_ctrl_val | (1 << PIO_ENABLE_SHIFT), PAB_PEX_PIO_CTRL);
> -	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
> -	amap_ctrl_dw = (amap_ctrl_dw | (type << AMAP_CTRL_TYPE_SHIFT));
> -	amap_ctrl_dw = (amap_ctrl_dw | (1 << AMAP_CTRL_EN_SHIFT));
> +	pio_ctrl_val |= 1 << PIO_ENABLE_SHIFT;
> +	csr_writel(pcie, pio_ctrl_val, PAB_PEX_PIO_CTRL);
>  
> -	csr_writel(pcie, amap_ctrl_dw | lower_32_bits(size64),
> -		   PAB_PEX_AMAP_CTRL(win_num));
> +	amap_ctrl_dw = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
> +	amap_ctrl_dw |= (type << AMAP_CTRL_TYPE_SHIFT) |
> +			(1 << AMAP_CTRL_EN_SHIFT) |
> +			lower_32_bits(size64);
> +	csr_writel(pcie, amap_ctrl_dw, PAB_PEX_AMAP_CTRL(win_num));
>  
>  	csr_writel(pcie, upper_32_bits(size64),
>  		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
>  
>  	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_AXI_WIN(win_num));
> +
>  	csr_writel(pcie, pci_addr, PAB_PEX_AMAP_PEX_WIN_L(win_num));
>  	csr_writel(pcie, 0, PAB_PEX_AMAP_PEX_WIN_H(win_num));
>  }
> @@ -486,7 +490,8 @@ static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
>   * routine to program the outbound windows
>   */
>  static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
> -		u64 cpu_addr, u64 pci_addr, u32 config_io_bit, u64 size)
> +			       u64 cpu_addr, u64 pci_addr,
> +			       u32 config_io_bit, u64 size)
>  {
>  
>  	u32 value, type;
> @@ -505,7 +510,7 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
>  	type = config_io_bit;
>  	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
>  	csr_writel(pcie, 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
> -			lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
> +		   lower_32_bits(size64), PAB_AXI_AMAP_CTRL(win_num));
>  
>  	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
>  
> @@ -515,14 +520,14 @@ static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
>  	 */
>  	value = csr_readl(pcie, PAB_AXI_AMAP_AXI_WIN(win_num));
>  	csr_writel(pcie, cpu_addr & (~AXI_WINDOW_ALIGN_MASK),
> -			PAB_AXI_AMAP_AXI_WIN(win_num));
> +		   PAB_AXI_AMAP_AXI_WIN(win_num));
>  
>  	value = csr_readl(pcie, PAB_AXI_AMAP_PEX_WIN_H(win_num));
>  
>  	csr_writel(pcie, lower_32_bits(pci_addr),
> -			PAB_AXI_AMAP_PEX_WIN_L(win_num));
> +		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
>  	csr_writel(pcie, upper_32_bits(pci_addr),
> -			PAB_AXI_AMAP_PEX_WIN_H(win_num));
> +		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
>  
>  	pcie->ob_wins_configured++;
>  }
> @@ -538,7 +543,9 @@ static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
>  
>  		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
>  	}
> +
>  	dev_err(&pcie->pdev->dev, "link never came up\n");
> +
>  	return -ETIMEDOUT;
>  }
>  
> @@ -551,16 +558,16 @@ static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
>  	msi->msi_pages_phys = (phys_addr_t)msg_addr;
>  
>  	writel_relaxed(lower_32_bits(msg_addr),
> -		pcie->apb_csr_base + MSI_BASE_LO_OFFSET);
> +		       pcie->apb_csr_base + MSI_BASE_LO_OFFSET);
>  	writel_relaxed(upper_32_bits(msg_addr),
> -		pcie->apb_csr_base + MSI_BASE_HI_OFFSET);
> +		       pcie->apb_csr_base + MSI_BASE_HI_OFFSET);
>  	writel_relaxed(4096, pcie->apb_csr_base + MSI_SIZE_OFFSET);
>  	writel_relaxed(1, pcie->apb_csr_base + MSI_ENABLE_OFFSET);
>  }
>  
>  static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  {
> -	u32 value, pab_ctrl, type = 0;
> +	u32 value, pab_ctrl, type;
>  	int err;
>  	struct resource_entry *win, *tmp;
>  
> @@ -575,26 +582,27 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	 * Space
>  	 */
>  	value = csr_readl(pcie, PCI_COMMAND);
> -	csr_writel(pcie, value | PCI_COMMAND_IO | PCI_COMMAND_MEMORY |
> -		PCI_COMMAND_MASTER, PCI_COMMAND);
> +	value |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER;
> +	csr_writel(pcie, value, PCI_COMMAND);
>  
>  	/*
>  	 * program PIO Enable Bit to 1 (and PEX PIO Enable to 1) in PAB_CTRL
>  	 * register
>  	 */
>  	pab_ctrl = csr_readl(pcie, PAB_CTRL);
> -	csr_writel(pcie, pab_ctrl | (1 << AMBA_PIO_ENABLE_SHIFT) |
> -		(1 << PEX_PIO_ENABLE_SHIFT), PAB_CTRL);
> +	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
> +	csr_writel(pcie, pab_ctrl, PAB_CTRL);
>  
>  	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> -		PAB_INTP_AMBA_MISC_ENB);
> +		   PAB_INTP_AMBA_MISC_ENB);
>  
>  	/*
>  	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
>  	 * PAB_AXI_PIO_CTRL Register
>  	 */
>  	value = csr_readl(pcie, PAB_AXI_PIO_CTRL);
> -	csr_writel(pcie, value | APIO_EN_MASK, PAB_AXI_PIO_CTRL);
> +	value |= APIO_EN_MASK;
> +	csr_writel(pcie, value, PAB_AXI_PIO_CTRL);
>  
>  	/*
>  	 * we'll program one outbound window for config reads and
> @@ -605,25 +613,25 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  
>  	/* config outbound translation window */
>  	program_ob_windows(pcie, pcie->ob_wins_configured,
> -			pcie->ob_io_res->start, 0, CFG_WINDOW_TYPE,
> -			resource_size(pcie->ob_io_res));
> +			   pcie->ob_io_res->start, 0, CFG_WINDOW_TYPE,
> +			   resource_size(pcie->ob_io_res));
>  
>  	/* memory inbound translation window */
>  	program_ib_windows(pcie, WIN_NUM_1, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
>  
>  	/* Get the I/O and memory ranges from DT */
>  	resource_list_for_each_entry_safe(win, tmp, &pcie->resources) {
> -		type = 0;
>  		if (resource_type(win->res) == IORESOURCE_MEM)
>  			type = MEM_WINDOW_TYPE;
> -		if (resource_type(win->res) == IORESOURCE_IO)
> +		else if (resource_type(win->res) == IORESOURCE_IO)
>  			type = IO_WINDOW_TYPE;
> -		if (type) {
> -			/* configure outbound translation window */
> -			program_ob_windows(pcie, pcie->ob_wins_configured,
> -				win->res->start, 0, type,
> -				resource_size(win->res));
> -		}
> +		else
> +			continue;
> +
> +		/* configure outbound translation window */
> +		program_ob_windows(pcie, pcie->ob_wins_configured,
> +				   win->res->start, 0, type,
> +				   resource_size(win->res));
>  	}
>  
>  	/* setup MSI hardware registers */
> @@ -643,7 +651,8 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
>  	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
>  	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
>  	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
> -	csr_writel(pcie, (shifted_val & (~mask)), PAB_INTP_AMBA_MISC_ENB);
> +	shifted_val &= ~mask;
> +	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
>  	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
>  }
>  
> @@ -658,7 +667,8 @@ static void mobiveil_unmask_intx_irq(struct irq_data *data)
>  	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
>  	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
>  	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
> -	csr_writel(pcie, (shifted_val | mask), PAB_INTP_AMBA_MISC_ENB);
> +	shifted_val |= mask;
> +	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
>  	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
>  }
>  
> @@ -672,10 +682,11 @@ static struct irq_chip intx_irq_chip = {
>  
>  /* routine to setup the INTx related data */
>  static int mobiveil_pcie_intx_map(struct irq_domain *domain, unsigned int irq,
> -		irq_hw_number_t hwirq)
> +				  irq_hw_number_t hwirq)
>  {
>  	irq_set_chip_and_handler(irq, &intx_irq_chip, handle_level_irq);
>  	irq_set_chip_data(irq, domain->host_data);
> +
>  	return 0;
>  }
>  
> @@ -692,7 +703,7 @@ static struct irq_chip mobiveil_msi_irq_chip = {
>  
>  static struct msi_domain_info mobiveil_msi_domain_info = {
>  	.flags	= (MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS |
> -		MSI_FLAG_MULTI_PCI_MSI | MSI_FLAG_PCI_MSIX),
> +		   MSI_FLAG_MULTI_PCI_MSI | MSI_FLAG_PCI_MSIX),
>  	.chip	= &mobiveil_msi_irq_chip,
>  };
>  
> @@ -710,7 +721,7 @@ static void mobiveil_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
>  }
>  
>  static int mobiveil_msi_set_affinity(struct irq_data *irq_data,
> -		const struct cpumask *mask, bool force)
> +				     const struct cpumask *mask, bool force)
>  {
>  	return -EINVAL;
>  }
> @@ -722,7 +733,8 @@ static struct irq_chip mobiveil_msi_bottom_irq_chip = {
>  };
>  
>  static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
> -		unsigned int virq, unsigned int nr_irqs, void *args)
> +					 unsigned int virq,
> +					 unsigned int nr_irqs, void *args)
>  {
>  	struct mobiveil_pcie *pcie = domain->host_data;
>  	struct mobiveil_msi *msi = &pcie->msi;
> @@ -742,13 +754,13 @@ static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
>  	mutex_unlock(&msi->lock);
>  
>  	irq_domain_set_info(domain, virq, bit, &mobiveil_msi_bottom_irq_chip,
> -				domain->host_data, handle_level_irq,
> -				NULL, NULL);
> +			    domain->host_data, handle_level_irq, NULL, NULL);
>  	return 0;
>  }
>  
>  static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
> -		unsigned int virq, unsigned int nr_irqs)
> +					 unsigned int virq,
> +					 unsigned int nr_irqs)
>  {
>  	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
>  	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
> @@ -756,12 +768,11 @@ static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
>  
>  	mutex_lock(&msi->lock);
>  
> -	if (!test_bit(d->hwirq, msi->msi_irq_in_use)) {
> +	if (!test_bit(d->hwirq, msi->msi_irq_in_use))
>  		dev_err(&pcie->pdev->dev, "trying to free unused MSI#%lu\n",
>  			d->hwirq);
> -	} else {
> +	else
>  		__clear_bit(d->hwirq, msi->msi_irq_in_use);
> -	}
>  
>  	mutex_unlock(&msi->lock);
>  }
> @@ -785,12 +796,14 @@ static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
>  	}
>  
>  	msi->msi_domain = pci_msi_create_irq_domain(fwnode,
> -				&mobiveil_msi_domain_info, msi->dev_domain);
> +						    &mobiveil_msi_domain_info,
> +						    msi->dev_domain);
>  	if (!msi->msi_domain) {
>  		dev_err(dev, "failed to create MSI domain\n");
>  		irq_domain_remove(msi->dev_domain);
>  		return -ENOMEM;
>  	}
> +
>  	return 0;
>  }
>  
> @@ -801,8 +814,8 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  	int ret;
>  
>  	/* setup INTx */
> -	pcie->intx_domain = irq_domain_add_linear(node,
> -				PCI_NUM_INTX, &intx_domain_ops, pcie);
> +	pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
> +						  &intx_domain_ops, pcie);
>  
>  	if (!pcie->intx_domain) {
>  		dev_err(dev, "Failed to get a INTx IRQ domain\n");
> @@ -917,10 +930,10 @@ MODULE_DEVICE_TABLE(of, mobiveil_pcie_of_match);
>  static struct platform_driver mobiveil_pcie_driver = {
>  	.probe = mobiveil_pcie_probe,
>  	.driver = {
> -			.name = "mobiveil-pcie",
> -			.of_match_table = mobiveil_pcie_of_match,
> -			.suppress_bind_attrs = true,
> -		},
> +		.name = "mobiveil-pcie",
> +		.of_match_table = mobiveil_pcie_of_match,
> +		.suppress_bind_attrs = true,
> +	},
>  };
>  
>  builtin_platform_driver(mobiveil_pcie_driver);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
