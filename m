Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B196B27AEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1wi/NCTCIfG+heRWGFldRvqt/oS4XchG5MzTkLNwlf0=; b=DH72BOvxfar6ut9WS3Blekukn
	Bp0S01IgRc1jEUYcfuDpNSfzhwVnRV95VwuU4rFEix+FqRaC6NwycqJgMwy15EcnOTCqrVcCBUnx0
	fuQt4pdR0Am/DxAv/xBUOKXLDQhyNGpqOF6XITIXuLOlWFoNCYGViLcvYsfmGNGqsv6bubzk6m/F8
	SUWBtv3CbEL14ZXBSE+eqXDoNscYAmTbQfpKAFmCt+Uf1GGdd/WpzaJFiWY8adJ+CRGQbEwKRSU5x
	bASTr+ehLwpzbHHI0SvvJiAbzhdEDCtKL/6pjVK20dzlR113zbSUsusWbSc47jjPrZ7xEgfvCKIyf
	q9oPOmGyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlAJ-0006fP-UA; Thu, 23 May 2019 10:41:39 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlAC-0006f6-UK
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:41:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6A1A341;
 Thu, 23 May 2019 03:41:32 -0700 (PDT)
Received: from [192.168.1.123] (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB19C3F718;
 Thu, 23 May 2019 03:41:29 -0700 (PDT)
Subject: Re: [PATCH v5 1/1] iommu/io-pgtable-arm: Add support to use system
 cache
To: Vivek Gautam <vivek.gautam@codeaurora.org>, will.deacon@arm.com,
 joro@8bytes.org, iommu@lists.linux-foundation.org
References: <20190516093020.18028-1-vivek.gautam@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a4826cd5-c190-c102-c42b-92b6040197bb@arm.com>
Date: Thu, 23 May 2019 11:41:24 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516093020.18028-1-vivek.gautam@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_034133_032055_53CF4A43 
X-CRM114-Status: GOOD (  30.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-msm@vger.kernel.org, pratikp@codeaurora.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 pdaly@codeaurora.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-05-16 10:30 am, Vivek Gautam wrote:
> Few Qualcomm platforms such as, sdm845 have an additional outer
> cache called as System cache, aka. Last level cache (LLC) that
> allows non-coherent devices to upgrade to using caching.
> This cache sits right before the DDR, and is tightly coupled
> with the memory controller. The clients using this cache request
> their slices from this system cache, make it active, and can then
> start using it.
> 
> There is a fundamental assumption that non-coherent devices can't
> access caches. This change adds an exception where they *can* use
> some level of cache despite still being non-coherent overall.
> The coherent devices that use cacheable memory, and CPU make use of
> this system cache by default.
> 
> Looking at memory types, we have following -
> a) Normal uncached :- MAIR 0x44, inner non-cacheable,
>                        outer non-cacheable;
> b) Normal cached :-   MAIR 0xff, inner read write-back non-transient,
>                        outer read write-back non-transient;
>                        attribute setting for coherenet I/O devices.
> and, for non-coherent i/o devices that can allocate in system cache
> another type gets added -
> c) Normal sys-cached :- MAIR 0xf4, inner non-cacheable,
>                          outer read write-back non-transient
> 
> Coherent I/O devices use system cache by marking the memory as
> normal cached.
> Non-coherent I/O devices should mark the memory as normal
> sys-cached in page tables to use system cache.
> 
> Signed-off-by: Vivek Gautam <vivek.gautam@codeaurora.org>

Acked-by: Robin Murphy <robin.murphy@arm.com>

There's a remote possibility that the IOMMU prot flag might be able to 
be somewhat generalised in future for panfrost, as Mali appears to have 
some pretty funky notions of cacheability, but this certainly looks fine 
for now, thanks.

Robin.

> ---
> 
> V3 version of this patch and related series can be found at [1].
> V4 of this patch is available at [2].
> 
> The example usage of how a smmu master can make use of this protection
> flag and set the correct memory attributes to start using system cache,
> can be found at [3]; and here at [3] IOMMU_UPSTREAM_HINT is same as
> IOMMU_QCOM_SYS_CACHE.
> 
> Changes since v4:
>   - Changed ARM_LPAE_MAIR_ATTR_QCOM_SYS_CACHE to
>     ARM_LPAE_MAIR_ATTR_INC_OWBRWA.
>   - Changed ARM_LPAE_MAIR_ATTR_IDX_QCOM_SYS_CACHE to
>     ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE.
>   - Added comments to iommu protection flag - IOMMU_QCOM_SYS_CACHE.
> 
> Changes since v3:
>   - Dropping support to cache i/o page tables to system cache. Getting support
>     for data buffers is the first step.
>     Removed io-pgtable quirk and related change to add domain attribute.
> 
> Glmark2 numbers on SDM845 based cheza board:
> 
> S.No.|	with LLC support   |	without LLC support
>       |	for data buffers   |
> ---------------------------------------------------		
> 1    |	4480; 72.3fps      |	4042; 65.2fps
> 2    |	4500; 72.6fps      |	4039; 65.1fps
> 3    |	4523; 72.9fps	   |	4106; 66.2fps
> 4    |	4489; 72.4fps	   |	4104; 66.2fps
> 5    |	4518; 72.9fps	   |	4072; 65.7fps
> 
> [1] https://patchwork.kernel.org/cover/10772629/
> [2] https://lore.kernel.org/patchwork/patch/1072936/
> [3] https://patchwork.kernel.org/patch/10302791/
> 
>   drivers/iommu/io-pgtable-arm.c | 9 ++++++++-
>   include/linux/iommu.h          | 6 ++++++
>   2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
> index 4e21efbc4459..2454ac11aa97 100644
> --- a/drivers/iommu/io-pgtable-arm.c
> +++ b/drivers/iommu/io-pgtable-arm.c
> @@ -167,10 +167,12 @@
>   #define ARM_LPAE_MAIR_ATTR_MASK		0xff
>   #define ARM_LPAE_MAIR_ATTR_DEVICE	0x04
>   #define ARM_LPAE_MAIR_ATTR_NC		0x44
> +#define ARM_LPAE_MAIR_ATTR_INC_OWBRWA	0xf4
>   #define ARM_LPAE_MAIR_ATTR_WBRWA	0xff
>   #define ARM_LPAE_MAIR_ATTR_IDX_NC	0
>   #define ARM_LPAE_MAIR_ATTR_IDX_CACHE	1
>   #define ARM_LPAE_MAIR_ATTR_IDX_DEV	2
> +#define ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE	3
>   
>   #define ARM_MALI_LPAE_TTBR_ADRMODE_TABLE (3u << 0)
>   #define ARM_MALI_LPAE_TTBR_READ_INNER	BIT(2)
> @@ -470,6 +472,9 @@ static arm_lpae_iopte arm_lpae_prot_to_pte(struct arm_lpae_io_pgtable *data,
>   		else if (prot & IOMMU_CACHE)
>   			pte |= (ARM_LPAE_MAIR_ATTR_IDX_CACHE
>   				<< ARM_LPAE_PTE_ATTRINDX_SHIFT);
> +		else if (prot & IOMMU_QCOM_SYS_CACHE)
> +			pte |= (ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE
> +				<< ARM_LPAE_PTE_ATTRINDX_SHIFT);
>   	}
>   
>   	if (prot & IOMMU_NOEXEC)
> @@ -857,7 +862,9 @@ arm_64_lpae_alloc_pgtable_s1(struct io_pgtable_cfg *cfg, void *cookie)
>   	      (ARM_LPAE_MAIR_ATTR_WBRWA
>   	       << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
>   	      (ARM_LPAE_MAIR_ATTR_DEVICE
> -	       << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV));
> +	       << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_DEV)) |
> +	      (ARM_LPAE_MAIR_ATTR_INC_OWBRWA
> +	       << ARM_LPAE_MAIR_ATTR_SHIFT(ARM_LPAE_MAIR_ATTR_IDX_INC_OCACHE));
>   
>   	cfg->arm_lpae_s1_cfg.mair[0] = reg;
>   	cfg->arm_lpae_s1_cfg.mair[1] = 0;
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index a815cf6f6f47..8ee3fbaf5855 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -41,6 +41,12 @@
>    * if the IOMMU page table format is equivalent.
>    */
>   #define IOMMU_PRIV	(1 << 5)
> +/*
> + * Non-coherent masters on few Qualcomm SoCs can use this page protection flag
> + * to set correct cacheability attributes to use an outer level of cache -
> + * last level cache, aka system cache.
> + */
> +#define IOMMU_QCOM_SYS_CACHE	(1 << 6)
>   
>   struct iommu_ops;
>   struct iommu_group;
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
