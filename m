Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31C94B09E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 06:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hRLoOh1p9BLDyDzsMC3ELEcCz40VSlas0MTSzGDTsls=; b=GB5
	nIN6yS/FmYaOiVz7NrXDJVeCQFVM4Bih7CyJnAR80WCYcXWjkEJyHREYjzf+fcTzQpF57oVPzcM56
	QjCl9G/+D/Y3KGKK7B1HLagWfljyOe98v/+JPpNHMIFVRcZrXTwJDrwgca/eJISJD2VSTren0QUo5
	5Dz6VZiam0BKEN8UwJfIs9gvDHJBPYZnRJURCqOpimRM1HZIzgfaEZAgdYSYhw9j7qQVrBBXQJ0ag
	PpaWq+q0AHF6bAI4Aws91SfQ3clzkx/4kGEsYBYR/5iJHBufwZv+GZDbX8QFvROvVlP2eLgVZ29QH
	IjjfHAXmDvjWUSzAtLJ39ekEyg+disQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdS2Z-0002v9-Eq; Wed, 19 Jun 2019 04:17:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdS2Q-0002ud-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 04:17:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D88EA360;
 Tue, 18 Jun 2019 21:17:31 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.43.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 350E33F718;
 Tue, 18 Jun 2019 21:17:24 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH V6 0/3] arm64/mm: Enable memory hot remove
Date: Wed, 19 Jun 2019 09:47:37 +0530
Message-Id: <1560917860-26169-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_211735_005956_157457D4 
X-CRM114-Status: GOOD (  18.34  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 ira.weiny@intel.com, steve.capper@arm.com, mgorman@techsingularity.net,
 cai@lca.pw, ard.biesheuvel@arm.com, cpandya@codeaurora.org,
 james.morse@arm.com, dan.j.williams@intel.com, logang@deltatee.com,
 arunks@codeaurora.org, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables memory hot remove on arm64 after fixing a memblock
removal ordering problem in generic try_remove_memory() and a possible
arm64 platform specific kernel page table race condition. This series
is based on linux-next (next-20190613).

Concurrent vmalloc() and hot-remove conflict:

As pointed out earlier on the v5 thread [2] there can be potential conflict
between concurrent vmalloc() and memory hot-remove operation. This can be
solved or at least avoided with some possible methods. The problem here is
caused by inadequate locking in vmalloc() which protects installation of a
page table page but not the walk or the leaf entry modification.

Option 1: Making locking in vmalloc() adequate

Current locking scheme protects installation of page table pages but not the
page table walk or leaf entry creation which can conflict with hot-remove.
This scheme is sufficient for now as vmalloc() works on mutually exclusive
ranges which can proceed concurrently only if their shared page table pages
can be created while inside the lock. It achieves performance improvement
which will be compromised if entire vmalloc() operation (even if with some
optimization) has to be completed under a lock.

Option 2: Making sure hot-remove does not happen during vmalloc()

Take mem_hotplug_lock in read mode through [get|put]_online_mems() constructs
for the entire duration of vmalloc(). It protects from concurrent memory hot
remove operation and does not add any significant overhead to other concurrent
vmalloc() threads. It solves the problem in right way unless we do not want to
extend the usage of mem_hotplug_lock in generic MM.

Option 3: Memory hot-remove does not free (conflicting) page table pages

Don't not free page table pages (if any) for vmemmap mappings after unmapping
it's virtual range. The only downside here is that some page table pages might
remain empty and unused until next memory hot-add operation of the same memory
range.

Option 4: Dont let vmalloc and vmemmap share intermediate page table pages

The conflict does not arise if vmalloc and vmemap range do not share kernel
page table pages to start with. If such placement can be ensured in platform
kernel virtual address layout, this problem can be successfully avoided.

There are two generic solutions (Option 1 and 2) and two platform specific
solutions (Options 2 and 3). This series has decided to go with (Option 3)
which requires minimum changes while self-contained inside the functionality.

Testing:

Memory hot remove has been tested on arm64 for 4K, 16K, 64K page config
options with all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS
combinations. Its only build tested on non-arm64 platforms.

Changes in V6:

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

Anshuman Khandual (3):
  mm/hotplug: Reorder memblock_[free|remove]() calls in try_remove_memory()
  arm64/mm: Hold memory hotplug lock while walking for kernel page table dump
  arm64/mm: Enable memory hot remove

 arch/arm64/Kconfig             |   3 +
 arch/arm64/mm/mmu.c            | 290 +++++++++++++++++++++++++++++++++++++++--
 arch/arm64/mm/ptdump_debugfs.c |   4 +
 mm/memory_hotplug.c            |   4 +-
 4 files changed, 290 insertions(+), 11 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
