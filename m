Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF944177324
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drFRsGWQRBl1eYep66czsXUe+YXyEl1go5VkJSBaw0M=; b=GxR+Uyc5vzdHV0
	BXhmUg/UdWlxpNgLO+FLyTssBxLgIuNzB6XpGoqVsvzAefdUyIpmEinfh2bYG6a7nFmIDJ5fouPkr
	+lhSGnUOQA8Z4yOWgOkl5bGB8quRnhK8YXQCYswEDMHyyEojKlK8rGOg3iSWa5f0JGNiXz8nAexAE
	7WAYvG4bg66mqcutBEbdoVLYXHZavPIx4VOdvVk2uf/XYySSaLdFdElQwOEQwYbn/MUIgQj5AWoEO
	nXcSAGa0FvpXSyOpKaIDNROyRrZyXF3XDPtdATXGC2+clMR37Do12Jzshwadg5wDF/Q9RhwDi2CbY
	2BcSpM73aD8q3MWo2HsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j94Dv-0003MR-2C; Tue, 03 Mar 2020 09:52:23 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j94Dm-0003Ly-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:52:15 +0000
Received: by mail-wr1-f68.google.com with SMTP id q8so3501832wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 01:52:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=GaGznwc3bS7Ckir2yH7mHcLmMNTfNWsu6+vGJH6ISPE=;
 b=lDXbaQUI6ONdUCTaiuWiThvk1FgAStpBQJ1WRbhw2G4S180mr63kFqt+41HKS6TbeN
 sKARJ1U2NmYReoApceS/Bjp6rER9NZh4d/Ns8mhnL6eHaVDQf69mFNq/o14BYF0vzZxN
 yJBizvMOu8/+DWNDb61A1z6kh83XhHod/0fSr577MmHiqknYDQb4VNXi0xAsdXK5kabX
 V34W6WYazKKJWjeH2qWsfR6JOg5wLC7nmtVrJP1JqAnbvj/DsxT9uqopSnUpRmG1TdfG
 mlZC0hKgN4NOozFC4YMdFPm/n551d1+mb3cfqTYPDJB/nkvl7bewMnspoSXXVp0NGxib
 ZbPg==
X-Gm-Message-State: ANhLgQ3vsowm9V4DszEE6G9sG8QnxQZfFUIYldD9LJrEDO55v2oOwIUU
 dGTwX5Z4l1qrcaoL6EsLWLY=
X-Google-Smtp-Source: ADFU+vvr3HOdyj6p2BRxhXjy2tLDgseWSOODKsH2VuibtRly14pM+NQ4h9rtn+ez67vBm9UGimip8Q==
X-Received: by 2002:a05:6000:106:: with SMTP id
 o6mr4627708wrx.120.1583229131659; 
 Tue, 03 Mar 2020 01:52:11 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id q125sm3294236wme.19.2020.03.03.01.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 01:52:11 -0800 (PST)
Date: Tue, 3 Mar 2020 10:52:10 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v3 3/7] x86/mm: Thread pgprot_t through
 init_memory_mapping()
Message-ID: <20200303095210.GG4380@dhcp22.suse.cz>
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-4-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221182503.28317-4-logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_015214_178730_08D65E64 
X-CRM114-Status: GOOD (  22.80  )
X-Spam-Score: -1.2 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mstsxfx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: x86@kernel.org, linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-s390@vger.kernel.org, David Hildenbrand <david@redhat.com>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dan Williams <dan.j.williams@intel.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Eric Badger <ebadger@gigaio.com>,
 linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 21-02-20 11:24:59, Logan Gunthorpe wrote:
> In prepartion to support a pgprot_t argument for arch_add_memory().
> 
> It's required to move the prototype of init_memory_mapping() seeing
> the original location came before the definition of pgprot_t.
> 
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: x86@kernel.org
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  arch/x86/include/asm/page_types.h |  3 ---
>  arch/x86/include/asm/pgtable.h    |  3 +++
>  arch/x86/kernel/amd_gart_64.c     |  3 ++-
>  arch/x86/mm/init.c                |  9 +++++----
>  arch/x86/mm/init_32.c             |  3 ++-
>  arch/x86/mm/init_64.c             | 32 +++++++++++++++++--------------
>  arch/x86/mm/mm_internal.h         |  3 ++-
>  arch/x86/platform/uv/bios_uv.c    |  3 ++-
>  8 files changed, 34 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/x86/include/asm/page_types.h b/arch/x86/include/asm/page_types.h
> index c85e15010f48..bf7aa2e290ef 100644
> --- a/arch/x86/include/asm/page_types.h
> +++ b/arch/x86/include/asm/page_types.h
> @@ -73,9 +73,6 @@ static inline phys_addr_t get_max_mapped(void)
>  
>  bool pfn_range_is_mapped(unsigned long start_pfn, unsigned long end_pfn);
>  
> -extern unsigned long init_memory_mapping(unsigned long start,
> -					 unsigned long end);
> -
>  extern void initmem_init(void);
>  
>  #endif	/* !__ASSEMBLY__ */
> diff --git a/arch/x86/include/asm/pgtable.h b/arch/x86/include/asm/pgtable.h
> index 7e118660bbd9..48d6a5960f28 100644
> --- a/arch/x86/include/asm/pgtable.h
> +++ b/arch/x86/include/asm/pgtable.h
> @@ -1046,6 +1046,9 @@ static inline void __meminit init_trampoline_default(void)
>  
>  void __init poking_init(void);
>  
> +unsigned long init_memory_mapping(unsigned long start,
> +				  unsigned long end, pgprot_t prot);
> +
>  # ifdef CONFIG_RANDOMIZE_MEMORY
>  void __meminit init_trampoline(void);
>  # else
> diff --git a/arch/x86/kernel/amd_gart_64.c b/arch/x86/kernel/amd_gart_64.c
> index 4e5f50236048..16133819415c 100644
> --- a/arch/x86/kernel/amd_gart_64.c
> +++ b/arch/x86/kernel/amd_gart_64.c
> @@ -744,7 +744,8 @@ int __init gart_iommu_init(void)
>  
>  	start_pfn = PFN_DOWN(aper_base);
>  	if (!pfn_range_is_mapped(start_pfn, end_pfn))
> -		init_memory_mapping(start_pfn<<PAGE_SHIFT, end_pfn<<PAGE_SHIFT);
> +		init_memory_mapping(start_pfn<<PAGE_SHIFT, end_pfn<<PAGE_SHIFT,
> +				    PAGE_KERNEL);
>  
>  	pr_info("PCI-DMA: using GART IOMMU.\n");
>  	iommu_size = check_iommu_size(info.aper_base, aper_size);
> diff --git a/arch/x86/mm/init.c b/arch/x86/mm/init.c
> index e7bb483557c9..1bba16c5742b 100644
> --- a/arch/x86/mm/init.c
> +++ b/arch/x86/mm/init.c
> @@ -467,7 +467,7 @@ bool pfn_range_is_mapped(unsigned long start_pfn, unsigned long end_pfn)
>   * the physical memory. To access them they are temporarily mapped.
>   */
>  unsigned long __ref init_memory_mapping(unsigned long start,
> -					       unsigned long end)
> +					unsigned long end, pgprot_t prot)
>  {
>  	struct map_range mr[NR_RANGE_MR];
>  	unsigned long ret = 0;
> @@ -481,7 +481,8 @@ unsigned long __ref init_memory_mapping(unsigned long start,
>  
>  	for (i = 0; i < nr_range; i++)
>  		ret = kernel_physical_mapping_init(mr[i].start, mr[i].end,
> -						   mr[i].page_size_mask);
> +						   mr[i].page_size_mask,
> +						   prot);
>  
>  	add_pfn_range_mapped(start >> PAGE_SHIFT, ret >> PAGE_SHIFT);
>  
> @@ -521,7 +522,7 @@ static unsigned long __init init_range_memory_mapping(
>  		 */
>  		can_use_brk_pgt = max(start, (u64)pgt_buf_end<<PAGE_SHIFT) >=
>  				    min(end, (u64)pgt_buf_top<<PAGE_SHIFT);
> -		init_memory_mapping(start, end);
> +		init_memory_mapping(start, end, PAGE_KERNEL);
>  		mapped_ram_size += end - start;
>  		can_use_brk_pgt = true;
>  	}
> @@ -661,7 +662,7 @@ void __init init_mem_mapping(void)
>  #endif
>  
>  	/* the ISA range is always mapped regardless of memory holes */
> -	init_memory_mapping(0, ISA_END_ADDRESS);
> +	init_memory_mapping(0, ISA_END_ADDRESS, PAGE_KERNEL);
>  
>  	/* Init the trampoline, possibly with KASLR memory offset */
>  	init_trampoline();
> diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
> index 3ec3dac7c268..e25a4218e6ff 100644
> --- a/arch/x86/mm/init_32.c
> +++ b/arch/x86/mm/init_32.c
> @@ -253,7 +253,8 @@ static inline int is_kernel_text(unsigned long addr)
>  unsigned long __init
>  kernel_physical_mapping_init(unsigned long start,
>  			     unsigned long end,
> -			     unsigned long page_size_mask)
> +			     unsigned long page_size_mask,
> +			     pgprot_t prot)
>  {
>  	int use_pse = page_size_mask == (1<<PG_LEVEL_2M);
>  	unsigned long last_map_addr = end;
> diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
> index 87977a8bfbbf..9e7692080dda 100644
> --- a/arch/x86/mm/init_64.c
> +++ b/arch/x86/mm/init_64.c
> @@ -585,7 +585,7 @@ phys_pmd_init(pmd_t *pmd_page, unsigned long paddr, unsigned long paddr_end,
>   */
>  static unsigned long __meminit
>  phys_pud_init(pud_t *pud_page, unsigned long paddr, unsigned long paddr_end,
> -	      unsigned long page_size_mask, bool init)
> +	      unsigned long page_size_mask, pgprot_t _prot, bool init)
>  {
>  	unsigned long pages = 0, paddr_next;
>  	unsigned long paddr_last = paddr_end;
> @@ -595,7 +595,7 @@ phys_pud_init(pud_t *pud_page, unsigned long paddr, unsigned long paddr_end,
>  	for (; i < PTRS_PER_PUD; i++, paddr = paddr_next) {
>  		pud_t *pud;
>  		pmd_t *pmd;
> -		pgprot_t prot = PAGE_KERNEL;
> +		pgprot_t prot = _prot;
>  
>  		vaddr = (unsigned long)__va(paddr);
>  		pud = pud_page + pud_index(vaddr);
> @@ -644,9 +644,12 @@ phys_pud_init(pud_t *pud_page, unsigned long paddr, unsigned long paddr_end,
>  		if (page_size_mask & (1<<PG_LEVEL_1G)) {
>  			pages++;
>  			spin_lock(&init_mm.page_table_lock);
> +
> +			prot = __pgprot(pgprot_val(prot) | __PAGE_KERNEL_LARGE);
> +
>  			set_pte_init((pte_t *)pud,
>  				     pfn_pte((paddr & PUD_MASK) >> PAGE_SHIFT,
> -					     PAGE_KERNEL_LARGE),
> +					     prot),
>  				     init);
>  			spin_unlock(&init_mm.page_table_lock);
>  			paddr_last = paddr_next;
> @@ -669,7 +672,7 @@ phys_pud_init(pud_t *pud_page, unsigned long paddr, unsigned long paddr_end,
>  
>  static unsigned long __meminit
>  phys_p4d_init(p4d_t *p4d_page, unsigned long paddr, unsigned long paddr_end,
> -	      unsigned long page_size_mask, bool init)
> +	      unsigned long page_size_mask, pgprot_t prot, bool init)
>  {
>  	unsigned long vaddr, vaddr_end, vaddr_next, paddr_next, paddr_last;
>  
> @@ -679,7 +682,7 @@ phys_p4d_init(p4d_t *p4d_page, unsigned long paddr, unsigned long paddr_end,
>  
>  	if (!pgtable_l5_enabled())
>  		return phys_pud_init((pud_t *) p4d_page, paddr, paddr_end,
> -				     page_size_mask, init);
> +				     page_size_mask, prot, init);
>  
>  	for (; vaddr < vaddr_end; vaddr = vaddr_next) {
>  		p4d_t *p4d = p4d_page + p4d_index(vaddr);
> @@ -702,13 +705,13 @@ phys_p4d_init(p4d_t *p4d_page, unsigned long paddr, unsigned long paddr_end,
>  		if (!p4d_none(*p4d)) {
>  			pud = pud_offset(p4d, 0);
>  			paddr_last = phys_pud_init(pud, paddr, __pa(vaddr_end),
> -					page_size_mask, init);
> +					page_size_mask, prot, init);
>  			continue;
>  		}
>  
>  		pud = alloc_low_page();
>  		paddr_last = phys_pud_init(pud, paddr, __pa(vaddr_end),
> -					   page_size_mask, init);
> +					   page_size_mask, prot, init);
>  
>  		spin_lock(&init_mm.page_table_lock);
>  		p4d_populate_init(&init_mm, p4d, pud, init);
> @@ -722,7 +725,7 @@ static unsigned long __meminit
>  __kernel_physical_mapping_init(unsigned long paddr_start,
>  			       unsigned long paddr_end,
>  			       unsigned long page_size_mask,
> -			       bool init)
> +			       pgprot_t prot, bool init)
>  {
>  	bool pgd_changed = false;
>  	unsigned long vaddr, vaddr_start, vaddr_end, vaddr_next, paddr_last;
> @@ -743,13 +746,13 @@ __kernel_physical_mapping_init(unsigned long paddr_start,
>  			paddr_last = phys_p4d_init(p4d, __pa(vaddr),
>  						   __pa(vaddr_end),
>  						   page_size_mask,
> -						   init);
> +						   prot, init);
>  			continue;
>  		}
>  
>  		p4d = alloc_low_page();
>  		paddr_last = phys_p4d_init(p4d, __pa(vaddr), __pa(vaddr_end),
> -					   page_size_mask, init);
> +					   page_size_mask, prot, init);
>  
>  		spin_lock(&init_mm.page_table_lock);
>  		if (pgtable_l5_enabled())
> @@ -778,10 +781,10 @@ __kernel_physical_mapping_init(unsigned long paddr_start,
>  unsigned long __meminit
>  kernel_physical_mapping_init(unsigned long paddr_start,
>  			     unsigned long paddr_end,
> -			     unsigned long page_size_mask)
> +			     unsigned long page_size_mask, pgprot_t prot)
>  {
>  	return __kernel_physical_mapping_init(paddr_start, paddr_end,
> -					      page_size_mask, true);
> +					      page_size_mask, prot, true);
>  }
>  
>  /*
> @@ -796,7 +799,8 @@ kernel_physical_mapping_change(unsigned long paddr_start,
>  			       unsigned long page_size_mask)
>  {
>  	return __kernel_physical_mapping_init(paddr_start, paddr_end,
> -					      page_size_mask, false);
> +					      page_size_mask, PAGE_KERNEL,
> +					      false);
>  }
>  
>  #ifndef CONFIG_NUMA
> @@ -864,7 +868,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	unsigned long start_pfn = start >> PAGE_SHIFT;
>  	unsigned long nr_pages = size >> PAGE_SHIFT;
>  
> -	init_memory_mapping(start, start + size);
> +	init_memory_mapping(start, start + size, PAGE_KERNEL);
>  
>  	return add_pages(nid, start_pfn, nr_pages, params);
>  }
> diff --git a/arch/x86/mm/mm_internal.h b/arch/x86/mm/mm_internal.h
> index eeae142062ed..3f37b5c80bb3 100644
> --- a/arch/x86/mm/mm_internal.h
> +++ b/arch/x86/mm/mm_internal.h
> @@ -12,7 +12,8 @@ void early_ioremap_page_table_range_init(void);
>  
>  unsigned long kernel_physical_mapping_init(unsigned long start,
>  					     unsigned long end,
> -					     unsigned long page_size_mask);
> +					     unsigned long page_size_mask,
> +					     pgprot_t prot);
>  unsigned long kernel_physical_mapping_change(unsigned long start,
>  					     unsigned long end,
>  					     unsigned long page_size_mask);
> diff --git a/arch/x86/platform/uv/bios_uv.c b/arch/x86/platform/uv/bios_uv.c
> index 607f58147311..c60255da5a6c 100644
> --- a/arch/x86/platform/uv/bios_uv.c
> +++ b/arch/x86/platform/uv/bios_uv.c
> @@ -352,7 +352,8 @@ void __iomem *__init efi_ioremap(unsigned long phys_addr, unsigned long size,
>  	if (type == EFI_MEMORY_MAPPED_IO)
>  		return ioremap(phys_addr, size);
>  
> -	last_map_pfn = init_memory_mapping(phys_addr, phys_addr + size);
> +	last_map_pfn = init_memory_mapping(phys_addr, phys_addr + size,
> +					   PAGE_KERNEL);
>  	if ((last_map_pfn << PAGE_SHIFT) < phys_addr + size) {
>  		unsigned long top = last_map_pfn << PAGE_SHIFT;
>  		efi_ioremap(top, size - (top - phys_addr), type, attribute);
> -- 
> 2.20.1
> 

-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
