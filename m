Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD22C1D1492
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:23:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KaNOx16rStKpBG8i7Bh6Ga0HEEega7QWUkvADjFwhGk=; b=V0pf+qyQ785ENxRIkXdA1yYTC
	HtJD0Wb1qdTkicSou0Q6foFCjzODj+RkRk08Vlcg55iYNxc1I3Re+QUarf1DTkxSLtnR65KpNxNA0
	z+d44hLBuCx/If/nd/jVun/cqVs3sgdPFj0C0PL82AyY+fuqM9ue+tvzDhxWG0o0/5pDV8yjUXNoP
	tMrppYeoPgkagaYZN5d4xWbcXEwGYuSz7sNLwaP7qnpVg8DPTzd36C7ZrNyn5F5G6DreNmtVTv77J
	uBIljaKe95CnMwteeuikAJOsRmptlPUhXwaOXyenpr57AiLU7wr6bJo/7NojuSuNk1lva0Z+YSeOk
	xcTfV3vFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrM6-0000ph-JN; Wed, 13 May 2020 13:23:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrLv-0000ou-AK
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:23:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2877A30E;
 Wed, 13 May 2020 06:23:14 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F5103F71E;
 Wed, 13 May 2020 06:23:12 -0700 (PDT)
Subject: Re: [PATCH v4 01/38] dma-mapping: add generic helpers for mapping
 sgtable objects
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <400501ec-c56b-edb7-7def-36ad43264123@arm.com>
Date: Wed, 13 May 2020 14:23:10 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512090058.14910-1-m.szyprowski@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_062316_098780_ED450732 
X-CRM114-Status: GOOD (  28.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-12 10:00 am, Marek Szyprowski wrote:
> struct sg_table is a common structure used for describing a memory
> buffer. It consists of a scatterlist with memory pages and DMA addresses
> (sgl entry), as well as the number of scatterlist entries: CPU pages
> (orig_nents entry) and DMA mapped pages (nents entry).
> 
> It turned out that it was a common mistake to misuse nents and orig_nents
> entries, calling DMA-mapping functions with a wrong number of entries or
> ignoring the number of mapped entries returned by the dma_map_sg
> function.
> 
> To avoid such issues, lets introduce a common wrappers operating directly

Nit: "let's"

> on the struct sg_table objects, which take care of the proper use of
> the nents and orig_nents entries.

A few more documentation nitpicks below, but either way the 
implementation itself (modulo Christoph's fixup) looks good;

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
> vs. orig_nents misuse' thread:
> https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
> ---
>   include/linux/dma-mapping.h | 79 +++++++++++++++++++++++++++++++++++++++++++++
>   1 file changed, 79 insertions(+)
> 
> diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
> index b43116a..88f01cc 100644
> --- a/include/linux/dma-mapping.h
> +++ b/include/linux/dma-mapping.h
> @@ -609,6 +609,85 @@ static inline void dma_sync_single_range_for_device(struct device *dev,
>   	return dma_sync_single_for_device(dev, addr + offset, size, dir);
>   }
>   
> +/**
> + * dma_map_sgtable - Map the given buffer for the DMA operations

Either "for DMA operations", "for the DMA operation", or "for a DMA 
operation", depending on the exact context. Or at that point, perhaps 
just "for DMA".

> + * @dev:	The device to perform a DMA operation

That doesn't quite parse, maybe "the device performing the DMA 
operation", or "the device for which to perform the DMA operation", 
depending on whether "DMA operation" means the mapping or the actual 
hardware access?

> + * @sgt:	The sg_table object describing the buffer
> + * @dir:	DMA direction
> + * @attrs:	Optional DMA attributes for the map operation
> + *
> + * Maps a buffer described by a scatterlist stored in the given sg_table
> + * object for the @dir DMA operation by the @dev device. After success
> + * the ownership for the buffer is transferred to the DMA domain. One has
> + * to call dma_sync_sgtable_for_cpu() or dma_unmap_sgtable() to move the
> + * ownership of the buffer back to the CPU domain before touching the
> + * buffer by the CPU.
> + * Returns 0 on success or -EINVAL on error during mapping the buffer.

Maybe make that a proper "Return:" section?

> + */
> +static inline int dma_map_sgtable(struct device *dev, struct sg_table *sgt,
> +		enum dma_data_direction dir, unsigned long attrs)
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
> +/**
> + * dma_unmap_sgtable - Unmap the given buffer for the DMA operations
> + * @dev:	The device to perform a DMA operation

Same two points as before.

> + * @sgt:	The sg_table object describing the buffer
> + * @dir:	DMA direction
> + * @attrs:	Optional DMA attributes for the map operation

Presumably "the unmap operation", although it *is* true that some 
attributes are expected to match those originally passed to 
dma_map_sgtable()... not sure if kerneldoc can can stretch to that level 
of detail concisely ;)

> + *
> + * Unmaps a buffer described by a scatterlist stored in the given sg_table
> + * object for the @dir DMA operation by the @dev device. After this function
> + * the ownership of the buffer is transferred back to the CPU domain.
> + */
> +static inline void dma_unmap_sgtable(struct device *dev, struct sg_table *sgt,
> +		enum dma_data_direction dir, unsigned long attrs)
> +{
> +	dma_unmap_sg_attrs(dev, sgt->sgl, sgt->orig_nents, dir, attrs);
> +}
> +
> +/**
> + * dma_sync_sgtable_for_cpu - Synchronize the given buffer for the CPU access

s/the CPU/CPU/

> + * @dev:	The device to perform a DMA operation

As before.

> + * @sgt:	The sg_table object describing the buffer
> + * @dir:	DMA direction
> + *
> + * Performs the needed cache synchronization and moves the ownership of the
> + * buffer back to the CPU domain, so it is safe to perform any access to it
> + * by the CPU. Before doing any further DMA operations, one has to transfer
> + * the ownership of the buffer back to the DMA domain by calling the
> + * dma_sync_sgtable_for_device().
> + */
> +static inline void dma_sync_sgtable_for_cpu(struct device *dev,
> +		struct sg_table *sgt, enum dma_data_direction dir)
> +{
> +	dma_sync_sg_for_cpu(dev, sgt->sgl, sgt->orig_nents, dir);
> +}
> +
> +/**
> + * dma_sync_sgtable_for_device - Synchronize the given buffer for the DMA

That one doesn't even

> + * @dev:	The device to perform a DMA operation

As before.

But of course, many thanks for taking the effort to add such complete 
documentation in the first place :)

Cheers,
Robin.

> + * @sgt:	The sg_table object describing the buffer
> + * @dir:	DMA direction
> + *
> + * Performs the needed cache synchronization and moves the ownership of the
> + * buffer back to the DMA domain, so it is safe to perform the DMA operation.
> + * Once finished, one has to call dma_sync_sgtable_for_cpu() or
> + * dma_unmap_sgtable().
> + */
> +static inline void dma_sync_sgtable_for_device(struct device *dev,
> +		struct sg_table *sgt, enum dma_data_direction dir)
> +{
> +	dma_sync_sg_for_device(dev, sgt->sgl, sgt->orig_nents, dir);
> +}
> +
>   #define dma_map_single(d, a, s, r) dma_map_single_attrs(d, a, s, r, 0)
>   #define dma_unmap_single(d, a, s, r) dma_unmap_single_attrs(d, a, s, r, 0)
>   #define dma_map_sg(d, s, n, r) dma_map_sg_attrs(d, s, n, r, 0)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
