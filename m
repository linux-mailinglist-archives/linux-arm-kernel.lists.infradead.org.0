Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB2795958
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 10:21:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ASiMxQk8PNd4Sv2k4D9dRO0waDoqPlhKUEfBDvhWxtU=; b=YZN3bN2zY6LGx+npfVH2NtI0j
	tsnrzJbsH3lDaDQSpUIKK7LnT3yUQz4VSAsb32EasUnnS3A5rGqkMDiCR5KRfISGKX1NMWiZizJYX
	lUXZuZpNbGe8YhX9ukAqfVQdrwcxcEN0Zsb+3Oa7BOvJM2nncKXm0q75TbK8/C9s87LeXmTI9xr+E
	wWrtJp+qWS7yA+xIFAUp4IYI3o51+3YVqUyralCPG7K16j/Pp2qCareTMnnmu/hubzoz+VrvZ+dPI
	e8HKdbJGA/O99L/WMrlrLuXJAEcaadSK5c5MXgDdjZohg+VsfrnX8IaKSW5+fuVk+XTtGa4uus6Ff
	TvoPuztpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzOJ-0003GZ-5q; Tue, 20 Aug 2019 08:21:19 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzO1-0003GE-6M
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 08:21:03 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 2DA3C60A00; Tue, 20 Aug 2019 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566289260;
 bh=3UBaQBRWxNLTc1613sNLUXVwpkaeyWhbIZsoly2sMbU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=pMBa9qceWoZcGBu0UZX+WoiBtC+GM86ponPFGALw8UP8Sw2iaOvHpV2sjJqrLP8/M
 1TYHI0UXH2RRrjzD9UcCxlzLMPf7Wa/t5kPDgS1RnPe42NlLFGDLWaVQAu9dDxsxGj
 zn4yy/43Ub/UsDE7qPXm/LYxbYi9SZ9HXDGyojSg=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.137.238]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: vivek.gautam@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 187306030D;
 Tue, 20 Aug 2019 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1566289258;
 bh=3UBaQBRWxNLTc1613sNLUXVwpkaeyWhbIZsoly2sMbU=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=FfLvg2UsJxClhApEmzenJJpZVQzb3LKR1qLX8fOdBUqafP5MErBueq9gYgRqKGQTB
 VoCtmC+21GnhvHHLbsKiRPjGg2m5XkQprRsLoLpGrms+2p/9+QWxlQs18oCA+/o2VH
 OenfEhmpIJHkw/p050C6gM1XxArqKQtsCoUMNekA=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 187306030D
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=vivek.gautam@codeaurora.org
Subject: Re: [PATCH v2 00/17] Arm SMMU refactoring
To: Robin Murphy <robin.murphy@arm.com>, will@kernel.org
References: <cover.1565892337.git.robin.murphy@arm.com>
From: Vivek Gautam <vivek.gautam@codeaurora.org>
Message-ID: <4bcb0849-7f77-7630-4671-a6d9ad2b9083@codeaurora.org>
Date: Tue, 20 Aug 2019 13:50:52 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <cover.1565892337.git.robin.murphy@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_012101_281747_FE0745DA 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robdclark@gmail.com, gregory.clement@bootlin.com,
 bjorn.andersson@linaro.org, iommu@lists.linux-foundation.org,
 jcrouse@codeaurora.org, joro@8bytes.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 8/16/2019 12:07 AM, Robin Murphy wrote:
> Hi all,
>
> v1 for context: https://patchwork.kernel.org/cover/11087347/
>
> Here's a quick v2 attempting to address all the minor comments; I've
> tweaked a whole bunch of names, added some verbosity in macros and
> comments for clarity, and rejigged arm_smmu_impl_init() for a bit more
> structure. The (new) patches #1 and #2 are up front as conceptual fixes,
> although they're not actually critical - it turns out to be more of an
> embarrassment than a real problem in practice.
>
> For ease of reference, the overall diff against v1 is attached below.
>
> Robin.

Hi,

I have given this series a shot with 5.3-rc5 kernel on MTP sdm845 
device, and smmu works as expected.

Tested-by: Vivek Gautam <vivek.gautam@codeaurora.org>

Best regards
Vivek
>
>
> Robin Murphy (17):
>    iommu/arm-smmu: Mask TLBI address correctly
>    iommu/qcom: Mask TLBI addresses correctly
>    iommu/arm-smmu: Convert GR0 registers to bitfields
>    iommu/arm-smmu: Convert GR1 registers to bitfields
>    iommu/arm-smmu: Convert context bank registers to bitfields
>    iommu/arm-smmu: Rework cb_base handling
>    iommu/arm-smmu: Split arm_smmu_tlb_inv_range_nosync()
>    iommu/arm-smmu: Get rid of weird "atomic" write
>    iommu/arm-smmu: Abstract GR1 accesses
>    iommu/arm-smmu: Abstract context bank accesses
>    iommu/arm-smmu: Abstract GR0 accesses
>    iommu/arm-smmu: Rename arm-smmu-regs.h
>    iommu/arm-smmu: Add implementation infrastructure
>    iommu/arm-smmu: Move Secure access quirk to implementation
>    iommu/arm-smmu: Add configuration implementation hook
>    iommu/arm-smmu: Add reset implementation hook
>    iommu/arm-smmu: Add context init implementation hook
>
>   MAINTAINERS                   |   3 +-
>   drivers/iommu/Makefile        |   2 +-
>   drivers/iommu/arm-smmu-impl.c | 174 +++++++++++
>   drivers/iommu/arm-smmu-regs.h | 210 -------------
>   drivers/iommu/arm-smmu.c      | 573 +++++++++++-----------------------
>   drivers/iommu/arm-smmu.h      | 394 +++++++++++++++++++++++
>   drivers/iommu/qcom_iommu.c    |  17 +-
>   7 files changed, 764 insertions(+), 609 deletions(-)
>   create mode 100644 drivers/iommu/arm-smmu-impl.c
>   delete mode 100644 drivers/iommu/arm-smmu-regs.h
>   create mode 100644 drivers/iommu/arm-smmu.h
>
> ----->8-----
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index 3c731e087854..e22e9004f449 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -28,7 +28,7 @@ static int arm_smmu_gr0_ns(int offset)
>   static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
>   			    int offset)
>   {
> -	if (page == 0)
> +	if (page == ARM_SMMU_GR0)
>   		offset = arm_smmu_gr0_ns(offset);
>   	return readl_relaxed(arm_smmu_page(smmu, page) + offset);
>   }
> @@ -36,7 +36,7 @@ static u32 arm_smmu_read_ns(struct arm_smmu_device *smmu, int page,
>   static void arm_smmu_write_ns(struct arm_smmu_device *smmu, int page,
>   			      int offset, u32 val)
>   {
> -	if (page == 0)
> +	if (page == ARM_SMMU_GR0)
>   		offset = arm_smmu_gr0_ns(offset);
>   	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
>   }
> @@ -52,18 +52,17 @@ struct cavium_smmu {
>   	struct arm_smmu_device smmu;
>   	u32 id_base;
>   };
> -#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)
>   
>   static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>   {
>   	static atomic_t context_count = ATOMIC_INIT(0);
> +	struct cavium_smmu *cs = container_of(smmu, struct cavium_smmu, smmu);
>   	/*
>   	 * Cavium CN88xx erratum #27704.
>   	 * Ensure ASID and VMID allocation is unique across all SMMUs in
>   	 * the system.
>   	 */
> -	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
> -						   &context_count);
> +	cs->id_base = atomic_fetch_add(smmu->num_context_banks, &context_count);
>   	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
>   
>   	return 0;
> @@ -71,12 +70,13 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>   
>   int cavium_init_context(struct arm_smmu_domain *smmu_domain)
>   {
> -	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
> +	struct cavium_smmu *cs = container_of(smmu_domain->smmu,
> +					      struct cavium_smmu, smmu);
>   
>   	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
> -		smmu_domain->cfg.vmid += id_base;
> +		smmu_domain->cfg.vmid += cs->id_base;
>   	else
> -		smmu_domain->cfg.asid += id_base;
> +		smmu_domain->cfg.asid += cs->id_base;
>   
>   	return 0;
>   }
> @@ -88,18 +88,18 @@ const struct arm_smmu_impl cavium_impl = {
>   
>   struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
>   {
> -	struct cavium_smmu *csmmu;
> +	struct cavium_smmu *cs;
>   
> -	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
> -	if (!csmmu)
> +	cs = devm_kzalloc(smmu->dev, sizeof(*cs), GFP_KERNEL);
> +	if (!cs)
>   		return ERR_PTR(-ENOMEM);
>   
> -	csmmu->smmu = *smmu;
> -	csmmu->smmu.impl = &cavium_impl;
> +	cs->smmu = *smmu;
> +	cs->smmu.impl = &cavium_impl;
>   
>   	devm_kfree(smmu->dev, smmu);
>   
> -	return &csmmu->smmu;
> +	return &cs->smmu;
>   }
>   
>   
> @@ -150,16 +150,25 @@ const struct arm_smmu_impl arm_mmu500_impl = {
>   
>   struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   {
> -	/* The current quirks happen to be mutually-exclusive */
> +	/*
> +	 * We will inevitably have to combine model-specific implementation
> +	 * quirks with platform-specific integration quirks, but everything
> +	 * we currently support happens to work out as straightforward
> +	 * mutually-exclusive assignments.
> +	 */
> +	switch (smmu->model) {
> +	case ARM_MMU500:
> +		smmu->impl = &arm_mmu500_impl;
> +		break;
> +	case CAVIUM_SMMUV2:
> +		return cavium_smmu_impl_init(smmu);
> +	default:
> +		break;
> +	}
> +
>   	if (of_property_read_bool(smmu->dev->of_node,
>   				  "calxeda,smmu-secure-config-access"))
>   		smmu->impl = &calxeda_impl;
>   
> -	if (smmu->model == CAVIUM_SMMUV2)
> -		return cavium_smmu_impl_init(smmu);
> -
> -	if (smmu->model == ARM_MMU500)
> -		smmu->impl = &arm_mmu500_impl;
> -
>   	return smmu;
>   }
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 251089d6428d..b8628e2ab579 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -264,7 +264,7 @@ static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
>   	unsigned long flags;
>   
>   	spin_lock_irqsave(&smmu->global_sync_lock, flags);
> -	__arm_smmu_tlb_sync(smmu, 0, ARM_SMMU_GR0_sTLBGSYNC,
> +	__arm_smmu_tlb_sync(smmu, ARM_SMMU_GR0, ARM_SMMU_GR0_sTLBGSYNC,
>   			    ARM_SMMU_GR0_sTLBGSTATUS);
>   	spin_unlock_irqrestore(&smmu->global_sync_lock, flags);
>   }
> @@ -276,7 +276,7 @@ static void arm_smmu_tlb_sync_context(void *cookie)
>   	unsigned long flags;
>   
>   	spin_lock_irqsave(&smmu_domain->cb_lock, flags);
> -	__arm_smmu_tlb_sync(smmu, smmu->numpage + smmu_domain->cfg.cbndx,
> +	__arm_smmu_tlb_sync(smmu, ARM_SMMU_CB(smmu, smmu_domain->cfg.cbndx),
>   			    ARM_SMMU_CB_TLBSYNC, ARM_SMMU_CB_TLBSTATUS);
>   	spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
>   }
> @@ -326,7 +326,7 @@ static void arm_smmu_tlb_inv_range_s1(unsigned long iova, size_t size,
>   	reg = leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;
>   
>   	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
> -		iova &= ~12UL;
> +		iova = (iova >> 12) << 12;
>   		iova |= cfg->asid;
>   		do {
>   			arm_smmu_cb_write(smmu, idx, reg, iova);
> @@ -1197,7 +1197,7 @@ static phys_addr_t arm_smmu_iova_to_phys_hard(struct iommu_domain *domain,
>   	else
>   		arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_ATS1PR, va);
>   
> -	reg = arm_smmu_page(smmu, smmu->numpage + idx) + ARM_SMMU_CB_ATSR;
> +	reg = arm_smmu_page(smmu, ARM_SMMU_CB(smmu, idx)) + ARM_SMMU_CB_ATSR;
>   	if (readl_poll_timeout_atomic(reg, tmp, !(tmp & ATSR_ACTIVE), 5, 50)) {
>   		spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
>   		dev_err(dev,
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index cf367c3b1bee..611ed742e56f 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -366,20 +366,28 @@ static inline void arm_smmu_writeq(struct arm_smmu_device *smmu, int page,
>   		writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
>   }
>   
> -#define arm_smmu_gr0_read(s, r)		arm_smmu_readl((s), 0, (r))
> -#define arm_smmu_gr0_write(s, r, v)	arm_smmu_writel((s), 0, (r), (v))
> +#define ARM_SMMU_GR0		0
> +#define ARM_SMMU_GR1		1
> +#define ARM_SMMU_CB(s, n)	((s)->numpage + (n))
>   
> -#define arm_smmu_gr1_read(s, r)		arm_smmu_readl((s), 1, (r))
> -#define arm_smmu_gr1_write(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
> +#define arm_smmu_gr0_read(s, o)		\
> +	arm_smmu_readl((s), ARM_SMMU_GR0, (o))
> +#define arm_smmu_gr0_write(s, o, v)	\
> +	arm_smmu_writel((s), ARM_SMMU_GR0, (o), (v))
>   
> -#define arm_smmu_cb_read(s, n, r)				\
> -	arm_smmu_readl((s), (s)->numpage + (n), (r))
> -#define arm_smmu_cb_write(s, n, r, v)				\
> -	arm_smmu_writel((s), (s)->numpage + (n), (r), (v))
> -#define arm_smmu_cb_readq(s, n, r)				\
> -	arm_smmu_readq((s), (s)->numpage + (n), (r))
> -#define arm_smmu_cb_writeq(s, n, r, v)				\
> -	arm_smmu_writeq((s), (s)->numpage + (n), (r), (v))
> +#define arm_smmu_gr1_read(s, o)		\
> +	arm_smmu_readl((s), ARM_SMMU_GR1, (o))
> +#define arm_smmu_gr1_write(s, o, v)	\
> +	arm_smmu_writel((s), ARM_SMMU_GR1, (o), (v))
> +
> +#define arm_smmu_cb_read(s, n, o)	\
> +	arm_smmu_readl((s), ARM_SMMU_CB((s), (n)), (o))
> +#define arm_smmu_cb_write(s, n, o, v)	\
> +	arm_smmu_writel((s), ARM_SMMU_CB((s), (n)), (o), (v))
> +#define arm_smmu_cb_readq(s, n, o)	\
> +	arm_smmu_readq((s), ARM_SMMU_CB((s), (n)), (o))
> +#define arm_smmu_cb_writeq(s, n, o, v)	\
> +	arm_smmu_writeq((s), ARM_SMMU_CB((s), (n)), (o), (v))
>   
>   struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
>   
> diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
> index dadc707573a2..a2062d13584f 100644
> --- a/drivers/iommu/qcom_iommu.c
> +++ b/drivers/iommu/qcom_iommu.c
> @@ -156,7 +156,7 @@ static void qcom_iommu_tlb_inv_range_nosync(unsigned long iova, size_t size,
>   		struct qcom_iommu_ctx *ctx = to_ctx(fwspec, fwspec->ids[i]);
>   		size_t s = size;
>   
> -		iova &= ~12UL;
> +		iova = (iova >> 12) << 12;
>   		iova |= ctx->asid;
>   		do {
>   			iommu_writel(ctx, reg, iova);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
