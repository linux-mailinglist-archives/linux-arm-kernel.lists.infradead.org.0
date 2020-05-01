Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DFB1C1256
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GmXTPxYJhNbKkrMeEpoylUuw76hB4n4EL54v5vmSyU=; b=XHLij///qo11rV
	GB7DyoofIhcr3beMC+OSrgCj+JWsCoa/Bt+nW51iKgJj80czYw5fTeKlqMUmzfQ7cRwB7YS1sY+tP
	hWQXQPYlHsT8JFCs4W33ek13ocCZbj/hmSThXK5KN/Fdai4p76SAMHsPsWoy2oShhIxdJ9agGlz+/
	i2+D8YEYiZgAgOcUCYK0O2TpF402vwVLmZiWJJCWHHtBssRlqrh6u+RfvEz1NrWmvJnKKFPeEUlqN
	ogQwEO4P4x3Wlo9lBTxmgciNHBWJ2At+uRWgb9m2r+5OkOQxcwU2uia4KLVJmBx7RWBsOSi6/6r7L
	hV6VzDOQFl0OLIddSKaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUUzT-0006DX-9J; Fri, 01 May 2020 12:42:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUUzL-0006D4-Ac
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:41:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4727E1FB;
 Fri,  1 May 2020 05:41:54 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E10F63F305;
 Fri,  1 May 2020 05:41:52 -0700 (PDT)
Date: Fri, 1 May 2020 13:41:50 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200501124150.GB53528@C02TD0UTHF1T.local>
References: <20200501115430.37315-1-broonie@kernel.org>
 <20200501115430.37315-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501115430.37315-3-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_054155_454687_3D75F803 
X-CRM114-Status: GOOD (  20.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 12:54:29PM +0100, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the core kernel code to
> the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

All the FUNC/CODE conversions look appropriate to me, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/cpu-reset.S                 |  4 +-
>  arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
>  arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
>  arch/arm64/kernel/hibernate-asm.S             | 16 +++----
>  arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
>  arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
>  arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
>  arch/arm64/kernel/relocate_kernel.S           |  4 +-
>  arch/arm64/kernel/sleep.S                     | 12 ++---
>  arch/arm64/kernel/smccc-call.S                |  8 ++--
>  10 files changed, 68 insertions(+), 68 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
> index 38087b4c0432..4a18055b2ff9 100644
> --- a/arch/arm64/kernel/cpu-reset.S
> +++ b/arch/arm64/kernel/cpu-reset.S
> @@ -29,7 +29,7 @@
>   * branch to what would be the reset vector. It must be executed with the
>   * flat identity mapping.
>   */
> -ENTRY(__cpu_soft_restart)
> +SYM_CODE_START(__cpu_soft_restart)
>  	/* Clear sctlr_el1 flags. */
>  	mrs	x12, sctlr_el1
>  	mov_q	x13, SCTLR_ELx_FLAGS
> @@ -47,6 +47,6 @@ ENTRY(__cpu_soft_restart)
>  	mov	x1, x3				// arg1
>  	mov	x2, x4				// arg2
>  	br	x8
> -ENDPROC(__cpu_soft_restart)
> +SYM_CODE_END(__cpu_soft_restart)
>  
>  .popsection
> diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
> index 3fc71106cb2b..1192c4bb48df 100644
> --- a/arch/arm64/kernel/efi-rt-wrapper.S
> +++ b/arch/arm64/kernel/efi-rt-wrapper.S
> @@ -5,7 +5,7 @@
>  
>  #include <linux/linkage.h>
>  
> -ENTRY(__efi_rt_asm_wrapper)
> +SYM_FUNC_START(__efi_rt_asm_wrapper)
>  	stp	x29, x30, [sp, #-32]!
>  	mov	x29, sp
>  
> @@ -35,4 +35,4 @@ ENTRY(__efi_rt_asm_wrapper)
>  	b.ne	0f
>  	ret
>  0:	b	efi_handle_corrupted_x18	// tail call
> -ENDPROC(__efi_rt_asm_wrapper)
> +SYM_FUNC_END(__efi_rt_asm_wrapper)
> diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
> index 0f24eae8f3cc..f880dd63ddc3 100644
> --- a/arch/arm64/kernel/entry-fpsimd.S
> +++ b/arch/arm64/kernel/entry-fpsimd.S
> @@ -16,34 +16,34 @@
>   *
>   * x0 - pointer to struct fpsimd_state
>   */
> -ENTRY(fpsimd_save_state)
> +SYM_FUNC_START(fpsimd_save_state)
>  	fpsimd_save x0, 8
>  	ret
> -ENDPROC(fpsimd_save_state)
> +SYM_FUNC_END(fpsimd_save_state)
>  
>  /*
>   * Load the FP registers.
>   *
>   * x0 - pointer to struct fpsimd_state
>   */
> -ENTRY(fpsimd_load_state)
> +SYM_FUNC_START(fpsimd_load_state)
>  	fpsimd_restore x0, 8
>  	ret
> -ENDPROC(fpsimd_load_state)
> +SYM_FUNC_END(fpsimd_load_state)
>  
>  #ifdef CONFIG_ARM64_SVE
> -ENTRY(sve_save_state)
> +SYM_FUNC_START(sve_save_state)
>  	sve_save 0, x1, 2
>  	ret
> -ENDPROC(sve_save_state)
> +SYM_FUNC_END(sve_save_state)
>  
> -ENTRY(sve_load_state)
> +SYM_FUNC_START(sve_load_state)
>  	sve_load 0, x1, x2, 3, x4
>  	ret
> -ENDPROC(sve_load_state)
> +SYM_FUNC_END(sve_load_state)
>  
> -ENTRY(sve_get_vl)
> +SYM_FUNC_START(sve_get_vl)
>  	_sve_rdvl	0, 1
>  	ret
> -ENDPROC(sve_get_vl)
> +SYM_FUNC_END(sve_get_vl)
>  #endif /* CONFIG_ARM64_SVE */
> diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
> index 6532105b3e32..8ccca660034e 100644
> --- a/arch/arm64/kernel/hibernate-asm.S
> +++ b/arch/arm64/kernel/hibernate-asm.S
> @@ -65,7 +65,7 @@
>   * x5: physical address of a  zero page that remains zero after resume
>   */
>  .pushsection    ".hibernate_exit.text", "ax"
> -ENTRY(swsusp_arch_suspend_exit)
> +SYM_CODE_START(swsusp_arch_suspend_exit)
>  	/*
>  	 * We execute from ttbr0, change ttbr1 to our copied linear map tables
>  	 * with a break-before-make via the zero page
> @@ -110,7 +110,7 @@ ENTRY(swsusp_arch_suspend_exit)
>  	cbz	x24, 3f		/* Do we need to re-initialise EL2? */
>  	hvc	#0
>  3:	ret
> -ENDPROC(swsusp_arch_suspend_exit)
> +SYM_CODE_END(swsusp_arch_suspend_exit)
>  
>  /*
>   * Restore the hyp stub.
> @@ -119,15 +119,15 @@ ENDPROC(swsusp_arch_suspend_exit)
>   *
>   * x24: The physical address of __hyp_stub_vectors
>   */
> -el1_sync:
> +SYM_CODE_START_LOCAL(el1_sync)
>  	msr	vbar_el2, x24
>  	eret
> -ENDPROC(el1_sync)
> +SYM_CODE_END(el1_sync)
>  
>  .macro invalid_vector	label
> -\label:
> +SYM_CODE_START_LOCAL(\label)
>  	b \label
> -ENDPROC(\label)
> +SYM_CODE_END(\label)
>  .endm
>  
>  	invalid_vector	el2_sync_invalid
> @@ -141,7 +141,7 @@ ENDPROC(\label)
>  
>  /* el2 vectors - switch el2 here while we restore the memory image. */
>  	.align 11
> -ENTRY(hibernate_el2_vectors)
> +SYM_CODE_START(hibernate_el2_vectors)
>  	ventry	el2_sync_invalid		// Synchronous EL2t
>  	ventry	el2_irq_invalid			// IRQ EL2t
>  	ventry	el2_fiq_invalid			// FIQ EL2t
> @@ -161,6 +161,6 @@ ENTRY(hibernate_el2_vectors)
>  	ventry	el1_irq_invalid			// IRQ 32-bit EL1
>  	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
>  	ventry	el1_error_invalid		// Error 32-bit EL1
> -END(hibernate_el2_vectors)
> +SYM_CODE_END(hibernate_el2_vectors)
>  
>  .popsection
> diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
> index e473ead806ed..160f5881a0b7 100644
> --- a/arch/arm64/kernel/hyp-stub.S
> +++ b/arch/arm64/kernel/hyp-stub.S
> @@ -21,7 +21,7 @@
>  
>  	.align 11
>  
> -ENTRY(__hyp_stub_vectors)
> +SYM_CODE_START(__hyp_stub_vectors)
>  	ventry	el2_sync_invalid		// Synchronous EL2t
>  	ventry	el2_irq_invalid			// IRQ EL2t
>  	ventry	el2_fiq_invalid			// FIQ EL2t
> @@ -41,11 +41,11 @@ ENTRY(__hyp_stub_vectors)
>  	ventry	el1_irq_invalid			// IRQ 32-bit EL1
>  	ventry	el1_fiq_invalid			// FIQ 32-bit EL1
>  	ventry	el1_error_invalid		// Error 32-bit EL1
> -ENDPROC(__hyp_stub_vectors)
> +SYM_CODE_END(__hyp_stub_vectors)
>  
>  	.align 11
>  
> -el1_sync:
> +SYM_CODE_START_LOCAL(el1_sync)
>  	cmp	x0, #HVC_SET_VECTORS
>  	b.ne	2f
>  	msr	vbar_el2, x1
> @@ -68,12 +68,12 @@ el1_sync:
>  
>  9:	mov	x0, xzr
>  	eret
> -ENDPROC(el1_sync)
> +SYM_CODE_END(el1_sync)
>  
>  .macro invalid_vector	label
> -\label:
> +SYM_CODE_START_LOCAL(\label)
>  	b \label
> -ENDPROC(\label)
> +SYM_CODE_END(\label)
>  .endm
>  
>  	invalid_vector	el2_sync_invalid
> @@ -106,15 +106,15 @@ ENDPROC(\label)
>   * initialisation entry point.
>   */
>  
> -ENTRY(__hyp_set_vectors)
> +SYM_FUNC_START(__hyp_set_vectors)
>  	mov	x1, x0
>  	mov	x0, #HVC_SET_VECTORS
>  	hvc	#0
>  	ret
> -ENDPROC(__hyp_set_vectors)
> +SYM_FUNC_END(__hyp_set_vectors)
>  
> -ENTRY(__hyp_reset_vectors)
> +SYM_FUNC_START(__hyp_reset_vectors)
>  	mov	x0, #HVC_RESET_VECTORS
>  	hvc	#0
>  	ret
> -ENDPROC(__hyp_reset_vectors)
> +SYM_FUNC_END(__hyp_reset_vectors)
> diff --git a/arch/arm64/kernel/probes/kprobes_trampoline.S b/arch/arm64/kernel/probes/kprobes_trampoline.S
> index 45dce03aaeaf..890ca72c5a51 100644
> --- a/arch/arm64/kernel/probes/kprobes_trampoline.S
> +++ b/arch/arm64/kernel/probes/kprobes_trampoline.S
> @@ -61,7 +61,7 @@
>  	ldp x28, x29, [sp, #S_X28]
>  	.endm
>  
> -ENTRY(kretprobe_trampoline)
> +SYM_CODE_START(kretprobe_trampoline)
>  	sub sp, sp, #S_FRAME_SIZE
>  
>  	save_all_base_regs
> @@ -79,4 +79,4 @@ ENTRY(kretprobe_trampoline)
>  	add sp, sp, #S_FRAME_SIZE
>  	ret
>  
> -ENDPROC(kretprobe_trampoline)
> +SYM_CODE_END(kretprobe_trampoline)
> diff --git a/arch/arm64/kernel/reloc_test_syms.S b/arch/arm64/kernel/reloc_test_syms.S
> index 16a34f188f26..c50f45fa29fa 100644
> --- a/arch/arm64/kernel/reloc_test_syms.S
> +++ b/arch/arm64/kernel/reloc_test_syms.S
> @@ -5,81 +5,81 @@
>  
>  #include <linux/linkage.h>
>  
> -ENTRY(absolute_data64)
> +SYM_FUNC_START(absolute_data64)
>  	ldr	x0, 0f
>  	ret
>  0:	.quad	sym64_abs
> -ENDPROC(absolute_data64)
> +SYM_FUNC_END(absolute_data64)
>  
> -ENTRY(absolute_data32)
> +SYM_FUNC_START(absolute_data32)
>  	ldr	w0, 0f
>  	ret
>  0:	.long	sym32_abs
> -ENDPROC(absolute_data32)
> +SYM_FUNC_END(absolute_data32)
>  
> -ENTRY(absolute_data16)
> +SYM_FUNC_START(absolute_data16)
>  	adr	x0, 0f
>  	ldrh	w0, [x0]
>  	ret
>  0:	.short	sym16_abs, 0
> -ENDPROC(absolute_data16)
> +SYM_FUNC_END(absolute_data16)
>  
> -ENTRY(signed_movw)
> +SYM_FUNC_START(signed_movw)
>  	movz	x0, #:abs_g2_s:sym64_abs
>  	movk	x0, #:abs_g1_nc:sym64_abs
>  	movk	x0, #:abs_g0_nc:sym64_abs
>  	ret
> -ENDPROC(signed_movw)
> +SYM_FUNC_END(signed_movw)
>  
> -ENTRY(unsigned_movw)
> +SYM_FUNC_START(unsigned_movw)
>  	movz	x0, #:abs_g3:sym64_abs
>  	movk	x0, #:abs_g2_nc:sym64_abs
>  	movk	x0, #:abs_g1_nc:sym64_abs
>  	movk	x0, #:abs_g0_nc:sym64_abs
>  	ret
> -ENDPROC(unsigned_movw)
> +SYM_FUNC_END(unsigned_movw)
>  
>  	.align	12
>  	.space	0xff8
> -ENTRY(relative_adrp)
> +SYM_FUNC_START(relative_adrp)
>  	adrp	x0, sym64_rel
>  	add	x0, x0, #:lo12:sym64_rel
>  	ret
> -ENDPROC(relative_adrp)
> +SYM_FUNC_END(relative_adrp)
>  
>  	.align	12
>  	.space	0xffc
> -ENTRY(relative_adrp_far)
> +SYM_FUNC_START(relative_adrp_far)
>  	adrp	x0, memstart_addr
>  	add	x0, x0, #:lo12:memstart_addr
>  	ret
> -ENDPROC(relative_adrp_far)
> +SYM_FUNC_END(relative_adrp_far)
>  
> -ENTRY(relative_adr)
> +SYM_FUNC_START(relative_adr)
>  	adr	x0, sym64_rel
>  	ret
> -ENDPROC(relative_adr)
> +SYM_FUNC_END(relative_adr)
>  
> -ENTRY(relative_data64)
> +SYM_FUNC_START(relative_data64)
>  	adr	x1, 0f
>  	ldr	x0, [x1]
>  	add	x0, x0, x1
>  	ret
>  0:	.quad	sym64_rel - .
> -ENDPROC(relative_data64)
> +SYM_FUNC_END(relative_data64)
>  
> -ENTRY(relative_data32)
> +SYM_FUNC_START(relative_data32)
>  	adr	x1, 0f
>  	ldr	w0, [x1]
>  	add	x0, x0, x1
>  	ret
>  0:	.long	sym64_rel - .
> -ENDPROC(relative_data32)
> +SYM_FUNC_END(relative_data32)
>  
> -ENTRY(relative_data16)
> +SYM_FUNC_START(relative_data16)
>  	adr	x1, 0f
>  	ldrsh	w0, [x1]
>  	add	x0, x0, x1
>  	ret
>  0:	.short	sym64_rel - ., 0
> -ENDPROC(relative_data16)
> +SYM_FUNC_END(relative_data16)
> diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
> index c40ce496c78b..542d6edc6806 100644
> --- a/arch/arm64/kernel/relocate_kernel.S
> +++ b/arch/arm64/kernel/relocate_kernel.S
> @@ -26,7 +26,7 @@
>   * control_code_page, a special page which has been set up to be preserved
>   * during the copy operation.
>   */
> -ENTRY(arm64_relocate_new_kernel)
> +SYM_CODE_START(arm64_relocate_new_kernel)
>  
>  	/* Setup the list loop variables. */
>  	mov	x18, x2				/* x18 = dtb address */
> @@ -111,7 +111,7 @@ ENTRY(arm64_relocate_new_kernel)
>  	mov	x3, xzr
>  	br	x17
>  
> -ENDPROC(arm64_relocate_new_kernel)
> +SYM_CODE_END(arm64_relocate_new_kernel)
>  
>  .align 3	/* To keep the 64-bit values below naturally aligned. */
>  
> diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
> index 7b2f2e650c44..c1bf43cfaa2b 100644
> --- a/arch/arm64/kernel/sleep.S
> +++ b/arch/arm64/kernel/sleep.S
> @@ -62,7 +62,7 @@
>   *
>   *  x0 = struct sleep_stack_data area
>   */
> -ENTRY(__cpu_suspend_enter)
> +SYM_FUNC_START(__cpu_suspend_enter)
>  	stp	x29, lr, [x0, #SLEEP_STACK_DATA_CALLEE_REGS]
>  	stp	x19, x20, [x0,#SLEEP_STACK_DATA_CALLEE_REGS+16]
>  	stp	x21, x22, [x0,#SLEEP_STACK_DATA_CALLEE_REGS+32]
> @@ -95,10 +95,10 @@ ENTRY(__cpu_suspend_enter)
>  	ldp	x29, lr, [sp], #16
>  	mov	x0, #1
>  	ret
> -ENDPROC(__cpu_suspend_enter)
> +SYM_FUNC_END(__cpu_suspend_enter)
>  
>  	.pushsection ".idmap.text", "awx"
> -ENTRY(cpu_resume)
> +SYM_CODE_START(cpu_resume)
>  	bl	el2_setup		// if in EL2 drop to EL1 cleanly
>  	mov	x0, #ARM64_CPU_RUNTIME
>  	bl	__cpu_setup
> @@ -107,11 +107,11 @@ ENTRY(cpu_resume)
>  	bl	__enable_mmu
>  	ldr	x8, =_cpu_resume
>  	br	x8
> -ENDPROC(cpu_resume)
> +SYM_CODE_END(cpu_resume)
>  	.ltorg
>  	.popsection
>  
> -ENTRY(_cpu_resume)
> +SYM_FUNC_START(_cpu_resume)
>  	mrs	x1, mpidr_el1
>  	adr_l	x8, mpidr_hash		// x8 = struct mpidr_hash virt address
>  
> @@ -147,4 +147,4 @@ ENTRY(_cpu_resume)
>  	ldp	x29, lr, [x29]
>  	mov	x0, #0
>  	ret
> -ENDPROC(_cpu_resume)
> +SYM_FUNC_END(_cpu_resume)
> diff --git a/arch/arm64/kernel/smccc-call.S b/arch/arm64/kernel/smccc-call.S
> index 54655273d1e0..1f93809528a4 100644
> --- a/arch/arm64/kernel/smccc-call.S
> +++ b/arch/arm64/kernel/smccc-call.S
> @@ -30,9 +30,9 @@
>   *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
>   *		  struct arm_smccc_quirk *quirk)
>   */
> -ENTRY(__arm_smccc_smc)
> +SYM_FUNC_START(__arm_smccc_smc)
>  	SMCCC	smc
> -ENDPROC(__arm_smccc_smc)
> +SYM_FUNC_END(__arm_smccc_smc)
>  EXPORT_SYMBOL(__arm_smccc_smc)
>  
>  /*
> @@ -41,7 +41,7 @@ EXPORT_SYMBOL(__arm_smccc_smc)
>   *		  unsigned long a6, unsigned long a7, struct arm_smccc_res *res,
>   *		  struct arm_smccc_quirk *quirk)
>   */
> -ENTRY(__arm_smccc_hvc)
> +SYM_FUNC_START(__arm_smccc_hvc)
>  	SMCCC	hvc
> -ENDPROC(__arm_smccc_hvc)
> +SYM_FUNC_END(__arm_smccc_hvc)
>  EXPORT_SYMBOL(__arm_smccc_hvc)
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
