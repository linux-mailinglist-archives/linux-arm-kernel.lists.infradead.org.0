Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E6B1BCC95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:45:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WyCPRCMXlM3JGsfvK0faajRz0F+TLpNXvO2E8WFnQK0=; b=KkhfBmontQUNmo
	qRTZE64YRjzUeno1plmSXJamj5vynHX6eRjdZ139dYRAHmG2I8yRNQg/MY1GW4kCXeDkLEFykAsLy
	O0HQcL/CDvPgumh8+XWJcTLsRfsBASZBfjqUSYOmarxMzS8BnJQGaN+6ked1rfxDVTh1/rcVBZE3I
	T/RdcxU2laUGa9m/5PuryJJ9G3ZpGxeXa8CWwMN1CNem6etQZ7ZOcsge/GvBnEB1oB8fBe9fJsDxs
	3pNEc374G/ndWj0TbIiIfqleebaH6BZM/fzTM0A2WNMiYeN4Y/sW/RgT/2W9VBZCpnPilGkGq7qRw
	yQCHHYMD2YAbgCn/qJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWA8-0005vV-M6; Tue, 28 Apr 2020 19:45:00 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9y-0005uU-UU; Tue, 28 Apr 2020 19:44:50 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 2/7] mm: Move pt_mm within struct page
Date: Tue, 28 Apr 2020 12:44:44 -0700
Message-Id: <20200428194449.22615-3-willy@infradead.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200428194449.22615-1-willy@infradead.org>
References: <20200428194449.22615-1-willy@infradead.org>
MIME-Version: 1.0
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Russell King <linux@armlinux.org.uk>, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Matthew Wilcox (Oracle)" <willy@infradead.org>

Instead of a per-arch word within struct page, use a formerly reserved
word.  This word is shared with page->mapping, so it must be cleared
before being freed as it is checked in free_pages().

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 arch/x86/mm/pgtable.c    | 1 +
 include/linux/mm_types.h | 7 ++-----
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/x86/mm/pgtable.c b/arch/x86/mm/pgtable.c
index 7bd2c3a52297..f5f46737aea0 100644
--- a/arch/x86/mm/pgtable.c
+++ b/arch/x86/mm/pgtable.c
@@ -95,6 +95,7 @@ static inline void pgd_list_del(pgd_t *pgd)
 	struct page *page = virt_to_page(pgd);
 
 	list_del(&page->lru);
+	page->pt_mm = NULL;
 }
 
 #define UNSHARED_PTRS_PER_PGD				\
diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
index 9bb34e2cd5a5..7efa12f4626f 100644
--- a/include/linux/mm_types.h
+++ b/include/linux/mm_types.h
@@ -149,11 +149,8 @@ struct page {
 					pgtable_t pmd_huge_pte;
 				};
 			};
-			unsigned long _pt_pad_2;	/* mapping */
-			union {
-				struct mm_struct *pt_mm; /* x86 pgds only */
-				atomic_t pt_frag_refcount; /* powerpc */
-			};
+			struct mm_struct *pt_mm;
+			atomic_t pt_frag_refcount; /* powerpc */
 #if ALLOC_SPLIT_PTLOCKS
 			spinlock_t *ptl;
 #else
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
