Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1251150DCB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:23:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUJOUdEpVwZgUWFRGmdCk1k17PSebjPnR3zn9YyZj50=; b=sk8Hi/WHgbBbkO
	Iji9yXE0/cQpnhmeK+LZCvYCsh9nfO2cvgv4qYiR0VmTrgBSEpxxQMrjEeLpHpROsRHUNZebPsIOH
	NeLl6nAol1hyMKyaCBHQa/JliN3JfbzTNkM8y/JVh9TFa9XhbDBcEnV3Q+GQ2zeWhoDR1BxiAQ0gy
	4Eihi63PgnO9JQsokKpnmKbX6scJzEsQX5FDYbrCTQ69hbfbf3E9AS+IWqwcn0i+U6Uah0jTha4mk
	dp9AO5qo3mSyrOMqnay8Qtm77wCQJ42Jg+SHZvnjaASq9vN7pWO9dN6EXxK55fu8Kv1g4zCNAlicR
	s6+DEWDGyB7AIZeTZvbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPsZ-0007Co-QR; Mon, 24 Jun 2019 14:23:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPsH-0007Av-9J; Mon, 24 Jun 2019 14:23:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4151B344;
 Mon, 24 Jun 2019 07:23:12 -0700 (PDT)
Received: from [10.1.32.158] (unknown [10.1.32.158])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C9083F71E;
 Mon, 24 Jun 2019 07:23:10 -0700 (PDT)
Subject: Re: [PATCH 1/7] arm-nommu: remove the partial DMA_ATTR_NON_CONSISTENT
 support
To: Christoph Hellwig <hch@lst.de>, Vineet Gupta <vgupta@synopsys.com>
References: <20190614144431.21760-1-hch@lst.de>
 <20190614144431.21760-2-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <a017e704-c6c4-7718-7f8b-eb8a0eced14d@arm.com>
Date: Mon, 24 Jun 2019 15:23:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614144431.21760-2-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072313_541886_F7A1D089 
X-CRM114-Status: GOOD (  19.91  )
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 linux-parisc@vger.kernel.org, Helge Deller <deller@gmx.de>,
 linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/14/19 3:44 PM, Christoph Hellwig wrote:
> The arm-nommu DMA code supports DMA_ATTR_NON_CONSISTENT allocations, but
> does not provide a cache_sync operation.  This means any user of it
> will never be able to actually transfer cache ownership and thus cause
> coherency bugs.

By the way, Documentation/DMA-attributes.txt doesn't specify cache_sync() as
requirement for DMA_ATTR_NON_CONSISTENT it only states that it is responsibility
of the driver to have all the correct and necessary sync points.

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/arm/mm/dma-mapping-nommu.c | 24 +++---------------------
>  1 file changed, 3 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
> index f304b10e23a4..bc003df45546 100644
> --- a/arch/arm/mm/dma-mapping-nommu.c
> +++ b/arch/arm/mm/dma-mapping-nommu.c
> @@ -39,18 +39,7 @@ static void *arm_nommu_dma_alloc(struct device *dev, size_t size,
>  				 unsigned long attrs)
>  
>  {
> -	void *ret;
> -
> -	/*
> -	 * Try generic allocator first if we are advertised that
> -	 * consistency is not required.
> -	 */
> -
> -	if (attrs & DMA_ATTR_NON_CONSISTENT)
> -		return dma_direct_alloc_pages(dev, size, dma_handle, gfp,
> -				attrs);
> -
> -	ret = dma_alloc_from_global_coherent(size, dma_handle);
> +	void *ret = dma_alloc_from_global_coherent(size, dma_handle);
>  
>  	/*
>  	 * dma_alloc_from_global_coherent() may fail because:
> @@ -70,16 +59,9 @@ static void arm_nommu_dma_free(struct device *dev, size_t size,
>  			       void *cpu_addr, dma_addr_t dma_addr,
>  			       unsigned long attrs)
>  {
> -	if (attrs & DMA_ATTR_NON_CONSISTENT) {
> -		dma_direct_free_pages(dev, size, cpu_addr, dma_addr, attrs);
> -	} else {
> -		int ret = dma_release_from_global_coherent(get_order(size),
> -							   cpu_addr);
> -
> -		WARN_ON_ONCE(ret == 0);
> -	}
> +	int ret = dma_release_from_global_coherent(get_order(size), cpu_addr);
>  
> -	return;
> +	WARN_ON_ONCE(ret == 0);
>  }
>  
>  static int arm_nommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
> 

FWIW:

Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
