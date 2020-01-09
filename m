Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19184135B6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:33:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tx5iIfHMwbaYhJ+IcUnHJ0LziOq/GtEY8Ccq+fBRdEA=; b=oCUNntosV62c4W
	+tNGyIZzh0BF+WfbpfPjhsOlRp/twvBoibS642n6YIv10C5Wcwy8/RubwMv909CCJS9X8O/VYrf28
	yOhQsjrQgvxmcK1/7LDesYHSjE0aOmZ4tVB0gDMbOXNhtbLpdRR/NOtu7wCA9ssWVl2ZYyBjyG409
	/i+sLEhpsbZXylUh9utxZDU9t4k05y0sQPa2oJW/gtQPF2LbOVQukyBv7Mn0AS5Hk0jB4YNJZEGsy
	ylCDdItD0fEjOlZyDN1sQHaVODANv/WwnwnqBQMsLDo72EdOW6XIGe5PxXK6EANBnQvD0HK7BmHVv
	YAjSjsmnBerG0XH+TQ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipYse-0002AF-5Q; Thu, 09 Jan 2020 14:33:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipYsV-00029u-IM
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:33:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A4392077C;
 Thu,  9 Jan 2020 14:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578580418;
 bh=iGOEz/hd1dajLkuo+QJdAwuEYVey87O4SzhgybBzufo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k+txAh4DRhzHX9ZFz6UAQye8UQSO9GwCPT6GLUqRJ+e61xER8ry0es52k8mDrcgbH
 k/htYVe8g5lfnmUQFDAGJpz/0A9uU2Fh7UAZ97L3kEltgclQ0NR6jVcphmeDEBv75b
 8aWBr9pmFk5ubeRqFV4bUQzPhqoYhBU7L6Lb5Faw=
Date: Thu, 9 Jan 2020 14:33:34 +0000
From: Will Deacon <will@kernel.org>
To: Jordan Crouse <jcrouse@codeaurora.org>
Subject: Re: [PATCH v3 2/5] iommu/arm-smmu: Add support for split pagetables
Message-ID: <20200109143333.GB12236@willie-the-truck>
References: <1576514271-15687-1-git-send-email-jcrouse@codeaurora.org>
 <1576514271-15687-3-git-send-email-jcrouse@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576514271-15687-3-git-send-email-jcrouse@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_063339_645157_CEE76CFE 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 09:37:48AM -0700, Jordan Crouse wrote:
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
>  drivers/iommu/arm-smmu.c | 40 +++++++++++++++++++++++++++++++++++-----
>  drivers/iommu/arm-smmu.h | 45 +++++++++++++++++++++++++++++++++++++++------
>  2 files changed, 74 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index c106406..7b59116 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -538,9 +538,17 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>  			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
>  			cb->ttbr[1] = 0;
>  		} else {
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

I still don't understand why you have to set the ASID in both of the TTBRs.
Assuming TCR.A1 is clear, then we should only need to set the field in
TTBR0.

>  		}
>  	} else {
>  		cb->ttbr[0] = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
> @@ -651,6 +659,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>  	enum io_pgtable_fmt fmt;
>  	struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
>  	struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
> +	u32 quirks = 0;
>  
>  	mutex_lock(&smmu_domain->init_mutex);
>  	if (smmu_domain->smmu)
> @@ -719,6 +728,8 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>  		oas = smmu->ipa_size;
>  		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64) {
>  			fmt = ARM_64_LPAE_S1;
> +			if (smmu_domain->split_pagetables)
> +				quirks |= IO_PGTABLE_QUIRK_ARM_TTBR1;
>  		} else if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_L) {
>  			fmt = ARM_32_LPAE_S1;
>  			ias = min(ias, 32UL);
> @@ -788,6 +799,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>  		.coherent_walk	= smmu->features & ARM_SMMU_FEAT_COHERENT_WALK,
>  		.tlb		= smmu_domain->flush_ops,
>  		.iommu_dev	= smmu->dev,
> +		.quirks		= quirks,
>  	};
>  
>  	if (smmu_domain->non_strict)
> @@ -801,8 +813,15 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>  
>  	/* Update the domain's page sizes to reflect the page table format */
>  	domain->pgsize_bitmap = pgtbl_cfg.pgsize_bitmap;
> -	domain->geometry.aperture_end = (1UL << ias) - 1;
> -	domain->geometry.force_aperture = true;
> +
> +	if (pgtbl_cfg.quirks & IO_PGTABLE_QUIRK_ARM_TTBR1) {
> +		domain->geometry.aperture_start = ~((1ULL << ias) - 1);
> +		domain->geometry.aperture_end = ~0UL;
> +	} else {
> +		domain->geometry.aperture_end = (1UL << ias) - 1;
> +		domain->geometry.force_aperture = true;
> +		smmu_domain->split_pagetables = false;
> +	}
>  
>  	/* Initialise the context bank with our page table cfg */
>  	arm_smmu_init_context_bank(smmu_domain, &pgtbl_cfg);
> @@ -1484,6 +1503,9 @@ static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
>  		case DOMAIN_ATTR_NESTING:
>  			*(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
>  			return 0;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			*(int *)data = smmu_domain->split_pagetables;
> +			return 0;
>  		default:
>  			return -ENODEV;
>  		}
> @@ -1524,6 +1546,14 @@ static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
>  			else
>  				smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
>  			break;
> +		case DOMAIN_ATTR_SPLIT_TABLES:
> +			if (smmu_domain->smmu) {
> +				ret = -EPERM;
> +				goto out_unlock;
> +			}
> +			if (*(int *)data)
> +				smmu_domain->split_pagetables = true;
> +			break;
>  		default:
>  			ret = -ENODEV;
>  		}
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index afab9de..68526cc 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -177,6 +177,16 @@ enum arm_smmu_cbar_type {
>  #define TCR_IRGN0			GENMASK(9, 8)
>  #define TCR_T0SZ			GENMASK(5, 0)
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
>  #define ARM_SMMU_CB_CONTEXTIDR		0x34
>  #define ARM_SMMU_CB_S1_MAIR0		0x38
>  #define ARM_SMMU_CB_S1_MAIR1		0x3c
> @@ -329,16 +339,39 @@ struct arm_smmu_domain {
>  	struct mutex			init_mutex; /* Protects smmu pointer */
>  	spinlock_t			cb_lock; /* Serialises ATS1* ops and TLB syncs */
>  	struct iommu_domain		domain;
> +	bool				split_pagetables;
>  };
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

This looks like it's making assumptions about the order in which page-tables
are installed, which I'd really like to avoid. See below.

>  static inline u32 arm_smmu_lpae_tcr(struct io_pgtable_cfg *cfg)
>  {
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

This is interesting. If the intention is to have both TTBR0 and TTBR1
used concurrently by different domains, then we probably need to be a bit
smarter about setting TCR_EPDx. Can we do something like start off with them
both set, and then just clear the one we want when installing a page-table?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
