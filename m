Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8533B1A2231
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Laj3if3k8Il5sMCHozwJVRBl9lF+HZAQnioL1rT/Mo=; b=O8K0WFA46XcyYs
	JUuwEujMiCZ+QWqX306WrsWza4J7j0MLa+s8ZILCwtA8NmqonTg3N3q/TZrGnNlPgdN+C+FaeksqE
	5tW/e+HqqYFFSE6IJBkLFEBNaKhd0SOGN8WvhsUzUWXRh4e2gV7mGVuxQhLjKrrgQ9E7naJzbCkZ3
	aQIJPngJjKeoh5fbn1fU9MYYPOBu700EW36i8D1slXjvEB1no95WseNqCPF1layktELW/+KzddZAX
	CCCxYFhlOF5A7Bc/PxIojy/FJOl99u3+kOzPLndQ2dqmRmHwfkbUdsdofbRVHXSiEdpfR3cdEbo6g
	GDVFNVmSr+JAh8ZEfvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9yi-0002jn-DM; Wed, 08 Apr 2020 12:38:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9yc-0002jM-5c
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 12:38:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 87C1331B;
 Wed,  8 Apr 2020 05:38:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0ADA83F73D;
 Wed,  8 Apr 2020 05:38:37 -0700 (PDT)
Date: Wed, 8 Apr 2020 13:38:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 18/28] mm: enforce that vmap can't map pages executable
Message-ID: <20200408123835.GB36478@lakrids.cambridge.arm.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-19-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-19-hch@lst.de>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_053842_299556_F648C481 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Catalin marinas <catalin.marinas@arm.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:59:16PM +0200, Christoph Hellwig wrote:
> To help enforcing the W^X protection don't allow remapping existing
> pages as executable.
> 
> Based on patch from Peter Zijlstra <peterz@infradead.org>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/x86/include/asm/pgtable_types.h | 6 ++++++
>  include/asm-generic/pgtable.h        | 4 ++++
>  mm/vmalloc.c                         | 2 +-
>  3 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/include/asm/pgtable_types.h b/arch/x86/include/asm/pgtable_types.h
> index 947867f112ea..2e7c442cc618 100644
> --- a/arch/x86/include/asm/pgtable_types.h
> +++ b/arch/x86/include/asm/pgtable_types.h
> @@ -282,6 +282,12 @@ typedef struct pgprot { pgprotval_t pgprot; } pgprot_t;
>  
>  typedef struct { pgdval_t pgd; } pgd_t;
>  
> +static inline pgprot_t pgprot_nx(pgprot_t prot)
> +{
> +	return __pgprot(pgprot_val(prot) | _PAGE_NX);
> +}
> +#define pgprot_nx pgprot_nx
> +
>  #ifdef CONFIG_X86_PAE

I reckon for arm64 we can do similar in our <asm/pgtable.h>:

#define pgprot_nx(pgprot_t prot) \
	__pgprot_modify(prot, 0, PTE_PXN)

... matching the style of our existing pgprot_*() modifier helpers.

Mark.

>  
>  /*
> diff --git a/include/asm-generic/pgtable.h b/include/asm-generic/pgtable.h
> index 329b8c8ca703..8c5f9c29698b 100644
> --- a/include/asm-generic/pgtable.h
> +++ b/include/asm-generic/pgtable.h
> @@ -491,6 +491,10 @@ static inline int arch_unmap_one(struct mm_struct *mm,
>  #define flush_tlb_fix_spurious_fault(vma, address) flush_tlb_page(vma, address)
>  #endif
>  
> +#ifndef pgprot_nx
> +#define pgprot_nx(prot)	(prot)
> +#endif
> +
>  #ifndef pgprot_noncached
>  #define pgprot_noncached(prot)	(prot)
>  #endif
> diff --git a/mm/vmalloc.c b/mm/vmalloc.c
> index 7356b3f07bd8..334c75251ddb 100644
> --- a/mm/vmalloc.c
> +++ b/mm/vmalloc.c
> @@ -2390,7 +2390,7 @@ void *vmap(struct page **pages, unsigned int count,
>  	if (!area)
>  		return NULL;
>  
> -	if (map_kernel_range((unsigned long)area->addr, size, prot,
> +	if (map_kernel_range((unsigned long)area->addr, size, pgprot_nx(prot),
>  			pages) < 0) {
>  		vunmap(area->addr);
>  		return NULL;
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
