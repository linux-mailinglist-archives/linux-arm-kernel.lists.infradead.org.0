Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDA71F0F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:49:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpOU/p3Z73Qjzhhm5wVOaHVXxiYaRLi12GapEdOWj+o=; b=ZBZ0e8wA6vltx4
	5s1lreFI/DBVRGKALiELeumEIjFmE02EET3Usxjazdt/+T/Myzn6xJhwXhkzeHfNuWk0y+mjHZ211
	STywYRKV/ZWdbP8B+uf73QpzCI6E+7HoVHBJEbLJ1sjHzTc9oZ5eFJVB79KdeedxwET4e+ju78L6p
	YRCPUHL6kAVZ82hcSlx0XZdmBNw4qOzSAXBVeiesn/od9rkoYAjLvfFinIAVcq781tfPzgOmG032f
	Z3KEaOkhOYlJSOcjqPbagDmzQ7G9aYNxQumcGWOseKZZP0HfpoKHmsUtJIkPSzhrWN0qRQut8DDnn
	2k8RVfv3WpN7m+xIQDsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQsPW-00006Y-MW; Wed, 15 May 2019 11:49:26 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQsPO-00005q-HT
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:49:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3F25980D;
 Wed, 15 May 2019 04:49:17 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4A7DC3F71E;
 Wed, 15 May 2019 04:49:14 -0700 (PDT)
Date: Wed, 15 May 2019 12:49:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3 4/4] arm64/mm: Enable memory hot remove
Message-ID: <20190515114911.GC23983@lakrids.cambridge.arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-5-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557824407-19092-5-git-send-email-anshuman.khandual@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_044918_595427_3C6B52F4 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: cai@lca.pw, mhocko@suse.com, ira.weiny@intel.com, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, james.morse@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, akpm@linux-foundation.org, osalvador@suse.de,
 mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anshuman,

On Tue, May 14, 2019 at 02:30:07PM +0530, Anshuman Khandual wrote:
> Memory removal from an arch perspective involves tearing down two different
> kernel based mappings i.e vmemmap and linear while releasing related page
> table and any mapped pages allocated for given physical memory range to be
> removed.
> 
> Define a common kernel page table tear down helper remove_pagetable() which
> can be used to unmap given kernel virtual address range. In effect it can
> tear down both vmemap or kernel linear mappings. This new helper is called
> from both vmemamp_free() and ___remove_pgd_mapping() during memory removal.
> 
> For linear mapping there are no actual allocated pages which are mapped to
> create the translation. Any pfn on a given entry is derived from physical
> address (__va(PA) --> PA) whose linear translation is to be created. They
> need not be freed as they were never allocated in the first place. But for
> vmemmap which is a real virtual mapping (like vmalloc) physical pages are
> allocated either from buddy or memblock which get mapped in the kernel page
> table. These allocated and mapped pages need to be freed during translation
> tear down. But page table pages need to be freed in both these cases.

As previously discussed, we should only hot-remove memory which was
hot-added, so we shouldn't encounter memory allocated from memblock.

> These mappings need to be differentiated while deciding if a mapped page at
> any level i.e [pte|pmd|pud]_page() should be freed or not. Callers for the
> mapping tear down process should pass on 'sparse_vmap' variable identifying
> kernel vmemmap mappings.

I think that you can simplify the paragraphs above down to:

  The arch code for hot-remove must tear down portions of the linear map
  and vmemmap corresponding to memory being removed. In both cases the
  page tables mapping these regions must be freed, and when sparse
  vmemmap is in use the memory backing the vmemmap must also be freed.

  This patch adds a new remove_pagetable() helper which can be used to
  tear down either region, and calls it from vmemmap_free() and
  ___remove_pgd_mapping(). The sparse_vmap argument determines whether
  the backing memory will be freed.

Could you add a paragraph describing when we can encounter partial
tables (for which we need the p??_none() checks? IIUC that's not just
for cleaning up a failed hot-add, and it would be good to call that out.

> While here update arch_add_mempory() to handle __add_pages() failures by
> just unmapping recently added kernel linear mapping. Now enable memory hot
> remove on arm64 platforms by default with ARCH_ENABLE_MEMORY_HOTREMOVE.

Nit: s/arch_add_mempory/arch_add_memory/.

[...]

> +#if (CONFIG_PGTABLE_LEVELS > 2)
> +static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr)
> +{
> +	struct page *page;
> +	int i;
> +
> +	for (i = 0; i < PTRS_PER_PMD; i++) {
> +		if (!pmd_none(pmdp[i]))
> +			return;
> +	}
> +
> +	page = pud_page(*pudp);
> +	pud_clear(pudp);
> +	__flush_tlb_kernel_pgtable(addr);
> +	free_hotplug_pgtable_page(page);
> +}
> +#else
> +static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr) { }
> +#endif

Can we fold the check in and remove the ifdeferry? e.g.

static void free_pmd_table(pmd_t *pmdp, pud_t *pudp, unsigned long addr)
{
	struct page *page;
	int i;

	if (CONFIG_PGTABLE_LEVELS <= 2)
		return;
	
	...
}

... that would ensure that we always got build coverage here, and
minimize duplication. We do similar in map_kernel() and
early_fixmap_init() today.

Likewise for the other levels.

For arm64, the general policy is to use READ_ONCE() when reading a page
table entry (even if not strictly necessary), so please do so
consistently.

[...]

> +static void
> +remove_pte_table(pmd_t *pmdp, unsigned long addr,
> +			unsigned long end, bool sparse_vmap)
> +{
> +	struct page *page;
> +	pte_t *ptep;
> +	unsigned long start = addr;
> +
> +	for (; addr < end; addr += PAGE_SIZE) {
> +		ptep = pte_offset_kernel(pmdp, addr);
> +		if (!pte_present(*ptep))
> +			continue;
> +
> +		if (sparse_vmap) {
> +			page = pte_page(READ_ONCE(*ptep));
> +			free_hotplug_page_range(page, PAGE_SIZE);
> +		}
> +		pte_clear(&init_mm, addr, ptep);
> +	}
> +	flush_tlb_kernel_range(start, end);
> +}

Please use a temporary pte variable here, e.g.

static void remove_pte_table(pmd_t *pmdp, unsigned long addr,
			     unsigned long end, bool sparse_vmap)
{
	unsigned long start = addr;
	struct page *page;
	pte_t *ptep, pte;

	for (; addr < end; addr += PAGE_SIZE) {
		ptep = pte_offset_kernel(pmdp, addr);
		pte = READ_ONCE(*ptep);

		if (!pte_present(pte))
			continue;
		
		if (sparse_vmap) {
			page = pte_page(pte);
			free_hotplug_page_range(page, PAGE_SIZE);
		}

		pte_clear(&init_mm, addr, ptep);
	}

	flush_tlb_kernel_range(start, end);
}

Likewise for the other levels.

[...]

> +static void
> +remove_pagetable(unsigned long start, unsigned long end, bool sparse_vmap)
> +{
> +	unsigned long addr, next;
> +	pud_t *pudp_base;
> +	pgd_t *pgdp;
> +
> +	spin_lock(&init_mm.page_table_lock);

It would be good to explain why we need to take the ptl here.

IIUC that shouldn't be necessary for the linear map. Am I mistaken?

Is there a specific race when tearing down the vmemmap?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
