Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB07D2D8CA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 11:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/IMI/2N2jt/dY3Ey/e10D1RkcnxV5fNEJismnJ+4wY4=; b=ANV
	jkbzWMgmjUTbcxVoj/r8B5U7dV3HgFL/CX4cKF3k1Gmfg1wLMCjnxncyF9jof+m6Hou/TTgiLYV0y
	HTwewyaTkat8xo92ZzaNpu/tRdRmTrS2j31gNr1SR9zUWon+kNmpOVi225ZTZhUVtKayqP3FK+1yw
	1/HQ6hlswgx8lCFWuZVu1G1c/A1hEuKYH0v24lC9oPhITXWWT5VsJocaHhpXv1+kdmhhLc4UCit5T
	vtjRunHLh6EAHqQ+NkzMnXTUkoolKlDM0TZYgkZB0rqHJGJMikCJAJM15/bbaar4YariUuA+WD7Wu
	qtMId7XJaQ0GbEt1Ru1sBCF9vv4Hppg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuhF-0007hg-E9; Wed, 29 May 2019 09:16:33 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuh7-0007gt-1W
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 09:16:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2311341;
 Wed, 29 May 2019 02:16:22 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.41.181])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B1B0E3F5AF;
 Wed, 29 May 2019 02:16:17 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, akpm@linux-foundation.org,
 catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH V5 0/3] arm64/mm: Enable memory hot remove
Date: Wed, 29 May 2019 14:46:24 +0530
Message-Id: <1559121387-674-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_021625_111559_28149B0A 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, mhocko@suse.com, david@redhat.com,
 ira.weiny@intel.com, mgorman@techsingularity.net, cai@lca.pw,
 ard.biesheuvel@arm.com, cpandya@codeaurora.org, james.morse@arm.com,
 dan.j.williams@intel.com, logang@deltatee.com, arunks@codeaurora.org,
 osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables memory hot remove on arm64 after fixing a memblock
removal ordering problem in generic __remove_memory() and one possible
arm64 platform specific kernel page table race condition. This series
is based on latest v5.2-rc2 tag.

Testing:

Memory hot remove has been tested on arm64 for 4K, 16K, 64K page config
options with all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS
combinations. Its only build tested on non-arm64 platforms.

Changes in V5:

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

[1] https://lkml.org/lkml/2019/5/28/584

Anshuman Khandual (3):
  mm/hotplug: Reorder arch_remove_memory() call in __remove_memory()
  arm64/mm: Hold memory hotplug lock while walking for kernel page table dump
  arm64/mm: Enable memory hot remove

 arch/arm64/Kconfig             |   3 +
 arch/arm64/mm/mmu.c            | 211 ++++++++++++++++++++++++++++++++++++++++-
 arch/arm64/mm/ptdump_debugfs.c |   3 +
 mm/memory_hotplug.c            |   2 +-
 4 files changed, 216 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
