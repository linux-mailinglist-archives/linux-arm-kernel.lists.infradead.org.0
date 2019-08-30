Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE09A39C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6UK7GP+6nMwpOKzRY59aJ1qPVZNX63jbc7M4euhH4rA=; b=AknMo/DsGQNHWwk6YHl6YsADH
	z/xTIujI4DuQnPe/8fxhVqZh80SRB+bTCJhaOCeygyTe+u3SuDbbJpwhQZUZvMM96qJiL6MVDwZon
	cjw5i0P8yciXmNJ1IVesCk1UcM+bQPW1nMHNKZgMjgIWfKCHjNSr7CsjQ5KQG1q7zBUXp74fyS3ur
	yISvjTgS9nE+0lx4+3ZsE4+BAPBNUIvCdUyI7nhWNOcXAdkRaE/Xp6kOcNVPUxCV2KHj5dyfJWF+E
	Ktf/bMeuqiFnEqs85hZAJHBbFdlhj8n/HjrJdE4Cj/fcF84vZswKi96tKgE1EhEscOCDRB1tWDxYO
	gRy1HAZNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3iQV-0004Qb-9D; Fri, 30 Aug 2019 15:02:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3iQK-0004Pw-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:02:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C8E95344;
 Fri, 30 Aug 2019 08:02:45 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE87E3F703;
 Fri, 30 Aug 2019 08:02:42 -0700 (PDT)
Subject: Re: [PATCH 1/7] iommu/arm-smmu: add Nvidia SMMUv2 implementation
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-2-git-send-email-vdumpa@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2ae9e0c4-6916-b005-f4bd-29e06d2056c6@arm.com>
Date: Fri, 30 Aug 2019 16:02:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1567118827-26358-2-git-send-email-vdumpa@nvidia.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_080248_768226_4F8A2EC8 
X-CRM114-Status: GOOD (  22.51  )
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
> Add Nvidia SMMUv2 implementation and model info.
> 
> Signed-off-by: Krishna Reddy <vdumpa@nvidia.com>
> ---
>   MAINTAINERS                     |  2 +
>   drivers/iommu/Makefile          |  2 +-
>   drivers/iommu/arm-smmu-impl.c   |  2 +
>   drivers/iommu/arm-smmu-nvidia.c | 97 +++++++++++++++++++++++++++++++++++++++++
>   drivers/iommu/arm-smmu.c        |  2 +
>   drivers/iommu/arm-smmu.h        |  2 +
>   6 files changed, 106 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/iommu/arm-smmu-nvidia.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 289fb06..b9d59e51 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15785,9 +15785,11 @@ F:	drivers/i2c/busses/i2c-tegra.c
>   
>   TEGRA IOMMU DRIVERS
>   M:	Thierry Reding <thierry.reding@gmail.com>
> +R:	Krishna Reddy <vdumpa@nvidia.com>
>   L:	linux-tegra@vger.kernel.org
>   S:	Supported
>   F:	drivers/iommu/tegra*
> +F:	drivers/iommu/arm-smmu-nvidia.c
>   
>   TEGRA KBC DRIVER
>   M:	Laxman Dewangan <ldewangan@nvidia.com>
> diff --git a/drivers/iommu/Makefile b/drivers/iommu/Makefile
> index a2729aa..7f5489e 100644
> --- a/drivers/iommu/Makefile
> +++ b/drivers/iommu/Makefile
> @@ -13,7 +13,7 @@ obj-$(CONFIG_MSM_IOMMU) += msm_iommu.o
>   obj-$(CONFIG_AMD_IOMMU) += amd_iommu.o amd_iommu_init.o
>   obj-$(CONFIG_AMD_IOMMU_DEBUGFS) += amd_iommu_debugfs.o
>   obj-$(CONFIG_AMD_IOMMU_V2) += amd_iommu_v2.o
> -obj-$(CONFIG_ARM_SMMU) += arm-smmu.o arm-smmu-impl.o
> +obj-$(CONFIG_ARM_SMMU) += arm-smmu.o arm-smmu-impl.o arm-smmu-nvidia.o
>   obj-$(CONFIG_ARM_SMMU_V3) += arm-smmu-v3.o
>   obj-$(CONFIG_DMAR_TABLE) += dmar.o
>   obj-$(CONFIG_INTEL_IOMMU) += intel-iommu.o intel-pasid.o
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index 5c87a38..e5e595f 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -162,6 +162,8 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>   		break;
>   	case CAVIUM_SMMUV2:
>   		return cavium_smmu_impl_init(smmu);
> +	case NVIDIA_SMMUV2:
> +		return nvidia_smmu_impl_init(smmu);
>   	default:
>   		break;
>   	}
> diff --git a/drivers/iommu/arm-smmu-nvidia.c b/drivers/iommu/arm-smmu-nvidia.c
> new file mode 100644
> index 0000000..d93ceda
> --- /dev/null
> +++ b/drivers/iommu/arm-smmu-nvidia.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Nvidia ARM SMMU v2 implementation quirks
> +// Copyright (C) 2019 NVIDIA CORPORATION.  All rights reserved.
> +
> +#define pr_fmt(fmt) "nvidia-smmu: " fmt
> +
> +#include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +
> +#include "arm-smmu.h"
> +
> +#define NUM_SMMU_INSTANCES 3
> +
> +struct nvidia_smmu {
> +	struct arm_smmu_device	smmu;
> +	int			num_inst;
> +	void __iomem		*bases[NUM_SMMU_INSTANCES];
> +};
> +
> +#define to_nsmmu(s)	container_of(s, struct nvidia_smmu, smmu)
> +
> +#define nsmmu_page(smmu, inst, page) \
> +	(((inst) ? to_nsmmu(smmu)->bases[(inst)] : smmu->base) + \
> +	((page) << smmu->pgshift))
> +
> +static u32 nsmmu_read_reg(struct arm_smmu_device *smmu,
> +			      int page, int offset)
> +{
> +	return readl_relaxed(nsmmu_page(smmu, 0, page) + offset);
> +}
> +
> +static void nsmmu_write_reg(struct arm_smmu_device *smmu,
> +				int page, int offset, u32 val)
> +{
> +	int i;
> +
> +	for (i = 0; i < to_nsmmu(smmu)->num_inst; i++)
> +		writel_relaxed(val, nsmmu_page(smmu, i, page) + offset);
> +}
> +
> +static u64 nsmmu_read_reg64(struct arm_smmu_device *smmu,
> +				int page, int offset)
> +{
> +	return readq_relaxed(nsmmu_page(smmu, 0, page) + offset);
> +}
> +
> +static void nsmmu_write_reg64(struct arm_smmu_device *smmu,
> +				  int page, int offset, u64 val)
> +{
> +	int i;
> +
> +	for (i = 0; i < to_nsmmu(smmu)->num_inst; i++)
> +		writeq_relaxed(val, nsmmu_page(smmu, i, page) + offset);
> +}
> +
> +static const struct arm_smmu_impl nsmmu_impl = {
> +	.read_reg = nsmmu_read_reg,
> +	.write_reg = nsmmu_write_reg,
> +	.read_reg64 = nsmmu_read_reg64,
> +	.write_reg64 = nsmmu_write_reg64,
> +};
> +
> +struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *smmu)
> +{
> +	int i;
> +	struct nvidia_smmu *nsmmu;
> +	struct resource *res;
> +	struct device *dev = smmu->dev;
> +	struct platform_device *pdev = to_platform_device(smmu->dev);
> +
> +	nsmmu = devm_kzalloc(smmu->dev, sizeof(*nsmmu), GFP_KERNEL);
> +	if (!nsmmu)
> +		return ERR_PTR(-ENOMEM);
> +
> +	nsmmu->smmu = *smmu;
> +	/* Instance 0 is ioremapped by arm-smmu.c */
> +	nsmmu->num_inst = 1;
> +
> +	for (i = 1; i < NUM_SMMU_INSTANCES; i++) {
> +		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
> +		if (!res)
> +			break;
> +		nsmmu->bases[i] = devm_ioremap_resource(dev, res);
> +		if (IS_ERR(nsmmu->bases[i]))
> +			return (struct arm_smmu_device *)nsmmu->bases[i];
> +		nsmmu->num_inst++;
> +	}
> +
> +	nsmmu->smmu.impl = &nsmmu_impl;
> +	devm_kfree(smmu->dev, smmu);
> +	pr_info("Nvidia SMMUv2, Instances=%d\n", nsmmu->num_inst);
> +
> +	return &nsmmu->smmu;
> +}
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 5b93c79..46e1641 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -1871,6 +1871,7 @@ ARM_SMMU_MATCH_DATA(arm_mmu401, ARM_SMMU_V1_64K, GENERIC_SMMU);
>   ARM_SMMU_MATCH_DATA(arm_mmu500, ARM_SMMU_V2, ARM_MMU500);
>   ARM_SMMU_MATCH_DATA(cavium_smmuv2, ARM_SMMU_V2, CAVIUM_SMMUV2);
>   ARM_SMMU_MATCH_DATA(qcom_smmuv2, ARM_SMMU_V2, QCOM_SMMUV2);
> +ARM_SMMU_MATCH_DATA(nvidia_smmuv2, ARM_SMMU_V2, NVIDIA_SMMUV2);

 From the previous discussions, I got the impression that other than the 
'novel' way they're integrated, the actual SMMU implementations were 
unmodified Arm MMU-500s. Is that the case, or have I misread something?

Robin.

>   
>   static const struct of_device_id arm_smmu_of_match[] = {
>   	{ .compatible = "arm,smmu-v1", .data = &smmu_generic_v1 },
> @@ -1880,6 +1881,7 @@ static const struct of_device_id arm_smmu_of_match[] = {
>   	{ .compatible = "arm,mmu-500", .data = &arm_mmu500 },
>   	{ .compatible = "cavium,smmu-v2", .data = &cavium_smmuv2 },
>   	{ .compatible = "qcom,smmu-v2", .data = &qcom_smmuv2 },
> +	{ .compatible = "nvidia,smmu-v2", .data = &nvidia_smmuv2 },
>   	{ },
>   };
>   
> diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
> index b19b6ca..9645bf1 100644
> --- a/drivers/iommu/arm-smmu.h
> +++ b/drivers/iommu/arm-smmu.h
> @@ -220,6 +220,7 @@ enum arm_smmu_implementation {
>   	ARM_MMU500,
>   	CAVIUM_SMMUV2,
>   	QCOM_SMMUV2,
> +	NVIDIA_SMMUV2,
>   };
>   
>   struct arm_smmu_device {
> @@ -398,5 +399,6 @@ static inline void arm_smmu_writeq(struct arm_smmu_device *smmu, int page,
>   	arm_smmu_writeq((s), ARM_SMMU_CB((s), (n)), (o), (v))
>   
>   struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu);
> +struct arm_smmu_device *nvidia_smmu_impl_init(struct arm_smmu_device *smmu);
>   
>   #endif /* _ARM_SMMU_H */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
