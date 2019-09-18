Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152C5B69E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 19:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/JoTfhLBaWrwL/QL9+DhuSYzUVA4p6kGOQrkkcT8tBg=; b=qy1j1AaUFFUUTr
	dzHyiPXjmM5DEQ2a/WPOjD7XDXGZ6/FYSbkJbMlPSeio3JxgOXqhzXV3OSGPHuqAZDJen6wzD5k6B
	rLIL/Se3jxiLdXhuDv5oqP13+7ycHn9EDIBV+e8wW9SCoCQe/SG7SoaL1pZFNrQL+0UzUMd2+TI50
	5yc6ZswPDcniLQjkqP2HWRiaS/nxnwE129Vr8++8Sh9b72DHoEo+54S3TkWg1wv2/0TeieQB42Fl6
	nzzb6vuZuvfgQfdQ2ji/KhP8ld68FlPpR4uHvtQxcD5xzhas5jATnvaRLpdbxDxPYx+IYf5lAW+gn
	2n5Ybgmf9Kw/dABuquvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAe8A-0006Dl-5k; Wed, 18 Sep 2019 17:52:42 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAe7x-0006DM-GG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 17:52:31 +0000
Received: by mail-oi1-x241.google.com with SMTP id 83so405693oii.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:cc:date:message-id:user-agent:mime-version
 :content-transfer-encoding;
 bh=mGxYN8fKLFN6z5avB+andfhVV4A+WX96NEccYZ4KSJ0=;
 b=qyqlBWw1TSg7WCQxN8G2wS400TI3RlB/WNNQy/BASpbQH7dai4KuaUPYwfRbQJqr83
 tymtB88GT+36Ujs21eCz4GigdJaiPddygAeTaQj1gzZJ+74zk4+UB0saoe9kz5DZz2M6
 G0BSXzcf3Q2OPAQHUYbpfqWO4wu8YWfOR9EIHVjmO3q4XxLsPDkl0HprogQDrFPkYkfP
 /lr+jzZfDtW7yiTnakt1uKvk8Ma3MPDNgQgzxsp30RXU8TY7OJjOFvZJ3qs41Q5uHrPA
 0InuSyusYyAZKzh4u57bf27Dr8GqXXXVKWk3VzKLHtEQr4qbjklhAn9g1vtqdMpKtLI3
 E6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:date:message-id:user-agent
 :mime-version:content-transfer-encoding;
 bh=mGxYN8fKLFN6z5avB+andfhVV4A+WX96NEccYZ4KSJ0=;
 b=JaYrVefYdqZa+BBxvwhNiN6t+oOdDBDYWxbIInl+r+eNpKj+MZoTgaNfaRz408I+4E
 FIOFVv2LgANr1/9/EYldRYy8Mx6vehvnMjyoFhiW+vD+1ZVkjd5OGFyHX1H3Qk+sOhFb
 /qZQStzLG59ZZSF5iClOPl10xr/nW5eidshzRu4FPTg5Yc5JqkNtamtQwv2X0DBNCLN4
 EkycZN36QYKd66cfaBlZdRanWKJtQhlr0Utili4eLWFIkiYNuD0JJepidYv2rSlUkDsl
 zRdLia6PpRRzJS128+6jWloBtoGh9uLsNIXPXEKcWumNQD/VACiASMT0Rx6CPmGpg6Vx
 zzZA==
X-Gm-Message-State: APjAAAX8vQeqR8dzNHcL2NT2lIedAtGwB75hOC71tgJfV/DHgkJ2cbHQ
 HR+ifiiQ1zuVw0suoRC0rHI=
X-Google-Smtp-Source: APXvYqx3VRfarQJCxejKo+vbLPE/nAA+u3uNVEGvbb5/nNYHkpfJs6nxS+UG8lCLMNOa7yifkgs3Cg==
X-Received: by 2002:a54:4f8a:: with SMTP id g10mr3314526oiy.147.1568829148372; 
 Wed, 18 Sep 2019 10:52:28 -0700 (PDT)
Received: from localhost.localdomain ([2001:470:b:9c3:9e5c:8eff:fe4f:f2d0])
 by smtp.gmail.com with ESMTPSA id r7sm1994572oih.41.2019.09.18.10.52.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Sep 2019 10:52:27 -0700 (PDT)
Subject: [PATCH v10 0/6] mm / virtio: Provide support for unused page reporting
From: Alexander Duyck <alexander.duyck@gmail.com>
To: virtio-dev@lists.oasis-open.org, kvm@vger.kernel.org, mst@redhat.com,
 david@redhat.com, dave.hansen@intel.com, linux-kernel@vger.kernel.org,
 willy@infradead.org, mhocko@kernel.org, linux-mm@kvack.org, vbabka@suse.cz,
 akpm@linux-foundation.org, mgorman@techsingularity.net,
 linux-arm-kernel@lists.infradead.org, osalvador@suse.de
Date: Wed, 18 Sep 2019 10:52:25 -0700
Message-ID: <20190918175109.23474.67039.stgit@localhost.localdomain>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_105229_547027_BCF4B26D 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexander.duyck[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: yang.zhang.wz@gmail.com, pagupta@redhat.com, riel@surriel.com,
 konrad.wilk@oracle.com, lcapitulino@redhat.com, wei.w.wang@intel.com,
 aarcange@redhat.com, nitesh@redhat.com, pbonzini@redhat.com,
 dan.j.williams@intel.com, alexander.h.duyck@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series provides an asynchronous means of reporting to a hypervisor
that a guest page is no longer in use and can have the data associated
with it dropped. To do this I have implemented functionality that allows
for what I am referring to as unused page reporting. The advantage of
unused page reporting is that we can support a significant amount of
memory over-commit with improved performance as we can avoid having to
write/read memory from swap as the VM will instead actively participate
in freeing unused memory so it doesn't have to be written.

The functionality for this is fairly simple. When enabled it will allocate
statistics to track the number of reported pages in a given free area.
When the number of free pages exceeds this value plus a high water value,
currently 32, it will begin performing page reporting which consists of
pulling non-reported pages off of the free lists of a given zone and
placing them into a scatterlist. The scatterlist is then given to the page
reporting device and it will perform the required action to make the pages
"reported", in the case of virtio-balloon this results in the pages being
madvised as MADV_DONTNEED. After this they are placed back on their
original free list. If they are not merged in freeing an additional bit is
set indicating that they are a "reported" buddy page instead of a standard
buddy page. The cycle then repeats with additional non-reported pages
being pulled until the free areas all consist of reported pages.

In order to try and keep the time needed to find a non-reported page to
a minimum we maintain a "reported_boundary" pointer. This pointer is used
by the get_unreported_pages iterator to determine at what point it should
resume searching for non-reported pages. In order to guarantee pages do
not get past the scan I have modified add_to_free_list_tail so that it
will not insert pages behind the reported_boundary.

If another process needs to perform a massive manipulation of the free
list, such as compaction, it can either reset a given individual boundary
which will push the boundary back to the list_head, or it can clear the
bit indicating the zone is actively processing which will result in the
reporting process resetting all of the boundaries for a given zone.

I am leaving a number of things hard-coded such as limiting the lowest
order processed to pageblock_order, and have left it up to the guest to
determine what the limit is on how many pages it wants to allocate to
process the hints. The upper limit for this is based on the size of the
queue used to store the scatterlist.

I wanted to avoid gaming the performance testing for this. As far as
possible gain a significant performance improvement should be visible in
cases where guests are forced to write/read from swap. As such, testing
it would be more of a benchmark of copying a page from swap versus just
allocating a zero page. I have been verifying that the memory is being
freed using memhog to allocate all the memory on the guest, and then
watching /proc/meminfo to verify the host sees the memory returned after
the test completes.

As far as possible regressions I have focused on cases where performing
the hinting would be non-optimal, such as cases where the code isn't
needed as memory is not over-committed, or the functionality is not in
use. I have been using the will-it-scale/page_fault1 test running with 16
vcpus and have modified it to use Transparent Huge Pages. With this I see
almost no difference with the patches applied and the feature disabled.
Likewise I see almost no difference with the feature enabled, but the
madvise disabled in the hypervisor due to a device being assigned. With
the feature fully enabled in both guest and hypervisor I see a regression
between -1.86% and -8.84% versus the baseline. I found that most of the
overhead was due to the page faulting/zeroing that comes as a result of
the pages having been evicted from the guest.

For info on earlier versions you will need to follow the links provided
with the respective versions.

Changes from v9:
https://lore.kernel.org/lkml/20190907172225.10910.34302.stgit@localhost.localdomain/
Updated cover page
Dropped per-cpu page randomization entropy patch
Added "to_tail" boolean value to __free_one_page to improve readability
Renamed __shuffle_pick_tail to shuffle_pick_tail, avoiding extra inline function
Dropped arm64 HUGLE_TLB_ORDER movement patch since it is no longer needed
Significant rewrite of page reporting functionality
  Updated logic to support interruptions from compaction
  get_unreported_page will now walk through reported sections
  Moved free_list manipulators out of mmzone.h and into page_alloc.c
  Removed page_reporting.h include from mmzone.h
  Split page_reporting.h between include/linux/ and mm/
  Added #include <asm/pgtable.h>" to mm/page_reporting.h
  Renamed page_reporting_startup/shutdown to page_reporting_register/unregister
Updated comments related to virtio page poison tracking feature

---

Alexander Duyck (6):
      mm: Adjust shuffle code to allow for future coalescing
      mm: Use zone and order instead of free area in free_list manipulators
      mm: Introduce Reported pages
      mm: Add device side and notifier for unused page reporting
      virtio-balloon: Pull page poisoning config out of free page hinting
      virtio-balloon: Add support for providing unused page reports to host


 drivers/virtio/Kconfig              |    1 
 drivers/virtio/virtio_balloon.c     |   87 ++++++++-
 include/linux/mmzone.h              |   60 ++----
 include/linux/page-flags.h          |   11 +
 include/linux/page_reporting.h      |   31 +++
 include/uapi/linux/virtio_balloon.h |    1 
 mm/Kconfig                          |   11 +
 mm/Makefile                         |    1 
 mm/compaction.c                     |    5 +
 mm/memory_hotplug.c                 |    2 
 mm/page_alloc.c                     |  194 +++++++++++++++----
 mm/page_reporting.c                 |  350 +++++++++++++++++++++++++++++++++++
 mm/page_reporting.h                 |  224 ++++++++++++++++++++++
 mm/shuffle.c                        |   12 +
 mm/shuffle.h                        |    6 +
 15 files changed, 893 insertions(+), 103 deletions(-)
 create mode 100644 include/linux/page_reporting.h
 create mode 100644 mm/page_reporting.c
 create mode 100644 mm/page_reporting.h

--

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
