Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348129619C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 15:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FseEZiN2Qoa8+0fzfQOPQnYMGgPkM+6dntsfQe3747E=; b=c8vK+t3rV6+FZb2QgZr8duubz
	we+hNfhC6Mj8pjzNwEgsIRVeA2AlfVduAE22Wsqjv8nxaGClI0UBrgjy3KLJ8wOAcwOR3Xesjp3bQ
	8PSDzNIiP9MGoaaJTqSlH0Gdo/z0Htf+7usw32WuWAvt7in4MwWEKzNnWSv52GGq+cTECw0mj7Snf
	aX0MgUvRO5JwXAA9LHJYtPaOYv9Ap5U7RnU9tzqIhA0Cmh5uPwgBLoFazr+MfVad05ZBU8VLmJBl5
	mzWTISS5dawFSnAYjBdpEI+8uoT0VuQ9T27GridzphbHIvS65G65mTN5yRTQ+4Pu7HbDtdxvsXtuJ
	y2GLSIkjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i04Y7-0000Te-HQ; Tue, 20 Aug 2019 13:51:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i04Xw-0000TI-6r
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 13:51:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C37B528;
 Tue, 20 Aug 2019 06:51:33 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1582E3F246;
 Tue, 20 Aug 2019 06:51:32 -0700 (PDT)
Subject: Re: [PATCH 4/4] iommu/io-pgtable-arm: Prepare for TTBR1 usage
To: will@kernel.org, joro@8bytes.org, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, robdclark@gmail.com
References: <cover.1566238530.git.robin.murphy@arm.com>
 <6596469d5fa1e918145fdd4e6b1a3ad67f7cde2e.1566238530.git.robin.murphy@arm.com>
 <20190819223439.GG28465@jcrouse1-lnx.qualcomm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <de67f3d6-2c95-293a-9fae-ba594df21660@arm.com>
Date: Tue, 20 Aug 2019 14:51:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190819223439.GG28465@jcrouse1-lnx.qualcomm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_065136_290047_1F86EBC7 
X-CRM114-Status: GOOD (  18.83  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19/08/2019 23:34, Jordan Crouse wrote:
> On Mon, Aug 19, 2019 at 07:19:31PM +0100, Robin Murphy wrote:
>> Now that callers are free to use a given table for TTBR1 if they wish
>> (all they need do is shift the provided attributes when constructing
>> their final TCR value), the only remaining impediment is the address
>> validation on map/unmap. The fact that the LPAE address space split is
>> symmetric makes this easy to accommodate - by simplifying the current
>> range checks into explicit tests that address bits above IAS are all
>> zero, it then follows straightforwardly to add the inverse test to
>> allow the all-ones case as well.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>> ---
>>   drivers/iommu/io-pgtable-arm.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
>> index 09cb20671fbb..f39c50356351 100644
>> --- a/drivers/iommu/io-pgtable-arm.c
>> +++ b/drivers/iommu/io-pgtable-arm.c
>> @@ -475,13 +475,13 @@ static int arm_lpae_map(struct io_pgtable_ops *ops, unsigned long iova,
>>   	arm_lpae_iopte *ptep = data->pgd;
>>   	int ret, lvl = ARM_LPAE_START_LVL(data);
>>   	arm_lpae_iopte prot;
>> +	long iaext = (long)iova >> data->iop.cfg.ias;
>>   
>>   	/* If no access, then nothing to do */
>>   	if (!(iommu_prot & (IOMMU_READ | IOMMU_WRITE)))
>>   		return 0;
>>   
>> -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias) ||
>> -		    paddr >= (1ULL << data->iop.cfg.oas)))
>> +	if (WARN_ON((iaext && ~iaext) || paddr >> data->iop.cfg.oas))
>>   		return -ERANGE;
>>   
>>   	prot = arm_lpae_prot_to_pte(data, iommu_prot);
> 
> We'll want to cast away the sign extended bits before mapping the iova, this
> might be a good patch for that too as long as we are calculating the iaext.

Ah good point, I'd forgotten that ARM_LPAE_LVL_IDX() doesn't actually 
cap to IAS if the top level is smaller than bits_per_level (I suppose we 
*could* make it do so for purity, but that's bound to hurt efficiency 
far more than just zeroing out the offending bits here).

Thanks,
Robin.

> 
>> @@ -647,8 +647,9 @@ static size_t arm_lpae_unmap(struct io_pgtable_ops *ops, unsigned long iova,
>>   	struct arm_lpae_io_pgtable *data = io_pgtable_ops_to_data(ops);
>>   	arm_lpae_iopte *ptep = data->pgd;
>>   	int lvl = ARM_LPAE_START_LVL(data);
>> +	long iaext = (long)iova >> data->iop.cfg.ias;
>>   
>> -	if (WARN_ON(iova >= (1ULL << data->iop.cfg.ias)))
>> +	if (WARN_ON(iaext && ~iaext))
>>   		return 0;
>>   
>>   	return __arm_lpae_unmap(data, iova, size, lvl, ptep);
> 
> And here too.
> 
> Jordan
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
