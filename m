Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A561BE640
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 20:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2Ka+xHxk5biDjVH6+O3u05anT7N3Dx78+tatIwDnyA=; b=t+QxO7WvU7Yhzy
	tVQ3SH7+CjgFRob2CgC2GZh3BqC2oa4bgKk6GElmIuUKVHc01xfBHzlZC4bQvhF02L8CXu/xF/7bV
	TcJU1Hxxjp8bivmzNLN7+DR6KUtDia+MyKlyM8v+XToyrSR8Xykk8js7CHmiGvF5ewvO17t4lVt1g
	L51jaXpCkcHIYp2yCMuyEfwCgP8li7Kz+k2EwvDXVKDTyHIS6h7enXPt98ZYndnG9a8NiAqtzBMbg
	/Jq/IIwHQSD9yd6WLE71dz2gMZQ7qrfyF6/lnZqQ0QuLNFt9VC7nty/Z1MEuCFLf+LIQqz65Ma6Cz
	soLZbzbJFWd+sjIkMIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTrTM-0000KR-UP; Wed, 29 Apr 2020 18:30:16 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTrSz-0000JV-Aa
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 18:29:55 +0000
IronPort-SDR: vTZPXRE5DlVCGeVoBHE269j6Tiz06pfxjGhKidvvvi8J5z7KZXUKu3VfMuAeEZ2TLFOG4o3x+6
 yooihELXSKyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 11:29:52 -0700
IronPort-SDR: oML/I7b8KBGVfCUfb08bypJJC5w9NogHC19eoyXv6UC9MjcNOe479FLrDHSMdHe2ortzeOaSHp
 rWVInb7F2ncw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="367889577"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2020 11:29:51 -0700
Date: Wed, 29 Apr 2020 11:29:51 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 1/7] mm: Document x86 uses a linked list of pgds
Message-ID: <20200429182951.GA411423@iweiny-DESK2.sc.intel.com>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-2-willy@infradead.org>
 <20200428214109.GB406458@iweiny-DESK2.sc.intel.com>
 <20200428225251.GM29705@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428225251.GM29705@bombadil.infradead.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_112953_415588_D8CE24DC 
X-CRM114-Status: GOOD (  26.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 03:52:51PM -0700, Matthew Wilcox wrote:
> On Tue, Apr 28, 2020 at 02:41:09PM -0700, Ira Weiny wrote:
> > On Tue, Apr 28, 2020 at 12:44:43PM -0700, Matthew Wilcox wrote:
> > > x86 uses page->lru of the pages used for pgds, but that's not immediately
> > > obvious to anyone looking to make changes.  Add a struct list_head to
> > > the union so it's clearly in use for pgds.
> > 
> > Shouldn't pgd_list_{add,del}() use this list head variable instead of lru to
> > complete the documentation?
> > 
> > Probably the list iteration loops arch/x86/* as well?
> 
> Yes, but I felt that was out of scope for this patchset.  Untangling the
> uses of struct page is a long and messy business; if we have to fix
> everything at once, we'll never get anywhere.  There's also the slab
> users of page->lru instead of page->slab_list.

But doesn't changing the use of lru with this new name in the code also help to
identify the users?

> 
> What I actually want to get to is:
> 
> struct page {
> 	unsigned long flags;
> 	union {
> 		struct file_page file;
> 		struct anon_page anon;
> 		struct pt_page pt;
> 		struct slab_page slab;
> 		struct tail_page tail;
> 		struct rcu_head rcu;
> 	};
> 	union {
> 		atomic_t _mapcount;
> 		...
> 	};
> 	atomic_t refcount;
> 	...
> };
> 
> and then we can refer to page->pt.list and so on.

Then later on we know exactly where page->pt.list needs to be inserted.

I'm not opposed to the patch as it is.  But as someone newer it seems like the
following documents the use of lru as much if not more.

Compile tested only but feel free to merge if you like.
Ira

From 63fa92a940fa17567ab45a64b7ac058d4d41a54d Mon Sep 17 00:00:00 2001
From: Ira Weiny <ira.weiny@intel.com>
Date: Wed, 29 Apr 2020 11:10:59 -0700
Subject: [PATCH] mm: Complete documenting the use of lru for pgd_list

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 arch/x86/mm/fault.c          | 2 +-
 arch/x86/mm/init_64.c        | 4 ++--
 arch/x86/mm/pat/set_memory.c | 2 +-
 arch/x86/mm/pgtable.c        | 4 ++--
 arch/x86/xen/mmu_pv.c        | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/x86/mm/fault.c b/arch/x86/mm/fault.c
index a51df516b87b..f07d477f8787 100644
--- a/arch/x86/mm/fault.c
+++ b/arch/x86/mm/fault.c
@@ -203,7 +203,7 @@ static void vmalloc_sync(void)
 		struct page *page;
 
 		spin_lock(&pgd_lock);
-		list_for_each_entry(page, &pgd_list, lru) {
+		list_for_each_entry(page, &pgd_list, pgd_list) {
 			spinlock_t *pgt_lock;
 
 			/* the pgt_lock only for Xen */
diff --git a/arch/x86/mm/init_64.c b/arch/x86/mm/init_64.c
index 3b289c2f75cd..e2ae3618a65d 100644
--- a/arch/x86/mm/init_64.c
+++ b/arch/x86/mm/init_64.c
@@ -140,7 +140,7 @@ static void sync_global_pgds_l5(unsigned long start, unsigned long end)
 			continue;
 
 		spin_lock(&pgd_lock);
-		list_for_each_entry(page, &pgd_list, lru) {
+		list_for_each_entry(page, &pgd_list, pgd_list) {
 			pgd_t *pgd;
 			spinlock_t *pgt_lock;
 
@@ -181,7 +181,7 @@ static void sync_global_pgds_l4(unsigned long start, unsigned long end)
 			continue;
 
 		spin_lock(&pgd_lock);
-		list_for_each_entry(page, &pgd_list, lru) {
+		list_for_each_entry(page, &pgd_list, pgd_list) {
 			pgd_t *pgd;
 			p4d_t *p4d;
 			spinlock_t *pgt_lock;
diff --git a/arch/x86/mm/pat/set_memory.c b/arch/x86/mm/pat/set_memory.c
index 59eca6a94ce7..a1edfc593141 100644
--- a/arch/x86/mm/pat/set_memory.c
+++ b/arch/x86/mm/pat/set_memory.c
@@ -723,7 +723,7 @@ static void __set_pmd_pte(pte_t *kpte, unsigned long address, pte_t pte)
 	if (!SHARED_KERNEL_PMD) {
 		struct page *page;
 
-		list_for_each_entry(page, &pgd_list, lru) {
+		list_for_each_entry(page, &pgd_list, pgd_list) {
 			pgd_t *pgd;
 			p4d_t *p4d;
 			pud_t *pud;
diff --git a/arch/x86/mm/pgtable.c b/arch/x86/mm/pgtable.c
index 8f4255662c5a..28ea8cc3f3a2 100644
--- a/arch/x86/mm/pgtable.c
+++ b/arch/x86/mm/pgtable.c
@@ -87,14 +87,14 @@ static inline void pgd_list_add(pgd_t *pgd)
 {
 	struct page *page = virt_to_page(pgd);
 
-	list_add(&page->lru, &pgd_list);
+	list_add(&page->pgd_list, &pgd_list);
 }
 
 static inline void pgd_list_del(pgd_t *pgd)
 {
 	struct page *page = virt_to_page(pgd);
 
-	list_del(&page->lru);
+	list_del(&page->pgd_list);
 	page->pt_mm = NULL;
 }
 
diff --git a/arch/x86/xen/mmu_pv.c b/arch/x86/xen/mmu_pv.c
index bbba8b17829a..df6592be3208 100644
--- a/arch/x86/xen/mmu_pv.c
+++ b/arch/x86/xen/mmu_pv.c
@@ -844,7 +844,7 @@ void xen_mm_pin_all(void)
 
 	spin_lock(&pgd_lock);
 
-	list_for_each_entry(page, &pgd_list, lru) {
+	list_for_each_entry(page, &pgd_list, pgd_list) {
 		if (!PagePinned(page)) {
 			__xen_pgd_pin(&init_mm, (pgd_t *)page_address(page));
 			SetPageSavePinned(page);
@@ -963,7 +963,7 @@ void xen_mm_unpin_all(void)
 
 	spin_lock(&pgd_lock);
 
-	list_for_each_entry(page, &pgd_list, lru) {
+	list_for_each_entry(page, &pgd_list, pgd_list) {
 		if (PageSavePinned(page)) {
 			BUG_ON(!PagePinned(page));
 			__xen_pgd_unpin(&init_mm, (pgd_t *)page_address(page));
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
