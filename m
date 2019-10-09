Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C50D0D48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 12:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZPaGIBN9qcoVZsRHmfIqh+MxLhMAx6Nc9Z//1/4HSBg=; b=LaFbbUu0zFymQxPEDA+5o6bkk
	pESakPYQ7BMvB8J8+s9uQChpP6rF0MXKp2QvWs5NUatMIeE2FHJKY6JYQ6B4dgbDUeotDy5eGBb06
	5rg6FCsMIyL68MHUYBwrxFDlSG7BqDxV1N4N379+dmfgkOaY/X5kPEWCN5WG2xw0+n25jY13aWBla
	vriP3xWo9X9+ow+8FIcad4xjmbE0PCpjLcUczvAJnJJSz9fOca6o0p9xmmbG5cUZf7pOfPLy2548S
	3RPrd21v+tTPcVA6ozrF6tHstbcMM9Jh37OSXHSIsrqKxfW6/XTblyN0rkYwjEayBLdQyQldJYJdW
	6xiuP/5cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI9eQ-0006pv-Lg; Wed, 09 Oct 2019 10:57:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI9eG-0006ot-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 10:56:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4999C28;
 Wed,  9 Oct 2019 03:56:51 -0700 (PDT)
Received: from [10.37.12.37] (unknown [10.37.12.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2B713F703;
 Wed,  9 Oct 2019 03:56:48 -0700 (PDT)
Subject: Re: [PATCH v2] of: Make of_dma_get_range() work on bus nodes
To: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
References: <20191008195239.12852-1-robh@kernel.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <597158a7-ce42-c4d0-62b0-5aab1ead8313@arm.com>
Date: Wed, 9 Oct 2019 11:56:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191008195239.12852-1-robh@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_035653_107672_F370F3A8 
X-CRM114-Status: GOOD (  30.45  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Simon Horman <horms+renesas@verge.net.au>,
 Frank Rowand <frowand.list@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stefan Wahren <wahrenst@gmx.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-08 8:52 pm, Rob Herring wrote:
> From: Robin Murphy <robin.murphy@arm.com>
> 
> Since the "dma-ranges" property is only valid for a node representing a
> bus, of_dma_get_range() currently assumes the node passed in is a leaf
> representing a device, and starts the walk from its parent. In cases
> like PCI host controllers on typical FDT systems, however, where the PCI
> endpoints are probed dynamically the initial leaf node represents the
> 'bus' itself, and this logic means we fail to consider any "dma-ranges"
> describing the host bridge itself. Rework the logic such that
> of_dma_get_range() also works correctly starting from a bus node
> containing "dma-ranges".
> 
> While this does mean "dma-ranges" could incorrectly be in a device leaf
> node, there isn't really any way in this function to ensure that a leaf
> node is or isn't a bus node.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> [robh: Allow for the bus child node to still be passed in]
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Resending, hit send too quickly.
> 
> v2:
>   - Ensure once we find dma-ranges, every parent has it.
>   - Only get the #{size,address}-cells after we find non-empty dma-ranges
>   - Add a check on the 'dma-ranges' length
> 
> This is all that remains of the dma-ranges series. I've applied the rest
> of the series prep and fixes. I dropped "of: Ratify of_dma_configure()
> interface" as the assertions that the node pointer being the parent only
> when struct device doesn't have a DT node pointer is not always
> true.

I'd still like to rework of_dma_configure() so that callers don't have 
to pass a redundant node in the common case, but that can wait. For now, 
this looks good enough to un-block the various 32-bit-PCI folks at 
least, and we can consider further improvements on top. For the changes:

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Cheers,
Robin.

> I didn't include any tested-bys as this has changed a bit. A git branch
> is here[1].
> 
> Rob
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git dma-masks-v2
> 
>   drivers/of/address.c | 44 ++++++++++++++++++--------------------------
>   1 file changed, 18 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 5ce69d026584..99c1b8058559 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -930,47 +930,39 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
>   	const __be32 *ranges = NULL;
>   	int len, naddr, nsize, pna;
>   	int ret = 0;
> +	bool found_dma_ranges = false;
>   	u64 dmaaddr;
>   
> -	if (!node)
> -		return -EINVAL;
> -
> -	while (1) {
> -		struct device_node *parent;
> -
> -		naddr = of_n_addr_cells(node);
> -		nsize = of_n_size_cells(node);
> -
> -		parent = __of_get_dma_parent(node);
> -		of_node_put(node);
> -
> -		node = parent;
> -		if (!node)
> -			break;
> -
> +	while (node) {
>   		ranges = of_get_property(node, "dma-ranges", &len);
>   
>   		/* Ignore empty ranges, they imply no translation required */
>   		if (ranges && len > 0)
>   			break;
>   
> -		/*
> -		 * At least empty ranges has to be defined for parent node if
> -		 * DMA is supported
> -		 */
> -		if (!ranges)
> -			break;
> +		/* Once we find 'dma-ranges', then a missing one is an error */
> +		if (found_dma_ranges && !ranges) {
> +			ret = -ENODEV;
> +			goto out;
> +		}
> +		found_dma_ranges = true;
> +
> +		node = of_get_next_dma_parent(node);
>   	}
>   
> -	if (!ranges) {
> +	if (!node || !ranges) {
>   		pr_debug("no dma-ranges found for node(%pOF)\n", np);
>   		ret = -ENODEV;
>   		goto out;
>   	}
>   
> -	len /= sizeof(u32);
> -
> +	naddr = of_bus_n_addr_cells(node);
> +	nsize = of_bus_n_size_cells(node);
>   	pna = of_n_addr_cells(node);
> +	if ((len / sizeof(__be32)) % (pna + naddr + nsize)) {
> +		ret = -EINVAL;
> +		goto out;
> +	}
>   
>   	/* dma-ranges format:
>   	 * DMA addr	: naddr cells
> @@ -978,7 +970,7 @@ int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr, u64 *siz
>   	 * size		: nsize cells
>   	 */
>   	dmaaddr = of_read_number(ranges, naddr);
> -	*paddr = of_translate_dma_address(np, ranges);
> +	*paddr = of_translate_dma_address(node, ranges + naddr);
>   	if (*paddr == OF_BAD_ADDR) {
>   		pr_err("translation of DMA address(%llx) to CPU address failed node(%pOF)\n",
>   		       dmaaddr, np);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
