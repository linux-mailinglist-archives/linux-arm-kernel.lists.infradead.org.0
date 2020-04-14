Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 353581A82FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwIfhQJJ7KsAH2N3UqFJKaNAg83iAWsONmk7XckvjqA=; b=ZoM3PXyK4vw3li
	GrAmp70gSA2s5/qSlZRTA+2ifpo8X64aRnpUcqWCOAiTKa7vEipHtm5ZCY4h1mjl5O42pPB/Szo1p
	bZMRNou5OEXTvhZTaEssUhB5sVKAmq3ko5ZCQxSjS093pZCZ1U7tAq4fSPyGaYG5VSYL+Hf3sY/Cf
	aOMEbgd227FzWAHwIo6eiYEY5/HruQ6eO7aHRv0plhN9bByC2r7YxgAJs9RdFyGM/DVLwE0DQlHKn
	5qzEPpwahnfQN0Ud1yOr3jNdQYuoM+NtS/PGhWk/9LEvILt/gBXu9mtaVx+S0YLK9saXYkCQ7iQnM
	bLShFuty/fZfZrZKsuWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONcR-0002OU-4M; Tue, 14 Apr 2020 15:36:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONbS-0001pf-9U
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:36:00 +0000
Received: from aquarius.haifa.ibm.com (nesher1.haifa.il.ibm.com [195.110.40.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A351E2076B;
 Tue, 14 Apr 2020 15:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586878557;
 bh=h/ic3nlfvJC9adF65NwTWXd+vRZoDRjPyzHb1CRqUns=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zd4UBwJmEedDj/QdJMikKfRAUzgTJF/aG7zyXweY/JCEmg5ID0W21YZqg0lDEnncn
 nIDcLeVK4Bbfg0M0oKLU00Yst1LZthaiWrKomJFlG083tRPxeP9NVd/wadCfs22mQB
 coAznObVw5RzUgZiii5pZCRw3I2D4lvZ+mrU1CZk=
From: Mike Rapoport <rppt@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v4 05/14] ia64: add support for folded p4d page tables
Date: Tue, 14 Apr 2020 18:34:46 +0300
Message-Id: <20200414153455.21744-6-rppt@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200414153455.21744-1-rppt@kernel.org>
References: <20200414153455.21744-1-rppt@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_083558_391080_26F62D32 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-ia64@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-sh@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-mm@kvack.org,
 Paul Mackerras <paulus@samba.org>, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Jonas Bonn <jonas@southpole.se>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Mike Rapoport <rppt@linux.ibm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 uclinux-h8-devel@lists.sourceforge.jp, Fenghua Yu <fenghua.yu@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 kvm-ppc@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 openrisc@lists.librecores.org, Stafford Horne <shorne@gmail.com>,
 Guan Xuetao <gxt@pku.edu.cn>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>, Tony Luck <tony.luck@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 nios2-dev@lists.rocketboards.org, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Rapoport <rppt@linux.ibm.com>

Implement primitives necessary for the 4th level folding, add walks of p4d
level where appropriate, remove usage of __ARCH_USE_5LEVEL_HACK and replace
5level-fixup.h with pgtable-nop4d.h

Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
---
 arch/ia64/include/asm/pgalloc.h |  4 ++--
 arch/ia64/include/asm/pgtable.h | 17 ++++++++---------
 arch/ia64/mm/fault.c            |  7 ++++++-
 arch/ia64/mm/hugetlbpage.c      | 18 ++++++++++++------
 arch/ia64/mm/init.c             | 28 ++++++++++++++++++++++++----
 5 files changed, 52 insertions(+), 22 deletions(-)

diff --git a/arch/ia64/include/asm/pgalloc.h b/arch/ia64/include/asm/pgalloc.h
index f4c491044882..2a3050345099 100644
--- a/arch/ia64/include/asm/pgalloc.h
+++ b/arch/ia64/include/asm/pgalloc.h
@@ -36,9 +36,9 @@ static inline void pgd_free(struct mm_struct *mm, pgd_t *pgd)
 
 #if CONFIG_PGTABLE_LEVELS == 4
 static inline void
-pgd_populate(struct mm_struct *mm, pgd_t * pgd_entry, pud_t * pud)
+p4d_populate(struct mm_struct *mm, p4d_t * p4d_entry, pud_t * pud)
 {
-	pgd_val(*pgd_entry) = __pa(pud);
+	p4d_val(*p4d_entry) = __pa(pud);
 }
 
 static inline pud_t *pud_alloc_one(struct mm_struct *mm, unsigned long addr)
diff --git a/arch/ia64/include/asm/pgtable.h b/arch/ia64/include/asm/pgtable.h
index 0e7b645b76c6..787b0a91d255 100644
--- a/arch/ia64/include/asm/pgtable.h
+++ b/arch/ia64/include/asm/pgtable.h
@@ -283,12 +283,12 @@ extern unsigned long VMALLOC_END;
 #define pud_page(pud)			virt_to_page((pud_val(pud) + PAGE_OFFSET))
 
 #if CONFIG_PGTABLE_LEVELS == 4
-#define pgd_none(pgd)			(!pgd_val(pgd))
-#define pgd_bad(pgd)			(!ia64_phys_addr_valid(pgd_val(pgd)))
-#define pgd_present(pgd)		(pgd_val(pgd) != 0UL)
-#define pgd_clear(pgdp)			(pgd_val(*(pgdp)) = 0UL)
-#define pgd_page_vaddr(pgd)		((unsigned long) __va(pgd_val(pgd) & _PFN_MASK))
-#define pgd_page(pgd)			virt_to_page((pgd_val(pgd) + PAGE_OFFSET))
+#define p4d_none(p4d)			(!p4d_val(p4d))
+#define p4d_bad(p4d)			(!ia64_phys_addr_valid(p4d_val(p4d)))
+#define p4d_present(p4d)		(p4d_val(p4d) != 0UL)
+#define p4d_clear(p4dp)			(p4d_val(*(p4dp)) = 0UL)
+#define p4d_page_vaddr(p4d)		((unsigned long) __va(p4d_val(p4d) & _PFN_MASK))
+#define p4d_page(p4d)			virt_to_page((p4d_val(p4d) + PAGE_OFFSET))
 #endif
 
 /*
@@ -386,7 +386,7 @@ pgd_offset (const struct mm_struct *mm, unsigned long address)
 #if CONFIG_PGTABLE_LEVELS == 4
 /* Find an entry in the second-level page table.. */
 #define pud_offset(dir,addr) \
-	((pud_t *) pgd_page_vaddr(*(dir)) + (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1)))
+	((pud_t *) p4d_page_vaddr(*(dir)) + (((addr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1)))
 #endif
 
 /* Find an entry in the third-level page table.. */
@@ -580,10 +580,9 @@ extern struct page *zero_page_memmap_ptr;
 
 
 #if CONFIG_PGTABLE_LEVELS == 3
-#define __ARCH_USE_5LEVEL_HACK
 #include <asm-generic/pgtable-nopud.h>
 #endif
-#include <asm-generic/5level-fixup.h>
+#include <asm-generic/pgtable-nop4d.h>
 #include <asm-generic/pgtable.h>
 
 #endif /* _ASM_IA64_PGTABLE_H */
diff --git a/arch/ia64/mm/fault.c b/arch/ia64/mm/fault.c
index 30d0c1fca99e..12242aa0dad1 100644
--- a/arch/ia64/mm/fault.c
+++ b/arch/ia64/mm/fault.c
@@ -29,6 +29,7 @@ static int
 mapped_kernel_page_is_present (unsigned long address)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *ptep, pte;
@@ -37,7 +38,11 @@ mapped_kernel_page_is_present (unsigned long address)
 	if (pgd_none(*pgd) || pgd_bad(*pgd))
 		return 0;
 
-	pud = pud_offset(pgd, address);
+	p4d = p4d_offset(pgd, address);
+	if (p4d_none(*p4d) || p4d_bad(*p4d))
+		return 0;
+
+	pud = pud_offset(p4d, address);
 	if (pud_none(*pud) || pud_bad(*pud))
 		return 0;
 
diff --git a/arch/ia64/mm/hugetlbpage.c b/arch/ia64/mm/hugetlbpage.c
index d16e419fd712..32352a73df0c 100644
--- a/arch/ia64/mm/hugetlbpage.c
+++ b/arch/ia64/mm/hugetlbpage.c
@@ -30,12 +30,14 @@ huge_pte_alloc(struct mm_struct *mm, unsigned long addr, unsigned long sz)
 {
 	unsigned long taddr = htlbpage_to_page(addr);
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte = NULL;
 
 	pgd = pgd_offset(mm, taddr);
-	pud = pud_alloc(mm, pgd, taddr);
+	p4d = p4d_offset(pgd, taddr);
+	pud = pud_alloc(mm, p4d, taddr);
 	if (pud) {
 		pmd = pmd_alloc(mm, pud, taddr);
 		if (pmd)
@@ -49,17 +51,21 @@ huge_pte_offset (struct mm_struct *mm, unsigned long addr, unsigned long sz)
 {
 	unsigned long taddr = htlbpage_to_page(addr);
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte = NULL;
 
 	pgd = pgd_offset(mm, taddr);
 	if (pgd_present(*pgd)) {
-		pud = pud_offset(pgd, taddr);
-		if (pud_present(*pud)) {
-			pmd = pmd_offset(pud, taddr);
-			if (pmd_present(*pmd))
-				pte = pte_offset_map(pmd, taddr);
+		p4d = p4d_offset(pgd, addr);
+		if (p4d_present(*p4d)) {
+			pud = pud_offset(p4d, taddr);
+			if (pud_present(*pud)) {
+				pmd = pmd_offset(pud, taddr);
+				if (pmd_present(*pmd))
+					pte = pte_offset_map(pmd, taddr);
+			}
 		}
 	}
 
diff --git a/arch/ia64/mm/init.c b/arch/ia64/mm/init.c
index d637b4ea3147..ca760f6cb18f 100644
--- a/arch/ia64/mm/init.c
+++ b/arch/ia64/mm/init.c
@@ -208,6 +208,7 @@ static struct page * __init
 put_kernel_page (struct page *page, unsigned long address, pgprot_t pgprot)
 {
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
@@ -215,7 +216,10 @@ put_kernel_page (struct page *page, unsigned long address, pgprot_t pgprot)
 	pgd = pgd_offset_k(address);		/* note: this is NOT pgd_offset()! */
 
 	{
-		pud = pud_alloc(&init_mm, pgd, address);
+		p4d = p4d_alloc(&init_mm, pgd, address);
+		if (!p4d)
+			goto out;
+		pud = pud_alloc(&init_mm, p4d, address);
 		if (!pud)
 			goto out;
 		pmd = pmd_alloc(&init_mm, pud, address);
@@ -382,6 +386,7 @@ int vmemmap_find_next_valid_pfn(int node, int i)
 
 	do {
 		pgd_t *pgd;
+		p4d_t *p4d;
 		pud_t *pud;
 		pmd_t *pmd;
 		pte_t *pte;
@@ -392,7 +397,13 @@ int vmemmap_find_next_valid_pfn(int node, int i)
 			continue;
 		}
 
-		pud = pud_offset(pgd, end_address);
+		p4d = p4d_offset(pgd, end_address);
+		if (p4d_none(*p4d)) {
+			end_address += P4D_SIZE;
+			continue;
+		}
+
+		pud = pud_offset(p4d, end_address);
 		if (pud_none(*pud)) {
 			end_address += PUD_SIZE;
 			continue;
@@ -430,6 +441,7 @@ int __init create_mem_map_page_table(u64 start, u64 end, void *arg)
 	struct page *map_start, *map_end;
 	int node;
 	pgd_t *pgd;
+	p4d_t *p4d;
 	pud_t *pud;
 	pmd_t *pmd;
 	pte_t *pte;
@@ -444,12 +456,20 @@ int __init create_mem_map_page_table(u64 start, u64 end, void *arg)
 	for (address = start_page; address < end_page; address += PAGE_SIZE) {
 		pgd = pgd_offset_k(address);
 		if (pgd_none(*pgd)) {
+			p4d = memblock_alloc_node(PAGE_SIZE, PAGE_SIZE, node);
+			if (!p4d)
+				goto err_alloc;
+			pgd_populate(&init_mm, pgd, p4d);
+		}
+		p4d = p4d_offset(pgd, address);
+
+		if (p4d_none(*p4d)) {
 			pud = memblock_alloc_node(PAGE_SIZE, PAGE_SIZE, node);
 			if (!pud)
 				goto err_alloc;
-			pgd_populate(&init_mm, pgd, pud);
+			p4d_populate(&init_mm, p4d, pud);
 		}
-		pud = pud_offset(pgd, address);
+		pud = pud_offset(p4d, address);
 
 		if (pud_none(*pud)) {
 			pmd = memblock_alloc_node(PAGE_SIZE, PAGE_SIZE, node);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
