Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1741FC166
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 00:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=aCLVmQSKAbyugvgdEKkU7oRw9w/xhNY2216gTDnwWfk=; b=TRRV1xM2bFAmD8
	v4L1SAVU+UlkUjeNBpQm2XTd/WayBFCzh++el9xWWLAqNwX0SszMy3W3xt72rkt+ZDiu+cYVVi2Pu
	xNMMnP2hx4NjAdT8tLGMO5zxvjVbBF6R5Iagih3sXNUAh15o8FoK10IwdJQNlAHgHjnFGwMl1HWNr
	cx2dXgUTVmhZ1oexcQCKzm8wduAW1Nu+4J2yZIa0z+5GH+ZwDzhQurfOzJjctLbs0VSxa/FgnAEvx
	EcmGztUdNi0auCUcRzcQaF8jcoWZMNEUvbcvTWt4GHvYtpKmEb3JtHej7/fJ3kK+20dfc7OMystvG
	F66ocgFREZFBqhgbOatQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlJia-0003jm-Pd; Tue, 16 Jun 2020 22:06:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlJi4-0003Qm-3R; Tue, 16 Jun 2020 22:05:41 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 850BB208B8;
 Tue, 16 Jun 2020 22:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592345134;
 bh=1BH4MUh9Sx2yPMhHm374mBNSia4OVdEFUDw84/UO4Xo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ulBr2x6UBFsR0wtrS1Pd+V6+HifSE/s3Spr3ObsoDbipr4vw2/xjvtyU3yer/7TdD
 YgV1dV305jRRsbe0G9oBp9y9IN8Reg0BAVtMzkg8oZu5FwGM77nHTfi3OjtoyS2iCc
 0G7ukGQLgH+gIqHVpWhFKb9x7an868a99OnHWiMo=
Date: Tue, 16 Jun 2020 17:05:33 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v5 09/12] PCI: brcmstb: Set internal memory viewport sizes
Message-ID: <20200616220533.GA1984551@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616205533.3513-10-james.quinlan@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_150536_199180_5341C3BF 
X-CRM114-Status: GOOD (  24.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Christoph Hellwig <hch@lst.de>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 04:55:16PM -0400, Jim Quinlan wrote:
> BrcmSTB PCIe controllers are intimately connected to the memory
> controller(s) on the SOC.  There is a "viewport" for each memory controller
> that allows inbound accesses to CPU memory.  Each viewport's size must be
> set to a power of two, and that size must be equal to or larger than the
> amount of memory each controller supports.

This describes some requirements, but doesn't actually say what this
patch *does*.

I *think* it reads the viewport sizes from the "brcm,scb-sizes" DT
property instead of computing something from "dma-ranges".  Looks like
it also adds support for SCB1 and SCB2.

Those seem interesting, but don't really come through in the subject
or even the commit log.

If I understand correctly, this is all for DMA ("inbound accesses to
CPU memory").  I think it would be worth mentioning "DMA", since
that's the common term for this.

> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  drivers/pci/controller/pcie-brcmstb.c | 68 ++++++++++++++++++++-------
>  1 file changed, 50 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-brcmstb.c b/drivers/pci/controller/pcie-brcmstb.c
> index 9189406fd35c..39f77709c6a2 100644
> --- a/drivers/pci/controller/pcie-brcmstb.c
> +++ b/drivers/pci/controller/pcie-brcmstb.c
> @@ -57,6 +57,8 @@
>  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_MASK	0x300000
>  #define  PCIE_MISC_MISC_CTRL_MAX_BURST_SIZE_128		0x0
>  #define  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK		0xf8000000
> +#define  PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK		0x07c00000
> +#define  PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK		0x0000001f
>  
>  #define PCIE_MISC_CPU_2_PCIE_MEM_WIN0_LO		0x400c
>  #define PCIE_MEM_WIN0_LO(win)	\
> @@ -154,6 +156,7 @@
>  #define SSC_STATUS_OFFSET		0x1
>  #define SSC_STATUS_SSC_MASK		0x400
>  #define SSC_STATUS_PLL_LOCK_MASK	0x800
> +#define PCIE_BRCM_MAX_MEMC		3
>  
>  #define IDX_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_INDEX])
>  #define DATA_ADDR(pcie)			(pcie->reg_offsets[EXT_CFG_DATA])
> @@ -260,6 +263,8 @@ struct brcm_pcie {
>  	const int		*reg_field_info;
>  	enum pcie_type		type;
>  	struct reset_control	*rescal;
> +	int			num_memc;
> +	u64			memc_size[PCIE_BRCM_MAX_MEMC];
>  };
>  
>  /*
> @@ -715,22 +720,44 @@ static inline int brcm_pcie_get_rc_bar2_size_and_offset(struct brcm_pcie *pcie,
>  							u64 *rc_bar2_offset)
>  {
>  	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
> -	struct device *dev = pcie->dev;
>  	struct resource_entry *entry;
> +	struct device *dev = pcie->dev;
> +	u64 lowest_pcie_addr = ~(u64)0;
> +	int ret, i = 0;
> +	u64 size = 0;
>  
> -	entry = resource_list_first_type(&bridge->dma_ranges, IORESOURCE_MEM);
> -	if (!entry)
> -		return -ENODEV;
> +	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> +		u64 pcie_beg = entry->res->start - entry->offset;
>  
> +		size += entry->res->end - entry->res->start + 1;
> +		if (pcie_beg < lowest_pcie_addr)
> +			lowest_pcie_addr = pcie_beg;
> +	}
>  
> -	/*
> -	 * The controller expects the inbound window offset to be calculated as
> -	 * the difference between PCIe's address space and CPU's. The offset
> -	 * provided by the firmware is calculated the opposite way, so we
> -	 * negate it.
> -	 */
> -	*rc_bar2_offset = -entry->offset;
> -	*rc_bar2_size = 1ULL << fls64(entry->res->end - entry->res->start);
> +	if (lowest_pcie_addr == ~(u64)0) {
> +		dev_err(dev, "DT node has no dma-ranges\n");
> +		return -EINVAL;
> +	}
> +
> +	ret = of_property_read_variable_u64_array(pcie->np, "brcm,scb-sizes", pcie->memc_size, 1,
> +						  PCIE_BRCM_MAX_MEMC);
> +
> +	if (ret <= 0) {
> +		/* Make an educated guess */
> +		pcie->num_memc = 1;
> +		pcie->memc_size[0] = 1 << fls64(size - 1);
> +	} else {
> +		pcie->num_memc = ret;
> +	}
> +
> +	/* Each memc is viewed through a "port" that is a power of 2 */
> +	for (i = 0, size = 0; i < pcie->num_memc; i++)
> +		size += pcie->memc_size[i];
> +
> +	/* System memory starts at this address in PCIe-space */
> +	*rc_bar2_offset = lowest_pcie_addr;
> +	/* The sum of all memc views must also be a power of 2 */
> +	*rc_bar2_size = 1ULL << fls64(size - 1);
>  
>  	/*
>  	 * We validate the inbound memory view even though we should trust
> @@ -782,12 +809,11 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	void __iomem *base = pcie->base;
>  	struct device *dev = pcie->dev;
>  	struct resource_entry *entry;
> -	unsigned int scb_size_val;
>  	bool ssc_good = false;
>  	struct resource *res;
>  	int num_out_wins = 0;
>  	u16 nlw, cls, lnksta;
> -	int i, ret;
> +	int i, ret, memc;
>  	u32 tmp, aspm_support;
>  
>  	/* Reset the bridge */
> @@ -824,11 +850,17 @@ static int brcm_pcie_setup(struct brcm_pcie *pcie)
>  	writel(upper_32_bits(rc_bar2_offset),
>  	       base + PCIE_MISC_RC_BAR2_CONFIG_HI);
>  
> -	scb_size_val = rc_bar2_size ?
> -		       ilog2(rc_bar2_size) - 15 : 0xf; /* 0xf is 1GB */
>  	tmp = readl(base + PCIE_MISC_MISC_CTRL);
> -	u32p_replace_bits(&tmp, scb_size_val,
> -			  PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
> +	for (memc = 0; memc < pcie->num_memc; memc++) {
> +		u32 scb_size_val = ilog2(pcie->memc_size[memc]) - 15;
> +
> +		if (memc == 0)
> +			u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB0_SIZE_MASK);
> +		else if (memc == 1)
> +			u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB1_SIZE_MASK);
> +		else if (memc == 2)
> +			u32p_replace_bits(&tmp, scb_size_val, PCIE_MISC_MISC_CTRL_SCB2_SIZE_MASK);
> +	}
>  	writel(tmp, base + PCIE_MISC_MISC_CTRL);
>  
>  	/*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
