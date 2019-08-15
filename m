Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B108EF41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 17:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bj5PZtlwmFt7repS/J6lR6lq/YSXbjZWfirQRlhJwTY=; b=IwT2WY8q2invQr
	/C01ooJTibOM8S1p0melsXWw6SURq0IHJww1bjnd53Ri9Rq/TcghU0e46uITVaXxXhVJ3SSzLLg+i
	tJhOK1QuC4wpjE0nzGYFNF/6WnXPzSwbuQsQnIqLNQN5aF/0GX/ABWLsn1P8CYMGJhoGhR4BYkSCQ
	55RwklGIqm5aMvLfLIP4aCkFsAhokw5Fxr586isoQfkFeCtv7AprqVupK84FNxeSraL73pk69XpDg
	lKjNigGCVIs6lJcDPSimIO/rjM3K2EdAlI34DOtyKqlLjRlt3OvombOpKT4mrsYC8EE5U6ZBTlzcs
	E3ulJjPtCpWxZjQBqaRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyHbO-0003VT-6b; Thu, 15 Aug 2019 15:23:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyHay-0003Un-O4
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 15:23:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85BCE20644;
 Thu, 15 Aug 2019 15:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565882599;
 bh=3KBqf0uqTC0ABTjfZbdiuByQVZZGp/ONMP3E9R4V9jQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qrYDyUNz5qqZaU1zX67lb+YeBx/VbjPGwOOxiCzCBPo22QkgFau7YFUkM6EaPfuDE
 K0JZYQeaVspP7x1io+ebzsGGGULqyIcq4xFjvpe5N/CFu6xNZSsz1K4NMLZ3WIsXB2
 5zkL7N/gFTlAPoPFQK1yfcpZRq2R+SJKkOFNys1k=
Date: Thu, 15 Aug 2019 16:23:14 +0100
From: Will Deacon <will@kernel.org>
To: Zhen Lei <thunder.leizhen@huawei.com>
Subject: Re: [PATCH v2 2/2] iommu/arm-smmu-v3: add nr_ats_masters for quickly
 check
Message-ID: <20190815152313.apa2d5rzhqa34l7l@willie-the-truck>
References: <20190815054439.30652-1-thunder.leizhen@huawei.com>
 <20190815054439.30652-3-thunder.leizhen@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815054439.30652-3-thunder.leizhen@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_082320_840962_E3936D41 
X-CRM114-Status: GOOD (  27.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Aug 15, 2019 at 01:44:39PM +0800, Zhen Lei wrote:
> When (smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS) is true, even if a
> smmu domain does not contain any ats master, the operations of
> arm_smmu_atc_inv_to_cmd() and lock protection in arm_smmu_atc_inv_domain()
> are always executed. This will impact performance, especially in
> multi-core and stress scenarios. For my FIO test scenario, about 8%
> performance reduced.
> 
> In fact, we can use a struct member to record how many ats masters that
> the smmu contains. And check that without traverse the list and check all
> masters one by one in the lock protection.
> 
> Fixes: 9ce27afc0830 ("iommu/arm-smmu-v3: Add support for PCI ATS")
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> ---
>  drivers/iommu/arm-smmu-v3.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm-smmu-v3.c b/drivers/iommu/arm-smmu-v3.c
> index 29056d9bb12aa01..154334d3310c9b8 100644
> --- a/drivers/iommu/arm-smmu-v3.c
> +++ b/drivers/iommu/arm-smmu-v3.c
> @@ -631,6 +631,7 @@ struct arm_smmu_domain {
>  
>  	struct io_pgtable_ops		*pgtbl_ops;
>  	bool				non_strict;
> +	int				nr_ats_masters;
>  
>  	enum arm_smmu_domain_stage	stage;
>  	union {
> @@ -1531,7 +1532,16 @@ static int arm_smmu_atc_inv_domain(struct arm_smmu_domain *smmu_domain,
>  	struct arm_smmu_cmdq_ent cmd;
>  	struct arm_smmu_master *master;
>  
> -	if (!(smmu_domain->smmu->features & ARM_SMMU_FEAT_ATS))
> +	/*
> +	 * The protectiom of spinlock(&iommu_domain->devices_lock) is omitted.
> +	 * Because for a given master, its map/unmap operations should only be
> +	 * happened after it has been attached and before it has been detached.
> +	 * So that, if at least one master need to be atc invalidated, the
> +	 * value of smmu_domain->nr_ats_masters can not be zero.
> +	 *
> +	 * This can alleviate performance loss in multi-core scenarios.
> +	 */

I find this reasoning pretty dubious, since I think you're assuming that
an endpoint cannot issue speculative ATS translation requests once its
ATS capability is enabled. That said, I think it also means we should enable
ATS in the STE *before* enabling it in the endpoint -- the current logic
looks like it's the wrong way round to me (including in detach()).

Anyway, these speculative translations could race with a concurrent unmap()
call and end up with the ATC containing translations for unmapped pages,
which I think we should try to avoid.

Did the RCU approach not work out? You could use an rwlock instead as a
temporary bodge if the performance doesn't hurt too much.

Alternatively... maybe we could change the attach flow to do something
like:

	enable_ats_in_ste(master);
	enable_ats_at_pcie_endpoint(master);
	spin_lock(devices_lock)
	add_to_device_list(master);
	nr_ats_masters++;
	spin_unlock(devices_lock);
	invalidate_atc(master);

in which case, the concurrent unmapper will be doing something like:

	issue_tlbi();
	smp_mb();
	if (READ_ONCE(nr_ats_masters)) {
		...
	}

and I *think* that means that either the unmapper will see the
nr_ats_masters update and perform the invalidation, or they'll miss
the update but the attach will invalidate the ATC /after/ the TLBI
in the command queue.

Also, John's idea of converting this stuff over to my command batching
mechanism should help a lot if we can defer this to sync time using the
gather structure. Maybe an rwlock would be alright for that. Dunno.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
