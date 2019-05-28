Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2A12CB45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5OF9I1ZCSD5kGI/pLruh8tk1qG3LJ1AsM/Z4hh0W3xg=; b=dVO1t99q/KeTIu
	TA/JkNy1qKMbcr41m3PpSiz15KzClh78/MIO8GnJZ+R6pyXQqpxHzV3mtff+rcZItOysM3lRDF1Bj
	gHpcxh6PljT+C0i9lz6cr4pkVZn4J7GEt8XP2FA1RGoY0joyFDhKytu4YTIwJ0DrrArFFezONhbEl
	X5we2dO7patnBdwFz6u8Rx15vLf3GuYe5wN+i8Y8UgbrpHwOtDuOD8TVEQF+0jYEWiE0vXK73f8it
	mikI51UM5eGk84CRxr/DcJw7/blPmm88DvF2xLtdMvsUEU6V1k7Wo3HXulvraXphS32FgL8Am0Mdx
	EheHa/jPdA0O0XH8cr9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVehn-0005eM-JV; Tue, 28 May 2019 16:12:03 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVegX-0004J0-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:10:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 678CD15AB;
 Tue, 28 May 2019 09:10:44 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 074343F59C;
 Tue, 28 May 2019 09:10:41 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/12] arm64: mm: Flip kernel VA space
Date: Tue, 28 May 2019 17:10:16 +0100
Message-Id: <20190528161026.13193-3-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091045_627657_43E5BE8F 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Put the direct linear map in the lower addresses of the kernel VA range
and everything else in the higher ranges.

This allows us to make room for an inline KASAN shadow that operates
under both 48 and 52 bit kernel VA sizes. For example with a 52-bit VA,
if KASAN_SHADOW_END < 0xFFF8000000000000 (it is in the lower addresses
of the kernel VA range), this will be below the start of the minimum
48-bit kernel VA address of 0xFFFF000000000000.

We need to adjust:
 *) KASAN shadow region placement logic,
 *) KASAN_SHADOW_OFFSET computation logic,
 *) virt_to_phys, phys_to_virt checks,
 *) page table dumper.

These are all small changes, that need to take place atomically, so they
are bundled into this commit.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/Makefile              |  2 +-
 arch/arm64/include/asm/memory.h  | 10 +++++-----
 arch/arm64/include/asm/pgtable.h |  2 +-
 arch/arm64/kernel/hibernate.c    |  2 +-
 arch/arm64/mm/dump.c             |  8 ++++----
 arch/arm64/mm/init.c             |  9 +--------
 arch/arm64/mm/kasan_init.c       |  6 +++---
 arch/arm64/mm/mmu.c              |  4 ++--
 8 files changed, 18 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index b025304bde46..2dad2ae6b181 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -115,7 +115,7 @@ KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 #				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
 # in 32-bit arithmetic
 KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
-	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 32))) \
+	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
 	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
 	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
 
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 9fd387a63b9b..d19bf9965d34 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -49,10 +49,10 @@
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
 #define VA_START		(UL(0xffffffffffffffff) - \
-	(UL(1) << VA_BITS) + 1)
-#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
 	(UL(1) << (VA_BITS - 1)) + 1)
-#define PAGE_OFFSET_END		(~0UL)
+#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
+	(UL(1) << VA_BITS) + 1)
+#define PAGE_OFFSET_END		(VA_START)
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(VA_START + KASAN_SHADOW_SIZE)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
@@ -60,7 +60,7 @@
 #define MODULES_END		(MODULES_VADDR + MODULES_VSIZE)
 #define MODULES_VADDR		(BPF_JIT_REGION_END)
 #define MODULES_VSIZE		(SZ_128M)
-#define VMEMMAP_START		(PAGE_OFFSET - VMEMMAP_SIZE)
+#define VMEMMAP_START		(-VMEMMAP_SIZE)
 #define PCI_IO_END		(VMEMMAP_START - SZ_2M)
 #define PCI_IO_START		(PCI_IO_END - PCI_IO_SIZE)
 #define FIXADDR_TOP		(PCI_IO_START - SZ_2M)
@@ -239,7 +239,7 @@ extern u64			vabits_user;
  * space. Testing the top bit for the start of the region is a
  * sufficient check.
  */
-#define __is_lm_address(addr)	(!!((addr) & BIT(VA_BITS - 1)))
+#define __is_lm_address(addr)	(!((addr) & BIT(VA_BITS - 1)))
 
 #define __lm_to_phys(addr)	(((addr) & ~PAGE_OFFSET) + PHYS_OFFSET)
 #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
index 2c41b04708fe..d0ab784304e9 100644
--- a/arch/arm64/include/asm/pgtable.h
+++ b/arch/arm64/include/asm/pgtable.h
@@ -32,7 +32,7 @@
  *	and fixed mappings
  */
 #define VMALLOC_START		(MODULES_END)
-#define VMALLOC_END		(PAGE_OFFSET - PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
+#define VMALLOC_END		(- PUD_SIZE - VMEMMAP_SIZE - SZ_64K)
 
 #define vmemmap			((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT))
 
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9859e1178e6b..002653b214c4 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -497,7 +497,7 @@ int swsusp_arch_resume(void)
 		rc = -ENOMEM;
 		goto out;
 	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, 0);
+	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, PAGE_OFFSET_END);
 	if (rc)
 		goto out;
 
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 14fe23cd5932..ee4e5bea8944 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -30,6 +30,8 @@
 #include <asm/ptdump.h>
 
 static const struct addr_marker address_markers[] = {
+	{ PAGE_OFFSET,			"Linear Mapping start" },
+	{ VA_START,			"Linear Mapping end" },
 #ifdef CONFIG_KASAN
 	{ KASAN_SHADOW_START,		"Kasan shadow start" },
 	{ KASAN_SHADOW_END,		"Kasan shadow end" },
@@ -43,10 +45,8 @@ static const struct addr_marker address_markers[] = {
 	{ PCI_IO_START,			"PCI I/O start" },
 	{ PCI_IO_END,			"PCI I/O end" },
 #ifdef CONFIG_SPARSEMEM_VMEMMAP
-	{ VMEMMAP_START,		"vmemmap start" },
-	{ VMEMMAP_START + VMEMMAP_SIZE,	"vmemmap end" },
+	{ VMEMMAP_START,		"vmemmap" },
 #endif
-	{ PAGE_OFFSET,			"Linear mapping" },
 	{ -1,				NULL },
 };
 
@@ -380,7 +380,7 @@ static void ptdump_initialize(void)
 static struct ptdump_info kernel_ptdump_info = {
 	.mm		= &init_mm,
 	.markers	= address_markers,
-	.base_addr	= VA_START,
+	.base_addr	= PAGE_OFFSET,
 };
 
 void ptdump_check_wx(void)
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index d2adffb81b5d..574ed1d4be19 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -311,7 +311,7 @@ static void __init fdt_enforce_memory_region(void)
 
 void __init arm64_memblock_init(void)
 {
-	const s64 linear_region_size = -(s64)PAGE_OFFSET;
+	const s64 linear_region_size = BIT(VA_BITS - 1);
 
 	/* Handle linux,usable-memory-range property */
 	fdt_enforce_memory_region();
@@ -319,13 +319,6 @@ void __init arm64_memblock_init(void)
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
index 296de39ddee5..8066621052db 100644
--- a/arch/arm64/mm/kasan_init.c
+++ b/arch/arm64/mm/kasan_init.c
@@ -229,10 +229,10 @@ void __init kasan_init(void)
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
index a170c6369a68..b0401b2ec4da 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -409,7 +409,7 @@ static phys_addr_t pgd_pgtable_alloc(int shift)
 static void __init create_mapping_noalloc(phys_addr_t phys, unsigned long virt,
 				  phys_addr_t size, pgprot_t prot)
 {
-	if (virt < VMALLOC_START) {
+	if ((virt >= VA_START) && (virt < VMALLOC_START)) {
 		pr_warn("BUG: not creating mapping for %pa at 0x%016lx - outside kernel range\n",
 			&phys, virt);
 		return;
@@ -436,7 +436,7 @@ void __init create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
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
