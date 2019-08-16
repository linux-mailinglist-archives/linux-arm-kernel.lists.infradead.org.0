Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AD38FFCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 12:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RlUc0R4Th8gQT9iicFmysPX2wabvljvblijbGNtAko=; b=ZaTHjPME2OlGEx
	xQyjBGBaooLA25mHLyizIY5IAR7rsE6/EsrWwfH+ANsPVIgIs4+v2niqEPbbxdby/G2ZzPZlXRe/B
	lLX0+aD9/5zrFDuFbUhDL6ewQ7x1puxhBoPJwv10+W7h5Ox5SCV9UC6ARqEbQkGPF76WBbxzQ3qMl
	g4YPaP70XUxYBNQI08bwUWRHADga5gipYus/Ie27LEUFPg5M9ejQyebbrfjuFDznuorIkM0BAEfbA
	H5PF84M+h0quXJ8Cz6anhYFMuD+I7jgFx5Get4o8mO7ZhO8XfWKnzF4dsNTC+Ss7LKDaLXcHBcC02
	n9tX3/oVe2qAspcOTcwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZDy-0007pt-Ni; Fri, 16 Aug 2019 10:12:47 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZDh-0007lD-VJ
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 10:12:31 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 051C3F27E7A2CC767AAE;
 Fri, 16 Aug 2019 18:12:25 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0;
 Fri, 16 Aug 2019 18:12:17 +0800
Subject: Re: [PATCH v2 2/2] iommu/arm-smmu-v3: add nr_ats_masters for quickly
 check
To: Will Deacon <will@kernel.org>
References: <20190815054439.30652-1-thunder.leizhen@huawei.com>
 <20190815054439.30652-3-thunder.leizhen@huawei.com>
 <20190815152313.apa2d5rzhqa34l7l@willie-the-truck>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <d8fdc516-3aed-b4ab-9cbc-81179d4e20d8@huawei.com>
Date: Fri, 16 Aug 2019 18:12:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190815152313.apa2d5rzhqa34l7l@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_031230_164167_E02A9533 
X-CRM114-Status: GOOD (  25.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, John Garry <john.garry@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/15 23:23, Will Deacon wrote:
> On Thu, Aug 15, 2019 at 01:44:39PM +0800, Zhen Lei wrote:
>> When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
>> smmu domain does not contain any ats master, the operations of
>> arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
>> are always executed. This will impact performance, especially in
>> multi-core and stress scenarios. For my FIO test scenario, about 8%
>> performance reduced.
>>
>> In fact, we can use a struct member to record how many ats masters that
>> the smmu contains. And check that without traverse the list and check all
>> masters one by one in the lock protection.
>>
>> Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
>> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
>> ---
>>  drivers/iommu/arm-smmu-v3.c | 14 +++++++++++++-
>>  1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
>> index 29056d9bb12aa01..154334d3310c9b8 100644
>> --- a/drivers/iommu/arm-smmu-v3.c
>> +++ b/drivers/iommu/arm-smmu-v3.c
>> @@ -631,6 +631,7 @@ struct arm_smmu_domain {
>>  
>>  	struct io_pgtable_ops		*pgtbl_ops;
>>  	bool				non_strict;
>> +	int				nr_ats_masters;
>>  
>>  	enum arm_smmu_domain_stage	stage;
>>  	union {
>> @@ -1531,7 +1532,16 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
>>  	struct arm_smmu_cmdq_ent cmd;
>>  	struct arm_smmu_master *master;
>>  
>> -	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
>> +	/*
>> +	 * The protectiom of spinlock(&iommu_domain->devices_lock) is omitted.
>> +	 * Because for a given master, its map/unmap operations should only be
>> +	 * happened after it has been attached and before it has been detached.
>> +	 * So that, if at least one master need to be atc invalidated, the
>> +	 * value of smmu_domain->nr_ats_masters can not be zero.
>> +	 *
>> +	 * This can alleviate performance loss in multi-core scenarios.
>> +	 */
> 
> I find this reasoning pretty dubious, since I think you're assuming that
> an endpoint cannot issue speculative ATS translation requests once its
> ATS capability is enabled. That said, I think it also means we should enable
> ATS in the STE *before* enabling it in the endpoint -- the current logic
> looks like it's the wrong way round to me (including in detach()).
> 
> Anyway, these speculative translations could race with a concurrent unmap()
> call and end up with the ATC containing translations for unmapped pages,
> which I think we should try to avoid.
> 
> Did the RCU approach not work out? You could use an rwlock instead as a
> temporary bodge if the performance doesn't hurt too much.
OK, I will try rwlock first, this does not change the original code logic.

> 
> Alternatively... maybe we could change the attach flow to do something
> like:
> 
> 	enable_ats_in_ste(master);
> 	enable_ats_at_pcie_endpoint(master);
> 	spin_lock(devices_lock)
> 	add_to_device_list(master);
> 	nr_ats_masters++;
> 	spin_unlock(devices_lock);
> 	invalidate_atc(master);
> 
> in which case, the concurrent unmapper will be doing something like:
> 
> 	issue_tlbi();
> 	smp_mb();
> 	if (READ_ONCE(nr_ats_masters)) {
> 		...
> 	}
> 
> and I *think* that means that either the unmapper will see the
> nr_ats_masters update and perform the invalidation, or they'll miss
> the update but the attach will invalidate the ATC /after/ the TLBI
> in the command queue.
> 
> Also, John's idea of converting this stuff over to my command batching
> mechanism should help a lot if we can defer this to sync time using the
> gather structure. Maybe an rwlock would be alright for that. Dunno.
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
