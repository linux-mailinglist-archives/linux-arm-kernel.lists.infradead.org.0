Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C578D4B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9zRLgKHlE7ejeVEP6zs+FZWzuneKGdABhDQq8aBIJgM=; b=dHrXhDP+c8fuoKd7RDex7HB0hC
	DAsdw/a04YNi5YzuIsobRk+LRd3otdqt87lLz9Hb8Ur/bQNJWnXWZ2vu2s+OGQ/xMvvAku6lUY8hJ
	K3lvmW3fhSEF0dlxX5obDf/JDq+7OuEqRmYEl1bYUpJfRCfcBB1KXGw5s0uDUjoNz1ljODRDuNzqB
	TcaTsKe/UdwIYxvsjDDriWcgvfMphO1fhqVK11OLCLcjFdnweyap/3v0MOFy4GVs4e4w+huvqY1Ux
	peSwWhSjfrXK2CJWot8W8/bJ5foXTNQUJ9XtcdvgVN37+H4tY9yGRDUhi7ZN5YUWy6Ri9edY4nR0m
	2mK3oxCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtM3-00058Q-HF; Wed, 14 Aug 2019 13:30:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtL1-0004Eo-4U
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:29:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0612628;
 Wed, 14 Aug 2019 06:29:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 39C313F706;
 Wed, 14 Aug 2019 06:29:13 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: memory: rename VA_START to PAGE_END
Date: Wed, 14 Aug 2019 14:28:48 +0100
Message-Id: <20190814132848.24295-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190814132848.24295-1-mark.rutland@arm.com>
References: <20190814132848.24295-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_062915_569984_CD7A7B96 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 steve.capper@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prior to commit:

  14c127c957c1c607 ("arm64: mm: Flip kernel VA space")

... VA_START described the start of the TTBR1 address space for a given
VA size described by VA_BITS, where all kernel mappings began.

Since that commit, VA_START described a portion midway through the
address space, where the linear map ends and other kernel mappings
begin.

To avoid confusion, let's rename VA_START to PAGE_END, making it clear
that it's not the start of the TTBR1 address space and implying that
it's related to PAGE_OFFSET. Comments and other mnemonics are updated
accordingly, along with a typo fix in the decription of VMEMMAP_SIZE.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/memory.h  | 20 ++++++++++----------
 arch/arm64/include/asm/pgtable.h |  4 ++--
 arch/arm64/kernel/hibernate.c    |  2 +-
 arch/arm64/mm/dump.c             |  6 +++---
 arch/arm64/mm/kasan_init.c       |  2 +-
 arch/arm64/mm/mmu.c              |  4 ++--
 6 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index d69c2865ae40..a713bad71db5 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -28,20 +28,20 @@
  *                a struct page array
  *
  * If we are configured with a 52-bit kernel VA then our VMEMMAP_SIZE
- * neads to cover the memory region from the beginning of the 52-bit
- * PAGE_OFFSET all the way to VA_START for 48-bit. This allows us to
+ * needs to cover the memory region from the beginning of the 52-bit
+ * PAGE_OFFSET all the way to PAGE_END for 48-bit. This allows us to
  * keep a constant PAGE_OFFSET and "fallback" to using the higher end
  * of the VMEMMAP where 52-bit support is not available in hardware.
  */
-#define VMEMMAP_SIZE ((_VA_START(VA_BITS_MIN) - PAGE_OFFSET) \
+#define VMEMMAP_SIZE ((_PAGE_END(VA_BITS_MIN) - PAGE_OFFSET) \
 			>> (PAGE_SHIFT - STRUCT_PAGE_MAX_SHIFT))
 
 /*
- * PAGE_OFFSET - the virtual address of the start of the linear map (top
- *		 (VA_BITS - 1))
- * KIMAGE_VADDR - the virtual address of the start of the kernel image
+ * PAGE_OFFSET - the virtual address of the start of the linear map, at the
+ *               start of the TTBR1 address space.
+ * PAGE_END - the end of the linear map, where all other kernel mappings begin.
+ * KIMAGE_VADDR - the virtual address of the start of the kernel image.
  * VA_BITS - the maximum number of bits for virtual addresses.
- * VA_START - the first kernel virtual address.
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
 #define _PAGE_OFFSET(va)	(-(UL(1) << (va)))
@@ -64,7 +64,7 @@
 #define VA_BITS_MIN		(VA_BITS)
 #endif
 
-#define _VA_START(va)		(-(UL(1) << ((va) - 1)))
+#define _PAGE_END(va)		(-(UL(1) << ((va) - 1)))
 
 #define KERNEL_START		_text
 #define KERNEL_END		_end
@@ -87,7 +87,7 @@
 #define KASAN_THREAD_SHIFT	1
 #else
 #define KASAN_THREAD_SHIFT	0
-#define KASAN_SHADOW_END	(_VA_START(VA_BITS_MIN))
+#define KASAN_SHADOW_END	(_PAGE_END(VA_BITS_MIN))
 #endif /* CONFIG_KASAN */
 
 #define MIN_THREAD_SHIFT	(14 + KASAN_THREAD_SHIFT)
@@ -173,7 +173,7 @@
 
 #ifndef __ASSEMBLY__
 extern u64			vabits_actual;
-#define VA_START		(_VA_START(vabits_actual))
+#define PAGE_END		(_PAGE_END(vabits_actual))
 
 #include <linux/bitops.h>
 #include <linux/mmdebug.h>
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 4a695b9ee0f0..979e24fadf35 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -856,8 +856,8 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
 
 #define update_mmu_cache_pmd(vma, address, pmd) do { } while (0)
 
-#define kc_vaddr_to_offset(v)	((v) & ~VA_START)
-#define kc_offset_to_vaddr(o)	((o) | VA_START)
+#define kc_vaddr_to_offset(v)	((v) & ~PAGE_END)
+#define kc_offset_to_vaddr(o)	((o) | PAGE_END)
 
 #ifdef CONFIG_ARM64_PA_BITS_52
 #define phys_to_ttbr(addr)	(((addr) | ((addr) >> 46)) & TTBR_BADDR_MASK_52)
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index e130db05d932..e0a7fce0e01c 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -496,7 +496,7 @@ int swsusp_arch_resume(void)
 		rc = -ENOMEM;
 		goto out;
 	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, VA_START);
+	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, PAGE_END);
 	if (rc)
 		goto out;
 
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 8e10b4ba215a..93f9f77582ae 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -28,7 +28,7 @@
 
 enum address_markers_idx {
 	PAGE_OFFSET_NR = 0,
-	VA_START_NR,
+	PAGE_END_NR,
 #ifdef CONFIG_KASAN
 	KASAN_START_NR,
 #endif
@@ -36,7 +36,7 @@ enum address_markers_idx {
 
 static struct addr_marker address_markers[] = {
 	{ PAGE_OFFSET,			"Linear Mapping start" },
-	{ 0 /* VA_START */,		"Linear Mapping end" },
+	{ 0 /* PAGE_END */,		"Linear Mapping end" },
 #ifdef CONFIG_KASAN
 	{ 0 /* KASAN_SHADOW_START */,	"Kasan shadow start" },
 	{ KASAN_SHADOW_END,		"Kasan shadow end" },
@@ -411,7 +411,7 @@ void ptdump_check_wx(void)
 
 static int ptdump_init(void)
 {
-	address_markers[VA_START_NR].start_address = VA_START;
+	address_markers[PAGE_END_NR].start_address = PAGE_END;
 #ifdef CONFIG_KASAN
 	address_markers[KASAN_START_NR].start_address = KASAN_SHADOW_START;
 #endif
diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
index 725222271474..f87a32484ea8 100644
--- a/arch/arm64/mm/kasan_init.c
+++ b/arch/arm64/mm/kasan_init.c
@@ -226,7 +226,7 @@ void __init kasan_init(void)
 	kasan_map_populate(kimg_shadow_start, kimg_shadow_end,
 			   early_pfn_to_nid(virt_to_pfn(lm_alias(_text))));
 
-	kasan_populate_early_shadow(kasan_mem_to_shadow((void *) VA_START),
+	kasan_populate_early_shadow(kasan_mem_to_shadow((void *)PAGE_END),
 				   (void *)mod_shadow_start);
 	kasan_populate_early_shadow((void *)kimg_shadow_end,
 				   (void *)KASAN_SHADOW_END);
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 0c8f7e55f859..8e4b7eaff8ce 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -399,7 +399,7 @@ static phys_addr_t pgd_pgtable_alloc(int shift)
 static void __init create_mapping_noalloc(phys_addr_t phys, unsigned long virt,
 				  phys_addr_t size, pgprot_t prot)
 {
-	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
+	if ((virt >= PAGE_END) && (virt < VMALLOC_START)) {
 		pr_warn("BUG: not creating mapping for %pa at 0x%016lx - outside kernel range\n",
 			&phys, virt);
 		return;
@@ -426,7 +426,7 @@ void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
 				phys_addr_t size, pgprot_t prot)
 {
-	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
+	if ((virt >= PAGE_END) && (virt < VMALLOC_START)) {
 		pr_warn("BUG: not updating mapping for %pa at 0x%016lx - outside kernel range\n",
 			&phys, virt);
 		return;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
