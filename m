Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7276D37A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 04:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U29odGhvyXYWyo9PYaRU9rbJ3PXZgkKoWze35Uf3n9I=; b=XX9Xn3Wzm0pRct
	Vl7HoSt0g1cnJp5fvPjC4YxY/P915tYW07+tvs+tei11UYnzXhv4dM7GLARTIMvyoB69z7bDHu5im
	T+DInOXJwl8s4PAN4bxPbMtiTufo8hbrbR7AJoqo3wamqI5FY5GJuBjwiDwP5huhE9ROIpaHxNYvx
	TA3hdQkOXX7QP1qNN4U5RUlqEm6hOiwus+7vmWWdNJBNBak7p1TcSfhQJgOMOEF2zgd9bC5ejrYae
	EFOfSwhY5M47XWgS0mDwq3bhpHWGXmqDL2lymaKcGOKc+yIqPDM62O9YIfufbhIldX802SriXYdm3
	1sHdVsgkD42xWaZg59/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIl6c-00063W-8h; Fri, 11 Oct 2019 02:56:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIl6U-00061u-QA
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 02:56:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 52B0028;
 Thu, 10 Oct 2019 19:56:16 -0700 (PDT)
Received: from [10.162.41.129] (p8cg001049571a15.blr.arm.com [10.162.41.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4AD603F71A; Thu, 10 Oct 2019 19:56:09 -0700 (PDT)
Subject: Re: [PATCH V9 2/2] arm64/mm: Enable memory hot remove
To: Catalin Marinas <catalin.marinas@arm.com>
References: <1570609308-15697-1-git-send-email-anshuman.khandual@arm.com>
 <1570609308-15697-3-git-send-email-anshuman.khandual@arm.com>
 <20191010113433.GI28269@mbp>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <f51cdb20-ddc4-4fb7-6c45-791d2e1e690c@arm.com>
Date: Fri, 11 Oct 2019 08:26:32 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20191010113433.GI28269@mbp>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_195630_936678_A46C2254 
X-CRM114-Status: GOOD (  22.29  )
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
Cc: mark.rutland@arm.com, david@redhat.com, linux-mm@kvack.org,
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

On 10/10/2019 05:04 PM, Catalin Marinas wrote:
> Hi Anshuman,
> 
> On Wed, Oct 09, 2019 at 01:51:48PM +0530, Anshuman Khandual wrote:
>> +static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
>> +				    unsigned long end, bool free_mapped)
>> +{
>> +	unsigned long next;
>> +	pmd_t *pmdp, pmd;
>> +
>> +	do {
>> +		next = pmd_addr_end(addr, end);
>> +		pmdp = pmd_offset(pudp, addr);
>> +		pmd = READ_ONCE(*pmdp);
>> +		if (pmd_none(pmd))
>> +			continue;
>> +
>> +		WARN_ON(!pmd_present(pmd));
>> +		if (pmd_sect(pmd)) {
>> +			pmd_clear(pmdp);
>> +			flush_tlb_kernel_range(addr, next);
> 
> The range here could be a whole PMD_SIZE. Since we are invalidating a
> single block entry, one TLBI should be sufficient:
> 
> 			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);

Sure, will change.

> 
>> +			if (free_mapped)
>> +				free_hotplug_page_range(pmd_page(pmd),
>> +							PMD_SIZE);
>> +			continue;
>> +		}
>> +		WARN_ON(!pmd_table(pmd));
>> +		unmap_hotplug_pte_range(pmdp, addr, next, free_mapped);
>> +	} while (addr = next, addr < end);
>> +}
>> +
>> +static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
>> +				    unsigned long end, bool free_mapped)
>> +{
>> +	unsigned long next;
>> +	pud_t *pudp, pud;
>> +
>> +	do {
>> +		next = pud_addr_end(addr, end);
>> +		pudp = pud_offset(pgdp, addr);
>> +		pud = READ_ONCE(*pudp);
>> +		if (pud_none(pud))
>> +			continue;
>> +
>> +		WARN_ON(!pud_present(pud));
>> +		if (pud_sect(pud)) {
>> +			pud_clear(pudp);
>> +			flush_tlb_kernel_range(addr, next);
> 			^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 			flush_tlb_kernel_range(addr, addr + PAGE_SIZE);

Will change.

> 
> [...]
>> +static void free_empty_pte_table(pmd_t *pmdp, unsigned long addr,
>> +				 unsigned long end, unsigned long floor,
>> +				 unsigned long ceiling)
>> +{
>> +	pte_t *ptep, pte;
>> +	unsigned long i, start = addr;
>> +
>> +	do {
>> +		ptep = pte_offset_kernel(pmdp, addr);
>> +		pte = READ_ONCE(*ptep);
>> +		WARN_ON(!pte_none(pte));
>> +	} while (addr += PAGE_SIZE, addr < end);
> 
> So this loop is just a sanity check (pte clearing having been done by
> the unmap loops). That's fine, maybe a comment for future reference.

Sure, will add.
> 
>> +
>> +	if (!pgtable_range_aligned(start, end, floor, ceiling, PMD_MASK))
>> +		return;
>> +
>> +	ptep = pte_offset_kernel(pmdp, 0UL);
>> +	for (i = 0; i < PTRS_PER_PTE; i++) {
>> +		if (!pte_none(READ_ONCE(ptep[i])))
>> +			return;
>> +	}
> 
> We could do with a comment for this loop along the lines of:
> 
> 	Check whether we can free the pte page if the rest of the
> 	entries are empty. Overlap with other regions have been handled
> 	by the floor/ceiling check.

Sure, will add.

> 
> Apart from the comments above, the rest of the patch looks fine. Once
> fixed:
> 
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> 
> Mark Rutland mentioned at some point that, as a preparatory patch to
> this series, we'd need to make sure we don't hot-remove memory already
> given to the kernel at boot. Any plans here?

Hmm, this series just enables platform memory hot remove as required from
generic memory hotplug framework. The path here is triggered either from
remove_memory() or __remove_memory() which takes physical memory range
arguments like (nid, start, size) and do the needful. arch_remove_memory()
should never be required to test given memory range for anything including
being part of the boot memory.

IIUC boot memory added to system with memblock_add() lose all it's identity
after the system is up and running. In order to reject any attempt to hot
remove boot memory, platform needs to remember all those memory that came
early in the boot and then scan through it during arch_remove_memory().

Ideally, it is the responsibility of [_]remove_memory() callers like ACPI
driver, DAX etc to make sure they never attempt to hot remove a memory
range, which never got hot added by them in the first place. Also, unlike
/sys/devices/system/memory/probe there is no 'unprobe' interface where the
user can just trigger boot memory removal. Hence, unless there is a bug in
ACPI, DAX or other callers, there should never be any attempt to hot remove
boot memory in the first place.

> 
> Thanks.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
