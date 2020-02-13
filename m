Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6A915C2A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:38:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ukRHVrZ6/HTy2/QvDfNFnXjzjC/i3CIe7jd49XdgqOM=; b=Iscdjdz2qYRqFB
	pFs2XLAM5w1l9/h1OV2aFss2OfOu2NOIwOqc81LnU8DSY85nQfk0HXZjPy87iaeY7Av5815kkLQdB
	5WVHeXiFxHDGsUhvd0u0BbSeA8DDRTfeLHD+NDZbmfJr1iisy8TgYBGZ6imwB1UN/uqJnj6VWVI9x
	SqpTCKjUF1DBmHq4/0hmBxhehGxk98aQ6Cf8acXJ2qFxVtFwhmhcPjTTEsi5v6yqVEB30G6pf4ETd
	3gxTHXyRa9fSd3O6xF2RXXDj9mVCZAS5P6k+pkrblrMAwZlCc5Oifx3ifxZRQw1UTaJlVoAA5URER
	XswWtoXeWS9pDd+BHIQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2GZV-0001zY-UH; Thu, 13 Feb 2020 15:38:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2GZP-0001yz-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:38:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7378A328;
 Thu, 13 Feb 2020 07:38:26 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E92323F68E;
 Thu, 13 Feb 2020 07:38:25 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH] arm64: kvm: Annotate assembly using modern annoations
Date: Thu, 13 Feb 2020 15:38:20 +0000
Message-Id: <20200213153820.32049-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_073827_425675_2D959DAA 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC with separate annotations for standard C callable functions,
data and code with different calling conventions.  Update the
annotations in the kvm code to the new macros.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/kvm/hyp-init.S      |  8 ++++----
 arch/arm64/kvm/hyp.S           |  4 ++--
 arch/arm64/kvm/hyp/fpsimd.S    |  8 ++++----
 arch/arm64/kvm/hyp/hyp-entry.S | 27 ++++++++++++++++-----------
 4 files changed, 26 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
index 160be2b4696d..84f32cf5abc7 100644
--- a/arch/arm64/kvm/hyp-init.S
+++ b/arch/arm64/kvm/hyp-init.S
@@ -18,7 +18,7 @@
 
 	.align	11
 
-ENTRY(__kvm_hyp_init)
+SYM_CODE_START(__kvm_hyp_init)
 	ventry	__invalid		// Synchronous EL2t
 	ventry	__invalid		// IRQ EL2t
 	ventry	__invalid		// FIQ EL2t
@@ -117,9 +117,9 @@ CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
 
 	/* Hello, World! */
 	eret
-ENDPROC(__kvm_hyp_init)
+SYM_CODE_END(__kvm_hyp_init)
 
-ENTRY(__kvm_handle_stub_hvc)
+SYM_CODE_START(__kvm_handle_stub_hvc)
 	cmp	x0, #HVC_SOFT_RESTART
 	b.ne	1f
 
@@ -158,7 +158,7 @@ reset:
 	ldr	x0, =HVC_STUB_ERR
 	eret
 
-ENDPROC(__kvm_handle_stub_hvc)
+SYM_CODE_END(__kvm_handle_stub_hvc)
 
 	.ltorg
 
diff --git a/arch/arm64/kvm/hyp.S b/arch/arm64/kvm/hyp.S
index c0094d520dff..3c79a1124af2 100644
--- a/arch/arm64/kvm/hyp.S
+++ b/arch/arm64/kvm/hyp.S
@@ -28,7 +28,7 @@
  * and is used to implement hyp stubs in the same way as in
  * arch/arm64/kernel/hyp_stub.S.
  */
-ENTRY(__kvm_call_hyp)
+SYM_FUNC_START(__kvm_call_hyp)
 	hvc	#0
 	ret
-ENDPROC(__kvm_call_hyp)
+SYM_FUNC_END(__kvm_call_hyp)
diff --git a/arch/arm64/kvm/hyp/fpsimd.S b/arch/arm64/kvm/hyp/fpsimd.S
index 78ff53225691..5b8ff517ff10 100644
--- a/arch/arm64/kvm/hyp/fpsimd.S
+++ b/arch/arm64/kvm/hyp/fpsimd.S
@@ -11,12 +11,12 @@
 	.text
 	.pushsection	.hyp.text, "ax"
 
-ENTRY(__fpsimd_save_state)
+SYM_FUNC_START(__fpsimd_save_state)
 	fpsimd_save	x0, 1
 	ret
-ENDPROC(__fpsimd_save_state)
+SYM_FUNC_END(__fpsimd_save_state)
 
-ENTRY(__fpsimd_restore_state)
+SYM_FUNC_START(__fpsimd_restore_state)
 	fpsimd_restore	x0, 1
 	ret
-ENDPROC(__fpsimd_restore_state)
+SYM_FUNC_END(__fpsimd_restore_state)
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index ffa68d5713f1..f7b0cb189b77 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -180,7 +180,7 @@ el2_error:
 	eret
 	sb
 
-ENTRY(__hyp_do_panic)
+SYM_FUNC_START(__hyp_do_panic)
 	mov	lr, #(PSR_F_BIT | PSR_I_BIT | PSR_A_BIT | PSR_D_BIT |\
 		      PSR_MODE_EL1h)
 	msr	spsr_el2, lr
@@ -188,18 +188,19 @@ ENTRY(__hyp_do_panic)
 	msr	elr_el2, lr
 	eret
 	sb
-ENDPROC(__hyp_do_panic)
+SYM_FUNC_END(__hyp_do_panic)
 
-ENTRY(__hyp_panic)
+SYM_CODE_START(__hyp_panic)
 	get_host_ctxt x0, x1
 	b	hyp_panic
-ENDPROC(__hyp_panic)
+SYM_CODE_END(__hyp_panic)
 
 .macro invalid_vector	label, target = __hyp_panic
 	.align	2
+SYM_CODE_START(\label)
 \label:
 	b \target
-ENDPROC(\label)
+SYM_CODE_END(\label)
 .endm
 
 	/* None of these should ever happen */
@@ -246,7 +247,7 @@ check_preamble_length 661b, 662b
 check_preamble_length 661b, 662b
 .endm
 
-ENTRY(__kvm_hyp_vector)
+SYM_CODE_START(__kvm_hyp_vector)
 	invalid_vect	el2t_sync_invalid	// Synchronous EL2t
 	invalid_vect	el2t_irq_invalid	// IRQ EL2t
 	invalid_vect	el2t_fiq_invalid	// FIQ EL2t
@@ -266,7 +267,7 @@ ENTRY(__kvm_hyp_vector)
 	valid_vect	el1_irq			// IRQ 32-bit EL1
 	invalid_vect	el1_fiq_invalid		// FIQ 32-bit EL1
 	valid_vect	el1_error		// Error 32-bit EL1
-ENDPROC(__kvm_hyp_vector)
+SYM_CODE_END(__kvm_hyp_vector)
 
 #ifdef CONFIG_KVM_INDIRECT_VECTORS
 .macro hyp_ventry
@@ -311,15 +312,18 @@ alternative_cb_end
 .endm
 
 	.align	11
-ENTRY(__bp_harden_hyp_vecs_start)
+SYM_CODE_START_NOALIGN(__bp_harden_hyp_vecs)
+SYM_INNER_LABEL(__bp_harden_hyp_vecs_start, SYM_L_GLOBAL)
 	.rept BP_HARDEN_EL2_SLOTS
 	generate_vectors
 	.endr
-ENTRY(__bp_harden_hyp_vecs_end)
+SYM_INNER_LABEL(__bp_harden_hyp_vecs_end, SYM_L_GLOBAL)
+SYM_CODE_END(__bp_harden_hyp_vecs)
 
 	.popsection
 
-ENTRY(__smccc_workaround_1_smc_start)
+SYM_CODE_START(__smccc_workaround_1_smc)
+SYM_INNER_LABEL(__smccc_workaround_1_smc_start, SYM_L_GLOBAL)
 	esb
 	sub	sp, sp, #(8 * 4)
 	stp	x2, x3, [sp, #(8 * 0)]
@@ -329,5 +333,6 @@ ENTRY(__smccc_workaround_1_smc_start)
 	ldp	x2, x3, [sp, #(8 * 0)]
 	ldp	x0, x1, [sp, #(8 * 2)]
 	add	sp, sp, #(8 * 4)
-ENTRY(__smccc_workaround_1_smc_end)
+SYM_INNER_LABEL(__smccc_workaround_1_smc_end, SYM_L_GLOBAL)
+SYM_CODE_END(__smccc_workaround_1_smc)
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
