Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755B743579
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 13:23:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QJyavcjcCoqbz7DN96mDSF6zz7CcPm0369TSXXzfkPU=; b=Uvct01wSBqAevSNC/hocJ1tvw
	IV5BP1hUpC5YD7d8tt1UHWLW6+zHpQGD6URScs1dFFvDU+rQYpu0YIfISsP1wGYHTjR7OsRWDO87J
	8/VROgQZURnK/dmh8BzgZBfVPuP0IqDYpS0QT4+vZLC74dpnCzurPp7+IWueZ/rcvCOu+qntl5cIJ
	8tqvLpdl5RXz+ADwddRPNHZn9lYgG5oaakWyMMM3BBLeHklOCdo+L6fpUUT/PEh/G5zE5v16TxBrT
	R151DQRqFe4dh9lM4tPBH3GIwvwMZPH00D/R2krFwCMmBO80Q9VoqMfK7m4l0PGDf/xPRzXqacoa/
	OqksCPcaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNpP-0006sM-RK; Thu, 13 Jun 2019 11:23:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNoz-0006rB-4y
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 11:23:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D62A367;
 Thu, 13 Jun 2019 04:23:08 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 70BAD3F694;
 Thu, 13 Jun 2019 04:24:50 -0700 (PDT)
Subject: Re: [RFC 1/2] iommu: arm-smmu: Handoff SMR registers and context banks
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>
References: <20190605210856.20677-1-bjorn.andersson@linaro.org>
 <20190605210856.20677-2-bjorn.andersson@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <25f19f09-ab19-a7b3-c31a-f5f29b29fef8@arm.com>
Date: Thu, 13 Jun 2019 12:23:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190605210856.20677-2-bjorn.andersson@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042310_390641_44A12563 
X-CRM114-Status: GOOD (  32.51  )
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
Cc: Patrick Daly <pdaly@codeaurora.org>, Jeffrey Hugo <jhugo@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/06/2019 22:08, Bjorn Andersson wrote:
> Boot splash screen or EFI framebuffer requires the display hardware to
> operate while the Linux iommu driver probes. Therefore, we cannot simply
> wipe out the SMR register settings programmed by the bootloader.
> 
> Detect which SMR registers are in use during probe, and which context
> banks they are associated with. Reserve these context banks for the
> first Linux device whose stream-id matches the SMR register.
> 
> Any existing page-tables will be discarded.

That doesn't seem particularly useful :/

Either way, if firmware did set up a translation context, is there any 
guarantee that its pagetables haven't already been stomped on by Linux 
(e.g. via memtest)?

> Heavily based on downstream implementation by Patrick Daly
> <pdaly@codeaurora.org>.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
>   drivers/iommu/arm-smmu-regs.h |  2 +
>   drivers/iommu/arm-smmu.c      | 80 ++++++++++++++++++++++++++++++++---
>   2 files changed, 77 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-regs.h b/drivers/iommu/arm-smmu-regs.h
> index e9132a926761..8c1fd84032a2 100644
> --- a/drivers/iommu/arm-smmu-regs.h
> +++ b/drivers/iommu/arm-smmu-regs.h
> @@ -105,7 +105,9 @@
>   #define ARM_SMMU_GR0_SMR(n)		(0x800 + ((n) << 2))
>   #define SMR_VALID			(1 << 31)
>   #define SMR_MASK_SHIFT			16
> +#define SMR_MASK_MASK			0x7fff
>   #define SMR_ID_SHIFT			0
> +#define SMR_ID_MASK			0xffff

The SMR ID and MASK fields are either both 15 bits or both 16 bits, 
depending on EXIDS. This mix-and-match is plain wrong either way.

>   #define ARM_SMMU_GR0_S2CR(n)		(0xc00 + ((n) << 2))
>   #define S2CR_CBNDX_SHIFT		0
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 5e54cc0a28b3..c8629a656b42 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -135,6 +135,7 @@ struct arm_smmu_s2cr {
>   	enum arm_smmu_s2cr_type		type;
>   	enum arm_smmu_s2cr_privcfg	privcfg;
>   	u8				cbndx;
> +	bool				handoff;
>   };
>   
>   #define s2cr_init_val (struct arm_smmu_s2cr){				\
> @@ -399,9 +400,22 @@ static int arm_smmu_register_legacy_master(struct device *dev,
>   	return err;
>   }
>   
> -static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
> +static int __arm_smmu_alloc_cb(struct arm_smmu_device *smmu, int start,
> +			       struct device *dev)
>   {
> +	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
> +	unsigned long *map = smmu->context_map;
> +	int end = smmu->num_context_banks;
> +	int cbndx;
>   	int idx;
> +	int i;
> +
> +	for_each_cfg_sme(fwspec, i, idx) {
> +		if (smmu->s2crs[idx].handoff) {
> +			cbndx = smmu->s2crs[idx].cbndx;
> +			goto found_handoff;
> +		}
> +	}
>   
>   	do {
>   		idx = find_next_zero_bit(map, end, start);
> @@ -410,6 +424,17 @@ static int __arm_smmu_alloc_bitmap(unsigned long *map, int start, int end)
>   	} while (test_and_set_bit(idx, map));
>   
>   	return idx;
> +
> +found_handoff:
> +	for (i = 0; i < smmu->num_mapping_groups; i++) {
> +		if (smmu->s2crs[i].cbndx == cbndx) {
> +			smmu->s2crs[i].cbndx = 0;
> +			smmu->s2crs[i].handoff = false;
> +			smmu->s2crs[i].count--;
> +		}
> +	}
> +
> +	return cbndx;
>   }
>   
>   static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
> @@ -759,7 +784,8 @@ static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
>   }
>   
>   static int arm_smmu_init_domain_context(struct iommu_domain *domain,
> -					struct arm_smmu_device *smmu)
> +					struct arm_smmu_device *smmu,
> +					struct device *dev)
>   {
>   	int irq, start, ret = 0;
>   	unsigned long ias, oas;
> @@ -873,8 +899,7 @@ static int arm_smmu_init_domain_context(struct iommu_domain *domain,
>   		ret = -EINVAL;
>   		goto out_unlock;
>   	}
> -	ret = __arm_smmu_alloc_bitmap(smmu->context_map, start,
> -				      smmu->num_context_banks);
> +	ret = __arm_smmu_alloc_cb(smmu, start, dev);
>   	if (ret < 0)
>   		goto out_unlock;
>   
> @@ -1264,7 +1289,7 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>   		return ret;
>   
>   	/* Ensure that the domain is finalised */
> -	ret = arm_smmu_init_domain_context(domain, smmu);
> +	ret = arm_smmu_init_domain_context(domain, smmu, dev);
>   	if (ret < 0)
>   		goto rpm_put;
>   
> @@ -1798,6 +1823,49 @@ static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
>   	writel(reg, ARM_SMMU_GR0_NS(smmu) + ARM_SMMU_GR0_sCR0);
>   }
>   
> +static void arm_smmu_read_smr_state(struct arm_smmu_device *smmu)
> +{
> +	u32 privcfg;
> +	u32 cbndx;
> +	u32 mask;
> +	u32 type;
> +	u32 s2cr;
> +	u32 smr;
> +	u32 id;
> +	int i;
> +
> +	for (i = 0; i < smmu->num_mapping_groups; i++) {
> +		smr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_SMR(i));

What about stream indexing?

> +		mask = (smr >> SMR_MASK_SHIFT) & SMR_MASK_MASK;
> +		id = smr & SMR_ID_MASK;
> +		if (!(smr & SMR_VALID))

EXIDs again...

> +			continue;
> +
> +		s2cr = readl_relaxed(ARM_SMMU_GR0(smmu) + ARM_SMMU_GR0_S2CR(i));
> +		type = (s2cr >> S2CR_TYPE_SHIFT) & S2CR_TYPE_MASK;
> +		cbndx = (s2cr >> S2CR_CBNDX_SHIFT) & S2CR_CBNDX_MASK;
> +		privcfg = (s2cr >> S2CR_PRIVCFG_SHIFT) & S2CR_PRIVCFG_MASK;
> +		if (type != S2CR_TYPE_TRANS)
> +			continue;

How can you tell whether an SMR or S2CR has been programmed by the 
firmware, or that its UNKNOWN reset value is junk which just happens to 
look plausible?

> +
> +		/* Populate the SMR */
> +		smmu->smrs[i].mask = mask;
> +		smmu->smrs[i].id = id;
> +		smmu->smrs[i].valid = true;
> +
> +		/* Populate the S2CR */
> +		smmu->s2crs[i].group = NULL;
> +		smmu->s2crs[i].count = 1;
> +		smmu->s2crs[i].type = type;
> +		smmu->s2crs[i].privcfg = privcfg;
> +		smmu->s2crs[i].cbndx = cbndx;
> +		smmu->s2crs[i].handoff = true;
> +
> +		/* Mark the context bank as busy */
> +		bitmap_set(smmu->context_map, cbndx, 1);

Does anything prevent the SMMU being suspended between here and whenever 
the relevant drivers(s) show up to properly establish the device links?

> +	}
> +}
> +
>   static int arm_smmu_id_size_to_bits(int size)
>   {
>   	switch (size) {
> @@ -2023,6 +2091,8 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
>   		dev_notice(smmu->dev, "\tStage-2: %lu-bit IPA -> %lu-bit PA\n",
>   			   smmu->ipa_size, smmu->pa_size);
>   
> +	arm_smmu_read_smr_state(smmu);
> +
>   	return 0;
>   }

Stepping back from the implementation details, I also have concerns that 
this will interact badly with kexec/kdump, but mostly the fact that it's 
at best a partial workaround, rather than a real solution to the 
fundamental problem that initialising an IOMMU can break 
EFIFB/bootsplash/etc., *regardless* of whether the firmware is even 
aware of said IOMMU at all - I've already been living with this on my 
Juno board for months since EDK2 gained Arm HDLCD support. AFAICS this 
can only be solved by some sort of RMRR-like mechanism, i.e. firmware 
providing explicit information about what address ranges are currently 
in use by which devices. I've been pondering what a DT-based 
implementation might look like for a while now, and I guess it's 
probably time to raise it with the IORT spec owners as well.

That said, once we've perfected our WIP design for keeping invasive 
implementation details out of the way of each other and the core 
architectural driver flow, I wouldn't rule out the possibility of 
slotting something like this in as a qcom-specific feature if the "we 
can't change the firmware" argument is going to come up.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
