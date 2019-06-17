Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED8447E34
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 11:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a0Y1gpvI2260FMfJyy9LIWteIz1JTIOyLgYTHttN5z8=; b=YTMi6f39O9//5U
	TK7Ldgl53AsIRbc/9AsqJIJTxA+Kn/gEaQugQrtej+xNQsP00O2tjoW3DuiXOpfWqCGgo55jTMImC
	4hJSUuTwmAGlCPsUGNZXyqNwPZ1n8vgFHQakWIl4HefK7vHITlDPuL7tR/tXBID6R6ZFVIcktIH73
	EmKUz1wNEOcjevLH9abhIbzni+KLqEXD4I7uLjwfnwkdkcHxKieDUnSfnVl+Ue2UmJ5EezD0fwbI6
	117GGtR194wRHAQrcld3InofZ1qLEYQwbYTs4YWCPSzPu6bCa0ol8TJmke/V9YKdBvu/dL5p0IgJ3
	q39GDR7aSstbJT5GEEWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcnpZ-00013b-Ll; Mon, 17 Jun 2019 09:21:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcnpK-00011U-SW
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 09:21:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2DCB8344;
 Mon, 17 Jun 2019 02:21:15 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 29EBE3F246;
 Mon, 17 Jun 2019 02:21:14 -0700 (PDT)
Date: Mon, 17 Jun 2019 10:21:08 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
Subject: Re: [PATCH v4] PCI: xilinx-nwl: Fix Multi MSI data programming
Message-ID: <20190617092108.GA18020@e121166-lin.cambridge.arm.com>
References: <1560334679-9206-1-git-send-email-bharat.kumar.gogada@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560334679-9206-1-git-send-email-bharat.kumar.gogada@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_022122_962230_02986936 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: marc.zyngier@arm.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, rgummal@xilinx.com, bhelgaas@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 03:47:59PM +0530, Bharat Kumar Gogada wrote:
> The current Multi MSI data programming fails if multiple end points
> requesting MSI and multi MSI are connected with switch, i.e the current
> multi MSI data being given is not considering the number of vectors
> being requested in case of multi MSI.
> Ex: Two EP's connected via switch, EP1 requesting single MSI first,
> EP2 requesting Multi MSI of count four. The current code gives
> MSI data 0x0 to EP1 and 0x1 to EP2, but EP2 can modify lower two bits
> due to which EP2 also sends interrupt with MSI data 0x0 which results
> in always invoking virq of EP1 due to which EP2 MSI interrupt never
> gets handled.
> 
> Fix Multi MSI data programming with required alignment by
> using number of vectors being requested.
> 
> Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL PCIe
> Host Controller")
> 
> Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
> ---
> V4:
>  - Using a different bitmap registration API whcih serves single and multi
>    MSI requests.
> ---
>  drivers/pci/controller/pcie-xilinx-nwl.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)

Applied to pci/xilinx for v5.3, please have a look and check if
the commit log I wrote provides a clear description of the issue.

Lorenzo

> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> index 81538d7..a9e07b8 100644
> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> @@ -483,15 +483,13 @@ static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
>  	int i;
>  
>  	mutex_lock(&msi->lock);
> -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> -					 nr_irqs, 0);
> -	if (bit >= INT_PCI_MSI_NR) {
> +	bit = bitmap_find_free_region(msi->bitmap, INT_PCI_MSI_NR,
> +				      get_count_order(nr_irqs));
> +	if (bit < 0) {
>  		mutex_unlock(&msi->lock);
>  		return -ENOSPC;
>  	}
>  
> -	bitmap_set(msi->bitmap, bit, nr_irqs);
> -
>  	for (i = 0; i < nr_irqs; i++) {
>  		irq_domain_set_info(domain, virq + i, bit + i, &nwl_irq_chip,
>  				domain->host_data, handle_simple_irq,
> @@ -509,7 +507,8 @@ static void nwl_irq_domain_free(struct irq_domain *domain, unsigned int virq,
>  	struct nwl_msi *msi = &pcie->msi;
>  
>  	mutex_lock(&msi->lock);
> -	bitmap_clear(msi->bitmap, data->hwirq, nr_irqs);
> +	bitmap_release_region(msi->bitmap, data->hwirq,
> +			      get_count_order(nr_irqs));
>  	mutex_unlock(&msi->lock);
>  }
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
