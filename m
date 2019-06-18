Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928CF4A50D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cVQQaFA3Em5iPp0An+Re7kien7DimFE+vHcE8SlMFE=; b=RfmmXlaeMpoLT9
	cZXC606FIs3/Xtfz6FIC0gjsCw4nR1DMhjZPjiCBKqjbSfeWTutoH0c/yRTaDtEmJFokAzu+PdU0r
	/d2Bkp9eOV/pkRQ1MI2+x/txUzt8IXdbCXHjLW24p63T7Y+PHLLceer6QSUVwvJeS28vK6K+1PtZr
	4Vrnv1F3+aEyVSHwFnU2K80IphFqJHsGP7pUyRf5mLF+FdZ8Y6gYATTu6dhwesvWSoSnxc2BShOJo
	3oxJRPDfyEHQstM/8bNMGkldFSTBNpn/JQgnMqA05HE15QXX8l52i/D+Nuk7ifmc+0TrtcrfCaccZ
	RvN4ddGwYaote3jN9jvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFst-000363-Em; Tue, 18 Jun 2019 15:18:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFrz-0002bk-HV
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:18:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D32652B;
 Tue, 18 Jun 2019 08:17:58 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF45E3F718;
 Tue, 18 Jun 2019 08:17:57 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 2/6] KVM: arm64: Abstract the size of the HYP vectors
 pre-amble
Date: Tue, 18 Jun 2019 16:17:34 +0100
Message-Id: <20190618151738.258983-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618151738.258983-1-james.morse@arm.com>
References: <20190618151738.258983-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_081759_795991_7D71BE56 
X-CRM114-Status: GOOD (  13.47  )
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

---
Changes since v1:
 * Use AARCH64_INSN_SIZE
 * Add preamble build check to invalid_vect too
---
 arch/arm64/include/asm/kvm_asm.h |  6 ++++++
 arch/arm64/kvm/hyp/hyp-entry.S   | 18 +++++++++++++++++-
 arch/arm64/kvm/va_layout.c       |  7 +++----
 3 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index ff73f5462aca..96c2d79063aa 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -41,6 +41,12 @@
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
index 2b1e686772bf..c7f9d5e271a9 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -227,17 +227,32 @@ ENDPROC(\label)
 
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
@@ -282,7 +297,8 @@ ENDPROC(__kvm_hyp_vector)
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
index c712a7376bc1..58b3a91db892 100644
--- a/arch/arm64/kvm/va_layout.c
+++ b/arch/arm64/kvm/va_layout.c
@@ -181,11 +181,10 @@ void kvm_patch_vector_branch(struct alt_instr *alt,
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
