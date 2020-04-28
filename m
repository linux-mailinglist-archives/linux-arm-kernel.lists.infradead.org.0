Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8C21BCC9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 21:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2BjRWloGZCBjf+p28ksh1jeqFuYhUzt3u1vrMB0DRU=; b=elqnrsCFVPDK/8
	FPuTjMDCnsX4KP35v+ZpiI8ZgI5E/NAu15xuMIlqen6c36m0l9P42VoMY5cip2O20oJypZa4pEUAc
	rjIVw4EUf9TZtqk62tMfCwUuhqWg77G4RR1rxpZM596QMlZwvXk5LI/40q2bOKxpaRHHCTPxvTH89
	Xqe6RAeqxsq1gGwxEb6YEFaMmc+WI7USE/yylRor7auhjnsdhb4UL+9QSCcyq9/J4w4PRZmxzua/u
	I3xVvLQbQ9NJ6+UwBBZatu/Ce7FKidmLppOkNH1JJOOyxm8ja0ImYw8IkkXGp1EOYJ4EU7kKHYaIY
	NO9nkdWMf3qef0TV/xuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWAz-0000WW-UZ; Tue, 28 Apr 2020 19:45:53 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTW9z-0005uc-0Y; Tue, 28 Apr 2020 19:44:51 +0000
From: Matthew Wilcox <willy@infradead.org>
To: linux-mm@kvack.org
Subject: [PATCH 4/7] arm64: Thread mm_struct throughout page table allocation
Date: Tue, 28 Apr 2020 12:44:46 -0700
Message-Id: <20200428194449.22615-5-willy@infradead.org>
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
Make sure arm64 has the appropriate mm_struct at the point it needs to
call the constructor.

Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
---
 arch/arm64/mm/mmu.c | 89 ++++++++++++++++++++++-----------------------
 1 file changed, 43 insertions(+), 46 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a374e4f51a62..69ecc83c3be0 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -88,7 +88,9 @@ pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
 }
 EXPORT_SYMBOL(phys_mem_access_prot);
 
-static phys_addr_t __init early_pgtable_alloc(int shift)
+typedef phys_addr_t (arm_pt_alloc_t)(int size, struct mm_struct *);
+
+static phys_addr_t __init early_pgtable_alloc(int shift, struct mm_struct *mm)
 {
 	phys_addr_t phys;
 	void *ptr;
@@ -162,11 +164,9 @@ static void init_pte(pmd_t *pmdp, unsigned long addr, unsigned long end,
 	pte_clear_fixmap();
 }
 
-static void alloc_init_cont_pte(pmd_t *pmdp, unsigned long addr,
-				unsigned long end, phys_addr_t phys,
-				pgprot_t prot,
-				phys_addr_t (*pgtable_alloc)(int),
-				int flags)
+static void alloc_init_cont_pte(struct mm_struct *mm, pmd_t *pmdp,
+		unsigned long addr, unsigned long end, phys_addr_t phys,
+		pgprot_t prot, arm_pt_alloc_t pgtable_alloc, int flags)
 {
 	unsigned long next;
 	pmd_t pmd = READ_ONCE(*pmdp);
@@ -175,7 +175,7 @@ static void alloc_init_cont_pte(pmd_t *pmdp, unsigned long addr,
 	if (pmd_none(pmd)) {
 		phys_addr_t pte_phys;
 		BUG_ON(!pgtable_alloc);
-		pte_phys = pgtable_alloc(PAGE_SHIFT);
+		pte_phys = pgtable_alloc(PAGE_SHIFT, mm);
 		__pmd_populate(pmdp, pte_phys, PMD_TYPE_TABLE);
 		pmd = READ_ONCE(*pmdp);
 	}
@@ -197,9 +197,9 @@ static void alloc_init_cont_pte(pmd_t *pmdp, unsigned long addr,
 	} while (addr = next, addr != end);
 }
 
-static void init_pmd(pud_t *pudp, unsigned long addr, unsigned long end,
-		     phys_addr_t phys, pgprot_t prot,
-		     phys_addr_t (*pgtable_alloc)(int), int flags)
+static void init_pmd(struct mm_struct *mm, pud_t *pudp, unsigned long addr,
+		unsigned long end, phys_addr_t phys, pgprot_t prot,
+		arm_pt_alloc_t pgtable_alloc, int flags)
 {
 	unsigned long next;
 	pmd_t *pmdp;
@@ -222,7 +222,7 @@ static void init_pmd(pud_t *pudp, unsigned long addr, unsigned long end,
 			BUG_ON(!pgattr_change_is_safe(pmd_val(old_pmd),
 						      READ_ONCE(pmd_val(*pmdp))));
 		} else {
-			alloc_init_cont_pte(pmdp, addr, next, phys, prot,
+			alloc_init_cont_pte(mm, pmdp, addr, next, phys, prot,
 					    pgtable_alloc, flags);
 
 			BUG_ON(pmd_val(old_pmd) != 0 &&
@@ -234,10 +234,9 @@ static void init_pmd(pud_t *pudp, unsigned long addr, unsigned long end,
 	pmd_clear_fixmap();
 }
 
-static void alloc_init_cont_pmd(pud_t *pudp, unsigned long addr,
-				unsigned long end, phys_addr_t phys,
-				pgprot_t prot,
-				phys_addr_t (*pgtable_alloc)(int), int flags)
+static void alloc_init_cont_pmd(struct mm_struct *mm, pud_t *pudp,
+		unsigned long addr, unsigned long end, phys_addr_t phys,
+		pgprot_t prot, arm_pt_alloc_t pgtable_alloc, int flags)
 {
 	unsigned long next;
 	pud_t pud = READ_ONCE(*pudp);
@@ -249,7 +248,7 @@ static void alloc_init_cont_pmd(pud_t *pudp, unsigned long addr,
 	if (pud_none(pud)) {
 		phys_addr_t pmd_phys;
 		BUG_ON(!pgtable_alloc);
-		pmd_phys = pgtable_alloc(PMD_SHIFT);
+		pmd_phys = pgtable_alloc(PMD_SHIFT, mm);
 		__pud_populate(pudp, pmd_phys, PUD_TYPE_TABLE);
 		pud = READ_ONCE(*pudp);
 	}
@@ -265,7 +264,8 @@ static void alloc_init_cont_pmd(pud_t *pudp, unsigned long addr,
 		    (flags & NO_CONT_MAPPINGS) == 0)
 			__prot = __pgprot(pgprot_val(prot) | PTE_CONT);
 
-		init_pmd(pudp, addr, next, phys, __prot, pgtable_alloc, flags);
+		init_pmd(mm, pudp, addr, next, phys, __prot, pgtable_alloc,
+				flags);
 
 		phys += next - addr;
 	} while (addr = next, addr != end);
@@ -283,10 +283,9 @@ static inline bool use_1G_block(unsigned long addr, unsigned long next,
 	return true;
 }
 
-static void alloc_init_pud(pgd_t *pgdp, unsigned long addr, unsigned long end,
-			   phys_addr_t phys, pgprot_t prot,
-			   phys_addr_t (*pgtable_alloc)(int),
-			   int flags)
+static void alloc_init_pud(struct mm_struct *mm, pgd_t *pgdp,
+		unsigned long addr, unsigned long end, phys_addr_t phys,
+		pgprot_t prot, arm_pt_alloc_t pgtable_alloc, int flags)
 {
 	unsigned long next;
 	pud_t *pudp;
@@ -295,7 +294,7 @@ static void alloc_init_pud(pgd_t *pgdp, unsigned long addr, unsigned long end,
 	if (pgd_none(pgd)) {
 		phys_addr_t pud_phys;
 		BUG_ON(!pgtable_alloc);
-		pud_phys = pgtable_alloc(PUD_SHIFT);
+		pud_phys = pgtable_alloc(PUD_SHIFT, mm);
 		__pgd_populate(pgdp, pud_phys, PUD_TYPE_TABLE);
 		pgd = READ_ONCE(*pgdp);
 	}
@@ -321,7 +320,7 @@ static void alloc_init_pud(pgd_t *pgdp, unsigned long addr, unsigned long end,
 			BUG_ON(!pgattr_change_is_safe(pud_val(old_pud),
 						      READ_ONCE(pud_val(*pudp))));
 		} else {
-			alloc_init_cont_pmd(pudp, addr, next, phys, prot,
+			alloc_init_cont_pmd(mm, pudp, addr, next, phys, prot,
 					    pgtable_alloc, flags);
 
 			BUG_ON(pud_val(old_pud) != 0 &&
@@ -333,11 +332,9 @@ static void alloc_init_pud(pgd_t *pgdp, unsigned long addr, unsigned long end,
 	pud_clear_fixmap();
 }
 
-static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
-				 unsigned long virt, phys_addr_t size,
-				 pgprot_t prot,
-				 phys_addr_t (*pgtable_alloc)(int),
-				 int flags)
+static void __create_pgd_mapping(struct mm_struct *mm, pgd_t *pgdir,
+		phys_addr_t phys, unsigned long virt, phys_addr_t size,
+		pgprot_t prot, arm_pt_alloc_t pgtable_alloc, int flags)
 {
 	unsigned long addr, end, next;
 	pgd_t *pgdp = pgd_offset_raw(pgdir, virt);
@@ -355,13 +352,13 @@ static void __create_pgd_mapping(pgd_t *pgdir, phys_addr_t phys,
 
 	do {
 		next = pgd_addr_end(addr, end);
-		alloc_init_pud(pgdp, addr, next, phys, prot, pgtable_alloc,
+		alloc_init_pud(mm, pgdp, addr, next, phys, prot, pgtable_alloc,
 			       flags);
 		phys += next - addr;
 	} while (pgdp++, addr = next, addr != end);
 }
 
-static phys_addr_t __pgd_pgtable_alloc(int shift)
+static phys_addr_t __pgd_pgtable_alloc(int shift, struct mm_struct *mm)
 {
 	void *ptr = (void *)__get_free_page(GFP_PGTABLE_KERNEL);
 	BUG_ON(!ptr);
@@ -371,9 +368,9 @@ static phys_addr_t __pgd_pgtable_alloc(int shift)
 	return __pa(ptr);
 }
 
-static phys_addr_t pgd_pgtable_alloc(int shift)
+static phys_addr_t pgd_pgtable_alloc(int shift, struct mm_struct *mm)
 {
-	phys_addr_t pa = __pgd_pgtable_alloc(shift);
+	phys_addr_t pa = __pgd_pgtable_alloc(shift, mm);
 
 	/*
 	 * Call proper page table ctor in case later we need to
@@ -404,8 +401,8 @@ static void __init create_mapping_noalloc(phys_addr_t phys, unsigned long virt,
 			&phys, virt);
 		return;
 	}
-	__create_pgd_mapping(init_mm.pgd, phys, virt, size, prot, NULL,
-			     NO_CONT_MAPPINGS);
+	__create_pgd_mapping(&init_mm, init_mm.pgd, phys, virt, size, prot,
+			NULL, NO_CONT_MAPPINGS);
 }
 
 void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
@@ -419,7 +416,7 @@ void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 	if (page_mappings_only)
 		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
 
-	__create_pgd_mapping(mm->pgd, phys, virt, size, prot,
+	__create_pgd_mapping(mm, mm->pgd, phys, virt, size, prot,
 			     pgd_pgtable_alloc, flags);
 }
 
@@ -432,8 +429,8 @@ static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
 		return;
 	}
 
-	__create_pgd_mapping(init_mm.pgd, phys, virt, size, prot, NULL,
-			     NO_CONT_MAPPINGS);
+	__create_pgd_mapping(&init_mm, init_mm.pgd, phys, virt, size, prot,
+			NULL, NO_CONT_MAPPINGS);
 
 	/* flush the TLBs after updating live kernel mappings */
 	flush_tlb_kernel_range(virt, virt + size);
@@ -442,8 +439,8 @@ static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
 static void __init __map_memblock(pgd_t *pgdp, phys_addr_t start,
 				  phys_addr_t end, pgprot_t prot, int flags)
 {
-	__create_pgd_mapping(pgdp, start, __phys_to_virt(start), end - start,
-			     prot, early_pgtable_alloc, flags);
+	__create_pgd_mapping(&init_mm, pgdp, start, __phys_to_virt(start),
+			end - start, prot, early_pgtable_alloc, flags);
 }
 
 void __init mark_linear_text_alias_ro(void)
@@ -547,8 +544,8 @@ static void __init map_kernel_segment(pgd_t *pgdp, void *va_start, void *va_end,
 	BUG_ON(!PAGE_ALIGNED(pa_start));
 	BUG_ON(!PAGE_ALIGNED(size));
 
-	__create_pgd_mapping(pgdp, pa_start, (unsigned long)va_start, size, prot,
-			     early_pgtable_alloc, flags);
+	__create_pgd_mapping(&init_mm, pgdp, pa_start, (unsigned long)va_start,
+			size, prot, early_pgtable_alloc, flags);
 
 	if (!(vm_flags & VM_NO_GUARD))
 		size += PAGE_SIZE;
@@ -591,8 +588,8 @@ static int __init map_entry_trampoline(void)
 
 	/* Map only the text into the trampoline page table */
 	memset(tramp_pg_dir, 0, PGD_SIZE);
-	__create_pgd_mapping(tramp_pg_dir, pa_start, TRAMP_VALIAS, PAGE_SIZE,
-			     prot, __pgd_pgtable_alloc, 0);
+	__create_pgd_mapping(&init_mm, tramp_pg_dir, pa_start, TRAMP_VALIAS,
+			PAGE_SIZE, prot, __pgd_pgtable_alloc, 0);
 
 	/* Map both the text and data into the kernel page table */
 	__set_fixmap(FIX_ENTRY_TRAMP_TEXT, pa_start, prot);
@@ -1381,9 +1378,9 @@ int arch_add_memory(int nid, u64 start, u64 size,
 	if (rodata_full || debug_pagealloc_enabled())
 		flags = NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS;
 
-	__create_pgd_mapping(swapper_pg_dir, start, __phys_to_virt(start),
-			     size, params->pgprot, __pgd_pgtable_alloc,
-			     flags);
+	__create_pgd_mapping(&init_mm, swapper_pg_dir, start,
+			__phys_to_virt(start), size, params->pgprot,
+			__pgd_pgtable_alloc, flags);
 
 	memblock_clear_nomap(start, size);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
