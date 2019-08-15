Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985FF8EA82
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bzIPRd6p7kqEHRC30FJFdf0c+qXSBHQneymPIfwq60E=; b=IYzs7PSQ5uHQr1tGFglOnCjHW
	GRsmPY7DasrsYdvrGXk9r2Jgl7OmZuzLWHlX3sepue/ZLXsi8sY7AyuqDC1leYykPTtLtOeejXtF6
	B8WbMSyMMuULQx6TuNvPkCSN/7D6BMZpVpViNAsaf++pWplq4Z1w8Bmmy+QCtEolSdtWJVN65Fttn
	qBpaLcsML5xoXaIlVSlmYZNMnitLVMZQCWRqnnydltzHqDKOd/kFlod02TdbU8dk2LvtKfqXf1Qzf
	bktK4g7SocGG3kTZrBPoMkWslxX2GATUBYs+kE7QbnHx/OeCSk3ZVbEfQ1IG23UDHVnYdGmbvVwo+
	KjtIrtlng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyE8u-0003Q5-1v; Thu, 15 Aug 2019 11:42:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyE8h-0003Pm-Ez
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:41:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2870E28;
 Thu, 15 Aug 2019 04:41:54 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5643F3F694;
 Thu, 15 Aug 2019 04:41:52 -0700 (PDT)
Subject: Re: [PATCH 08/15] iommu/arm-smmu: Abstract context bank accesses
To: Will Deacon <will@kernel.org>
References: <cover.1565369764.git.robin.murphy@arm.com>
 <1051d7568c96142ff90b004a2ec61e3b5dbe770e.1565369764.git.robin.murphy@arm.com>
 <20190815105611.fk7ouis2cs3uzvew@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <721e3f61-89f2-174a-da30-7aacc8c8865f@arm.com>
Date: Thu, 15 Aug 2019 12:41:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190815105611.fk7ouis2cs3uzvew@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_044155_598710_AAADF5F2 
X-CRM114-Status: GOOD (  20.34  )
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
> On Fri, Aug 09, 2019 at 06:07:45PM +0100, Robin Murphy wrote:
>> Context bank accesses are fiddly enough to deserve a number of extra
>> helpers to keep the callsites looking sane, even though there are only
>> one or two of each.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/arm-smmu.c | 137 ++++++++++++++++++++-------------------
>>   1 file changed, 72 insertions(+), 65 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
>> index 72505647b77d..abdcc3f52e2e 100644
>> --- a/drivers/iommu/arm-smmu.c
>> +++ b/drivers/iommu/arm-smmu.c
>> @@ -82,9 +82,6 @@
>>   		((smmu->options & ARM_SMMU_OPT_SECURE_CFG_ACCESS)	\
>>   			? 0x400 : 0))
>>   
>> -/* Translation context bank */
>> -#define ARM_SMMU_CB(smmu, n)	((smmu)->base + (((smmu)->cb_base + (n)) << (smmu)->pgshift))
>> -
>>   #define MSI_IOVA_BASE			0x8000000
>>   #define MSI_IOVA_LENGTH			0x100000
>>   
>> @@ -265,9 +262,29 @@ static void arm_smmu_writel(struct arm_smmu_device *smmu, int page, int offset,
>>   	writel_relaxed(val, arm_smmu_page(smmu, page) + offset);
>>   }
>>   
>> +static u64 arm_smmu_readq(struct arm_smmu_device *smmu, int page, int offset)
>> +{
>> +	return readq_relaxed(arm_smmu_page(smmu, page) + offset);
>> +}
>> +
>> +static void arm_smmu_writeq(struct arm_smmu_device *smmu, int page, int offset,
>> +			    u64 val)
>> +{
>> +	writeq_relaxed(val, arm_smmu_page(smmu, page) + offset);
>> +}
>> +
>>   #define arm_smmu_read_gr1(s, r)		arm_smmu_readl((s), 1, (r))
>>   #define arm_smmu_write_gr1(s, r, v)	arm_smmu_writel((s), 1, (r), (v))
>>   
>> +#define arm_smmu_read_cb(s, n, r)				\
>> +	arm_smmu_readl((s), (s)->cb_base + (n), (r))
>> +#define arm_smmu_write_cb(s, n, r, v)				\
>> +	arm_smmu_writel((s), (s)->cb_base + (n), (r), (v))
>> +#define arm_smmu_read_cb_q(s, n, r)				\
>> +	arm_smmu_readq((s), (s)->cb_base + (n), (r))
>> +#define arm_smmu_write_cb_q(s, n, r, v)				\
>> +	arm_smmu_writeq((s), (s)->cb_base + (n), (r), (v))
> 
> 'r' for 'offset'? (maybe just rename offset => register in the helpers).

I think this all represents the mangled remains of an underlying notion 
of 'register offset' ;)

>>   struct arm_smmu_option_prop {
>>   	u32 opt;
>>   	const char *prop;
>> @@ -423,15 +440,17 @@ static void __arm_smmu_free_bitmap(unsigned long *map, int idx)
>>   }
>>   
>>   /* Wait for any pending TLB invalidations to complete */
>> -static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
>> -				void __iomem *sync, void __iomem *status)
>> +static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu, int page,
>> +				int sync, int status)
>>   {
>>   	unsigned int spin_cnt, delay;
>> +	u32 reg;
>>   
>> -	writel_relaxed(QCOM_DUMMY_VAL, sync);
>> +	arm_smmu_writel(smmu, page, sync, QCOM_DUMMY_VAL);
>>   	for (delay = 1; delay < TLB_LOOP_TIMEOUT; delay *= 2) {
>>   		for (spin_cnt = TLB_SPIN_COUNT; spin_cnt > 0; spin_cnt--) {
>> -			if (!(readl_relaxed(status) & sTLBGSTATUS_GSACTIVE))
>> +			reg = arm_smmu_readl(smmu, page, status);
>> +			if (!(reg & sTLBGSTATUS_GSACTIVE))
>>   				return;
>>   			cpu_relax();
>>   		}
>> @@ -443,12 +462,11 @@ static void __arm_smmu_tlb_sync(struct arm_smmu_device *smmu,
>>   
>>   static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
>>   {
>> -	void __iomem *base = ARM_SMMU_GR0(smmu);
>>   	unsigned long flags;
>>   
>>   	spin_lock_irqsave(&smmu->global_sync_lock, flags);
>> -	__arm_smmu_tlb_sync(smmu, base + ARM_SMMU_GR0_sTLBGSYNC,
>> -			    base + ARM_SMMU_GR0_sTLBGSTATUS);
>> +	__arm_smmu_tlb_sync(smmu, 0, ARM_SMMU_GR0_sTLBGSYNC,
> 
> Can we have a #define for page zero, please?

Again, now I recall pondering the exact same thought, so clearly I don't 
have any grounds to object. I guess it's worth reworking the previous 
ARM_SMMU_{GR0,GR1,CB()} macros into the page number scheme rather than 
just killing them off - let me give that a try.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
