Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646308E964
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 12:57:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMpAw1XEFBREXY30R2zKe+cQ3qYB/O3o4Rs53V/ogY8=; b=QjveYVLPoNrevv
	ZJLxwpP3LJn1dcwb0CV+QFZzca4Fd5BJFem73VDDu8q+bVEXkOP02Zsp6Qym4QPdl6n3s4sk0WBXG
	tni8p4bJv6i0+lyrJrBxkro9nppsikTO/hsxJdpbMl2sUM/uN1q/fyOik2QaJycqaninSpM0xbhGY
	aAz44d83lLL4nqoBVY0klH7myao1Y9Vw6jm8JICRFptm8fOTh/aQ7aLz5Y1KNKiakO2aQcW/J0t7s
	PkeNWA0zt4ds7ZiuuhGn++mVJSiTla++UB3ehOC0Oul6H09sMKOwrQ/XTWy4sDmkZjAo23sSf3C0w
	v2S953J7CE8v+7GSO2zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDRb-00077n-54; Thu, 15 Aug 2019 10:57:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDQg-0006ZT-7F
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 10:56:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B96F21744;
 Thu, 15 Aug 2019 10:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565866585;
 bh=8D6OrleAFj04JQA9ZH9MMZ7u4sfwPhB2JbKNxPQaMkk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HncehK0VFOGw8d9ng8b57iR+mqmK/droVfq+Lcy/EJBNIWS8/XDpjPfrb6wX4ceRZ
 nuRKC7mNTfc/2JKnWTeaFychC81E8jozEyGvpyBLC0OoujIsVXV6caBN/9JJdafENd
 98tosuR75Agsla3Ms5ATjaIhl142Mxw3cXyfcrd4=
Date: Thu, 15 Aug 2019 11:56:21 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 15/15] iommu/arm-smmu: Add context init implementation hook
Message-ID: <20190815105621.vt2gsuppjqgesrho@willie-the-truck>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_035626_343598_76E88003 
X-CRM114-Status: GOOD (  18.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 06:07:52PM +0100, Robin Murphy wrote:
> Allocating and initialising a context for a domain is another point
> where certain implementations are known to want special behaviour.
> Currently the other half of the Cavium workaround comes into play here,
> so let's finish the job to get the whole thing right out of the way.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/iommu/arm-smmu-impl.c | 39 +++++++++++++++++++++++++--
>  drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
>  drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
>  3 files changed, 86 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
> index c8904da08354..7a657d47b6ec 100644
> --- a/drivers/iommu/arm-smmu-impl.c
> +++ b/drivers/iommu/arm-smmu-impl.c
> @@ -48,6 +48,12 @@ const struct arm_smmu_impl calxeda_impl = {
>  };
>  
>  
> +struct cavium_smmu {
> +	struct arm_smmu_device smmu;
> +	u32 id_base;
> +};
> +#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)

To be honest with you, I'd just use container_of directly for the two
callsites that need it. "to_csmmu" isn't a great name when we're also got
the calxeda thing in here.

>  static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>  {
>  	static atomic_t context_count = ATOMIC_INIT(0);
> @@ -56,17 +62,46 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>  	 * Ensure ASID and VMID allocation is unique across all SMMUs in
>  	 * the system.
>  	 */
> -	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
> +	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
>  						   &context_count);
>  	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
>  
>  	return 0;
>  }
>  
> +int cavium_init_context(struct arm_smmu_domain *smmu_domain)
> +{
> +	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
> +
> +	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
> +		smmu_domain->cfg.vmid += id_base;
> +	else
> +		smmu_domain->cfg.asid += id_base;
> +
> +	return 0;
> +}
> +
>  const struct arm_smmu_impl cavium_impl = {
>  	.cfg_probe = cavium_cfg_probe,
> +	.init_context = cavium_init_context,
>  };
>  
> +struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
> +{
> +	struct cavium_smmu *csmmu;
> +
> +	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
> +	if (!csmmu)
> +		return ERR_PTR(-ENOMEM);
> +
> +	csmmu->smmu = *smmu;
> +	csmmu->smmu.impl = &cavium_impl;
> +
> +	devm_kfree(smmu->dev, smmu);
> +
> +	return &csmmu->smmu;
> +}
> +
>  
>  #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
>  
> @@ -121,7 +156,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>  		smmu->impl = &calxeda_impl;
>  
>  	if (smmu->model == CAVIUM_SMMUV2)
> -		smmu->impl = &cavium_impl;
> +		return cavium_smmu_impl_init(smmu);
>  
>  	if (smmu->model == ARM_MMU500)
>  		smmu->impl = &arm_mmu500_impl;

Maybe rework this so we do the calxeda detection first (and return if we
match), followed by a switch on smmu->model to make it crystal clear that
we match only one?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
