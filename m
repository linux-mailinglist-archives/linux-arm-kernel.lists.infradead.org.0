Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBA996238
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PevMUGVFKwKwNYHevHG53vM1jMLJGPa8/XEHncrwxq4=; b=Q5VjO5m5bFJsRI3VkVro7FWbe
	CP/Gv0ljH4xCAVXbvMc3WlZkVpEAhkncfh3vR0rcUfYhTqCCkcB3yVX6HsYKPOU06wNgZzAQWhfBX
	KNeonW8/pFW6Df/gN1Rod3jy2UN8PXTp4+INH9Ry8RClw4ALWPm+qTH3+Ya78/C675Mjw48vBMHbZ
	dRmKmtDyJ0nKSAILH8JilAYx5d2WPfYbXnhBj0FjK6rP/QDmY3J6lntu0YkKC9pvnKnghP9OyCs0G
	8UEXyh5gfnA/bdU+8JT82BzNl4FTdaCvgpbplEjxhUbZPJ6ZDHKRGf9OIcwStZ4FvUnBDvBPYgpkB
	9P3oTELlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04x4-0003y2-Bp; Tue, 20 Aug 2019 14:17:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i04wt-0003x3-0I
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:17:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5ABFA28;
 Tue, 20 Aug 2019 07:17:22 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74B943F246;
 Tue, 20 Aug 2019 07:17:21 -0700 (PDT)
Subject: Re: [PATCH 2/4] iommu/io-pgtable-arm: Rationalise TTBRn handling
To: Will Deacon <will@kernel.org>
References: <cover.1566238530.git.robin.murphy@arm.com>
 <dbb942070c2ef812e379414c236734931613d860.1566238530.git.robin.murphy@arm.com>
 <20190820101911.ndwtaf76kn3zplk2@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e644e0f6-4588-56eb-a6e9-7b482e3d228d@arm.com>
Date: Tue, 20 Aug 2019 15:17:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190820101911.ndwtaf76kn3zplk2@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_071723_131963_5A9DB8F9 
X-CRM114-Status: GOOD (  23.85  )
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
Cc: robdclark@gmail.com, joro@8bytes.org, jcrouse@codeaurora.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 11:19, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 07:19:29PM +0100, Robin Murphy wrote:
>> TTBR1 values have so far been redundant since no users implement any
>> support for split address spaces. Crucially, though, one of the main
>> reasons for wanting to do so is to be able to manage each half entirely
>> independently, e.g. context-switching one set of mappings without
>> disturbing the other. Thus it seems unlikely that tying two tables
>> together in a single io_pgtable_cfg would ever be particularly desirable
>> or useful.
>>
>> Streamline the configs to just a single conceptual TTBR value
>> representing the allocated table. This paves the way for future users to
>> support split address spaces by simply allocating a table and dealing
>> with the detailed TTBRn logistics themselves.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu-v3.c        |  2 +-
>>   drivers/iommu/arm-smmu.c           |  9 ++++-----
>>   drivers/iommu/io-pgtable-arm-v7s.c | 16 +++++++---------
>>   drivers/iommu/io-pgtable-arm.c     |  7 +++----
>>   drivers/iommu/ipmmu-vmsa.c         |  2 +-
>>   drivers/iommu/msm_iommu.c          |  4 ++--
>>   drivers/iommu/mtk_iommu.c          |  4 ++--
>>   drivers/iommu/qcom_iommu.c         |  3 +--
>>   include/linux/io-pgtable.h         |  4 ++--
>>   9 files changed, 23 insertions(+), 28 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
>> index 2a8db896d698..2e50cf49c3c4 100644
>> --- a/drivers/iommu/arm-smmu-v3.c
>> +++ b/drivers/iommu/arm-smmu-v3.c
>> @@ -1722,7 +1722,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>>   	}
>>   
>>   	cfg->cd.asid	= (u16)asid;
>> -	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>> +	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
>>   	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
>>   	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
>>   	return 0;
>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index 184ca41e9de7..19030c4b5904 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -473,13 +473,12 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>>   	/* TTBRs */
>>   	if (stage1) {
>>   		if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
>> -			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr[0];
>> -			cb->ttbr[1] = pgtbl_cfg->arm_v7s_cfg.ttbr[1];
>> +			cb->ttbr[0] = pgtbl_cfg->arm_v7s_cfg.ttbr;
>> +			cb->ttbr[1] = 0;
>>   		} else {
>> -			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>> +			cb->ttbr[0] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr;
>>   			cb->ttbr[0] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
>> -			cb->ttbr[1] = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[1];
>> -			cb->ttbr[1] |= FIELD_PREP(TTBRn_ASID, cfg->asid);
>> +			cb->ttbr[1] = FIELD_PREP(TTBRn_ASID, cfg->asid);
> 
> Why do you continue to put the ASID in here?

For the same reason we put it there before ;)

Although I guess if TCR.A1 were ever to get flipped accidentally then 
we're still cool.

>> diff --git a/drivers/iommu/qcom_iommu.c b/drivers/iommu/qcom_iommu.c
>> index 34bb357b3cfa..de55b6d82ef1 100644
>> --- a/drivers/iommu/qcom_iommu.c
>> +++ b/drivers/iommu/qcom_iommu.c
>> @@ -247,10 +247,9 @@ static int qcom_iommu_init_domain(struct iommu_domain *domain,
>>   
>>   		/* TTBRs */
>>   		iommu_writeq(ctx, ARM_SMMU_CB_TTBR0,
>> -				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[0] |
>> +				pgtbl_cfg.arm_lpae_s1_cfg.ttbr |
>>   				FIELD_PREP(TTBRn_ASID, ctx->asid));
>>   		iommu_writeq(ctx, ARM_SMMU_CB_TTBR1,
>> -				pgtbl_cfg.arm_lpae_s1_cfg.ttbr[1] |
>>   				FIELD_PREP(TTBRn_ASID, ctx->asid));
> 
> Same here.
> 
>> diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
>> index a6c8aa204733..7a0905d7a006 100644
>> --- a/include/linux/io-pgtable.h
>> +++ b/include/linux/io-pgtable.h
>> @@ -90,7 +90,7 @@ struct io_pgtable_cfg {
>>   	/* Low-level data specific to the table format */
>>   	union {
>>   		struct {
>> -			u64	ttbr[2];
>> +			u64	ttbr;
>>   			u64	tcr;
>>   			u64	mair;
>>   		} arm_lpae_s1_cfg;
>> @@ -101,7 +101,7 @@ struct io_pgtable_cfg {
>>   		} arm_lpae_s2_cfg;
>>   
>>   		struct {
>> -			u32	ttbr[2];
>> +			u32	ttbr;
> 
> We could probably do with a comment for these 'ttbr' field now saying that
> they refer to ttbr0 (since the tcr will have EPD1 set).

Yeah, I did wonder whether this might want elaboration, or whether the 
commit messages plus the code consuming it made the idea sufficiently 
clear - I guess that's my answer...

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
