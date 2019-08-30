Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B83A3A3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=slVAbCQ4+etK8QRese09+htQ3asEQFiEIz2A+x3PJxo=; b=Sk4DWr6NCqnVpEP2cEP/5uF2x
	n+Jw2nwO98CJ/e60W4ySHSaVboQya4UOD2520Iv7rf0IEaQZfZUh9YrTMay+8nc99RJw8Sv1J8ab3
	QuaOEeyh1l/xyvj7uqgGFfC6tIdN/11HfG1A/LuuyOtEvnRfOahxTx330bYUYC5xNXUtoxKBTlbNN
	Ypr1+X9QU8cicxWWRA6y6xAwhyyXe6NYqBskwTXETYaAZOQA4ZtRhLha7xYVVkSmlJQsH+ctB9jjt
	LIL6SD0o++bupu5Rf2OYUy9TQuTkIPbZpxuveScMQT0gvg3Dk3UwcatEeVLXxp4RkkbYVSkMRAoOo
	iG13S295g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ikM-0003Nt-7m; Fri, 30 Aug 2019 15:23:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ik9-0003NO-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:23:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 53209344;
 Fri, 30 Aug 2019 08:23:16 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C7973F703;
 Fri, 30 Aug 2019 08:23:14 -0700 (PDT)
Subject: Re: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <554f8de1-1638-4eb9-59ae-8e1f0d786c44@arm.com>
Date: Fri, 30 Aug 2019 16:23:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_082317_613994_17EC1B2D 
X-CRM114-Status: GOOD (  21.38  )
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
Cc: talho@nvidia.com, treding@nvidia.com, mperttunen@nvidia.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 praithatha@nvidia.com, thomasz@nvidia.com, snikam@nvidia.com,
 linux-tegra@vger.kernel.org, yhsu@nvidia.com, jtukkinen@nvidia.com,
 avanbrunt@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 23:47, Krishna Reddy wrote:
> tlb_sync hook allows nvidia smmu handle tlb sync
> across multiple SMMUs as necessary.
> 
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>   drivers/iommu/arm-smmu-nvidia.c | 32 ++++++++++++++++++++++++++++++++
>   drivers/iommu/arm-smmu.c        |  8 +++++---
>   drivers/iommu/arm-smmu.h        |  4 ++++
>   3 files changed, 41 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-nvidia.c b/drivers/iommu/arm-smmu-nvidia.c
> index d93ceda..a429b2c 100644
> --- a/drivers/iommu/arm-smmu-nvidia.c
> +++ b/drivers/iommu/arm-smmu-nvidia.c
> @@ -56,11 +56,43 @@ static void nsmmu_write_reg64(struct arm_smmu_device *smmu,
>   		writeq_relaxed(val, nsmmu_page(smmu, i, page) + offset);
>   }
>   
> +static void nsmmu_tlb_sync_wait(struct arm_smmu_device *smmu, int page,
> +				int sync, int status, int inst)
> +{
> +	u32 reg;
> +	unsigned int spin_cnt, delay;
> +
> +	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
> +		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
> +			reg = readl_relaxed(
> +			      nsmmu_page(smmu, inst, page) + status);
> +			if (!(reg & sTLBGSTATUS_GSACTIVE))
> +				return;
> +			cpu_relax();
> +		}
> +		udelay(delay);
> +	}
> +	dev_err_ratelimited(smmu->dev,
> +			    "TLB sync timed out -- SMMU may be deadlocked\n");
> +}
> +
> +static void nsmmu_tlb_sync(struct arm_smmu_device *smmu, int page,
> +			   int sync, int status)
> +{
> +	int i;
> +
> +	arm_smmu_writel(smmu, page, sync, 0);
> +
> +	for (i = 0; i < to_nsmmu(smmu)->num_inst; i++)

It might make more sense to make this the innermost loop, i.e.:

	for (i = 0; i < nsmmu->num_inst; i++)
		reg &= readl_relaxed(nsmmu_page(smmu, i, page)...

since polling the instances in parallel rather than in series seems like 
it might be a bit more efficient.

> +		nsmmu_tlb_sync_wait(smmu, page, sync, status, i);
> +}
> +
>   static const struct arm_smmu_impl nsmmu_impl = {
>   	.read_reg = nsmmu_read_reg,
>   	.write_reg = nsmmu_write_reg,
>   	.read_reg64 = nsmmu_read_reg64,
>   	.write_reg64 = nsmmu_write_reg64,
> +	.tlb_sync = nsmmu_tlb_sync,
>   };
>   
>   struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *smmu)
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 46e1641..f5454e71 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -52,9 +52,6 @@
>    */
>   #define QCOM_DUMMY_VAL -1
>   
> -#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
> -#define TLB_SPIN_COUNT			10
> -
>   #define MSI_IOVA_BASE			0x8000000
>   #define MSI_IOVA_LENGTH			0x100000
>   
> @@ -244,6 +241,11 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu, int page,
>   	unsigned int spin_cnt, delay;
>   	u32 reg;
>   
> +	if (smmu->impl->tlb_sync) {
> +		smmu->impl->tlb_sync(smmu, page, sync, status);

What I'd hoped is that rather than needing a hook for this, you could 
just override smmu_domain->tlb_ops from .init_context to wire up the 
alternate .sync method directly. That would save this extra level of 
indirection.

Robin.

> +		return;
> +	}
> +
>   	arm_smmu_writel(smmu, page, sync, QCOM_DUMMY_VAL);
>   	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
>   		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index 9645bf1..d3217f1 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -207,6 +207,8 @@ enum arm_smmu_cbar_type {
>   /* Maximum number of context banks per SMMU */
>   #define ARM_SMMU_MAX_CBS		128
>   
> +#define TLB_LOOP_TIMEOUT		1000000	/* 1s! */
> +#define TLB_SPIN_COUNT			10
>   
>   /* Shared driver definitions */
>   enum arm_smmu_arch_version {
> @@ -336,6 +338,8 @@ struct arm_smmu_impl {
>   	int (*cfg_probe)(struct arm_smmu_device *smmu);
>   	int (*reset)(struct arm_smmu_device *smmu);
>   	int (*init_context)(struct arm_smmu_domain *smmu_domain);
> +	void (*tlb_sync)(struct arm_smmu_device *smmu, int page, int sync,
> +			 int status);
>   };
>   
>   static inline void __iomem *arm_smmu_page(struct arm_smmu_device *smmu, int n)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
