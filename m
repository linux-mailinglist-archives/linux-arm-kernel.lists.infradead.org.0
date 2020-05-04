Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC7A1C3B3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1ypYkA4Bq9u1v8EjAW7XKIeXL24RPq9zjPHuXlpgRq0=; b=rwjZNefX7vpBrWGOx9WmnsHsl
	bshLKGoeGWDbOn+rnwDAuIZd+NAAgdyd6A/rSoI8jTQ5byZYRc8sChON+5jj8Ch4gqky6IVh2YBvK
	qZlMlvnkAw98cvMxdWqHnudtHyc67EBQ3O5nvqamFC00rlfAlNWM4ri8YZnboJQXJwIESi+S553Jw
	a9KOJzZLjZV1aKUKPujf8HAIbRIiQD6U9VLXVf+TPi/otgnA7GgMQMAmFuHGE626BYC9h3HvDLt0X
	tdlv4TpwTwlrDBqtdO8eH0nJCTTcbHeNUg6dO518j+4qpGUiIUIK9XXCZbUZiB8xT0Z/Z49x9a/fx
	iOiQ2SkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVb8j-0000Ve-PG; Mon, 04 May 2020 13:28:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVb8b-0000Ul-HD
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:28:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C61241FB;
 Mon,  4 May 2020 06:28:00 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D88F43F71F;
 Mon,  4 May 2020 06:27:57 -0700 (PDT)
Subject: Re: [PATCH v2 09/21] drm: panfrost: fix sg_table nents vs. orig_nents
 misuse
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20200504125017.5494-1-m.szyprowski@samsung.com>
 <20200504125359.5678-1-m.szyprowski@samsung.com>
 <CGME20200504125415eucas1p1eea125ce87eec4e7c2e2dcc75f965896@eucas1p1.samsung.com>
 <20200504125359.5678-9-m.szyprowski@samsung.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <607fc87f-eb1c-6362-d8ff-3ac6ccf31bdf@arm.com>
Date: Mon, 4 May 2020 14:27:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200504125359.5678-9-m.szyprowski@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_062801_660856_18AC0E54 
X-CRM114-Status: GOOD (  23.57  )
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
Cc: Rob Herring <robh@kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <Robin.Murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/05/2020 13:53, Marek Szyprowski wrote:
> The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
> numer of the created entries in the DMA address space. However the
> subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
> called with the original number of entries passed to dma_map_sg. The
> sg_table->nents in turn holds the result of the dma_map_sg call as stated
> in include/linux/scatterlist.h. Adapt the code to obey those rules.

I find this commit message a bit confusing, but AFAICT the problem with 
the Panfrost code is really in mmu_map_sg() where we don't have the 
return value from dma_map_sg() and the for_each_sg() loop could (in 
theory) run off the end of the list.

The fix seems correct - store the return where it's meant to be (nents) 
and make sure when unmapping we use the original (orig_nents). So you 
might also consider adding:

Fixes: f3ba91228e8e ("drm/panfrost: Add initial panfrost driver")

Even better would be the wrappers you mention in the cover letter! ;)

Reviewed-by: Steven Price <steven.price@arm.com>

> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> For more information, see '[PATCH v2 00/21] DRM: fix struct sg_table nents
> vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/4/373
> ---
>   drivers/gpu/drm/panfrost/panfrost_gem.c | 3 ++-
>   drivers/gpu/drm/panfrost/panfrost_mmu.c | 4 +++-
>   2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panfrost/panfrost_gem.c b/drivers/gpu/drm/panfrost/panfrost_gem.c
> index 17b654e..22fec7c 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_gem.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_gem.c
> @@ -42,7 +42,8 @@ static void panfrost_gem_free_object(struct drm_gem_object *obj)
>   		for (i = 0; i < n_sgt; i++) {
>   			if (bo->sgts[i].sgl) {
>   				dma_unmap_sg(pfdev->dev, bo->sgts[i].sgl,
> -					     bo->sgts[i].nents, DMA_BIDIRECTIONAL);
> +					     bo->sgts[i].orig_nents,
> +					     DMA_BIDIRECTIONAL);
>   				sg_free_table(&bo->sgts[i]);
>   			}
>   		}
> diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> index ed28aeb..2d9b1f9 100644
> --- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
> +++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
> @@ -517,7 +517,9 @@ static int panfrost_mmu_map_fault_addr(struct panfrost_device *pfdev, int as,
>   	if (ret)
>   		goto err_pages;
>   
> -	if (!dma_map_sg(pfdev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL)) {
> +	sgt->nents = dma_map_sg(pfdev->dev, sgt->sgl, sgt->orig_nents,
> +				DMA_BIDIRECTIONAL);
> +	if (!sgt->nents) {
>   		ret = -EINVAL;
>   		goto err_map;
>   	}
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
