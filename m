Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5341D7E50
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 20:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p5GrxdHhdYeCV5yLXdRagDW7HRu0zY5mjG7b5Jjje2M=; b=hfWzzXusCCZMu9tJfPxQyWBNt
	3msvSGt3CydSrVwv/pd1eLX62MxJbibwBjP5U9XN4ItNBlA/NdLAHNuQ+zx4MCCmLpyqia+6DkUxt
	NBHcH6163WgZH6B+p9m8m4ZAK7kv5xh3OCbnfBCSScN6GEoRcwoKJfYC8QsukMRw9KzzARQEasDZX
	p/zhxdBmgaI9+AJ12bnGaVfGnksSpWxB/uXkLc5VGUoqcSNafgoDozEOhdLFWoQLRDon5t0oN/BcM
	9PbExQyMx9RvS698Kpa1kW3SUPReljirzaqtaBWeBPx0nRPXEi3TfaQzf/rB7R+qVNOuWRckflArk
	1gi6TkD0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKR7W-0002xG-2a; Tue, 15 Oct 2019 18:00:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKR7N-0002wc-SY
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 18:00:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B79BE337;
 Tue, 15 Oct 2019 11:00:20 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EA7303F6C4;
 Tue, 15 Oct 2019 11:00:18 -0700 (PDT)
Subject: Re: [RFC PATCH 0/6] SMMUv3 PMCG IMP DEF event support
To: John Garry <john.garry@huawei.com>, lorenzo.pieralisi@arm.com,
 guohanjun@huawei.com, sudeep.holla@arm.com, mark.rutland@arm.com,
 will@kernel.org
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <66a3ce9f-d3cd-110f-7353-46e6eaf25b7c@arm.com>
Date: Tue, 15 Oct 2019 19:00:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_110022_014308_50638D32 
X-CRM114-Status: GOOD (  26.27  )
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
Cc: nleeder@codeaurora.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi John,

On 30/09/2019 15:33, John Garry wrote:
> This patchset adds IMP DEF event support for the SMMUv3 PMCG.
> 
> It is marked as an RFC as the method to identify the PMCG implementation
> may be a quite disliked. And, in general, the series is somewhat
> incomplete.
> 
> So the background is that the PMCG supports IMP DEF events, yet we have no
> method to identify the PMCG to know the IMP DEF events.
> 
> A method for identifying the PMCG implementation could be using
> PMDEVARCH, but we cannot rely on this being set properly, as whether this
> is implemented is not defined in SMMUv3 spec.
> 
> Another method would be perf event aliasing, but this method of event
> matching is based on CPU id, which would not guarantee same
> uniqueness as PMCG implementation.
> 
> Yet another method could be to continue using ACPI OEM ID in the IORT
> code, but this does not scale. And it is not suitable if we ever add DT
> support to the PMCG driver.
> 
> The method used in this series is based on matching on the parent SMMUv3
> IIDR. We store this IIDR contents in the arm smmu structure as the first
> element, which means that we don't have to expose SMMU APIs - this is
> the part which may be disliked.
> 
> The final two patches switch the pre-existing PMCG model identification
> from ACPI OEM ID to the same parent SMMUv3 IIDR matching.
> 
> For now, we only consider SMMUv3' nodes being the associated node for
> PMCG.

Two significant concerns right off the bat:

- It seems more common than not for silicon designers to fail to 
implement IIDR correctly, so it's only a matter of time before 
inevitably needing to bring back some firmware-level identifier 
abstraction (if not already - does Hi161x have PMCGs?)

- This seems like a step in entirely the wrong direction for supporting 
PMCGs that reference a Named Component or Root Complex.

Interpreting the Node Reference is definitely a welcome improvement over 
matching table headers, but absent a truly compelling argument to the 
contrary, I'd rather retain the "PMCG model" abstraction in between that 
and the driver itself (especially since those can trivially be hung off 
compatibles once it comes to DT support).

Thanks,
Robin.

> 
> John Garry (6):
>    ACPI/IORT: Set PMCG device parent
>    iommu/arm-smmu-v3: Record IIDR in arm_smmu_device structure
>    perf/smmuv3: Retrieve parent SMMUv3 IIDR
>    perf/smmuv3: Support HiSilicon hip08 (hi1620) IMP DEF events
>    perf/smmuv3: Match implementation options based on parent SMMU IIDR
>    ACPI/IORT: Drop code to set the PMCG software-defined model
> 
>   drivers/acpi/arm64/iort.c     | 69 ++++++++++++++--------------
>   drivers/iommu/arm-smmu-v3.c   |  5 +++
>   drivers/perf/arm_smmuv3_pmu.c | 84 ++++++++++++++++++++++++++++++-----
>   include/linux/acpi_iort.h     |  8 ----
>   4 files changed, 112 insertions(+), 54 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
