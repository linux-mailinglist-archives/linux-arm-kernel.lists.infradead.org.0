Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12633AC832
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 19:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Skoy3dpuJW+ufSTt8feRH1tiF6RHQhn1gOmjdmFkWGA=; b=bD4kg/4JfQcJJc
	aS6KdBvo27hfIvEJZiPIEm31Gc4x60N/JTALBZlgG0g9VRfN8OKAYT5/K3Nl6c62iVqnHyh7lNZYq
	4qckYprSoxt/RjjfKIC+bvooMPEVjqCB67xRe5M0+EV0IRqIlgSrUjpfd0Uu1a3i5K8Rd7GD7SzPc
	iBrqEKWAMf+v9PkV6OXGl9vJ3C0VgiWBNGkG5bz+AveoFXB8972tJMpcaLzgMtqXbcN69VieGdhY1
	vqfPvP/t7Q5qu9Lo6mKIreMuGJ7vBo2DN3xqUjKlDPpziVHvTYX65XSnx0LL1OInjsVABP3DtH38a
	AA2d6ZF+TGL60Bp/KJdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6ebU-0003Au-Kb; Sat, 07 Sep 2019 17:34:28 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6ebI-0003AL-P9
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 17:34:18 +0000
Received: by mail-io1-xd41.google.com with SMTP id k13so4694428ioj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 07 Sep 2019 10:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N1wlSEAd/yNqPov8hazkmuwObylmLJ4n7bwZJ/zSVuE=;
 b=nX/ZnggVrPn3mYrpQxjYzUSqOuhzl/Ki5d8x3fcQRyY95Cjdq1FR5XidwxJPXoE/dV
 ZHjSR7XLoGr/iym/ChD9eSJEuFtDFm8uelqpCDpSX7XudnAFzhbf8XZ1wToB3ict3D4U
 keROyrkJ3FgyFny6SfjibZCyAQMgxj5sllN1PcQxPFrUFRWOC39gCuT6KuyWpJubsJse
 XP1pvczx/jTBbWkozRPfFqR/BTxq+/1RYD0e8OXBS9Wvhh/X46gVFOwitx1Ktt+sviQp
 v/TPYnp44btB5msp/R2dN2+IYXaZNdSEfeKjTqrv4w0VoCUsnuh+OfNBMKkzCWp0N4eW
 HPZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N1wlSEAd/yNqPov8hazkmuwObylmLJ4n7bwZJ/zSVuE=;
 b=cBsh+dwWcNDhqz+fK4S5aUXEmktGd9bicoHr0ZxGexrIJ3n0DyCuH37svm8rfIsl4T
 clW0WauwkpU9b0q6c0GvARBPeTzWW3XMZfa9RCIRid/Tj05RX63y8k4h8ZWSC7DyDEWG
 CUMK+U/HaQW32Fq1lOjUec/1mbat24DCx+K9RwK2iIAyg8lL13HNDyIzKpmrFVEZhs6c
 zxL5ZznokLb49dnAbo3uiocbBNL6KcTFHz19kEdbDc9IJOglhjAuN6PYzz9abcwIpB7c
 hywmgWnKnbT8ko/lmTOTc2FXwen32RHsuuCL3d2gXXKXejetz2kw8xnVuI2x7Pa5QsN2
 5J2g==
X-Gm-Message-State: APjAAAXj7A6fvDQaRaCjedtilfZ4TMzfVF1seo2XScMzT7OMBSqXnZqm
 jDy873gZXWY9X9lqgdShsSw/D8VcfjP2BIwnAs4=
X-Google-Smtp-Source: APXvYqyL3r6EbggbESVOvEQiUNQ4L6hRKzNiJBvs6HGzqjTYf6K0GuLb4ShQNBqLt7AfI5UmxbdCaqcrjN2rBGALtkA=
X-Received: by 2002:a5d:8f86:: with SMTP id l6mr3723909iol.270.1567877655886; 
 Sat, 07 Sep 2019 10:34:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190907172225.10910.34302.stgit@localhost.localdomain>
In-Reply-To: <20190907172225.10910.34302.stgit@localhost.localdomain>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sat, 7 Sep 2019 10:34:04 -0700
Message-ID: <CAKgT0UdeSfD9ZKLZO=wF+kdfTq+=u1bUvsih5PUtNTs66obCgA@mail.gmail.com>
Subject: Re: [PATCH v9 0/8] mm / virtio: Provide support for unused page
 reporting
To: virtio-dev@lists.oasis-open.org, kvm list <kvm@vger.kernel.org>, 
 "Michael S. Tsirkin" <mst@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, 
 David Hildenbrand <david@redhat.com>, Dave Hansen <dave.hansen@intel.com>, 
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>, 
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>, 
 Andrew Morton <akpm@linux-foundation.org>, will@kernel.org, 
 linux-arm-kernel@lists.infradead.org, Oscar Salvador <osalvador@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_103416_822288_3BEBA134 
X-CRM114-Status: GOOD (  31.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yang Zhang <yang.zhang.wz@gmail.com>, Pankaj Gupta <pagupta@redhat.com>,
 Rik van Riel <riel@surriel.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, ying.huang@intel.com,
 lcapitulino@redhat.com, "Wang, Wei W" <wei.w.wang@intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, Nitesh Narayan Lal <nitesh@redhat.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Dan Williams <dan.j.williams@intel.com>,
 Fengguang Wu <fengguang.wu@intel.com>,
 Alexander Duyck <alexander.h.duyck@linux.intel.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sorry about that. Looks like I fat fingered things and copied the
command line into the cover page. I corrected the subject here, and
pulled the command line out of the message below.

- Alex

On Sat, Sep 7, 2019 at 10:25 AM Alexander Duyck
<alexander.duyck@gmail.com> wrote:
> This series provides an asynchronous means of reporting to a hypervisor
> that a guest page is no longer in use and can have the data associated
> with it dropped. To do this I have implemented functionality that allows
> for what I am referring to as unused page reporting
>
> The functionality for this is fairly simple. When enabled it will allocate
> statistics to track the number of reported pages in a given free area.
> When the number of free pages exceeds this value plus a high water value,
> currently 32, it will begin performing page reporting which consists of
> pulling pages off of free list and placing them into a scatter list. The
> scatterlist is then given to the page reporting device and it will perform
> the required action to make the pages "reported", in the case of
> virtio-balloon this results in the pages being madvised as MADV_DONTNEED
> and as such they are forced out of the guest. After this they are placed
> back on the free list, and an additional bit is added if they are not
> merged indicating that they are a reported buddy page instead of a
> standard buddy page. The cycle then repeats with additional non-reported
> pages being pulled until the free areas all consist of reported pages.
>
> I am leaving a number of things hard-coded such as limiting the lowest
> order processed to PAGEBLOCK_ORDER, and have left it up to the guest to
> determine what the limit is on how many pages it wants to allocate to
> process the hints. The upper limit for this is based on the size of the
> queue used to store the scattergather list.
>
> My primary testing has just been to verify the memory is being freed after
> allocation by running memhog 40g on a 40g guest and watching the total
> free memory via /proc/meminfo on the host. With this I have verified most
> of the memory is freed after each iteration. As far as performance I have
> been mainly focusing on the will-it-scale/page_fault1 test running with
> 16 vcpus. I have modified it to use Transparent Huge Pages. With this I
> see almost no difference, -0.08%, with the patches applied and the feature
> disabled. I see a regression of -0.86% with the feature enabled, but the
> madvise disabled in the hypervisor due to a device being assigned. With
> the feature fully enabled I see a regression of -3.27% versus the baseline
> without these patches applied. In my testing I found that most of the
> overhead was due to the page zeroing that comes as a result of the pages
> having to be faulted back into the guest.
>
> One side effect of these patches is that the guest becomes much more
> resilient in terms of NUMA locality. With the pages being freed and then
> reallocated when used it allows for the pages to be much closer to the
> active thread, and as a result there can be situations where this patch
> set will out-perform the stock kernel when the guest memory is not local
> to the guest vCPUs. To avoid that in my testing I set the affinity of all
> the vCPUs and QEMU instance to the same node.
>
> I have not included the QEMU patches with this set as they haven't really
> changed in the last several revisions. If needed they can be located with
> the v8 patchset.
>
> Changes from the RFC:
> https://lore.kernel.org/lkml/20190530215223.13974.22445.stgit@localhost.localdomain/
> Moved aeration requested flag out of aerator and into zone->flags.
> Moved boundary out of free_area and into local variables for aeration.
> Moved aeration cycle out of interrupt and into workqueue.
> Left nr_free as total pages instead of splitting it between raw and aerated.
> Combined size and physical address values in virtio ring into one 64b value.
>
> Changes from v1:
> https://lore.kernel.org/lkml/20190619222922.1231.27432.stgit@localhost.localdomain/
> Dropped "waste page treatment" in favor of "page hinting"
> Renamed files and functions from "aeration" to "page_hinting"
> Moved from page->lru list to scatterlist
> Replaced wait on refcnt in shutdown with RCU and cancel_delayed_work_sync
> Virtio now uses scatterlist directly instead of intermediate array
> Moved stats out of free_area, now in separate area and pointed to from zone
> Merged patch 5 into patch 4 to improve review-ability
> Updated various code comments throughout
>
> Changes from v2:
> https://lore.kernel.org/lkml/20190724165158.6685.87228.stgit@localhost.localdomain/
> Dropped "page hinting" in favor of "page reporting"
> Renamed files from "hinting" to "reporting"
> Replaced "Hinted" page type with "Reported" page flag
> Added support for page poisoning while hinting is active
> Add QEMU patch that implements PAGE_POISON feature
>
> Changes from v3:
> https://lore.kernel.org/lkml/20190801222158.22190.96964.stgit@localhost.localdomain/
> Added mutex lock around page reporting startup and shutdown
> Fixed reference to "page aeration" in patch 2
> Split page reporting function bit out into separate QEMU patch
> Limited capacity of scatterlist to vq size - 1 instead of vq size
> Added exception handling for case of virtio descriptor allocation failure
>
> Changes from v4:
> https://lore.kernel.org/lkml/20190807224037.6891.53512.stgit@localhost.localdomain/
> Replaced spin_(un)lock with spin_(un)lock_irq in page_reporting_cycle()
> Dropped if/continue for ternary operator in page_reporting_process()
> Added checks for isolate and cma types to for_each_reporting_migratetype_order
> Added virtio-dev, Michal Hocko, and Oscar Salvador to to:/cc:
> Rebased on latest linux-next and QEMU git trees
>
> Changes from v5:
> https://lore.kernel.org/lkml/20190812213158.22097.30576.stgit@localhost.localdomain/
> Replaced spin_(un)lock with spin_(un)lock_irq in page_reporting_startup()
> Updated shuffle code to use "shuffle_pick_tail" and updated patch description
> Dropped storage of order and migratettype while page is being reported
> Used get_pfnblock_migratetype to determine migratetype of page
> Renamed put_reported_page to free_reported_page, added order as argument
> Dropped check for CMA type as I believe we should be reporting those
> Added code to allow moving of reported pages into and out of isolation
> Defined page reporting order as minimum of Huge Page size vs MAX_ORDER - 1
> Cleaned up use of static branch usage for page_reporting_notify_enabled
>
> Changes from v6:
> https://lore.kernel.org/lkml/20190821145806.20926.22448.stgit@localhost.localdomain/
> Rebased on linux-next for 20190903
> Added jump label to __page_reporting_request so we release RCU read lock
> Removed "- 1" from capacity limit based on virtio ring
> Added code to verify capacity is non-zero or return error on startup
>
> Changes from v7:
> https://lore.kernel.org/lkml/20190904150920.13848.32271.stgit@localhost.localdomain/
> Updated poison fixes to clear flag if "nosanity" is enabled in kernel config
> Split shuffle per-cpu optimization into separate patch
> Moved check for !phdev->capacity into reporting patch where it belongs
> Added Reviewed-by tags received for v7
>
> Changes from v8:
> https://lore.kernel.org/lkml/20190906145213.32552.30160.stgit@localhost.localdomain/
> Added patch that moves HPAGE_SIZE definition for ARM64 to match other archs
> Switch back to using pageblock_order instead of HUGETLB_ORDER and MAX_ORDER - 1
> Boundary allocation now dynamic to support HUGETLB_PAGE_SIZE_VARIABLE option
> Made use of existing code/functions to reduce size of move_to_boundary function
> Dropped unused zone pointer from add_to/del_from_boundary functions
> Added additional possible mm and arm64 people as reviewers to Cc
> Added Reviewed-by tags received for v8
> Fixed missing parameter in kerneldoc
>
> ---
>
> Alexander Duyck (8):
>       mm: Add per-cpu logic to page shuffling
>       mm: Adjust shuffle code to allow for future coalescing
>       mm: Move set/get_pcppage_migratetype to mmzone.h
>       mm: Use zone and order instead of free area in free_list manipulators
>       arm64: Move hugetlb related definitions out of pgtable.h to page-defs.h
>       mm: Introduce Reported pages
>       virtio-balloon: Pull page poisoning config out of free page hinting
>       virtio-balloon: Add support for providing unused page reports to host
>
>
>  arch/arm64/include/asm/page-def.h   |    9 +
>  arch/arm64/include/asm/pgtable.h    |    9 -
>  drivers/virtio/Kconfig              |    1
>  drivers/virtio/virtio_balloon.c     |   87 ++++++++-
>  include/linux/mmzone.h              |  124 ++++++++----
>  include/linux/page-flags.h          |   11 +
>  include/linux/page_reporting.h      |  178 +++++++++++++++++
>  include/uapi/linux/virtio_balloon.h |    1
>  mm/Kconfig                          |    5
>  mm/Makefile                         |    1
>  mm/internal.h                       |   18 ++
>  mm/memory_hotplug.c                 |    1
>  mm/page_alloc.c                     |  217 +++++++++++++++------
>  mm/page_reporting.c                 |  358 +++++++++++++++++++++++++++++++++++
>  mm/shuffle.c                        |   40 ++--
>  mm/shuffle.h                        |   12 +
>  16 files changed, 931 insertions(+), 141 deletions(-)
>  create mode 100644 include/linux/page_reporting.h
>  create mode 100644 mm/page_reporting.c
>
> --

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
