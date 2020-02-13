Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACAD15B7E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 04:46:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iZPstosocmS691fa011VRezq3fJ9NeYzexXOdRMzvy8=; b=gg8
	q9/botX5p5gQwDfTDHPUCp42+UtHyDLqhUrvF8ko2lHvvchW/YyTOVGwAiyu99KIQ9emroOQnXeuE
	JUgCnhn5p4+lwHKXTD6+qR336+LRFZMYhyueXviOK1B5kAp8vw58ORiWDq4WNuly7RtUhIndLuJJJ
	8Wml994xffxH40fNSBanODZOX+638hOhl48Yvi3JXJVX8ZUwFuAu0+flcDBmPTDdhLrQ59cXx1JdU
	Q45zyefivki+nmHiBv6tzYYPKdGEf97Ylrvl20UDfxv5FEouuXOFRBBYhqlnCm4ays70RLb7ByRRH
	KbIzlom/GLzOFFUZtxRZUoJq7xvRZFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j25Rn-00046r-8j; Thu, 13 Feb 2020 03:45:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j25Rf-00045y-55
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 03:45:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB7A030E;
 Wed, 12 Feb 2020 19:45:40 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.114])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3F4533F68F;
 Wed, 12 Feb 2020 19:45:32 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will@kernel.org
Subject: [PATCH V13 0/2] arm64/mm: Enable memory hot remove
Date: Thu, 13 Feb 2020 09:15:30 +0530
Message-Id: <1581565532-27916-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_194543_286312_DE5C19D8 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, ira.weiny@intel.com, david@redhat.com,
 mgorman@techsingularity.net, steve.capper@arm.com, Robin.Murphy@arm.com,
 steven.price@arm.com, broonie@kernel.org, cai@lca.pw, ard.biesheuvel@arm.com,
 arunks@codeaurora.org, dan.j.williams@intel.com, anshuman.khandual@arm.com,
 logang@deltatee.com, valentin.schneider@arm.com, suzuki.poulose@arm.com,
 osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables memory hot remove functionality on arm64 platform. This
is based on Linux 5.6-rc1 and particularly deals with a problem caused when
boot memory is attempted to be removed.

On arm64 platform, it is essential to ensure that the boot time discovered
memory couldn't be hot-removed so that,

1. FW data structures used across kexec are idempotent
   e.g. the EFI memory map.

2. linear map or vmemmap would not have to be dynamically split, and can
   map boot memory at a large granularity

3. Avoid penalizing paths that have to walk page tables, where we can be
   certain that the memory is not hot-removable

This problem has been extensively discussed previously during V10 version
which can be found here (https://lkml.org/lkml/2019/10/11/233). Never the
less this series now adds memory hotplug notifier to prevent boot memory
offlining and thus hot remove. It also fixes a potential race condition
which might happen while trying to dump kernel page table entries along
with a concurrent memory hot remove operation.

Concurrent vmalloc() and hot-remove conflict:

As pointed out earlier on the V5 thread [2] there can be potential conflict
between concurrent vmalloc() and memory hot-remove operation. The problem here
is caused by inadequate locking in vmalloc() which protects installation of a
page table page but not the page table walk or the leaf entry modification.

Now free_empty_tables() and it's children functions take into account a maximum
possible range on which it operates as a floor-ceiling boundary. This makes sure
that no page table page is freed unless its fully within the maximum possible
range as decided by the caller.

Testing:

Memory hot remove has been tested on arm64 for 4K, 16K, 64K page config
options with all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS
combinations.

Changes in V13:

- Rebased [PATCH 1/2] on 5.6-rc1 as arm64 PTDUMP_DEBUGFS code has changed since V12

Changes in V12: (https://lkml.org/lkml/2020/1/16/46)

- Dropped all changes introduced earlier in V11
- Added a memory hotplug notifier to prevent boot memory offlining per David

Changes in V11: (https://lkml.org/lkml/2020/1/9/1159)

- Bifurcated check_hotplug_memory_range() and carved out check_hotremove_memory_range()
- Introduced arch_memory_removable() call back while validating hot remove range
- Introduced memblock flag MEMBLOCK_BOOT in order to track boot memory at runtime
- Marked all boot memory ranges on arm64 with MEMBLOCK_BOOT flag while processing FDT
- Overridden arch_memory_removable() on arm64 to reject boot memory removal requests
- Added an WARN_ON() in arch_remove_memory() when it receives boot memory removal request
- Added arch_memory_removable() related updates in the commit message for core hot remove

Changes in V10: (https://lkml.org/lkml/2019/10/11/233)

- Perform just single TLBI invalidation for PMD or PUD block mappings per Catalin
- Added comment in free_empty_pte_table() while validating PTE level clears per Catalin
- Added comments in free_empty_pxx_table() while checking for non-clear entries per Catalin

Changes in V9: (https://lkml.org/lkml/2019/10/9/131)

- Dropped ACK tags from Steve and David as this series has changed since
- Dropped WARN(!page) in free_hotplug_page_range() per Matthew Wilcox
- Replaced pxx_page() with virt_to_page() in free_pxx_table() per Catalin
- Dropped page and call virt_to_page() in free_hotplug_pgtable_page()
- Replaced sparse_vmap with free_mapped per Catalin
- Dropped ternary operators in all unmap_hotplug_pxx_range() per Catalin
- Collapsed all free_pxx_table() into free_empty_pxx_table() per Catalin

Changes in V8: (https://lkml.org/lkml/2019/9/23/22)

- Dropped the first patch (memblock_[free|remove] reorder) from the series which
  is no longer needed for arm64 hot-remove enablement and was posted separately
  as (https://patchwork.kernel.org/patch/11146361/)
- Dropped vmalloc-vmemmap detection and subsequent skipping of free_empty_tables()
- Changed free_empty_[pxx]_tables() functions which now accepts a possible maximum
  floor-ceiling address range on which it operates. Also changed free_pxx_table()
  functions to check against required alignment as well as maximum floor-ceiling
  range as another prerequisite before freeing the page table page.
- Dropped remove_pagetable(), instead call it's constituent functions directly

Changes in V7: (https://lkml.org/lkml/2019/9/3/326)

- vmalloc_vmemmap_overlap gets evaluated early during boot for a given config
- free_empty_tables() gets conditionally called based on vmalloc_vmemmap_overlap

Changes in V6: (https://lkml.org/lkml/2019/7/15/36)

- Implemented most of the suggestions from Mark Rutland
- Added <linux/memory_hotplug.h> in ptdump
- remove_pagetable() now has two distinct passes over the kernel page table
- First pass unmap_hotplug_range() removes leaf level entries at all level
- Second pass free_empty_tables() removes empty page table pages
- Kernel page table lock has been dropped completely
- vmemmap_free() does not call freee_empty_tables() to avoid conflict with vmalloc()
- All address range scanning are converted to do {} while() loop
- Added 'unsigned long end' in __remove_pgd_mapping()
- Callers need not provide starting pointer argument to free_[pte|pmd|pud]_table() 
- Drop the starting pointer argument from free_[pte|pmd|pud]_table() functions
- Fetching pxxp[i] in free_[pte|pmd|pud]_table() is wrapped around in READ_ONCE()
- free_[pte|pmd|pud]_table() now computes starting pointer inside the function
- Fixed TLB handling while freeing huge page section mappings at PMD or PUD level
- Added WARN_ON(!page) in free_hotplug_page_range()
- Added WARN_ON(![pm|pud]_table(pud|pmd)) when there is no section mapping

- [PATCH 1/3] mm/hotplug: Reorder memblock_[free|remove]() calls in try_remove_memory()
- Request earlier for separate merger (https://patchwork.kernel.org/patch/10986599/)
- s/__remove_memory/try_remove_memory in the subject line
- s/arch_remove_memory/memblock_[free|remove] in the subject line
- A small change in the commit message as re-order happens now for memblock remove
  functions not for arch_remove_memory()

Changes in V5: (https://lkml.org/lkml/2019/5/29/218)

- Have some agreement [1] over using memory_hotplug_lock for arm64 ptdump
- Change 7ba36eccb3f8 ("arm64/mm: Inhibit huge-vmap with ptdump") already merged
- Dropped the above patch from this series
- Fixed indentation problem in arch_[add|remove]_memory() as per David
- Collected all new Acked-by tags
 
Changes in V4: (https://lkml.org/lkml/2019/5/20/19)

- Implemented most of the suggestions from Mark Rutland
- Interchanged patch [PATCH 2/4] <---> [PATCH 3/4] and updated commit message
- Moved CONFIG_PGTABLE_LEVELS inside free_[pud|pmd]_table()
- Used READ_ONCE() in missing instances while accessing page table entries
- s/p???_present()/p???_none() for checking valid kernel page table entries
- WARN_ON() when an entry is !p???_none() and !p???_present() at the same time
- Updated memory hot-remove commit message with additional details as suggested
- Rebased the series on 5.2-rc1 with hotplug changes from David and Michal Hocko
- Collected all new Acked-by tags

Changes in V3: (https://lkml.org/lkml/2019/5/14/197)
 
- Implemented most of the suggestions from Mark Rutland for remove_pagetable()
- Fixed applicable PGTABLE_LEVEL wrappers around pgtable page freeing functions
- Replaced 'direct' with 'sparse_vmap' in remove_pagetable() with inverted polarity
- Changed pointer names ('p' at end) and removed tmp from iterations
- Perform intermediate TLB invalidation while clearing pgtable entries
- Dropped flush_tlb_kernel_range() in remove_pagetable()
- Added flush_tlb_kernel_range() in remove_pte_table() instead
- Renamed page freeing functions for pgtable page and mapped pages
- Used page range size instead of order while freeing mapped or pgtable pages
- Removed all PageReserved() handling while freeing mapped or pgtable pages
- Replaced XXX_index() with XXX_offset() while walking the kernel page table
- Used READ_ONCE() while fetching individual pgtable entries
- Taken overall init_mm.page_table_lock instead of just while changing an entry
- Dropped previously added [pmd|pud]_index() which are not required anymore
- Added a new patch to protect kernel page table race condition for ptdump
- Added a new patch from Mark Rutland to prevent huge-vmap with ptdump

Changes in V2: (https://lkml.org/lkml/2019/4/14/5)

- Added all received review and ack tags
- Split the series from ZONE_DEVICE enablement for better review
- Moved memblock re-order patch to the front as per Robin Murphy
- Updated commit message on memblock re-order patch per Michal Hocko
- Dropped [pmd|pud]_large() definitions
- Used existing [pmd|pud]_sect() instead of earlier [pmd|pud]_large()
- Removed __meminit and __ref tags as per Oscar Salvador
- Dropped unnecessary 'ret' init in arch_add_memory() per Robin Murphy
- Skipped calling into pgtable_page_dtor() for linear mapping page table
  pages and updated all relevant functions

Changes in V1: (https://lkml.org/lkml/2019/4/3/28)

References:

[1] https://lkml.org/lkml/2019/5/28/584
[2] https://lkml.org/lkml/2019/6/11/709

Anshuman Khandual (2):
  arm64/mm: Hold memory hotplug lock while walking for kernel page table dump
  arm64/mm: Enable memory hot remove

 arch/arm64/Kconfig              |   3 +
 arch/arm64/include/asm/memory.h |   1 +
 arch/arm64/mm/mmu.c             | 342 ++++++++++++++++++++++++++++++++++++++--
 arch/arm64/mm/ptdump_debugfs.c  |   4 +
 4 files changed, 341 insertions(+), 9 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
