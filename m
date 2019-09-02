Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61EFA56DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 15:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HK9scqyYq82vh4mj4cYVv3oPOZibMzbeGdU12CwFVfg=; b=MVyK9A7EkTkdlK/RIhYIG9PmQ
	UtSotl+fXt9+F3vAWVXP+GLL3CwpNkglxb2ltb8YOt9LeXM4VWDWxbLOmnKeJKU1Q8OCYDsu6ORrb
	6i2zEen15ZWcEZJMgayvCKAe1qn45RdbU87jeFPgmXcgKrzOoPrWnAC6NeBMYFsijzszrL2fF9HGs
	x4LcKRgxm8IwxCkoFsl32SHK1uZzdhhZonkdRBGSGVZZYPwSM8h/UWhUY7kMQtfFqEV2bI9UpTud/
	2eHwn+HMRriDuEIdXfEstRaC3Fc0NMuFN797ZNdPAwYCEL5DgplbKadU0c/0Ynwjd1izDtYndD+FX
	7qws7n+hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4lwX-0007pI-SR; Mon, 02 Sep 2019 13:00:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4lwL-0007oG-9q
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 13:00:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4399337;
 Mon,  2 Sep 2019 06:00:10 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BE5DD3F246;
 Mon,  2 Sep 2019 06:00:08 -0700 (PDT)
Subject: Re: [PATCH 3/7] iommu/arm-smmu: Add tlb_sync implementation hook
To: Krishna Reddy <vdumpa@nvidia.com>
References: <1567118827-26358-1-git-send-email-vdumpa@nvidia.com>
 <1567118827-26358-4-git-send-email-vdumpa@nvidia.com>
 <554f8de1-1638-4eb9-59ae-8e1f0d786c44@arm.com>
 <BYAPR12MB2710AF5DDCB687C7E78362E5B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
 <BYAPR12MB271010C629D8DD7AEC0123D4B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3d734164-51c9-3465-cddd-276093389797@arm.com>
Date: Mon, 2 Sep 2019 14:00:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <BYAPR12MB271010C629D8DD7AEC0123D4B3BD0@BYAPR12MB2710.namprd12.prod.outlook.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_060013_394362_CE4DFFE2 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Timo Alho <talho@nvidia.com>, Thierry Reding <treding@nvidia.com>,
 Mikko Perttunen <mperttunen@nvidia.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joro@8bytes.org" <joro@8bytes.org>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Pritesh Raithatha <praithatha@nvidia.com>,
 "Thomas Zeng \(SW-TEGRA\)" <thomasz@nvidia.com>,
 Sachin Nikam <Snikam@nvidia.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Yu-Huan Hsu <YHsu@nvidia.com>, Juha Tukkinen <jtukkinen@nvidia.com>,
 Alexander Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/08/2019 23:49, Krishna Reddy wrote:
>>> +	if (smmu->impl->tlb_sync) {
>>> +		smmu->impl->tlb_sync(smmu, page, sync, status);
> 
>> What I'd hoped is that rather than needing a hook for this, you could just override smmu_domain->tlb_ops from .init_context to wire up the alternate .sync method directly. That would save this extra level of indirection.
> 
> Hi Robin,  overriding tlb_ops->tlb_sync function is not enough here.
> There are direct references to arm_smmu_tlb_sync_context(),  arm_smmu_tlb_sync_global() functions.
> In arm-smmu.c.  we can replace these direct references with tlb_ops->tlb_sync() function except in one function arm_smmu_device_reset().
> When arm_smmu_device_reset() gets called, domains are not initialized and tlb_ops is not available.
> Should we add a new hook for arm_smmu_tlb_sync_global() or make this as a responsibility of impl->reset() hook as it gets
> called at the same place?

Ah, right, I'd forgotten about the TLB maintenance on reset. Looking 
again, though, I think you might need to implement impl->reset anyway 
for the sake of clearing GFSR correctly - since the value read from the 
base instance technically may not match whatever bits might happen to be 
set in the other instances - so I don't see any issue with just calling 
nsmmu_tlb_sync() from there as well.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
