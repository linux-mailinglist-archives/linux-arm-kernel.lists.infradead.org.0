Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B688E9F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ubTcuSdf+hjPCJSHrVlhWmFFC6C8gelA9rt07In9AsE=; b=cbtn06+GcmqIK0foXMv8uVWQq
	RLTtqjdea3DWNlFJF9YRYtYL3Znb3ONr2JDIAMM2K1Z8nnDGbWNIr/enMDgZo7NOyAd8spSaB39kM
	zDmI1ddCgLbvC+rDtNV0RL95FGR8a0zG87F4gV6+cOTC6sZ5a3RjEb2jxZoZmAo9RFaZYoJ+FFzSw
	cJ3HH5qtTkAR0WH/99Eg3SZVn21LeocLvStVrNHK4JDPDRn3CooLuWwROk6GBjWxYvSRTt7BdbLTp
	lYPgREo5laMSy4Sb31cSe+5RE0VzSmp3rE5CZh+bg6L9bDksQ/+/Fs7t/mw8eyJRBxzvnoIWkx1eE
	a4Sk65dgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyDiQ-0007Mg-Ii; Thu, 15 Aug 2019 11:14:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyDhx-0007Em-HL
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:14:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8F92428;
 Thu, 15 Aug 2019 04:14:16 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 451CD3F694;
 Thu, 15 Aug 2019 04:14:15 -0700 (PDT)
Subject: Re: [PATCH 04/15] iommu/arm-smmu: Rework cb_base handling
To: Will Deacon <will@kernel.org>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <f4dccad78815ca0a2dd7926be7052759d099b920.1565369764.git.robin.murphy@arm.com>
 <20190814180556.5asp5qflrxxjipal@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <6acaf8b3-c425-99ed-a90d-11d2501e6305@arm.com>
Date: Thu, 15 Aug 2019 12:14:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190814180556.5asp5qflrxxjipal@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_041417_841653_B1349AB7 
X-CRM114-Status: GOOD (  18.44  )
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

On 14/08/2019 19:05, Will Deacon wrote:
> On Fri, Aug 09, 2019 at 06:07:41PM +0100, Robin Murphy wrote:
>> To keep register-access quirks manageable, we want to structure things
>> to avoid needing too many individual overrides. It seems fairly clean to
>> have a single interface which handles both global and context registers
>> in terms of the architectural pages, so the first preparatory step is to
>> rework cb_base into a page number rather than an absolute address.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu.c | 22 ++++++++++++----------
>>   1 file changed, 12 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index d9a93e5f422f..463bc8d98adb 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -95,7 +95,7 @@
>>   #endif
>>   
>>   /* Translation context bank */
>> -#define ARM_SMMU_CB(smmu, n)	((smmu)->cb_base + ((n) << (smmu)->pgshift))
>> +#define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->cb_base + (n)) << (smmu)->pgshift))
>>   
>>   #define MSI_IOVA_BASE			0x8000000
>>   #define MSI_IOVA_LENGTH			0x100000
>> @@ -168,8 +168,8 @@ struct arm_smmu_device {
>>   	struct device			*dev;
>>   
>>   	void __iomem			*base;
>> -	void __iomem			*cb_base;
>> -	unsigned long			pgshift;
>> +	unsigned int			cb_base;
> 
> I think this is now a misnomer. Would you be able to rename it cb_pfn or
> something, please?

Good point; in the architectural terms (section 8.1 of the spec), 
SMMU_CB_BASE is strictly a byte offset from SMMU_BASE, and the quantity 
we now have here is actually NUMPAGE. I've renamed it as such and 
tweaked the comments to be a bit more useful too.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
