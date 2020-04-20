Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441241B0CED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T0R4/CgXP81Hk3Lgisrv+AD/IlAfgOp/OScgcVnYmFI=; b=BPemN50aG+lLvgJ0dH66aUhwf
	7HEYUky53ICkRnLQXgMP2F2Ezbz7yQ59n+8/zj+pjVrFzhhbtDM5haAk7w5zIQeddB2KLHg71o3lX
	GTLhLSxB/IPNo/pZXLDHBQpImKfQbbZxpXwDyCiJvk5eExbLmZcSRMfwHlJRYu24LNF+VctdeLDHR
	hUvqxPCwHdlU+v9LfuEnCPCQ09D6XmeHfEiJnlOYNd9onJS988FBAlOBm3R7xWJgz1GhhfDa95Rpt
	GXMISxLBZpxz1rCR3USFW7XaMKoGGCxj6EUxiNrdpCydzyai2PWKx8Qe7EIUpV6BT7E+XHkzstCsk
	OZTKb1NIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQWdr-0004nT-Nl; Mon, 20 Apr 2020 13:39:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQWck-0003dS-Sd
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:38:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 02ACE1FB;
 Mon, 20 Apr 2020 06:38:07 -0700 (PDT)
Received: from [192.168.1.84] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0A1E3F237;
 Mon, 20 Apr 2020 06:38:03 -0700 (PDT)
Subject: Re: [PATCH RESEND] arm64: Map page table of linear map readonly
To: Mark Rutland <mark.rutland@arm.com>
References: <20200417152619.41680-1-steven.price@arm.com>
 <20200417160446.GC9529@lakrids.cambridge.arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <5cf74af9-baef-1582-303a-5b38ce4349ef@arm.com>
Date: Mon, 20 Apr 2020 14:38:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200417160446.GC9529@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_063811_076735_225B2CB7 
X-CRM114-Status: GOOD (  32.92  )
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
Cc: Hsin-Yi Wang <hsinyi@chromium.org>, David Hildenbrand <david@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Pan Zhang <zhangpan26@huawei.com>,
 Steve Capper <steve.capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/2020 17:04, Mark Rutland wrote:
> Hi Steven,
> 
> On Fri, Apr 17, 2020 at 04:26:19PM +0100, Steven Price wrote:
>> It's fairly rare that linear mappings need to be updated, so to improve
>> security we can map the leaf page table entries as read-only, this makes
>> it harder for an attacker to modify the permissions of the linear
>> mappings, while the overhead is low because the linear mappings don't
>> need to be changed frequently. When they do need to be updated we can
>> use fixmaps to create a temporary alternative mapping to do the update.
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
>> ---
>> Resending as I didn't receive any comments on my first posting[1].
>> Anyone have any views as to whether this is a good idea or not?
> 
> TBH, I'm not too keen on this as the direction of travel seems to be
> that we're going to be messing with the linear map more often for things
> like non-coherent DMA (and potentially for carving out VMs etc), and
> this doesn't have a specific threat in mind.

Fair enough - there may indeed be more security benefit modifying the 
linear map to protect parts of the memory rather than protecting the 
page tables themselves. This is why I made it optional because it 
affects the performance trade-offs of other features.

> I do agree that minimizing the necessary permissions seems nice in
> abstract, but I'm not sure that the complexity it adds is worthwhile.
> I'm similarly not all that keen on the stuff we did for KSMA with the
> root of the page tables, but the bulk of that was nice cleanup
> regardless, and it was unconditional so we only had one behaviour to
> maintain.

Obviously this could be simplified by making it unconditional, but I am 
aware that it has performance implications so it seems sensible to at 
least start with a config option in case it affects a particular 
platform/workload excessively.

Thanks for taking a look.

Steve

> Thanks,
> Mark.
> 
>>
>> [1] https://lore.kernel.org/linux-arm-kernel/20200306173217.44372-1-steven.price@arm.com/
>>
>>   arch/arm64/Kconfig              |  9 ++++++++
>>   arch/arm64/include/asm/fixmap.h | 20 ++++++++++++++++-
>>   arch/arm64/mm/mmu.c             | 38 +++++++++++++++++++++++++++++++--
>>   arch/arm64/mm/pageattr.c        | 36 ++++++++++++++++++++++++++++++-
>>   4 files changed, 99 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
>> index 40fb05d96c60..138d8b50d894 100644
>> --- a/arch/arm64/Kconfig
>> +++ b/arch/arm64/Kconfig
>> @@ -1213,6 +1213,15 @@ config RODATA_FULL_DEFAULT_ENABLED
>>   	  This requires the linear region to be mapped down to pages,
>>   	  which may adversely affect performance in some cases.
>>   
>> +config LINEAR_PGTABLE_RO
>> +	bool "Apply r/o permissions to page tables of linear mapping"
>> +	help
>> +	  Apply read-only attributes to the page tables that make up the
>> +	  the linear mapping. This prevents the linear page tables from being
>> +	  inadvertently modified.
>> +
>> +	  This requires rodata=on (or RODATA_FULL_DEFAULT_ENABLED).
>> +
>>   config ARM64_SW_TTBR0_PAN
>>   	bool "Emulate Privileged Access Never using TTBR0_EL1 switching"
>>   	help
>> diff --git a/arch/arm64/include/asm/fixmap.h b/arch/arm64/include/asm/fixmap.h
>> index f987b8a8f325..55bf08151d73 100644
>> --- a/arch/arm64/include/asm/fixmap.h
>> +++ b/arch/arm64/include/asm/fixmap.h
>> @@ -67,6 +67,12 @@ enum fixed_addresses {
>>   	FIX_ENTRY_TRAMP_TEXT,
>>   #define TRAMP_VALIAS		(__fix_to_virt(FIX_ENTRY_TRAMP_TEXT))
>>   #endif /* CONFIG_UNMAP_KERNEL_AT_EL0 */
>> +
>> +#ifdef CONFIG_LINEAR_PGTABLE_RO
>> +	FIX_LINEAR_RO_BEGIN,
>> +	FIX_LINEAR_RO_END = FIX_LINEAR_RO_BEGIN + NR_CPUS - 1,
>> +#endif
>> +
>>   	__end_of_permanent_fixed_addresses,
>>   
>>   	/*
>> @@ -77,7 +83,15 @@ enum fixed_addresses {
>>   #define FIX_BTMAPS_SLOTS	7
>>   #define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
>>   
>> +#ifdef CONFIG_LINEAR_PGTABLE_RO
>> +	/*
>> +	 * Share the space with the LINEAR_RO area as during early boot, the
>> +	 * LINEAR_RO area isn't needed
>> +	 */
>> +	FIX_BTMAP_END = FIX_LINEAR_RO_BEGIN,
>> +#else
>>   	FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
>> +#endif
>>   	FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
>>   
>>   	/*
>> @@ -89,9 +103,13 @@ enum fixed_addresses {
>>   	FIX_PUD,
>>   	FIX_PGD,
>>   
>> -	__end_of_fixed_addresses
>> +	___end_of_fixed_addresses
>>   };
>>   
>> +static const enum fixed_addresses __end_of_fixed_addresses =
>> +	___end_of_fixed_addresses > __end_of_permanent_fixed_addresses ?
>> +	___end_of_fixed_addresses : __end_of_permanent_fixed_addresses;
>> +
>>   #define FIXADDR_SIZE	(__end_of_permanent_fixed_addresses << PAGE_SHIFT)
>>   #define FIXADDR_START	(FIXADDR_TOP - FIXADDR_SIZE)
>>   
>> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
>> index a374e4f51a62..4f9d14b584a5 100644
>> --- a/arch/arm64/mm/mmu.c
>> +++ b/arch/arm64/mm/mmu.c
>> @@ -21,6 +21,7 @@
>>   #include <linux/fs.h>
>>   #include <linux/io.h>
>>   #include <linux/mm.h>
>> +#include <linux/pagewalk.h>
>>   #include <linux/vmalloc.h>
>>   
>>   #include <asm/barrier.h>
>> @@ -456,6 +457,34 @@ void __init mark_linear_text_alias_ro(void)
>>   			    PAGE_KERNEL_RO);
>>   }
>>   
>> +#ifdef CONFIG_LINEAR_PGTABLE_RO
>> +static int __init mark_linear_pmd_ro(pmd_t *pmd, unsigned long addr,
>> +				     unsigned long next, struct mm_walk *walk)
>> +{
>> +	phys_addr_t pmd_phys = pte_offset_phys(pmd, 0);
>> +
>> +	__map_memblock(walk->mm->pgd, pmd_phys, pmd_phys + PAGE_SIZE,
>> +		       PAGE_KERNEL_RO, NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS);
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct mm_walk_ops mark_linear_pg_ro_ops __initconst = {
>> +	.pmd_entry = mark_linear_pmd_ro,
>> +};
>> +
>> +/*
>> + * Remove the write permission from the leaf page tables of the linear map
>> + */
>> +void __init mark_linear_pg_ro(void)
>> +{
>> +	down_read(&init_mm.mmap_sem);
>> +	walk_page_range_novma(&init_mm, PAGE_OFFSET, PAGE_END,
>> +			      &mark_linear_pg_ro_ops, init_mm.pgd, NULL);
>> +	up_read(&init_mm.mmap_sem);
>> +}
>> +#endif
>> +
>>   static void __init map_mem(pgd_t *pgdp)
>>   {
>>   	phys_addr_t kernel_start = __pa_symbol(_text);
>> @@ -503,7 +532,7 @@ static void __init map_mem(pgd_t *pgdp)
>>   	 * so we should avoid them here.
>>   	 */
>>   	__map_memblock(pgdp, kernel_start, kernel_end,
>> -		       PAGE_KERNEL, NO_CONT_MAPPINGS);
>> +		       PAGE_KERNEL, flags | NO_CONT_MAPPINGS);
>>   	memblock_clear_nomap(kernel_start, kernel_end - kernel_start);
>>   
>>   #ifdef CONFIG_KEXEC_CORE
>> @@ -679,6 +708,11 @@ void __init paging_init(void)
>>   	cpu_replace_ttbr1(lm_alias(swapper_pg_dir));
>>   	init_mm.pgd = swapper_pg_dir;
>>   
>> +#ifdef CONFIG_LINEAR_PGTABLE_RO
>> +	if (rodata_full)
>> +		mark_linear_pg_ro();
>> +#endif
>> +
>>   	memblock_free(__pa_symbol(init_pg_dir),
>>   		      __pa_symbol(init_pg_end) - __pa_symbol(init_pg_dir));
>>   
>> @@ -1187,8 +1221,8 @@ void __set_fixmap(enum fixed_addresses idx,
>>   		set_pte(ptep, pfn_pte(phys >> PAGE_SHIFT, flags));
>>   	} else {
>>   		pte_clear(&init_mm, addr, ptep);
>> -		flush_tlb_kernel_range(addr, addr+PAGE_SIZE);
>>   	}
>> +	flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
>>   }
>>   
>>   void *__init fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
>> diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
>> index 250c49008d73..52d34c06656c 100644
>> --- a/arch/arm64/mm/pageattr.c
>> +++ b/arch/arm64/mm/pageattr.c
>> @@ -7,6 +7,7 @@
>>   #include <linux/module.h>
>>   #include <linux/sched.h>
>>   #include <linux/vmalloc.h>
>> +#include <linux/uaccess.h>
>>   
>>   #include <asm/pgtable.h>
>>   #include <asm/set_memory.h>
>> @@ -19,6 +20,33 @@ struct page_change_data {
>>   
>>   bool rodata_full __ro_after_init = IS_ENABLED(CONFIG_RODATA_FULL_DEFAULT_ENABLED);
>>   
>> +#ifdef CONFIG_LINEAR_PGTABLE_RO
>> +static void set_linear_pte_range(pte_t *ptep, pte_t pte)
>> +{
>> +	unsigned long flags;
>> +	unsigned int idx;
>> +	unsigned long addr;
>> +
>> +	local_irq_save(flags);
>> +	preempt_disable();
>> +
>> +	/* During early boot we use FIX_PTE as we don't need a per-CPU slot */
>> +	if (system_state < SYSTEM_SCHEDULING)
>> +		idx = FIX_PTE;
>> +	else
>> +		idx = FIX_LINEAR_RO_BEGIN + smp_processor_id();
>> +
>> +	addr = virt_to_phys(ptep);
>> +	set_fixmap(idx, addr);
>> +	ptep = (pte_t *)(__fix_to_virt(idx) + (addr & ~PAGE_MASK));
>> +	set_pte(ptep, pte);
>> +	clear_fixmap(idx);
>> +
>> +	preempt_enable();
>> +	local_irq_restore(flags);
>> +}
>> +#endif
>> +
>>   static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
>>   {
>>   	struct page_change_data *cdata = data;
>> @@ -27,7 +55,13 @@ static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
>>   	pte = clear_pte_bit(pte, cdata->clear_mask);
>>   	pte = set_pte_bit(pte, cdata->set_mask);
>>   
>> -	set_pte(ptep, pte);
>> +#ifdef CONFIG_LINEAR_PGTABLE_RO
>> +	if (addr >= PAGE_OFFSET)
>> +		set_linear_pte_range(ptep, pte);
>> +	else
>> +#endif
>> +		set_pte(ptep, pte);
>> +
>>   	return 0;
>>   }
>>   
>> -- 
>> 2.20.1
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
