Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDE11BCC9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAttgk5aXeOv835goKZJGZK8gumDPlcBE0yesdDv2XE=; b=u6oIHWVzqIn2zU
	69F9ECBy5CSNroQkffbfaqc01ALAkJ/R+dZbYKbjAcEo+Mvrdf/VnXNp+XRt7Ufrh4ksmNyBRBtPX
	JlMm9lm+9KN9KBbxGEP+5z3D6rXYKN6mlywPnFQpbL2M/tLovLK3Jy/Ts8W19l3ZYvMVC63mY3cAC
	SppdRVAPd71n42n0hSzNKHj19RDBsjYXd/IaHRnSLg40l1nzBWUV15hCnkp+VtQZC/EdZyYP69nXq
	fbhu5fJCcDvHAjHktozmSA+8R1CXT6NeC8lZOUqDf1z//z1+IpuLYui7nt6I8uBdEbHOMhak8LXEM
	xbI9eWtiXH7pV2myrgNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWAh-0006AD-HY; Tue, 28 Apr 2020 19:45:35 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9z-0005uo-43; Tue, 28 Apr 2020 19:44:51 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 7/7] mm: Set pt_mm in PMD constructor
Date: Tue, 28 Apr 2020 12:44:49 -0700
Message-Id: <20200428194449.22615-8-willy@infradead.org>
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

By setting pt_mm for pages in use as page tables, we can help with
debugging and lay the foundation for handling hardware errors in page
tables more gracefully.  It also opens up the possibility for adding
more sanity checks in the future.

Also set and clear the PageTable bit so that we know these are page tables.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 arch/arm64/include/asm/pgalloc.h   |  2 +-
 arch/arm64/mm/mmu.c                |  2 +-
 arch/powerpc/mm/book3s64/pgtable.c |  2 +-
 arch/s390/include/asm/pgalloc.h    |  2 +-
 arch/x86/include/asm/pgalloc.h     |  2 +-
 arch/x86/mm/pgtable.c              |  2 +-
 include/linux/mm.h                 | 13 +++++++++++--
 7 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/pgalloc.h b/arch/arm64/include/asm/pgalloc.h
index 172d76fa0245..920da9c5786c 100644
--- a/arch/arm64/include/asm/pgalloc.h
+++ b/arch/arm64/include/asm/pgalloc.h
@@ -30,7 +30,7 @@ static inline pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long addr)
 	page = alloc_page(gfp);
 	if (!page)
 		return NULL;
-	if (!pgtable_pmd_page_ctor(page)) {
+	if (!pgtable_pmd_page_ctor(page, mm)) {
 		__free_page(page);
 		return NULL;
 	}
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index c706bed1e496..b7bdde1990be 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -383,7 +383,7 @@ static phys_addr_t pgd_pgtable_alloc(int shift, struct mm_struct *mm)
 	if (shift == PAGE_SHIFT)
 		BUG_ON(!pgtable_pte_page_ctor(phys_to_page(pa), mm));
 	else if (shift == PMD_SHIFT)
-		BUG_ON(!pgtable_pmd_page_ctor(phys_to_page(pa)));
+		BUG_ON(!pgtable_pmd_page_ctor(phys_to_page(pa), mm));
 
 	return pa;
 }
diff --git a/arch/powerpc/mm/book3s64/pgtable.c b/arch/powerpc/mm/book3s64/pgtable.c
index e0bb69c616e4..9fda5287c197 100644
--- a/arch/powerpc/mm/book3s64/pgtable.c
+++ b/arch/powerpc/mm/book3s64/pgtable.c
@@ -297,7 +297,7 @@ static pmd_t *__alloc_for_pmdcache(struct mm_struct *mm)
 	page = alloc_page(gfp);
 	if (!page)
 		return NULL;
-	if (!pgtable_pmd_page_ctor(page)) {
+	if (!pgtable_pmd_page_ctor(page, mm)) {
 		__free_pages(page, 0);
 		return NULL;
 	}
diff --git a/arch/s390/include/asm/pgalloc.h b/arch/s390/include/asm/pgalloc.h
index 74a352f8c0d1..bebad4e5d42a 100644
--- a/arch/s390/include/asm/pgalloc.h
+++ b/arch/s390/include/asm/pgalloc.h
@@ -86,7 +86,7 @@ static inline pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long vmaddr)
 	if (!table)
 		return NULL;
 	crst_table_init(table, _SEGMENT_ENTRY_EMPTY);
-	if (!pgtable_pmd_page_ctor(virt_to_page(table))) {
+	if (!pgtable_pmd_page_ctor(virt_to_page(table), mm)) {
 		crst_table_free(mm, table);
 		return NULL;
 	}
diff --git a/arch/x86/include/asm/pgalloc.h b/arch/x86/include/asm/pgalloc.h
index 29aa7859bdee..33514f0a9e79 100644
--- a/arch/x86/include/asm/pgalloc.h
+++ b/arch/x86/include/asm/pgalloc.h
@@ -96,7 +96,7 @@ static inline pmd_t *pmd_alloc_one(struct mm_struct *mm, unsigned long addr)
 	page = alloc_pages(gfp, 0);
 	if (!page)
 		return NULL;
-	if (!pgtable_pmd_page_ctor(page)) {
+	if (!pgtable_pmd_page_ctor(page, mm)) {
 		__free_pages(page, 0);
 		return NULL;
 	}
diff --git a/arch/x86/mm/pgtable.c b/arch/x86/mm/pgtable.c
index f5f46737aea0..8f4255662c5a 100644
--- a/arch/x86/mm/pgtable.c
+++ b/arch/x86/mm/pgtable.c
@@ -229,7 +229,7 @@ static int preallocate_pmds(struct mm_struct *mm, pmd_t *pmds[], int count)
 		pmd_t *pmd = (pmd_t *)__get_free_page(gfp);
 		if (!pmd)
 			failed = true;
-		if (pmd && !pgtable_pmd_page_ctor(virt_to_page(pmd))) {
+		if (pmd && !pgtable_pmd_page_ctor(virt_to_page(pmd), mm)) {
 			free_page((unsigned long)pmd);
 			pmd = NULL;
 			failed = true;
diff --git a/include/linux/mm.h b/include/linux/mm.h
index 2a98eebeba91..e2924d900fc5 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -2216,11 +2216,14 @@ static inline spinlock_t *pmd_lockptr(struct mm_struct *mm, pmd_t *pmd)
 	return ptlock_ptr(pmd_to_page(pmd));
 }
 
-static inline bool pgtable_pmd_page_ctor(struct page *page)
+static inline
+bool pgtable_pmd_page_ctor(struct page *page, struct mm_struct *mm)
 {
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 	page->pmd_huge_pte = NULL;
 #endif
+	__SetPageTable(page);
+	page->pt_mm = mm;
 	return ptlock_init(page);
 }
 
@@ -2229,6 +2232,8 @@ static inline void pgtable_pmd_page_dtor(struct page *page)
 #ifdef CONFIG_TRANSPARENT_HUGEPAGE
 	VM_BUG_ON_PAGE(page->pmd_huge_pte, page);
 #endif
+	__ClearPageTable(page);
+	page->pt_mm = NULL;
 	ptlock_free(page);
 }
 
@@ -2241,7 +2246,11 @@ static inline spinlock_t *pmd_lockptr(struct mm_struct *mm, pmd_t *pmd)
 	return &mm->page_table_lock;
 }
 
-static inline bool pgtable_pmd_page_ctor(struct page *page) { return true; }
+static inline
+bool pgtable_pmd_page_ctor(struct page *page, struct mm_struct *mm)
+{
+	return true;
+}
 static inline void pgtable_pmd_page_dtor(struct page *page) {}
 
 #define pmd_huge_pte(mm, pmd) ((mm)->pmd_huge_pte)
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
