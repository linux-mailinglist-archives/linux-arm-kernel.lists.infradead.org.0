Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98380311FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 18:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqZEnoli82NXtWrzERmPZCA3+aF8/Rf2/RlYvPIRQp8=; b=uzv6V+qnd1sODS
	2SKf171xq+ui0LLgP7eYCGhzGHnsh7qZEUhagNlj8M8ypugIBN8gx8x+kmpX7a8lUFM6PRK6pdMug
	7dq9fWrojOx9AF8uklUkmgC1aIksVmtNPz1jYzI6ZvjUEyEZ2Ol6uJPXRM+Y4Ip7+xPjnkIjQFAc7
	6KZjczPdnONakBbj1xQms4qJkyDq5GX4UcEYNYCbCvxrM5zgTZ/JPgKbgAz8jVCx1DB6HN4URm/nM
	r/NznBBDq6au+3OhX0zhJQP7nbkXhba96W3z61/YyoG52wzMfZJSxe8BmrQ70jYmGtbgHNzt1CzpO
	Ua6CUj1N42eLtTAHbaog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWk6d-0002xY-1b; Fri, 31 May 2019 16:10:11 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWk6T-0002W7-Fb
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 16:10:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CA07341;
 Fri, 31 May 2019 09:10:00 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 459BB3F59C;
 Fri, 31 May 2019 09:09:59 -0700 (PDT)
Date: Fri, 31 May 2019 17:09:56 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
Subject: Re: [PATCH v3] PCI: xilinx-nwl: Fix Multi MSI data programming
Message-ID: <20190531160956.GB9356@redmoon>
References: <1559133469-11981-1-git-send-email-bharat.kumar.gogada@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559133469-11981-1-git-send-email-bharat.kumar.gogada@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_091001_610750_4DF59E41 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

[+Marc]

On Wed, May 29, 2019 at 06:07:49PM +0530, Bharat Kumar Gogada wrote:
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

If this is a problem it is not the only driver where it should be fixed
it seems. CC'ed Marc in case I have missed something in relation to MSI
IRQs but AFAIU it looks like HW is allowed to toggled bits (according to
bits[6:4] in Message Control for MSI) in the MSI data, given that the
data written is the hwirq number (in this specific MSI controller)
it ought to be fixed.

The commit log and patch should be rewritten (I will do that) but
first I would like to understand if there are more drivers to be
updated.

Lorenzo

> Fix Multi MSI data programming with required alignment by
> using number of vectors being requested.
> 
> Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL PCIe
> Host Controller")
> Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
> ---
> V3:
>  - Added example description of the issue
> ---
>  drivers/pci/controller/pcie-xilinx-nwl.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
> index 81538d7..8efcb8a 100644
> --- a/drivers/pci/controller/pcie-xilinx-nwl.c
> +++ b/drivers/pci/controller/pcie-xilinx-nwl.c
> @@ -483,7 +483,16 @@ static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
>  	int i;
>  
>  	mutex_lock(&msi->lock);
> -	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> +
> +	/*
> +	 * Multi MSI count is requested in power of two
> +	 * Check if multi msi is requested
> +	 */
> +	if (nr_irqs % 2 == 0)
> +		bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
> +					 nr_irqs, nr_irqs - 1);
> +	else
> +		bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
>  					 nr_irqs, 0);
>  	if (bit >= INT_PCI_MSI_NR) {
>  		mutex_unlock(&msi->lock);
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
