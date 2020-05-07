Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F641C8513
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 10:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3nNxgUf94GXC/ojlaNENo71SgmKJQ8r3w1cr2/1vIo=; b=V+46CMFOFZd9Ry
	aDSQNP1++OAtVI9rhiGI1LS9zpKQXDfpfpc6v0DHcPpF7TNXjym/Gf6wAZWGO5w3uS4qWMB0UmD0+
	4wzIqXM5Fo5hf/eg0zCi+jrpuIHAVZ9+lqjgjQVr/Mz5tr0K3QKILHqUSy44LAmv0vqt9E75FYK4f
	q/+fSm27owDiycfv8ROGFX4fzbHkvttd9t9QHnOzSnxfV6kJ7WcrznSi84dT6WjAWu+KrPu27J4jz
	Q/XvAyswgMrN9YTRfyD95ubGjmjW/qZf2gWVQUcoLeYUBId7XYKsXtbl004fhTnKdievycPBrNjRx
	V4NI9FexCrO+vkCNwmxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcCU-0003uc-TT; Thu, 07 May 2020 08:48:14 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcCK-0003te-TX
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 08:48:07 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id WcByjUh3NtKAsWcC2jYyHm; Thu, 07 May 2020 10:47:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1588841275; bh=GOj2i2e0G1hf/TdwWNiZFyEjE3oPm0LZIISDTcjRCZ0=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=OsQAOw4BCiMS8nSpCtEbPal3MaDqPDcvb/AHQPtbrBn3ybi/ChB9KwzXym2ZJIKEO
 9n3yxwQxFyEQdTZjBDavlhIJ3bwHq99nJquR43ukYrIEo8zFaxzzorFeTA9UX6Mxr7
 ZfY09bw58dMpE1iugEl5bl4lD2KkLSoIqeZRlTxUsbmPi2ileE8h9LVdgcYdY9J02p
 k1SYzSlQ04u5cqWHv/K/V44E8Dcc8g5gk1hF/kcK5zfD+Q794ZuD51BKklzQ44VlF+
 cM8xZ14JNalRlgsLP5+CJKpqYIx2q5sysXW+fsaZppDUXAwt1PStxKdRo87bHZXmb7
 3ArwWoakmqsyA==
Subject: Re: [PATCH v3 01/25] dma-mapping: add generic helpers for mapping
 sgtable objects
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084624eucas1p2a9a5c4d2aece2c1555a5480c19c2e050@eucas1p2.samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <13d9029f-7d03-3624-1e22-f88b769e1b30@xs4all.nl>
Date: Thu, 7 May 2020 10:47:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAY0hozkR2I/OEMAY07+RlgR2H0QspkxLI2sVoCrd7jtub/9esOqC31rXfxbYuIfHeJywJq8p3okwW7LEnUgwRaMNBLBmY8XaNmNC1q8aD5iqeqrS0+3
 loy39fSj6vKmxMdJ/t/aMa5txJkwIIgY1BiELtj9686KjXylfnKrRwbDajHHCli2Nt7ZhivGlG/zCAB4/X+SSpgwR3rKKJZiUe5NvgAh6hGEoywFvYE1HSZk
 q2x9Is67YxPhYF4ju5OX4UztbgGbpq5EbFAyWG1RHCFu9yQ5Xdwa10osaZR9lg5ePqvj8UY1Fu1L8YZnB5pron1MFYUvqMX5G0z5T/LdyqVpebpH/rQ9ob5x
 cZNA271ZHYJvk7MTMWGAknMenTl9VrTI2Ivs0vG9seLlf4sMGjm+toxhFV+oKDbGOQKvfDpBZExiNqoOmA0VuD+gBc1WsPWoLRlo0kmF1APZyBumzDdWHIU4
 tkK7mecVvV6KzLBwTtyGvFU8TRAxyohKPBqdfyxWZKckt5QzTXjamshO2gVMKfD22MppB9HSSp4M5Fy+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_014805_747550_4822DC10 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, Joerg Roedel <joro@8bytes.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On 05/05/2020 10:45, Marek Szyprowski wrote:
> struct sg_table is a common structure used for describing a memory
> buffer. It consists of a scatterlist with memory pages and DMA addresses
> (sgl entry), as well as the number of scatterlist entries: CPU pages
> (orig_nents entry) and DMA pages (nents entry).
> 
> It turned out that it was a common mistake to misuse nents and orig_nents
> entries, call dma-mapping functions with a wrong number of entries or
> ignoring the number of mapped entries returned by the dma_map_sg
> function.
> 
> To avoid such issues, lets introduce a common wrappers operating directly
> on the struct sg_table objects, which take care of the proper use of
> the nents and orig_nents entries.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>  include/linux/dma-mapping.h | 32 ++++++++++++++++++++++++++++++++
>  include/linux/iommu.h       |  6 ++++++
>  2 files changed, 38 insertions(+)
> 
> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
> index b43116a..8364c20d 100644
> --- a/include/linux/dma-mapping.h
> +++ b/include/linux/dma-mapping.h
> @@ -609,6 +609,36 @@ static inline void dma_sync_single_range_for_device(struct device *dev,
>  	return dma_sync_single_for_device(dev, addr + offset, size, dir);
>  }
>  
> +static inline int dma_map_sgtable_attrs(struct device *dev,
> +	struct sg_table *sgt, enum dma_data_direction dir, unsigned long attrs)

Please document these new inline functions!

The core reason IMHO why so many drivers do this wrong is that the struct sg_table
documentation is very poor. In particular w.r.t. how the nents and orig_nents
fields should be used.

It confused me, and clearly I am not alone in that.

So while this is a very nice improvement, it doesn't address the core issue, i.e.
the documentation.

Especially some examples on how to use these new functions would be welcome.

Regards,

	Hans

> +{
> +	int n = dma_map_sg_attrs(dev, sgt->sgl, sgt->orig_nents, dir, attrs);
> +
> +	if (n > 0) {
> +		sgt->nents = n;
> +		return 0;
> +	}
> +	return -EINVAL;
> +}
> +
> +static inline void dma_unmap_sgtable_attrs(struct device *dev,
> +	struct sg_table *sgt, enum dma_data_direction dir, unsigned long attrs)
> +{
> +	dma_unmap_sg_attrs(dev, sgt->sgl, sgt->orig_nents, dir, attrs);
> +}
> +
> +static inline void dma_sync_sgtable_for_cpu(struct device *dev,
> +	struct sg_table *sgt, enum dma_data_direction dir)
> +{
> +	dma_sync_sg_for_cpu(dev, sgt->sgl, sgt->orig_nents, dir);
> +}
> +
> +static inline void dma_sync_sgtable_for_device(struct device *dev,
> +	struct sg_table *sgt, enum dma_data_direction dir)
> +{
> +	dma_sync_sg_for_device(dev, sgt->sgl, sgt->orig_nents, dir);
> +}
> +
>  #define dma_map_single(d, a, s, r) dma_map_single_attrs(d, a, s, r, 0)
>  #define dma_unmap_single(d, a, s, r) dma_unmap_single_attrs(d, a, s, r, 0)
>  #define dma_map_sg(d, s, n, r) dma_map_sg_attrs(d, s, n, r, 0)
> @@ -617,6 +647,8 @@ static inline void dma_sync_single_range_for_device(struct device *dev,
>  #define dma_unmap_page(d, a, s, r) dma_unmap_page_attrs(d, a, s, r, 0)
>  #define dma_get_sgtable(d, t, v, h, s) dma_get_sgtable_attrs(d, t, v, h, s, 0)
>  #define dma_mmap_coherent(d, v, c, h, s) dma_mmap_attrs(d, v, c, h, s, 0)
> +#define dma_map_sgtable(d, s, r) dma_map_sgtable_attrs(d, s, r, 0)
> +#define dma_unmap_sgtable(d, s, r) dma_unmap_sgtable_attrs(d, s, r, 0)
>  
>  extern int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
>  		void *cpu_addr, dma_addr_t dma_addr, size_t size,
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index 7ef8b0b..5106b65 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -466,6 +466,12 @@ extern size_t iommu_map_sg_atomic(struct iommu_domain *domain,
>  extern void iommu_set_fault_handler(struct iommu_domain *domain,
>  			iommu_fault_handler_t handler, void *token);
>  
> +static inline size_t iommu_map_sgtable(struct iommu_domain *domain,
> +			unsigned long iova, struct sg_table *sgt, int prot)
> +{
> +	return iommu_map_sg(domain, iova, sgt->sgl, sgt->orig_nents, prot);
> +}
> +
>  extern void iommu_get_resv_regions(struct device *dev, struct list_head *list);
>  extern void iommu_put_resv_regions(struct device *dev, struct list_head *list);
>  extern void generic_iommu_put_resv_regions(struct device *dev,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
