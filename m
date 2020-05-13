Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF86F1D14A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JbMCmSeRK//QaV7vNRjUW3ij1/LdFF3ZTw+dvVULgVE=; b=Gx7HouVCDv3ywCFPS4mn64Tky
	tmAJyugWUWA5ImyWbyMKrxkf9AH0kVrA9xqkCK5R4HrSfwG8ybroAi2o1VajUMH93OvfrkrKE40vS
	/Qs0TR3+iaFJotjLbC73bCAlOhm4lae4CcEs0rxCTa/7ClEFZXFWkob6KJMQN6qRH1wQ8Hds37FQO
	hxTyh0Gn8rd5fYYdSOir3krR0x/zFZhuFI1+9biEB50aQAJXn86yZJzK1d6huL+PuHaou3ioJkcyB
	tt5h75NCqKwI+cItVcYvT4lUaGaOHRNyQyM9MhX+Zdy7iQqpY3OxiNut6p3vkMH22y3/Z1qcMIjyD
	kax+rheAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrNJ-0001tb-EK; Wed, 13 May 2020 13:24:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrNA-0001sk-11
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:24:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D34C30E;
 Wed, 13 May 2020 06:24:31 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C35C3F71E;
 Wed, 13 May 2020 06:24:27 -0700 (PDT)
Subject: Re: [PATCH v4 02/38] scatterlist: add generic wrappers for iterating
 over sgtable objects
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <CGME20200512090108eucas1p10a3571be3f60265daea3b3f1469b5e82@eucas1p1.samsung.com>
 <20200512090058.14910-2-m.szyprowski@samsung.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <4f9f747a-9bce-90f4-9ca7-ab851f29d758@arm.com>
Date: Wed, 13 May 2020 14:24:25 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512090058.14910-2-m.szyprowski@samsung.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_062432_160283_7ABC408E 
X-CRM114-Status: GOOD (  22.72  )
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
> entries, calling the scatterlist iterating functions with a wrong number
> of the entries.
> 
> To avoid such issues, lets introduce a common wrappers operating directly
> on the struct sg_table objects, which take care of the proper use of
> the nents and orig_nents entries.
> 
> While touching this, lets clarify some ambiguities in the comments for
> the existing for_each helpers.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
> For more information, see '[PATCH v4 00/38] DRM: fix struct sg_table nents
> vs. orig_nents misuse' thread:
> https://lore.kernel.org/dri-devel/20200512085710.14688-1-m.szyprowski@samsung.com/T/
> ---
>   include/linux/scatterlist.h | 50 ++++++++++++++++++++++++++++++++++++++++++---
>   1 file changed, 47 insertions(+), 3 deletions(-)
> 
> diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
> index 6eec50f..4f922af 100644
> --- a/include/linux/scatterlist.h
> +++ b/include/linux/scatterlist.h
> @@ -151,6 +151,20 @@ static inline void sg_set_buf(struct scatterlist *sg, const void *buf,
>   #define for_each_sg(sglist, sg, nr, __i)	\
>   	for (__i = 0, sg = (sglist); __i < (nr); __i++, sg = sg_next(sg))
>   
> +/*
> + * Loop over each sg element in the given sg_table object.
> + */
> +#define for_each_sgtable_sg(sgt, sg, i)		\
> +	for_each_sg(sgt->sgl, sg, sgt->orig_nents, i)
> +
> +/*
> + * Loop over each sg element in the given *DMA mapped* sg_table object.
> + * Please use sg_dma_address(sg) and sg_dma_len(sg) to extract DMA addresses
> + * of the each element.
> + */
> +#define for_each_sgtable_dma_sg(sgt, sg, i)	\
> +	for_each_sg(sgt->sgl, sg, sgt->nents, i)
> +
>   /**
>    * sg_chain - Chain two sglists together
>    * @prv:	First scatterlist
> @@ -401,9 +415,10 @@ static inline struct page *sg_page_iter_page(struct sg_page_iter *piter)
>    * @sglist:	sglist to iterate over
>    * @piter:	page iterator to hold current page, sg, sg_pgoffset
>    * @nents:	maximum number of sg entries to iterate over
> - * @pgoffset:	starting page offset
> + * @pgoffset:	starting page offset (in pages)
>    *
>    * Callers may use sg_page_iter_page() to get each page pointer.
> + * In each loop it operates on PAGE_SIZE unit.
>    */
>   #define for_each_sg_page(sglist, piter, nents, pgoffset)		   \
>   	for (__sg_page_iter_start((piter), (sglist), (nents), (pgoffset)); \
> @@ -412,18 +427,47 @@ static inline struct page *sg_page_iter_page(struct sg_page_iter *piter)
>   /**
>    * for_each_sg_dma_page - iterate over the pages of the given sg list
>    * @sglist:	sglist to iterate over
> - * @dma_iter:	page iterator to hold current page
> + * @dma_iter:	DMA page iterator to hold current page
>    * @dma_nents:	maximum number of sg entries to iterate over, this is the value
>    *              returned from dma_map_sg
> - * @pgoffset:	starting page offset
> + * @pgoffset:	starting page offset (in pages)
>    *
>    * Callers may use sg_page_iter_dma_address() to get each page's DMA address.
> + * In each loop it operates on PAGE_SIZE unit.
>    */
>   #define for_each_sg_dma_page(sglist, dma_iter, dma_nents, pgoffset)            \
>   	for (__sg_page_iter_start(&(dma_iter)->base, sglist, dma_nents,        \
>   				  pgoffset);                                   \
>   	     __sg_page_iter_dma_next(dma_iter);)
>   
> +/**
> + * for_each_sgtable_page - iterate over all pages in the sg_table object
> + * @sgt:	sg_table object to iterate over
> + * @piter:	page iterator to hold current page
> + * @pgoffset:	starting page offset (in pages)
> + *
> + * Iterates over the all memory pages in the buffer described by
> + * a scatterlist stored in the given sg_table object.
> + * See also for_each_sg_page(). In each loop it operates on PAGE_SIZE unit.
> + */
> +#define for_each_sgtable_page(sgt, piter, pgoffset)	\
> +	for_each_sg_page(sgt->sgl, piter, sgt->orig_nents, pgoffset)
> +
> +/**
> + * for_each_sgtable_dma_page - iterate over the DMA mapped sg_table object
> + * @sgt:	sg_table object to iterate over
> + * @dma_iter:	DMA page iterator to hold current page
> + * @pgoffset:	starting page offset (in pages)
> + *
> + * Iterates over the all DMA mapped pages in the buffer described by
> + * a scatterlist stored in the given sg_table object.
> + * See also for_each_sg_dma_page(). In each loop it operates on PAGE_SIZE
> + * unit.
> + */
> +#define for_each_sgtable_dma_page(sgt, dma_iter, pgoffset)	\
> +	for_each_sg_dma_page(sgt->sgl, dma_iter, sgt->nents, pgoffset)
> +
> +
>   /*
>    * Mapping sg iterator
>    *
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
