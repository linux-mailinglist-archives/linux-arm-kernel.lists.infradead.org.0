Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D561FC500
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 06:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQGDsqFmBuM+tefQ8h54JLIalU6PjzF3MI9s6sRqMM4=; b=cjLgOTdNqGmc9u
	VYKVgCkG1ZagqbgumSZBJU/5dsLZklhFd2iHGA2bZ70uiDqiPzL3XUK5EEqhchSmfclajpYAyZ3Sx
	u43xPMGKGSFbedOpn8r9O8iSFcdqMHmN4v+1ZXzuSfQmCyECWeIyGxPQlRmm5bFoUc6iTrlkyHhpg
	aM7L590w2dL9ddgGL0Nba3Y3MgowcgYg0+espK+NQE3q1sa5fz+oRroKdLQoiQLGi9HrL/SHw1rlG
	z4Fy5rhiRM4vQ7Pfz7HIrzo1hXz531YZa3SHSFqy9bKqZtYHJDD1w1xb5iZn2BFGZjS9LTtjv701J
	XEK6lcmgn4hQK+ZEbXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlPRI-0004Gb-TL; Wed, 17 Jun 2020 04:12:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlPRB-0004G4-No
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 04:12:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8943E1FB;
 Tue, 16 Jun 2020 21:12:28 -0700 (PDT)
Received: from [10.163.80.128] (unknown [10.163.80.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A09C03F71F;
 Tue, 16 Jun 2020 21:12:24 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
To: Barry Song <song.bao.hua@hisilicon.com>, catalin.marinas@arm.com,
 will@kernel.org, nsaenzjulienne@suse.de, steve.capper@arm.com,
 rppt@linux.ibm.com, akpm@linux-foundation.org
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <4489e307-1ce8-a883-2dae-1aa7e1c881fc@arm.com>
Date: Wed, 17 Jun 2020 09:42:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_211233_817415_EB40C75B 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Roman Gushchin <guro@fb.com>, linuxarm@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 06/17/2020 03:49 AM, Barry Song wrote:
> hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> done yet. so all reserved memory will be located at node0.
> 
> Fixes: cf11e85fc08c ("mm: hugetlb: optionally allocate gigantic hugepages using cma")
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Acked-by: Roman Gushchin <guro@fb.com>
> Signed-off-by: Barry Song <song.bao.hua@hisilicon.com>
> ---
>  -v2: add Fixes tag according to Matthias Brugger's comment
> 
>  arch/arm64/mm/init.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index e631e6425165..41914b483d54 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -404,11 +404,6 @@ void __init arm64_memblock_init(void)
>  	high_memory = __va(memblock_end_of_DRAM() - 1) + 1;
>  
>  	dma_contiguous_reserve(arm64_dma32_phys_limit);
> -
> -#ifdef CONFIG_ARM64_4K_PAGES
> -	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> -#endif
> -
>  }
>  
>  void __init bootmem_init(void)
> @@ -424,6 +419,11 @@ void __init bootmem_init(void)
>  	min_low_pfn = min;
>  
>  	arm64_numa_init();
> +
> +#ifdef CONFIG_ARM64_4K_PAGES
> +	hugetlb_cma_reserve(PUD_SHIFT - PAGE_SHIFT);
> +#endif

arm64_numa_init() calls numa_init() which initializes node_online_map
that gets used in hugetlb_cma_reserve() while allocating required CMA
size across online nodes.

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
