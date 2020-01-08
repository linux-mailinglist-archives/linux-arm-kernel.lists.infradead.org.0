Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2671341E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+57PZsNZd+5bawTOzJEztpTTeukv4MLx+z/U8B8aq+U=; b=sdGJQO5cvhTQvV
	FmQ7eVYY8n8m5LzGXjgijdRBGZxzC3wG8K2ygEetGpC1nGkd0jSVzuyIaCHHeJlPZb+IAu0PRx9t+
	9ppGWuJkRz4sgYPQbr02eDFKtqKSoUot3rB5g7VXJi/q/Hz78C7xLkMVuMhd6bSw/d2ITptunMW7d
	nHq8hGU7FFm6PyB2wTC/F2R+Wchcyrh4/MnPChoXuxE4UWH7eBR465fatPfmM4BioWDuSAymnbWPm
	HGx0W4aAGa8Ef9OKTG7Keyl6KNPEKyaQXxIKUZFSPPkc17hGD8ZkpqKIWSpYkHg3URlbM/esI44jK
	6DK+FzNoaa6lGbACcX3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAdB-0002lL-VS; Wed, 08 Jan 2020 12:40:13 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAcz-0002J2-8C
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578487199;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=ag4Y3uQ6wSU+wS/gSJqJd9yiYEDF26pcIq7nUxKu9Bk=;
 b=eacHwZ7f19/x2d24ctEjPzJgmUtVeVh5/vbSMvZY83BrmQL1aZIF+87D+LRaeTiQ8lVtxU
 0f96a6Ko3BltWPP1oesDL0C4xdcq2k4PmX8B5P/t7uMOdE5YtEMRhOA9rvhnbO3SL0U8Eq
 GK1bV/weTanFPpN7Mu+l04YuAu+dgqs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-6tFXsL8iP9eKXMcate7r1w-1; Wed, 08 Jan 2020 07:39:56 -0500
X-MC-Unique: 6tFXsL8iP9eKXMcate7r1w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5EA4618B9FC3;
 Wed,  8 Jan 2020 12:39:53 +0000 (UTC)
Received: from [10.36.117.90] (ovpn-117-90.ams2.redhat.com [10.36.117.90])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E9E1F9CA3;
 Wed,  8 Jan 2020 12:39:48 +0000 (UTC)
Subject: Re: [PATCH v2 7/8] mm/memory_hotplug: Add pgprot_t to mhp_modifiers
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-ia64@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Dan Williams <dan.j.williams@intel.com>,
 Michal Hocko <mhocko@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
References: <20200107205959.7575-1-logang@deltatee.com>
 <20200107205959.7575-8-logang@deltatee.com>
From: David Hildenbrand <david@redhat.com>
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
Organization: Red Hat GmbH
Message-ID: <f4c11a37-91dd-a366-7683-4e4cd4bd7e99@redhat.com>
Date: Wed, 8 Jan 2020 13:39:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200107205959.7575-8-logang@deltatee.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_044001_367805_7597BB81 
X-CRM114-Status: GOOD (  26.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Eric Badger <ebadger@gigaio.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Michal Hocko <mhocko@suse.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07.01.20 21:59, Logan Gunthorpe wrote:
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

You're adding a parameter indirectly by adding it to the structure.
Maybe "provide a way to specify the pgprot value explicitly to
arch_add_memory()"

> 
> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a

s/is/need/

> simple change to pass the pgprot_t down to their respective functions
> which set up the page tables. For x86_32, set the page tables explicitly

"page table protection" ?

> using _set_memory_prot() (seeing they are already mapped). For sh, reject
> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
> sh doesn't support ZONE_DEVICE anyway.
> 
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
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

... maybe better "if (WARN_ON_ONCE(...))"
[...]

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

I think we usually use spaces like

= { .pgprot = PAGE_KERNEL };

t480s: ~/git/linux virtio-mem-v1 $ git grep "= {\." | wc -l
978
t480s: ~/git/linux virtio-mem-v1 $ git grep "= { " | wc -l
35447

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
> 

The !arch code looks good to me (besides I would prefer "params" instead
of "modifiers").

Acked-by: David Hildenbrand <david@redhat.com>


-- 
Thanks,

David / dhildenb


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
