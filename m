Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452BC13C621
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 15:34:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO9NJC37EjiLfmLmG3YTuO/2d+6u0DrYMxUrp/J0R0I=; b=YZyBurImpu7JOc
	HV2DK9/eXfg3wn5bds/vgbUnv7d8yhcNLt7s8UUzi1poylFIqoLFPM/ryY8cg1Gxw9jY8c8SNWPPO
	2vq1CmcV86K5zbhMUQ75FZ+yNOVZMrYMFtsctIKDYNmno/4BSGXxHroP91AMFAwdeg+5SG108lXPj
	rC+AEvpoWN+ozERHFYX2rQZPQ+p+ZwDgsGEr0BJesLMzVOKK+Ibx7ZtBTD0NEkVd7GeUPMs02aNp/
	yrt2TlaA2p/6AYsmrLGWMuxj2duK7Zg3sbgZZjXfVlU2qgukufl6I35NyPfeYqIFcUalrabSHCt+p
	jCARRgPBVAEUf6innJ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irjkP-0001tP-66; Wed, 15 Jan 2020 14:34:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjjk-0001TE-8r
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 14:33:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB0771396;
 Wed, 15 Jan 2020 06:33:35 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CB903F68E;
 Wed, 15 Jan 2020 06:33:35 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: [RFC PATCH 3/3] arm64: hibernate: idmap the single page that holds
 the copy page routines
Date: Wed, 15 Jan 2020 14:33:22 +0000
Message-Id: <20200115143322.214247-4-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115143322.214247-1-james.morse@arm.com>
References: <20200115143322.214247-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_063336_397073_B6490DF9 
X-CRM114-Status: GOOD (  23.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To resume from hibernate, the contents of memory are restored from
the swap image. This may overwrite any page, including the running
kernel and its page tables.

Hibernate copies the code it uses to do the restore into a single
page that it knows won't be overwritten, and maps it with page tables
built from pages that won't be overwritten.

Today the address it uses for this mapping is arbitrary, but to allow
kexec to reuse this code, it needs to be idmapped. To idmap the page
we must avoid the kernel helpers that have VA_BITS baked in.

Convert create_single_mapping() to take a single PA, and idmap it.
The page tables are built in the reverse order to normal using
pfn_pte() to stir in any bits between 52:48. T0SZ is always increased
to cover 48bits, or 52 if the copy code has bits 52:48 in its PA.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 109 ++++++++++++++++------------------
 1 file changed, 50 insertions(+), 59 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 7f8cb7596f9e..b0bceec829c7 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -183,58 +183,57 @@ int arch_hibernation_header_restore(void *addr)
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
 /*
- * Create a set of page tables that map page to dst_addr.
+ * Create a set of page tables that idmap phys_dst_addr.
  */
-static int create_single_mapping(unsigned long page, unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
+static int create_single_mapping(phys_addr_t phys_dst_addr,
 				 void *(*allocator)(gfp_t mask),
 				 gfp_t mask)
 {
 	int rc = 0;
-	pgd_t *trans_pgd;
-	pgd_t *pgdp;
-	pud_t *pudp;
-	pmd_t *pmdp;
-	pte_t *ptep;
-
-	trans_pgd = allocator(mask);
-	if (!trans_pgd) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	unsigned long level_mask;
+	int this_level = 3, index;
+	unsigned long *levels[4] = { };
+	unsigned long prev_level_entry;
+	int bits_mapped = PAGE_SHIFT - 4;
+	unsigned int level_lsb, level_msb, max_msb;
+	unsigned long pfn = __phys_to_pfn(phys_dst_addr);
+
+	if (phys_dst_addr & GENMASK(52, 48))
+		max_msb = 51;
+	else
+		max_msb = 47;
 
-	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
-	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
-		if (!pudp) {
-			rc = -ENOMEM;
-			goto out;
-		}
-		pgd_populate(&init_mm, pgdp, pudp);
-	}
+	/*
+	 * The page we want to idmap may be outside the range covered by
+	 * VA_BITS that can be built using the kernel's p?d_populate() helpers.
+	 *
+	 * As a one off, for a single page, we build these page tables bottom
+	 * up and just assume that will need the maximum T0SZ.
+	 */
+	phys_dst_addr &= PAGE_MASK;
+	prev_level_entry = pte_val(pfn_pte(pfn, PAGE_KERNEL_EXEC));
 
-	pudp = pud_offset(pgdp, dst_addr);
-	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
-		if (!pmdp) {
+	for (this_level = 3; this_level >= 0; this_level--) {
+		levels[this_level] = allocator(mask);
+		if (!levels[this_level]) {
 			rc = -ENOMEM;
 			goto out;
 		}
-		pud_populate(&init_mm, pudp, pmdp);
-	}
 
-	pmdp = pmd_offset(pudp, dst_addr);
-	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
-		if (!ptep) {
-			rc = -ENOMEM;
-			goto out;
-		}
-		pmd_populate_kernel(&init_mm, pmdp, ptep);
-	}
+		level_lsb = ARM64_HW_PGTABLE_LEVEL_SHIFT(this_level);
+		level_msb = min(level_lsb + bits_mapped, max_msb);
+		level_mask = GENMASK_ULL(level_msb, level_lsb);
 
-	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
+		index = (phys_dst_addr & level_mask) >> level_lsb;
+		*(levels[this_level] + index) = prev_level_entry;
+
+		pfn = virt_to_pfn(levels[this_level]);
+		prev_level_entry = pte_val(pfn_pte(pfn,
+						   __pgprot(PMD_TYPE_TABLE)));
+
+		if (level_msb == max_msb)
+			break;
+	}
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -245,24 +244,24 @@ static int create_single_mapping(unsigned long page, unsigned long dst_addr,
 	 * page, but TLBs may contain stale ASID-tagged entries (e.g. for EFI
 	 * runtime services), while for a userspace-driven test_resume cycle it
 	 * points to userspace page tables (and we must point it at a zero page
-	 * ourselves). Elsewhere we only (un)install the idmap with preemption
-	 * disabled, so T0SZ should be as required regardless.
+	 * ourselves).
+	 *
+	 * We change T0SZ as part of installing the idmap. This is undone by
+	 * cpu_uninstall_idmap() in __cpu_suspend_exit().
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	__cpu_set_tcr_t0sz(TCR_T0SZ(max_msb + 1));
+	write_sysreg(phys_to_ttbr(__pfn_to_phys(pfn)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)page);
-
 out:
 	return rc;
 }
 
 /*
  * Copies length bytes, starting at src_start into an new page,
- * perform cache maintentance, then maps it at the specified address low
- * address as executable.
+ * perform cache maintentance, then idmaps it.
  *
  * This is used by hibernate to copy the code it needs to execute when
  * overwriting the kernel text. This function generates a new set of page
@@ -272,7 +271,6 @@ static int create_single_mapping(unsigned long page, unsigned long dst_addr,
  * page system.
  */
 static int create_safe_exec_page(void *src_start, size_t length,
-				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr,
 				 void *(*allocator)(gfp_t mask),
 				 gfp_t mask)
@@ -281,12 +279,12 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	if (!page)
 		return -ENOMEM;
+	*phys_dst_addr = virt_to_phys((void *)page);
 
 	memcpy((void *)page, src_start, length);
 	__flush_icache_range(page, page + length);
 
-	return create_single_mapping(page, dst_addr, phys_dst_addr,
-				     allocator, gfp_t mask)
+	return create_single_mapping(*phys_dst_addr, allocator, mask);
 }
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
@@ -499,7 +497,6 @@ int swsusp_arch_resume(void)
 	void *zero_page;
 	size_t exit_size;
 	pgd_t *tmp_pg_dir;
-	phys_addr_t phys_hibernate_exit;
 	void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
 					  void *, phys_addr_t, phys_addr_t);
 
@@ -529,19 +526,13 @@ int swsusp_arch_resume(void)
 		goto out;
 	}
 
-	/*
-	 * Locate the exit code in the bottom-but-one page, so that *NULL
-	 * still has disastrous affects.
-	 */
-	hibernate_exit = (void *)PAGE_SIZE;
 	exit_size = __hibernate_exit_text_end - __hibernate_exit_text_start;
 	/*
 	 * Copy swsusp_arch_suspend_exit() to a safe page. This will generate
 	 * a new set of ttbr0 page tables and load them.
 	 */
 	rc = create_safe_exec_page(__hibernate_exit_text_start, exit_size,
-				   (unsigned long)hibernate_exit,
-				   &phys_hibernate_exit,
+				   (phys_addr_t *)&hibernate_exit,
 				   (void *)get_safe_page, GFP_ATOMIC);
 	if (rc) {
 		pr_err("Failed to create safe executable page for hibernate_exit code.\n");
@@ -561,7 +552,7 @@ int swsusp_arch_resume(void)
 	 * We can skip this step if we booted at EL1, or are running with VHE.
 	 */
 	if (el2_reset_needed()) {
-		phys_addr_t el2_vectors = phys_hibernate_exit;  /* base */
+		phys_addr_t el2_vectors = (phys_addr_t)hibernate_exit;/* base */
 		el2_vectors += hibernate_el2_vectors -
 			       __hibernate_exit_text_start;     /* offset */
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
