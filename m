Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF661FF8C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 18:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wg6Khp/Yrw5wK8ttGB9Rry4szgwNM+QWwuZiruR7CUQ=; b=PpTQO8gSOfUXHzs2o1bF79ZBR
	ch+U11XbRm042pzubZ34+dT/+3zDX6Az03eM5bSUp3aFAdgQrOAN+GLNrhe9SSBuiqg+DstUsDQBq
	+ukeXevgCulb+wla/hRTnglZmC0uHrZdsWjWGOo0LtB4YSlyUTgRpe5qEursf8Xko++F/eUs4UzAD
	+GPK3pMBcVrVDslzIfDYsdY+8HrJLJAppgT7NnksCuOVXQi5i6vNfD21X9HmQATab/U9b+/lCS0Ug
	6R/Ja5u/VG9hEV1ZivJPC3s/TzhFW2jipNx86vlyqAJg4tEfanaHFPHZEkWFbZW4zldFjGWKWssHy
	aqrq2FC1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx5o-0000XP-NG; Thu, 18 Jun 2020 16:08:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx5d-0000Wa-Ka
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 16:08:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 68354101E;
 Thu, 18 Jun 2020 09:08:29 -0700 (PDT)
Received: from [10.57.9.128] (unknown [10.57.9.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E6CF3F6CF;
 Thu, 18 Jun 2020 09:08:22 -0700 (PDT)
Subject: Re: [PATCH v6 01/36] drm: prime: add common helper to check
 scatterlist contiguity
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200618153956.29558-1-m.szyprowski@samsung.com>
 <CGME20200618154014eucas1p12812b08c65f53bb216f8ac8751a309de@eucas1p1.samsung.com>
 <20200618153956.29558-2-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <968a920c-83b7-a0e5-8d0d-fa8486816b01@arm.com>
Date: Thu, 18 Jun 2020 17:07:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200618153956.29558-2-m.szyprowski@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_090833_768276_8010DAC6 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-06-18 16:39, Marek Szyprowski wrote:
> It is a common operation done by DRM drivers to check the contiguity
> of the DMA-mapped buffer described by a scatterlist in the
> sg_table object. Let's add a common helper for this operation.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>   drivers/gpu/drm/drm_gem_cma_helper.c | 23 +++--------------------
>   drivers/gpu/drm/drm_prime.c          | 26 ++++++++++++++++++++++++++
>   include/drm/drm_prime.h              |  2 ++
>   3 files changed, 31 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem_cma_helper.c b/drivers/gpu/drm/drm_gem_cma_helper.c
> index 06a5b9ee1fe0..41566a15dabd 100644
> --- a/drivers/gpu/drm/drm_gem_cma_helper.c
> +++ b/drivers/gpu/drm/drm_gem_cma_helper.c
> @@ -471,26 +471,9 @@ drm_gem_cma_prime_import_sg_table(struct drm_device *dev,
>   {
>   	struct drm_gem_cma_object *cma_obj;
>   
> -	if (sgt->nents != 1) {
> -		/* check if the entries in the sg_table are contiguous */
> -		dma_addr_t next_addr = sg_dma_address(sgt->sgl);
> -		struct scatterlist *s;
> -		unsigned int i;
> -
> -		for_each_sg(sgt->sgl, s, sgt->nents, i) {
> -			/*
> -			 * sg_dma_address(s) is only valid for entries
> -			 * that have sg_dma_len(s) != 0
> -			 */
> -			if (!sg_dma_len(s))
> -				continue;
> -
> -			if (sg_dma_address(s) != next_addr)
> -				return ERR_PTR(-EINVAL);
> -
> -			next_addr = sg_dma_address(s) + sg_dma_len(s);
> -		}
> -	}
> +	/* check if the entries in the sg_table are contiguous */
> +	if (drm_prime_get_contiguous_size(sgt) < attach->dmabuf->size)
> +		return ERR_PTR(-EINVAL);
>   
>   	/* Create a CMA GEM buffer. */
>   	cma_obj = __drm_gem_cma_create(dev, attach->dmabuf->size);
> diff --git a/drivers/gpu/drm/drm_prime.c b/drivers/gpu/drm/drm_prime.c
> index bbfc713bfdc3..0784969894c1 100644
> --- a/drivers/gpu/drm/drm_prime.c
> +++ b/drivers/gpu/drm/drm_prime.c
> @@ -825,6 +825,32 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
>   }
>   EXPORT_SYMBOL(drm_prime_pages_to_sg);
>   
> +/**
> + * drm_prime_get_contiguous_size - returns the contiguous size of the buffer
> + * @sgt: sg_table describing the buffer to check
> + *
> + * This helper calculates the contiguous size in the DMA address space
> + * of the the buffer described by the provided sg_table.
> + *
> + * This is useful for implementing
> + * &drm_gem_object_funcs.gem_prime_import_sg_table.
> + */
> +unsigned long drm_prime_get_contiguous_size(struct sg_table *sgt)
> +{
> +	dma_addr_t expected = sg_dma_address(sgt->sgl);
> +	struct sg_dma_page_iter dma_iter;
> +	unsigned long size = 0;
> +
> +	for_each_sgtable_dma_page(sgt, &dma_iter, 0) {
> +		if (sg_page_iter_dma_address(&dma_iter) != expected)
> +			break;
> +		expected += PAGE_SIZE;
> +		size += PAGE_SIZE;

Hmm, in many cases this is likely to be far less efficient than simply 
using for_each_sgtable_dma() and sg_dma_len() equivalent to the original 
implementation, and there doesn't seem to be any good reason for that. 
Plus AFAICS it could potentially let false-positives through if someone 
were to pass in a table with non-page-aligned lengths (I assume that's 
expected never to happen, but still...)

Robin.

> +	}
> +	return size;
> +}
> +EXPORT_SYMBOL(drm_prime_get_contiguous_size);
> +
>   /**
>    * drm_gem_prime_export - helper library implementation of the export callback
>    * @obj: GEM object to export
> diff --git a/include/drm/drm_prime.h b/include/drm/drm_prime.h
> index 9af7422b44cf..47ef11614627 100644
> --- a/include/drm/drm_prime.h
> +++ b/include/drm/drm_prime.h
> @@ -92,6 +92,8 @@ struct sg_table *drm_prime_pages_to_sg(struct page **pages, unsigned int nr_page
>   struct dma_buf *drm_gem_prime_export(struct drm_gem_object *obj,
>   				     int flags);
>   
> +unsigned long drm_prime_get_contiguous_size(struct sg_table *sgt);
> +
>   /* helper functions for importing */
>   struct drm_gem_object *drm_gem_prime_import_dev(struct drm_device *dev,
>   						struct dma_buf *dma_buf,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
