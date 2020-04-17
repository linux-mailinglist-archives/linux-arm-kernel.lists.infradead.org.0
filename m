Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBEB1AE10A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:26:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=18unHgSMyq5g9YDgV8TKYVDUTYh1euswumh3uXnXYh0=; b=pwDQpIp4NM1DUf
	aDO/8GY+3jiEGOnOlvWsOCyTkDeM8lBOSPD3mj76fltCQXsQyMjtEjVNEcBXhUmiAQCsn3Fujumc0
	A+aQ8icII1xn823zac/NX8lzleW58vc8oa+DB0k01MyX0i6QvSc2p6OcQgJfnV0yegjutunpns1KT
	g/wsKIWh+WZHpvyWm5KB7dwZPSZwn2TL3x32zbn0FjbK0f30//VxFqJKxrjdH6brc8jQl7nNHisyG
	hl/0hGigeQJmmoKuK2vXfS547pIVBgzqKEGO78TWd/fzOEpzExmOjz4HksVdSLjapjpzEt5TSNVEi
	kb76hJLGfprvIwN7S+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPStA-0008I8-E4; Fri, 17 Apr 2020 15:26:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSsz-0008H8-P0
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:26:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 499FB1FB;
 Fri, 17 Apr 2020 08:26:29 -0700 (PDT)
Received: from e112269-lin.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF4C83F73D;
 Fri, 17 Apr 2020 08:26:26 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH RESEND] arm64: Map page table of linear map readonly
Date: Fri, 17 Apr 2020 16:26:19 +0100
Message-Id: <20200417152619.41680-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_082633_901314_799C332A 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Hildenbrand <david@redhat.com>, linux-kernel@vger.kernel.org,
 Steven Price <steven.price@arm.com>, Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Pan Zhang <zhangpan26@huawei.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It's fairly rare that linear mappings need to be updated, so to improve
security we can map the leaf page table entries as read-only, this makes
it harder for an attacker to modify the permissions of the linear
mappings, while the overhead is low because the linear mappings don't
need to be changed frequently. When they do need to be updated we can
use fixmaps to create a temporary alternative mapping to do the update.

Signed-off-by: Steven Price <steven.price@arm.com>
---
Resending as I didn't receive any comments on my first posting[1].
Anyone have any views as to whether this is a good idea or not?

[1] https://lore.kernel.org/linux-arm-kernel/20200306173217.44372-1-steven.price@arm.com/

 arch/arm64/Kconfig              |  9 ++++++++
 arch/arm64/include/asm/fixmap.h | 20 ++++++++++++++++-
 arch/arm64/mm/mmu.c             | 38 +++++++++++++++++++++++++++++++--
 arch/arm64/mm/pageattr.c        | 36 ++++++++++++++++++++++++++++++-
 4 files changed, 99 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 40fb05d96c60..138d8b50d894 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1213,6 +1213,15 @@ config RODATA_FULL_DEFAULT_ENABLED
 	  This requires the linear region to be mapped down to pages,
 	  which may adversely affect performance in some cases.
 
+config LINEAR_PGTABLE_RO
+	bool "Apply r/o permissions to page tables of linear mapping"
+	help
+	  Apply read-only attributes to the page tables that make up the
+	  the linear mapping. This prevents the linear page tables from being
+	  inadvertently modified.
+
+	  This requires rodata=on (or RODATA_FULL_DEFAULT_ENABLED).
+
 config ARM64_SW_TTBR0_PAN
 	bool "Emulate Privileged Access Never using TTBR0_EL1 switching"
 	help
diff --git a/arch/arm64/include/asm/fixmap.h b/arch/arm64/include/asm/fixmap.h
index f987b8a8f325..55bf08151d73 100644
--- a/arch/arm64/include/asm/fixmap.h
+++ b/arch/arm64/include/asm/fixmap.h
@@ -67,6 +67,12 @@ enum fixed_addresses {
 	FIX_ENTRY_TRAMP_TEXT,
 #define TRAMP_VALIAS		(__fix_to_virt(FIX_ENTRY_TRAMP_TEXT))
 #endif /* CONFIG_UNMAP_KERNEL_AT_EL0 */
+
+#ifdef CONFIG_LINEAR_PGTABLE_RO
+	FIX_LINEAR_RO_BEGIN,
+	FIX_LINEAR_RO_END = FIX_LINEAR_RO_BEGIN + NR_CPUS - 1,
+#endif
+
 	__end_of_permanent_fixed_addresses,
 
 	/*
@@ -77,7 +83,15 @@ enum fixed_addresses {
 #define FIX_BTMAPS_SLOTS	7
 #define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
 
+#ifdef CONFIG_LINEAR_PGTABLE_RO
+	/*
+	 * Share the space with the LINEAR_RO area as during early boot, the
+	 * LINEAR_RO area isn't needed
+	 */
+	FIX_BTMAP_END = FIX_LINEAR_RO_BEGIN,
+#else
 	FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
+#endif
 	FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
 
 	/*
@@ -89,9 +103,13 @@ enum fixed_addresses {
 	FIX_PUD,
 	FIX_PGD,
 
-	__end_of_fixed_addresses
+	___end_of_fixed_addresses
 };
 
+static const enum fixed_addresses __end_of_fixed_addresses =
+	___end_of_fixed_addresses > __end_of_permanent_fixed_addresses ?
+	___end_of_fixed_addresses : __end_of_permanent_fixed_addresses;
+
 #define FIXADDR_SIZE	(__end_of_permanent_fixed_addresses << PAGE_SHIFT)
 #define FIXADDR_START	(FIXADDR_TOP - FIXADDR_SIZE)
 
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a374e4f51a62..4f9d14b584a5 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -21,6 +21,7 @@
 #include <linux/fs.h>
 #include <linux/io.h>
 #include <linux/mm.h>
+#include <linux/pagewalk.h>
 #include <linux/vmalloc.h>
 
 #include <asm/barrier.h>
@@ -456,6 +457,34 @@ void __init mark_linear_text_alias_ro(void)
 			    PAGE_KERNEL_RO);
 }
 
+#ifdef CONFIG_LINEAR_PGTABLE_RO
+static int __init mark_linear_pmd_ro(pmd_t *pmd, unsigned long addr,
+				     unsigned long next, struct mm_walk *walk)
+{
+	phys_addr_t pmd_phys = pte_offset_phys(pmd, 0);
+
+	__map_memblock(walk->mm->pgd, pmd_phys, pmd_phys + PAGE_SIZE,
+		       PAGE_KERNEL_RO, NO_BLOCK_MAPPINGS | NO_CONT_MAPPINGS);
+
+	return 0;
+}
+
+static const struct mm_walk_ops mark_linear_pg_ro_ops __initconst = {
+	.pmd_entry = mark_linear_pmd_ro,
+};
+
+/*
+ * Remove the write permission from the leaf page tables of the linear map
+ */
+void __init mark_linear_pg_ro(void)
+{
+	down_read(&init_mm.mmap_sem);
+	walk_page_range_novma(&init_mm, PAGE_OFFSET, PAGE_END,
+			      &mark_linear_pg_ro_ops, init_mm.pgd, NULL);
+	up_read(&init_mm.mmap_sem);
+}
+#endif
+
 static void __init map_mem(pgd_t *pgdp)
 {
 	phys_addr_t kernel_start = __pa_symbol(_text);
@@ -503,7 +532,7 @@ static void __init map_mem(pgd_t *pgdp)
 	 * so we should avoid them here.
 	 */
 	__map_memblock(pgdp, kernel_start, kernel_end,
-		       PAGE_KERNEL, NO_CONT_MAPPINGS);
+		       PAGE_KERNEL, flags | NO_CONT_MAPPINGS);
 	memblock_clear_nomap(kernel_start, kernel_end - kernel_start);
 
 #ifdef CONFIG_KEXEC_CORE
@@ -679,6 +708,11 @@ void __init paging_init(void)
 	cpu_replace_ttbr1(lm_alias(swapper_pg_dir));
 	init_mm.pgd = swapper_pg_dir;
 
+#ifdef CONFIG_LINEAR_PGTABLE_RO
+	if (rodata_full)
+		mark_linear_pg_ro();
+#endif
+
 	memblock_free(__pa_symbol(init_pg_dir),
 		      __pa_symbol(init_pg_end) - __pa_symbol(init_pg_dir));
 
@@ -1187,8 +1221,8 @@ void __set_fixmap(enum fixed_addresses idx,
 		set_pte(ptep, pfn_pte(phys >> PAGE_SHIFT, flags));
 	} else {
 		pte_clear(&init_mm, addr, ptep);
-		flush_tlb_kernel_range(addr, addr+PAGE_SIZE);
 	}
+	flush_tlb_kernel_range(addr, addr + PAGE_SIZE);
 }
 
 void *__init fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
diff --git a/arch/arm64/mm/pageattr.c b/arch/arm64/mm/pageattr.c
index 250c49008d73..52d34c06656c 100644
--- a/arch/arm64/mm/pageattr.c
+++ b/arch/arm64/mm/pageattr.c
@@ -7,6 +7,7 @@
 #include <linux/module.h>
 #include <linux/sched.h>
 #include <linux/vmalloc.h>
+#include <linux/uaccess.h>
 
 #include <asm/pgtable.h>
 #include <asm/set_memory.h>
@@ -19,6 +20,33 @@ struct page_change_data {
 
 bool rodata_full __ro_after_init = IS_ENABLED(CONFIG_RODATA_FULL_DEFAULT_ENABLED);
 
+#ifdef CONFIG_LINEAR_PGTABLE_RO
+static void set_linear_pte_range(pte_t *ptep, pte_t pte)
+{
+	unsigned long flags;
+	unsigned int idx;
+	unsigned long addr;
+
+	local_irq_save(flags);
+	preempt_disable();
+
+	/* During early boot we use FIX_PTE as we don't need a per-CPU slot */
+	if (system_state < SYSTEM_SCHEDULING)
+		idx = FIX_PTE;
+	else
+		idx = FIX_LINEAR_RO_BEGIN + smp_processor_id();
+
+	addr = virt_to_phys(ptep);
+	set_fixmap(idx, addr);
+	ptep = (pte_t *)(__fix_to_virt(idx) + (addr & ~PAGE_MASK));
+	set_pte(ptep, pte);
+	clear_fixmap(idx);
+
+	preempt_enable();
+	local_irq_restore(flags);
+}
+#endif
+
 static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
 {
 	struct page_change_data *cdata = data;
@@ -27,7 +55,13 @@ static int change_page_range(pte_t *ptep, unsigned long addr, void *data)
 	pte = clear_pte_bit(pte, cdata->clear_mask);
 	pte = set_pte_bit(pte, cdata->set_mask);
 
-	set_pte(ptep, pte);
+#ifdef CONFIG_LINEAR_PGTABLE_RO
+	if (addr >= PAGE_OFFSET)
+		set_linear_pte_range(ptep, pte);
+	else
+#endif
+		set_pte(ptep, pte);
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
