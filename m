Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269AD1FCAA3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/kcWyz7U2kdflfHt6KmwDyzAfwyBiJ0nTaBBbWOLMI=; b=NAW31vagooHRuY
	uEnV5gozsBlc+BGNav6i5wLhY73oZIvpB+OKp52nETLYsOUBSexJJhgcjKFauUpBUFMRdlbzSGtch
	zjVvQwtUF0aMEtGLXUFhyOL7MISqvm5UlLEtf/aih1duXrL0YY/jfOHi+NW4TrimIURIkggvCfb2D
	0Vph8vZYJf4IUB5OgVHiQEk6qWzKs0eveZdLuxPXHJU24DPvQbTrrrhaspndSsU7kx1U9oWofgFU0
	PS8soAMAbSawiZs08IV/V2NimVoZnd1sHMWVvRHoE8haMjr6s145PZx8OLgF65dn1JOUMxhuD8sve
	CTNO4udON2uyz7lBKjIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlV9T-000672-VE; Wed, 17 Jun 2020 10:18:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlV9K-00066L-Sy
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:18:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 66A1C208B8;
 Wed, 17 Jun 2020 10:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592389110;
 bh=t3O3UqUPbUfT6U+LwvmDhf8VfLM3fmdWGiN7u6Z4cqU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cTOqgPvE3c8CfIz5eGN+H1QWmhHhx4qZ+OBY53vIa2enZtatW6BqM01MylBKK03hc
 xUemYqn0zAIhcnztlOTQh46+2RDBriTxkSiLc839HNanIu3LJCYD7uwQnbYqsaW7Rk
 waEGqqsU7FVhnt5on9cwwAaNoUkeM0EySg/70Rek=
Date: Wed, 17 Jun 2020 11:18:25 +0100
From: Will Deacon <will@kernel.org>
To: Barry Song <song.bao.hua@hisilicon.com>
Subject: Re: [PATCH v2] arm64: mm: reserve hugetlb CMA after numa_init
Message-ID: <20200617101824.GB3368@willie-the-truck>
References: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616221924.74780-1-song.bao.hua@hisilicon.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_031830_956845_4C665F3C 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: steve.capper@arm.com, catalin.marinas@arm.com, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, nsaenzjulienne@suse.de,
 Matthias Brugger <matthias.bgg@gmail.com>, akpm@linux-foundation.org,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 10:19:24AM +1200, Barry Song wrote:
> hugetlb_cma_reserve() is called at the wrong place. numa_init has not been
> done yet. so all reserved memory will be located at node0.
> 
> Fixes: cf11e85fc08c ("mm: hugetlb: optionally allocate gigantic hugepages using cma")

Damn, wasn't CC'd on that :/

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

Why is this dependent on CONFIG_ARM64_4K_PAGES? We unconditionally
select ARCH_HAS_GIGANTIC_PAGE so this seems unnecessary.

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

A comment here wouldn't hurt, as it does look a lot more natural next
to dma_contiguous_reserve().

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
