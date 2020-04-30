Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2892B1C03B5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 19:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAYRw7sksWP0vONcT0o9+RWaoY+VPQmwJldt9AOMCQs=; b=VPc2KEmqh3vVaz
	99zVFYGT4ZIOYII7S2eh4MoBe/42bHuUA4rsTfPccxuxeRA4BvNJR8nE4s2QBybIoXbpJhd7Ku1Em
	Sgb+26c+n9rWlcjfGjGf16MsjZ2srTBx/Nd/QJ6e6hlITiWS/m7VLX6e2CoN3zTOrw+s7JhTRktvq
	1Re1mG50ggGGGCYr0Q1DEKh7ja2U/elm8i0dFk9H8P89vQDLR68gmMO5EascfzXf6n63j1f/17Tsf
	d0VN050vB+O7MlTqGEhwTt9Ce7oVcl+pkzKYI8AKdl7PfF7fBPziMPMaLsS6e6N+usa7GwL0RWdgI
	DG0sWBAjoJbou1suH8dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCpe-0002op-0c; Thu, 30 Apr 2020 17:18:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCpS-0002oQ-4H
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 17:18:31 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19FC321775;
 Thu, 30 Apr 2020 17:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588267109;
 bh=24mI9LjkeMM/Kh/FRudzz1oSPxOyeZN2hJOClVtOb6g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2XQGd1Lvn1i6e2Zq7W/dFyQ6CN9ClDAvC2OIxOeGmCpo+UcXy/uqvytN/3pphC/cA
 97Nn1PBGj1RwKyQ7hneG8a5qfJ6mQC/IsQKlDym6jMUYo+QCkjAn7Za91WdufgAbIV
 LGbjeSLq3sP/j9ffiKJ/XIF9c4xfawAQs7bkzbgs=
Date: Thu, 30 Apr 2020 18:18:25 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/2] arm64: kernel: Convert to modern annotations for
 assembly functions
Message-ID: <20200430171825.GI25258@willie-the-truck>
References: <20200428164331.27289-1-broonie@kernel.org>
 <20200428164331.27289-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428164331.27289-2-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_101830_210626_CB04BBF0 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 05:43:30PM +0100, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC and also add a new annotation for static functions which previously
> had no ENTRY equivalent. Update the annotations in the core kernel code to
> the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/cpu-reset.S                 |  4 +-
>  arch/arm64/kernel/efi-rt-wrapper.S            |  4 +-
>  arch/arm64/kernel/entry-fpsimd.S              | 20 ++++-----
>  arch/arm64/kernel/entry.S                     |  7 +--
>  arch/arm64/kernel/hibernate-asm.S             | 16 +++----
>  arch/arm64/kernel/hyp-stub.S                  | 20 ++++-----
>  arch/arm64/kernel/probes/kprobes_trampoline.S |  4 +-
>  arch/arm64/kernel/reloc_test_syms.S           | 44 +++++++++----------
>  arch/arm64/kernel/relocate_kernel.S           |  4 +-
>  arch/arm64/kernel/sleep.S                     | 12 ++---
>  arch/arm64/kernel/smccc-call.S                |  8 ++--
>  11 files changed, 72 insertions(+), 71 deletions(-)
> 
> diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
> index 38087b4c0432..646103743a50 100644
> --- a/arch/arm64/kernel/cpu-reset.S
> +++ b/arch/arm64/kernel/cpu-reset.S
> @@ -29,7 +29,7 @@
>   * branch to what would be the reset vector. It must be executed with the
>   * flat identity mapping.
>   */
> -ENTRY(__cpu_soft_restart)
> +SYM_FUNC_START(__cpu_soft_restart)
>  	/* Clear sctlr_el1 flags. */
>  	mrs	x12, sctlr_el1
>  	mov_q	x13, SCTLR_ELx_FLAGS
> @@ -47,6 +47,6 @@ ENTRY(__cpu_soft_restart)
>  	mov	x1, x3				// arg1
>  	mov	x2, x4				// arg2
>  	br	x8
> -ENDPROC(__cpu_soft_restart)
> +SYM_FUNC_END(__cpu_soft_restart)

Hmm, this function is probably weird enough to justify SYM_CODE_* since it
never returns and doesn't have a stack.

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index ddcde093c433..664a833aa619 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -730,7 +730,7 @@ SYM_CODE_END(el0_error)
>  /*
>   * Ok, we need to do extra processing, enter the slow path.
>   */
> -work_pending:
> +SYM_CODE_START_LOCAL(work_pending)
>  	mov	x0, sp				// 'regs'
>  	bl	do_notify_resume
>  #ifdef CONFIG_TRACE_IRQFLAGS
> @@ -738,10 +738,11 @@ work_pending:
>  #endif
>  	ldr	x1, [tsk, #TSK_TI_FLAGS]	// re-check for single-step
>  	b	finish_ret_to_user
> +SYM_CODE_END(work_pending)
>  /*
>   * "slow" syscall return path.
>   */
> -ret_to_user:
> +SYM_CODE_START_LOCAL(ret_to_user)

Would this be better off as a SYM_INNER_LABEL inside work_pending? Given
that ret_to_user and work_pending both branch into each other, separating
them doesn't feel quite right.

> diff --git a/arch/arm64/kernel/hibernate-asm.S b/arch/arm64/kernel/hibernate-asm.S
> index 6532105b3e32..8ccca660034e 100644
> --- a/arch/arm64/kernel/hibernate-asm.S
> +++ b/arch/arm64/kernel/hibernate-asm.S

[...]

>  .macro invalid_vector	label
> -\label:
> +SYM_CODE_START_LOCAL(\label)
>  	b \label
> -ENDPROC(\label)
> +SYM_CODE_END(\label)
>  .endm

[...]

> diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
> index e473ead806ed..160f5881a0b7 100644
> --- a/arch/arm64/kernel/hyp-stub.S
> +++ b/arch/arm64/kernel/hyp-stub.S

[...]

>  .macro invalid_vector	label
> -\label:
> +SYM_CODE_START_LOCAL(\label)
>  	b \label
> -ENDPROC(\label)
> +SYM_CODE_END(\label)
>  .endm

Huh, this is the exact same macro as the one from the hibernate code. Maybe
we should stick it in asm/asembler.h alongside ventry? Obviously a separate
patch, though.

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
> index 16a34f188f26..53e8cdfe80e1 100644
> --- a/arch/arm64/kernel/reloc_test_syms.S
> +++ b/arch/arm64/kernel/reloc_test_syms.S
> @@ -5,81 +5,81 @@
>  
>  #include <linux/linkage.h>
>  
> -ENTRY(absolute_data64)
> +SYM_CODE_START(absolute_data64)
>  	ldr	x0, 0f
>  	ret
>  0:	.quad	sym64_abs
> -ENDPROC(absolute_data64)
> +SYM_CODE_END(absolute_data64)

Hmm, but all the functions in here *are* actually just called from the C
code in reloc_test_core.c afaict, so they should probably be using
SYM_FUNC_*.

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
> index 7b2f2e650c44..70e5e697ebc7 100644
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
> +SYM_FUNC_START(cpu_resume)
>  	bl	el2_setup		// if in EL2 drop to EL1 cleanly
>  	mov	x0, #ARM64_CPU_RUNTIME
>  	bl	__cpu_setup
> @@ -107,11 +107,11 @@ ENTRY(cpu_resume)
>  	bl	__enable_mmu
>  	ldr	x8, =_cpu_resume
>  	br	x8
> -ENDPROC(cpu_resume)
> +SYM_FUNC_END(cpu_resume)

SYM_CODE_* here, as this is I think this is the entry point from the resume
path?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
