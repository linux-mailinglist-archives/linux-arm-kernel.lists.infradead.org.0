Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58123143FAF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 15:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rtuHpkdqEPQ1JixaCxxaCcvYp5fvkB2UeqDgJZozqCE=; b=V5nWqDSpy6mppXabGtSTovfnv
	uygYaUiPOG40F3vRe6UbaYgS7Nce/pTQouNj6H7dp2ckOVJaUT/+JmF0Yrf0rqUtbJVLFJsSNsNHj
	mgMcaBDr52XsdKtoScWunH05dG9Qr56gLbtovvIZ75oJq3cnixu9AqJ/WXhi/6sQ8ZTAIwwsILeRL
	U/3gBKq/vq5cayRvaCgNzxUqhvT849AGJiHVDrvWbU7MP0FYmt7RyMZfFcHm5idU8uesZdYx+KEoj
	IbJRu8YDt2v2PpqlgpLg6XaxEB9zF73UbBZq5GYunWnQ4RdXg/3zq4uescIvgQ1/SZPfVrSbAEaOW
	mj9jqcHoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itudz-0000hK-D8; Tue, 21 Jan 2020 14:36:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itudl-0000gW-QW
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 14:36:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 817BA30E;
 Tue, 21 Jan 2020 06:36:23 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBD9E3F52E;
 Tue, 21 Jan 2020 06:36:20 -0800 (PST)
Subject: Re: [PATCH v3 2/5] iommu/arm-smmu: Add support for split pagetables
To: Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org
References: <1576514271-15687-1-git-send-email-jcrouse@codeaurora.org>
 <1576514271-15687-3-git-send-email-jcrouse@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a38fe02a-4f84-f032-8c9d-4ecf72a87a55@arm.com>
Date: Tue, 21 Jan 2020 14:36:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1576514271-15687-3-git-send-email-jcrouse@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_063625_949567_F2B5FEF9 
X-CRM114-Status: GOOD (  33.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16/12/2019 4:37 pm, Jordan Crouse wrote:
> Add support to enable split pagetables (TTBR1) if the supporting driver
> requests it via the DOMAIN_ATTR_SPLIT_TABLES flag. When enabled, the driver
> will set up the TTBR0 and TTBR1 regions and program the default domain
> pagetable on TTBR1.
> 
> After attaching the device, the value of he domain attribute can
> be queried to see if the split pagetables were successfully programmed.
> Furthermore the domain geometry will be updated so that the caller can
> determine the active region for the pagetable that was programmed.
> 
> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>   drivers/iommu/arm-smmu.c | 40 +++++++++++++++++++++++++++++++++++-----
>   drivers/iommu/arm-smmu.h | 45 +++++++++++++++++++++++++++++++++++++++------
>   2 files changed, 74 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index c106406..7b59116 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -538,9 +538,17 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>   			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
>   			cb->ttbr[1] = 0;
>   		} else {
> -			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> -			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
> -			cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);
> +			if (pgtbl_cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
> +				cb->ttbr[0] = FIELD_PREP(TTBRn_ASID, cfg->asid);
> +				cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> +				cb->ttbr[1] |=
> +					FIELD_PREP(TTBRn_ASID, cfg->asid);
> +			} else {
> +				cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> +				cb->ttbr[0] |=
> +					FIELD_PREP(TTBRn_ASID, cfg->asid);
> +				cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);
> +			}
>   		}
>   	} else {
>   		cb->ttbr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
> @@ -651,6 +659,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   	enum io_pgtable_fmt fmt;
>   	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
>   	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
> +	u32 quirks = 0;
>   
>   	mutex_lock(&smmu_domain->init_mutex);
>   	if (smmu_domain->smmu)
> @@ -719,6 +728,8 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   		oas = smmu->ipa_size;
>   		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64) {
>   			fmt = ARM_64_LPAE_S1;
> +			if (smmu_domain->split_pagetables)
> +				quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
>   		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
>   			fmt = ARM_32_LPAE_S1;
>   			ias = min(ias, 32UL);
> @@ -788,6 +799,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   		.coherent_walk	= smmu->features & ARM_SMMU_FEAT_COHERENT_WALK,
>   		.tlb		= smmu_domain->flush_ops,
>   		.iommu_dev	= smmu->dev,
> +		.quirks		= quirks,
>   	};
>   
>   	if (smmu_domain->non_strict)
> @@ -801,8 +813,15 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   
>   	/* Update the domain's page sizes to reflect the page table format */
>   	domain->pgsize_bitmap = pgtbl_cfg.pgsize_bitmap;
> -	domain->geometry.aperture_end = (1UL << ias) - 1;
> -	domain->geometry.force_aperture = true;
> +
> +	if (pgtbl_cfg.quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
> +		domain->geometry.aperture_start = ~((1ULL << ias) - 1);

AKA "~0UL << ias", if I'm not mistaken ;)

> +		domain->geometry.aperture_end = ~0UL;
> +	} else {
> +		domain->geometry.aperture_end = (1UL << ias) - 1;
> +		domain->geometry.force_aperture = true;
> +		smmu_domain->split_pagetables = false;
> +	}
>   
>   	/* Initialise the context bank with our page table cfg */
>   	arm_smmu_init_context_bank(smmu_domain, &pgtbl_cfg);
> @@ -1484,6 +1503,9 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
>   		case DOMAIN_ATTR_NESTING:
>   			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
>   			return 0;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			*(int *)data = smmu_domain->split_pagetables;
> +			return 0;
>   		default:
>   			return -ENODEV;
>   		}
> @@ -1524,6 +1546,14 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
>   			else
>   				smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
>   			break;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			if (smmu_domain->smmu) {
> +				ret = -EPERM;
> +				goto out_unlock;
> +			}
> +			if (*(int *)data)
> +				smmu_domain->split_pagetables = true;

I still like the idea of passing the actual split point here, but as it 
is I think this sets the scene perfectly for coming back and doing that 
later.

> +			break;
>   		default:
>   			ret = -ENODEV;
>   		}
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index afab9de..68526cc 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -177,6 +177,16 @@ enum arm_smmu_cbar_type {
>   #define TCR_IRGN0			GENMASK(9, 8)
>   #define TCR_T0SZ			GENMASK(5, 0)
>   
> +#define TCR_TG1				GENMASK(31, 30)
> +
> +#define TG0_4K				0
> +#define TG0_64K				1
> +#define TG0_16K				2
> +
> +#define TG1_16K				1
> +#define TG1_4K				2
> +#define TG1_64K				3
> +
>   #define ARM_SMMU_CB_CONTEXTIDR		0x34
>   #define ARM_SMMU_CB_S1_MAIR0		0x38
>   #define ARM_SMMU_CB_S1_MAIR1		0x3c
> @@ -329,16 +339,39 @@ struct arm_smmu_domain {
>   	struct mutex			init_mutex; /* Protects smmu pointer */
>   	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
>   	struct iommu_domain		domain;
> +	bool				split_pagetables;
>   };
>   
> +static inline u32 arm_smmu_lpae_tcr_tg(struct io_pgtable_cfg *cfg)
> +{
> +	u32 val;
> +
> +	if (!(cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1))
> +		return FIELD_PREP(TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg);
> +
> +	val = FIELD_PREP(TCR_TG1, cfg->arm_lpae_s1_cfg.tcr.tg);
> +
> +	if (cfg->arm_lpae_s1_cfg.tcr.tg == TG1_4K)
> +		val |= FIELD_PREP(TCR_TG0, TG0_4K);
> +	else if (cfg->arm_lpae_s1_cfg.tcr.tg == TG1_16K)
> +		val |= FIELD_PREP(TCR_TG0, TG0_16K);
> +	else
> +		val |= FIELD_PREP(TCR_TG0, TG0_64K);
> +
> +	return val;
> +}

This is all a bit ugly - I'd really like to rely on the real values from 
both io_pgtable instances if at all possible...

> +
>   static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
>   {
> -	return TCR_EPD1 |
> -	       FIELD_PREP(TCR_TG0, cfg->arm_lpae_s1_cfg.tcr.tg) |
> -	       FIELD_PREP(TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> -	       FIELD_PREP(TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> -	       FIELD_PREP(TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> -	       FIELD_PREP(TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> +	u32 tcr = FIELD_PREP(TCR_SH0, cfg->arm_lpae_s1_cfg.tcr.sh) |
> +		FIELD_PREP(TCR_ORGN0, cfg->arm_lpae_s1_cfg.tcr.orgn) |
> +		FIELD_PREP(TCR_IRGN0, cfg->arm_lpae_s1_cfg.tcr.irgn) |
> +		FIELD_PREP(TCR_T0SZ, cfg->arm_lpae_s1_cfg.tcr.tsz);
> +
> +	if (!(cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1))
> +		return tcr | TCR_EPD1 | arm_smmu_lpae_tcr_tg(cfg);
> +
> +	return tcr | (tcr << 16) | arm_smmu_lpae_tcr_tg(cfg);

...especially here - leaving TTBR0 enabled but pointing to 
who-knows-what until someone fills it in at some arbitrary point in the 
future seems rather scary.

I'm looking at iommu_aux_attach_device() and friends, and it appears 
pretty achievable to hook that up in a workable manner, even if it's 
just routed straight through to the impl to only work within 
qcom-specific parameters to begin with. I figure the first 
aux_attach_dev sanity-checks that the main domain is using TTBR1 with a 
compatible split, sets TTBR0 and updates the merged TCR value at that 
point. For subsequent calls it shouldn't need to do much more than 
sanity-check that a new aux domain has the same parameters as the 
existing one(s) (and again, such checks could potentially even start out 
as just "this is OK by construction" comments). I guess we'd probably 
want a count of the number of 'live' aux domains so we can simply 
disable TTBR0 on the final aux_detach_dev without having to keep 
detailed track of whatever the GPU has actually context switched in the 
hardware. Can you see any holes in that idea?

I haven't thought it through in detail, but it also feels like between 
aux_attach_dev and/or the TTBR1 quirk in attach_dev there ought to be 
enough information to influence the context bank allocation or shuffle 
any existing domains such that you can ensure that the right thing ends 
up in magic context 0 when it needs to be. That could be a pretty neat 
and robust way to finally put that to bed.

Robin.

>   }
>   
>   static inline u32 arm_smmu_lpae_tcr2(struct io_pgtable_cfg *cfg)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
