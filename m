Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB88BEDA9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vL0v6tvNMx6ODziXU31ssFIwIs+DHKEVCLAqqnHWEN4=; b=Ox3rXAFLzHxqc1
	XWVpuub675sSURKxzvuNYsDne/ChP9Meu8qxU+k1HH6De7ykig9SJG5JYHQ0Vc/xM3C1+lppeitvV
	4zD9jeniGcivEWVqDwoUjduxez17/Km550Jjo6g5vVjMi9daeibr0fTA79QK+yPT9W/Oyyczv3Fuf
	OkKG6V0o4OaI2x/0WmTVO+qbeRe/I7stg+ETDWd8E/RtO1HLu50bkSy8bLw5CPE1YHFGRh93kNlj7
	afYHuRsVgoaVbIMFNddOH6x9bb9kxO9BhMQ1MCDSOCdWBBwUpdsF6HZby7ZC1g8KeuTptle1hGrVI
	Kj3iNkjBqqeY3UZ3fVeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPNh-0007kx-Cr; Thu, 26 Sep 2019 08:44:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPJV-0005eS-RP
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:39:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 42ECF1000;
 Thu, 26 Sep 2019 01:39:49 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B583B3F836;
 Thu, 26 Sep 2019 01:39:48 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:39:47 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 10/11] PCI: iproc: Use inbound resources for setup
Message-ID: <20190926083946.GZ9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-11-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-11-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_013950_213931_305E84A7 
X-CRM114-Status: GOOD (  18.65  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Scott Branden <sbranden@broadcom.com>, linux-pci@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:29PM -0500, Rob Herring wrote:
> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert Broadcom iProc host bridge to use
> the resource list to setup the inbound addresses.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Ray Jui <rjui@broadcom.com>
> Cc: Scott Branden <sbranden@broadcom.com>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> ---
>  drivers/pci/controller/pcie-iproc.c | 63 ++++-------------------------
>  1 file changed, 8 insertions(+), 55 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
> index 2d457bfdaf66..9ed181050308 100644
> --- a/drivers/pci/controller/pcie-iproc.c
> +++ b/drivers/pci/controller/pcie-iproc.c
> @@ -1122,15 +1122,15 @@ static int iproc_pcie_ib_write(struct iproc_pcie *pcie, int region_idx,
>  }
>  
>  static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
> -			       struct of_pci_range *range,
> +			       struct resource_entry *entry,
>  			       enum iproc_pcie_ib_map_type type)
>  {
>  	struct device *dev = pcie->dev;
>  	struct iproc_pcie_ib *ib = &pcie->ib;
>  	int ret;
>  	unsigned int region_idx, size_idx;
> -	u64 axi_addr = range->cpu_addr, pci_addr = range->pci_addr;
> -	resource_size_t size = range->size;
> +	u64 axi_addr = entry->res->start, pci_addr = entry->res->start - entry->offset;
> +	resource_size_t size = resource_size(entry->res);
>  
>  	/* iterate through all IARR mapping regions */
>  	for (region_idx = 0; region_idx < ib->nr_regions; region_idx++) {
> @@ -1182,66 +1182,19 @@ static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
>  	return ret;
>  }
>  
> -static int iproc_pcie_add_dma_range(struct device *dev,
> -				    struct list_head *resources,
> -				    struct of_pci_range *range)
> -{
> -	struct resource *res;
> -	struct resource_entry *entry, *tmp;
> -	struct list_head *head = resources;
> -
> -	res = devm_kzalloc(dev, sizeof(struct resource), GFP_KERNEL);
> -	if (!res)
> -		return -ENOMEM;
> -
> -	resource_list_for_each_entry(tmp, resources) {
> -		if (tmp->res->start < range->cpu_addr)
> -			head = &tmp->node;
> -	}
> -
> -	res->start = range->cpu_addr;
> -	res->end = res->start + range->size - 1;
> -
> -	entry = resource_list_create_entry(res, 0);
> -	if (!entry)
> -		return -ENOMEM;
> -
> -	entry->offset = res->start - range->cpu_addr;
> -	resource_list_add(entry, head);
> -
> -	return 0;
> -}
> -
>  static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
>  {
>  	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
> -	struct of_pci_range range;
> -	struct of_pci_range_parser parser;
> -	int ret;
> -	LIST_HEAD(resources);
> +	struct resource_entry *entry;
> +	int ret = 0;
>  
> -	/* Get the dma-ranges from DT */
> -	ret = of_pci_dma_range_parser_init(&parser, pcie->dev->of_node);
> -	if (ret)
> -		return ret;
> -
> -	for_each_of_pci_range(&parser, &range) {
> -		ret = iproc_pcie_add_dma_range(pcie->dev,
> -					       &resources,
> -					       &range);
> -		if (ret)
> -			goto out;
> +	resource_list_for_each_entry(entry, &host->dma_ranges) {
>  		/* Each range entry corresponds to an inbound mapping region */
> -		ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_MEM);
> +		ret = iproc_pcie_setup_ib(pcie, entry, IPROC_PCIE_IB_MAP_MEM);
>  		if (ret)
> -			goto out;
> +			break;
>  	}
>  
> -	list_splice_init(&resources, &host->dma_ranges);
> -
> -	return 0;
> -out:
> -	pci_free_resource_list(&resources);
>  	return ret;
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
