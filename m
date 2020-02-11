Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189101599DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:37:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vv56I5bXoQGrALCOMZodqCagkwbEBdGYfC5j97DBRo0=; b=PQ8x+JdmK/0NxJ
	Mvb8T5MaKtKXPzBXfaD6u5SP4RqE33795UQaQDO8TqjhCpaqpG4/O4UyjTyI/gR2PYmRawokYk5nH
	uOqNHbCKxT1qr2e0sBGOLgIAwWJkOjdlz3UC1N9FJhnDy6WuzsYjKsS0PBZfWkyLlhKhXw9SOY8aF
	tTBIwvm66RAgRXvsH1SwA8e0zpn21OgNGFwFY+aCyEhvb2nI1nDv+X031Eif++7N9IAMiQjHOiJhF
	SzH5rKhlNys5gATPbPT07OdlGyHVHiAvZ0+B3PzQ2cUKBs3YlpICQdAVkLoosKr6OCwcUrsSF5wpW
	I7U3fbP1jFHRx7UA/5cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1bLR-0002Tm-Ce; Tue, 11 Feb 2020 19:37:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1bLK-0002TN-9k
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:37:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 679151FB;
 Tue, 11 Feb 2020 11:37:09 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF62A3F68F;
 Tue, 11 Feb 2020 11:37:08 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: head.S: Convert to modern annotations for assembly
 functions
Date: Tue, 11 Feb 2020 19:37:05 +0000
Message-Id: <20200211193705.7884-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_113710_428983_BE827F6E 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC and also add a new annotation for static functions which previously
had no ENTRY equivalent. Update the annotations in the core kernel code to
the new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kernel/head.S | 56 ++++++++++++++++++++--------------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 960939abf326..a06727354fad 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -275,7 +275,7 @@ SYM_CODE_END(preserve_boot_args)
  *   - first few MB of the kernel linear mapping to jump to once the MMU has
  *     been enabled
  */
-__create_page_tables:
+SYM_FUNC_START_LOCAL(__create_page_tables)
 	mov	x28, lr
 
 	/*
@@ -403,7 +403,7 @@ __create_page_tables:
 	bl	__inval_dcache_area
 
 	ret	x28
-ENDPROC(__create_page_tables)
+SYM_FUNC_END(__create_page_tables)
 	.ltorg
 
 /*
@@ -411,7 +411,7 @@ ENDPROC(__create_page_tables)
  *
  *   x0 = __PHYS_OFFSET
  */
-__primary_switched:
+SYM_FUNC_START_LOCAL(__primary_switched)
 	adrp	x4, init_thread_union
 	add	sp, x4, #THREAD_SIZE
 	adr_l	x5, init_task
@@ -456,7 +456,7 @@ __primary_switched:
 	mov	x29, #0
 	mov	x30, #0
 	b	start_kernel
-ENDPROC(__primary_switched)
+SYM_FUNC_END(__primary_switched)
 
 /*
  * end early head section, begin head code that is also used for
@@ -476,7 +476,7 @@ EXPORT_SYMBOL(kimage_vaddr)
  * Returns either BOOT_CPU_MODE_EL1 or BOOT_CPU_MODE_EL2 in w0 if
  * booted in EL1 or EL2 respectively.
  */
-ENTRY(el2_setup)
+SYM_FUNC_START(el2_setup)
 	msr	SPsel, #1			// We want to use SP_EL{1,2}
 	mrs	x0, CurrentEL
 	cmp	x0, #CurrentEL_EL2
@@ -637,13 +637,13 @@ install_el2_stub:
 	msr	elr_el2, lr
 	mov	w0, #BOOT_CPU_MODE_EL2		// This CPU booted in EL2
 	eret
-ENDPROC(el2_setup)
+SYM_FUNC_END(el2_setup)
 
 /*
  * Sets the __boot_cpu_mode flag depending on the CPU boot mode passed
  * in w0. See arch/arm64/include/asm/virt.h for more info.
  */
-set_cpu_boot_mode_flag:
+SYM_FUNC_START_LOCAL(set_cpu_boot_mode_flag)
 	adr_l	x1, __boot_cpu_mode
 	cmp	w0, #BOOT_CPU_MODE_EL2
 	b.ne	1f
@@ -652,7 +652,7 @@ set_cpu_boot_mode_flag:
 	dmb	sy
 	dc	ivac, x1			// Invalidate potentially stale cache line
 	ret
-ENDPROC(set_cpu_boot_mode_flag)
+SYM_FUNC_END(set_cpu_boot_mode_flag)
 
 /*
  * These values are written with the MMU off, but read with the MMU on.
@@ -686,7 +686,7 @@ SYM_DATA_END(__early_cpu_boot_status)
 	 * This provides a "holding pen" for platforms to hold all secondary
 	 * cores are held until we're ready for them to initialise.
 	 */
-ENTRY(secondary_holding_pen)
+SYM_FUNC_START(secondary_holding_pen)
 	bl	el2_setup			// Drop to EL1, w0=cpu_boot_mode
 	bl	set_cpu_boot_mode_flag
 	mrs	x0, mpidr_el1
@@ -698,19 +698,19 @@ pen:	ldr	x4, [x3]
 	b.eq	secondary_startup
 	wfe
 	b	pen
-ENDPROC(secondary_holding_pen)
+SYM_FUNC_END(secondary_holding_pen)
 
 	/*
 	 * Secondary entry point that jumps straight into the kernel. Only to
 	 * be used where CPUs are brought online dynamically by the kernel.
 	 */
-ENTRY(secondary_entry)
+SYM_FUNC_START(secondary_entry)
 	bl	el2_setup			// Drop to EL1
 	bl	set_cpu_boot_mode_flag
 	b	secondary_startup
-ENDPROC(secondary_entry)
+SYM_FUNC_END(secondary_entry)
 
-secondary_startup:
+SYM_FUNC_START_LOCAL(secondary_startup)
 	/*
 	 * Common entry point for secondary CPUs.
 	 */
@@ -720,9 +720,9 @@ secondary_startup:
 	bl	__enable_mmu
 	ldr	x8, =__secondary_switched
 	br	x8
-ENDPROC(secondary_startup)
+SYM_FUNC_END(secondary_startup)
 
-__secondary_switched:
+SYM_FUNC_START_LOCAL(__secondary_switched)
 	adr_l	x5, vectors
 	msr	vbar_el1, x5
 	isb
@@ -737,13 +737,13 @@ __secondary_switched:
 	mov	x29, #0
 	mov	x30, #0
 	b	secondary_start_kernel
-ENDPROC(__secondary_switched)
+SYM_FUNC_END(__secondary_switched)
 
-__secondary_too_slow:
+SYM_FUNC_START_LOCAL(__secondary_too_slow)
 	wfe
 	wfi
 	b	__secondary_too_slow
-ENDPROC(__secondary_too_slow)
+SYM_FUNC_END(__secondary_too_slow)
 
 /*
  * The booting CPU updates the failed status @__early_cpu_boot_status,
@@ -775,7 +775,7 @@ ENDPROC(__secondary_too_slow)
  * Checks if the selected granule size is supported by the CPU.
  * If it isn't, park the CPU
  */
-ENTRY(__enable_mmu)
+SYM_FUNC_START(__enable_mmu)
 	mrs	x2, ID_AA64MMFR0_EL1
 	ubfx	x2, x2, #ID_AA64MMFR0_TGRAN_SHIFT, 4
 	cmp	x2, #ID_AA64MMFR0_TGRAN_SUPPORTED
@@ -799,9 +799,9 @@ ENTRY(__enable_mmu)
 	dsb	nsh
 	isb
 	ret
-ENDPROC(__enable_mmu)
+SYM_FUNC_END(__enable_mmu)
 
-ENTRY(__cpu_secondary_check52bitva)
+SYM_FUNC_START(__cpu_secondary_check52bitva)
 #ifdef CONFIG_ARM64_VA_BITS_52
 	ldr_l	x0, vabits_actual
 	cmp	x0, #52
@@ -819,9 +819,9 @@ ENTRY(__cpu_secondary_check52bitva)
 
 #endif
 2:	ret
-ENDPROC(__cpu_secondary_check52bitva)
+SYM_FUNC_END(__cpu_secondary_check52bitva)
 
-__no_granule_support:
+SYM_FUNC_START_LOCAL(__no_granule_support)
 	/* Indicate that this CPU can't boot and is stuck in the kernel */
 	update_early_cpu_boot_status \
 		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_GRAN, x1, x2
@@ -829,10 +829,10 @@ __no_granule_support:
 	wfe
 	wfi
 	b	1b
-ENDPROC(__no_granule_support)
+SYM_FUNC_END(__no_granule_support)
 
 #ifdef CONFIG_RELOCATABLE
-__relocate_kernel:
+SYM_FUNC_START_LOCAL(__relocate_kernel)
 	/*
 	 * Iterate over each entry in the relocation table, and apply the
 	 * relocations in place.
@@ -934,10 +934,10 @@ __relocate_kernel:
 #endif
 	ret
 
-ENDPROC(__relocate_kernel)
+SYM_FUNC_END(__relocate_kernel)
 #endif
 
-__primary_switch:
+SYM_FUNC_START_LOCAL(__primary_switch)
 #ifdef CONFIG_RANDOMIZE_BASE
 	mov	x19, x0				// preserve new SCTLR_EL1 value
 	mrs	x20, sctlr_el1			// preserve old SCTLR_EL1 value
@@ -980,4 +980,4 @@ __primary_switch:
 	ldr	x8, =__primary_switched
 	adrp	x0, __PHYS_OFFSET
 	br	x8
-ENDPROC(__primary_switch)
+SYM_FUNC_END(__primary_switch)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
