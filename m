Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6396DFAB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uavnniX+T/3Bk/oNjULKiUaEwd6LXgztV6xowj3FRJU=; b=E8StB/ZiFCIGo8B+UGpMJzDXf
	atfPrDOR5Gx82N4S8ZJ7T4q4bm/dfQ5JRfNVTVfmrBPrrtezoFD+PwRvDYqhn3wWnw0DplCGb/pa3
	UIpcAQldqkSlox4S41aPINQBVb56NGQ8HOJlk05tCnFNUPo4W7rjsWii2oeqY+79F11/oZOJh6eVz
	scwVpSu3Hi84EChkRjX3dWC1nruIT0Z4ONFYwpQmi3+JtXEtX1mh9WZeVIzmVTpDyS8ifSWPuHzFM
	HdrUYNEJRM9LvE1bP6qSMetdt0GuVe93XnGJbcB0os6oHZCyVlN0zE+OuNX80JM764r74uddbuV0M
	it6b8cShA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLT1b-00061j-Tf; Tue, 30 Apr 2019 13:42:23 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLT1N-0005rm-Gb; Tue, 30 Apr 2019 13:42:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB55680D;
 Tue, 30 Apr 2019 06:42:08 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C54823F5AF;
 Tue, 30 Apr 2019 06:42:04 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] iommu/dma-iommu: Handle deferred devices
To: Tom Murphy <tmurphy@arista.com>, iommu@lists.linux-foundation.org
References: <20190430002952.18909-1-tmurphy@arista.com>
 <20190430002952.18909-3-tmurphy@arista.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2750fa37-a59c-3074-6545-b19046ce3699@arm.com>
Date: Tue, 30 Apr 2019 14:42:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430002952.18909-3-tmurphy@arista.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_064209_906808_27A72E0E 
X-CRM114-Status: GOOD (  29.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Heiko Stuebner <heiko@sntech.de>, Will Deacon <will.deacon@arm.com>,
 David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/04/2019 01:29, Tom Murphy wrote:
> Handle devices which defer their attach to the iommu in the dma-iommu api

I've just spent a while trying to understand what this is about...

AFAICS it's a kdump thing where the regular default domain attachment 
may lead to ongoing DMA traffic from the crashed kernel raising a fault 
storm, so we put off the "real" attach of a given device until we know 
it's been reset and brought into a sane state, but the only way to 
reliably detect that is to wait until the kdump kernel driver starts 
making new DMA mappings. Is that about right?

(I note that for SMMUv3 we now handle that situation with the slightly 
more heavy-handed approach of just turning off reporting and letting the 
'rogue' devices fault silently, but I appreciate that not all IOMMUs may 
have that option)

> Signed-off-by: Tom Murphy <tmurphy@arista.com>
> ---
>   drivers/iommu/dma-iommu.c | 30 ++++++++++++++++++++++++++++++
>   1 file changed, 30 insertions(+)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 7a96c2c8f56b..c18f74ad1e8b 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -322,6 +322,17 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
>   	return iova_reserve_iommu_regions(dev, domain);
>   }
>   
> +static int handle_deferred_device(struct device *dev)
> +{
> +	struct iommu_domain *domain = iommu_get_domain_for_dev(dev);

We don't want iommu_get_domain_for_dev() in fast-paths, as the 
contention on the group refcount has proven to have a surprisingly high 
overhead on some large systems. That's what iommu_get_dma_domain() 
solves, but ideally, can this be wrapped in is_kdump_kernel() such as to 
have no impact at all on the general case?

> +	const struct iommu_ops *ops = domain->ops;
> +
> +	if (ops->is_attach_deferred && ops->is_attach_deferred(domain, dev))
> +		return iommu_attach_device(domain, dev);
> +
> +	return 0;
> +}
> +
>   /**
>    * dma_info_to_prot - Translate DMA API directions and attributes to IOMMU API
>    *                    page flags.
> @@ -835,6 +846,8 @@ static dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
>   	bool coherent = dev_is_dma_coherent(dev);
>   	dma_addr_t dma_handle;
>   
> +	handle_deferred_device(dev);
> +
>   	dma_handle =__iommu_dma_map(dev, phys, size,
>   			dma_info_to_prot(dir, coherent, attrs),
>   			iommu_get_dma_domain(dev));
> @@ -849,6 +862,8 @@ static void iommu_dma_unmap_page(struct device *dev, dma_addr_t dma_handle,
>   {
>   	struct iommu_domain *domain = iommu_get_dma_domain(dev);
>   
> +	handle_deferred_device(dev);

You don't need this - it's completely bogus to make an unmap call 
without having already called the corresponding map function, so we can 
assume it's already been dealt with.

> +
>   	if (!dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC)) {
>   		phys_addr_t phys = iommu_iova_to_phys(domain, dma_handle);
>   
> @@ -873,6 +888,8 @@ static int __finalise_sg(struct device *dev, struct scatterlist *sg, int nents,
>   	unsigned int cur_len = 0, max_len = dma_get_max_seg_size(dev);
>   	int i, count = 0;
>   
> +	handle_deferred_device(dev);

Hmm, this should be in iommu_dma_map_sg() - that's the guy that needs a 
valid domain, and it's impossible to get to __finalise_sg() without 
having been through there anyway.

> +
>   	for_each_sg(sg, s, nents, i) {
>   		/* Restore this segment's original unaligned fields first */
>   		unsigned int s_iova_off = sg_dma_address(s);
> @@ -1022,6 +1039,8 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
>   	struct scatterlist *tmp;
>   	int i;
>   
> +	handle_deferred_device(dev);

Again, not necessary.

> +
>   	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) == 0)
>   		iommu_dma_sync_sg_for_cpu(dev, sg, nents, dir);
>   
> @@ -1042,6 +1061,8 @@ static void iommu_dma_unmap_sg(struct device *dev, struct scatterlist *sg,
>   static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
>   		size_t size, enum dma_data_direction dir, unsigned long attrs)
>   {
> +	handle_deferred_device(dev);

Ditto.

> +
>   	return __iommu_dma_map(dev, phys, size,
>   			dma_info_to_prot(dir, false, attrs) | IOMMU_MMIO,
>   			iommu_get_dma_domain(dev));
> @@ -1050,12 +1071,15 @@ static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
>   static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
>   		size_t size, enum dma_data_direction dir, unsigned long attrs)
>   {
> +	handle_deferred_device(dev);

Ditto.

> +
>   	__iommu_dma_unmap(iommu_get_dma_domain(dev), handle, size);
>   }
>   
>   static void *iommu_dma_alloc(struct device *dev, size_t size,
>   		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
>   {
> +	handle_deferred_device(dev);
>   	gfp |= __GFP_ZERO;
>   
>   #ifdef CONFIG_DMA_DIRECT_REMAP
> @@ -1076,6 +1100,8 @@ static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
>   {
>   	struct page *page;
>   
> +	handle_deferred_device(dev);

Similarly, you can't free anything that hasn't already come from a 
successful call to iommu_dma_alloc()...

> +
>   	/*
>   	 * cpu_addr can be one of 4 things depending on how it was allocated:
>   	 *
> @@ -1115,6 +1141,8 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
>   	unsigned long pfn;
>   	int ret;
>   
> +	handle_deferred_device(dev);

...nor can you mmap() it...

> +
>   	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
>   
>   	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
> @@ -1143,6 +1171,8 @@ static int iommu_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
>   	struct page *page;
>   	int ret;
>   
> +	handle_deferred_device(dev);

...nor attempt to export it.

Robin.

> +
>   #ifdef CONFIG_DMA_DIRECT_REMAP
>   	if (is_vmalloc_addr(cpu_addr)) {
>   		if (!(attrs & DMA_ATTR_FORCE_CONTIGUOUS))
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
