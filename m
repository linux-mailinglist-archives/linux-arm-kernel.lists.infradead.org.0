Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAD4EE78E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 19:43:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=66ZbMdDUZoEbdWssVPlffqTmlyvJf+F3xiyrkonmiQA=; b=p8RziBr2EaJGEscTjOOeGbSsl
	o4u3HFw4ixNsRZcFRagSHVo1ds7ZA7FLHY2WWS5Rgtf0JZmYGJEiXijvPDi4QqwPM0oixyfq5IpeU
	pOB/LUaZhtgrbSQ1Iluv/Su79S5GB3cRidMpVm8hqTX9YjTH3LGef1/KUmFMXcANm44HjzGV5UPDp
	nyWFQhUY+3yQH1Yh9fejh93ZNun4dk09NhLgyLzVqzkuAz6vA9XvnPh8csju/jyRnd4+/kTdGUSbP
	NzYSkiiGGSxsQyFxkKzquEkxUHgFJYYwCzL2oE4H8c+vmcN5VAxmG2XYdgc2JaR8yZPBvF9QkqGrs
	y6Y65HnZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRhJr-0006IO-PC; Mon, 04 Nov 2019 18:43:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRhJl-0006Hz-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 18:43:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9BB4C1F1;
 Mon,  4 Nov 2019 10:43:08 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03F983F71A;
 Mon,  4 Nov 2019 10:43:07 -0800 (PST)
Subject: Re: [PATCH v2 07/10] iommu/io-pgtable-arm: Rationalise MAIR handling
To: Will Deacon <will@kernel.org>
References: <cover.1572024119.git.robin.murphy@arm.com>
 <c6bee9e6de5e7f4aa2293ee5385ffa2dd95600d3.1572024120.git.robin.murphy@arm.com>
 <20191104182029.GG24909@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <d7d7513d-9e54-6ae8-168a-2460a306a027@arm.com>
Date: Mon, 4 Nov 2019 18:43:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191104182029.GG24909@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_104310_032862_CA0FAA30 
X-CRM114-Status: GOOD (  19.02  )
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
Cc: iommu@lists.linux-foundation.org, jcrouse@codeaurora.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/11/2019 18:20, Will Deacon wrote:
> On Fri, Oct 25, 2019 at 07:08:36PM +0100, Robin Murphy wrote:
>> Between VMSAv8-64 and the various 32-bit formats, there is either one
>> 64-bit MAIR or a pair of 32-bit MAIR0/MAIR1 or NMRR/PMRR registers.
>> As such, keeping two 64-bit values in io_pgtable_cfg has always been
>> overkill.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu-v3.c    | 2 +-
>>   drivers/iommu/arm-smmu.c       | 4 ++--
>>   drivers/iommu/io-pgtable-arm.c | 3 +--
>>   drivers/iommu/ipmmu-vmsa.c     | 2 +-
>>   drivers/iommu/qcom_iommu.c     | 4 ++--
>>   include/linux/io-pgtable.h     | 2 +-
>>   6 files changed, 8 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
>> index 8da93e730d6f..3f20e548f1ec 100644
>> --- a/drivers/iommu/arm-smmu-v3.c
>> +++ b/drivers/iommu/arm-smmu-v3.c
>> @@ -2172,7 +2172,7 @@ static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
>>   	cfg->cd.asid	= (u16)asid;
>>   	cfg->cd.ttbr	= pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
>>   	cfg->cd.tcr	= pgtbl_cfg->arm_lpae_s1_cfg.tcr;
>> -	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
>> +	cfg->cd.mair	= pgtbl_cfg->arm_lpae_s1_cfg.mair;
>>   	return 0;
>>   
>>   out_free_asid:
>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index 080af0326816..2bc3e93b11e6 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -552,8 +552,8 @@ static void arm_smmu_init_context_bank(struct arm_smmu_domain *smmu_domain,
>>   			cb->mair[0] = pgtbl_cfg->arm_v7s_cfg.prrr;
>>   			cb->mair[1] = pgtbl_cfg->arm_v7s_cfg.nmrr;
>>   		} else {
>> -			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
>> -			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair[1];
>> +			cb->mair[0] = pgtbl_cfg->arm_lpae_s1_cfg.mair;
>> +			cb->mair[1] = pgtbl_cfg->arm_lpae_s1_cfg.mair >> 32;
> 
> Does this work correctly for big-endian?

I don't see why it wouldn't - cfg.mair is read and written as a u64, so 
this should always return its most significant word regardless of the 
storage format. We're not doing anything dodgy like trying to type-pun 
the u64 directly into the u32[2].

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
