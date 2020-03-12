Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6421F182C9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:40:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NXmWQ1BnHorhykVL7wrZqHNoI3y8yIRLM1wICnUJncU=; b=cKP5vfkJPXd/YU
	4YZG3iY1VrnTD4fTsH6ajx93Hz+e8z/Neq79KqawCteid9IyXl8C0iX36oPxJiVSnldiu8+qGGhPm
	Blg2gwG/VmaprCprM7oE+u11ed4r5ABTIkUxRZD7eGgpA10DLuHLI6239sjhQzDwcNudEjX86fMRA
	jyjmbcZURaAsFDT3Hznqf+Lh2xIyh16+0tw6FsNjbS5yXJfy1pTQQuOC7uzOWoA4pkkHzpiVIJ2v2
	CKED1FNzdT9sOgbYipqAdeNrR1lnquGrGqMrEslo/T9JCAWR/Zr4Pl+kNorDurqoKYNYdtS0TNrNe
	VuhfIFBATjNKjzj6qzYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCKKO-000599-JZ; Thu, 12 Mar 2020 09:40:32 +0000
Received: from poy.remlab.net ([2001:41d0:2:5a1a::]
 helo=ns207790.ip-94-23-215.eu)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCKK7-00055X-Uq
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:40:17 +0000
Received: from basile.remlab.net (ip6-localhost [IPv6:::1])
 by ns207790.ip-94-23-215.eu (Postfix) with ESMTP id C0BB35FE21;
 Thu, 12 Mar 2020 10:40:14 +0100 (CET)
From: =?UTF-8?q?R=C3=A9mi=20Denis-Courmont?= <remi@remlab.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: use mov_q instead of literal ldr
Date: Thu, 12 Mar 2020 11:40:14 +0200
Message-Id: <20200312094014.153356-1-remi@remlab.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_024016_225285_3794B40C 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, catalin.marinas@arm.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>

In practice, this requires only 2 instructions, or even only 1 for
the idmap_pg_dir size (with 4 or 64 KiB pages). Only the MAIR values
needed more than 2 instructions and it was already converted to mov_q
by 95b3f74bec203804658e17f86fe20755bb8abcb9.

Signed-off-by: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
---
 arch/arm64/kernel/cpu-reset.S       |  2 +-
 arch/arm64/kernel/hyp-stub.S        |  2 +-
 arch/arm64/kernel/relocate_kernel.S |  4 +---
 arch/arm64/kvm/hyp-init.S           | 10 ++++------
 arch/arm64/mm/proc.S                |  2 +-
 5 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 32c7bf858dd9..38087b4c0432 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -32,7 +32,7 @@
 ENTRY(__cpu_soft_restart)
 	/* Clear sctlr_el1 flags. */
 	mrs	x12, sctlr_el1
-	ldr	x13, =SCTLR_ELx_FLAGS
+	mov_q	x13, SCTLR_ELx_FLAGS
 	bic	x12, x12, x13
 	pre_disable_mmu_workaround
 	msr	sctlr_el1, x12
diff --git a/arch/arm64/kernel/hyp-stub.S b/arch/arm64/kernel/hyp-stub.S
index 73d46070b315..e473ead806ed 100644
--- a/arch/arm64/kernel/hyp-stub.S
+++ b/arch/arm64/kernel/hyp-stub.S
@@ -63,7 +63,7 @@ el1_sync:
 	beq	9f				// Nothing to reset!
 
 	/* Someone called kvm_call_hyp() against the hyp-stub... */
-	ldr	x0, =HVC_STUB_ERR
+	mov_q	x0, HVC_STUB_ERR
 	eret
 
 9:	mov	x0, xzr
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..c40ce496c78b 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -41,7 +41,7 @@ ENTRY(arm64_relocate_new_kernel)
 	cmp	x0, #CurrentEL_EL2
 	b.ne	1f
 	mrs	x0, sctlr_el2
-	ldr	x1, =SCTLR_ELx_FLAGS
+	mov_q	x1, SCTLR_ELx_FLAGS
 	bic	x0, x0, x1
 	pre_disable_mmu_workaround
 	msr	sctlr_el2, x0
@@ -113,8 +113,6 @@ ENTRY(arm64_relocate_new_kernel)
 
 ENDPROC(arm64_relocate_new_kernel)
 
-.ltorg
-
 .align 3	/* To keep the 64-bit values below naturally aligned. */
 
 .Lcopy_end:
diff --git a/arch/arm64/kvm/hyp-init.S b/arch/arm64/kvm/hyp-init.S
index 84f32cf5abc7..6e6ed5581eed 100644
--- a/arch/arm64/kvm/hyp-init.S
+++ b/arch/arm64/kvm/hyp-init.S
@@ -60,7 +60,7 @@ alternative_else_nop_endif
 	msr	ttbr0_el2, x4
 
 	mrs	x4, tcr_el1
-	ldr	x5, =TCR_EL2_MASK
+	mov_q	x5, TCR_EL2_MASK
 	and	x4, x4, x5
 	mov	x5, #TCR_EL2_RES1
 	orr	x4, x4, x5
@@ -102,7 +102,7 @@ alternative_else_nop_endif
 	 * as well as the EE bit on BE. Drop the A flag since the compiler
 	 * is allowed to generate unaligned accesses.
 	 */
-	ldr	x4, =(SCTLR_EL2_RES1 | (SCTLR_ELx_FLAGS & ~SCTLR_ELx_A))
+	mov_q	x4, (SCTLR_EL2_RES1 | (SCTLR_ELx_FLAGS & ~SCTLR_ELx_A))
 CPU_BE(	orr	x4, x4, #SCTLR_ELx_EE)
 	msr	sctlr_el2, x4
 	isb
@@ -142,7 +142,7 @@ reset:
 	 * case we coming via HVC_SOFT_RESTART.
 	 */
 	mrs	x5, sctlr_el2
-	ldr	x6, =SCTLR_ELx_FLAGS
+	mov_q	x6, SCTLR_ELx_FLAGS
 	bic	x5, x5, x6		// Clear SCTL_M and etc
 	pre_disable_mmu_workaround
 	msr	sctlr_el2, x5
@@ -155,11 +155,9 @@ reset:
 	eret
 
 1:	/* Bad stub call */
-	ldr	x0, =HVC_STUB_ERR
+	mov_q	x0, HVC_STUB_ERR
 	eret
 
 SYM_CODE_END(__kvm_handle_stub_hvc)
 
-	.ltorg
-
 	.popsection
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 1b871f141eb4..6bd228067ebc 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -411,7 +411,7 @@ SYM_FUNC_START(__cpu_setup)
 	 * Set/prepare TCR and TTBR. We use 512GB (39-bit) address range for
 	 * both user and kernel.
 	 */
-	ldr	x10, =TCR_TxSZ(VA_BITS) | TCR_CACHE_FLAGS | TCR_SMP_FLAGS | \
+	mov_q	x10, TCR_TxSZ(VA_BITS) | TCR_CACHE_FLAGS | TCR_SMP_FLAGS | \
 			TCR_TG_FLAGS | TCR_KASLR_FLAGS | TCR_ASID16 | \
 			TCR_TBI0 | TCR_A1 | TCR_KASAN_FLAGS
 	tcr_clear_errata_bits x10, x9, x5
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
