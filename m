Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9C2D7217
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 11:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=czinARjxI++jCgPGfPCd+IIHHmzNQ6tRLsQoSFBM4Ak=; b=h1xLf7Q7pPaxoqVJ2lGF9BwsXs
	4XrlfeSi7CRROfiLfIT3EtJZbyx81avK1J+6CDCPS9TK0JOneVKaW7fQtCJDTembeESu5mjU2C56Q
	05i9s+imDHCSAeQRO0mbb9RRmFlAAzcXAmyCc3zjCTdjzTIQVeL5QZP1g0JM5CoI48Ry2a8Nnm4nH
	ta4D0x1r8IZY7wAdlTzvrGtorY2t1Lu/zjw1NAc10x2HYkDuyRNmYvZ0RU2/B9QnI1+1atHRz6b7V
	/eaoIYmfBv2a5rEj+gxUs4TKlDx50MLliK3xl/LI9SIYKLEwxECjZSr5drVRdtNxIzUNsOFRSyd2o
	8DD4Rs3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJ1z-0002ch-Ay; Tue, 15 Oct 2019 09:22:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKJ1U-0002WO-85; Tue, 15 Oct 2019 09:21:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89C7828;
 Tue, 15 Oct 2019 02:21:43 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.142])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5D3623F718;
 Tue, 15 Oct 2019 02:21:31 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH V6 1/2] mm/page_alloc: Make alloc_gigantic_page() available
 for general use
Date: Tue, 15 Oct 2019 14:51:41 +0530
Message-Id: <1571131302-32290-2-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
References: <1571131302-32290-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_022144_395654_103BE6EE 
X-CRM114-Status: GOOD (  22.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 Dave Hansen <dave.hansen@intel.com>, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Andrea Arcangeli <aarcange@redhat.com>, linux-s390@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Rientjes <rientjes@google.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linuxppc-dev@lists.ozlabs.org,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 Oscar Salvador <osalvador@suse.de>, Christophe Leroy <christophe.leroy@c-s.fr>,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mel Gorman <mgorman@techsingularity.net>,
 "David S. Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

alloc_gigantic_page() implements an allocation method where it scans over
various zones looking for a large contiguous memory block which could not
have been allocated through the buddy allocator. A subsequent patch which
tests arch page table helpers needs such a method to allocate PUD_SIZE
sized memory block. In the future such methods might have other use cases
as well. So alloc_gigantic_page() has been split carving out actual memory
allocation method and made available via new alloc_gigantic_page_order()
which is wrapped under CONFIG_CONTIG_ALLOC.

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Mike Kravetz <mike.kravetz@oracle.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Michal Hocko <mhocko@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Steven Price <Steven.Price@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: Sri Krishna chowdary <schowdary@nvidia.com>
Cc: Dave Hansen <dave.hansen@intel.com>
Cc: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Vineet Gupta <vgupta@synopsys.com>
Cc: James Hogan <jhogan@kernel.org>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Kirill A. Shutemov <kirill@shutemov.name>
Cc: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: David Rientjes <rientjes@google.com>
Cc: Andrea Arcangeli <aarcange@redhat.com>
Cc: Oscar Salvador <osalvador@suse.de>
Cc: Mel Gorman <mgorman@techsingularity.net>
Cc: linux-snps-arc@lists.infradead.org
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-s390@vger.kernel.org
Cc: linux-sh@vger.kernel.org
Cc: sparclinux@vger.kernel.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 include/linux/gfp.h |  3 ++
 mm/hugetlb.c        | 76 +----------------------------------
 mm/page_alloc.c     | 98 +++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 102 insertions(+), 75 deletions(-)

diff --git a/include/linux/gfp.h b/include/linux/gfp.h
index fb07b503dc45..379ad23437d1 100644
--- a/include/linux/gfp.h
+++ b/include/linux/gfp.h
@@ -589,6 +589,9 @@ static inline bool pm_suspended_storage(void)
 /* The below functions must be run on a range from a single zone. */
 extern int alloc_contig_range(unsigned long start, unsigned long end,
 			      unsigned migratetype, gfp_t gfp_mask);
+extern struct page *alloc_gigantic_page_order(unsigned int order,
+					      gfp_t gfp_mask, int nid,
+					      nodemask_t *nodemask);
 #endif
 void free_contig_range(unsigned long pfn, unsigned int nr_pages);
 
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index 977f9a323a7a..d199556a4a2c 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -1023,86 +1023,12 @@ static void free_gigantic_page(struct page *page, unsigned int order)
 }
 
 #ifdef CONFIG_CONTIG_ALLOC
-static int __alloc_gigantic_page(unsigned long start_pfn,
-				unsigned long nr_pages, gfp_t gfp_mask)
-{
-	unsigned long end_pfn = start_pfn + nr_pages;
-	return alloc_contig_range(start_pfn, end_pfn, MIGRATE_MOVABLE,
-				  gfp_mask);
-}
-
-static bool pfn_range_valid_gigantic(struct zone *z,
-			unsigned long start_pfn, unsigned long nr_pages)
-{
-	unsigned long i, end_pfn = start_pfn + nr_pages;
-	struct page *page;
-
-	for (i = start_pfn; i < end_pfn; i++) {
-		if (!pfn_valid(i))
-			return false;
-
-		page = pfn_to_page(i);
-
-		if (page_zone(page) != z)
-			return false;
-
-		if (PageReserved(page))
-			return false;
-
-		if (page_count(page) > 0)
-			return false;
-
-		if (PageHuge(page))
-			return false;
-	}
-
-	return true;
-}
-
-static bool zone_spans_last_pfn(const struct zone *zone,
-			unsigned long start_pfn, unsigned long nr_pages)
-{
-	unsigned long last_pfn = start_pfn + nr_pages - 1;
-	return zone_spans_pfn(zone, last_pfn);
-}
-
 static struct page *alloc_gigantic_page(struct hstate *h, gfp_t gfp_mask,
 		int nid, nodemask_t *nodemask)
 {
 	unsigned int order = huge_page_order(h);
-	unsigned long nr_pages = 1 << order;
-	unsigned long ret, pfn, flags;
-	struct zonelist *zonelist;
-	struct zone *zone;
-	struct zoneref *z;
-
-	zonelist = node_zonelist(nid, gfp_mask);
-	for_each_zone_zonelist_nodemask(zone, z, zonelist, gfp_zone(gfp_mask), nodemask) {
-		spin_lock_irqsave(&zone->lock, flags);
 
-		pfn = ALIGN(zone->zone_start_pfn, nr_pages);
-		while (zone_spans_last_pfn(zone, pfn, nr_pages)) {
-			if (pfn_range_valid_gigantic(zone, pfn, nr_pages)) {
-				/*
-				 * We release the zone lock here because
-				 * alloc_contig_range() will also lock the zone
-				 * at some point. If there's an allocation
-				 * spinning on this lock, it may win the race
-				 * and cause alloc_contig_range() to fail...
-				 */
-				spin_unlock_irqrestore(&zone->lock, flags);
-				ret = __alloc_gigantic_page(pfn, nr_pages, gfp_mask);
-				if (!ret)
-					return pfn_to_page(pfn);
-				spin_lock_irqsave(&zone->lock, flags);
-			}
-			pfn += nr_pages;
-		}
-
-		spin_unlock_irqrestore(&zone->lock, flags);
-	}
-
-	return NULL;
+	return alloc_gigantic_page_order(order, gfp_mask, nid, nodemask);
 }
 
 static void prep_new_huge_page(struct hstate *h, struct page *page, int nid);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 6ab8eb670fd3..0f67367213c6 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -8497,6 +8497,104 @@ int alloc_contig_range(unsigned long start, unsigned long end,
 				pfn_max_align_up(end), migratetype);
 	return ret;
 }
+
+static int __alloc_gigantic_page(unsigned long start_pfn,
+				 unsigned long nr_pages, gfp_t gfp_mask)
+{
+	unsigned long end_pfn = start_pfn + nr_pages;
+
+	return alloc_contig_range(start_pfn, end_pfn, MIGRATE_MOVABLE,
+				  gfp_mask);
+}
+
+static bool pfn_range_valid_gigantic(struct zone *z, unsigned long start_pfn,
+				     unsigned long nr_pages)
+{
+	unsigned long i, end_pfn = start_pfn + nr_pages;
+	struct page *page;
+
+	for (i = start_pfn; i < end_pfn; i++) {
+		if (!pfn_valid(i))
+			return false;
+
+		page = pfn_to_page(i);
+
+		if (page_zone(page) != z)
+			return false;
+
+		if (PageReserved(page))
+			return false;
+
+		if (page_count(page) > 0)
+			return false;
+
+		if (PageHuge(page))
+			return false;
+	}
+	return true;
+}
+
+static bool zone_spans_last_pfn(const struct zone *zone,
+				unsigned long start_pfn, unsigned long nr_pages)
+{
+	unsigned long last_pfn = start_pfn + nr_pages - 1;
+
+	return zone_spans_pfn(zone, last_pfn);
+}
+
+/**
+ * alloc_gigantic_page_order() -- tries to allocate given order of pages
+ * @order:	allocation order (greater than MAX_ORDER)
+ * @gfp_mask:	GFP mask to use during compaction
+ * @nid:	allocation node
+ * @nodemask:	allocation nodemask
+ *
+ * This routine is an wrapper around alloc_contig_range() which scans over
+ * all zones on an applicable zonelist to find a contiguous pfn range which
+ * can the be allocated with alloc_contig_range(). This routine is intended
+ * to be used for allocations greater than MAX_ORDER.
+ *
+ * Return: page on success or NULL on failure. On success a memory block
+ * of 'order' starting with 'page' has been allocated successfully. Memory
+ * allocated here needs to be freed with free_contig_range().
+ */
+struct page *alloc_gigantic_page_order(unsigned int order, gfp_t gfp_mask,
+				       int nid, nodemask_t *nodemask)
+{
+	unsigned long nr_pages = 1 << order;
+	unsigned long ret, pfn, flags;
+	struct zonelist *zonelist;
+	struct zone *zone;
+	struct zoneref *z;
+
+	zonelist = node_zonelist(nid, gfp_mask);
+	for_each_zone_zonelist_nodemask(zone, z, zonelist,
+					gfp_zone(gfp_mask), nodemask) {
+		spin_lock_irqsave(&zone->lock, flags);
+
+		pfn = ALIGN(zone->zone_start_pfn, nr_pages);
+		while (zone_spans_last_pfn(zone, pfn, nr_pages)) {
+			if (pfn_range_valid_gigantic(zone, pfn, nr_pages)) {
+				/*
+				 * We release the zone lock here because
+				 * alloc_contig_range() will also lock the zone
+				 * at some point. If there's an allocation
+				 * spinning on this lock, it may win the race
+				 * and cause alloc_contig_range() to fail...
+				 */
+				spin_unlock_irqrestore(&zone->lock, flags);
+				ret = __alloc_gigantic_page(pfn, nr_pages,
+							gfp_mask);
+				if (!ret)
+					return pfn_to_page(pfn);
+				spin_lock_irqsave(&zone->lock, flags);
+			}
+			pfn += nr_pages;
+		}
+		spin_unlock_irqrestore(&zone->lock, flags);
+	}
+	return NULL;
+}
 #endif /* CONFIG_CONTIG_ALLOC */
 
 void free_contig_range(unsigned long pfn, unsigned int nr_pages)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
