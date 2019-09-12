Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E6EB0D2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 12:48:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVr6KOwrT5qEF5+PjqV+PMwCqL5/dhJICF2ZougMfHI=; b=BwEn8C8Bx9sAmS
	AgsAvSOUdWE/U7y6TxJGC+iwQS2Vl9//BOjS1jjH1wTZoQU+tEB7wp1So3Bed7JPHGpX+CKi5PK3j
	vAPBKxPa3kD6piOhcYoSE4cZCileSmWXsZeo0bA1yTlc05TKjCr6crbo5XMDpVoL3a4gwNjGoZJoa
	m4n+cRodhFt+4i/lVGOvlCpP04T2Y2AiB/BPwclXm/+MIhSc0UvAXCe3Fqh8Qn0pvpvR5C6aVHXPG
	9kf/geBC6q32jXW6oP+W9tN0h/viqwR7qz9aMh8MOSDcfJaV1Srfknp7mN7tOgYKeqQpF0t9IkO9w
	duoGaMbwjy2hJOZlgaHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Mdx-0001CQ-HN; Thu, 12 Sep 2019 10:48:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Mdk-0001C7-HN
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 10:47:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 029601000;
 Thu, 12 Sep 2019 03:47:52 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EA643F59C;
 Thu, 12 Sep 2019 03:47:50 -0700 (PDT)
Subject: Re: [PATCH 2/3] iommu/io-pgtable-arm: Support more Mali configurations
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org, joro@8bytes.org
References: <cover.1568211045.git.robin.murphy@arm.com>
 <69c934789ad2bf486b03682563ea2262ea6d9301.1568211045.git.robin.murphy@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <6e3f7b2f-fa84-422f-602a-0773835018cb@arm.com>
Date: Thu, 12 Sep 2019 11:47:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <69c934789ad2bf486b03682563ea2262ea6d9301.1568211045.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_034752_620459_4C06BB1D 
X-CRM114-Status: GOOD (  20.73  )
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
> In principle, Midgard GPUs supporting smaller VA sizes should only
> require 3-level pagetables, since the address bits resolved at level 0
> (47:40) will never change. However, the kbase driver does not appear to
> have any notion of a variable start level, and empirically T720 and T820
> rapidly blow up with translation faults unless given a full 4-level
> table, despite only supporting a 33-bit VA size.

Midgard 'LPAE' isn't really LPAE and does indeed always require all
levels of page tables. The 33-bit VA size is really only limiting the
storage of virtual addresses in the GPU and not affecting the MMU.

> The 'real' IAS value is still valuable in terms of validating addresses
> on map/unmap, so tweak the allocator to allow smaller values while still
> forcing the resultant tables to the full 4 levels.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Steven Price <steven.price@arm.com>

Steve

> ---
>  drivers/iommu/io-pgtable-arm.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 9e35cd991f06..77f41c9dd9be 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -1022,7 +1022,7 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
>  	if (cfg->quirks)
>  		return NULL;
>  
> -	if (cfg->ias != 48 || cfg->oas > 40)
> +	if (cfg->ias > 48 || cfg->oas > 40)
>  		return NULL;
>  
>  	cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);
> @@ -1031,6 +1031,11 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
>  	if (!data)
>  		return NULL;
>  
> +	/* Mali seems to need a full 4-level table regardless of IAS */
> +	if (data->levels < ARM_LPAE_MAX_LEVELS) {
> +		data->levels = ARM_LPAE_MAX_LEVELS;
> +		data->pgd_size = sizeof(arm_lpae_iopte);
> +	}
>  	/*
>  	 * MEMATTR: Mali has no actual notion of a non-cacheable type, so the
>  	 * best we can do is mimic the out-of-tree driver and hope that the
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
