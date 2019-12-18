Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E72BC124DC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWX9q0mh6USo/rDt/HNuzpw5i7c+4y+rSukDjfqbCrY=; b=egzH8BxNjEpb8X
	QpKatd5/7bpo1H4FrN3fcdx6nJX2yPM+OdSPJi4GeGXDDD4JKqE27JR2rvwgUgcz684GjxKUDOJIO
	HPf6rLU5UXa7mm2LWgq0zEVGfWMPu3LkI1dm6cvPFW/n4N7KFmKWNj3jSEdto6eIJv7tSfYRe0SAu
	CFnR23HVi3yfrjKfPIIKgXiIrEeRXRqT3c703DQ9EZJEKj1Br0xXNNkYR2BvpLxUAqJVFG5DuA3ON
	0MbuYFrKBV34qxQyGT6NArs0i15cvzNWS+SVDdhr/p3rB8fp3alH+pHBiO40wZcPT2jhqaO9Wg9Q3
	ftRzw8uyLXgTorgLDbFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcHo-0000vS-4e; Wed, 18 Dec 2019 16:34:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihc8b-0000Rs-E9
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:25:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0954331B;
 Wed, 18 Dec 2019 08:25:25 -0800 (PST)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CCFE3F719;
 Wed, 18 Dec 2019 08:25:22 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	linux-mm@kvack.org
Subject: [PATCH v17 21/23] arm64: mm: Convert mm/dump.c to use
 walk_page_range()
Date: Wed, 18 Dec 2019 16:24:00 +0000
Message-Id: <20191218162402.45610-22-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191218162402.45610-1-steven.price@arm.com>
References: <20191218162402.45610-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_082529_810458_5A8F1D34 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, x86@kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org, "Liang,
 Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now walk_page_range() can walk kernel page tables, we can switch the
arm64 ptdump code over to using it, simplifying the code.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/Kconfig                 |   1 +
 arch/arm64/Kconfig.debug           |  19 +----
 arch/arm64/include/asm/ptdump.h    |   8 +-
 arch/arm64/mm/Makefile             |   4 +-
 arch/arm64/mm/dump.c               | 117 ++++++++++-------------------
 arch/arm64/mm/mmu.c                |   4 +-
 arch/arm64/mm/ptdump_debugfs.c     |   2 +-
 drivers/firmware/efi/arm-runtime.c |   2 +-
 8 files changed, 50 insertions(+), 107 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..43aa1de727f4 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -103,6 +103,7 @@ config ARM64
 	select GENERIC_IRQ_SHOW
 	select GENERIC_IRQ_SHOW_LEVEL
 	select GENERIC_PCI_IOMAP
+	select GENERIC_PTDUMP
 	select GENERIC_SCHED_CLOCK
 	select GENERIC_SMP_IDLE_THREAD
 	select GENERIC_STRNCPY_FROM_USER
diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index cf09010d825f..1c906d932d6b 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -1,22 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config ARM64_PTDUMP_CORE
-	def_bool n
-
-config ARM64_PTDUMP_DEBUGFS
-	bool "Export kernel pagetable layout to userspace via debugfs"
-	depends on DEBUG_KERNEL
-	select ARM64_PTDUMP_CORE
-	select DEBUG_FS
-        help
-	  Say Y here if you want to show the kernel pagetable layout in a
-	  debugfs file. This information is only useful for kernel developers
-	  who are working in architecture specific areas of the kernel.
-	  It is probably not a good idea to enable this feature in a production
-	  kernel.
-
-	  If in doubt, say N.
-
 config PID_IN_CONTEXTIDR
 	bool "Write the current PID to the CONTEXTIDR register"
 	help
@@ -42,7 +25,7 @@ config ARM64_RANDOMIZE_TEXT_OFFSET
 
 config DEBUG_WX
 	bool "Warn on W+X mappings at boot"
-	select ARM64_PTDUMP_CORE
+	select PTDUMP_CORE
 	---help---
 	  Generate a warning if any W+X mappings are found at boot.
 
diff --git a/arch/arm64/include/asm/ptdump.h b/arch/arm64/include/asm/ptdump.h
index 0b8e7269ec82..38187f74e089 100644
--- a/arch/arm64/include/asm/ptdump.h
+++ b/arch/arm64/include/asm/ptdump.h
@@ -5,7 +5,7 @@
 #ifndef __ASM_PTDUMP_H
 #define __ASM_PTDUMP_H
 
-#ifdef CONFIG_ARM64_PTDUMP_CORE
+#ifdef CONFIG_PTDUMP_CORE
 
 #include <linux/mm_types.h>
 #include <linux/seq_file.h>
@@ -21,15 +21,15 @@ struct ptdump_info {
 	unsigned long			base_addr;
 };
 
-void ptdump_walk_pgd(struct seq_file *s, struct ptdump_info *info);
-#ifdef CONFIG_ARM64_PTDUMP_DEBUGFS
+void ptdump_walk(struct seq_file *s, struct ptdump_info *info);
+#ifdef CONFIG_PTDUMP_DEBUGFS
 void ptdump_debugfs_register(struct ptdump_info *info, const char *name);
 #else
 static inline void ptdump_debugfs_register(struct ptdump_info *info,
 					   const char *name) { }
 #endif
 void ptdump_check_wx(void);
-#endif /* CONFIG_ARM64_PTDUMP_CORE */
+#endif /* CONFIG_PTDUMP_CORE */
 
 #ifdef CONFIG_DEBUG_WX
 #define debug_checkwx()	ptdump_check_wx()
diff --git a/arch/arm64/mm/Makefile b/arch/arm64/mm/Makefile
index 849c1df3d214..d91030f0ffee 100644
--- a/arch/arm64/mm/Makefile
+++ b/arch/arm64/mm/Makefile
@@ -4,8 +4,8 @@ obj-y				:= dma-mapping.o extable.o fault.o init.o \
 				   ioremap.o mmap.o pgd.o mmu.o \
 				   context.o proc.o pageattr.o
 obj-$(CONFIG_HUGETLB_PAGE)	+= hugetlbpage.o
-obj-$(CONFIG_ARM64_PTDUMP_CORE)	+= dump.o
-obj-$(CONFIG_ARM64_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
+obj-$(CONFIG_PTDUMP_CORE)	+= dump.o
+obj-$(CONFIG_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
 obj-$(CONFIG_NUMA)		+= numa.o
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
 KASAN_SANITIZE_physaddr.o	+= n
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 0a920b538a89..f8c3ef7903ed 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -15,6 +15,7 @@
 #include <linux/io.h>
 #include <linux/init.h>
 #include <linux/mm.h>
+#include <linux/ptdump.h>
 #include <linux/sched.h>
 #include <linux/seq_file.h>
 
@@ -75,10 +76,11 @@ static struct addr_marker address_markers[] = {
  * dumps out a description of the range.
  */
 struct pg_state {
+	struct ptdump_state ptdump;
 	struct seq_file *seq;
 	const struct addr_marker *marker;
 	unsigned long start_address;
-	unsigned level;
+	int level;
 	u64 current_prot;
 	bool check_wx;
 	unsigned long wx_pages;
@@ -179,6 +181,10 @@ static struct pg_level pg_level[] = {
 		.name	= "PGD",
 		.bits	= pte_bits,
 		.num	= ARRAY_SIZE(pte_bits),
+	}, { /* p4d */
+		.name	= "P4D",
+		.bits	= pte_bits,
+		.num	= ARRAY_SIZE(pte_bits),
 	}, { /* pud */
 		.name	= (CONFIG_PGTABLE_LEVELS > 3) ? "PUD" : "PGD",
 		.bits	= pte_bits,
@@ -241,11 +247,15 @@ static void note_prot_wx(struct pg_state *st, unsigned long addr)
 	st->wx_pages += (addr - st->start_address) / PAGE_SIZE;
 }
 
-static void note_page(struct pg_state *st, unsigned long addr, unsigned level,
-				u64 val)
+static void note_page(struct ptdump_state *pt_st, unsigned long addr, int level,
+		      unsigned long val)
 {
+	struct pg_state *st = container_of(pt_st, struct pg_state, ptdump);
 	static const char units[] = "KMGTPE";
-	u64 prot = val & pg_level[level].mask;
+	u64 prot = 0;
+
+	if (level >= 0)
+		prot = val & pg_level[level].mask;
 
 	if (!st->level) {
 		st->level = level;
@@ -293,85 +303,27 @@ static void note_page(struct pg_state *st, unsigned long addr, unsigned level,
 
 }
 
-static void walk_pte(struct pg_state *st, pmd_t *pmdp, unsigned long start,
-		     unsigned long end)
-{
-	unsigned long addr = start;
-	pte_t *ptep = pte_offset_kernel(pmdp, start);
-
-	do {
-		note_page(st, addr, 4, READ_ONCE(pte_val(*ptep)));
-	} while (ptep++, addr += PAGE_SIZE, addr != end);
-}
-
-static void walk_pmd(struct pg_state *st, pud_t *pudp, unsigned long start,
-		     unsigned long end)
-{
-	unsigned long next, addr = start;
-	pmd_t *pmdp = pmd_offset(pudp, start);
-
-	do {
-		pmd_t pmd = READ_ONCE(*pmdp);
-		next = pmd_addr_end(addr, end);
-
-		if (pmd_none(pmd) || pmd_sect(pmd)) {
-			note_page(st, addr, 3, pmd_val(pmd));
-		} else {
-			BUG_ON(pmd_bad(pmd));
-			walk_pte(st, pmdp, addr, next);
-		}
-	} while (pmdp++, addr = next, addr != end);
-}
-
-static void walk_pud(struct pg_state *st, pgd_t *pgdp, unsigned long start,
-		     unsigned long end)
+void ptdump_walk(struct seq_file *s, struct ptdump_info *info)
 {
-	unsigned long next, addr = start;
-	pud_t *pudp = pud_offset(pgdp, start);
-
-	do {
-		pud_t pud = READ_ONCE(*pudp);
-		next = pud_addr_end(addr, end);
-
-		if (pud_none(pud) || pud_sect(pud)) {
-			note_page(st, addr, 2, pud_val(pud));
-		} else {
-			BUG_ON(pud_bad(pud));
-			walk_pmd(st, pudp, addr, next);
-		}
-	} while (pudp++, addr = next, addr != end);
-}
+	unsigned long end = ~0UL;
+	struct pg_state st;
 
-static void walk_pgd(struct pg_state *st, struct mm_struct *mm,
-		     unsigned long start)
-{
-	unsigned long end = (start < TASK_SIZE_64) ? TASK_SIZE_64 : 0;
-	unsigned long next, addr = start;
-	pgd_t *pgdp = pgd_offset(mm, start);
-
-	do {
-		pgd_t pgd = READ_ONCE(*pgdp);
-		next = pgd_addr_end(addr, end);
-
-		if (pgd_none(pgd)) {
-			note_page(st, addr, 1, pgd_val(pgd));
-		} else {
-			BUG_ON(pgd_bad(pgd));
-			walk_pud(st, pgdp, addr, next);
-		}
-	} while (pgdp++, addr = next, addr != end);
-}
+	if (info->base_addr < TASK_SIZE_64)
+		end = TASK_SIZE_64;
 
-void ptdump_walk_pgd(struct seq_file *m, struct ptdump_info *info)
-{
-	struct pg_state st = {
-		.seq = m,
+	st = (struct pg_state){
+		.seq = s,
 		.marker = info->markers,
+		.ptdump = {
+			.note_page = note_page,
+			.range = (struct ptdump_range[]){
+				{info->base_addr, end},
+				{0, 0}
+			}
+		}
 	};
 
-	walk_pgd(&st, info->mm, info->base_addr);
-
-	note_page(&st, 0, 0, 0);
+	ptdump_walk_pgd(&st.ptdump, info->mm);
 }
 
 static void ptdump_initialize(void)
@@ -399,10 +351,17 @@ void ptdump_check_wx(void)
 			{ -1, NULL},
 		},
 		.check_wx = true,
+		.ptdump = {
+			.note_page = note_page,
+			.range = (struct ptdump_range[]) {
+				{PAGE_OFFSET, ~0UL},
+				{0, 0}
+			}
+		}
 	};
 
-	walk_pgd(&st, &init_mm, PAGE_OFFSET);
-	note_page(&st, 0, 0, 0);
+	ptdump_walk_pgd(&st.ptdump, &init_mm);
+
 	if (st.wx_pages || st.uxn_pages)
 		pr_warn("Checked W+X mappings: FAILED, %lu W+X pages found, %lu non-UXN pages found\n",
 			st.wx_pages, st.uxn_pages);
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 5a3b15a14a7f..36e8f4f74433 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -943,13 +943,13 @@ int __init arch_ioremap_pud_supported(void)
 	 * SW table walks can't handle removal of intermediate entries.
 	 */
 	return IS_ENABLED(CONFIG_ARM64_4K_PAGES) &&
-	       !IS_ENABLED(CONFIG_ARM64_PTDUMP_DEBUGFS);
+	       !IS_ENABLED(CONFIG_PTDUMP_DEBUGFS);
 }
 
 int __init arch_ioremap_pmd_supported(void)
 {
 	/* See arch_ioremap_pud_supported() */
-	return !IS_ENABLED(CONFIG_ARM64_PTDUMP_DEBUGFS);
+	return !IS_ENABLED(CONFIG_PTDUMP_DEBUGFS);
 }
 
 int pud_set_huge(pud_t *pudp, phys_addr_t phys, pgprot_t prot)
diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
index 064163f25592..1f2eae3e988b 100644
--- a/arch/arm64/mm/ptdump_debugfs.c
+++ b/arch/arm64/mm/ptdump_debugfs.c
@@ -7,7 +7,7 @@
 static int ptdump_show(struct seq_file *m, void *v)
 {
 	struct ptdump_info *info = m->private;
-	ptdump_walk_pgd(m, info);
+	ptdump_walk(m, info);
 	return 0;
 }
 DEFINE_SHOW_ATTRIBUTE(ptdump);
diff --git a/drivers/firmware/efi/arm-runtime.c b/drivers/firmware/efi/arm-runtime.c
index 899b803842bb..9dda2602c862 100644
--- a/drivers/firmware/efi/arm-runtime.c
+++ b/drivers/firmware/efi/arm-runtime.c
@@ -27,7 +27,7 @@
 
 extern u64 efi_system_table;
 
-#ifdef CONFIG_ARM64_PTDUMP_DEBUGFS
+#if defined(CONFIG_PTDUMP_DEBUGFS) && defined(CONFIG_ARM64)
 #include <asm/ptdump.h>
 
 static struct ptdump_info efi_ptdump_info = {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
