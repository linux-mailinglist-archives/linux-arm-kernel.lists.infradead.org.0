Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062892CB57
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:14:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iSnsFCT1DNPZ94lOz452d8fKWyPN/e//oAC4F2hc388=; b=VT3/1nC+JjkVkL
	gCYQOHNtSZKj3fRn+xnkH3ahd8yUtMa9WV7y7R1fVGq/Nne8Loc1Wmpy6dwV50ahgmCuEwSY5xZCN
	ExBxopDnOtvvEeA3Q53MdlLvpW7FKzMiYgxYg6kcUCOG7/bWmk/rfSXm8U2Z/aZqJ6e413ogfyu9r
	yqglDbTA2Nulxv49u/v6lfgrODy9mc57fDdUHv1oAJW0ZRVf1zjis8n8F9hBh4Y3hIdSqYjhpMLN3
	gr+CQ1xW6U8FF4QQl0AemX1j3j460NtxC+m7eYSzcVgcZpHwPFhfKmnuGS1V7OJspQiCC7Pfp9bl9
	brqht4CSBPcV6uahgDsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVejf-0007WQ-Hq; Tue, 28 May 2019 16:13:59 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeh7-0004uY-Fq
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:11:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3123915AD;
 Tue, 28 May 2019 09:11:21 -0700 (PDT)
Received: from capper-debian.arm.com (unknown [10.37.12.41])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4A5753F59C;
 Tue, 28 May 2019 09:11:19 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 12/12] arm64: mm: Introduce 52-bit Kernel VAs
Date: Tue, 28 May 2019 17:10:26 +0100
Message-Id: <20190528161026.13193-13-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161026.13193-1-steve.capper@arm.com>
References: <20190528161026.13193-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091121_811641_76AEA648 
X-CRM114-Status: GOOD (  20.21  )
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

Most of the machinery is now in place to enable 52-bit kernel VAs that
are detectable at boot time.

This patch adds a Kconfig option for 52-bit user and kernel addresses
and plumbs in the requisite CONFIG_ macros as well as sets TCR.T1SZ,
physvirt_offset and vmemmap at early boot.

Signed-off-by: Steve Capper <steve.capper@arm.com>
---
 arch/arm64/Kconfig                     | 31 ++++++++++++++++++++++----
 arch/arm64/include/asm/assembler.h     |  9 +++++++-
 arch/arm64/include/asm/memory.h        |  2 +-
 arch/arm64/include/asm/mmu_context.h   |  2 +-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 +-
 arch/arm64/kernel/head.S               |  4 ++--
 arch/arm64/mm/init.c                   | 10 +++++++++
 arch/arm64/mm/proc.S                   |  6 ++++-
 8 files changed, 55 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0cedcb4a0a01..d22432c2caca 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -276,11 +276,14 @@ config KERNEL_MODE_NEON
 config FIX_EARLYCON_MEM
 	def_bool y
 
+config HAS_VA_BITS_52
+	def_bool n
+
 config PGTABLE_LEVELS
 	int
 	default 2 if ARM64_16K_PAGES && ARM64_VA_BITS_36
 	default 2 if ARM64_64K_PAGES && ARM64_VA_BITS_42
-	default 3 if ARM64_64K_PAGES && (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52)
+	default 3 if ARM64_64K_PAGES && (ARM64_VA_BITS_48 || HAS_VA_BITS_52)
 	default 3 if ARM64_4K_PAGES && ARM64_VA_BITS_39
 	default 3 if ARM64_16K_PAGES && ARM64_VA_BITS_47
 	default 4 if !ARM64_64K_PAGES && ARM64_VA_BITS_48
@@ -294,12 +297,12 @@ config ARCH_PROC_KCORE_TEXT
 config KASAN_SHADOW_OFFSET
 	hex
 	depends on KASAN
-	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && !KASAN_SW_TAGS
+	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || HAS_VA_BITS_52) && !KASAN_SW_TAGS
 	default 0xdfffd00000000000 if ARM64_VA_BITS_47 && !KASAN_SW_TAGS
 	default 0xdffffe8000000000 if ARM64_VA_BITS_42 && !KASAN_SW_TAGS
 	default 0xdfffffd000000000 if ARM64_VA_BITS_39 && !KASAN_SW_TAGS
 	default 0xdffffffa00000000 if ARM64_VA_BITS_36 && !KASAN_SW_TAGS
-	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && KASAN_SW_TAGS
+	default 0xefff900000000000 if (ARM64_VA_BITS_48 || HAS_VA_BITS_52) && KASAN_SW_TAGS
 	default 0xefffc80000000000 if ARM64_VA_BITS_47 && KASAN_SW_TAGS
 	default 0xeffffe4000000000 if ARM64_VA_BITS_42 && KASAN_SW_TAGS
 	default 0xefffffc800000000 if ARM64_VA_BITS_39 && KASAN_SW_TAGS
@@ -739,6 +742,7 @@ config ARM64_VA_BITS_48
 config ARM64_USER_VA_BITS_52
 	bool "52-bit (user)"
 	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
+	select HAS_VA_BITS_52
 	help
 	  Enable 52-bit virtual addressing for userspace when explicitly
 	  requested via a hint to mmap(). The kernel will continue to
@@ -751,11 +755,28 @@ config ARM64_USER_VA_BITS_52
 
 	  If unsure, select 48-bit virtual addressing instead.
 
+config ARM64_USER_KERNEL_VA_BITS_52
+	bool "52-bit (user & kernel)"
+	depends on ARM64_64K_PAGES && (ARM64_PAN || !ARM64_SW_TTBR0_PAN)
+	select HAS_VA_BITS_52
+	help
+	  Enable 52-bit virtual addressing for userspace when explicitly
+	  requested via a hint to mmap(). The kernel will also use 52-bit
+	  virtual addresses for its own mappings (provided HW support for
+	  this feature is available, otherwise it reverts to 48-bit).
+
+	  NOTE: Enabling 52-bit virtual addressing in conjunction with
+	  ARMv8.3 Pointer Authentication will result in the PAC being
+	  reduced from 7 bits to 3 bits, which may have a significant
+	  impact on its susceptibility to brute-force attacks.
+
+	  If unsure, select 48-bit virtual addressing instead.
+
 endchoice
 
 config ARM64_FORCE_52BIT
 	bool "Force 52-bit virtual addresses for userspace"
-	depends on ARM64_USER_VA_BITS_52 && EXPERT
+	depends on HAS_VA_BITS_52 && EXPERT
 	help
 	  For systems with 52-bit userspace VAs enabled, the kernel will attempt
 	  to maintain compatibility with older software by providing 48-bit VAs
@@ -773,9 +794,11 @@ config ARM64_VA_BITS
 	default 42 if ARM64_VA_BITS_42
 	default 47 if ARM64_VA_BITS_47
 	default 48 if ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52
+	default 52 if ARM64_USER_KERNEL_VA_BITS_52
 
 config ARM64_VA_BITS_MIN
 	int
+	default 48 if ARM64_USER_KERNEL_VA_BITS_52
 	default ARM64_VA_BITS
 
 choice
diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index a42c392ed1e1..1f8d7b891ec9 100644
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
@@ -565,7 +572,7 @@ alternative_endif
  * to be nop'ed out when dealing with 52-bit kernel VAs.
  */
 	.macro	restore_ttbr1, ttbr
-#if defined(CONFIG_ARM64_USER_VA_BITS_52) || defined(CONFIG_ARM64_KERNEL_VA_BITS_52)
+#ifdef CONFIG_HAS_VA_BITS_52
 	bic	\ttbr, \ttbr, #TTBR1_BADDR_4852_OFFSET
 #endif
 	.endm
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index c817ee71e201..8e3c12a3414d 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -77,7 +77,7 @@
 #define KERNEL_START      _text
 #define KERNEL_END        _end
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_HAS_VA_BITS_52
 #define MAX_USER_VA_BITS	52
 #else
 #define MAX_USER_VA_BITS	VA_BITS
diff --git a/arch/arm64/include/asm/mmu_context.h b/arch/arm64/include/asm/mmu_context.h
index 133ecb65b602..1ae26b357e1e 100644
--- a/arch/arm64/include/asm/mmu_context.h
+++ b/arch/arm64/include/asm/mmu_context.h
@@ -74,7 +74,7 @@ extern u64 idmap_ptrs_per_pgd;
 
 static inline bool __cpu_uses_extended_idmap(void)
 {
-	if (IS_ENABLED(CONFIG_ARM64_USER_VA_BITS_52))
+	if (IS_ENABLED(CONFIG_HAS_VA_BITS_52))
 		return false;
 
 	return unlikely(idmap_t0sz != TCR_T0SZ(VA_BITS));
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index a69259cc1f16..73dc4a8c0df3 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -316,7 +316,7 @@
 #define TTBR_BADDR_MASK_52	(((UL(1) << 46) - 1) << 2)
 #endif
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_HAS_VA_BITS_52
 /* Must be at least 64-byte aligned to prevent corruption of the TTBR */
 #define TTBR1_BADDR_4852_OFFSET	(((UL(1) << (52 - PGDIR_SHIFT)) - \
 				 (UL(1) << (48 - PGDIR_SHIFT))) * 8)
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 8bc1b533a912..31c43abf30aa 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -319,7 +319,7 @@ __create_page_tables:
 	adrp	x0, idmap_pg_dir
 	adrp	x3, __idmap_text_start		// __pa(__idmap_text_start)
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_HAS_VA_BITS_52
 	mrs_s	x6, SYS_ID_AA64MMFR2_EL1
 	and	x6, x6, #(0xf << ID_AA64MMFR2_LVA_SHIFT)
 	mov	x5, #52
@@ -817,7 +817,7 @@ ENTRY(__enable_mmu)
 ENDPROC(__enable_mmu)
 
 ENTRY(__cpu_secondary_check52bitva)
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_HAS_VA_BITS_52
 	ldr_l	x0, vabits_user
 	cmp	x0, #52
 	b.ne	2f
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 6844365c0a51..c0c6d2dc39b2 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -335,6 +335,16 @@ void __init arm64_memblock_init(void)
 
 	vmemmap = ((struct page *)VMEMMAP_START - (memstart_addr >> PAGE_SHIFT));
 
+	/*
+	 * If we are running with a 52-bit kernel VA config on a system that
+	 * does not support it, we have to offset our vmemmap and physvirt_offset
+	 * s.t. we avoid the 52-bit portion of the direct linear map
+	 */
+	if (IS_ENABLED(CONFIG_ARM64_USER_KERNEL_VA_BITS_52) && (VA_BITS_ACTUAL != 52)) {
+		vmemmap += (_PAGE_OFFSET(48) - _PAGE_OFFSET(52)) >> PAGE_SHIFT;
+		physvirt_offset = PHYS_OFFSET - _PAGE_OFFSET(48);
+	}
+
 	/*
 	 * Remove the memory that we will not be able to cover with the
 	 * linear mapping. Take care not to clip the kernel which may be
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index fdd626d34274..62554d92e903 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -449,7 +449,7 @@ ENTRY(__cpu_setup)
 			TCR_TBI0 | TCR_A1 | TCR_KASAN_FLAGS
 	tcr_clear_errata_bits x10, x9, x5
 
-#ifdef CONFIG_ARM64_USER_VA_BITS_52
+#ifdef CONFIG_HAS_VA_BITS_52
 	ldr_l		x9, vabits_user
 	sub		x9, xzr, x9
 	add		x9, x9, #64
@@ -458,6 +458,10 @@ ENTRY(__cpu_setup)
 #endif
 	tcr_set_t0sz	x10, x9
 
+#ifdef CONFIG_ARM64_USER_KERNEL_VA_BITS_52
+	tcr_set_t1sz	x10, x9
+#endif
+
 	/*
 	 * Set the IPS bits in TCR_EL1.
 	 */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
