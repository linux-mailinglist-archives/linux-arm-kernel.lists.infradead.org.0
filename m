Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 571E5B1541
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16IXxIPPTaABwLDcnZjc3jyNGlj+6W08of8d45XaBjg=; b=p1K96sq0O9wKwU
	P7Ek/5xq0iICKYZo0kWjbgjR1VyW1cu3a1BWB5V0uyWWpz52+1wEzBnweBE7OcfLEMhLKx8zcfqxM
	xkvsrVFBdOxwzdkDk9etDm4xUVURdTp465Et67Y8XGnRDGIBmgcmrLdoSavhcuqiDL3txeu2U3FUj
	0WcYB1pqQXKd15ciPOxx3h3fEQJHA4vw8/ZGOs240goICNoYFVs6SYgRovzggYEA7BBcPewOgnyux
	hsGe2p6uWmgmWy1JJNlyp57WHiGRFbVieL+n4GjGdWvgeYvD5DuoD8tvW4w4UfGoy4KX4H/cP0rHi
	UkZWlDV8FytFpRbDolIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VVV-00047s-Fa; Thu, 12 Sep 2019 20:15:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VV6-00047C-Eb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:15:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 56D5128;
 Thu, 12 Sep 2019 13:15:29 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EC1A13F71F;
 Thu, 12 Sep 2019 13:15:21 -0700 (PDT)
Date: Thu, 12 Sep 2019 21:15:17 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V7 3/3] arm64/mm: Enable memory hot remove
Message-ID: <20190912201517.GB1068@C02TF0J2HF1T.local>
References: <1567503958-25831-1-git-send-email-anshuman.khandual@arm.com>
 <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567503958-25831-4-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_131532_601965_77AE4EC7 
X-CRM114-Status: GOOD (  17.27  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com, linux-mm@kvack.org,
 arunks@codeaurora.org, cpandya@codeaurora.org, ira.weiny@intel.com,
 will@kernel.org, steven.price@arm.com, valentin.schneider@arm.com,
 suzuki.poulose@arm.com, Robin.Murphy@arm.com, broonie@kernel.org, cai@lca.pw,
 ard.biesheuvel@arm.com, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de, steve.capper@arm.com,
 logang@deltatee.com, linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 mgorman@techsingularity.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

Thanks for the details on the need for removing the page tables and
vmemmap backing. Some comments on the code below.

On Tue, Sep 03, 2019 at 03:15:58PM +0530, Anshuman Khandual wrote:
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -60,6 +60,14 @@ static pud_t bm_pud[PTRS_PER_PUD] __page_aligned_bss __maybe_unused;
>  
>  static DEFINE_SPINLOCK(swapper_pgdir_lock);
>  
> +/*
> + * This represents if vmalloc and vmemmap address range overlap with
> + * each other on an intermediate level kernel page table entry which
> + * in turn helps in deciding whether empty kernel page table pages
> + * if any can be freed during memory hotplug operation.
> + */
> +static bool vmalloc_vmemmap_overlap;

I'd say just move the static find_vmalloc_vmemmap_overlap() function
here, the compiler should be sufficiently smart enough to figure out
that it's just a build-time constant.

> @@ -770,6 +1022,28 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
>  void vmemmap_free(unsigned long start, unsigned long end,
>  		struct vmem_altmap *altmap)
>  {
> +#ifdef CONFIG_MEMORY_HOTPLUG
> +	/*
> +	 * FIXME: We should have called remove_pagetable(start, end, true).
> +	 * vmemmap and vmalloc virtual range might share intermediate kernel
> +	 * page table entries. Removing vmemmap range page table pages here
> +	 * can potentially conflict with a concurrent vmalloc() allocation.
> +	 *
> +	 * This is primarily because vmalloc() does not take init_mm ptl for
> +	 * the entire page table walk and it's modification. Instead it just
> +	 * takes the lock while allocating and installing page table pages
> +	 * via [p4d|pud|pmd|pte]_alloc(). A concurrently vanishing page table
> +	 * entry via memory hot remove can cause vmalloc() kernel page table
> +	 * walk pointers to be invalid on the fly which can cause corruption
> +	 * or worst, a crash.
> +	 *
> +	 * So free_empty_tables() gets called where vmalloc and vmemmap range
> +	 * do not overlap at any intermediate level kernel page table entry.
> +	 */
> +	unmap_hotplug_range(start, end, true);
> +	if (!vmalloc_vmemmap_overlap)
> +		free_empty_tables(start, end);
> +#endif
>  }

So, I see the risk with overlapping and I guess for some kernel
configurations (PAGE_SIZE == 64K) we may not be able to avoid it. If we
can, that's great, otherwise could we rewrite the above functions to
handle floor and ceiling similar to free_pgd_range()? (I wonder how this
function works if you called it on init_mm and kernel address range). By
having the vmemmap start/end information it avoids freeing partially
filled page table pages.

Another question: could we do the page table and the actual vmemmap
pages freeing in a single pass (sorry if this has been discussed
before)?

> @@ -1048,10 +1322,18 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
>  }
>  
>  #ifdef CONFIG_MEMORY_HOTPLUG
> +static void __remove_pgd_mapping(pgd_t *pgdir, unsigned long start, u64 size)
> +{
> +	unsigned long end = start + size;
> +
> +	WARN_ON(pgdir != init_mm.pgd);
> +	remove_pagetable(start, end, false);
> +}

I think the point I've made previously still stands: you only call
remove_pagetable() with sparse_vmap == false in this patch. Just remove
the extra argument and call unmap_hotplug_range() with sparse_vmap ==
false directly in remove_pagetable().

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
