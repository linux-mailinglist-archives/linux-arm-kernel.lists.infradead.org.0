Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B048D1E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9c+YQ4f7Sew9A7pRrvkSZxXB/vJKr2d8nMLsLevYiSE=; b=TWq1we45tlBr38
	vVgWXbxKgW38je8LCB5dbFnM66wBaXputCm4Cz95eJLv9+Gb1kQ4HES0cuBhf0Np+1yVTlB7RiwqW
	RatdrGm0XF9IzrPKMn6SM7qqLFdQIFdttdpjWEp6ERw12QAe3SeBT2iyUgohAOqpkx6/6ZeRzQ3tM
	+IsiBj9uFTPuFUtvjyb9ApqZnnzd0tJu4Fprss9citSw5MbNtMF8QvuVZhtWOi/LzjTjzKW+Lizqm
	XJW6mNpMoPtRrUrTmwFqqX/rCqdLYKu30TKsL+LP0WwX21FGHxCeWitw0WUPuCk8rqPrYgrdJnaJk
	tYFRkwZHbQW6nnZp2d+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrFJ-00025g-9f; Wed, 14 Aug 2019 11:15:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrEG-0001iC-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:14:11 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FF04208C2;
 Wed, 14 Aug 2019 11:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565781247;
 bh=nobFxGW2wMhzHUSXVoVKvl67jb1UOwZPyAe0of615GY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JxaWGEyeYVhR+sAZck72HvYqmGOMZCps/SgR0Rdz0yTpb2tqESLxtmCVg1IctTofy
 Kjvf9YyDktzs0lKSVZeCejf13frY3ufB4pbQR/PVFsGYPBjJ+2xp1YhvUjBzJdJ0J8
 yFfdzaT1LJ/5eIuQpc4MlSQXoZVejAxegdlEV+Vo=
Date: Wed, 14 Aug 2019 12:14:02 +0100
From: Will Deacon <will@kernel.org>
To: Zhen Lei <thunder.leizhen@huawei.com>
Subject: Re: [PATCH] iommu/arm-smmu-v3: add nr_ats_masters to avoid
 unnecessary operations
Message-ID: <20190814111402.pxlvtmv44nhuvhio@willie-the-truck>
References: <20190801122040.26024-1-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801122040.26024-1-thunder.leizhen@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_041408_583063_2E91EE27 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi,

I've been struggling with the memory ordering requirements here. More below.

On Thu, Aug 01, 2019 at 08:20:40PM +0800, Zhen Lei wrote:
> When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
> smmu domain does not contain any ats master, the operations of
> arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
> are always executed. This will impact performance, especially in
> multi-core and stress scenarios. For my FIO test scenario, about 8%
> performance reduced.
> 
> In fact, we can use a atomic member to record how many ats masters the
> smmu contains. And check that without traverse the list and check all
> masters one by one in the lock protection.
> 
> Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> ---
>  drivers/iommu/arm-smmu-v3.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index a9a9fabd396804a..1b370d9aca95f94 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -631,6 +631,7 @@ struct arm_smmu_domain {
>  
>  	struct io_pgtable_ops		*pgtbl_ops;
>  	bool				non_strict;
> +	atomic_t			nr_ats_masters;
>  
>  	enum arm_smmu_domain_stage	stage;
>  	union {
> @@ -1531,7 +1532,7 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
>  	struct arm_smmu_cmdq_ent cmd;
>  	struct arm_smmu_master *master;
>  
> -	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
> +	if (!atomic_read(&smmu_domain->nr_ats_masters))
>  		return 0;

This feels wrong to me: the CPU can speculate ahead of time that
'nr_ats_masters' is 0, but we could have a concurrent call to '->attach()'
for an ATS-enabled device. Wouldn't it then be possible for the new device
to populate its ATC as a result of speculative accesses for the mapping that
we're tearing down?

The devices lock solves this problem by serialising invalidation with
'->attach()/->detach()' operations.

John's suggestion of RCU might work better, but I think you'll need to call
synchronize_rcu() between adding yourself to the 'devices' list and enabling
ATS.

What do you think?

>  	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);
> @@ -1869,6 +1870,7 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
>  	size_t stu;
>  	struct pci_dev *pdev;
>  	struct arm_smmu_device *smmu = master->smmu;
> +	struct arm_smmu_domain *smmu_domain = master->domain;
>  	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(master->dev);
>  
>  	if (!(smmu->features & ARM_SMMU_FEAT_ATS) || !dev_is_pci(master->dev) ||
> @@ -1887,12 +1889,15 @@ static int arm_smmu_enable_ats(struct arm_smmu_master *master)
>  		return ret;
>  
>  	master->ats_enabled = true;
> +	atomic_inc(&smmu_domain->nr_ats_masters);

Here, we need to make sure that concurrent invalidation sees the updated
'nr_ats_masters' value before ATS is enabled for the device, otherwise we
could miss an ATC invalidation.

I think the code above gets this guarantee because of the way that ATS is
enabled in the STE, which ensures that we issue invalidation commands before
making the STE 'live'; this has the side-effect of a write barrier before
updating PROD, which I think we also rely on for installing the CD pointer.

Put another way: writes are ordered before a subsequent command insertion.

Do you agree? If so, I'll add a comment because this is subtle and easily
overlooked.

>  static void arm_smmu_disable_ats(struct arm_smmu_master *master)
>  {
>  	struct arm_smmu_cmdq_ent cmd;
> +	struct arm_smmu_domain *smmu_domain = master->domain;
>  
>  	if (!master->ats_enabled || !dev_is_pci(master->dev))
>  		return;
> @@ -1901,6 +1906,7 @@ static void arm_smmu_disable_ats(struct arm_smmu_master *master)
>  	arm_smmu_atc_inv_master(master, &cmd);
>  	pci_disable_ats(to_pci_dev(master->dev));
>  	master->ats_enabled = false;
> +	atomic_dec(&smmu_domain->nr_ats_masters);

This part is the other way around: now we need to ensure that we don't
decrement 'nr_ats_masters' until we've disabled ATS. This works for a
number of reasons, none of which are obvious:

  - The control dependency from completing the prior CMD_SYNCs for tearing
    down the STE and invalidating the ATC

  - The spinlock handover from the CMD_SYNCs above

  - The writel() when poking PCI configuration space in pci_disable_ats()
    happens to be implemented with a write-write barrier

I suppose the control dependency is the most compelling one: we can't let
stores out whilst we're awaiting completion of a CMD_SYNC.

Put another way: writes are ordered after the completion of a prior CMD_SYNC.

But yeah, I need to write this down.

>  static void arm_smmu_detach_dev(struct arm_smmu_master *master)
> @@ -1915,10 +1921,10 @@ static void arm_smmu_detach_dev(struct arm_smmu_master *master)
>  	list_del(&master->domain_head);
>  	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);
>  
> -	master->domain = NULL;
>  	arm_smmu_install_ste_for_dev(master);
>  
>  	arm_smmu_disable_ats(master);
> +	master->domain = NULL;

As you mentioned, this is broken. Can you simply drop this hunk completely?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
