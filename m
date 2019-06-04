Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A66234A46
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:23:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9ZLnYlf6YoiaxWn5ht/ALklIC5CkAf6XapsagWzOAI=; b=uyv+ntBbEzqo/9
	Ua3gsX8XlKCP+892/PC/f6x6eI2GRT9ec8HrVjNtaQ3U+0NJaRSYo+HNr7eQsBh0qSC6boe/QBUJy
	SOnofnZJ19JhtJ+XSoVAnRqpPaLs4d+ffWLK5/cMuFe0XNy6lBEq2YGi0CU3OyF3tkfklIDs+VnyG
	0LpmJgOBTOnNfzFN84hRggTyosuegUugXEhChSd2hNIvxuS2eMI1O2yeugQkdh8/hIH0AAZH22qhn
	zwpYrdEJ4sf+716G1KrU5xd1c2Jg5C4m3x3FW3GFI8SX/OrNDhwxr+EimiQdeyFXHbU/Aiw2VZF6s
	dUlihopP7LoX2ypoddmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYALw-00041f-1q; Tue, 04 Jun 2019 14:23:52 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYALp-000411-RD
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:23:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E423341;
 Tue,  4 Jun 2019 07:23:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDBD23F690;
 Tue,  4 Jun 2019 07:23:40 -0700 (PDT)
Date: Tue, 4 Jun 2019 15:23:38 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Qian Cai <cai@lca.pw>, rppt@linux.ibm.com
Subject: Re: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
Message-ID: <20190604142338.GC24467@lakrids.cambridge.arm.com>
References: <1559656836-24940-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559656836-24940-1-git-send-email-cai@lca.pw>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_072345_888914_11FD3600 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 mhocko@kernel.org, linux-mm@kvack.org, vdavydov.dev@gmail.com,
 hannes@cmpxchg.org, cgroups@vger.kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:00:36AM -0400, Qian Cai wrote:
> The commit "arm64: switch to generic version of pte allocation"
> introduced endless failures during boot like,
> 
> kobject_add_internal failed for pgd_cache(285:chronyd.service) (error:
> -2 parent: cgroup)
> 
> It turns out __GFP_ACCOUNT is passed to kernel page table allocations
> and then later memcg finds out those don't belong to any cgroup.

Mike, I understood from [1] that this wasn't expected to be a problem,
as the accounting should bypass kernel threads.

Was that assumption wrong, or is something different happening here?

> 
> backtrace:
>   kobject_add_internal
>   kobject_init_and_add
>   sysfs_slab_add+0x1a8
>   __kmem_cache_create
>   create_cache
>   memcg_create_kmem_cache
>   memcg_kmem_cache_create_func
>   process_one_work
>   worker_thread
>   kthread
> 
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/mm/pgd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> index 769516cb6677..53c48f5c8765 100644
> --- a/arch/arm64/mm/pgd.c
> +++ b/arch/arm64/mm/pgd.c
> @@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
>  	if (PGD_SIZE == PAGE_SIZE)
>  		return (pgd_t *)__get_free_page(gfp);
>  	else
> -		return kmem_cache_alloc(pgd_cache, gfp);
> +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);

This is used to allocate PGDs for both user and kernel pagetables (e.g.
for the efi runtime services), so while this may fix the regression, I'm
not sure it's the right fix.

Do we need a separate pgd_alloc_kernel()?

Thanks,
Mark.

[1] https://lkml.kernel.org/r/20190505061956.GE15755@rapoport-lnx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
