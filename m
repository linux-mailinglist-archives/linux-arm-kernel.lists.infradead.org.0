Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4818C175E4E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 16:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s75KorBGNlxqaYxNi5Nnul60OJPMz87Qp1oaD+Yrvt0=; b=BHv6l77XVu5gke
	tf+e8lyk05hMC0Chs9NsnirmXGN0liTmJfLwKkQZTCuYHEDEMbAgBCv70vyaOokG1sX8+juHEZulK
	ii5UEUuU7liMNkafBMf+ic/eEqbsxFYj5yg57hkYCwNrJP2JmS2msNPso8j5vRFoi+GorUOujA8ti
	XIJXcZVIMAnVFtrvE4hYoN8v6RG9y3EYLU1pu7Wy+cisYkCruQSPvMh7ooRv+LU1c5x/7aU6mBo60
	qOnwTsL+rqTUnxqWgyqp4Byl9eWVpJnvJ+Gr/FfZ8zk/jAeQsuBP8ljk6yOUt+jNv/Y5JA9Uwx+QR
	Sbd/pTv6iFOBIGU/o9jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8n7U-0004Ka-7n; Mon, 02 Mar 2020 15:36:36 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8n7K-0004Jo-RI
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 15:36:28 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 9B23D5BC; Mon,  2 Mar 2020 16:36:09 +0100 (CET)
Date: Mon, 2 Mar 2020 16:36:06 +0100
From: Joerg Roedel <joro@8bytes.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 2/4] iommu: Add Allwinner H6 IOMMU driver
Message-ID: <20200302153606.GB6540@8bytes.org>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
 <6864f0f28825bb7a2ec1c0d811a4aacdecf5f945.1582222496.git-series.maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6864f0f28825bb7a2ec1c0d811a4aacdecf5f945.1582222496.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_073627_183447_1827BC0B 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi Maxime,

On Thu, Feb 20, 2020 at 07:15:14PM +0100, Maxime Ripard wrote:
> +struct sun50i_iommu_domain {
> +	struct iommu_domain domain;
> +
> +	/* Number of devices attached to the domain */
> +	refcount_t refcnt;
> +
> +	/* Lock to modify the Directory Table */
> +	spinlock_t dt_lock;

I suggest you make page-table updates lock-less. Otherwise this lock
will become a bottle-neck when using the IOMMU through DMA-API.

> +
> +static int sun50i_iommu_map(struct iommu_domain *domain, unsigned long iova,
> +			    phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
> +{
> +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> +	u32 pte_index;
> +	u32 *page_table, *pte_addr;
> +	unsigned long flags;
> +	int ret = 0;
> +
> +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
> +	page_table = sun50i_dte_get_page_table(sun50i_domain, iova, gfp);
> +	if (IS_ERR(page_table)) {
> +		ret = PTR_ERR(page_table);
> +		goto out;
> +	}
> +
> +	pte_index = sun50i_iova_get_pte_index(iova);
> +	pte_addr = &page_table[pte_index];
> +	if (sun50i_pte_is_page_valid(*pte_addr)) {

You can use unlikely() here.

> +		phys_addr_t page_phys = sun50i_pte_get_page_address(*pte_addr);
> +		dev_err(iommu->dev,
> +			"iova %pad already mapped to %pa cannot remap to %pa prot: %#x\n",
> +			&iova, &page_phys, &paddr, prot);
> +		ret = -EBUSY;
> +		goto out;
> +	}
> +
> +	*pte_addr = sun50i_mk_pte(paddr, prot);
> +	sun50i_table_flush(sun50i_domain, pte_addr, 1);

This maps only one page, right? But the function needs to map up to
'size' as given in the parameter list.

> +
> +	spin_lock_irqsave(&iommu->iommu_lock, flags);
> +	sun50i_iommu_tlb_invalidate(iommu, iova);
> +	spin_unlock_irqrestore(&iommu->iommu_lock, flags);

Why is there a need to flush the TLB here? The IOMMU-API provides
call-backs so that the user of the API can decide when it wants
to flush the IO/TLB. Such flushes are usually expensive and doing them
on every map and unmap will cost significant performance.

> +static size_t sun50i_iommu_unmap(struct iommu_domain *domain, unsigned long iova,
> +				 size_t size, struct iommu_iotlb_gather *gather)
> +{
> +	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
> +	struct sun50i_iommu *iommu = sun50i_domain->iommu;
> +	unsigned long flags;
> +	phys_addr_t pt_phys;
> +	dma_addr_t pte_dma;
> +	u32 *pte_addr;
> +	u32 dte;
> +
> +	spin_lock_irqsave(&sun50i_domain->dt_lock, flags);
> +
> +	dte = sun50i_domain->dt[sun50i_iova_get_dte_index(iova)];
> +	if (!sun50i_dte_is_pt_valid(dte)) {
> +		spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
> +		return 0;
> +	}
> +
> +	pt_phys = sun50i_dte_get_pt_address(dte);
> +	pte_addr = (u32 *)phys_to_virt(pt_phys) + sun50i_iova_get_pte_index(iova);
> +	pte_dma = pt_phys + sun50i_iova_get_pte_index(iova) * PT_ENTRY_SIZE;
> +
> +	if (!sun50i_pte_is_page_valid(*pte_addr)) {
> +		spin_unlock_irqrestore(&sun50i_domain->dt_lock, flags);
> +		return 0;
> +	}
> +
> +	memset(pte_addr, 0, sizeof(*pte_addr));
> +	sun50i_table_flush(sun50i_domain, pte_addr, 1);
> +
> +	spin_lock(&iommu->iommu_lock);
> +	sun50i_iommu_tlb_invalidate(iommu, iova);
> +	sun50i_iommu_ptw_invalidate(iommu, iova);
> +	spin_unlock(&iommu->iommu_lock);

Same objections as in the map function. This only unmaps one page, and
is the IO/TLB flush really needed here?

> +static struct iommu_domain *sun50i_iommu_domain_alloc(unsigned type)
> +{
> +	struct sun50i_iommu_domain *sun50i_domain;
> +
> +	if (type != IOMMU_DOMAIN_DMA && type != IOMMU_DOMAIN_UNMANAGED)
> +		return NULL;

I think you should at least also support identity domains here. The
iommu-core code might allocate those for default domains.


Regards,

	Joerg

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
