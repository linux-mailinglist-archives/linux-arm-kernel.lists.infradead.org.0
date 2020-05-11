Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67F21CE385
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 21:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/fKHcgiMj1KkUOEuH6F8xprCjZD76FROws3+7YMM6dE=; b=dEK5v1WpNf2Pne2Yu7v5MInap
	vF8ATIRW6rQjKBSc2kGWSCvfwpFTfFs/EgQE56MoE4T1ACMxM48g1y3U6SMevuzL8yNNF2pXCDAWU
	hzEjlaKW59YuOsLs+an4wm8N2qvFAD5Kgnx3qTMC6Pag4WuaWZT7Jo5vvJoaLtLXM8lN0AX5FVBAS
	bn41R8C1JVSNvPfF4i2ifEauw02Uc8tXtYVK1Uf1niv5A1yjujQ+3BLSDBk8PxzsNWXMowqNdaC3B
	VLjQupyFRJDy/9raqHJ/aAgz4usKZ5UGQpvdq9jfEJD7sifkOUCfUHr6CFGdLbVcocb4pj96WMmZm
	hd/5JPmVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDhv-0006Lw-3x; Mon, 11 May 2020 19:03:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDhk-0006LI-HC
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 19:03:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 611D81FB;
 Mon, 11 May 2020 12:03:07 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F6683F71E;
 Mon, 11 May 2020 12:03:06 -0700 (PDT)
Subject: Re: [PATCH] iommu/arm-smmu-v3: Don't reserve implementation defined
 register space
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
References: <20200506174629.1504153-1-jean-philippe@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2c5b52c0-8be0-9c22-ed27-3a2acd2b570c@arm.com>
Date: Mon, 11 May 2020 20:03:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200506174629.1504153-1-jean-philippe@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_120308_662810_6FB32E8E 
X-CRM114-Status: GOOD (  25.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: will@kernel.org, tuanphan@amperemail.onmicrosoft.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-06 6:46 pm, Jean-Philippe Brucker wrote:
> Some SMMUv3 implementation embed the Perf Monitor Group Registers (PMCG)
> inside the first 64kB region of the SMMU. Since PMCG are managed by a
> separate driver, this layout causes resource reservation conflicts
> during boot.
> 
> To avoid this conflict, only reserve the MMIO region we actually use:
> the first 0xe0 bytes of page 0 and the first 0xd0 bytes of page 1.
> Although devm_ioremap() still works on full pages under the hood, this
> way we benefit from resource conflict checks.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> A nicer (and hopefully working) solution to the problem dicussed here:
> https://lore.kernel.org/linux-iommu/20200421155745.19815-1-jean-philippe@linaro.org/
> ---
>   drivers/iommu/arm-smmu-v3.c | 50 +++++++++++++++++++++++++++++++++----
>   1 file changed, 45 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 82508730feb7a1..fc85cdd5b62cca 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -171,6 +171,9 @@
>   #define ARM_SMMU_PRIQ_IRQ_CFG1		0xd8
>   #define ARM_SMMU_PRIQ_IRQ_CFG2		0xdc
>   
> +#define ARM_SMMU_PAGE0_REG_SZ		0xe0
> +#define ARM_SMMU_PAGE1_REG_SZ		0xd0

I wonder if we shouldn't still claim all the way up to 0xdff for good 
measure, since the IMP-DEF areas only start appearing beyond that.

> +
>   /* Common MSI config fields */
>   #define MSI_CFG0_ADDR_MASK		GENMASK_ULL(51, 2)
>   #define MSI_CFG2_SH			GENMASK(5, 4)
> @@ -628,6 +631,7 @@ struct arm_smmu_strtab_cfg {
>   struct arm_smmu_device {
>   	struct device			*dev;
>   	void __iomem			*base;
> +	void __iomem			*page1;
>   
>   #define ARM_SMMU_FEAT_2_LVL_STRTAB	(1 << 0)
>   #define ARM_SMMU_FEAT_2_LVL_CDTAB	(1 << 1)
> @@ -733,11 +737,14 @@ static struct arm_smmu_option_prop arm_smmu_options[] = {
>   static inline void __iomem *arm_smmu_page1_fixup(unsigned long offset,
>   						 struct arm_smmu_device *smmu)
>   {
> -	if ((offset > SZ_64K) &&
> -	    (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY))
> -		offset -= SZ_64K;
> +	void __iomem *base = smmu->base;
>   
> -	return smmu->base + offset;
> +	if (offset > SZ_64K) {
> +		offset -= SZ_64K;
> +		if (smmu->page1)
> +			base = smmu->page1;
> +	}
> +	return base + offset;
>   }

Why not just assign page1 = base in the Cavium case and let this simply be:

	if (offset > SZ_64K)
		return smmu->page1 + offset - SZ_64K;
	return smmu->base + offset;

Then it's only one step further to get rid of the fixup and use page1 
directly where relevant, but that could be a cleanup on top, since we 
probably want a minimal change here for the sake of backporting (I 
believe this deserves to go to stable, now that MMU-600 hardware is 
reaching the field and will go wonky otherwise).

>   
>   static struct arm_smmu_domain *to_smmu_domain(struct iommu_domain *dom)
> @@ -4021,6 +4028,28 @@ err_reset_pci_ops: __maybe_unused;
>   	return err;
>   }
>   
> +static void __iomem *arm_smmu_ioremap(struct device *dev,
> +				      resource_size_t start,
> +				      resource_size_t size)
> +{
> +	void __iomem *dest_ptr;
> +	struct resource *res;
> +
> +	res = devm_request_mem_region(dev, start, size, dev_name(dev));
> +	if (!res) {
> +		dev_err(dev, "can't request SMMU region %pa\n", &start);
> +		return IOMEM_ERR_PTR(-EINVAL);
> +	}
> +
> +	dest_ptr = devm_ioremap(dev, start, size);
> +	if (!dest_ptr) {
> +		dev_err(dev, "ioremap failed for SMMU region %pR\n", res);
> +		devm_release_mem_region(dev, start, size);
> +		dest_ptr = IOMEM_ERR_PTR(-ENOMEM);
> +	}
> +	return dest_ptr;
> +}

Would it be any less complicated to stick with devm_ioremap_resource() 
and fix up the resource itself for each call, rather than open-coding it?

> +
>   static int arm_smmu_device_probe(struct platform_device *pdev)
>   {
>   	int irq, ret;
> @@ -4056,10 +4085,21 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>   	}
>   	ioaddr = res->start;
>   
> -	smmu->base = devm_ioremap_resource(dev, res);
> +	/*
> +	 * Only map what we need, because the IMPLEMENTATION DEFINED registers
> +	 * may be used for the PMCGs, which are reserved by the PMU driver.
> +	 */
> +	smmu->base = arm_smmu_ioremap(dev, ioaddr, ARM_SMMU_PAGE0_REG_SZ);
>   	if (IS_ERR(smmu->base))
>   		return PTR_ERR(smmu->base);
>   
> +	if (arm_smmu_resource_size(smmu) > SZ_64K) {
> +		smmu->page1 = arm_smmu_ioremap(dev, ioaddr + SZ_64K,
> +					       ARM_SMMU_PAGE1_REG_SZ);
> +		if (IS_ERR(smmu->page1))
> +			return PTR_ERR(smmu->page1);
> +	}

As above,

	} else {
		smmu->page1 = smmu->base;
	}

Either way, those are just cleanliness nitpicks; I've no real objection 
to the patch in its current state. Getting MMU-600 systems un-broken at 
all is more important, there will always be time for cleanup :)

Robin.

> +
>   	/* Interrupt lines */
>   
>   	irq = platform_get_irq_byname_optional(pdev, "combined");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
