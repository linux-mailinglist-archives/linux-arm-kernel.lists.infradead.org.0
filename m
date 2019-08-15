Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87C78E496
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 07:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmhgwCm2ZB2rMyExbFKFcp33UasRpkv2ARGQXdm9FIw=; b=os57Vg3/FtuLeZ
	bv+Y3/9ySR336RKr9fFhaVDpiIJ8PWhG0YendzpalB7aWfUGImwN3FDm01AfcLheL1nIJbtIgOAYn
	cAthQK6GDeWUZyqh78yxBMm4J9QQbvGaKjXuQ891c819rR5UiEvfJhGUz0YQkREmTcYtQLFqbVzD4
	r8FamOBzrH2JrVp//xoxAytTCtJ0TZP3nD3E6d4Czm6tVerf9+M2PrVJBh/W8QUrvPUmwBL3tnKbp
	9MeYx3/CG1Ei3wAabaajeLtUtn6v/CXXOeSvYZWrWywYgftR4i6Kt6h9VLnpcNgwMwqxPHARvdhSY
	XJGIRyK8L0wsZNJQ86yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy8b3-0000Gp-Kl; Thu, 15 Aug 2019 05:46:49 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy8aU-00007o-P9
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 05:46:16 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7A876BAD452454558B0E;
 Thu, 15 Aug 2019 13:46:10 +0800 (CST)
Received: from [127.0.0.1] (10.133.215.186) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0;
 Thu, 15 Aug 2019 13:46:01 +0800
Subject: Re: [PATCH] iommu/arm-smmu-v3: add nr_ats_masters to avoid
 unnecessary operations
To: Will Deacon <will@kernel.org>
References: <20190801122040.26024-1-thunder.leizhen@huawei.com>
 <20190814111402.pxlvtmv44nhuvhio@willie-the-truck>
From: "Leizhen (ThunderTown)" <thunder.leizhen@huawei.com>
Message-ID: <25178348-51b4-479d-87ad-391f63a26972@huawei.com>
Date: Thu, 15 Aug 2019 13:46:00 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190814111402.pxlvtmv44nhuvhio@willie-the-truck>
Content-Language: en-US
X-Originating-IP: [10.133.215.186]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_224615_001529_15DA5236 
X-CRM114-Status: GOOD (  30.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Joerg Roedel <joro@8bytes.org>, John Garry <john.garry@huawei.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 iommu <iommu@lists.linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/8/14 19:14, Will Deacon wrote:
> Hi,
> 
> I've been struggling with the memory ordering requirements here. More below.
> 
> On Thu, Aug 01, 2019 at 08:20:40PM +0800, Zhen Lei wrote:
>> When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
>> smmu domain does not contain any ats master, the operations of
>> arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
>> are always executed. This will impact performance, especially in
>> multi-core and stress scenarios. For my FIO test scenario, about 8%
>> performance reduced.
>>
>> In fact, we can use a atomic member to record how many ats masters the
>> smmu contains. And check that without traverse the list and check all
>> masters one by one in the lock protection.
>>
>> Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
>> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
>> ---
>>  drivers/iommu/arm-smmu-v3.c | 10 ++++++++--
>>  1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
>> index a9a9fabd396804a..1b370d9aca95f94 100644
>> --- a/drivers/iommu/arm-smmu-v3.c
>> +++ b/drivers/iommu/arm-smmu-v3.c
>> @@ -631,6 +631,7 @@ struct arm_smmu_domain {
>>  
>>  	struct io_pgtable_ops		*pgtbl_ops;
>>  	bool				non_strict;
>> +	atomic_t			nr_ats_masters;
>>  
>>  	enum arm_smmu_domain_stage	stage;
>>  	union {
>> @@ -1531,7 +1532,7 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
>>  	struct arm_smmu_cmdq_ent cmd;
>>  	struct arm_smmu_master *master;
>>  
>> -	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
>> +	if (!atomic_read(&smmu_domain->nr_ats_masters))
>>  		return 0;
> 
> This feels wrong to me: the CPU can speculate ahead of time that
> 'nr_ats_masters' is 0, but we could have a concurrent call to '->attach()'
> for an ATS-enabled device. Wouldn't it then be possible for the new device
> to populate its ATC as a result of speculative accesses for the mapping that
> we're tearing down?
> 
> The devices lock solves this problem by serialising invalidation with
> '->attach()/->detach()' operations.
> 
> John's suggestion of RCU might work better, but I think you'll need to call
> synchronize_rcu() between adding yourself to the 'devices' list and enabling
> ATS.
> 
> What do you think?

I have updated my patch and just sent, below it's my thoughts.

-	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
+	/*
+	 * The protectiom of spinlock(&iommu_domain->devices_lock) is omitted.
+	 * Because for a given master, its map/unmap operations should only be
+	 * happened after it has been attached and before it has been detached.
+	 * So that, if at least one master need to be atc invalidated, the
+	 * value of smmu_domain->nr_ats_masters can not be zero.
+	 *
+	 * This can alleviate performance loss in multi-core scenarios.
+	 */
+	if (!smmu_domain->nr_ats_masters)

> 
>>  	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
>> @@ -1869,6 +1870,7 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
>>  	size_t stu;
>>  	struct pci_dev *pdev;
>>  	struct arm_smmu_device *smmu = master->smmu;
>> +	struct arm_smmu_domain *smmu_domain = master->domain;
>>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
>>  
>>  	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
>> @@ -1887,12 +1889,15 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
>>  		return ret;
>>  
>>  	master->ats_enabled = true;
>> +	atomic_inc(&smmu_domain->nr_ats_masters);
> 
> Here, we need to make sure that concurrent invalidation sees the updated
> 'nr_ats_masters' value before ATS is enabled for the device, otherwise we
> could miss an ATC invalidation.
> 
> I think the code above gets this guarantee because of the way that ATS is
> enabled in the STE, which ensures that we issue invalidation commands before
> making the STE 'live'; this has the side-effect of a write barrier before
> updating PROD, which I think we also rely on for installing the CD pointer.
> 
> Put another way: writes are ordered before a subsequent command insertion.
> 
> Do you agree? If so, I'll add a comment because this is subtle and easily
> overlooked.
> 
>>  static void arm_smmu_disable_ats(struct arm_smmu_master *master)
>>  {
>>  	struct arm_smmu_cmdq_ent cmd;
>> +	struct arm_smmu_domain *smmu_domain = master->domain;
>>  
>>  	if (!master->ats_enabled || !dev_is_pci(master->dev))
>>  		return;
>> @@ -1901,6 +1906,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
>>  	arm_smmu_atc_inv_master(master, &cmd);
>>  	pci_disable_ats(to_pci_dev(master->dev));
>>  	master->ats_enabled = false;
>> +	atomic_dec(&smmu_domain->nr_ats_masters);
> 
> This part is the other way around: now we need to ensure that we don't
> decrement 'nr_ats_masters' until we've disabled ATS. This works for a
> number of reasons, none of which are obvious:
> 
>   - The control dependency from completing the prior CMD_SYNCs for tearing
>     down the STE and invalidating the ATC
> 
>   - The spinlock handover from the CMD_SYNCs above
> 
>   - The writel() when poking PCI configuration space in pci_disable_ats()
>     happens to be implemented with a write-write barrier
> 
> I suppose the control dependency is the most compelling one: we can't let
> stores out whilst we're awaiting completion of a CMD_SYNC.
> 
> Put another way: writes are ordered after the completion of a prior CMD_SYNC.
> 
> But yeah, I need to write this down.
> 
>>  static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>> @@ -1915,10 +1921,10 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>>  	list_del(&master->domain_head);
>>  	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
>>  
>> -	master->domain = NULL;
>>  	arm_smmu_install_ste_for_dev(master);
>>  
>>  	arm_smmu_disable_ats(master);
>> +	master->domain = NULL;
> 
> As you mentioned, this is broken. Can you simply drop this hunk completely?
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
