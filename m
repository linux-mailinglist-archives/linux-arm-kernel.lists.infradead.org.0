Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2449A790B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:22:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3VTn4hCyhbp/eRv+dqL+J92mimMIc/udwuUYlQua+I=; b=EWQY9JpMS9w59Q
	VJ8DmJYa4J6YMZFg05VebbtZm0T0URyWCkhSmfOEhIUzoepEDsZxjpi4YBbpuVaZgoz9lDJnjvvkh
	WBq8X5k4zi+7CUpxe+7tv6rAOZhQ5nGSIzf2IGOmTMj6u7pPb6tpv8Oilm4ZalzF+JBeQWV2cAFrU
	Hy4NNn0sL3orF0MHM7os/f2RPTdU9jbsRE+8OBXqWoac0iPZJyiU3KfiJ3/cy8AHFd1KkxSX4G5GV
	gUBPc/XyaFZ+k/WmCnQEjgfKjOgXk7s3GOdVd1pqwyCSQKzV2OeY4uYTSP6N6FT5qKJfi1R2a/eZV
	k128BOXzJJLIhyeb+Wmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8QB-00062P-Dh; Mon, 29 Jul 2019 16:22:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8PR-0005nM-Mp
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:22:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3334C1576;
 Mon, 29 Jul 2019 09:22:01 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 080363F694;
 Mon, 29 Jul 2019 09:21:59 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 02/11] arm64: mm: Flip kernel VA space
Date: Mon, 29 Jul 2019 17:21:08 +0100
Message-Id: <20190729162117.832-3-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729162117.832-1-steve.capper@arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092201_832819_FB467376 
X-CRM114-Status: GOOD (  15.65  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to allow for a KASAN shadow that changes size at boot time, one
must fix the KASAN_SHADOW_END for both 48 & 52-bit VAs and "grow" the
start address. Also, it is highly desirable to maintain the same
function addresses in the kernel .text between VA sizes. Both of these
requirements necessitate us to flip the kernel address space halves s.t.
the direct linear map occupies the lower addresses.

This patch puts the direct linear map in the lower addresses of the
kernel VA range and everything else in the higher ranges.

We need to adjust:
 *) KASAN shadow region placement logic,
 *) KASAN_SHADOW_OFFSET computation logic,
 *) virt_to_phys, phys_to_virt checks,
 *) page table dumper.

These are all small changes, that need to take place atomically, so they
are bundled into this commit.

As part of the re-arrangement, a guard region of 2MB (to preserve
alignment for fixed map) is added after the vmemmap. Otherwise the
vmemmap could intersect with IS_ERR pointers.

Signed-off-by: Steve Capper <steve.capper@arm.com>

---

Changed in V4 - we add a guard region after vmemmap to avoid ambiguity
with error pointers
---
 arch/arm64/Makefile              | 2 +-
 arch/arm64/include/asm/memory.h  | 8 ++++----
 arch/arm64/include/asm/pgtable.h | 2 +-
 arch/arm64/kernel/hibernate.c    | 2 +-
 arch/arm64/mm/dump.c             | 7 ++++---
 arch/arm64/mm/init.c             | 9 +--------
 arch/arm64/mm/kasan_init.c       | 6 +++---
 arch/arm64/mm/mmu.c              | 4 ++--
 8 files changed, 17 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index bb1f1dbb34e8..b2400f9c1213 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -130,7 +130,7 @@ KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 #				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
 # in 32-bit arithmetic
 KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
-	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 32))) \
+	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
 	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
 	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index d3a951dc9878..98a87f0f40d5 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -38,9 +38,9 @@
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
 #define VA_START		(UL(0xffffffffffffffff) - \
-	(UL(1) << VA_BITS) + 1)
-#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
 	(UL(1) << (VA_BITS - 1)) + 1)
+#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
+	(UL(1) << VA_BITS) + 1)
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
@@ -48,7 +48,7 @@
 #define MODULES_END		(MODULES_VADDR + MODULES_VSIZE)
 #define MODULES_VADDR		(BPF_JIT_REGION_END)
 #define MODULES_VSIZE		(SZ_128M)
-#define VMEMMAP_START		(PAGE_OFFSET - VMEMMAP_SIZE)
+#define VMEMMAP_START		(-VMEMMAP_SIZE - SZ_2M)
 #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
@@ -227,7 +227,7 @@ extern u64			vabits_user;
  * space. Testing the top bit for the start of the region is a
  * sufficient check.
  */
-#define __is_lm_address(addr)	(!!((addr) & BIT(VA_BITS - 1)))
+#define __is_lm_address(addr)	(!((addr) & BIT(VA_BITS - 1)))
 
 #define __lm_to_phys(addr)	(((addr) & ~PAGE_OFFSET) + PHYS_OFFSET)
 #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 3f5461f7b560..d274ea9a5f86 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -21,7 +21,7 @@
  *	and fixed mappings
  */
 #define VMALLOC_START		(MODULES_END)
-#define VMALLOC_END		(PAGE_OFFSET - PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
+#define VMALLOC_END		(- PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
 
 #define vmemmap			((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT))
 
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9341fcc6e809..e130db05d932 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -496,7 +496,7 @@ int swsusp_arch_resume(void)
 		rc = -ENOMEM;
 		goto out;
 	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, 0);
+	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, VA_START);
 	if (rc)
 		goto out;
 
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 82b3a7fdb4a6..6f0b9f8ddf55 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -26,6 +26,8 @@
 #include <asm/ptdump.h>
 
 static const struct addr_marker address_markers[] = {
+	{ PAGE_OFFSET,			"Linear Mapping start" },
+	{ VA_START,			"Linear Mapping end" },
 #ifdef CONFIG_KASAN
 	{ KASAN_SHADOW_START,		"Kasan shadow start" },
 	{ KASAN_SHADOW_END,		"Kasan shadow end" },
@@ -40,9 +42,8 @@ static const struct addr_marker address_markers[] = {
 	{ PCI_IO_END,			"PCI I/O end" },
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
 	{ VMEMMAP_START,		"vmemmap start" },
-	{ VMEMMAP_START + VMEMMAP_SIZE,	"vmemmap end" },
+	{ -1,				"vmemmap end" },
 #endif
-	{ PAGE_OFFSET,			"Linear mapping" },
 	{ -1,				NULL },
 };
 
@@ -376,7 +377,7 @@ static void ptdump_initialize(void)
 static struct ptdump_info kernel_ptdump_info = {
 	.mm		= &init_mm,
 	.markers	= address_markers,
-	.base_addr	= VA_START,
+	.base_addr	= PAGE_OFFSET,
 };
 
 void ptdump_check_wx(void)
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f3c795278def..62927ed02229 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -301,7 +301,7 @@ static void __init fdt_enforce_memory_region(void)
 
 void __init arm64_memblock_init(void)
 {
-	const s64 linear_region_size = -(s64)PAGE_OFFSET;
+	const s64 linear_region_size = BIT(VA_BITS - 1);
 
 	/* Handle linux,usable-memory-range property */
 	fdt_enforce_memory_region();
@@ -309,13 +309,6 @@ void __init arm64_memblock_init(void)
 	/* Remove memory above our supported physical address size */
 	memblock_remove(1ULL << PHYS_MASK_SHIFT, ULLONG_MAX);
 
-	/*
-	 * Ensure that the linear region takes up exactly half of the kernel
-	 * virtual address space. This way, we can distinguish a linear address
-	 * from a kernel/module/vmalloc address by testing a single bit.
-	 */
-	BUILD_BUG_ON(linear_region_size != BIT(VA_BITS - 1));
-
 	/*
 	 * Select a suitable value for the base of physical memory.
 	 */
diff --git a/arch/arm64/mm/kasan_init.c b/arch/arm64/mm/kasan_init.c
index 6cf97b904ebb..05edfe9b02e4 100644
--- a/arch/arm64/mm/kasan_init.c
+++ b/arch/arm64/mm/kasan_init.c
@@ -225,10 +225,10 @@ void __init kasan_init(void)
 	kasan_map_populate(kimg_shadow_start, kimg_shadow_end,
 			   early_pfn_to_nid(virt_to_pfn(lm_alias(_text))));
 
-	kasan_populate_early_shadow((void *)KASAN_SHADOW_START,
-				    (void *)mod_shadow_start);
+	kasan_populate_early_shadow(kasan_mem_to_shadow((void *) VA_START),
+				   (void *)mod_shadow_start);
 	kasan_populate_early_shadow((void *)kimg_shadow_end,
-				    kasan_mem_to_shadow((void *)PAGE_OFFSET));
+				   (void *)KASAN_SHADOW_END);
 
 	if (kimg_shadow_start > mod_shadow_end)
 		kasan_populate_early_shadow((void *)mod_shadow_end,
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 750a69dde39b..1d4247f9a496 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -398,7 +398,7 @@ static phys_addr_t pgd_pgtable_alloc(int shift)
 static void __init create_mapping_noalloc(phys_addr_t phys, unsigned long virt,
 				  phys_addr_t size, pgprot_t prot)
 {
-	if (virt < VMALLOC_START) {
+	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
 		pr_warn("BUG: not creating mapping for %pa at 0x%016lx - outside kernel range\n",
 			&phys, virt);
 		return;
@@ -425,7 +425,7 @@ void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 static void update_mapping_prot(phys_addr_t phys, unsigned long virt,
 				phys_addr_t size, pgprot_t prot)
 {
-	if (virt < VMALLOC_START) {
+	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
 		pr_warn("BUG: not updating mapping for %pa at 0x%016lx - outside kernel range\n",
 			&phys, virt);
 		return;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
