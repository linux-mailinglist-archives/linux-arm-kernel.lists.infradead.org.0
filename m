Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E2B3B95F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 18:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TC4ndhuFBN0G4gz9aF21mlNZk42i38IWod3QyZIfP9s=; b=Y9ESUv/KR4Bz2/
	2h3NX4G+RtHxEwnFLNFldW1gQlQpMR7+uph1RJNxBOqCY/guncSSj0toDnUr9KP7+2SomDGAhmO6i
	wQEJnBME5b5cAiApLvpNmsrF6CO3iqXHD+AaYXDnxm5NzXeJ36JE6o86UnoOmWQ8TaSneZYSIRahV
	aniU+RFzqQ5qENiVxKocDuWZ3rVBNjK6JIYQZ3H7/YfDl3bCGBBndmGU9UqWVtWMDO5+tc06+g3uf
	GFcYiBTwYTbKl9skDE34v+rm9eApQtoe/tbEDjlonnBEzRwHm8HR2Vobe7Dy56lvugcR0QIplu9ZZ
	jb92F7zAKaKGNfBU1r4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haN7T-0001ML-Uf; Mon, 10 Jun 2019 16:26:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haN6D-0007f1-Kj
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 16:24:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 30F73337;
 Mon, 10 Jun 2019 09:24:45 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 131743F246;
 Mon, 10 Jun 2019 09:24:43 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 4/6] KVM: arm64: Consume pending SError as early as possible
Date: Mon, 10 Jun 2019 17:24:25 +0100
Message-Id: <20190610162427.115910-5-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610162427.115910-1-james.morse@arm.com>
References: <20190610162427.115910-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_092445_843804_BE65B4F0 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On systems with v8.2 we switch the 'vaxorcism' of guest SError with an
alternative sequence that uses the ESB-instruction, then reads DISR_EL1.
This saves the unmasking and remasking of asyncronous exceptions.

We do this after we've saved the guest registers and restored the
host's. Any SError that becomes pending due to this will be accounted
to the guest, when it actually occurred during host-execution.

Move the ESB-instruction as early as possible. Any guest SError
will become pending due to this ESB-instruction and then consumed to
DISR_EL1 before the host touches anything.

This lets us account for host/guest SError precisely on the guest
exit exception boundary.

Because the ESB-instruction now lands in the preamble section of
the vectors, we need to add it to the unpatched indirect vectors
too, and to any sequence that may be patched in over the top.

The ESB-instruction always lives in the head of the vectors,
to be before any memory write. Whereas the register-store always
lives in the tail.

Signed-off-by: James Morse <james.morse@arm.com>
---
Changes since v1:
 * nop in the invalid vector, now that we check its size
 * esb in the unpatched head for
   ARM64_HARDEN_EL2_VECTORS && !_HARDEN_BRANCH_PREDICTOR

 arch/arm64/include/asm/kvm_asm.h | 2 +-
 arch/arm64/kvm/hyp/entry.S       | 5 ++---
 arch/arm64/kvm/hyp/hyp-entry.S   | 6 +++++-
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 96c2d79063aa..38b46ce1dfee 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -45,7 +45,7 @@
  * Size of the HYP vectors preamble. kvm_patch_vector_branch() generates code
  * that jumps over this.
  */
-#define KVM_VECTOR_PREAMBLE	(1 * AARCH64_INSN_SIZE)
+#define KVM_VECTOR_PREAMBLE	(2 * AARCH64_INSN_SIZE)
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/arm64/kvm/hyp/entry.S b/arch/arm64/kvm/hyp/entry.S
index 93ba3d7ef027..7863ec5266e2 100644
--- a/arch/arm64/kvm/hyp/entry.S
+++ b/arch/arm64/kvm/hyp/entry.S
@@ -138,8 +138,8 @@ ENTRY(__guest_exit)
 
 alternative_if ARM64_HAS_RAS_EXTN
 	// If we have the RAS extensions we can consume a pending error
-	// without an unmask-SError and isb.
-	esb
+	// without an unmask-SError and isb. The ESB-instruction consumed any
+	// pending guest error when we took the exception from the guest.
 	mrs_s	x2, SYS_DISR_EL1
 	str	x2, [x1, #(VCPU_FAULT_DISR - VCPU_CONTEXT)]
 	cbz	x2, 1f
@@ -157,7 +157,6 @@ alternative_else
 	mov	x5, x0
 
 	dsb	sy		// Synchronize against in-flight ld/st
-	nop
 	msr	daifclr, #4	// Unmask aborts
 alternative_endif
 
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 5f0412f124a3..8fbfac35f83f 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -237,6 +237,7 @@ ENDPROC(\label)
 .macro valid_vect target
 	.align 7
 661:
+	esb
 	stp	x0, x1, [sp, #-16]!
 662:
 	b	\target
@@ -248,6 +249,7 @@ check_preamble_length 661b, 662b
 	.align 7
 661:
 	b	\target
+	nop
 662:
 	ldp	x0, x1, [sp], #16
 	b	\target
@@ -280,7 +282,8 @@ ENDPROC(__kvm_hyp_vector)
 #ifdef CONFIG_KVM_INDIRECT_VECTORS
 .macro hyp_ventry
 	.align 7
-1:	.rept 27
+1:	esb
+	.rept 26
 	nop
 	.endr
 /*
@@ -328,6 +331,7 @@ ENTRY(__bp_harden_hyp_vecs_end)
 	.popsection
 
 ENTRY(__smccc_workaround_1_smc_start)
+	esb
 	sub	sp, sp, #(8 * 4)
 	stp	x2, x3, [sp, #(8 * 0)]
 	stp	x0, x1, [sp, #(8 * 2)]
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
