Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B2341BD8ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xefC/PPnYMO+8wj/DPrPGLNoBsqgQ8JeyEXjOeyqrgg=; b=momPEFBTSD5sBP
	iHjUBB+8DPiLFP2LUWMGHN9lQYVmBILQ8FN+AwwpamqdGqijLMhrx20p2gecOE6/NJAE55buKLSN0
	YJBwgDtLUmuFboeehokll8JguAd5CGsdv8IG5fXm8ClKsrRDaWE4YHW0EozapulXbWEwpt2BXxmru
	xquAoDq6UKpqGrSzOM4ExmwPCP/NYMa4ItKPBFonTJVUxNn6wuRVnAZ1OntI4ul7RxbYq/5/nyO1J
	sI11al5Dj9G3IcIaiGKGlBLOku8nqySWSmj0b62apHFRsaKxy4/BgOg/UehYZCeDDG9fQAME5YI0q
	6AavogYOhBFbnLgzipIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjUO-0006j9-0Q; Wed, 29 Apr 2020 09:58:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjU5-0006fO-Bn
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:58:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C131C14;
 Wed, 29 Apr 2020 02:58:28 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.5.153])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AEE43F73D;
 Wed, 29 Apr 2020 02:58:26 -0700 (PDT)
Date: Wed, 29 Apr 2020 10:58:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 4/7] arm64: Thread mm_struct throughout page table
 allocation
Message-ID: <20200429095817.GA28631@C02TD0UTHF1T.local>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-5-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428194449.22615-5-willy@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_025829_489298_A56CB87E 
X-CRM114-Status: GOOD (  22.08  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Matthew,

On Tue, Apr 28, 2020 at 12:44:46PM -0700, Matthew Wilcox wrote:
> From: "Matthew Wilcox (Oracle)" <willy@infradead.org>
> 
> An upcoming patch will pass mm_struct to the page table constructor.
> Make sure arm64 has the appropriate mm_struct at the point it needs to
> call the constructor.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>

This generally looks good ot me. I was a little scared that we'd need to
update the EFI mapping code, but I see that already passes its mm into
create_pgd_mapping(), and everything else uses init_mm today.

One small comment below.

> ---
>  arch/arm64/mm/mmu.c | 89 ++++++++++++++++++++++-----------------------
>  1 file changed, 43 insertions(+), 46 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a374e4f51a62..69ecc83c3be0 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -88,7 +88,9 @@ pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  }
>  EXPORT_SYMBOL(phys_mem_access_prot);
>  
> -static phys_addr_t __init early_pgtable_alloc(int shift)
> +typedef phys_addr_t (arm_pt_alloc_t)(int size, struct mm_struct *);

Sorry to bikeshed, but for consistency with the naming scheme used here
could we please call this 'pgtable_alloc_fn' ?

We generally use 'pgtable' here, and 'fn' makes it clearer that this is
a function pointer rather than data. The 'arm_' prefix is also a bit
unusual here, and I don't think we need it.

With that:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> @@ -333,11 +332,9 @@ static void alloc_init_pud(pgd_t *pgdp, unsigned long addr, unsigned long end,
>  	pud_clear_fixmap();
>  }
>  
> -static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
> -				 unsigned long virt, phys_addr_t size,
> -				 pgprot_t prot,
> -				 phys_addr_t (*pgtable_alloc)(int),
> -				 int flags)
> +static void __create_pgd_mapping(struct mm_struct *mm, pgd_t *pgdir,
> +		phys_addr_t phys, unsigned long virt, phys_addr_t size,
> +		pgprot_t prot, arm_pt_alloc_t pgtable_alloc, int flags)
>  {
>  	unsigned long addr, end, next;
>  	pgd_t *pgdp = pgd_offset_raw(pgdir, virt);
> @@ -355,13 +352,13 @@ static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
>  
>  	do {
>  		next = pgd_addr_end(addr, end);
> -		alloc_init_pud(pgdp, addr, next, phys, prot, pgtable_alloc,
> +		alloc_init_pud(mm, pgdp, addr, next, phys, prot, pgtable_alloc,
>  			       flags);
>  		phys += next - addr;
>  	} while (pgdp++, addr = next, addr != end);
>  }
>  
> -static phys_addr_t __pgd_pgtable_alloc(int shift)
> +static phys_addr_t __pgd_pgtable_alloc(int shift, struct mm_struct *mm)
>  {
>  	void *ptr = (void *)__get_free_page(GFP_PGTABLE_KERNEL);
>  	BUG_ON(!ptr);
> @@ -371,9 +368,9 @@ static phys_addr_t __pgd_pgtable_alloc(int shift)
>  	return __pa(ptr);
>  }
>  
> -static phys_addr_t pgd_pgtable_alloc(int shift)
> +static phys_addr_t pgd_pgtable_alloc(int shift, struct mm_struct *mm)
>  {
> -	phys_addr_t pa = __pgd_pgtable_alloc(shift);
> +	phys_addr_t pa = __pgd_pgtable_alloc(shift, mm);
>  
>  	/*
>  	 * Call proper page table ctor in case later we need to
> @@ -404,8 +401,8 @@ static void __init create_mapping_noalloc(phys_addr_t phys, unsigned long virt,
>  			&phys, virt);
>  		return;
>  	}
> -	__create_pgd_mapping(init_mm.pgd, phys, virt, size, prot, NULL,
> -			     NO_CONT_MAPPINGS);
> +	__create_pgd_mapping(&init_mm, init_mm.pgd, phys, virt, size, prot,
> +			NULL, NO_CONT_MAPPINGS);
>  }
>  
>  void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
> @@ -419,7 +416,7 @@ void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
>  	if (page_mappings_only)
>  		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
>  
> -	__create_pgd_mapping(mm->pgd, phys, virt, size, prot,
> +	__create_pgd_mapping(mm, mm->pgd, phys, virt, size, prot,
>  			     pgd_pgtable_alloc, flags);
>  }
>  
> @@ -432,8 +429,8 @@ static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
>  		return;
>  	}
>  
> -	__create_pgd_mapping(init_mm.pgd, phys, virt, size, prot, NULL,
> -			     NO_CONT_MAPPINGS);
> +	__create_pgd_mapping(&init_mm, init_mm.pgd, phys, virt, size, prot,
> +			NULL, NO_CONT_MAPPINGS);
>  
>  	/* flush the TLBs after updating live kernel mappings */
>  	flush_tlb_kernel_range(virt, virt + size);
> @@ -442,8 +439,8 @@ static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
>  static void __init __map_memblock(pgd_t *pgdp, phys_addr_t start,
>  				  phys_addr_t end, pgprot_t prot, int flags)
>  {
> -	__create_pgd_mapping(pgdp, start, __phys_to_virt(start), end - start,
> -			     prot, early_pgtable_alloc, flags);
> +	__create_pgd_mapping(&init_mm, pgdp, start, __phys_to_virt(start),
> +			end - start, prot, early_pgtable_alloc, flags);
>  }
>  
>  void __init mark_linear_text_alias_ro(void)
> @@ -547,8 +544,8 @@ static void __init map_kernel_segment(pgd_t *pgdp, void *va_start, void *va_end,
>  	BUG_ON(!PAGE_ALIGNED(pa_start));
>  	BUG_ON(!PAGE_ALIGNED(size));
>  
> -	__create_pgd_mapping(pgdp, pa_start, (unsigned long)va_start, size, prot,
> -			     early_pgtable_alloc, flags);
> +	__create_pgd_mapping(&init_mm, pgdp, pa_start, (unsigned long)va_start,
> +			size, prot, early_pgtable_alloc, flags);
>  
>  	if (!(vm_flags & VM_NO_GUARD))
>  		size += PAGE_SIZE;
> @@ -591,8 +588,8 @@ static int __init map_entry_trampoline(void)
>  
>  	/* Map only the text into the trampoline page table */
>  	memset(tramp_pg_dir, 0, PGD_SIZE);
> -	__create_pgd_mapping(tramp_pg_dir, pa_start, TRAMP_VALIAS, PAGE_SIZE,
> -			     prot, __pgd_pgtable_alloc, 0);
> +	__create_pgd_mapping(&init_mm, tramp_pg_dir, pa_start, TRAMP_VALIAS,
> +			PAGE_SIZE, prot, __pgd_pgtable_alloc, 0);
>  
>  	/* Map both the text and data into the kernel page table */
>  	__set_fixmap(FIX_ENTRY_TRAMP_TEXT, pa_start, prot);
> @@ -1381,9 +1378,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	if (rodata_full || debug_pagealloc_enabled())
>  		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
>  
> -	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
> -			     size, params->pgprot, __pgd_pgtable_alloc,
> -			     flags);
> +	__create_pgd_mapping(&init_mm, swapper_pg_dir, start,
> +			__phys_to_virt(start), size, params->pgprot,
> +			__pgd_pgtable_alloc, flags);
>  
>  	memblock_clear_nomap(start, size);
>  
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
