Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA41C583
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Gic7wQgEjPJDOl/o50DEEuKjlUh5UUBD6L8ih2XXsd8=; b=oqK
	60uF6LFw2mXoJt6U1xjzAsCNgFS05eVuI2AdgAcxzoBSYGJERyT7kiWEc1xkNyF6r+86XlXjJsASM
	JELit2z7xxU2SGW4CYpdmsHddXJvMSjK4TEpkHjpar73ANLX0gKRwCIRNGOPQqGQnYMnRuH/bWHJk
	Jq8Cj7MUtmUJ75kCIpZ8SmbamItT9egNrtk8u6e83QUgSoHOOy+1gNX9LcdSmYbPHM8xvBqtm/O1A
	xhcU0YTkw/Pz07Samp/U8gwAYHb/QLjJ00OJQJAZhQ37B/aO6Br4Qt1k4q2TsUb2H13o+tjJjq3qh
	5B4Wtb1Fqe3lwGHQ0ebccgbaNr3eo2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTII-0007k8-NN; Tue, 14 May 2019 09:00:18 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTIB-0007hf-73
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:00:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DDE66374;
 Tue, 14 May 2019 02:00:07 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.137])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6C03A3F71E;
 Tue, 14 May 2019 02:00:00 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will.deacon@arm.com
Subject: [PATCH V3 0/4] arm64/mm: Enable memory hot remove
Date: Tue, 14 May 2019 14:30:03 +0530
Message-Id: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_020011_267321_D2D6540A 
X-CRM114-Status: GOOD (  14.00  )
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
Cc: mark.rutland@arm.com, mhocko@suse.com, ira.weiny@intel.com,
 david@redhat.com, robin.murphy@arm.com, cai@lca.pw, logang@deltatee.com,
 james.morse@arm.com, cpandya@codeaurora.org, arunks@codeaurora.org,
 dan.j.williams@intel.com, mgorman@techsingularity.net, osalvador@suse.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables memory hot remove on arm64 after fixing a memblock
removal ordering problem in generic __remove_memory() and kernel page
table race conditions on arm64. This is based on the following arm64
working tree.

git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core

David had pointed out that the following patch is already in next/master
(58b11e136dcc14358) and will conflict with the last patch here. Will fix
the conflict once this series gets reviewed and agreed upon.

Author: David Hildenbrand <david@redhat.com>
Date:   Wed Apr 10 11:02:27 2019 +1000

    mm/memory_hotplug: make __remove_pages() and arch_remove_memory() never fail

    All callers of arch_remove_memory() ignore errors.  And we should really
    try to remove any errors from the memory removal path.  No more errors are
    reported from __remove_pages().  BUG() in s390x code in case
    arch_remove_memory() is triggered.  We may implement that properly later.
    WARN in case powerpc code failed to remove the section mapping, which is
    better than ignoring the error completely right now.

Testing:

Tested memory hot remove on arm64 for 4K, 16K, 64K page config options with
all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS combinations. But
build tested on non arm64 platforms.

Changes in V3:
 
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

- Added a new patch to protect kernel page table race condtion for ptdump
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

Anshuman Khandual (3):
  mm/hotplug: Reorder arch_remove_memory() call in __remove_memory()
  arm64/mm: Hold memory hotplug lock while walking for kernel page table dump
  arm64/mm: Enable memory hot remove

Mark Rutland (1):
  arm64/mm: Inhibit huge-vmap with ptdump

 arch/arm64/Kconfig             |   3 +
 arch/arm64/mm/mmu.c            | 215 ++++++++++++++++++++++++++++++++++++++++-
 arch/arm64/mm/ptdump_debugfs.c |   3 +
 mm/memory_hotplug.c            |   3 +-
 4 files changed, 217 insertions(+), 7 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
