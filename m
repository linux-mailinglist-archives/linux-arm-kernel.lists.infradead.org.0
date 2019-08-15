Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91E88EB21
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 14:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TJYSoMmTCAXpLUr469FskfCjiwFLDTqotnxa4T6a6Vs=; b=NXI2uc6oCV1XaKBKIY3eFyQ2w
	1FVUbBwsgRFHnhlucyUgMOEK67nCawYpDQ+u3yf7FSFfbx9Q6r0YKClVxUw985stdUYla6CZYnE6J
	5lX9FJ/uRS7Ik8FpYxcV3CGWwY9kDpVIfmuoFBed5ynS5nfzkDkj9y0DwKkpZ/YU3/mMc/EhAclid
	66GScRisQ6zzUhv+VTR3V5lvL2ZuBjmKVtSVcMOW9cJpNa7Pfo5TBDirBlfSiKvIw3wy4sNITEdYr
	j0y0aFZhWZdPgdErqXLp73qccSFA2wnZisnVr2jj7vjmwEnWvB1QDgn3PP13upLvuCk9wdlsr+BK7
	XitYDSiJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEZI-0003Ww-Lj; Thu, 15 Aug 2019 12:09:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEZ5-0003Wb-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 12:09:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E31DF28;
 Thu, 15 Aug 2019 05:09:09 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 878C03F694;
 Thu, 15 Aug 2019 05:09:08 -0700 (PDT)
Subject: Re: [PATCH 15/15] iommu/arm-smmu: Add context init implementation hook
To: Will Deacon <will@kernel.org>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <6adbec8e4757f3b6c9f47135544a0302f8e7c55c.1565369764.git.robin.murphy@arm.com>
 <20190815105621.vt2gsuppjqgesrho@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <7acdf5fb-3516-efbb-7c8c-7f84c02faad7@arm.com>
Date: Thu, 15 Aug 2019 13:09:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190815105621.vt2gsuppjqgesrho@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_050913_184031_8AC5E5C1 
X-CRM114-Status: GOOD (  22.85  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, bjorn.andersson@linaro.org,
 iommu@lists.linux-foundation.org, vivek.gautam@codeaurora.org,
 gregory.clement@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/08/2019 11:56, Will Deacon wrote:
> On Fri, Aug 09, 2019 at 06:07:52PM +0100, Robin Murphy wrote:
>> Allocating and initialising a context for a domain is another point
>> where certain implementations are known to want special behaviour.
>> Currently the other half of the Cavium workaround comes into play here,
>> so let's finish the job to get the whole thing right out of the way.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu-impl.c | 39 +++++++++++++++++++++++++--
>>   drivers/iommu/arm-smmu.c      | 51 +++++++----------------------------
>>   drivers/iommu/arm-smmu.h      | 42 +++++++++++++++++++++++++++--
>>   3 files changed, 86 insertions(+), 46 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-impl.c b/drivers/iommu/arm-smmu-impl.c
>> index c8904da08354..7a657d47b6ec 100644
>> --- a/drivers/iommu/arm-smmu-impl.c
>> +++ b/drivers/iommu/arm-smmu-impl.c
>> @@ -48,6 +48,12 @@ const struct arm_smmu_impl calxeda_impl = {
>>   };
>>   
>>   
>> +struct cavium_smmu {
>> +	struct arm_smmu_device smmu;
>> +	u32 id_base;
>> +};
>> +#define to_csmmu(s)	container_of(s, struct cavium_smmu, smmu)
> 
> To be honest with you, I'd just use container_of directly for the two
> callsites that need it. "to_csmmu" isn't a great name when we're also got
> the calxeda thing in here.

Sure, by this point I was mostly just going for completeness in terms of 
sketching out an example for subclassing arm_smmu_device. The Tegra 
patches will now serve as a more complete example anyway, so indeed we 
can live without it here.

>>   static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>>   {
>>   	static atomic_t context_count = ATOMIC_INIT(0);
>> @@ -56,17 +62,46 @@ static int cavium_cfg_probe(struct arm_smmu_device *smmu)
>>   	 * Ensure ASID and VMID allocation is unique across all SMMUs in
>>   	 * the system.
>>   	 */
>> -	smmu->cavium_id_base = atomic_fetch_add(smmu->num_context_banks,
>> +	to_csmmu(smmu)->id_base = atomic_fetch_add(smmu->num_context_banks,
>>   						   &context_count);
>>   	dev_notice(smmu->dev, "\tenabling workaround for Cavium erratum 27704\n");
>>   
>>   	return 0;
>>   }
>>   
>> +int cavium_init_context(struct arm_smmu_domain *smmu_domain)
>> +{
>> +	u32 id_base = to_csmmu(smmu_domain->smmu)->id_base;
>> +
>> +	if (smmu_domain->stage == ARM_SMMU_DOMAIN_S2)
>> +		smmu_domain->cfg.vmid += id_base;
>> +	else
>> +		smmu_domain->cfg.asid += id_base;
>> +
>> +	return 0;
>> +}
>> +
>>   const struct arm_smmu_impl cavium_impl = {
>>   	.cfg_probe = cavium_cfg_probe,
>> +	.init_context = cavium_init_context,
>>   };
>>   
>> +struct arm_smmu_device *cavium_smmu_impl_init(struct arm_smmu_device *smmu)
>> +{
>> +	struct cavium_smmu *csmmu;
>> +
>> +	csmmu = devm_kzalloc(smmu->dev, sizeof(*csmmu), GFP_KERNEL);
>> +	if (!csmmu)
>> +		return ERR_PTR(-ENOMEM);
>> +
>> +	csmmu->smmu = *smmu;
>> +	csmmu->smmu.impl = &cavium_impl;
>> +
>> +	devm_kfree(smmu->dev, smmu);
>> +
>> +	return &csmmu->smmu;
>> +}
>> +
>>   
>>   #define ARM_MMU500_ACTLR_CPRE		(1 << 1)
>>   
>> @@ -121,7 +156,7 @@ struct arm_smmu_device *arm_smmu_impl_init(struct arm_smmu_device *smmu)
>>   		smmu->impl = &calxeda_impl;
>>   
>>   	if (smmu->model == CAVIUM_SMMUV2)
>> -		smmu->impl = &cavium_impl;
>> +		return cavium_smmu_impl_init(smmu);
>>   
>>   	if (smmu->model == ARM_MMU500)
>>   		smmu->impl = &arm_mmu500_impl;
> 
> Maybe rework this so we do the calxeda detection first (and return if we
> match), followed by a switch on smmu->model to make it crystal clear that
> we match only one?

As I see it, "match only one" is really only a short-term thing, though, 
so I didn't want to get *too* hung up on it. Ultimately we're going to 
have cases where we need to combine e.g. MMU-500 implementation quirks 
with platform integration quirks - I've been mostly planning on coming 
back to think about that (and potentially rework this whole logic) 
later, but I guess it wouldn't hurt to plan out a bit more structure 
from the start.

I'll have a hack on that (and all the other comments) today and 
hopefully have a v2 by tomorrow.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
