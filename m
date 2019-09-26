Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98E8BED97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LkkVZniCgyccR/m3x2KNnsT9H/rk1DsBuCdIUbw0eU=; b=hw1/9U+9ak64f8
	d+FzpoOAX1YGsdX30TSUjP0Q9tuFYcfDeMNm5Hmd3Dk2wP7rr7SsJxpaM1jXaOiIljKR2Bl2QkfdT
	AuwgEq/v6uz1vg4AKgAWKxqnFQMs2b3igPCgc91qm8i4idTEzkOB5xPgcxy0mkdghAVZhUnTXz/We
	iglNoIICKsq/Q7MEEjQ1RBuCMIKEQdANaPrWmVUjovgVHyNbK+8mG/yL26IjByuT0N4fr5e2zQGvn
	V3GI55SUCVCqtwev9MaSzbgqZfH928bG0W4hxoW1GhT8REG5R4CRD3nh0JDXLhaqyiTLt/f+uPYXY
	gE1h2EkIThb8hQ+ocwBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPKw-0005eL-5f; Thu, 26 Sep 2019 08:41:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPJ1-0005b7-2h
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:39:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 177F01000;
 Thu, 26 Sep 2019 01:39:18 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 88C9A3F836;
 Thu, 26 Sep 2019 01:39:17 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:39:15 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 07/11] PCI: ftpci100: Use inbound resources for setup
Message-ID: <20190926083915.GW9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-8-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-8-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_013924_255896_CB41C338 
X-CRM114-Status: GOOD (  18.11  )
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
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:26PM -0500, Rob Herring wrote:
> Now that the helpers provide the inbound resources in the host bridge
> 'dma_ranges' resource list, convert Faraday ftpci100 host bridge to use
> the resource list to setup the inbound addresses.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  drivers/pci/controller/pci-ftpci100.c | 26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> index 3e07a8203736..e37a33ad77d9 100644
> --- a/drivers/pci/controller/pci-ftpci100.c
> +++ b/drivers/pci/controller/pci-ftpci100.c
> @@ -375,12 +375,11 @@ static int faraday_pci_setup_cascaded_irq(struct faraday_pci *p)
>  	return 0;
>  }
>  
> -static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
> -					    struct device_node *np)
> +static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p)
>  {
> -	struct of_pci_range range;
> -	struct of_pci_range_parser parser;
>  	struct device *dev = p->dev;
> +	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(p);
> +	struct resource_entry *entry;
>  	u32 confreg[3] = {
>  		FARADAY_PCI_MEM1_BASE_SIZE,
>  		FARADAY_PCI_MEM2_BASE_SIZE,
> @@ -389,19 +388,12 @@ static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
>  	int i = 0;
>  	u32 val;
>  
> -	if (of_pci_dma_range_parser_init(&parser, np)) {
> -		dev_err(dev, "missing dma-ranges property\n");
> -		return -EINVAL;
> -	}
> -
> -	/*
> -	 * Get the dma-ranges from the device tree
> -	 */
> -	for_each_of_pci_range(&parser, &range) {
> -		u64 end = range.pci_addr + range.size - 1;
> +	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
> +		u64 pci_addr = entry->res->start - entry->offset;
> +		u64 end = entry->res->end - entry->offset;
>  		int ret;
>  
> -		ret = faraday_res_to_memcfg(range.pci_addr, range.size, &val);
> +		ret = faraday_res_to_memcfg(pci_addr, resource_size(entry->res), &val);
>  		if (ret) {
>  			dev_err(dev,
>  				"DMA range %d: illegal MEM resource size\n", i);
> @@ -409,7 +401,7 @@ static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
>  		}
>  
>  		dev_info(dev, "DMA MEM%d BASE: 0x%016llx -> 0x%016llx config %08x\n",
> -			 i + 1, range.pci_addr, end, val);
> +			 i + 1, pci_addr, end, val);
>  		if (i <= 2) {
>  			faraday_raw_pci_write_config(p, 0, 0, confreg[i],
>  						     4, val);
> @@ -566,7 +558,7 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  			cur_bus_speed = PCI_SPEED_66MHz;
>  	}
>  
> -	ret = faraday_pci_parse_map_dma_ranges(p, dev->of_node);
> +	ret = faraday_pci_parse_map_dma_ranges(p);
>  	if (ret)
>  		return ret;
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
