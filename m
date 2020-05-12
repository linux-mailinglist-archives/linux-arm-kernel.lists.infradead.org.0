Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E93651CE98E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 02:20:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ved1v/RGslFw2TNwnAsfyd8gLejWGJrFFI/YroNNK20=; b=iySf2FhAhjx6iW
	1/fdZ/2rbeqzsnJVxMrfXx4YFFjpJMkhTE5krfn6CcGz5uIs3IMWF8NL/zs1j5b0veZgnx88ittML
	MGnU01FjY0unxiZ1F/2kQFgPup2Wxy4tYmrRJ3CzwtkZcRyjMYUGpR4WW9u4FjbLO4c3s5og5a1q0
	Lbgx0RJQuUKo78rlUuWGmkC8oZfhFVjgm+XMlq6kFICbEPHbjj8rpeHS3QdR0ReqrW08jREa1C71S
	GmLXgTAZqauwhBEJxrPafT6NQutEP9kTS5ZBQBGGAPKiV0BmCdM7LvdwyH2rw0dPgkmkn/gXjDXRf
	A5awZIjxs1xb1cJbx0Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYIeE-0005KU-C5; Tue, 12 May 2020 00:19:50 +0000
Received: from ex13-edg-ou-001.vmware.com ([208.91.0.189])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYIe5-0005Jk-EP
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 00:19:43 +0000
Received: from sc9-mailhost3.vmware.com (10.113.161.73) by
 EX13-EDG-OU-001.vmware.com (10.113.208.155) with Microsoft SMTP Server id
 15.0.1156.6; Mon, 11 May 2020 17:19:27 -0700
Received: from [0.0.0.0] (oddjob.vmware.com [10.253.4.32])
 by sc9-mailhost3.vmware.com (Postfix) with ESMTP id 53A74404D5;
 Mon, 11 May 2020 17:19:26 -0700 (PDT)
Subject: Re: [Linux-graphics-maintainer] [PATCH v3 15/25] drm: vmwgfx: fix
 common struct sg_table related issues
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 <dri-devel@lists.freedesktop.org>, <iommu@lists.linux-foundation.org>,
 <linaro-mm-sig@lists.linaro.org>, <linux-kernel@vger.kernel.org>
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084632eucas1p231212e9cea88e755da8eaf1fb012d2c6@eucas1p2.samsung.com>
 <20200505084614.30424-15-m.szyprowski@samsung.com>
From: Roland Scheidegger <sroland@vmware.com>
Message-ID: <8adef36a-1f35-e8df-3b7b-2f994a204be1@vmware.com>
Date: Tue, 12 May 2020 02:19:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20200505084614.30424-15-m.szyprowski@samsung.com>
Content-Language: de-DE
Received-SPF: None (EX13-EDG-OU-001.vmware.com: sroland@vmware.com does not
 designate permitted sender hosts)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_171941_485627_9AA0C8F4 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [208.91.0.189 listed in list.dnswl.org]
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
 Airlie <airlied@linux.ie>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I'm not exactly an expert on this, but looks alright to me.
Acked-by: Roland Scheidegger <sroland@vmware.com>

Am 05.05.20 um 10:46 schrieb Marek Szyprowski:
> The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
> numer of the created entries in the DMA address space. However the
> subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
> called with the original number of the entries passed to dma_map_sg. The
> sg_table->nents in turn holds the result of the dma_map_sg call as stated
> in include/linux/scatterlist.h. A common mistake was to ignore a result
> of the dma_map_sg function and don't use the sg_table->orig_nents at all.
> 
> To avoid such issues, lets use common dma-mapping wrappers operating
> directly on the struct sg_table objects and adjust references to the
> nents and orig_nents respectively.
> 
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
> vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
> ---
>  drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
> index bf0bc46..e50ae8b 100644
> --- a/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
> +++ b/drivers/gpu/drm/vmwgfx/vmwgfx_ttm_buffer.c
> @@ -362,8 +362,7 @@ static void vmw_ttm_unmap_from_dma(struct vmw_ttm_tt *vmw_tt)
>  {
>  	struct device *dev = vmw_tt->dev_priv->dev->dev;
>  
> -	dma_unmap_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.nents,
> -		DMA_BIDIRECTIONAL);
> +	dma_unmap_sgtable(dev, vmw_tt->sgt, DMA_BIDIRECTIONAL);
>  	vmw_tt->sgt.nents = vmw_tt->sgt.orig_nents;
>  }
>  
> @@ -383,16 +382,8 @@ static void vmw_ttm_unmap_from_dma(struct vmw_ttm_tt *vmw_tt)
>  static int vmw_ttm_map_for_dma(struct vmw_ttm_tt *vmw_tt)
>  {
>  	struct device *dev = vmw_tt->dev_priv->dev->dev;
> -	int ret;
> -
> -	ret = dma_map_sg(dev, vmw_tt->sgt.sgl, vmw_tt->sgt.orig_nents,
> -			 DMA_BIDIRECTIONAL);
> -	if (unlikely(ret == 0))
> -		return -ENOMEM;
>  
> -	vmw_tt->sgt.nents = ret;
> -
> -	return 0;
> +	return dma_map_sgtable(dev, vmw_tt->sgt, DMA_BIDIRECTIONAL);
>  }
>  
>  /**
> @@ -449,10 +440,10 @@ static int vmw_ttm_map_dma(struct vmw_ttm_tt *vmw_tt)
>  		if (unlikely(ret != 0))
>  			goto out_sg_alloc_fail;
>  
> -		if (vsgt->num_pages > vmw_tt->sgt.nents) {
> +		if (vsgt->num_pages > vmw_tt->sgt.orig_nents) {
>  			uint64_t over_alloc =
>  				sgl_size * (vsgt->num_pages -
> -					    vmw_tt->sgt.nents);
> +					    vmw_tt->sgt.orig_nents);
>  
>  			ttm_mem_global_free(glob, over_alloc);
>  			vmw_tt->sg_alloc_size -= over_alloc;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
