Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B471AEBFEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K7Nz3Ldmuu0pPh4As1Er7+MhTISQ7Yd25Nv2RqfR8ZY=; b=HRkMeXPQf5amHMItiHa5XhR3gP
	QzkBWa1QJYakVUC8yxnwdAVJBB9nSYwvvEwE4gsjUI0ohFAU4OGp2ERk+uetkTPPoj8+hoz2CV1CY
	+8kQiFDDv1fO0fDL7kg6Sm0Ak+IBC+SJPzehItsUV3deznKigv5ecGe20kjzRB+IpK+mViToMaNeh
	SLpm4CIV3xRVNZ0Njk7BVT43hxPF9DrBtivUJ781GUjtS0Sxv421qUr+Uts0arC7vZ5rXQTBcjrEV
	jjfidTO8PmUuNsMUNwjE9HngZ8RPa+6uEIlzrNlvQRiKUOaE8GnqJtbuasdiPV54I7/FugW+Q9/yg
	6mR7wu0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSbe-0007ul-S4; Fri, 01 Nov 2019 08:48:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSUm-0000l8-Ut; Fri, 01 Nov 2019 08:41:29 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74220217D9;
 Fri,  1 Nov 2019 08:41:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572597684;
 bh=CoansudZcYTf0kkKADs4AchzSj7BMixCkRshhT048Go=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pCmwca/U/YKKzWdSOHnDI2wvMxxFhHhqDbn4yG7m0Fmq4266d99Bq4RF/IDYmzjJs
 9sWJ+z1TgeGEJtfI+oV0kSlcvwUZkx/lVfNf/AvdtBl0RHmp5cGc7YK1SWxLxSCuIZ
 R2dgDrw5kMUtPPLHFhZoVOk7i5emjDGFOmn6SFbk=
From: Mike Rapoport <rppt@kernel.org>
To: linux-mm@kvack.org
Subject: [PATCH v2 10/13] sparc32: use pgtable-nopud instead of 4level-fixup
Date: Fri,  1 Nov 2019 10:39:41 +0200
Message-Id: <1572597584-6390-11-git-send-email-rppt@kernel.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572597584-6390-1-git-send-email-rppt@kernel.org>
References: <1572597584-6390-1-git-send-email-rppt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_014125_652374_12B2B631 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 sparclinux@vger.kernel.org, Rolf Eike Beer <eike-kernel@sf-tec.de>,
 Vincent Chen <deanbo422@gmail.com>, Greg Ungerer <gerg@linux-m68k.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Richard Weinberger <richard@nod.at>,
 Helge Deller <deller@gmx.de>, Russell King <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Jeff Dike <jdike@addtoit.com>, Sam Creasey <sammy@sammy.net>,
 Arnd Bergmann <arnd@arndb.de>, Vineet Gupta <Vineet.Gupta1@synopsys.com>,
 linux-um@lists.infradead.org, linux-m68k@lists.linux-m68k.org,
 Greentime Hu <green.hu@gmail.com>, "Kirill A. Shutemov" <kirill@shutemov.name>,
 linux-arm-kernel@lists.infradead.org, Michal Simek <monstr@monstr.eu>,
 linux-parisc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Peter Rosin <peda@axentia.se>,
 Mike Rapoport <rppt@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

32-bit version of sparc has three-level page tables and can use
pgtable-nopud and folding of the upper layers.

Replace usage of include/asm-generic/4level-fixup.h with
include/asm-generic/pgtable-nopud.h and adjust page table manipulation
macros and functions accordingly.

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
Acked-by: David S. Miller <davem@davemloft.net>
---
 arch/sparc/include/asm/pgalloc_32.h |  6 ++---
 arch/sparc/include/asm/pgtable_32.h | 28 ++++++++++----------
 arch/sparc/mm/fault_32.c            | 11 ++++++--
 arch/sparc/mm/highmem.c             |  6 ++++-
 arch/sparc/mm/io-unit.c             |  6 ++++-
 arch/sparc/mm/iommu.c               |  6 ++++-
 arch/sparc/mm/srmmu.c               | 51 +++++++++++++++++++++++++++++--------
 7 files changed, 81 insertions(+), 33 deletions(-)

diff --git a/arch/sparc/include/asm/pgalloc_32.h b/arch/sparc/include/asm/pgalloc_32.h
index 10538a4..eae0c92 100644
--- a/arch/sparc/include/asm/pgalloc_32.h
+++ b/arch/sparc/include/asm/pgalloc_32.h
@@ -26,14 +26,14 @@ static inline void free_pgd_fast(pgd_t *pgd)
 #define pgd_free(mm, pgd)	free_pgd_fast(pgd)
 #define pgd_alloc(mm)	get_pgd_fast()
 
-static inline void pgd_set(pgd_t * pgdp, pmd_t * pmdp)
+static inline void pud_set(pud_t * pudp, pmd_t * pmdp)
 {
 	unsigned long pa = __nocache_pa(pmdp);
 
-	set_pte((pte_t *)pgdp, __pte((SRMMU_ET_PTD | (pa >> 4))));
+	set_pte((pte_t *)pudp, __pte((SRMMU_ET_PTD | (pa >> 4))));
 }
 
-#define pgd_populate(MM, PGD, PMD)      pgd_set(PGD, PMD)
+#define pud_populate(MM, PGD, PMD)      pud_set(PGD, PMD)
 
 static inline pmd_t *pmd_alloc_one(struct mm_struct *mm,
 				   unsigned long address)
diff --git a/arch/sparc/include/asm/pgtable_32.h b/arch/sparc/include/asm/pgtable_32.h
index 31da448..6d6f44c 100644
--- a/arch/sparc/include/asm/pgtable_32.h
+++ b/arch/sparc/include/asm/pgtable_32.h
@@ -12,7 +12,7 @@
 #include <linux/const.h>
 
 #ifndef __ASSEMBLY__
-#include <asm-generic/4level-fixup.h>
+#include <asm-generic/pgtable-nopud.h>
 
 #include <linux/spinlock.h>
 #include <linux/mm_types.h>
@@ -132,12 +132,12 @@ static inline struct page *pmd_page(pmd_t pmd)
 	return pfn_to_page((pmd_val(pmd) & SRMMU_PTD_PMASK) >> (PAGE_SHIFT-4));
 }
 
-static inline unsigned long pgd_page_vaddr(pgd_t pgd)
+static inline unsigned long pud_page_vaddr(pud_t pud)
 {
-	if (srmmu_device_memory(pgd_val(pgd))) {
+	if (srmmu_device_memory(pud_val(pud))) {
 		return ~0;
 	} else {
-		unsigned long v = pgd_val(pgd) & SRMMU_PTD_PMASK;
+		unsigned long v = pud_val(pud) & SRMMU_PTD_PMASK;
 		return (unsigned long)__nocache_va(v << 4);
 	}
 }
@@ -184,24 +184,24 @@ static inline void pmd_clear(pmd_t *pmdp)
 		set_pte((pte_t *)&pmdp->pmdv[i], __pte(0));
 }
 
-static inline int pgd_none(pgd_t pgd)          
+static inline int pud_none(pud_t pud)
 {
-	return !(pgd_val(pgd) & 0xFFFFFFF);
+	return !(pud_val(pud) & 0xFFFFFFF);
 }
 
-static inline int pgd_bad(pgd_t pgd)
+static inline int pud_bad(pud_t pud)
 {
-	return (pgd_val(pgd) & SRMMU_ET_MASK) != SRMMU_ET_PTD;
+	return (pud_val(pud) & SRMMU_ET_MASK) != SRMMU_ET_PTD;
 }
 
-static inline int pgd_present(pgd_t pgd)
+static inline int pud_present(pud_t pud)
 {
-	return ((pgd_val(pgd) & SRMMU_ET_MASK) == SRMMU_ET_PTD);
+	return ((pud_val(pud) & SRMMU_ET_MASK) == SRMMU_ET_PTD);
 }
 
-static inline void pgd_clear(pgd_t *pgdp)
+static inline void pud_clear(pud_t *pudp)
 {
-	set_pte((pte_t *)pgdp, __pte(0));
+	set_pte((pte_t *)pudp, __pte(0));
 }
 
 /*
@@ -319,9 +319,9 @@ static inline pte_t pte_modify(pte_t pte, pgprot_t newprot)
 #define pgd_offset_k(address) pgd_offset(&init_mm, address)
 
 /* Find an entry in the second-level page table.. */
-static inline pmd_t *pmd_offset(pgd_t * dir, unsigned long address)
+static inline pmd_t *pmd_offset(pud_t * dir, unsigned long address)
 {
-	return (pmd_t *) pgd_page_vaddr(*dir) +
+	return (pmd_t *) pud_page_vaddr(*dir) +
 		((address >> PMD_SHIFT) & (PTRS_PER_PMD - 1));
 }
 
diff --git a/arch/sparc/mm/fault_32.c b/arch/sparc/mm/fault_32.c
index 8d69de1..89976c9 100644
--- a/arch/sparc/mm/fault_32.c
+++ b/arch/sparc/mm/fault_32.c
@@ -351,6 +351,8 @@ asmlinkage void do_sparc_fault(struct pt_regs *regs, int text_fault, int write,
 		 */
 		int offset = pgd_index(address);
 		pgd_t *pgd, *pgd_k;
+		p4d_t *p4d, *p4d_k;
+		pud_t *pud, *pud_k;
 		pmd_t *pmd, *pmd_k;
 
 		pgd = tsk->active_mm->pgd + offset;
@@ -363,8 +365,13 @@ asmlinkage void do_sparc_fault(struct pt_regs *regs, int text_fault, int write,
 			return;
 		}
 
-		pmd = pmd_offset(pgd, address);
-		pmd_k = pmd_offset(pgd_k, address);
+		p4d = p4d_offset(pgd, address);
+		pud = pud_offset(p4d, address);
+		pmd = pmd_offset(pud, address);
+
+		p4d_k = p4d_offset(pgd_k, address);
+		pud_k = pud_offset(p4d_k, address);
+		pmd_k = pmd_offset(pud_k, address);
 
 		if (pmd_present(*pmd) || !pmd_present(*pmd_k))
 			goto bad_area_nosemaphore;
diff --git a/arch/sparc/mm/highmem.c b/arch/sparc/mm/highmem.c
index 86bc2a5..d4a80ad 100644
--- a/arch/sparc/mm/highmem.c
+++ b/arch/sparc/mm/highmem.c
@@ -39,10 +39,14 @@ static pte_t *kmap_pte;
 void __init kmap_init(void)
 {
 	unsigned long address;
+	p4d_t *p4d;
+	pud_t *pud;
 	pmd_t *dir;
 
 	address = __fix_to_virt(FIX_KMAP_BEGIN);
-	dir = pmd_offset(pgd_offset_k(address), address);
+	p4d = p4d_offset(pgd_offset_k(address), address);
+	pud = pud_offset(p4d, address);
+	dir = pmd_offset(pud, address);
 
         /* cache the first kmap pte */
         kmap_pte = pte_offset_kernel(dir, address);
diff --git a/arch/sparc/mm/io-unit.c b/arch/sparc/mm/io-unit.c
index f770ee7..33a0fac 100644
--- a/arch/sparc/mm/io-unit.c
+++ b/arch/sparc/mm/io-unit.c
@@ -239,12 +239,16 @@ static void *iounit_alloc(struct device *dev, size_t len,
 		page = va;
 		{
 			pgd_t *pgdp;
+			p4d_t *p4dp;
+			pud_t *pudp;
 			pmd_t *pmdp;
 			pte_t *ptep;
 			long i;
 
 			pgdp = pgd_offset(&init_mm, addr);
-			pmdp = pmd_offset(pgdp, addr);
+			p4dp = p4d_offset(pgdp, addr);
+			pudp = pud_offset(p4dp, addr);
+			pmdp = pmd_offset(pudp, addr);
 			ptep = pte_offset_map(pmdp, addr);
 
 			set_pte(ptep, mk_pte(virt_to_page(page), dvma_prot));
diff --git a/arch/sparc/mm/iommu.c b/arch/sparc/mm/iommu.c
index 71ac353..4d3c699 100644
--- a/arch/sparc/mm/iommu.c
+++ b/arch/sparc/mm/iommu.c
@@ -343,6 +343,8 @@ static void *sbus_iommu_alloc(struct device *dev, size_t len,
 		page = va;
 		{
 			pgd_t *pgdp;
+			p4d_t *p4dp;
+			pud_t *pudp;
 			pmd_t *pmdp;
 			pte_t *ptep;
 
@@ -354,7 +356,9 @@ static void *sbus_iommu_alloc(struct device *dev, size_t len,
 				__flush_page_to_ram(page);
 
 			pgdp = pgd_offset(&init_mm, addr);
-			pmdp = pmd_offset(pgdp, addr);
+			p4dp = p4d_offset(pgdp, addr);
+			pudp = pud_offset(p4dp, addr);
+			pmdp = pmd_offset(pudp, addr);
 			ptep = pte_offset_map(pmdp, addr);
 
 			set_pte(ptep, mk_pte(virt_to_page(page), dvma_prot));
diff --git a/arch/sparc/mm/srmmu.c b/arch/sparc/mm/srmmu.c
index cc3ad64..f56c3c9 100644
--- a/arch/sparc/mm/srmmu.c
+++ b/arch/sparc/mm/srmmu.c
@@ -296,6 +296,8 @@ static void __init srmmu_nocache_init(void)
 	void *srmmu_nocache_bitmap;
 	unsigned int bitmap_bits;
 	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
 	unsigned long paddr, vaddr;
@@ -329,6 +331,8 @@ static void __init srmmu_nocache_init(void)
 
 	while (vaddr < srmmu_nocache_end) {
 		pgd = pgd_offset_k(vaddr);
+		p4d = p4d_offset(__nocache_fix(pgd), vaddr);
+		pud = pud_offset(__nocache_fix(p4d), vaddr);
 		pmd = pmd_offset(__nocache_fix(pgd), vaddr);
 		pte = pte_offset_kernel(__nocache_fix(pmd), vaddr);
 
@@ -516,13 +520,17 @@ static inline void srmmu_mapioaddr(unsigned long physaddr,
 				   unsigned long virt_addr, int bus_type)
 {
 	pgd_t *pgdp;
+	p4d_t *p4dp;
+	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 	unsigned long tmp;
 
 	physaddr &= PAGE_MASK;
 	pgdp = pgd_offset_k(virt_addr);
-	pmdp = pmd_offset(pgdp, virt_addr);
+	p4dp = p4d_offset(pgdp, virt_addr);
+	pudp = pud_offset(p4dp, virt_addr);
+	pmdp = pmd_offset(pudp, virt_addr);
 	ptep = pte_offset_kernel(pmdp, virt_addr);
 	tmp = (physaddr >> 4) | SRMMU_ET_PTE;
 
@@ -551,11 +559,16 @@ void srmmu_mapiorange(unsigned int bus, unsigned long xpa,
 static inline void srmmu_unmapioaddr(unsigned long virt_addr)
 {
 	pgd_t *pgdp;
+	p4d_t *p4dp;
+	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 
+
 	pgdp = pgd_offset_k(virt_addr);
-	pmdp = pmd_offset(pgdp, virt_addr);
+	p4dp = p4d_offset(pgdp, virt_addr);
+	pudp = pud_offset(p4dp, virt_addr);
+	pmdp = pmd_offset(pudp, virt_addr);
 	ptep = pte_offset_kernel(pmdp, virt_addr);
 
 	/* No need to flush uncacheable page. */
@@ -693,20 +706,24 @@ static void __init srmmu_early_allocate_ptable_skeleton(unsigned long start,
 							unsigned long end)
 {
 	pgd_t *pgdp;
+	p4d_t *p4dp;
+	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 
 	while (start < end) {
 		pgdp = pgd_offset_k(start);
-		if (pgd_none(*(pgd_t *)__nocache_fix(pgdp))) {
+		p4dp = p4d_offset(pgdp, start);
+		pudp = pud_offset(p4dp, start);
+		if (pud_none(*(pud_t *)__nocache_fix(pudp))) {
 			pmdp = __srmmu_get_nocache(
 			    SRMMU_PMD_TABLE_SIZE, SRMMU_PMD_TABLE_SIZE);
 			if (pmdp == NULL)
 				early_pgtable_allocfail("pmd");
 			memset(__nocache_fix(pmdp), 0, SRMMU_PMD_TABLE_SIZE);
-			pgd_set(__nocache_fix(pgdp), pmdp);
+			pud_set(__nocache_fix(pudp), pmdp);
 		}
-		pmdp = pmd_offset(__nocache_fix(pgdp), start);
+		pmdp = pmd_offset(__nocache_fix(pudp), start);
 		if (srmmu_pmd_none(*(pmd_t *)__nocache_fix(pmdp))) {
 			ptep = __srmmu_get_nocache(PTE_SIZE, PTE_SIZE);
 			if (ptep == NULL)
@@ -724,19 +741,23 @@ static void __init srmmu_allocate_ptable_skeleton(unsigned long start,
 						  unsigned long end)
 {
 	pgd_t *pgdp;
+	p4d_t *p4dp;
+	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 
 	while (start < end) {
 		pgdp = pgd_offset_k(start);
-		if (pgd_none(*pgdp)) {
+		p4dp = p4d_offset(pgdp, start);
+		pudp = pud_offset(p4dp, start);
+		if (pud_none(*pudp)) {
 			pmdp = __srmmu_get_nocache(SRMMU_PMD_TABLE_SIZE, SRMMU_PMD_TABLE_SIZE);
 			if (pmdp == NULL)
 				early_pgtable_allocfail("pmd");
 			memset(pmdp, 0, SRMMU_PMD_TABLE_SIZE);
-			pgd_set(pgdp, pmdp);
+			pud_set((pud_t *)pgdp, pmdp);
 		}
-		pmdp = pmd_offset(pgdp, start);
+		pmdp = pmd_offset(pudp, start);
 		if (srmmu_pmd_none(*pmdp)) {
 			ptep = __srmmu_get_nocache(PTE_SIZE,
 							     PTE_SIZE);
@@ -779,6 +800,8 @@ static void __init srmmu_inherit_prom_mappings(unsigned long start,
 	unsigned long probed;
 	unsigned long addr;
 	pgd_t *pgdp;
+	p4d_t *p4dp;
+	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 	int what; /* 0 = normal-pte, 1 = pmd-level pte, 2 = pgd-level pte */
@@ -810,18 +833,20 @@ static void __init srmmu_inherit_prom_mappings(unsigned long start,
 		}
 
 		pgdp = pgd_offset_k(start);
+		p4dp = p4d_offset(pgdp, start);
+		pudp = pud_offset(p4dp, start);
 		if (what == 2) {
 			*(pgd_t *)__nocache_fix(pgdp) = __pgd(probed);
 			start += SRMMU_PGDIR_SIZE;
 			continue;
 		}
-		if (pgd_none(*(pgd_t *)__nocache_fix(pgdp))) {
+		if (pud_none(*(pud_t *)__nocache_fix(pudp))) {
 			pmdp = __srmmu_get_nocache(SRMMU_PMD_TABLE_SIZE,
 						   SRMMU_PMD_TABLE_SIZE);
 			if (pmdp == NULL)
 				early_pgtable_allocfail("pmd");
 			memset(__nocache_fix(pmdp), 0, SRMMU_PMD_TABLE_SIZE);
-			pgd_set(__nocache_fix(pgdp), pmdp);
+			pud_set(__nocache_fix(pudp), pmdp);
 		}
 		pmdp = pmd_offset(__nocache_fix(pgdp), start);
 		if (srmmu_pmd_none(*(pmd_t *)__nocache_fix(pmdp))) {
@@ -906,6 +931,8 @@ void __init srmmu_paging_init(void)
 	phandle cpunode;
 	char node_str[128];
 	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
 	unsigned long pages_avail;
@@ -967,7 +994,9 @@ void __init srmmu_paging_init(void)
 	srmmu_allocate_ptable_skeleton(PKMAP_BASE, PKMAP_END);
 
 	pgd = pgd_offset_k(PKMAP_BASE);
-	pmd = pmd_offset(pgd, PKMAP_BASE);
+	p4d = p4d_offset(pgd, PKMAP_BASE);
+	pud = pud_offset(p4d, PKMAP_BASE);
+	pmd = pmd_offset(pud, PKMAP_BASE);
 	pte = pte_offset_kernel(pmd, PKMAP_BASE);
 	pkmap_page_table = pte;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
