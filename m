Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BCC113036
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 17:45:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7qLFyhC8EeRcSZXUEYDEd3ELmFN4rLynRtofkakz5pw=; b=Mq4WJlfq/uMmdKURAyOwbGRLj
	Zlch5+cbUudNarTSRZ/0xWivVFtbjYOsd/FX8PpTeNH8h/gc6JP008cOkNUntm4TaXmxNk1ptMcgN
	IAjwWWNGRmOcjL9WpZZFnEzwwDkNiDwhKLGSMGH7Qh8uc0r2WK9r2K7WZNF6MvNBsShfQUM/9flCQ
	JYrVySZoJvV/NHf3hzZx6V98NAsr8I6gILdb+KLu/DSTj/I+Uk1VOmQDJ6j+kcOQWJgj3efuIAYsj
	OJV7pSRGu5EydPBG1LOqLQt0iO8BD18AJbPm3easvG2gCVSoCawfHGfdxNhBfl0VLQ6eb9nq9IoTq
	s+d2+RU8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXm6-0000Z7-Sb; Wed, 04 Dec 2019 16:45:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icXlv-0008L1-Ew
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 16:45:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6138231B;
 Wed,  4 Dec 2019 08:45:02 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 675A83F52E;
 Wed,  4 Dec 2019 08:45:01 -0800 (PST)
Subject: Re: [PATCH v2 4/8] iommu/arm-smmu: Add split pagetables for Adreno
 IOMMU implementations
To: Jordan Crouse <jcrouse@codeaurora.org>, iommu@lists.linux-foundation.org
References: <1574465484-7115-1-git-send-email-jcrouse@codeaurora.org>
 <0101016e95752703-78491f46-41db-441c-b0fb-9a760e4d56cb-000000@us-west-2.amazonses.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2a43c49e-064e-1e95-6726-8d1e761f6749@arm.com>
Date: Wed, 4 Dec 2019 16:44:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <0101016e95752703-78491f46-41db-441c-b0fb-9a760e4d56cb-000000@us-west-2.amazonses.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_084503_601823_510B7ED3 
X-CRM114-Status: GOOD (  33.41  )
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
Cc: linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 will@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22/11/2019 11:31 pm, Jordan Crouse wrote:
> Add implementation specific support to enable split pagetables for
> SMMU implementations attached to Adreno GPUs on Qualcomm targets.
> 
> To enable split pagetables the driver will set an attribute on the domain.
> if conditions are correct, set up the hardware to support equally sized
> TTBR0 and TTBR1 regions and programs the domain pagetable to TTBR1 to make
> it available for global buffers while allowing the GPU the chance to
> switch the TTBR0 at runtime for per-context pagetables.
> 
> After programming the context, the value of the domain attribute can be
> queried to see if split pagetables were successfully programmed. The
> domain geometry will be updated so that the caller can determine the
> start of the region to generate correct virtual addresses.

Why is any of this in impl? It all looks like perfectly generic 
architectural TTBR1 setup to me. As long as DOMAIN_ATTR_SPLIT_TABLES is 
explicitly an opt-in for callers, I'm OK with them having to trust that 
SEP_UPSTREAM is good enough. Or, even better, make the value of 
DOMAIN_ATTR_SPLIT_TABLES not a boolean but the actual split point, where 
the default of 0 would logically mean "no split".

> Signed-off-by: Jordan Crouse <jcrouse@codeaurora.org>
> ---
> 
>   drivers/iommu/arm-smmu-impl.c |  3 ++
>   drivers/iommu/arm-smmu-qcom.c | 96 +++++++++++++++++++++++++++++++++++++++++++
>   drivers/iommu/arm-smmu.c      | 41 ++++++++++++++----
>   drivers/iommu/arm-smmu.h      | 11 +++++
>   4 files changed, 143 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index 33ed682..1e91231 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -174,5 +174,8 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   	if (of_device_is_compatible(smmu->dev->of_node, "qcom,sdm845-smmu-500"))
>   		return qcom_smmu_impl_init(smmu);
>   
> +	if (of_device_is_compatible(smmu->dev->of_node, "qcom,adreno-smmu-v2"))
> +		return adreno_smmu_impl_init(smmu);
> +
>   	return smmu;
>   }
> diff --git a/drivers/iommu/arm-smmu-qcom.c b/drivers/iommu/arm-smmu-qcom.c
> index 24c071c..6591e49 100644
> --- a/drivers/iommu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm-smmu-qcom.c
> @@ -11,6 +11,102 @@ struct qcom_smmu {
>   	struct arm_smmu_device smmu;
>   };
>   
> +#define TG0_4K  0
> +#define TG0_64K 1
> +#define TG0_16K 2
> +
> +#define TG1_16K 1
> +#define TG1_4K  2
> +#define TG1_64K 3
> +
> +/*
> + * Set up split pagetables for Adreno SMMUs that will keep a static TTBR1 for
> + * global buffers and dynamically switch TTBR0 from the GPU for context specific
> + * pagetables.
> + */
> +static int adreno_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
> +		struct io_pgtable_cfg *pgtbl_cfg)
> +{
> +	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
> +	struct arm_smmu_cb *cb = &smmu_domain->smmu->cbs[cfg->cbndx];
> +	u32 tcr, tg0;
> +
> +	/*
> +	 * Return error if split pagetables are not enabled so that arm-smmu
> +	 * do the default configuration
> +	 */
> +	if (!(pgtbl_cfg->quirks & IO_PGTABLE_QUIRK_ARM_TTBR1))
> +		return -EINVAL;
> +
> +	/* Get the bank configuration from the pagetable config */
> +	tcr = arm_smmu_lpae_tcr(pgtbl_cfg) & 0xffff;

The intent is that arm_smmu_lpae_tcr() should inherently return the 
appropriate half of the TCR based on pgtable_cfg. It seems like a lot of 
this complexity stems from missing that; sorry if it was unclear.

Robin.

> +
> +	/*
> +	 * The TCR configuration for TTBR0 and TTBR1 is (almost) identical so
> +	 * just duplicate the T0 configuration and shift it
> +	 */
> +	cb->tcr[0] = (tcr << 16) | tcr;
> +
> +	/*
> +	 * The (almost) above refers to the granule size field which is
> +	 * different for TTBR0 and TTBR1. With the TTBR1 quirk enabled,
> +	 * io-pgtable-arm will write the T1 appropriate granule size for tg.
> +	 * Translate the configuration from the T1 field to get the right value
> +	 * for T0
> +	 */
> +	if (pgtbl_cfg->arm_lpae_s1_cfg.tcr.tg == TG1_4K)
> +		tg0 = TG0_4K;
> +	else if (pgtbl_cfg->arm_lpae_s1_cfg.tcr.tg == TG1_16K)
> +		tg0 = TG0_16K;
> +	else
> +		tg0 = TG0_64K;
> +
> +	/* clear and set the correct value for TG0  */
> +	cb->tcr[0] &= ~TCR_TG0;
> +	cb->tcr[0] |= FIELD_PREP(TCR_TG0, tg0);
> +
> +	/*
> +	 * arm_smmu_lape_tcr2 sets SEP_UPSTREAM which is always the appropriate
> +	 * SEP for Adreno IOMMU
> +	 */
> +	cb->tcr[1] = arm_smmu_lpae_tcr2(pgtbl_cfg);
> +	cb->tcr[1] |= TCR2_AS;
> +
> +	/* TTBRs */
> +	cb->ttbr[0] = FIELD_PREP(TTBRn_ASID, cfg->asid);
> +	cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
> +	cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
> +
> +	/* MAIRs */
> +	cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair;
> +	cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;
> +
> +	return 0;
> +}
> +
> +static int adreno_smmu_init_context(struct arm_smmu_domain *smmu_domain,
> +		struct io_pgtable_cfg *pgtbl_cfg)
> +{
> +	/* Enable split pagetables if the flag is set and the format matches */
> +	if (smmu_domain->split_pagetables)
> +		if (smmu_domain->stage == ARM_SMMU_DOMAIN_S1 &&
> +			smmu_domain->cfg.fmt == ARM_SMMU_CTX_FMT_AARCH64)
> +			pgtbl_cfg->quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
> +
> +	return 0;
> +}
> +
> +static const struct arm_smmu_impl adreno_smmu_impl = {
> +	.init_context = adreno_smmu_init_context,
> +	.init_context_bank = adreno_smmu_init_context_bank,
> +};
> +
> +struct arm_smmu_device *adreno_smmu_impl_init(struct arm_smmu_device *smmu)
> +{
> +	smmu->impl = &adreno_smmu_impl;
> +	return smmu;
> +}
> +
>   static int qcom_sdm845_smmu500_reset(struct arm_smmu_device *smmu)
>   {
>   	int ret;
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 5c7c32b..f5dc950 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -91,13 +91,6 @@ struct arm_smmu_smr {
>   	bool				valid;
>   };
>   
> -struct arm_smmu_cb {
> -	u64				ttbr[2];
> -	u32				tcr[2];
> -	u32				mair[2];
> -	struct arm_smmu_cfg		*cfg;
> -};
> -
>   struct arm_smmu_master_cfg {
>   	struct arm_smmu_device		*smmu;
>   	s16				smendx[];
> @@ -512,10 +505,20 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>   {
>   	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
>   	struct arm_smmu_cb *cb = &smmu_domain->smmu->cbs[cfg->cbndx];
> +	struct arm_smmu_device *smmu = smmu_domain->smmu;
>   	bool stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;
>   
>   	cb->cfg = cfg;
>   
> +	if (smmu->impl && smmu->impl->init_context_bank) {
> +		/*
> +		 * If the implementation specific function returns non-zero then
> +		 * fall back to the default configuration
> +		 */
> +		if (!smmu->impl->init_context_bank(smmu_domain, pgtbl_cfg))
> +			return; > +	}
> +
>   	/* TCR */
>   	if (stage1) {
>   		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
> @@ -802,7 +805,17 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   
>   	/* Update the domain's page sizes to reflect the page table format */
>   	domain->pgsize_bitmap = pgtbl_cfg.pgsize_bitmap;
> -	domain->geometry.aperture_end = (1UL << ias) - 1;
> +
> +	if (pgtbl_cfg.quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
> +		domain->geometry.aperture_start = ~((1UL << ias) - 1);
> +		domain->geometry.aperture_end = ~0UL;
> +	} else {
> +		domain->geometry.aperture_start = 0;
> +		domain->geometry.aperture_end = (1UL << ias) - 1;
> +
> +		smmu_domain->split_pagetables = false;
> +	}
> +
>   	domain->geometry.force_aperture = true;
>   
>   	/* Initialise the context bank with our page table cfg */
> @@ -1485,6 +1498,9 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
>   		case DOMAIN_ATTR_NESTING:
>   			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
>   			return 0;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			*(int *)data = smmu_domain->split_pagetables;
> +			return 0;
>   		default:
>   			return -ENODEV;
>   		}
> @@ -1525,6 +1541,15 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
>   			else
>   				smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
>   			break;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			if (smmu_domain->smmu) {
> +				return -EPERM;
> +				goto out_unlock;
> +			}
> +
> +			if (*(int *) data)
> +				smmu_domain->split_pagetables = true;
> +			break;
>   		default:
>   			ret = -ENODEV;
>   		}
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index 0eb498f..35158ee 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -329,6 +329,14 @@ struct arm_smmu_domain {
>   	struct mutex			init_mutex; /* Protects smmu pointer */
>   	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
>   	struct iommu_domain		domain;
> +	bool				split_pagetables;
> +};
> +
> +struct arm_smmu_cb {
> +	u64				ttbr[2];
> +	u32				tcr[2];
> +	u32				mair[2];
> +	struct arm_smmu_cfg		*cfg;
>   };
>   
>   static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
> @@ -359,6 +367,8 @@ struct arm_smmu_impl {
>   	int (*reset)(struct arm_smmu_device *smmu);
>   	int (*init_context)(struct arm_smmu_domain *smmu_domain,
>   			struct io_pgtable_cfg *pgtbl_cfg);
> +	int (*init_context_bank)(struct arm_smmu_domain *smmu_domain,
> +			struct io_pgtable_cfg *pgtable_cfg);
>   	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
>   			 int status);
>   };
> @@ -425,6 +435,7 @@ static inline void arm_smmu_writeq(struct arm_smmu_device *smmu, int page,
>   
>   struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
>   struct arm_smmu_device *qcom_smmu_impl_init(struct arm_smmu_device *smmu);
> +struct arm_smmu_device *adreno_smmu_impl_init(struct arm_smmu_device *smmu);
>   
>   int arm_mmu500_reset(struct arm_smmu_device *smmu);
>   
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
