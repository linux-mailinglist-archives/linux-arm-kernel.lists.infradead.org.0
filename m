Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F9F90336
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=m7GBigKpTRx1bg98CDxjYe4TtJXOZs3WeOhaWCkBXhI=; b=O7UKpzhjoljs5KOOqIY62rwpY
	JALd/CHhPINNj1+EJOY+esUHBsSBuPlXhayU4obByYyqibKG3p6fVvZONtpghINxdptaeU5U/HDoK
	w5lNcpBKsrBejrI8+/Zyl4jgv3JFBgZWSVlETITvTSzRMnX/RWJ1nislUDNDiH/oMv8mHd8d3xEFg
	hozkuzuPWKSxM/7yqhpKayD8MjVgpoAXwwU9q10Z33QogzM2+i1VOWs6taxgou9l59KB4n4i95xyO
	B+e1kv1XdnriKVlhMln+CG5hLPsB64SQhRIR1ktHogZ0B5NTCeuqRQqSTV8nUfYhld/aDrAH8STQ3
	Hs7NlcWgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycQo-0006H6-TR; Fri, 16 Aug 2019 13:38:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hycQc-0006GP-73
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 13:38:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E95ED344;
 Fri, 16 Aug 2019 06:38:00 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DEF273F694;
 Fri, 16 Aug 2019 06:37:59 -0700 (PDT)
Subject: Re: [PATCH 03/11] xen/arm: pass one less argument to dma_cache_maint
To: Christoph Hellwig <hch@lst.de>,
 Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
References: <20190816130013.31154-1-hch@lst.de>
 <20190816130013.31154-4-hch@lst.de>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8585fb27-14e0-888c-6749-6862b4e16418@arm.com>
Date: Fri, 16 Aug 2019 14:37:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190816130013.31154-4-hch@lst.de>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_063802_298282_EFF827C8 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/08/2019 14:00, Christoph Hellwig wrote:
> Instead of taking apart the dma address in both callers do it inside
> dma_cache_maint itself.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   arch/arm/xen/mm.c | 10 ++++++----
>   1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
> index 90574d89d0d4..d9da24fda2f7 100644
> --- a/arch/arm/xen/mm.c
> +++ b/arch/arm/xen/mm.c
> @@ -43,13 +43,15 @@ static bool hypercall_cflush = false;
>   
>   /* functions called by SWIOTLB */
>   
> -static void dma_cache_maint(dma_addr_t handle, unsigned long offset,
> -	size_t size, enum dma_data_direction dir, enum dma_cache_op op)
> +static void dma_cache_maint(dma_addr_t handle, size_t size,
> +		enum dma_data_direction dir, enum dma_cache_op op)
>   {
>   	struct gnttab_cache_flush cflush;
>   	unsigned long xen_pfn;
> +	unsigned long offset = handle & ~PAGE_MASK;
>   	size_t left = size;
>   
> +	offset &= PAGE_MASK;

Ahem... presumably that should be handle, not offset.

Robin.

>   	xen_pfn = (handle >> XEN_PAGE_SHIFT) + offset / XEN_PAGE_SIZE;
>   	offset %= XEN_PAGE_SIZE;
>   
> @@ -86,13 +88,13 @@ static void dma_cache_maint(dma_addr_t handle, unsigned long offset,
>   static void __xen_dma_page_dev_to_cpu(struct device *hwdev, dma_addr_t handle,
>   		size_t size, enum dma_data_direction dir)
>   {
> -	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_UNMAP);
> +	dma_cache_maint(handle, size, dir, DMA_UNMAP);
>   }
>   
>   static void __xen_dma_page_cpu_to_dev(struct device *hwdev, dma_addr_t handle,
>   		size_t size, enum dma_data_direction dir)
>   {
> -	dma_cache_maint(handle & PAGE_MASK, handle & ~PAGE_MASK, size, dir, DMA_MAP);
> +	dma_cache_maint(handle, size, dir, DMA_MAP);
>   }
>   
>   void __xen_dma_map_page(struct device *hwdev, struct page *page,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
