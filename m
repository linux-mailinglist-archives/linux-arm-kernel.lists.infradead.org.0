Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D27A91D0D7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 11:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OMZzShLNwtTTFpOBjNV2ziFREpfgq5nTcPjv7IjraA=; b=hgVHCnExReqfUl
	Rf3Odx4pxO/EvQoy1fjluFCmdSTkgcvq0vynalzy6+cerD2UdOurAJ/uf8OE5oJ+5nvexWui6QZIk
	F0tM4w7aly/F8p/7tW9q7uRLXZRqR+XxEMrTMjoWI4b4XgpfrCmPrKPoSicfLD8VcpcEImBFVntyD
	dqcbSOMtDPpypbzPdfW4DgJw3TBBwOl96UGH5fCOEVAv3JYuU3j1dNfmibBk7qLQqn0Zqh8k742VI
	x8J7oIs8MMQHupzKwt53h4QE3NEMgpE9Kf/LBa7IEdiaVzW7L0DcpuofRbcajMmbC453EAza3gICb
	Wgi9yLHZ6UFjH+GJgeqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYo4m-0003q4-CB; Wed, 13 May 2020 09:53:20 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYo4a-0003pF-3u
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 09:53:09 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 8FAD0379; Wed, 13 May 2020 11:53:05 +0200 (CEST)
Date: Wed, 13 May 2020 11:53:04 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v3 3/5] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200513095304.GK9820@8bytes.org>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
 <dcccd40c46982b6ab2fc1c5bc199d045798fbe8e.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcccd40c46982b6ab2fc1c5bc199d045798fbe8e.1588673353.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_025308_309282_0225326E 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 iommu@lists.linux-foundation.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 12:09:32PM +0200, Maxime Ripard wrote:
> +static u32 *sun50i_dte_get_page_table(struct sun50i_iommu_domain *sun50i_domain,
> +				      dma_addr_t iova, gfp_t gfp)
> +{
> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> +	unsigned long flags;
> +	u32 *page_table;
> +	u32 *dte_addr;
> +	u32 old_dte;
> +	u32 dte;
> +
> +	dte_addr = &sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
> +	dte = *dte_addr;
> +	if (sun50i_dte_is_pt_valid(dte)) {
> +		phys_addr_t pt_phys = sun50i_dte_get_pt_address(dte);
> +		return (u32 *)phys_to_virt(pt_phys);
> +	}
> +
> +	page_table = sun50i_iommu_alloc_page_table(iommu, gfp);
> +	if (IS_ERR(page_table))
> +		return page_table;
> +
> +	dte = sun50i_mk_dte(virt_to_phys(page_table));
> +	old_dte = cmpxchg(dte_addr, 0, dte);
> +	if (old_dte) {
> +		phys_addr_t installed_pt_phys =
> +			sun50i_dte_get_pt_address(old_dte);
> +		u32 *installed_pt = phys_to_virt(installed_pt_phys);
> +		u32 *drop_pt = page_table;
> +
> +		page_table = installed_pt;
> +		dte = old_dte;
> +		sun50i_iommu_free_page_table(iommu, drop_pt);
> +	}
> +
> +	sun50i_table_flush(sun50i_domain, page_table, PT_SIZE);
> +	sun50i_table_flush(sun50i_domain, dte_addr, 1);
> +
> +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> +	sun50i_iommu_ptw_invalidate(iommu, iova);
> +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);

Why is that needed, does the PTW also cache non-present entries?

> +static size_t sun50i_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
> +				 size_t size, struct iommu_iotlb_gather *gather)
> +{
> +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> +	phys_addr_t pt_phys;
> +	dma_addr_t pte_dma;
> +	u32 *pte_addr;
> +	u32 dte;
> +
> +	dte = sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
> +	if (!sun50i_dte_is_pt_valid(dte))
> +		return 0;
> +
> +	pt_phys = sun50i_dte_get_pt_address(dte);
> +	pte_addr = (u32 *)phys_to_virt(pt_phys) + sun50i_iova_get_pte_index(iova);
> +	pte_dma = pt_phys + sun50i_iova_get_pte_index(iova) * PT_ENTRY_SIZE;
> +
> +	if (!sun50i_pte_is_page_valid(*pte_addr))
> +		return 0;
> +
> +	memset(pte_addr, 0, sizeof(*pte_addr));
> +	sun50i_table_flush(sun50i_domain, pte_addr, 1);
> +
> +	spin_lock(&iommu->iommu_lock);
> +	sun50i_iommu_ptw_invalidate(iommu, iova);
> +	spin_unlock(&iommu->iommu_lock);

And is that also needed? You clear a PTE here and not a top-level DT
entry. All these spinlocks in the map/unmap paths will truly hurt
performance.

And if it is really needed you can defer it into the iotlb_sync()
call-back.

> +static int sun50i_iommu_add_device(struct device *dev)
> +{
> +	struct sun50i_iommu *iommu;
> +	struct iommu_group *group;
> +
> +	iommu = sun50i_iommu_from_dev(dev);
> +	if (!iommu)
> +		return -ENODEV;
> +
> +	group = iommu_group_get_for_dev(dev);
> +	if (IS_ERR(group))
> +		return PTR_ERR(group);
> +
> +	iommu_group_put(group);
> +
> +	return 0;
> +}
> +
> +static void sun50i_iommu_remove_device(struct device *dev)
> +{
> +	iommu_group_remove_device(dev);
> +}


These two call-backs have been renamed in the iommu-tree to
probe_device() and release_device() with slightly different semantics
and function signatures. I think for this driver they should look like
this:

	static struct iommu_device *sun50i_iommu_probe_device(struct device *dev)
	{
		struct sun50i_iommu *iommu;

		iommu = sun50i_iommu_from_dev(dev);
		if (!iommu)
			return ERR_PTR(-ENODEV);

		return &iommu->iommu;
	}

	static void sun50i_iommu_release_device(struct device *dev)
	{
	}

Can you pleas rebase these patches to the 'core' branch of the
iommu-tree and use these new call-backs?

The rest of your driver looks good to me. Good work!

Thanks,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
