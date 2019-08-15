Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E625E8EA23
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:22:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7jl3oyRZm5sg586I61FoVsC6ZkEDu63sqIeg/VxL8T0=; b=nWp/+7esdR62ck+apgFluskoM
	0JggMBPDAWb4efXTs6wQyu3y0NTRh2aMIXjBE5/v4JwkJRjrl6P6xsEHj/TQQhxVeVTB5RkNN6gTa
	Ifq8yIMLW4HKQwXw47WOsM8BULUuR22KjEv5QkYkfnQBnbEl5Z28BMnZgw14O0emRt5eoKb6Fa76A
	StbsD7DOoYxViq8C00IFYvmV+FIx5jHEQc2/IlbxMKWpjuP6woRVJIKeBXTsKrOGXm5unu8GgQ8sD
	1QvMVhqj8FpwQBOtnrm8SPP6tZ8EiKFgffAiHyLXDS/cB9cXfcA/doGMd/imIKQT5627OD5mrCHae
	vbEZz5sAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDqC-00041z-Lt; Thu, 15 Aug 2019 11:22:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDpx-00041g-9Y
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:22:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30F0428;
 Thu, 15 Aug 2019 04:22:32 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B00463F694;
 Thu, 15 Aug 2019 04:22:30 -0700 (PDT)
Subject: Re: [PATCH 05/15] iommu/arm-smmu: Split
 arm_smmu_tlb_inv_range_nosync()
To: Will Deacon <will@kernel.org>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <33a49ca158509c95d50b0d3f9cba03bba2facdf3.1565369764.git.robin.murphy@arm.com>
 <20190815105602.hk53orjumysfezff@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <0f6362e2-38ac-0ad6-5da9-645f4695b6fd@arm.com>
Date: Thu, 15 Aug 2019 12:22:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190815105602.hk53orjumysfezff@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_042233_372498_D0400F18 
X-CRM114-Status: GOOD (  19.89  )
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
> On Fri, Aug 09, 2019 at 06:07:42PM +0100, Robin Murphy wrote:
>> Since we now use separate iommu_gather_ops for stage 1 and stage 2
>> contexts, we may as well divide up the monolithic callback into its
>> respective stage 1 and stage 2 parts.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu.c | 66 ++++++++++++++++++++++------------------
>>   1 file changed, 37 insertions(+), 29 deletions(-)
> 
> This will conflict with my iommu API batching stuff, but I can sort that
> out if/when it gets queued by Joerg.
> 
>> -		if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
>> -			iova &= ~12UL;
>> -			iova |= cfg->asid;
>> -			do {
>> -				writel_relaxed(iova, reg);
>> -				iova += granule;
>> -			} while (size -= granule);
>> -		} else {
>> -			iova >>= 12;
>> -			iova |= (u64)cfg->asid << 48;
>> -			do {
>> -				writeq_relaxed(iova, reg);
>> -				iova += granule >> 12;
>> -			} while (size -= granule);
>> -		}
>> -	} else {
>> -		reg += leaf ? ARM_SMMU_CB_S2_TLBIIPAS2L :
>> -			      ARM_SMMU_CB_S2_TLBIIPAS2;
>> -		iova >>= 12;
>> +	if (cfg->fmt != ARM_SMMU_CTX_FMT_AARCH64) {
>> +		iova &= ~12UL;
> 
> Oh baby. You should move code around more often, so I'm forced to take a
> second look!

Oh dear lord... The worst part is that I do now remember seeing this and 
having a similar moment of disbelief, but apparently I was easily 
distracted with rebasing and forgot about it too quickly :(

> Can you cook a fix for this that we can route separately, please? I see
> it also made its way into qcom_iommu.c...

Sure, I'll split it out to the front of the series for the moment.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
