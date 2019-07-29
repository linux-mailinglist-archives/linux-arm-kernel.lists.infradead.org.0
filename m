Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19EB790BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 18:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3OX44putTqluRCtd39WweezynoVltbf6TbaX9p2Tj9c=; b=MBh0tmhDvsUcpv
	7Qh0j0Mt3f7r7xib/JKP0qmcksgwxWqZzqL6rD6XFHEfHwzZlcNbwUubrZ7VOVjQ+mMNUyHeWFgZD
	TcK3EKNxvRdw6e5gw4636KongrrAf63t/FDyA8oZPVIY5t+5PsAhTx6mpxL2hwVN0lSNvOuCQKvvW
	5O/VuXasYtAKefkq7uuBTfdSb8V3QvuP050ku0m0E95ZBkuwoifEllUfl8cbfo1B14JEsxzKlpL0z
	r3E3ftfk9R8jYM58+DVm16MnNfRK9OaL1nJao8sXkzPxPrnRcUdhhmEo9/3toqdiR5JWI2s1sEKe8
	/cMqjAGjmnE44YXni/jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs8Rp-00072W-C2; Mon, 29 Jul 2019 16:24:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hs8PW-0005oj-VK
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 16:22:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C831715BF;
 Mon, 29 Jul 2019 09:22:06 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9D8533F694;
 Mon, 29 Jul 2019 09:22:05 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 06/11] arm64: mm: Introduce VA_BITS_ACTUAL
Date: Mon, 29 Jul 2019 17:21:12 +0100
Message-Id: <20190729162117.832-7-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190729162117.832-1-steve.capper@arm.com>
References: <20190729162117.832-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_092207_209614_A6DC5F27 
X-CRM114-Status: GOOD (  16.47  )
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

In order to support 52-bit kernel addresses detectable at boot time, one
needs to know the actual VA_BITS detected. A new variable VA_BITS_ACTUAL
is introduced in this commit and employed for the KVM hypervisor layout,
KASAN, fault handling and phys-to/from-virt translation where there
would normally be compile time constants.

In order to maintain performance in phys_to_virt, another variable
physvirt_offset is introduced.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/include/asm/kasan.h       |  2 +-
 arch/arm64/include/asm/memory.h      | 12 +++++++-----
 arch/arm64/include/asm/mmu_context.h |  2 +-
 arch/arm64/kernel/head.S             |  5 +++++
 arch/arm64/kvm/va_layout.c           | 14 +++++++-------
 arch/arm64/mm/fault.c                |  4 ++--
 arch/arm64/mm/init.c                 |  7 ++++++-
 arch/arm64/mm/mmu.c                  |  3 +++
 8 files changed, 32 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/kasan.h b/arch/arm64/include/asm/kasan.h
index 10d2add842da..ff991dc86ae1 100644
--- a/arch/arm64/include/asm/kasan.h
+++ b/arch/arm64/include/asm/kasan.h
@@ -31,7 +31,7 @@
  *				(1ULL << (64 - KASAN_SHADOW_SCALE_SHIFT))
  */
 #define _KASAN_SHADOW_START(va)	(KASAN_SHADOW_END - (1UL << ((va) - KASAN_SHADOW_SCALE_SHIFT)))
-#define KASAN_SHADOW_START      _KASAN_SHADOW_START(VA_BITS)
+#define KASAN_SHADOW_START      _KASAN_SHADOW_START(VA_BITS_ACTUAL)
 
 void kasan_init(void);
 void kasan_copy_shadow(pgd_t *pgdir);
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index a8a91a573bff..93341f4fe840 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -37,8 +37,6 @@
  * VA_START - the first kernel virtual address.
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
-#define VA_START		(UL(0xffffffffffffffff) - \
-	(UL(1) << (VA_BITS - 1)) + 1)
 #define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
 	(UL(1) << VA_BITS) + 1)
 #define KIMAGE_VADDR		(MODULES_END)
@@ -166,10 +164,14 @@
 #endif
 
 #ifndef __ASSEMBLY__
+extern u64			vabits_actual;
+#define VA_BITS_ACTUAL		({vabits_actual;})
+#define VA_START		(_VA_START(VA_BITS_ACTUAL))
 
 #include <linux/bitops.h>
 #include <linux/mmdebug.h>
 
+extern s64			physvirt_offset;
 extern s64			memstart_addr;
 /* PHYS_OFFSET - the physical address of the start of memory. */
 #define PHYS_OFFSET		({ VM_BUG_ON(memstart_addr & 1); memstart_addr; })
@@ -236,9 +238,9 @@ extern u64			vabits_user;
  * space. Testing the top bit for the start of the region is a
  * sufficient check.
  */
-#define __is_lm_address(addr)	(!((addr) & BIT(VA_BITS - 1)))
+#define __is_lm_address(addr)	(!((addr) & BIT(VA_BITS_ACTUAL - 1)))
 
-#define __lm_to_phys(addr)	(((addr) & ~PAGE_OFFSET) + PHYS_OFFSET)
+#define __lm_to_phys(addr)	(((addr) + physvirt_offset))
 #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
 
 #define __virt_to_phys_nodebug(x) ({					\
@@ -257,7 +259,7 @@ extern phys_addr_t __phys_addr_symbol(unsigned long x);
 #define __phys_addr_symbol(x)	__pa_symbol_nodebug(x)
 #endif
 
-#define __phys_to_virt(x)	((unsigned long)((x) - PHYS_OFFSET) | PAGE_OFFSET)
+#define __phys_to_virt(x)	((unsigned long)((x) - physvirt_offset))
 #define __phys_to_kimg(x)	((unsigned long)((x) + kimage_voffset))
 
 /*
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 7ed0adb187a8..890ccaf02264 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -95,7 +95,7 @@ static inline void __cpu_set_tcr_t0sz(unsigned long t0sz)
 	isb();
 }
 
-#define cpu_set_default_tcr_t0sz()	__cpu_set_tcr_t0sz(TCR_T0SZ(VA_BITS))
+#define cpu_set_default_tcr_t0sz()	__cpu_set_tcr_t0sz(TCR_T0SZ(VA_BITS_ACTUAL))
 #define cpu_set_idmap_tcr_t0sz()	__cpu_set_tcr_t0sz(idmap_t0sz)
 
 /*
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index ac58c69993ec..6dc7349868d9 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -321,6 +321,11 @@ __create_page_tables:
 	dmb	sy
 	dc	ivac, x6		// Invalidate potentially stale cache line
 
+	adr_l	x6, vabits_actual
+	str	x5, [x6]
+	dmb	sy
+	dc	ivac, x6		// Invalidate potentially stale cache line
+
 	/*
 	 * VA_BITS may be too small to allow for an ID mapping to be created
 	 * that covers system RAM if that is located sufficiently high in the
diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index acd8084f1f2c..aaf1a3d43959 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -29,25 +29,25 @@ static void compute_layout(void)
 	int kva_msb;
 
 	/* Where is my RAM region? */
-	hyp_va_msb  = idmap_addr & BIT(VA_BITS - 1);
-	hyp_va_msb ^= BIT(VA_BITS - 1);
+	hyp_va_msb  = idmap_addr & BIT(VA_BITS_ACTUAL - 1);
+	hyp_va_msb ^= BIT(VA_BITS_ACTUAL - 1);
 
 	kva_msb = fls64((u64)phys_to_virt(memblock_start_of_DRAM()) ^
 			(u64)(high_memory - 1));
 
-	if (kva_msb == (VA_BITS - 1)) {
+	if (kva_msb == (VA_BITS_ACTUAL - 1)) {
 		/*
 		 * No space in the address, let's compute the mask so
-		 * that it covers (VA_BITS - 1) bits, and the region
+		 * that it covers (VA_BITS_ACTUAL - 1) bits, and the region
 		 * bit. The tag stays set to zero.
 		 */
-		va_mask  = BIT(VA_BITS - 1) - 1;
+		va_mask  = BIT(VA_BITS_ACTUAL - 1) - 1;
 		va_mask |= hyp_va_msb;
 	} else {
 		/*
 		 * We do have some free bits to insert a random tag.
 		 * Hyp VAs are now created from kernel linear map VAs
-		 * using the following formula (with V == VA_BITS):
+		 * using the following formula (with V == VA_BITS_ACTUAL):
 		 *
 		 *  63 ... V |     V-1    | V-2 .. tag_lsb | tag_lsb - 1 .. 0
 		 *  ---------------------------------------------------------
@@ -55,7 +55,7 @@ static void compute_layout(void)
 		 */
 		tag_lsb = kva_msb;
 		va_mask = GENMASK_ULL(tag_lsb - 1, 0);
-		tag_val = get_random_long() & GENMASK_ULL(VA_BITS - 2, tag_lsb);
+		tag_val = get_random_long() & GENMASK_ULL(VA_BITS_ACTUAL - 2, tag_lsb);
 		tag_val |= hyp_va_msb;
 		tag_val >>= tag_lsb;
 	}
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 9568c116ac7f..751617613f0c 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -138,9 +138,9 @@ static void show_pte(unsigned long addr)
 		return;
 	}
 
-	pr_alert("%s pgtable: %luk pages, %u-bit VAs, pgdp=%016lx\n",
+	pr_alert("%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\n",
 		 mm == &init_mm ? "swapper" : "user", PAGE_SIZE / SZ_1K,
-		 mm == &init_mm ? VA_BITS : (int)vabits_user,
+		 mm == &init_mm ? VA_BITS_ACTUAL : (int)vabits_user,
 		 (unsigned long)virt_to_phys(mm->pgd));
 	pgdp = pgd_offset(mm, addr);
 	pgd = READ_ONCE(*pgdp);
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 62927ed02229..189177672567 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -50,6 +50,9 @@
 s64 memstart_addr __ro_after_init = -1;
 EXPORT_SYMBOL(memstart_addr);
 
+s64 physvirt_offset __ro_after_init;
+EXPORT_SYMBOL(physvirt_offset);
+
 phys_addr_t arm64_dma_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
@@ -301,7 +304,7 @@ static void __init fdt_enforce_memory_region(void)
 
 void __init arm64_memblock_init(void)
 {
-	const s64 linear_region_size = BIT(VA_BITS - 1);
+	const s64 linear_region_size = BIT(VA_BITS_ACTUAL - 1);
 
 	/* Handle linux,usable-memory-range property */
 	fdt_enforce_memory_region();
@@ -315,6 +318,8 @@ void __init arm64_memblock_init(void)
 	memstart_addr = round_down(memblock_start_of_DRAM(),
 				   ARM64_MEMSTART_ALIGN);
 
+	physvirt_offset = PHYS_OFFSET - PAGE_OFFSET;
+
 	/*
 	 * Remove the memory that we will not be able to cover with the
 	 * linear mapping. Take care not to clip the kernel which may be
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index 1d4247f9a496..07b30e6d17f8 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -43,6 +43,9 @@ u64 idmap_ptrs_per_pgd = PTRS_PER_PGD;
 u64 vabits_user __ro_after_init;
 EXPORT_SYMBOL(vabits_user);
 
+u64 __section(".mmuoff.data.write") vabits_actual;
+EXPORT_SYMBOL(vabits_actual);
+
 u64 kimage_voffset __ro_after_init;
 EXPORT_SYMBOL(kimage_voffset);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
