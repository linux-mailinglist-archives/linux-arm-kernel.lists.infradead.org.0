Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C93D89BC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6hAGv7MyTwczMtXPPyoz98aTEjASlw2N9KLj+LVOPc8=; b=PkQgVaa5tXChEu+TcHOByt59N
	gfTd2Z6nZnDKAtoc0O/ocHiKFNRf2JlLJ8LZpxhBabxmwtc+d2hjYnbjFZOBRf3qRa07JJP3SCJRC
	yvONfzbCl5Pw9yoXDZgfd86yd9Bc+kGdubWrCnYGFqK/6TeqGuRmzyeunfhxlpCje90PCXNoeYS10
	jpc/UejbxWx0zlFK+2nuCx2jlXyqjDzrGD1aVsDjea4fZoOaT8tGl1OnFFQjU57esNDgfc2zbOQl3
	Y+YvN4I/RcBJHszSRmdGn7jrj1KafYaud/IKWKuANpSmhWjB+hzTs6KpBwzEXC33AEgqnxraIa7vo
	aVNA/VF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7mp-0005P9-3p; Mon, 12 Aug 2019 10:42:47 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7mh-0005N9-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:42:41 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5DD18646940A019F322D;
 Mon, 12 Aug 2019 18:42:30 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 12 Aug 2019 18:42:22 +0800
Subject: Re: [PATCH] iommu/arm-smmu-v3: add nr_ats_masters to avoid
 unnecessary operations
To: Zhen Lei <thunder.leizhen@huawei.com>, Jean-Philippe Brucker
 <jean-philippe.brucker@arm.com>, Robin Murphy <robin.murphy@arm.com>, "Will
 Deacon" <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, iommu
 <iommu@lists.linux-foundation.org>, linux-kernel
 <linux-kernel@vger.kernel.org>, <jean-philippe@linaro.org>
References: <20190801122040.26024-1-thunder.leizhen@huawei.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <b5866f7a-013a-5900-6fce-268052f2ba0a@huawei.com>
Date: Mon, 12 Aug 2019 11:42:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190801122040.26024-1-thunder.leizhen@huawei.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_034240_067564_07FA2729 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01/08/2019 13:20, Zhen Lei wrote:
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

Hi Will, Robin, Jean-Philippe,

Can you kindly check this issue? We have seen a signifigant performance 
regression here.

Thanks!

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


It's not ideal to keep a separate count of ats masters...hmmm

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

The rest of the code is here:

	arm_smmu_atc_inv_to_cmd(ssid, iova, size, &cmd);

	spin_lock_irqsave(&smmu_domain->devices_lock, flags);
	list_for_each_entry(master, &smmu_domain->devices, domain_head)
		ret |= arm_smmu_atc_inv_master(master, &cmd);
	spin_unlock_irqrestore(&smmu_domain->devices_lock, flags);

	return ret ? -ETIMEDOUT : 0;
}

Not directly related to leizhen's issue: Could RCU protection be used 
for this list iteration? I can't imagine that the devices list changes 
often. And also we already protect the cmdq in arm_smmu_atc_inv_master().

>
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
> +
>  	return 0;
>  }
>
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
>  }
>
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
>  }
>
>  static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
