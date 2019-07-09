Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32274635BF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abc4lDI9asU1yhzcLhTyF0GWatFz2xzAhzIJZMqpBi8=; b=lcVQ/llEg+fJDr
	TUwNVjsiDo2JBP2ULQBsp1i6CtEwZth5F9OS+v1L/b4J10P0DlWVx+lHUMQOl6wNr+XWgsQnAWUCK
	Fn/WraRyxatfbifaxzRW6YrDRwVWAU4QABh5naV/ZrlnI8rclcsCZ05jeHkd1E+kubo+ERWj/aWpb
	mI2ZbHZLth6+AEh+nB+sqFJiAiJf7bgnM5sFXe2m4aeZZQbrhX7oPhQ5vjgFQI+RNIkEBIc0c4+dw
	DQSOVN27NGxF5wMZBpQl6MG7t3ItmGrLBuxH1PTYA6U6pezayxZs7wK8Z7YmmNJwHJOQ9x2GzFG2r
	rnjfxkCEJJ3oFKyeZJ0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpCP-000719-Rx; Tue, 09 Jul 2019 12:26:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBV-0006SE-7i
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A59ACFC;
 Tue,  9 Jul 2019 05:25:24 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5F1B33F59C;
 Tue,  9 Jul 2019 05:25:22 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 02/18] KVM: arm64: Abstract the size of the HYP vectors
 pre-amble
Date: Tue,  9 Jul 2019 13:24:51 +0100
Message-Id: <20190709122507.214494-3-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052525_361316_593662B6 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

The EL2 vector hardening feature causes KVM to generate vectors for
each type of CPU present in the system. The generated sequences already
do some of the early guest-exit work (i.e. saving registers). To avoid
duplication the generated vectors branch to the original vector just
after the preamble. This size is hard coded.

Adding new instructions to the HYP vector causes strange side effects,
which are difficult to debug as the affected code is patched in at
runtime.

Add KVM_VECTOR_PREAMBLE to tell kvm_patch_vector_branch() how big
the preamble is. The valid_vect macro can then validate this at
build time.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_asm.h |  6 ++++++
 arch/arm64/kvm/hyp/hyp-entry.S   | 18 +++++++++++++++++-
 arch/arm64/kvm/va_layout.c       |  7 +++----
 3 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 2ca437ef59fa..388e1b520618 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -30,6 +30,12 @@
 	{ARM_EXCEPTION_TRAP, 		"TRAP"		},	\
 	{ARM_EXCEPTION_HYP_GONE,	"HYP_GONE"	}
 
+/*
+ * Size of the HYP vectors preamble. kvm_patch_vector_branch() generates code
+ * that jumps over this.
+ */
+#define KVM_VECTOR_PREAMBLE	(1 * AARCH64_INSN_SIZE)
+
 #ifndef __ASSEMBLY__
 
 #include <linux/mm.h>
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index b8e045615961..318a2f3996fc 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -216,17 +216,32 @@ ENDPROC(\label)
 
 	.align 11
 
+.macro check_preamble_length start, end
+/* kvm_patch_vector_branch() generates code that jumps over the preamble. */
+.if ((\end-\start) != KVM_VECTOR_PREAMBLE)
+	.error "KVM vector preamble length mismatch"
+.endif
+.endm
+
 .macro valid_vect target
 	.align 7
+661:
 	stp	x0, x1, [sp, #-16]!
+662:
 	b	\target
+
+check_preamble_length 661b, 662b
 .endm
 
 .macro invalid_vect target
 	.align 7
+661:
 	b	\target
+662:
 	ldp	x0, x1, [sp], #16
 	b	\target
+
+check_preamble_length 661b, 662b
 .endm
 
 ENTRY(__kvm_hyp_vector)
@@ -271,7 +286,8 @@ ENDPROC(__kvm_hyp_vector)
  * movk	x0, #((addr >> 32) & 0xffff), lsl #32
  * br	x0
  *
- * Where addr = kern_hyp_va(__kvm_hyp_vector) + vector-offset + 4.
+ * Where:
+ * addr = kern_hyp_va(__kvm_hyp_vector) + vector-offset + KVM_VECTOR_PREAMBLE.
  * See kvm_patch_vector_branch for details.
  */
 alternative_cb	kvm_patch_vector_branch
diff --git a/arch/arm64/kvm/va_layout.c b/arch/arm64/kvm/va_layout.c
index 2947ab1b0fa5..acd8084f1f2c 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -170,11 +170,10 @@ void kvm_patch_vector_branch(struct alt_instr *alt,
 	addr |= ((u64)origptr & GENMASK_ULL(10, 7));
 
 	/*
-	 * Branch to the second instruction in the vectors in order to
-	 * avoid the initial store on the stack (which we already
-	 * perform in the hardening vectors).
+	 * Branch over the preamble in order to avoid the initial store on
+	 * the stack (which we already perform in the hardening vectors).
 	 */
-	addr += AARCH64_INSN_SIZE;
+	addr += KVM_VECTOR_PREAMBLE;
 
 	/* stp x0, x1, [sp, #-16]! */
 	insn = aarch64_insn_gen_load_store_pair(AARCH64_INSN_REG_0,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
