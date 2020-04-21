Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C141B2E48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LRD4eseyQnBp7Cp85saYarPCNd8jh26hUBBR/CticAU=; b=jeswH0nIju89qjKwKiEnFhiv9
	PcXk0ejdWUDvoCxykJDEbPMKz2bvZKoyMIkljfiMWYurOpLeJIRc/aRFP0EUc6TTvpPIiHHvZK0N9
	li4d92GHMsBH34c1ClLhCcL59r9lbggRm7i/6ZSvha/ufGCl5YrpYtpml7nvACJ4N6iDV4pUVJwP1
	TasPOnFfh/nuD32KmzrwZ8YnM7hsTFJLn1ImMnFlCSPeOLUfsC9BBf65eIBbKv3lRB3XRJ7IuLbXg
	4F/AkcEv5We5O2nHZPmCoIc2YHBTaoq62pguErusgdySmiZnHBzkBZ3P94AhtfuzRMUX+SLPXMTq6
	pmHUOPbUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwev-0006IT-BL; Tue, 21 Apr 2020 17:26:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwen-0006Hb-Ii
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:26:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 910F21FB;
 Tue, 21 Apr 2020 10:25:58 -0700 (PDT)
Received: from [10.57.33.63] (unknown [10.57.33.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC6073F73D;
 Tue, 21 Apr 2020 10:25:56 -0700 (PDT)
Subject: Re: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU
 driver
To: Jean-Philippe Brucker <jean-philippe@linaro.org>, will@kernel.org,
 mark.rutland@arm.com
References: <20200421155745.19815-1-jean-philippe@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <beec9760-f6f4-90fb-74fc-3e074b553b59@arm.com>
Date: Tue, 21 Apr 2020 18:25:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421155745.19815-1-jean-philippe@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_102601_718056_EF346F9A 
X-CRM114-Status: GOOD (  26.12  )
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
Cc: iommu@lists.linux-foundation.org, lorenzo.pieralisi@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-21 4:57 pm, Jean-Philippe Brucker wrote:
> Some Arm SMMUv3 implementations, for example Arm CoreLink MMU-600, embed
> the PMCG registers into the SMMU MMIO regions. It currently causes probe
> failure because the PMU and SMMU drivers request overlapping resources.
> 
> Avoid the conflict by calling devm_ioremap() directly from the PMU
> driver. We loose some sanity-checking of the memory map provided by
> firmware, which doesn't seem catastrophic.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> 
> So this is the simplest solution, and I don't think we're missing much
> by skipping the resource reservation. I've also been exploring a more
> complex approach [1] which has the SMMU driver perform resource
> reservation on behalf of the PMU driver, but I'm not sure it's
> necessary.

Now try it for potential future PMCGs on DTI masters in any old device 
or root complex ;)

If we did want to go down the resource-claiming route, rather than new 
inter-driver APIs it would probably be more sensible to just resolve the 
associated device and rifle through its resource list directly within 
the PMCG driver. Of course that probably leads to a whole bunch of probe 
ordering and dependency issues, and if the end result is just to make 
/proc/iomem look slightly nicer then I'd agree it's not worth the bother.

> Please test, I've only tried the RevC FastModel using devicetree so far.

For ACPI there's the additional fun that all the resources may already 
have been claimed at least once more, by companion devices, but I guess 
SMMU and PMCG at least escape that by virtue of not being namespace objects.

Robin.

> [1] https://jpbrucker.net/git/linux/log/?h=smmu/pmu
> ---
>   drivers/perf/arm_smmuv3_pmu.c | 28 +++++++++++++++++++++-------
>   1 file changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> index ca183a53a7f10..ad63d1e73333f 100644
> --- a/drivers/perf/arm_smmuv3_pmu.c
> +++ b/drivers/perf/arm_smmuv3_pmu.c
> @@ -730,8 +730,8 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
>   
>   static int smmu_pmu_probe(struct platform_device *pdev)
>   {
> +	struct resource *res_0, *res_1;
>   	struct smmu_pmu *smmu_pmu;
> -	struct resource *res_0;
>   	u32 cfgr, reg_size;
>   	u64 ceid_64[2];
>   	int irq, err;
> @@ -759,18 +759,32 @@ static int smmu_pmu_probe(struct platform_device *pdev)
>   		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
>   	};
>   
> +	/*
> +	 * If the PMCG registers are embedded into the SMMU regions, the
> +	 * resources have to be shared with the SMMU driver. Use ioremap()
> +	 * rather than ioremap_resource() to avoid conflicts.
> +	 */
>   	res_0 = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	smmu_pmu->reg_base = devm_ioremap_resource(dev, res_0);
> -	if (IS_ERR(smmu_pmu->reg_base))
> -		return PTR_ERR(smmu_pmu->reg_base);
> +	if (!res_0)
> +		return -ENXIO;
> +
> +	smmu_pmu->reg_base = devm_ioremap(dev, res_0->start,
> +					  resource_size(res_0));
> +	if (!smmu_pmu->reg_base)
> +		return -ENOMEM;
>   
>   	cfgr = readl_relaxed(smmu_pmu->reg_base + SMMU_PMCG_CFGR);
>   
>   	/* Determine if page 1 is present */
>   	if (cfgr & SMMU_PMCG_CFGR_RELOC_CTRS) {
> -		smmu_pmu->reloc_base = devm_platform_ioremap_resource(pdev, 1);
> -		if (IS_ERR(smmu_pmu->reloc_base))
> -			return PTR_ERR(smmu_pmu->reloc_base);
> +		res_1 = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +		if (!res_1)
> +			return -ENXIO;
> +
> +		smmu_pmu->reloc_base = devm_ioremap(dev, res_1->start,
> +						    resource_size(res_1));
> +		if (!smmu_pmu->reloc_base)
> +			return -ENOMEM;
>   	} else {
>   		smmu_pmu->reloc_base = smmu_pmu->reg_base;
>   	}
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
