Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291BF42D84
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 19:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=77X4nmbDM6R17CTzpo3KotKr//odg3qR0pZh9M/daTM=; b=iGeVltglMfF9Zg
	YxchhUbQcIapVyz/bbk7+MTYZaLiriJJ9R3m1l3aAri6aLur5I2cVVvmAJETK2uzLHh3kjLKoNkKQ
	W7C5dOoZ38SplN9UDDEuSqXehpUo7l+k0JeQ3Y5kMXXz+XQoyoBb4+dHvoPeI0ndKK9MH7F2v3mfp
	2JtB+fDoh+1NfxNOcEmDyyYynkoTaw2cUmzKgD6DFJPnfxTys2v1XpHmfMt9jYsozlNhzXs9CQziM
	9jigngg4iPXXilIyFtbOvWi3Vw8/UFXQ5eMoaEdl7nPoEtW+IuUnxE5tdYdocW+fLAq6V2u2VPqUU
	KxwnInE0mCjhMe3OFfhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb75F-0001o1-EH; Wed, 12 Jun 2019 17:30:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb723-0006EV-BU
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 17:27:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E08E3CFC;
 Wed, 12 Jun 2019 10:27:30 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.13.15])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 78DBF3F246;
 Wed, 12 Jun 2019 10:27:29 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 10/10] arm64: mm: Introduce 52-bit Kernel VAs
Date: Wed, 12 Jun 2019 18:26:58 +0100
Message-Id: <20190612172658.28522-11-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612172658.28522-1-steve.capper@arm.com>
References: <20190612172658.28522-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_102731_607529_E829E123 
X-CRM114-Status: GOOD (  19.56  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, bhsharma@redhat.com, will.deacon@arm.com
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
---
 arch/arm64/Kconfig                     | 21 ++++++++++++---------
 arch/arm64/include/asm/assembler.h     | 13 ++++++++-----
 arch/arm64/include/asm/memory.h        |  2 +-
 arch/arm64/include/asm/mmu_context.h   |  2 +-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +-
 arch/arm64/kernel/head.S               |  4 ++--
 arch/arm64/mm/init.c                   | 10 ++++++++++
 arch/arm64/mm/proc.S                   |  3 ++-
 8 files changed, 37 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 4421e5409bb8..557cacaa38cd 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -281,7 +281,7 @@ config PGTABLE_LEVELS
 	int
 	default 2 if ARM64_16K_PAGES && ARM64_VA_BITS_36
 	default 2 if ARM64_64K_PAGES && ARM64_VA_BITS_42
-	default 3 if ARM64_64K_PAGES && (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52)
+	default 3 if ARM64_64K_PAGES && (ARM64_VA_BITS_48 || ARM64_VA_BITS_52)
 	default 3 if ARM64_4K_PAGES && ARM64_VA_BITS_39
 	default 3 if ARM64_16K_PAGES && ARM64_VA_BITS_47
 	default 4 if !ARM64_64K_PAGES && ARM64_VA_BITS_48
@@ -295,12 +295,12 @@ config ARCH_PROC_KCORE_TEXT
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
@@ -754,13 +754,14 @@ config ARM64_VA_BITS_47
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
@@ -773,7 +774,7 @@ endchoice
 
 config ARM64_FORCE_52BIT
 	bool "Force 52-bit virtual addresses for userspace"
-	depends on ARM64_USER_VA_BITS_52 && EXPERT
+	depends on ARM64_VA_BITS_52 && EXPERT
 	help
 	  For systems with 52-bit userspace VAs enabled, the kernel will attempt
 	  to maintain compatibility with older software by providing 48-bit VAs
@@ -790,10 +791,12 @@ config ARM64_VA_BITS
 	default 39 if ARM64_VA_BITS_39
 	default 42 if ARM64_VA_BITS_42
 	default 47 if ARM64_VA_BITS_47
-	default 48 if ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52
+	default 48 if ARM64_VA_BITS_48
+	default 52 if ARM64_VA_BITS_52
 
 config ARM64_VA_BITS_MIN
 	int
+	default 48 if ARM64_VA_BITS_52
 	default ARM64_VA_BITS
 
 choice
diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index 5b6e82eb2588..1db2db714397 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -356,6 +356,13 @@ alternative_endif
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
@@ -546,10 +553,6 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
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
@@ -565,7 +568,7 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
  * to be nop'ed out when dealing with 52-bit kernel VAs.
  */
 	.macro	restore_ttbr1, ttbr
-#if defined(CONFIG_ARM64_USER_VA_BITS_52) || defined(CONFIG_ARM64_VA_BITS_52)
+#ifdef CONFIG_ARM64_VA_BITS_52
 	bic	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
 #endif
 	.endm
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index d3932463822c..37166ac3a5c1 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -76,7 +76,7 @@
 #define KERNEL_START      _text
 #define KERNEL_END        _end
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 #define MAX_USER_VA_BITS	52
 #else
 #define MAX_USER_VA_BITS	VA_BITS
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 133ecb65b602..6252b1e7c5bd 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -74,7 +74,7 @@ extern u64 idmap_ptrs_per_pgd;
 
 static inline bool __cpu_uses_extended_idmap(void)
 {
-	if (IS_ENABLED(CONFIG_ARM64_USER_VA_BITS_52))
+	if (IS_ENABLED(CONFIG_ARM64_VA_BITS_52))
 		return false;
 
 	return unlikely(idmap_t0sz != TCR_T0SZ(VA_BITS));
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index a69259cc1f16..bbf0556a9126 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -316,7 +316,7 @@
 #define TTBR_BADDR_MASK_52	(((UL(1) << 46) - 1) << 2)
 #endif
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 /* Must be at least 64-byte aligned to prevent corruption of the TTBR */
 #define TTBR1_BADDR_4852_OFFSET	(((UL(1) << (52 - PGDIR_SHIFT)) - \
 				 (UL(1) << (48 - PGDIR_SHIFT))) * 8)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 5b8e38503ce1..1a03ab998225 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -319,7 +319,7 @@ __create_page_tables:
 	adrp	x0, idmap_pg_dir
 	adrp	x3, __idmap_text_start		// __pa(__idmap_text_start)
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 	mrs_s	x6, SYS_ID_AA64MMFR2_EL1
 	and	x6, x6, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
 	mov	x5, #52
@@ -805,7 +805,7 @@ ENTRY(__enable_mmu)
 ENDPROC(__enable_mmu)
 
 ENTRY(__cpu_secondary_check52bitva)
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_ARM64_VA_BITS_52
 	ldr_l	x0, vabits_user
 	cmp	x0, #52
 	b.ne	2f
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 6844365c0a51..9bc00970e54e 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -335,6 +335,16 @@ void __init arm64_memblock_init(void)
 
 	vmemmap = ((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT));
 
+	/*
+	 * If we are running with a 52-bit kernel VA config on a system that
+	 * does not support it, we have to offset our vmemmap and physvirt_offset
+	 * s.t. we avoid the 52-bit portion of the direct linear map
+	 */
+	if (IS_ENABLED(CONFIG_ARM64_VA_BITS_52) && (VA_BITS_ACTUAL != 52)) {
+		vmemmap += (_PAGE_OFFSET(48) - _PAGE_OFFSET(52)) >> PAGE_SHIFT;
+		physvirt_offset = PHYS_OFFSET - _PAGE_OFFSET(48);
+	}
+
 	/*
 	 * Remove the memory that we will not be able to cover with the
 	 * linear mapping. Take care not to clip the kernel which may be
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 9f64283e0f89..cf12d05e51e6 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -449,10 +449,11 @@ ENTRY(__cpu_setup)
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
