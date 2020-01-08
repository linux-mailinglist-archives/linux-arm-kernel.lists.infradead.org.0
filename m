Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D81134201
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:43:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTvp5HCO1bwr2G2fz+sMGGMwh3wqeqHd4s8a/4hMKNE=; b=A2W20p3+ykM1RT
	O+WC6hiz57EoJViuKDbFnxa69Qi6z7VclTi/REPlfJw68iI5F0CMxWs5OiEznFQKpoocKu7BfBs82
	vofu8G32QpqT4eGFOH4YbVarLTPqEMJszK35HLwCAU4NPm++Oy1i7YxzTsPjstD7EL5+2LQp49oF2
	KlMguf6CJqlWlwjSHpfjsKl78yG66uX+XHvG0h23DWFtpcPFI9+LqajsT8t0KgItPBtuQj3mc37ln
	lJGedmbyzUQhMViLwihqRVN+47XAbF7UjEgK2u0tIWjGz3OnWqmbYlA0wmtotxQ9DXpOXXqx1QaI4
	J8NMepEshAui+JfSGaHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAfn-0004ao-8N; Wed, 08 Jan 2020 12:42:55 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAfZ-0004Sq-K7
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:42:45 +0000
Received: by mail-wm1-f68.google.com with SMTP id q9so2305359wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 04:42:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oL7AiyezFSaPUSQINsQX9lIy1KtBrah03q1c+vdGl70=;
 b=RFOYSknybOQiKpFmq21OwG8VeBT/UXN20YahkkIkwkeMvhq5CduRxAKl5f+4SpDhuP
 pJ4dS/z5wcnVNBS8DTgvuDr0NZs5PQjE4aKP7qmN4xtg7OLIIiOjZyqOhXx+foGQdTzd
 HoV+tbiOL8miu0HDJqgfiiD5E7Bn4l3VhC0ArAKt3Ctt4gdwG6km51f8kUpfFLSa/Rmr
 rudZCUO7oJfgmKh++QMsRc5Zvx1X6XMEDWVbKVHD4Avsha2c//dnqkoOjmviwYEVuTHK
 7wRworhyawAuf7P4te7xUUiM49/Dr2tjtig47ll2dVqrkfEEQSZwzMPqNQQIzrw5APGK
 jOHw==
X-Gm-Message-State: APjAAAXNWK5rzJNo3j5v0cMHhw2CYjYDFK1LBgSautQtj7vupGmTlSH2
 KzebgVx1QuKWZgLXnRpUsvQ=
X-Google-Smtp-Source: APXvYqwKFA4+cgBJREYNaAxy2zZsIKi5z4WvcBbaIX9+DBXR03grpLlZ4iuekK3XvVeBMtqSIy9dvg==
X-Received: by 2002:a05:600c:290f:: with SMTP id
 i15mr3768023wmd.115.1578487359562; 
 Wed, 08 Jan 2020 04:42:39 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id o7sm3546994wmh.11.2020.01.08.04.42.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 04:42:38 -0800 (PST)
Date: Wed, 8 Jan 2020 13:42:38 +0100
From: Michal Hocko <mhocko@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v2 7/8] mm/memory_hotplug: Add pgprot_t to mhp_modifiers
Message-ID: <20200108124238.GS32178@dhcp22.suse.cz>
References: <20200107205959.7575-1-logang@deltatee.com>
 <20200107205959.7575-8-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200107205959.7575-8-logang@deltatee.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_044241_672227_27772CD7 
X-CRM114-Status: GOOD (  28.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mstsxfx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
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

On Tue 07-01-20 13:59:58, Logan Gunthorpe wrote:
> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
> struct page mappings for IO memory. At present, these mappings are created
> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
> x86, an mtrr register will typically override this and force the cache
> type to be UC-. In the case firmware doesn't set this register it is
> effectively WB and will typically result in a machine check exception
> when it's accessed.
> 
> Other arches are not currently likely to function correctly seeing they
> don't have any MTRR registers to fall back on.
> 
> To solve this, add an argument to arch_add_memory() to explicitly
> set the pgprot value to a specific value.
> 
> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a
> simple change to pass the pgprot_t down to their respective functions
> which set up the page tables. For x86_32, set the page tables explicitly
> using _set_memory_prot() (seeing they are already mapped). For sh, reject
> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
> sh doesn't support ZONE_DEVICE anyway.
> 
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>

OK, this is less code churn than I expected. Having pgprot as an implcit
parameter de-facto is a bit fragile though. Should we add a WARN_ON_ONCE
(e.g. into the add_pages to catch all arches) for value 0?

Other than that
Acked-by: Michal Hocko <mhocko@suse.com>

> ---
>  arch/arm64/mm/mmu.c            | 3 ++-
>  arch/ia64/mm/init.c            | 4 ++++
>  arch/powerpc/mm/mem.c          | 3 ++-
>  arch/s390/mm/init.c            | 2 +-
>  arch/sh/mm/init.c              | 3 +++
>  arch/x86/mm/init_32.c          | 5 +++++
>  arch/x86/mm/init_64.c          | 2 +-
>  include/linux/memory_hotplug.h | 2 ++
>  mm/memory_hotplug.c            | 2 +-
>  mm/memremap.c                  | 6 +++---
>  10 files changed, 24 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 3320406579c3..9b214b0d268f 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -1058,7 +1058,8 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
>  
>  	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
> -			     size, PAGE_KERNEL, __pgd_pgtable_alloc, flags);
> +			     size, modifiers->pgprot, __pgd_pgtable_alloc,
> +			     flags);
>  
>  	memblock_clear_nomap(start, size);
>  
> diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
> index daf438e08b96..5fd6ae4929c9 100644
> --- a/arch/ia64/mm/init.c
> +++ b/arch/ia64/mm/init.c
> @@ -677,6 +677,10 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	int ret;
>  
>  	ret = __add_pages(nid, start_pfn, nr_pages, modifiers);
> +	if (modifiers->pgprot != PAGE_KERNEL)
> +		return -EINVAL;
> +
> +	ret = __add_pages(nid, start_pfn, nr_pages, restrictions);
>  	if (ret)
>  		printk("%s: Problem encountered in __add_pages() as ret=%d\n",
>  		       __func__,  ret);
> diff --git a/arch/powerpc/mm/mem.c b/arch/powerpc/mm/mem.c
> index 631ee684721f..fddeaee53198 100644
> --- a/arch/powerpc/mm/mem.c
> +++ b/arch/powerpc/mm/mem.c
> @@ -137,7 +137,8 @@ int __ref arch_add_memory(int nid, u64 start, u64 size,
>  	resize_hpt_for_hotplug(memblock_phys_mem_size());
>  
>  	start = (unsigned long)__va(start);
> -	rc = create_section_mapping(start, start + size, nid, PAGE_KERNEL);
> +	rc = create_section_mapping(start, start + size, nid,
> +				    modifiers->pgprot);
>  	if (rc) {
>  		pr_warn("Unable to create mapping for hot added memory 0x%llx..0x%llx: %d\n",
>  			start, start + size, rc);
> diff --git a/arch/s390/mm/init.c b/arch/s390/mm/init.c
> index ef19522ddad2..c65fb33f6a89 100644
> --- a/arch/s390/mm/init.c
> +++ b/arch/s390/mm/init.c
> @@ -277,7 +277,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	if (WARN_ON_ONCE(modifiers->altmap))
>  		return -EINVAL;
>  
> -	rc = vmem_add_mapping(start, size, PAGE_KERNEL);
> +	rc = vmem_add_mapping(start, size, modifiers->pgprot);
>  	if (rc)
>  		return rc;
>  
> diff --git a/arch/sh/mm/init.c b/arch/sh/mm/init.c
> index 7e64f42fb570..7071dc5bd2e4 100644
> --- a/arch/sh/mm/init.c
> +++ b/arch/sh/mm/init.c
> @@ -412,6 +412,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	unsigned long nr_pages = size >> PAGE_SHIFT;
>  	int ret;
>  
> +	if (modifiers->pgprot != PAGE_KERNEL)
> +		return -EINVAL;
> +
>  	/* We only have ZONE_NORMAL, so this is easy.. */
>  	ret = __add_pages(nid, start_pfn, nr_pages, modifiers);
>  	if (unlikely(ret))
> diff --git a/arch/x86/mm/init_32.c b/arch/x86/mm/init_32.c
> index 630d8a36fcd7..737da0dbc0d5 100644
> --- a/arch/x86/mm/init_32.c
> +++ b/arch/x86/mm/init_32.c
> @@ -857,6 +857,11 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  {
>  	unsigned long start_pfn = start >> PAGE_SHIFT;
>  	unsigned long nr_pages = size >> PAGE_SHIFT;
> +	int ret;
> +
> +	ret = _set_memory_prot(start, nr_pages, modifiers->pgprot);
> +	if (ret)
> +		return ret;
>  
>  	return __add_pages(nid, start_pfn, nr_pages, modifiers);
>  }
> diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
> index 17ea0bfc0b83..cc9eb45ad120 100644
> --- a/arch/x86/mm/init_64.c
> +++ b/arch/x86/mm/init_64.c
> @@ -868,7 +868,7 @@ int arch_add_memory(int nid, u64 start, u64 size,
>  	unsigned long start_pfn = start >> PAGE_SHIFT;
>  	unsigned long nr_pages = size >> PAGE_SHIFT;
>  
> -	init_memory_mapping(start, start + size, PAGE_KERNEL);
> +	init_memory_mapping(start, start + size, modifiers->pgprot);
>  
>  	return add_pages(nid, start_pfn, nr_pages, modifiers);
>  }
> diff --git a/include/linux/memory_hotplug.h b/include/linux/memory_hotplug.h
> index 2152efae2f4b..00dfb2016737 100644
> --- a/include/linux/memory_hotplug.h
> +++ b/include/linux/memory_hotplug.h
> @@ -56,9 +56,11 @@ enum {
>  /*
>   * Restrictions for the memory hotplug:
>   * altmap: alternative allocator for memmap array
> + * pgprot: page protection flags to apply to newly added page tables
>   */
>  struct mhp_modifiers {
>  	struct vmem_altmap *altmap;
> +	pgprot_t pgprot;
>  };
>  
>  /*
> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
> index 1bb3f92e087d..0888f821af06 100644
> --- a/mm/memory_hotplug.c
> +++ b/mm/memory_hotplug.c
> @@ -1027,7 +1027,7 @@ static int online_memory_block(struct memory_block *mem, void *arg)
>   */
>  int __ref add_memory_resource(int nid, struct resource *res)
>  {
> -	struct mhp_modifiers modifiers = {};
> +	struct mhp_modifiers modifiers = {.pgprot = PAGE_KERNEL};
>  	u64 start, size;
>  	bool new_node = false;
>  	int ret;
> diff --git a/mm/memremap.c b/mm/memremap.c
> index e30be8ba706b..45ab4ef0643d 100644
> --- a/mm/memremap.c
> +++ b/mm/memremap.c
> @@ -163,8 +163,8 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
>  		 * We do not want any optional features only our own memmap
>  		 */
>  		.altmap = pgmap_altmap(pgmap),
> +		.pgprot = PAGE_KERNEL,
>  	};
> -	pgprot_t pgprot = PAGE_KERNEL;
>  	int error, is_ram;
>  	bool need_devmap_managed = true;
>  
> @@ -252,8 +252,8 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
>  	if (nid < 0)
>  		nid = numa_mem_id();
>  
> -	error = track_pfn_remap(NULL, &pgprot, PHYS_PFN(res->start), 0,
> -			resource_size(res));
> +	error = track_pfn_remap(NULL, &modifiers.pgprot, PHYS_PFN(res->start),
> +				0, resource_size(res));
>  	if (error)
>  		goto err_pfn_remap;
>  
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
