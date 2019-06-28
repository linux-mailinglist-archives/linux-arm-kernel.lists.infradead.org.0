Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34DC592FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:46:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7KD9GrjijzIOFYRCur0wehaZAaw1SFMBfShX77dXa24=; b=sbsnl31SV9UlxGapE13eMnyif9
	bshFBJrKu9v4F32Imd+UIs6Avnr0vmcePSumkCP95zzsDYv1wyklZ0KtwRUqw+QtU/tqTazrCYPNC
	42N29+GIhugFskPyL3EI11qZ+0tNaQF0StJWZc3+ccTHwftSIZsDc89FeQ/+1eMUGMTXntTfT5mfY
	iSOWz7DqnP+p4fltDS0Xl+MdSk8TDfZOXm2vKVUlok6iFZFW43zeafNPH4RNDqP6H2LtmazdMkXCd
	08EKXq8QhAxzzPsbgqgXBdlPPPNioyumi1BC+Vc6Mz1ct6FTZDZ7vt7Emi5p7TFaxDnzjRzo95Z5F
	UOFTqYlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgils-00050D-Ck; Fri, 28 Jun 2019 04:46:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgil7-0004bf-0F
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:45:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A26EC0A;
 Thu, 27 Jun 2019 21:45:12 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7CDC23F706;
 Thu, 27 Jun 2019 21:45:10 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC 2/2] arm64/mm: Enable device memory allocation and free for
 vmemmap mapping
Date: Fri, 28 Jun 2019 10:14:43 +0530
Message-Id: <1561697083-7329-3-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
References: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_214513_233829_3433B99D 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This enables vmemmap_populate() and vmemmap_free() functions to incorporate
struct vmem_altmap based device memory allocation and free requests. With
this device memory with specific atlmap configuration can be hot plugged
and hot removed as ZONE_DEVICE memory on arm64 platforms.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/mm/mmu.c | 57 ++++++++++++++++++++++++++++++++++-------------------
 1 file changed, 37 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 39e18d1..8867bbd 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -735,15 +735,26 @@ int kern_addr_valid(unsigned long addr)
 }
 
 #ifdef CONFIG_MEMORY_HOTPLUG
-static void free_hotplug_page_range(struct page *page, size_t size)
+static void free_hotplug_page_range(struct page *page, size_t size,
+				    struct vmem_altmap *altmap)
 {
-	WARN_ON(!page || PageReserved(page));
-	free_pages((unsigned long)page_address(page), get_order(size));
+	if (altmap) {
+		/*
+		 * vmemmap_populate() creates vmemmap mapping either at pte
+		 * or pmd level. Unmapping request at any other level would
+		 * be a problem.
+		 */
+		WARN_ON((size != PAGE_SIZE) && (size != PMD_SIZE));
+		vmem_altmap_free(altmap, size >> PAGE_SHIFT);
+	} else {
+		WARN_ON(!page || PageReserved(page));
+		free_pages((unsigned long)page_address(page), get_order(size));
+	}
 }
 
 static void free_hotplug_pgtable_page(struct page *page)
 {
-	free_hotplug_page_range(page, PAGE_SIZE);
+	free_hotplug_page_range(page, PAGE_SIZE, NULL);
 }
 
 static void free_pte_table(pmd_t *pmdp, unsigned long addr)
@@ -807,7 +818,8 @@ static void free_pud_table(pgd_t *pgdp, unsigned long addr)
 }
 
 static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
-				    unsigned long end, bool sparse_vmap)
+				    unsigned long end, bool sparse_vmap,
+				    struct vmem_altmap *altmap)
 {
 	struct page *page;
 	pte_t *ptep, pte;
@@ -823,12 +835,13 @@ static void unmap_hotplug_pte_range(pmd_t *pmdp, unsigned long addr,
 		pte_clear(&init_mm, addr, ptep);
 		flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
 		if (sparse_vmap)
-			free_hotplug_page_range(page, PAGE_SIZE);
+			free_hotplug_page_range(page, PAGE_SIZE, altmap);
 	} while (addr += PAGE_SIZE, addr < end);
 }
 
 static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
-				    unsigned long end, bool sparse_vmap)
+				    unsigned long end, bool sparse_vmap,
+				    struct vmem_altmap *altmap)
 {
 	unsigned long next;
 	struct page *page;
@@ -847,16 +860,17 @@ static void unmap_hotplug_pmd_range(pud_t *pudp, unsigned long addr,
 			pmd_clear(pmdp);
 			flush_tlb_kernel_range(addr, next);
 			if (sparse_vmap)
-				free_hotplug_page_range(page, PMD_SIZE);
+				free_hotplug_page_range(page, PMD_SIZE, altmap);
 			continue;
 		}
 		WARN_ON(!pmd_table(pmd));
-		unmap_hotplug_pte_range(pmdp, addr, next, sparse_vmap);
+		unmap_hotplug_pte_range(pmdp, addr, next, sparse_vmap, altmap);
 	} while (addr = next, addr < end);
 }
 
 static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
-				    unsigned long end, bool sparse_vmap)
+				    unsigned long end, bool sparse_vmap,
+				    struct vmem_altmap *altmap)
 {
 	unsigned long next;
 	struct page *page;
@@ -875,16 +889,16 @@ static void unmap_hotplug_pud_range(pgd_t *pgdp, unsigned long addr,
 			pud_clear(pudp);
 			flush_tlb_kernel_range(addr, next);
 			if (sparse_vmap)
-				free_hotplug_page_range(page, PUD_SIZE);
+				free_hotplug_page_range(page, PUD_SIZE, altmap);
 			continue;
 		}
 		WARN_ON(!pud_table(pud));
-		unmap_hotplug_pmd_range(pudp, addr, next, sparse_vmap);
+		unmap_hotplug_pmd_range(pudp, addr, next, sparse_vmap, altmap);
 	} while (addr = next, addr < end);
 }
 
 static void unmap_hotplug_range(unsigned long addr, unsigned long end,
-				bool sparse_vmap)
+				bool sparse_vmap, struct vmem_altmap *altmap)
 {
 	unsigned long next;
 	pgd_t *pgdp, pgd;
@@ -897,7 +911,7 @@ static void unmap_hotplug_range(unsigned long addr, unsigned long end,
 			continue;
 
 		WARN_ON(!pgd_present(pgd));
-		unmap_hotplug_pud_range(pgdp, addr, next, sparse_vmap);
+		unmap_hotplug_pud_range(pgdp, addr, next, sparse_vmap, altmap);
 	} while (addr = next, addr < end);
 }
 
@@ -970,9 +984,9 @@ static void free_empty_tables(unsigned long addr, unsigned long end)
 }
 
 static void remove_pagetable(unsigned long start, unsigned long end,
-			     bool sparse_vmap)
+			     bool sparse_vmap, struct vmem_altmap *altmap)
 {
-	unmap_hotplug_range(start, end, sparse_vmap);
+	unmap_hotplug_range(start, end, sparse_vmap, altmap);
 	free_empty_tables(start, end);
 }
 #endif
@@ -982,7 +996,7 @@ static void remove_pagetable(unsigned long start, unsigned long end,
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		struct vmem_altmap *altmap)
 {
-	return vmemmap_populate_basepages(start, end, node, NULL);
+	return vmemmap_populate_basepages(start, end, node, altmap);
 }
 #else	/* !ARM64_SWAPPER_USES_SECTION_MAPS */
 int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
@@ -1009,7 +1023,10 @@ int __meminit vmemmap_populate(unsigned long start, unsigned long end, int node,
 		if (pmd_none(READ_ONCE(*pmdp))) {
 			void *p = NULL;
 
-			p = vmemmap_alloc_block_buf(PMD_SIZE, node);
+			if (altmap)
+				p = altmap_alloc_block_buf(PMD_SIZE, altmap);
+			else
+				p = vmemmap_alloc_block_buf(PMD_SIZE, node);
 			if (!p)
 				return -ENOMEM;
 
@@ -1043,7 +1060,7 @@ void vmemmap_free(unsigned long start, unsigned long end,
 	 * given vmemmap range being hot-removed. Just unmap and free the
 	 * range instead.
 	 */
-	unmap_hotplug_range(start, end, true);
+	unmap_hotplug_range(start, end, true, altmap);
 #endif
 }
 #endif	/* CONFIG_SPARSEMEM_VMEMMAP */
@@ -1336,7 +1353,7 @@ static void __remove_pgd_mapping(pgd_t *pgdir, unsigned long start, u64 size)
 	unsigned long end = start + size;
 
 	WARN_ON(pgdir != init_mm.pgd);
-	remove_pagetable(start, end, false);
+	remove_pagetable(start, end, false, NULL);
 }
 
 int arch_add_memory(int nid, u64 start, u64 size,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
