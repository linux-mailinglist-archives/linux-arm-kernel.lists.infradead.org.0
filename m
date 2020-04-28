Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD7F1BC5AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:47:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=luALs1xZyJ8k4+dhUmjojs/Fp7cGNPFMHnYGcjK/Eeg=; b=PhHivxGtP58gP8
	yudHCSPuLpKHHlQWJCfXVKOpWoZ0QPIV2UvpRuhV1AZ54GMOIvwDmwAi/Awu9DGx5h3jIUdXJ8Vg6
	IW+w70T2Ls+IFfDHNPrBCu5mtWSntFXAD0fsiEjSIse/V5SPKUdBh8UiDzLDC779dISToXAKBjyKn
	q8Ox//e3ok/0tgjewLdm3Xo75XdOkWq3IVlQPHDhc7n4rCFITC01wbG+afcxtIcPf9gj2nCF3VMXK
	g2xxu2dNs9CeUWQ1u3CHN0o92xrF8ZACIWDinGQuaNdDhRtAG4Q9hcxQm64N63JuM6OCTkRpnoRAa
	HbAnA9n8dHK3Ys1EZZhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTON-00020d-F8; Tue, 28 Apr 2020 16:47:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTNk-00013v-0O
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:46:54 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 16EF8208FE;
 Tue, 28 Apr 2020 16:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588092411;
 bh=MFZsKHfIFo7cjjB+Qr76133t7A47v44lkRUhz5srTes=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vCD3cstm3m7YK0rOdlxwzRHTlKvqH5HasQli/uvkIm/X/m5LFVRN6gEPZlgcv/qsU
 qixey9q+6YHjsda369ghJL4akoAgjKZn266xpnSbqSgDvdooq9CtXrLgM4BDDq6yts
 1jhtA3wkG9fX9mk388HsQOftEZby87mMVWAvJdkU=
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 1/2] arm64: kernel: Convert to modern annotations for assembly
 functions
Date: Tue, 28 Apr 2020 17:43:30 +0100
Message-Id: <20200428164331.27289-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428164331.27289-1-broonie@kernel.org>
References: <20200428164331.27289-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094652_146474_6D97BFD1 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 arch/arm64/kernel/cpu-reset.S                 |  4 +-
 arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
 arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
 arch/arm64/kernel/entry.S                     |  7 +--
 arch/arm64/kernel/hibernate-asm.S             | 16 +++----
 arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
 arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
 arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
 arch/arm64/kernel/relocate_kernel.S           |  4 +-
 arch/arm64/kernel/sleep.S                     | 12 ++---
 arch/arm64/kernel/smccc-call.S                |  8 ++--
 11 files changed, 72 insertions(+), 71 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 38087b4c0432..646103743a50 100644
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
 	mov_q	x13, SCTLR_ELx_FLAGS
@@ -47,6 +47,6 @@ ENTRY(__cpu_soft_restart)
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
 	br	x8
-ENDPROC(__cpu_soft_restart)
+SYM_FUNC_END(__cpu_soft_restart)
 
 .popsection
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
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index ddcde093c433..664a833aa619 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -730,7 +730,7 @@ SYM_CODE_END(el0_error)
 /*
  * Ok, we need to do extra processing, enter the slow path.
  */
-work_pending:
+SYM_CODE_START_LOCAL(work_pending)
 	mov	x0, sp				// 'regs'
 	bl	do_notify_resume
 #ifdef CONFIG_TRACE_IRQFLAGS
@@ -738,10 +738,11 @@ work_pending:
 #endif
 	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
 	b	finish_ret_to_user
+SYM_CODE_END(work_pending)
 /*
  * "slow" syscall return path.
  */
-ret_to_user:
+SYM_CODE_START_LOCAL(ret_to_user)
 	disable_daif
 	gic_prio_kentry_setup tmp=x3
 	ldr	x1, [tsk, #TSK_TI_FLAGS]
@@ -753,7 +754,7 @@ finish_ret_to_user:
 	bl	stackleak_erase
 #endif
 	kernel_exit 0
-ENDPROC(ret_to_user)
+SYM_CODE_END(ret_to_user)
 
 	.popsection				// .entry.text
 
diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
index 6532105b3e32..8ccca660034e 100644
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
@@ -110,7 +110,7 @@ ENTRY(swsusp_arch_suspend_exit)
 	cbz	x24, 3f		/* Do we need to re-initialise EL2? */
 	hvc	#0
 3:	ret
-ENDPROC(swsusp_arch_suspend_exit)
+SYM_CODE_END(swsusp_arch_suspend_exit)
 
 /*
  * Restore the hyp stub.
@@ -119,15 +119,15 @@ ENDPROC(swsusp_arch_suspend_exit)
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
@@ -141,7 +141,7 @@ ENDPROC(\label)
 
 /* el2 vectors - switch el2 here while we restore the memory image. */
 	.align 11
-ENTRY(hibernate_el2_vectors)
+SYM_CODE_START(hibernate_el2_vectors)
 	ventry	el2_sync_invalid		// Synchronous EL2t
 	ventry	el2_irq_invalid			// IRQ EL2t
 	ventry	el2_fiq_invalid			// FIQ EL2t
@@ -161,6 +161,6 @@ ENTRY(hibernate_el2_vectors)
 	ventry	el1_irq_invalid			// IRQ 32-bit EL1
 	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
 	ventry	el1_error_invalid		// Error 32-bit EL1
-END(hibernate_el2_vectors)
+SYM_CODE_END(hibernate_el2_vectors)
 
 .popsection
diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index e473ead806ed..160f5881a0b7 100644
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
index c40ce496c78b..542d6edc6806 100644
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
 
 .align 3	/* To keep the 64-bit values below naturally aligned. */
 
diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index 7b2f2e650c44..70e5e697ebc7 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -62,7 +62,7 @@
  *
  *  x0 = struct sleep_stack_data area
  */
-ENTRY(__cpu_suspend_enter)
+SYM_FUNC_START(__cpu_suspend_enter)
 	stp	x29, lr, [x0, #SLEEP_STACK_DATA_CALLEE_REGS]
 	stp	x19, x20, [x0,#SLEEP_STACK_DATA_CALLEE_REGS+16]
 	stp	x21, x22, [x0,#SLEEP_STACK_DATA_CALLEE_REGS+32]
@@ -95,10 +95,10 @@ ENTRY(__cpu_suspend_enter)
 	ldp	x29, lr, [sp], #16
 	mov	x0, #1
 	ret
-ENDPROC(__cpu_suspend_enter)
+SYM_FUNC_END(__cpu_suspend_enter)
 
 	.pushsection ".idmap.text", "awx"
-ENTRY(cpu_resume)
+SYM_FUNC_START(cpu_resume)
 	bl	el2_setup		// if in EL2 drop to EL1 cleanly
 	mov	x0, #ARM64_CPU_RUNTIME
 	bl	__cpu_setup
@@ -107,11 +107,11 @@ ENTRY(cpu_resume)
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
 
@@ -147,4 +147,4 @@ ENTRY(_cpu_resume)
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
