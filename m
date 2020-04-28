Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D311BCCA3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXMFtJTGf5P6B7XAJv+/VGjfKCxL6fbi8+vKP2+CWM0=; b=gLS8+Y01aGuc0+
	kR+tMW8S1Vv+MSQVac3AetnXKQH2kxL3PEkuEMYj9aN1bGZfdUzgnsEwigNuPvthyF+MaGlxgdlpZ
	rjh5gj442v6tBCJMbXqOq2KK89UAErO6uFivqleHVrwrfbD3yaQUffnzjSgyTYdP0/lBsyEsIMU//
	GsmIdArcpJ/NNxL+R0Nme88OXvx8ijytchOyRBJ8RGNBKOPN6P/p8TUIc2iSNBXD4pLVgO9hnyuUe
	H6+uspFAWWBP0RWRBiIGhp2sf+rslGPDV8J1IsreRtLYdeKzcBe7uU+EhXUdfh9vv/UCXpa7Av42P
	ndA2LjQxYOMZCPMToaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWBb-000173-UY; Tue, 28 Apr 2020 19:46:31 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9y-0005uY-Vh; Tue, 28 Apr 2020 19:44:50 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 3/7] arm: Thread mm_struct throughout page table allocation
Date: Tue, 28 Apr 2020 12:44:45 -0700
Message-Id: <20200428194449.22615-4-willy@infradead.org>
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

An upcoming patch will pass mm_struct to the page table constructor.
Make sure ARM has the appropriate mm_struct at the point it needs to
call the constructor.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 arch/arm/mm/mmu.c | 64 +++++++++++++++++++++++------------------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/arch/arm/mm/mmu.c b/arch/arm/mm/mmu.c
index ec8d0008bfa1..e5275bfbe695 100644
--- a/arch/arm/mm/mmu.c
+++ b/arch/arm/mm/mmu.c
@@ -690,7 +690,9 @@ EXPORT_SYMBOL(phys_mem_access_prot);
 
 #define vectors_base()	(vectors_high() ? 0xffff0000 : 0)
 
-static void __init *early_alloc(unsigned long sz)
+typedef void *(arm_pt_alloc_t)(unsigned long size, struct mm_struct *);
+
+static void __init *early_alloc(unsigned long sz, struct mm_struct *mm)
 {
 	void *ptr = memblock_alloc(sz, sz);
 
@@ -701,7 +703,7 @@ static void __init *early_alloc(unsigned long sz)
 	return ptr;
 }
 
-static void *__init late_alloc(unsigned long sz)
+static void *__init late_alloc(unsigned long sz, struct mm_struct *mm)
 {
 	void *ptr = (void *)__get_free_pages(GFP_PGTABLE_KERNEL, get_order(sz));
 
@@ -710,31 +712,30 @@ static void *__init late_alloc(unsigned long sz)
 	return ptr;
 }
 
-static pte_t * __init arm_pte_alloc(pmd_t *pmd, unsigned long addr,
-				unsigned long prot,
-				void *(*alloc)(unsigned long sz))
+static pte_t * __init arm_pte_alloc(struct mm_struct *mm, pmd_t *pmd,
+				unsigned long addr, unsigned long prot,
+				arm_pt_alloc_t alloc)
 {
 	if (pmd_none(*pmd)) {
-		pte_t *pte = alloc(PTE_HWTABLE_OFF + PTE_HWTABLE_SIZE);
+		pte_t *pte = alloc(PTE_HWTABLE_OFF + PTE_HWTABLE_SIZE, mm);
 		__pmd_populate(pmd, __pa(pte), prot);
 	}
 	BUG_ON(pmd_bad(*pmd));
 	return pte_offset_kernel(pmd, addr);
 }
 
-static pte_t * __init early_pte_alloc(pmd_t *pmd, unsigned long addr,
-				      unsigned long prot)
+static pte_t * __init early_pte_alloc(struct mm_struct *mm, pmd_t *pmd,
+					unsigned long addr, unsigned long prot)
 {
-	return arm_pte_alloc(pmd, addr, prot, early_alloc);
+	return arm_pte_alloc(mm, pmd, addr, prot, early_alloc);
 }
 
-static void __init alloc_init_pte(pmd_t *pmd, unsigned long addr,
-				  unsigned long end, unsigned long pfn,
-				  const struct mem_type *type,
-				  void *(*alloc)(unsigned long sz),
-				  bool ng)
+static void __init alloc_init_pte(struct mm_struct *mm, pmd_t *pmd,
+				unsigned long addr, unsigned long end,
+				unsigned long pfn, const struct mem_type *type,
+				arm_pt_alloc_t alloc, bool ng)
 {
-	pte_t *pte = arm_pte_alloc(pmd, addr, type->prot_l1, alloc);
+	pte_t *pte = arm_pte_alloc(mm, pmd, addr, type->prot_l1, alloc);
 	do {
 		set_pte_ext(pte, pfn_pte(pfn, __pgprot(type->prot_pte)),
 			    ng ? PTE_EXT_NG : 0);
@@ -769,10 +770,10 @@ static void __init __map_init_section(pmd_t *pmd, unsigned long addr,
 	flush_pmd_entry(p);
 }
 
-static void __init alloc_init_pmd(pud_t *pud, unsigned long addr,
-				      unsigned long end, phys_addr_t phys,
-				      const struct mem_type *type,
-				      void *(*alloc)(unsigned long sz), bool ng)
+static void __init alloc_init_pmd(struct mm_struct *mm, pud_t *pud,
+				unsigned long addr, unsigned long end,
+				phys_addr_t phys, const struct mem_type *type,
+				arm_pt_alloc_t alloc, bool ng)
 {
 	pmd_t *pmd = pmd_offset(pud, addr);
 	unsigned long next;
@@ -792,7 +793,7 @@ static void __init alloc_init_pmd(pud_t *pud, unsigned long addr,
 				((addr | next | phys) & ~SECTION_MASK) == 0) {
 			__map_init_section(pmd, addr, next, phys, type, ng);
 		} else {
-			alloc_init_pte(pmd, addr, next,
+			alloc_init_pte(mm, pmd, addr, next,
 				       __phys_to_pfn(phys), type, alloc, ng);
 		}
 
@@ -801,17 +802,17 @@ static void __init alloc_init_pmd(pud_t *pud, unsigned long addr,
 	} while (pmd++, addr = next, addr != end);
 }
 
-static void __init alloc_init_pud(pgd_t *pgd, unsigned long addr,
-				  unsigned long end, phys_addr_t phys,
-				  const struct mem_type *type,
-				  void *(*alloc)(unsigned long sz), bool ng)
+static void __init alloc_init_pud(struct mm_struct *mm, pgd_t *pgd,
+				unsigned long addr, unsigned long end,
+				phys_addr_t phys, const struct mem_type *type,
+				arm_pt_alloc_t alloc, bool ng)
 {
 	pud_t *pud = pud_offset(pgd, addr);
 	unsigned long next;
 
 	do {
 		next = pud_addr_end(addr, end);
-		alloc_init_pmd(pud, addr, next, phys, type, alloc, ng);
+		alloc_init_pmd(mm, pud, addr, next, phys, type, alloc, ng);
 		phys += next - addr;
 	} while (pud++, addr = next, addr != end);
 }
@@ -879,8 +880,7 @@ static void __init create_36bit_mapping(struct mm_struct *mm,
 #endif	/* !CONFIG_ARM_LPAE */
 
 static void __init __create_mapping(struct mm_struct *mm, struct map_desc *md,
-				    void *(*alloc)(unsigned long sz),
-				    bool ng)
+					arm_pt_alloc_t alloc, bool ng)
 {
 	unsigned long addr, length, end;
 	phys_addr_t phys;
@@ -914,7 +914,7 @@ static void __init __create_mapping(struct mm_struct *mm, struct map_desc *md,
 	do {
 		unsigned long next = pgd_addr_end(addr, end);
 
-		alloc_init_pud(pgd, addr, next, phys, type, alloc, ng);
+		alloc_init_pud(mm, pgd, addr, next, phys, type, alloc, ng);
 
 		phys += next - addr;
 		addr = next;
@@ -1316,7 +1316,7 @@ static void __init devicemaps_init(const struct machine_desc *mdesc)
 	/*
 	 * Allocate the vector page early.
 	 */
-	vectors = early_alloc(PAGE_SIZE * 2);
+	vectors = early_alloc(PAGE_SIZE * 2, &init_mm);
 
 	early_trap_init(vectors);
 
@@ -1413,11 +1413,11 @@ static void __init devicemaps_init(const struct machine_desc *mdesc)
 static void __init kmap_init(void)
 {
 #ifdef CONFIG_HIGHMEM
-	pkmap_page_table = early_pte_alloc(pmd_off_k(PKMAP_BASE),
+	pkmap_page_table = early_pte_alloc(&init_mm, pmd_off_k(PKMAP_BASE),
 		PKMAP_BASE, _PAGE_KERNEL_TABLE);
 #endif
 
-	early_pte_alloc(pmd_off_k(FIXADDR_START), FIXADDR_START,
+	early_pte_alloc(&init_mm, pmd_off_k(FIXADDR_START), FIXADDR_START,
 			_PAGE_KERNEL_TABLE);
 }
 
@@ -1630,7 +1630,7 @@ void __init paging_init(const struct machine_desc *mdesc)
 	top_pmd = pmd_off_k(0xffff0000);
 
 	/* allocate the zero page. */
-	zero_page = early_alloc(PAGE_SIZE);
+	zero_page = early_alloc(PAGE_SIZE, &init_mm);
 
 	bootmem_init();
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
