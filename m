Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BD8BED9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoIn6Pe6zEbmNZ0T+Od0Pk6l2fTlBB0Eg6wjJSI1VWg=; b=hHmguuWmFO1jZs
	SwZvI3FeihFzxUyg8i66NmodQIS9wNsR0hBaZnX8J6FzB+ETNArC6tMcZT8W6fQ5gs5cndD5qpSf1
	QNlRQN7At7PAECZV0X30z23QmVtRh3xHHJ2zVRSGUVYNhXT0QnPxSpP8nym+5t861aizjflTSPT9W
	OqEe6pRQc2gPwFu7KtO3PJA46RtGDbJaVNq2cF61gMOBm8bUCkHUhttHDPEZx3RA3NuEex8zewI0e
	fnoSgEcf2T9zzybEchhwSO5jIYanUQzrYe/DdjMg4KPF/V6baKtTlC9qPvavnh3xn63no+ahVotP+
	8dn76/BqcOe08ZFoPQvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPMh-0007PT-Dm; Thu, 26 Sep 2019 08:43:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPJK-0005cx-Tc
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:39:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70E3F1000;
 Thu, 26 Sep 2019 01:39:38 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E3FA03F836;
 Thu, 26 Sep 2019 01:39:37 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:39:36 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 09/11] PCI: xgene: Use inbound resources for setup
Message-ID: <20190926083935.GY9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-10-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-10-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_013939_322400_361A826A 
X-CRM114-Status: GOOD (  18.81  )
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Toan Le <toan@os.amperecomputing.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:28PM -0500, Rob Herring wrote:
> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert the Xgene host bridge to use the
> resource list to setup the inbound addresses.
> 
> Cc: Toan Le <toan@os.amperecomputing.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  drivers/pci/controller/pci-xgene.c | 32 ++++++++++--------------------
>  1 file changed, 10 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
> index 11f27c42c06a..09c913b12ebc 100644
> --- a/drivers/pci/controller/pci-xgene.c
> +++ b/drivers/pci/controller/pci-xgene.c
> @@ -485,27 +485,27 @@ static int xgene_pcie_select_ib_reg(u8 *ib_reg_mask, u64 size)
>  }
>  
>  static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
> -				    struct of_pci_range *range, u8 *ib_reg_mask)
> +				    struct resource_entry *entry, u8 *ib_reg_mask)
>  {
>  	void __iomem *cfg_base = port->cfg_base;
>  	struct device *dev = port->dev;
>  	void *bar_addr;
>  	u32 pim_reg;
> -	u64 cpu_addr = range->cpu_addr;
> -	u64 pci_addr = range->pci_addr;
> -	u64 size = range->size;
> +	u64 cpu_addr = entry->res->start;
> +	u64 pci_addr = cpu_addr - entry->offset;
> +	u64 size = resource_size(entry->res);
>  	u64 mask = ~(size - 1) | EN_REG;
>  	u32 flags = PCI_BASE_ADDRESS_MEM_TYPE_64;
>  	u32 bar_low;
>  	int region;
>  
> -	region = xgene_pcie_select_ib_reg(ib_reg_mask, range->size);
> +	region = xgene_pcie_select_ib_reg(ib_reg_mask, size);
>  	if (region < 0) {
>  		dev_warn(dev, "invalid pcie dma-range config\n");
>  		return;
>  	}
>  
> -	if (range->flags & IORESOURCE_PREFETCH)
> +	if (entry->res->flags & IORESOURCE_PREFETCH)
>  		flags |= PCI_BASE_ADDRESS_MEM_PREFETCH;
>  
>  	bar_low = pcie_bar_low_val((u32)cpu_addr, flags);
> @@ -536,25 +536,13 @@ static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
>  
>  static int xgene_pcie_parse_map_dma_ranges(struct xgene_pcie_port *port)
>  {
> -	struct device_node *np = port->node;
> -	struct of_pci_range range;
> -	struct of_pci_range_parser parser;
> -	struct device *dev = port->dev;
> +	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(port);
> +	struct resource_entry *entry;
>  	u8 ib_reg_mask = 0;
>  
> -	if (of_pci_dma_range_parser_init(&parser, np)) {
> -		dev_err(dev, "missing dma-ranges property\n");
> -		return -EINVAL;
> -	}
> -
> -	/* Get the dma-ranges from DT */
> -	for_each_of_pci_range(&parser, &range) {
> -		u64 end = range.cpu_addr + range.size - 1;
> +	resource_list_for_each_entry(entry, &bridge->dma_ranges)
> +		xgene_pcie_setup_ib_reg(port, entry, &ib_reg_mask);
>  
> -		dev_dbg(dev, "0x%08x 0x%016llx..0x%016llx -> 0x%016llx\n",
> -			range.flags, range.cpu_addr, end, range.pci_addr);
> -		xgene_pcie_setup_ib_reg(port, &range, &ib_reg_mask);
> -	}
>  	return 0;
>  }
>  
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
