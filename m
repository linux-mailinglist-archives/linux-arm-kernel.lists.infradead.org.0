Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F6D1D127D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:17:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uJM8aFXItP0wTzmVkJx32eumOmL6fkWVLCD+j0fv38w=; b=qzumPauZRpuTDPyH+uFI76Uso
	iEDDTzj8JHHvC8PGqH0TbFt0QyE59IA0I+f6GCK+08gat1+ds8MBl8y2vFndBwkXWnqhaF///X9pS
	9OsDiqQWxiTCGicv+r8QMDom9POZskdeGJwSpsSBw1/A+3JYrcTFSOarXTND8JXAVYAiP8uDEhh6H
	O7eXAlPrBSS6RjGw6nU+2uIWN+irkqn3BeSvJrrk3WLfyb4kPyCW7kLSJovn2woQp9l48P3L3Anax
	wLA7TSL9+MtisJV1kLOF74QWnMvWiBgemFUup6PFhvEWhf570HptrUI4epSV7eEZDoEBIVc3qtJKg
	pFoum8qlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqK1-0000Ae-Ve; Wed, 13 May 2020 12:17:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqJt-0000A0-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:17:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0746D30E;
 Wed, 13 May 2020 05:17:05 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF3BF3F71E;
 Wed, 13 May 2020 05:17:03 -0700 (PDT)
Subject: Re: [PATCH v2] iommu/arm-smmu-v3: Don't reserve implementation
 defined register space
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
References: <20200513110255.597203-1-jean-philippe@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cb1d150c-c83a-39ed-29df-599cec7b9201@arm.com>
Date: Wed, 13 May 2020 13:17:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200513110255.597203-1-jean-philippe@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_051705_878841_B981AE85 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: joro@8bytes.org, lorenzo.pieralisi@arm.com, will@kernel.org,
 tuanphan@amperemail.onmicrosoft.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-13 12:02 pm, Jean-Philippe Brucker wrote:
> Some SMMUv3 implementation embed the Perf Monitor Group Registers (PMCG)
> inside the first 64kB region of the SMMU. Since PMCG are managed by a
> separate driver, this layout causes resource reservation conflicts
> during boot.
> 
> To avoid this conflict, don't reserve the MMIO regions that are
> implementation defined. Although devm_ioremap_resource() still works on
> full pages under the hood, this way we benefit from resource conflict
> checks.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

Although in case there's any other cause to resend, a couple of nits below.

> Fixes: 7d839b4b9e00 ("perf/smmuv3: Add arm64 smmuv3 pmu driver")
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> v1->v2: simplify following Robin's comments
> https://lore.kernel.org/linux-iommu/20200506174629.1504153-1-jean-philippe@linaro.org/
> ---
>   drivers/iommu/arm-smmu-v3.c | 35 +++++++++++++++++++++++++++++++----
>   1 file changed, 31 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 82508730feb7a1..af21d24a09e888 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -171,6 +171,8 @@
>   #define ARM_SMMU_PRIQ_IRQ_CFG1		0xd8
>   #define ARM_SMMU_PRIQ_IRQ_CFG2		0xdc
>   
> +#define ARM_SMMU_REG_SZ			0xe00

Since it's not necessarily self-explanatory at a glance, might this 
deserve a comment to clarify that it's the start of the first IMP-DEF 
region in the register map, and all the architectural registers that we 
care about lie below it?

> +
>   /* Common MSI config fields */
>   #define MSI_CFG0_ADDR_MASK		GENMASK_ULL(51, 2)
>   #define MSI_CFG2_SH			GENMASK(5, 4)
> @@ -628,6 +630,7 @@ struct arm_smmu_strtab_cfg {
>   struct arm_smmu_device {
>   	struct device			*dev;
>   	void __iomem			*base;
> +	void __iomem			*page1;
>   
>   #define ARM_SMMU_FEAT_2_LVL_STRTAB	(1 << 0)
>   #define ARM_SMMU_FEAT_2_LVL_CDTAB	(1 << 1)
> @@ -733,9 +736,8 @@ static struct arm_smmu_option_prop arm_smmu_options[] = {
>   static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
>   						 struct arm_smmu_device *smmu)
>   {
> -	if ((offset > SZ_64K) &&
> -	    (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY))
> -		offset -= SZ_64K;
> +	if (offset > SZ_64K)
> +		return smmu->page1 + offset - SZ_64K;
>   
>   	return smmu->base + offset;
>   }
> @@ -4021,6 +4023,18 @@ err_reset_pci_ops: __maybe_unused;
>   	return err;
>   }
>   
> +static void __iomem *arm_smmu_ioremap(struct device *dev, resource_size_t start,
> +				      resource_size_t size)
> +{
> +	struct resource res = {
> +		.flags = IORESOURCE_MEM,
> +		.start = start,
> +		.end = start + size - 1,

There doesn't seem to be much point in pretending size is a variable 
argument; I'd have just encoded ARM_SMMU_REG_SZ directly here.

Thanks,
Robin.

> +	};
> +
> +	return devm_ioremap_resource(dev, &res);
> +}
> +
>   static int arm_smmu_device_probe(struct platform_device *pdev)
>   {
>   	int irq, ret;
> @@ -4056,10 +4070,23 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   	}
>   	ioaddr = res->start;
>   
> -	smmu->base = devm_ioremap_resource(dev, res);
> +	/*
> +	 * Don't map the IMPLEMENTATION DEFINED regions, since they may contain
> +	 * the PMCG registers which are reserved by the PMU driver.
> +	 */
> +	smmu->base = arm_smmu_ioremap(dev, ioaddr, ARM_SMMU_REG_SZ);
>   	if (IS_ERR(smmu->base))
>   		return PTR_ERR(smmu->base);
>   
> +	if (arm_smmu_resource_size(smmu) > SZ_64K) {
> +		smmu->page1 = arm_smmu_ioremap(dev, ioaddr + SZ_64K,
> +					       ARM_SMMU_REG_SZ);
> +		if (IS_ERR(smmu->page1))
> +			return PTR_ERR(smmu->page1);
> +	} else {
> +		smmu->page1 = smmu->base;
> +	}
> +
>   	/* Interrupt lines */
>   
>   	irq = platform_get_irq_byname_optional(pdev, "combined");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
