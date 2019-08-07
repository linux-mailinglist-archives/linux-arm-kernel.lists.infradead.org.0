Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1B885073
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL2fPxnmPUiwJHsB2191SmDlg2fsnjD7GJ6XQlj/pv0=; b=GS89yK7z32+Pv9
	PURhJZVl+/RPUP2cRrcgr5Zp1glqfyLwjGvaNkHBJm26pbbVFYR85YIVqIFDDodFTAU/C15E/5czE
	xGUC7iQTw9Mjov1XddWYIMyxOfIYttuur0DRiW/Hq/dyMzi4+UWZUpTygo06l7WdF8kCsYfi8QcaG
	XJtVWeDh2ts8ZdkggbjoqlHXwVNAa/juWcOTAF/GnCjiPAAvXbqtJZZARc015RreZj5d32qjvLsIR
	ev9RAQagzC+5Rdi9p6iLu8nTFBhXIVY4u+x4qzNV84V1dhlJO8u+fvfDebFj+77Nsq6QBlCgzL9tu
	OroswpNDD45j9xVWwIEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOKv-0000Mp-L8; Wed, 07 Aug 2019 15:58:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOIC-0006V0-0n
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:56:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BFED015A2;
 Wed,  7 Aug 2019 08:55:59 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 89F2B3F706;
 Wed,  7 Aug 2019 08:55:58 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 10/12] arm64: mm: Introduce 52-bit Kernel VAs
Date: Wed,  7 Aug 2019 16:55:22 +0100
Message-Id: <20190807155524.5112-11-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085600_866003_899B4873 
X-CRM114-Status: GOOD (  20.00  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most of the machinery is now in place to enable 52-bit kernel VAs that
are detectable at boot time.

This patch adds a Kconfig option for 52-bit user and kernel addresses
and plumbs in the requisite CONFIG_ macros as well as sets TCR.T1SZ,
physvirt_offset and vmemmap at early boot.

To simplify things this patch also removes the 52-bit user/48-bit kernel
kconfig option.

Signed-off-by: Steve Capper <steve.capper@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/Kconfig                     | 20 +++++++++++---------
 arch/arm64/include/asm/assembler.h     | 13 ++++++++-----
 arch/arm64/include/asm/memory.h        |  7 ++++---
 arch/arm64/include/asm/mmu_context.h   |  2 +-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +-
 arch/arm64/kernel/head.S               |  4 ++--
 arch/arm64/mm/init.c                   | 10 ++++++++++
 arch/arm64/mm/proc.S                   |  3 ++-
 8 files changed, 39 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index f7f23e47c28f..f5f7cb75a698 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -286,7 +286,7 @@ config PGTABLE_LEVELS
 	int
 	default 2 if ARM64_16K_PAGES && ARM64_VA_BITS_36
 	default 2 if ARM64_64K_PAGES && ARM64_VA_BITS_42
-	default 3 if ARM64_64K_PAGES && (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52)
+	default 3 if ARM64_64K_PAGES && (ARM64_VA_BITS_48 || ARM64_VA_BITS_52)
 	default 3 if ARM64_4K_PAGES && ARM64_VA_BITS_39
 	default 3 if ARM64_16K_PAGES && ARM64_VA_BITS_47
 	default 4 if !ARM64_64K_PAGES && ARM64_VA_BITS_48
@@ -300,12 +300,12 @@ config ARCH_PROC_KCORE_TEXT
 config KASAN_SHADOW_OFFSET
 	hex
 	depends on KASAN
-	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && !KASAN_SW_TAGS
+	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_VA_BITS_52) && !KASAN_SW_TAGS
 	default 0xdfffd00000000000 if ARM64_VA_BITS_47 && !KASAN_SW_TAGS
 	default 0xdffffe8000000000 if ARM64_VA_BITS_42 && !KASAN_SW_TAGS
 	default 0xdfffffd000000000 if ARM64_VA_BITS_39 && !KASAN_SW_TAGS
 	default 0xdffffffa00000000 if ARM64_VA_BITS_36 && !KASAN_SW_TAGS
-	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && KASAN_SW_TAGS
+	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_VA_BITS_52) && KASAN_SW_TAGS
 	default 0xefffc80000000000 if ARM64_VA_BITS_47 && KASAN_SW_TAGS
 	default 0xeffffe4000000000 if ARM64_VA_BITS_42 && KASAN_SW_TAGS
 	default 0xefffffc800000000 if ARM64_VA_BITS_39 && KASAN_SW_TAGS
@@ -759,13 +759,14 @@ config ARM64_VA_BITS_47
 config ARM64_VA_BITS_48
 	bool "48-bit"
 
-config ARM64_USER_VA_BITS_52
-	bool "52-bit (user)"
+config ARM64_VA_BITS_52
+	bool "52-bit"
 	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
 	help
 	  Enable 52-bit virtual addressing for userspace when explicitly
-	  requested via a hint to mmap(). The kernel will continue to
-	  use 48-bit virtual addresses for its own mappings.
+	  requested via a hint to mmap(). The kernel will also use 52-bit
+	  virtual addresses for its own mappings (provided HW support for
+	  this feature is available, otherwise it reverts to 48-bit).
 
 	  NOTE: Enabling 52-bit virtual addressing in conjunction with
 	  ARMv8.3 Pointer Authentication will result in the PAC being
@@ -778,7 +779,7 @@ endchoice
 
 config ARM64_FORCE_52BIT
 	bool "Force 52-bit virtual addresses for userspace"
-	depends on ARM64_USER_VA_BITS_52 && EXPERT
+	depends on ARM64_VA_BITS_52 && EXPERT
 	help
 	  For systems with 52-bit userspace VAs enabled, the kernel will attempt
 	  to maintain compatibility with older software by providing 48-bit VAs
@@ -795,7 +796,8 @@ config ARM64_VA_BITS
 	default 39 if ARM64_VA_BITS_39
 	default 42 if ARM64_VA_BITS_42
 	default 47 if ARM64_VA_BITS_47
-	default 48 if ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52
+	default 48 if ARM64_VA_BITS_48
+	default 52 if ARM64_VA_BITS_52
 
 choice
 	prompt "Physical address space size"
diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index ede368bafa2c..c066fc4976cd 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -349,6 +349,13 @@ alternative_endif
 	bfi	\valreg, \t0sz, #TCR_T0SZ_OFFSET, #TCR_TxSZ_WIDTH
 	.endm
 
+/*
+ * tcr_set_t1sz - update TCR.T1SZ
+ */
+	.macro	tcr_set_t1sz, valreg, t1sz
+	bfi	\valreg, \t1sz, #TCR_T1SZ_OFFSET, #TCR_TxSZ_WIDTH
+	.endm
+
 /*
  * tcr_compute_pa_size - set TCR.(I)PS to the highest supported
  * ID_AA64MMFR0_EL1.PARange value
@@ -539,10 +546,6 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * 	ttbr: Value of ttbr to set, modified.
  */
 	.macro	offset_ttbr1, ttbr, tmp
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
-	orr	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
-#endif
-
 #ifdef CONFIG_ARM64_VA_BITS_52
 	mrs_s	\tmp, SYS_ID_AA64MMFR2_EL1
 	and	\tmp, \tmp, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
@@ -558,7 +561,7 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * to be nop'ed out when dealing with 52-bit kernel VAs.
  */
 	.macro	restore_ttbr1, ttbr
-#if defined(CONFIG_ARM64_USER_VA_BITS_52) || defined(CONFIG_ARM64_VA_BITS_52)
+#ifdef CONFIG_ARM64_VA_BITS_52
 	bic	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
 #endif
 	.endm
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 2d5c57d13572..3b5d1327035e 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -44,8 +44,9 @@
  * VA_START - the first kernel virtual address.
  */
 #define VA_BITS			(CONFIG_ARM64_VA_BITS)
-#define PAGE_OFFSET		(UL(0xffffffffffffffff) - \
-	(UL(1) << VA_BITS) + 1)
+#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
+					(UL(1) << (va)) + 1)
+#define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
 #define KIMAGE_VADDR		(MODULES_END)
 #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
 #define BPF_JIT_REGION_SIZE	(SZ_128M)
@@ -68,7 +69,7 @@
 #define KERNEL_START      _text
 #define KERNEL_END        _end
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 #define MAX_USER_VA_BITS	52
 #else
 #define MAX_USER_VA_BITS	VA_BITS
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 670003a55d28..3827ff4040a3 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -63,7 +63,7 @@ extern u64 idmap_ptrs_per_pgd;
 
 static inline bool __cpu_uses_extended_idmap(void)
 {
-	if (IS_ENABLED(CONFIG_ARM64_USER_VA_BITS_52))
+	if (IS_ENABLED(CONFIG_ARM64_VA_BITS_52))
 		return false;
 
 	return unlikely(idmap_t0sz != TCR_T0SZ(VA_BITS));
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index db92950bb1a0..3df60f97da1f 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -304,7 +304,7 @@
 #define TTBR_BADDR_MASK_52	(((UL(1) << 46) - 1) << 2)
 #endif
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 /* Must be at least 64-byte aligned to prevent corruption of the TTBR */
 #define TTBR1_BADDR_4852_OFFSET	(((UL(1) << (52 - PGDIR_SHIFT)) - \
 				 (UL(1) << (48 - PGDIR_SHIFT))) * 8)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index a96dc4386c7c..c8446f8c81f5 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -308,7 +308,7 @@ __create_page_tables:
 	adrp	x0, idmap_pg_dir
 	adrp	x3, __idmap_text_start		// __pa(__idmap_text_start)
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 	mrs_s	x6, SYS_ID_AA64MMFR2_EL1
 	and	x6, x6, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
 	mov	x5, #52
@@ -794,7 +794,7 @@ ENTRY(__enable_mmu)
 ENDPROC(__enable_mmu)
 
 ENTRY(__cpu_secondary_check52bitva)
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 	ldr_l	x0, vabits_user
 	cmp	x0, #52
 	b.ne	2f
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 2940221e5519..531c497c5758 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -325,6 +325,16 @@ void __init arm64_memblock_init(void)
 
 	vmemmap = ((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT));
 
+	/*
+	 * If we are running with a 52-bit kernel VA config on a system that
+	 * does not support it, we have to offset our vmemmap and physvirt_offset
+	 * s.t. we avoid the 52-bit portion of the direct linear map
+	 */
+	if (IS_ENABLED(CONFIG_ARM64_VA_BITS_52) && (vabits_actual != 52)) {
+		vmemmap += (_PAGE_OFFSET(48) - _PAGE_OFFSET(52)) >> PAGE_SHIFT;
+		physvirt_offset = PHYS_OFFSET - _PAGE_OFFSET(48);
+	}
+
 	/*
 	 * Remove the memory that we will not be able to cover with the
 	 * linear mapping. Take care not to clip the kernel which may be
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 8d289ff7584d..8b021c5c0884 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -438,10 +438,11 @@ ENTRY(__cpu_setup)
 			TCR_TBI0 | TCR_A1 | TCR_KASAN_FLAGS
 	tcr_clear_errata_bits x10, x9, x5
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 	ldr_l		x9, vabits_user
 	sub		x9, xzr, x9
 	add		x9, x9, #64
+	tcr_set_t1sz	x10, x9
 #else
 	ldr_l		x9, idmap_t0sz
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
