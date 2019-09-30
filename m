Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2993C2015
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 13:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f8DaqqE39lfsDUNR8DQFu32Ti5ebU8rS05fRuC4m3zk=; b=nOPeMXcV/PtKb3J2kpYWFwGic
	NapbRaCtQaXjy5My31w/R0ghpYmPFm5WDXZWDN19d1lh9OMF6hADwhk6T3RHZpuNfa6WPf3wXKOIc
	o8lzJbtwth/LpPQXouOSN00jqUfkNeoIg4k5+QB5yvN8vCTOwwfGw+c/ZVcTdLe8wl1Nd2LLYgKGB
	M+4ZeWMKqjUUue1RDGKHa5TBSNyNBkxdoolpuB7uTnek8hI3FV+HqxyUNilrydg0ZVuvFYMHucpuV
	1ExBXAmtTPp6VwEDHwBxuih/rfZZVXAorNEyDDc0q/giZ4j4ewvier6t6Mje86hV2xDV6QmPTJERl
	BVz0k9CdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEu7Z-000229-P9; Mon, 30 Sep 2019 11:45:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEu7R-00021p-DJ
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 11:45:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40E241000;
 Mon, 30 Sep 2019 04:45:30 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BF3B13F706;
 Mon, 30 Sep 2019 04:45:29 -0700 (PDT)
Subject: Re: SMMU performance
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>
References: <20190930110047.GF25745@shell.armlinux.org.uk>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <cf3ac700-1954-8800-6ce4-9983ab27707b@arm.com>
Date: Mon, 30 Sep 2019 12:45:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190930110047.GF25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_044533_496449_829A5F79 
X-CRM114-Status: GOOD (  17.26  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On 30/09/2019 12:00, Russell King - ARM Linux admin wrote:
> Hi,
> 
> While using iperf on a platform using the ARM SMMU (v2), I notice the
> following behaviour on v5.3 with Will's iommu patch set merged, kernel
> lock debugging disabled.
> 
> With iommu.passthrough=1, three consecutive runs:
> [  3]  0.0-10.0 sec  4.51 GBytes  3.87 Gbits/sec
> [  3]  0.0-10.0 sec  4.53 GBytes  3.89 Gbits/sec
> [  3]  0.0-10.0 sec  4.49 GBytes  3.86 Gbits/sec
> 
> With iommu.passthrough=0:
> [  3]  0.0-10.0 sec  1.77 GBytes  1.52 Gbits/sec
> [  3]  0.0-10.0 sec  1.82 GBytes  1.56 Gbits/sec
> [  3]  0.0-10.0 sec  1.69 GBytes  1.45 Gbits/sec
> 
> Running perf record -a -g ... followed by perf report --no-children
> shows:
> 
> -   15.72%  iperf            [kernel.vmlinux]    [k] _raw_spin_unlock_irqrestor
>     - _raw_spin_unlock_irqrestore
>        - 8.95% arm_smmu_tlb_sync_context
>             arm_smmu_iotlb_sync
>           - __iommu_dma_unmap
>              + 4.54% iommu_dma_unmap_sg
>              + 4.41% iommu_dma_unmap_page
>        - 2.92% alloc_iova_fast
>           - iommu_dma_alloc_iova.isra.26
>              + 1.54% iommu_dma_map_sg
>              + 1.38% __iommu_dma_map
>        - 2.64% free_iova_fast
>             iommu_dma_free_iova
>           - __iommu_dma_unmap
>              + 1.35% iommu_dma_unmap_sg
>              + 1.29% iommu_dma_unmap_page
> 
> which seems to be pointing to the SMMU code as a bottleneck.
> 
> Will suggests that his iommu changes (in his for-joerg/arm-smmu/updates
> branch), allows IOMMU driver modifications that may have a beneficial
> effect.  Any thoughts?

We default to synchronous invalidation on unmaps, since it gives the 
greatest degree of security against misbehaving devices (and proves 
quite useful for smoking out dodgy drivers too). If you're happy with 
deferred invalidation as x86 defaults to, try "iommu.strict=0" - that 
should avoid the main serialising bottleneck. As for the IOVA allocation 
overhead, that's probably about as low as it's likely to get now - what 
remains is the inevitable "doing anything vs. doing nothing" tradeoff.

The major changes in 5.4 are for SMMUv3, so won't impact your platform.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
