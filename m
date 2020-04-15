Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7371A9B54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:48:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3lNGoAZ3QpN5jh44S7rSc1nzp1Zn3o/qPrE+RQiv3xc=; b=ikHXGS4G61YU4I
	/3FkwKzPUEaQmiP8NqAp7RjwYToOS2T2iUzr7lTHpfkIgbnOvRw9SNuxz+TWMMm/M+UG5R4wwZLe1
	+9vsDPGPSbm+z53H4RyhpeUwT9N8SBGVdMQ20wyGRqmdrwZ/zZRivYQAAGXRziyMp5AZuKc7bSv9k
	lU7VHs+mZpju2ZZe9CqEvfWwRbA3TS4mjgo1g2fnC3LdTm9hBNQBXiQTVuynHn6+iNCrlPrs5C7+4
	mszU9F1MHkmFzBJqScKMGZvw+jz9qTQpeZvsnpstJNzDAEdYYQQkQlsewaq4cIIGf1Yi550cCyAog
	x91ZpiKbjkO1KWKmR+SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfaU-0004Q9-E1; Wed, 15 Apr 2020 10:48:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfaM-0004Pe-6N
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:48:03 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD15620737;
 Wed, 15 Apr 2020 10:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586947681;
 bh=HnbCLVccnltKcSSZedL2CQZAK2TgY1Sbggx+zC543GY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vmDrvJumX7U4le53pGKjBrr2FhNVnQba1z1kLq52haEuy5GrM5awH1/ElXic1ZLC0
 Oh7NXNU+t5PKOYaPI1cLgdB+3NAFHrAq374CLyxZRTdB85poPdJp0cKh/DP/KUbuta
 z/klilXZlHdmW+czzWkq59ztl3oT1IXuEHLhkdow=
Date: Wed, 15 Apr 2020 11:47:56 +0100
From: Will Deacon <will@kernel.org>
To: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
Message-ID: <20200415104755.GD12621@willie-the-truck>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413125303.423864-5-npiggin@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_034802_272678_DE5D99B6 
X-CRM114-Status: GOOD (  21.46  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Mon, Apr 13, 2020 at 10:53:03PM +1000, Nicholas Piggin wrote:
> For platforms that define HAVE_ARCH_HUGE_VMAP and support PMD vmap mappings,
> have vmalloc attempt to allocate PMD-sized pages first, before falling back
> to small pages. Allocations which use something other than PAGE_KERNEL
> protections are not permitted to use huge pages yet, not all callers expect
> this (e.g., module allocations vs strict module rwx).
> 
> This gives a 6x reduction in dTLB misses for a `git diff` (of linux), from
> 45600 to 6500 and a 2.2% reduction in cycles on a 2-node POWER9.

I wonder if it's worth extending vmap() to handle higher order pages in
a similar way? That might be helpful for tracing PMUs such as Arm SPE,
where the CPU streams tracing data out to a virtually addressed buffer
(see rb_alloc_aux_page()).

> This can result in more internal fragmentation and memory overhead for a
> given allocation. It can also cause greater NUMA unbalance on hashdist
> allocations.
> 
> There may be other callers that expect small pages under vmalloc but use
> PAGE_KERNEL, I'm not sure if it's feasible to catch them all. An
> alternative would be a new function or flag which enables large mappings,
> and use that in callers.
> 
> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
> ---
>  include/linux/vmalloc.h |   2 +
>  mm/vmalloc.c            | 135 +++++++++++++++++++++++++++++-----------
>  2 files changed, 102 insertions(+), 35 deletions(-)
> 
> diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
> index 291313a7e663..853b82eac192 100644
> --- a/include/linux/vmalloc.h
> +++ b/include/linux/vmalloc.h
> @@ -24,6 +24,7 @@ struct notifier_block;		/* in notifier.h */
>  #define VM_UNINITIALIZED	0x00000020	/* vm_struct is not fully initialized */
>  #define VM_NO_GUARD		0x00000040      /* don't add guard page */
>  #define VM_KASAN		0x00000080      /* has allocated kasan shadow memory */
> +#define VM_HUGE_PAGES		0x00000100	/* may use huge pages */

Please can you add a check for this in the arm64 change_memory_common()
code? Other architectures might need something similar, but we need to
forbid changing memory attributes for portions of the huge page.

In general, I'm a bit wary of software table walkers tripping over this.
For example, I don't think apply_to_existing_page_range() can handle
huge mappings at all, but the one user (KASAN) only ever uses page mappings
so it's ok there.

> @@ -2325,9 +2356,11 @@ static struct vm_struct *__get_vm_area_node(unsigned long size,
>  	if (unlikely(!size))
>  		return NULL;
>  
> -	if (flags & VM_IOREMAP)
> -		align = 1ul << clamp_t(int, get_count_order_long(size),
> -				       PAGE_SHIFT, IOREMAP_MAX_ORDER);
> +	if (flags & VM_IOREMAP) {
> +		align = max(align,
> +			    1ul << clamp_t(int, get_count_order_long(size),
> +					   PAGE_SHIFT, IOREMAP_MAX_ORDER));
> +	}


I don't follow this part. Please could you explain why you're potentially
aligning above IOREMAP_MAX_ORDER? It doesn't seem to follow from the rest
of the patch.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
