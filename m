Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60344163197
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:02:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqnNr23Qezhq2BFYpxasBhULqz9PhA48KkSgC/TQEhk=; b=T4gEnbYdRPrt74
	UgZdbcBc/ik3/7CFoljuRmD3d3KHD8lW7kecpIZCVafmUz6qVTRnf4zAWlaLMXFNAl+spSOjImf1G
	WTAOuxTtTbgykaRE90/5D4qsVkm/xwL+zDJdeElntumpvYVJAxydvOHbS6xUhLkViU3EFg/SSzdFT
	pMSodfrE6atymbzDzhsP9kvyw/cdMJ8mf+2ZTyN1AcfsK3W0QHV/YPkPvrom6ppmiyYYcZiKdksif
	xXS8cg+TA0beJ37YKYBSuf8LBT0LSvcGctWHT4FNr1zwBwprxJ/DeXoBZm/Z75eGUGtTZ7mMI5M+Q
	mwKjM+k0CeurgLtRjopA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j494n-0001q5-PC; Tue, 18 Feb 2020 20:02:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491d-0005m7-90
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B2D24FEC;
 Tue, 18 Feb 2020 11:59:20 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 32AD33F68F;
 Tue, 18 Feb 2020 11:59:20 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 12/18] arm64: kernel: Convert to modern annotations for
 assembly functions
Date: Tue, 18 Feb 2020 19:58:36 +0000
Message-Id: <20200218195842.34156-13-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115921_451967_C14B634D 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
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
 arch/arm64/kernel/cpu-reset.S                 |  4 +-
 arch/arm64/kernel/efi-entry.S                 |  4 +-
 arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
 arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
 arch/arm64/kernel/hibernate-asm.S             | 16 +++----
 arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
 arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
 arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
 arch/arm64/kernel/relocate_kernel.S           |  4 +-
 arch/arm64/kernel/sleep.S                     | 12 ++---
 arch/arm64/kernel/smccc-call.S                |  8 ++--
 11 files changed, 70 insertions(+), 70 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 32c7bf858dd9..4033e2efa8cf 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -29,7 +29,7 @@
  * branch to what would be the reset vector. It must be executed with the
  * flat identity mapping.
  */
-ENTRY(__cpu_soft_restart)
+SYM_FUNC_START(__cpu_soft_restart)
 	/* Clear sctlr_el1 flags. */
 	mrs	x12, sctlr_el1
 	ldr	x13, =SCTLR_ELx_FLAGS
@@ -47,6 +47,6 @@ ENTRY(__cpu_soft_restart)
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
 	br	x8
-ENDPROC(__cpu_soft_restart)
+SYM_FUNC_END(__cpu_soft_restart)
 
 .popsection
diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-entry.S
index 304d5b02ca67..de6ced92950e 100644
--- a/arch/arm64/kernel/efi-entry.S
+++ b/arch/arm64/kernel/efi-entry.S
@@ -25,7 +25,7 @@
 	 * we want to be. The kernel image wants to be placed at TEXT_OFFSET
 	 * from start of RAM.
 	 */
-ENTRY(entry)
+SYM_CODE_START(entry)
 	/*
 	 * Create a stack frame to save FP/LR with extra space
 	 * for image_addr variable passed to efi_entry().
@@ -117,4 +117,4 @@ efi_load_fail:
 	ret
 
 entry_end:
-ENDPROC(entry)
+SYM_CODE_END(entry)
diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..1192c4bb48df 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -5,7 +5,7 @@
 
 #include <linux/linkage.h>
 
-ENTRY(__efi_rt_asm_wrapper)
+SYM_FUNC_START(__efi_rt_asm_wrapper)
 	stp	x29, x30, [sp, #-32]!
 	mov	x29, sp
 
@@ -35,4 +35,4 @@ ENTRY(__efi_rt_asm_wrapper)
 	b.ne	0f
 	ret
 0:	b	efi_handle_corrupted_x18	// tail call
-ENDPROC(__efi_rt_asm_wrapper)
+SYM_FUNC_END(__efi_rt_asm_wrapper)
diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
index 0f24eae8f3cc..f880dd63ddc3 100644
--- a/arch/arm64/kernel/entry-fpsimd.S
+++ b/arch/arm64/kernel/entry-fpsimd.S
@@ -16,34 +16,34 @@
  *
  * x0 - pointer to struct fpsimd_state
  */
-ENTRY(fpsimd_save_state)
+SYM_FUNC_START(fpsimd_save_state)
 	fpsimd_save x0, 8
 	ret
-ENDPROC(fpsimd_save_state)
+SYM_FUNC_END(fpsimd_save_state)
 
 /*
  * Load the FP registers.
  *
  * x0 - pointer to struct fpsimd_state
  */
-ENTRY(fpsimd_load_state)
+SYM_FUNC_START(fpsimd_load_state)
 	fpsimd_restore x0, 8
 	ret
-ENDPROC(fpsimd_load_state)
+SYM_FUNC_END(fpsimd_load_state)
 
 #ifdef CONFIG_ARM64_SVE
-ENTRY(sve_save_state)
+SYM_FUNC_START(sve_save_state)
 	sve_save 0, x1, 2
 	ret
-ENDPROC(sve_save_state)
+SYM_FUNC_END(sve_save_state)
 
-ENTRY(sve_load_state)
+SYM_FUNC_START(sve_load_state)
 	sve_load 0, x1, x2, 3, x4
 	ret
-ENDPROC(sve_load_state)
+SYM_FUNC_END(sve_load_state)
 
-ENTRY(sve_get_vl)
+SYM_FUNC_START(sve_get_vl)
 	_sve_rdvl	0, 1
 	ret
-ENDPROC(sve_get_vl)
+SYM_FUNC_END(sve_get_vl)
 #endif /* CONFIG_ARM64_SVE */
diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
index 38bcd4d4e43b..2fad0ec846e3 100644
--- a/arch/arm64/kernel/hibernate-asm.S
+++ b/arch/arm64/kernel/hibernate-asm.S
@@ -65,7 +65,7 @@
  * x5: physical address of a  zero page that remains zero after resume
  */
 .pushsection    ".hibernate_exit.text", "ax"
-ENTRY(swsusp_arch_suspend_exit)
+SYM_CODE_START(swsusp_arch_suspend_exit)
 	/*
 	 * We execute from ttbr0, change ttbr1 to our copied linear map tables
 	 * with a break-before-make via the zero page
@@ -112,7 +112,7 @@ ENTRY(swsusp_arch_suspend_exit)
 3:	ret
 
 	.ltorg
-ENDPROC(swsusp_arch_suspend_exit)
+SYM_CODE_END(swsusp_arch_suspend_exit)
 
 /*
  * Restore the hyp stub.
@@ -121,15 +121,15 @@ ENDPROC(swsusp_arch_suspend_exit)
  *
  * x24: The physical address of __hyp_stub_vectors
  */
-el1_sync:
+SYM_CODE_START_LOCAL(el1_sync)
 	msr	vbar_el2, x24
 	eret
-ENDPROC(el1_sync)
+SYM_CODE_END(el1_sync)
 
 .macro invalid_vector	label
-\label:
+SYM_CODE_START_LOCAL(\label)
 	b \label
-ENDPROC(\label)
+SYM_CODE_END(\label)
 .endm
 
 	invalid_vector	el2_sync_invalid
@@ -143,7 +143,7 @@ ENDPROC(\label)
 
 /* el2 vectors - switch el2 here while we restore the memory image. */
 	.align 11
-ENTRY(hibernate_el2_vectors)
+SYM_CODE_START(hibernate_el2_vectors)
 	ventry	el2_sync_invalid		// Synchronous EL2t
 	ventry	el2_irq_invalid			// IRQ EL2t
 	ventry	el2_fiq_invalid			// FIQ EL2t
@@ -163,6 +163,6 @@ ENTRY(hibernate_el2_vectors)
 	ventry	el1_irq_invalid			// IRQ 32-bit EL1
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
-END(hibernate_el2_vectors)
+SYM_CODE_END(hibernate_el2_vectors)
 
 .popsection
diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 73d46070b315..b095a42daa77 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -21,7 +21,7 @@
 
 	.align 11
 
-ENTRY(__hyp_stub_vectors)
+SYM_CODE_START(__hyp_stub_vectors)
 	ventry	el2_sync_invalid		// Synchronous EL2t
 	ventry	el2_irq_invalid			// IRQ EL2t
 	ventry	el2_fiq_invalid			// FIQ EL2t
@@ -41,11 +41,11 @@ ENTRY(__hyp_stub_vectors)
 	ventry	el1_irq_invalid			// IRQ 32-bit EL1
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
-ENDPROC(__hyp_stub_vectors)
+SYM_CODE_END(__hyp_stub_vectors)
 
 	.align 11
 
-el1_sync:
+SYM_CODE_START_LOCAL(el1_sync)
 	cmp	x0, #HVC_SET_VECTORS
 	b.ne	2f
 	msr	vbar_el2, x1
@@ -68,12 +68,12 @@ el1_sync:
 
 9:	mov	x0, xzr
 	eret
-ENDPROC(el1_sync)
+SYM_CODE_END(el1_sync)
 
 .macro invalid_vector	label
-\label:
+SYM_CODE_START_LOCAL(\label)
 	b \label
-ENDPROC(\label)
+SYM_CODE_END(\label)
 .endm
 
 	invalid_vector	el2_sync_invalid
@@ -106,15 +106,15 @@ ENDPROC(\label)
  * initialisation entry point.
  */
 
-ENTRY(__hyp_set_vectors)
+SYM_FUNC_START(__hyp_set_vectors)
 	mov	x1, x0
 	mov	x0, #HVC_SET_VECTORS
 	hvc	#0
 	ret
-ENDPROC(__hyp_set_vectors)
+SYM_FUNC_END(__hyp_set_vectors)
 
-ENTRY(__hyp_reset_vectors)
+SYM_FUNC_START(__hyp_reset_vectors)
 	mov	x0, #HVC_RESET_VECTORS
 	hvc	#0
 	ret
-ENDPROC(__hyp_reset_vectors)
+SYM_FUNC_END(__hyp_reset_vectors)
diff --git a/arch/arm64/kernel/probes/kprobes_trampoline.S b/arch/arm64/kernel/probes/kprobes_trampoline.S
index 45dce03aaeaf..890ca72c5a51 100644
--- a/arch/arm64/kernel/probes/kprobes_trampoline.S
+++ b/arch/arm64/kernel/probes/kprobes_trampoline.S
@@ -61,7 +61,7 @@
 	ldp x28, x29, [sp, #S_X28]
 	.endm
 
-ENTRY(kretprobe_trampoline)
+SYM_CODE_START(kretprobe_trampoline)
 	sub sp, sp, #S_FRAME_SIZE
 
 	save_all_base_regs
@@ -79,4 +79,4 @@ ENTRY(kretprobe_trampoline)
 	add sp, sp, #S_FRAME_SIZE
 	ret
 
-ENDPROC(kretprobe_trampoline)
+SYM_CODE_END(kretprobe_trampoline)
diff --git a/arch/arm64/kernel/reloc_test_syms.S b/arch/arm64/kernel/reloc_test_syms.S
index 16a34f188f26..53e8cdfe80e1 100644
--- a/arch/arm64/kernel/reloc_test_syms.S
+++ b/arch/arm64/kernel/reloc_test_syms.S
@@ -5,81 +5,81 @@
 
 #include <linux/linkage.h>
 
-ENTRY(absolute_data64)
+SYM_CODE_START(absolute_data64)
 	ldr	x0, 0f
 	ret
 0:	.quad	sym64_abs
-ENDPROC(absolute_data64)
+SYM_CODE_END(absolute_data64)
 
-ENTRY(absolute_data32)
+SYM_CODE_START(absolute_data32)
 	ldr	w0, 0f
 	ret
 0:	.long	sym32_abs
-ENDPROC(absolute_data32)
+SYM_CODE_END(absolute_data32)
 
-ENTRY(absolute_data16)
+SYM_CODE_START(absolute_data16)
 	adr	x0, 0f
 	ldrh	w0, [x0]
 	ret
 0:	.short	sym16_abs, 0
-ENDPROC(absolute_data16)
+SYM_CODE_END(absolute_data16)
 
-ENTRY(signed_movw)
+SYM_CODE_START(signed_movw)
 	movz	x0, #:abs_g2_s:sym64_abs
 	movk	x0, #:abs_g1_nc:sym64_abs
 	movk	x0, #:abs_g0_nc:sym64_abs
 	ret
-ENDPROC(signed_movw)
+SYM_CODE_END(signed_movw)
 
-ENTRY(unsigned_movw)
+SYM_CODE_START(unsigned_movw)
 	movz	x0, #:abs_g3:sym64_abs
 	movk	x0, #:abs_g2_nc:sym64_abs
 	movk	x0, #:abs_g1_nc:sym64_abs
 	movk	x0, #:abs_g0_nc:sym64_abs
 	ret
-ENDPROC(unsigned_movw)
+SYM_CODE_END(unsigned_movw)
 
 	.align	12
 	.space	0xff8
-ENTRY(relative_adrp)
+SYM_CODE_START(relative_adrp)
 	adrp	x0, sym64_rel
 	add	x0, x0, #:lo12:sym64_rel
 	ret
-ENDPROC(relative_adrp)
+SYM_CODE_END(relative_adrp)
 
 	.align	12
 	.space	0xffc
-ENTRY(relative_adrp_far)
+SYM_CODE_START(relative_adrp_far)
 	adrp	x0, memstart_addr
 	add	x0, x0, #:lo12:memstart_addr
 	ret
-ENDPROC(relative_adrp_far)
+SYM_CODE_END(relative_adrp_far)
 
-ENTRY(relative_adr)
+SYM_CODE_START(relative_adr)
 	adr	x0, sym64_rel
 	ret
-ENDPROC(relative_adr)
+SYM_CODE_END(relative_adr)
 
-ENTRY(relative_data64)
+SYM_CODE_START(relative_data64)
 	adr	x1, 0f
 	ldr	x0, [x1]
 	add	x0, x0, x1
 	ret
 0:	.quad	sym64_rel - .
-ENDPROC(relative_data64)
+SYM_CODE_END(relative_data64)
 
-ENTRY(relative_data32)
+SYM_CODE_START(relative_data32)
 	adr	x1, 0f
 	ldr	w0, [x1]
 	add	x0, x0, x1
 	ret
 0:	.long	sym64_rel - .
-ENDPROC(relative_data32)
+SYM_CODE_END(relative_data32)
 
-ENTRY(relative_data16)
+SYM_CODE_START(relative_data16)
 	adr	x1, 0f
 	ldrsh	w0, [x1]
 	add	x0, x0, x1
 	ret
 0:	.short	sym64_rel - ., 0
-ENDPROC(relative_data16)
+SYM_CODE_END(relative_data16)
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..dc65443f139d 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -26,7 +26,7 @@
  * control_code_page, a special page which has been set up to be preserved
  * during the copy operation.
  */
-ENTRY(arm64_relocate_new_kernel)
+SYM_CODE_START(arm64_relocate_new_kernel)
 
 	/* Setup the list loop variables. */
 	mov	x18, x2				/* x18 = dtb address */
@@ -111,7 +111,7 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x3, xzr
 	br	x17
 
-ENDPROC(arm64_relocate_new_kernel)
+SYM_CODE_END(arm64_relocate_new_kernel)
 
 .ltorg
 
diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index f5b04dd8a710..a079551aa7b0 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -61,7 +61,7 @@
  *
  *  x0 = struct sleep_stack_data area
  */
-ENTRY(__cpu_suspend_enter)
+SYM_FUNC_START(__cpu_suspend_enter)
 	stp	x29, lr, [x0, #SLEEP_STACK_DATA_CALLEE_REGS]
 	stp	x19, x20, [x0,#SLEEP_STACK_DATA_CALLEE_REGS+16]
 	stp	x21, x22, [x0,#SLEEP_STACK_DATA_CALLEE_REGS+32]
@@ -94,10 +94,10 @@ ENTRY(__cpu_suspend_enter)
 	ldp	x29, lr, [sp], #16
 	mov	x0, #1
 	ret
-ENDPROC(__cpu_suspend_enter)
+SYM_FUNC_END(__cpu_suspend_enter)
 
 	.pushsection ".idmap.text", "awx"
-ENTRY(cpu_resume)
+SYM_FUNC_START(cpu_resume)
 	bl	el2_setup		// if in EL2 drop to EL1 cleanly
 	bl	__cpu_setup
 	/* enable the MMU early - so we can access sleep_save_stash by va */
@@ -105,11 +105,11 @@ ENTRY(cpu_resume)
 	bl	__enable_mmu
 	ldr	x8, =_cpu_resume
 	br	x8
-ENDPROC(cpu_resume)
+SYM_FUNC_END(cpu_resume)
 	.ltorg
 	.popsection
 
-ENTRY(_cpu_resume)
+SYM_FUNC_START(_cpu_resume)
 	mrs	x1, mpidr_el1
 	adr_l	x8, mpidr_hash		// x8 = struct mpidr_hash virt address
 
@@ -145,4 +145,4 @@ ENTRY(_cpu_resume)
 	ldp	x29, lr, [x29]
 	mov	x0, #0
 	ret
-ENDPROC(_cpu_resume)
+SYM_FUNC_END(_cpu_resume)
diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
index 54655273d1e0..1f93809528a4 100644
--- a/arch/arm64/kernel/smccc-call.S
+++ b/arch/arm64/kernel/smccc-call.S
@@ -30,9 +30,9 @@
  *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
  *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(__arm_smccc_smc)
+SYM_FUNC_START(__arm_smccc_smc)
 	SMCCC	smc
-ENDPROC(__arm_smccc_smc)
+SYM_FUNC_END(__arm_smccc_smc)
 EXPORT_SYMBOL(__arm_smccc_smc)
 
 /*
@@ -41,7 +41,7 @@ EXPORT_SYMBOL(__arm_smccc_smc)
  *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
  *		  struct arm_smccc_quirk *quirk)
  */
-ENTRY(__arm_smccc_hvc)
+SYM_FUNC_START(__arm_smccc_hvc)
 	SMCCC	hvc
-ENDPROC(__arm_smccc_hvc)
+SYM_FUNC_END(__arm_smccc_hvc)
 EXPORT_SYMBOL(__arm_smccc_hvc)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
