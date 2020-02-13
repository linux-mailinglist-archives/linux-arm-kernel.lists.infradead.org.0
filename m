Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6D715CD60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 22:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YO0OLPtgpdpIHzS7/+nE20CsNNgKSHo8FRlEd6/bTB8=; b=D1xyytFVmqIf/GKkvacK0gls+
	usNXKycaoGD58cUpMWTEX/NhUmZlXj1ruhEK/mvTXi4R2EX4DPHlfy0/GiHYNaLzONjhMGVyb9xkE
	fPJaZkTZ+VbkCEy1LLUq0V7INguOXGHwxzkxCSY22M0F3rJAUSJKiK2xESFIpZUPiQP9c+BnCMX87
	jeC49DN14FyRFx67HIFM+CC5o2AlgDc8GVFXYpXxdFeVQrHoXHF+9l8MMM7apNzJb+0Q7EbH0m8jB
	caUJ2M5Bg2A8cI+rAuDtNemyxEMYiwWc0a9fE2Ze6Qh6YvZ20LbTjCUq68r+41HLxfCIOOVglzNB0
	DgIyxrahQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2MAT-0001Fi-Dm; Thu, 13 Feb 2020 21:37:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2MAM-0001FI-Kd
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 21:37:00 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E1E3206B6;
 Thu, 13 Feb 2020 21:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581629818;
 bh=x9nbXOfLxwm3MSFJz4Mp1Qf8injFxjoGpzXI1vGi1GQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oRtZy/pf4khN4Vxvx2aijKcDfaumiwA1LktH2GBiQQUaX581XUmG6AfGGluhYSFoO
 vYEqTz1XtLqfRSXUSwskHcOPic5G3VN0Gmq0AUf1tnspnax9p7+3qWxZKc5DsONLFB
 fis/aB5ljjxzuQS5wk55GuhjY13AAr+V6ZP5Q6dQ=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2MAK-004ySa-AB; Thu, 13 Feb 2020 21:36:56 +0000
MIME-Version: 1.0
Date: Thu, 13 Feb 2020 21:36:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Annotate assembly using modern annoations
In-Reply-To: <20200213153820.32049-1-broonie@kernel.org>
References: <20200213153820.32049-1-broonie@kernel.org>
Message-ID: <b25323d02c76441ee12c206f07907383@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: broonie@kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_133658_720231_7E4EDD93 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 2020-02-13 15:38, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly 
> functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC with separate annotations for standard C callable functions,
> data and code with different calling conventions.  Update the
> annotations in the kvm code to the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kvm/hyp-init.S      |  8 ++++----
>  arch/arm64/kvm/hyp.S           |  4 ++--
>  arch/arm64/kvm/hyp/fpsimd.S    |  8 ++++----
>  arch/arm64/kvm/hyp/hyp-entry.S | 27 ++++++++++++++++-----------
>  4 files changed, 26 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
> index 160be2b4696d..84f32cf5abc7 100644
> --- a/arch/arm64/kvm/hyp-init.S
> +++ b/arch/arm64/kvm/hyp-init.S
> @@ -18,7 +18,7 @@
> 
>  	.align	11
> 
> -ENTRY(__kvm_hyp_init)
> +SYM_CODE_START(__kvm_hyp_init)
>  	ventry	__invalid		// Synchronous EL2t
>  	ventry	__invalid		// IRQ EL2t
>  	ventry	__invalid		// FIQ EL2t
> @@ -117,9 +117,9 @@ CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
> 
>  	/* Hello, World! */
>  	eret
> -ENDPROC(__kvm_hyp_init)
> +SYM_CODE_END(__kvm_hyp_init)
> 
> -ENTRY(__kvm_handle_stub_hvc)
> +SYM_CODE_START(__kvm_handle_stub_hvc)
>  	cmp	x0, #HVC_SOFT_RESTART
>  	b.ne	1f
> 
> @@ -158,7 +158,7 @@ reset:
>  	ldr	x0, =HVC_STUB_ERR
>  	eret
> 
> -ENDPROC(__kvm_handle_stub_hvc)
> +SYM_CODE_END(__kvm_handle_stub_hvc)
> 
>  	.ltorg
> 
> diff --git a/arch/arm64/kvm/hyp.S b/arch/arm64/kvm/hyp.S
> index c0094d520dff..3c79a1124af2 100644
> --- a/arch/arm64/kvm/hyp.S
> +++ b/arch/arm64/kvm/hyp.S
> @@ -28,7 +28,7 @@
>   * and is used to implement hyp stubs in the same way as in
>   * arch/arm64/kernel/hyp_stub.S.
>   */
> -ENTRY(__kvm_call_hyp)
> +SYM_FUNC_START(__kvm_call_hyp)

I'm not convinced by this particular change. _kvm_call_hyp is called 
directly from
C, and behaves almost like a normal function. What's the issue here?

>  	hvc	#0
>  	ret
> -ENDPROC(__kvm_call_hyp)
> +SYM_FUNC_END(__kvm_call_hyp)
> diff --git a/arch/arm64/kvm/hyp/fpsimd.S b/arch/arm64/kvm/hyp/fpsimd.S
> index 78ff53225691..5b8ff517ff10 100644
> --- a/arch/arm64/kvm/hyp/fpsimd.S
> +++ b/arch/arm64/kvm/hyp/fpsimd.S
> @@ -11,12 +11,12 @@
>  	.text
>  	.pushsection	.hyp.text, "ax"
> 
> -ENTRY(__fpsimd_save_state)
> +SYM_FUNC_START(__fpsimd_save_state)
>  	fpsimd_save	x0, 1
>  	ret
> -ENDPROC(__fpsimd_save_state)
> +SYM_FUNC_END(__fpsimd_save_state)
> 
> -ENTRY(__fpsimd_restore_state)
> +SYM_FUNC_START(__fpsimd_restore_state)
>  	fpsimd_restore	x0, 1
>  	ret
> -ENDPROC(__fpsimd_restore_state)
> +SYM_FUNC_END(__fpsimd_restore_state)

Same for these. The only reason they are not written inline assemply
in a normal C function is that we have these fpsimd_* macros.

> diff --git a/arch/arm64/kvm/hyp/hyp-entry.S 
> b/arch/arm64/kvm/hyp/hyp-entry.S
> index ffa68d5713f1..f7b0cb189b77 100644
> --- a/arch/arm64/kvm/hyp/hyp-entry.S
> +++ b/arch/arm64/kvm/hyp/hyp-entry.S
> @@ -180,7 +180,7 @@ el2_error:
>  	eret
>  	sb
> 
> -ENTRY(__hyp_do_panic)
> +SYM_FUNC_START(__hyp_do_panic)
>  	mov	lr, #(PSR_F_BIT | PSR_I_BIT | PSR_A_BIT | PSR_D_BIT |\
>  		      PSR_MODE_EL1h)
>  	msr	spsr_el2, lr
> @@ -188,18 +188,19 @@ ENTRY(__hyp_do_panic)
>  	msr	elr_el2, lr
>  	eret
>  	sb
> -ENDPROC(__hyp_do_panic)
> +SYM_FUNC_END(__hyp_do_panic)
> 
> -ENTRY(__hyp_panic)
> +SYM_CODE_START(__hyp_panic)
>  	get_host_ctxt x0, x1
>  	b	hyp_panic
> -ENDPROC(__hyp_panic)
> +SYM_CODE_END(__hyp_panic)
> 
>  .macro invalid_vector	label, target = __hyp_panic
>  	.align	2
> +SYM_CODE_START(\label)
>  \label:
>  	b \target
> -ENDPROC(\label)
> +SYM_CODE_END(\label)
>  .endm
> 
>  	/* None of these should ever happen */
> @@ -246,7 +247,7 @@ check_preamble_length 661b, 662b
>  check_preamble_length 661b, 662b
>  .endm
> 
> -ENTRY(__kvm_hyp_vector)
> +SYM_CODE_START(__kvm_hyp_vector)
>  	invalid_vect	el2t_sync_invalid	// Synchronous EL2t
>  	invalid_vect	el2t_irq_invalid	// IRQ EL2t
>  	invalid_vect	el2t_fiq_invalid	// FIQ EL2t
> @@ -266,7 +267,7 @@ ENTRY(__kvm_hyp_vector)
>  	valid_vect	el1_irq			// IRQ 32-bit EL1
>  	invalid_vect	el1_fiq_invalid		// FIQ 32-bit EL1
>  	valid_vect	el1_error		// Error 32-bit EL1
> -ENDPROC(__kvm_hyp_vector)
> +SYM_CODE_END(__kvm_hyp_vector)
> 
>  #ifdef CONFIG_KVM_INDIRECT_VECTORS
>  .macro hyp_ventry
> @@ -311,15 +312,18 @@ alternative_cb_end
>  .endm
> 
>  	.align	11
> -ENTRY(__bp_harden_hyp_vecs_start)
> +SYM_CODE_START_NOALIGN(__bp_harden_hyp_vecs)
> +SYM_INNER_LABEL(__bp_harden_hyp_vecs_start, SYM_L_GLOBAL)

Why isn't SYM_CODE_START_NOALIGN enough? And what is the rational for
the _NOALIGN, btw? I'd expect an alignment of 2kB to be more than 
enough.

>  	.rept BP_HARDEN_EL2_SLOTS
>  	generate_vectors
>  	.endr
> -ENTRY(__bp_harden_hyp_vecs_end)
> +SYM_INNER_LABEL(__bp_harden_hyp_vecs_end, SYM_L_GLOBAL)
> +SYM_CODE_END(__bp_harden_hyp_vecs)

Same here.

> 
>  	.popsection
> 
> -ENTRY(__smccc_workaround_1_smc_start)
> +SYM_CODE_START(__smccc_workaround_1_smc)
> +SYM_INNER_LABEL(__smccc_workaround_1_smc_start, SYM_L_GLOBAL)
>  	esb
>  	sub	sp, sp, #(8 * 4)
>  	stp	x2, x3, [sp, #(8 * 0)]
> @@ -329,5 +333,6 @@ ENTRY(__smccc_workaround_1_smc_start)
>  	ldp	x2, x3, [sp, #(8 * 0)]
>  	ldp	x0, x1, [sp, #(8 * 2)]
>  	add	sp, sp, #(8 * 4)
> -ENTRY(__smccc_workaround_1_smc_end)
> +SYM_INNER_LABEL(__smccc_workaround_1_smc_end, SYM_L_GLOBAL)
> +SYM_CODE_END(__smccc_workaround_1_smc)
>  #endif

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
