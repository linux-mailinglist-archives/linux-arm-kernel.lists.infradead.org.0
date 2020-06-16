Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB91FAFC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 14:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IgDvwEhQGmrDgamly53iN5MR5HVItkPaC7rBCSTo9A=; b=iOqxErBduHP9th
	MN7mhwPsDuI7AbOgQrTi5P03DiinYjj0JGVaFHnJ68fvBPdXnY0SIcfl0akktIzyNS17eRpTtf+OY
	AhXv+lKJvGOKbOQ6gnQuPQt085L8lPDIJv7jLt+pB+EqeZt8Amh1eX0HrI9/Jk4tlLSYXA2ZlZRXb
	Rfg/ryTVWDBTNSUrK2OZIiFhfHCqkOmtF2mW1mAbImjFcJJ6/G81dTF6ylIxiDYHqnzu0I7wU5jBz
	sHU2VJ54xpxa+g1qH0fuqDBz0OCp7yYU/vOqR57Pm9coXKzQaOzmS9n7CQihtYGkP93oXrLIKL18s
	b3HnKAvoBFB+NhMiz2zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlAIO-0007sK-Mc; Tue, 16 Jun 2020 12:02:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlAIF-0007rl-33
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 12:02:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C45C81FB;
 Tue, 16 Jun 2020 05:02:12 -0700 (PDT)
Received: from [10.57.45.14] (unknown [10.57.45.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C22173F6CF;
 Tue, 16 Jun 2020 05:02:11 -0700 (PDT)
Subject: Re: [PATCH] dma-direct: enable mmap for !CONFIG_MMU
To: Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux-foundation.org
References: <20200615070542.43761-1-hch@lst.de>
From: Vladimir Murzin <vladimir.murzin@arm.com>
Message-ID: <0f7dd526-653f-bbb3-f9bd-b6923ce7ba8c@arm.com>
Date: Tue, 16 Jun 2020 13:02:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200615070542.43761-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_050220_057702_95471585 
X-CRM114-Status: GOOD (  16.41  )
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
Cc: dillon min <dillon.minfei@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/15/20 8:05 AM, Christoph Hellwig wrote:
> nommu configfs can trivially map the coherent allocations to user space,
> as no actual page table setup is required and the kernel and the user
> space programs share the same address space.
> 
> Fixes: 62fcee9a3bd7 ("dma-mapping: remove CONFIG_ARCH_NO_COHERENT_DMA_MMAP")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reported-by: dillon min <dillon.minfei@gmail.com>
> Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
> Tested-by: dillon min <dillon.minfei@gmail.com>
> ---
>  kernel/dma/Kconfig  |  1 +
>  kernel/dma/direct.c | 14 --------------
>  2 files changed, 1 insertion(+), 14 deletions(-)
> 
> diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
> index d006668c0027d2..e0dae570a51530 100644
> --- a/kernel/dma/Kconfig
> +++ b/kernel/dma/Kconfig
> @@ -71,6 +71,7 @@ config SWIOTLB
>  # in the pagetables
>  #
>  config DMA_NONCOHERENT_MMAP
> +	default y if !MMU
>  	bool
>  
>  config DMA_REMAP
> diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
> index 0a4881e59aa7d6..9ec6a5c3fc578c 100644
> --- a/kernel/dma/direct.c
> +++ b/kernel/dma/direct.c
> @@ -459,7 +459,6 @@ int dma_direct_get_sgtable(struct device *dev, struct sg_table *sgt,
>  	return ret;
>  }
>  
> -#ifdef CONFIG_MMU
>  bool dma_direct_can_mmap(struct device *dev)
>  {
>  	return dev_is_dma_coherent(dev) ||
> @@ -485,19 +484,6 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
>  	return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
>  			user_count << PAGE_SHIFT, vma->vm_page_prot);
>  }
> -#else /* CONFIG_MMU */
> -bool dma_direct_can_mmap(struct device *dev)
> -{
> -	return false;
> -}
> -
> -int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
> -		void *cpu_addr, dma_addr_t dma_addr, size_t size,
> -		unsigned long attrs)
> -{
> -	return -ENXIO;
> -}
> -#endif /* CONFIG_MMU */
>  
>  int dma_direct_supported(struct device *dev, u64 mask)
>  {
> 

LGTM. Should it go stable as well?

Cheers
Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
