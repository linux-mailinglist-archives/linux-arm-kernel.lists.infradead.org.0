Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A681EB0D17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:41:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmKIHZB1BFdFlUs2FduzLZ+C4kIb3rXsTkJ9ghi5dTU=; b=FlhSExWgK0j3tQ
	oAaRF3aa+GIIM6K4bUiNf37ruQ7gsDNgwtpQSRNJl+TWzfPMUvN6odbl0FRPeKEi9B/7mk/mTFlS9
	k4a+4XozC27BbvDP4eWiv8i648QnquD265yV2nQYdfCjfTzCmvR8S00Z2GsYOr+PEMP3+/ZnfWs+u
	xOESOdM/X7VJgZczekwuU8q/d0xKy2vzqVvjMsKAWjrN2Xtm+FcPnaJ+W3lJVplqhAZGVltOgXKqK
	KWj6yP407MnrH5J//oQQRdiHp8FlDT1AYIZOPAxGtwosYSUxV0bpBFItrsttwafmi1bjbGcrK2mf7
	KbuKGCSipBs2ThG6FOnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8MXh-0007tx-Ot; Thu, 12 Sep 2019 10:41:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MXU-0007tb-SM
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:41:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9EEC1000;
 Thu, 12 Sep 2019 03:41:20 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A8F0E3F59C;
 Thu, 12 Sep 2019 03:41:19 -0700 (PDT)
Subject: Re: [PATCH 1/3] iommu/io-pgtable-arm: Correct Mali attributes
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org
References: <cover.1568211045.git.robin.murphy@arm.com>
 <8b9515e86053910196cbc90b71af97be8928585c.1568211045.git.robin.murphy@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <fe46d0e7-ab88-4bfd-ac4f-a08b75696d73@arm.com>
Date: Thu, 12 Sep 2019 11:41:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8b9515e86053910196cbc90b71af97be8928585c.1568211045.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_034125_005834_C7087497 
X-CRM114-Status: GOOD (  22.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: robh@kernel.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, tomeu.vizoso@collabora.com,
 narmstrong@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/09/2019 15:42, Robin Murphy wrote:
> Whilst Midgard's MEMATTR follows a similar principle to the VMSA MAIR,
> the actual attribute values differ, so although it currently appears to
> work to some degree, we probably shouldn't be using our standard stage 1
> MAIR for that. Instead, generate a reasonable MEMATTR with attribute
> values borrowed from the kbase driver; at this point we'll be overriding
> or ignoring pretty much all of the LPAE config, so just implement these
> Mali details in a dedicated allocator instead of pretending to subclass
> the standard VMSA format.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

The Midgard MMU "uses concepts" from LPAE but really isn't LPAE, so this
seems like a good tidy up.

Reviewed-by: Steven Price <steven.price@arm.com>

Steve

> ---
>  drivers/iommu/io-pgtable-arm.c | 53 +++++++++++++++++++++++++---------
>  1 file changed, 40 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 161a7d56264d..9e35cd991f06 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -167,6 +167,9 @@
>  #define ARM_MALI_LPAE_TTBR_READ_INNER	BIT(2)
>  #define ARM_MALI_LPAE_TTBR_SHARE_OUTER	BIT(4)
>  
> +#define ARM_MALI_LPAE_MEMATTR_IMP_DEF	0x88ULL
> +#define ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC 0x8DULL
> +
>  /* IOPTE accessors */
>  #define iopte_deref(pte,d) __va(iopte_to_paddr(pte, d))
>  
> @@ -1013,27 +1016,51 @@ arm_32_lpae_alloc_pgtable_s2(struct io_pgtable_cfg *cfg, void *cookie)
>  static struct io_pgtable *
>  arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
>  {
> -	struct io_pgtable *iop;
> +	struct arm_lpae_io_pgtable *data;
> +
> +	/* No quirks for Mali (hopefully) */
> +	if (cfg->quirks)
> +		return NULL;
>  
>  	if (cfg->ias != 48 || cfg->oas > 40)
>  		return NULL;
>  
>  	cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);
> -	iop = arm_64_lpae_alloc_pgtable_s1(cfg, cookie);
> -	if (iop) {
> -		u64 mair, ttbr;
>  
> -		/* Copy values as union fields overlap */
> -		mair = cfg->arm_lpae_s1_cfg.mair[0];
> -		ttbr = cfg->arm_lpae_s1_cfg.ttbr[0];
> +	data = arm_lpae_alloc_pgtable(cfg);
> +	if (!data)
> +		return NULL;
>  
> -		cfg->arm_mali_lpae_cfg.memattr = mair;
> -		cfg->arm_mali_lpae_cfg.transtab = ttbr |
> -			ARM_MALI_LPAE_TTBR_READ_INNER |
> -			ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
> -	}
> +	/*
> +	 * MEMATTR: Mali has no actual notion of a non-cacheable type, so the
> +	 * best we can do is mimic the out-of-tree driver and hope that the
> +	 * "implementation-defined caching policy" is good enough. Similarly,
> +	 * we'll use it for the sake of a valid attribute for our 'device'
> +	 * index, although callers should never request that in practice.
> +	 */
> +	cfg->arm_mali_lpae_cfg.memattr =
> +		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
> +		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_NC)) |
> +		(ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC
> +		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
> +		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
> +		 << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV));
>  
> -	return iop;
> +	data->pgd = __arm_lpae_alloc_pages(data->pgd_size, GFP_KERNEL, cfg);
> +	if (!data->pgd)
> +		goto out_free_data;
> +
> +	/* Ensure the empty pgd is visible before TRANSTAB can be written */
> +	wmb();
> +
> +	cfg->arm_mali_lpae_cfg.transtab = virt_to_phys(data->pgd) |
> +					  ARM_MALI_LPAE_TTBR_READ_INNER |
> +					  ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
> +	return &data->iop;
> +
> +out_free_data:
> +	kfree(data);
> +	return NULL;
>  }
>  
>  struct io_pgtable_init_fns io_pgtable_arm_64_lpae_s1_init_fns = {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
