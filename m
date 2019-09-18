Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A75B6746
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L233peZjcGM5+yMtjnwjd/k/8sHTaQrz8q3NxXvZivw=; b=pGQaaCfCreyCTf
	f4PNnUst2lDlOOJhyrsGKYSZlgyLuBuVufC59qjFzUwqYQHe46Q+IGUPMJGArorC0UOka3GKTFOyQ
	tStcB8+Mz9KG+QKR2F9xU/FAKd2ag6brRReACKocxBKqrzJlrDV0p2Eo6BfbtejUeo9A/rydrJYqu
	JlH7LgfQgDwXJL5bA31373eS6f7XFCUEiTFBz4d4IDZB8tKfPNq92ScjFMchl7fQKroKSzWXQKwg/
	x95ZxRq1OF3wHELwE2RFMzR+0YlTAWDLCsLTJIrd1HCP/tndw0W54PGny6WSy14faxKEI6Q67D9iR
	qIqB4/oF0bx6qpAJr7rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAc1l-0005tS-Uj; Wed, 18 Sep 2019 15:37:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAc1Y-0005si-Gz
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:37:46 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E422A21848;
 Wed, 18 Sep 2019 15:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568821062;
 bh=o8d7dJQnvHL39KRSK6KjVP0f0KtmfzKyIduld2o7JMs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O6RCkLeoK1SHQW8pEwDSkWFf3OL7vtPollpZp9p6cfdYVaaOTfpSbPfvfQfWkO448
 IGY6tm12B5p36OrH3wTXMnkgWd7r7VJ2184V0HrBsuKhv7eWKSjpmpiZmsslReXLrc
 8L1mSHwAHB0oZ2pSUrJYW7DWdjpkn3bCs1TJP5AI=
Date: Wed, 18 Sep 2019 16:37:38 +0100
From: Will Deacon <will@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH 1/5] iommu: Implement iommu_put_resv_regions_simple()
Message-ID: <20190918153737.dea2z5dddhuus25g@willie-the-truck>
References: <20190829111752.17513-1-thierry.reding@gmail.com>
 <20190829111752.17513-2-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829111752.17513-2-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_083744_590452_E783EB5D 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, virtualization@lists.linux-foundation.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 01:17:48PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Implement a generic function for removing reserved regions. This can be
> used by drivers that don't do anything fancy with these regions other
> than allocating memory for them.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/iommu/iommu.c | 19 +++++++++++++++++++
>  include/linux/iommu.h |  2 ++
>  2 files changed, 21 insertions(+)
> 
> diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
> index 0f585b614657..73a2a6b13507 100644
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -2170,6 +2170,25 @@ void iommu_put_resv_regions(struct device *dev, struct list_head *list)
>  		ops->put_resv_regions(dev, list);
>  }
>  
> +/**
> + * iommu_put_resv_regions_simple - Reserved region driver helper
> + * @dev: device for which to free reserved regions
> + * @list: reserved region list for device
> + *
> + * IOMMU drivers can use this to implement their .put_resv_regions() callback
> + * for simple reservations. Memory allocated for each reserved region will be
> + * freed. If an IOMMU driver allocates additional resources per region, it is
> + * going to have to implement a custom callback.
> + */
> +void iommu_put_resv_regions_simple(struct device *dev, struct list_head *list)
> +{
> +	struct iommu_resv_region *entry, *next;
> +
> +	list_for_each_entry_safe(entry, next, list, list)
> +		kfree(entry);
> +}
> +EXPORT_SYMBOL(iommu_put_resv_regions_simple);

Can you call this directly from iommu_put_resv_regions() if the function
pointer in ops is NULL? That would save having to plumb the default callback
into a bunch of drivers.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
