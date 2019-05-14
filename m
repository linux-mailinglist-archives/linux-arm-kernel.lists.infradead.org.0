Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22B51C5B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 11:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jhjFlVluZybFtcrPYJ5Ej6XKgjyegBwp6qTkkvLKJqc=; b=G8+0eHgg/GCMin
	CigxIcxdwM6HzmLT/5hnVmAx945ylZl+d8jJoKEQ1tqrVuBiva32REgkRwqrnKWCATGi7bY34jl4v
	vJBH7rkHcBs9OQU2ud3Sfzz8gLu2952lvKfWIuF4aFU0bKPYSqoRwCdlI8/r6v1g3yzBomyzk5fNU
	lFW74MWfKMXBxYOEvX0LQ+ydiYKLsDTFcGvLLzNBe9Ebe1f5jK1kGpIKklwarYd+HTWSuU6R2bG0W
	PAveFIh8F6IcA7bJfR9CF7z5mQL6348tSuveFRCU4Lo73SjQVUgP63dUs2duW8255aI9OMoqj+Qyf
	6ALNpTRUFu409VAgViZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQTS7-0004Tr-OO; Tue, 14 May 2019 09:10:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQTRz-0004Rb-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 09:10:21 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 67DCB30230A0;
 Tue, 14 May 2019 09:10:19 +0000 (UTC)
Received: from [10.36.117.118] (ovpn-117-118.ams2.redhat.com [10.36.117.118])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10246608AB;
 Tue, 14 May 2019 09:10:15 +0000 (UTC)
Subject: Re: [PATCH V3 0/4] arm64/mm: Enable memory hot remove
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 akpm@linux-foundation.org, catalin.marinas@arm.com, will.deacon@arm.com
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
From: David Hildenbrand <david@redhat.com>
Openpgp: preference=signencrypt
Autocrypt: addr=david@redhat.com; prefer-encrypt=mutual; keydata=
 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
 SE+xAvmumFBY
Organization: Red Hat GmbH
Message-ID: <ae99ac55-2690-b6ec-8600-26b9324b2a1a@redhat.com>
Date: Tue, 14 May 2019 11:10:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 14 May 2019 09:10:19 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_021019_975166_B978E04D 
X-CRM114-Status: GOOD (  25.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 robin.murphy@arm.com, cai@lca.pw, logang@deltatee.com, james.morse@arm.com,
 cpandya@codeaurora.org, arunks@codeaurora.org, dan.j.williams@intel.com,
 mgorman@techsingularity.net, osalvador@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.05.19 11:00, Anshuman Khandual wrote:
> This series enables memory hot remove on arm64 after fixing a memblock
> removal ordering problem in generic __remove_memory() and kernel page
> table race conditions on arm64. This is based on the following arm64
> working tree.
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/core
> 
> David had pointed out that the following patch is already in next/master
> (58b11e136dcc14358) and will conflict with the last patch here. Will fix
> the conflict once this series gets reviewed and agreed upon.

I should read the cover letter first, so ignore my comments :)

> 
> Author: David Hildenbrand <david@redhat.com>
> Date:   Wed Apr 10 11:02:27 2019 +1000
> 
>     mm/memory_hotplug: make __remove_pages() and arch_remove_memory() never fail
> 
>     All callers of arch_remove_memory() ignore errors.  And we should really
>     try to remove any errors from the memory removal path.  No more errors are
>     reported from __remove_pages().  BUG() in s390x code in case
>     arch_remove_memory() is triggered.  We may implement that properly later.
>     WARN in case powerpc code failed to remove the section mapping, which is
>     better than ignoring the error completely right now.
> 
> Testing:
> 
> Tested memory hot remove on arm64 for 4K, 16K, 64K page config options with
> all possible CONFIG_ARM64_VA_BITS and CONFIG_PGTABLE_LEVELS combinations. But
> build tested on non arm64 platforms.
> 
> Changes in V3:
>  
> - Implemented most of the suggestions from Mark Rutland for remove_pagetable()
> - Fixed applicable PGTABLE_LEVEL wrappers around pgtable page freeing functions
> - Replaced 'direct' with 'sparse_vmap' in remove_pagetable() with inverted polarity
> - Changed pointer names ('p' at end) and removed tmp from iterations
> - Perform intermediate TLB invalidation while clearing pgtable entries
> - Dropped flush_tlb_kernel_range() in remove_pagetable()
> - Added flush_tlb_kernel_range() in remove_pte_table() instead
> - Renamed page freeing functions for pgtable page and mapped pages
> - Used page range size instead of order while freeing mapped or pgtable pages
> - Removed all PageReserved() handling while freeing mapped or pgtable pages
> - Replaced XXX_index() with XXX_offset() while walking the kernel page table
> - Used READ_ONCE() while fetching individual pgtable entries
> - Taken overall init_mm.page_table_lock instead of just while changing an entry
> - Dropped previously added [pmd|pud]_index() which are not required anymore
> 
> - Added a new patch to protect kernel page table race condtion for ptdump
> - Added a new patch from Mark Rutland to prevent huge-vmap with ptdump
> 
> Changes in V2: (https://lkml.org/lkml/2019/4/14/5)
> 
> - Added all received review and ack tags
> - Split the series from ZONE_DEVICE enablement for better review
> - Moved memblock re-order patch to the front as per Robin Murphy
> - Updated commit message on memblock re-order patch per Michal Hocko
> - Dropped [pmd|pud]_large() definitions
> - Used existing [pmd|pud]_sect() instead of earlier [pmd|pud]_large()
> - Removed __meminit and __ref tags as per Oscar Salvador
> - Dropped unnecessary 'ret' init in arch_add_memory() per Robin Murphy
> - Skipped calling into pgtable_page_dtor() for linear mapping page table
>   pages and updated all relevant functions
> 
> Changes in V1: (https://lkml.org/lkml/2019/4/3/28)
> 
> Anshuman Khandual (3):
>   mm/hotplug: Reorder arch_remove_memory() call in __remove_memory()
>   arm64/mm: Hold memory hotplug lock while walking for kernel page table dump
>   arm64/mm: Enable memory hot remove
> 
> Mark Rutland (1):
>   arm64/mm: Inhibit huge-vmap with ptdump
> 
>  arch/arm64/Kconfig             |   3 +
>  arch/arm64/mm/mmu.c            | 215 ++++++++++++++++++++++++++++++++++++++++-
>  arch/arm64/mm/ptdump_debugfs.c |   3 +
>  mm/memory_hotplug.c            |   3 +-
>  4 files changed, 217 insertions(+), 7 deletions(-)
> 


-- 

Thanks,

David / dhildenb

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
