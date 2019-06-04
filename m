Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908CD34AC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdrFrvf5UecItmA8G3HhLnqJ5sTgTuPEnA6PUMgEmtg=; b=YmDYlDE60sF3iD
	Qb4OAucR3UClEPWRy9JI3BlHmk9jeyyp5WRan0bV8o1Z7nbo1yZMHBRchlKFdqnDDTvUqnWFMf/Ou
	uI54AFa6ig2C2IMAmD57/agfqBqFUaE2FHvX3EdMBIxOtFE2IYqLq8Cv6Qly5Ce/8k3nkZZR0tX99
	iGRxDut3apTxrZLcJ17fLVhOEq/xaS3Ii8XS79ZRtt1GJxlC2MDXbWF9tnuEKMyo7n46WdcRv/Fzs
	9YiecNdhief2vX8+DrRx//KvUNroE1iB4+6YDnhcnkavV6yal2bvtEeMy4dRJuJZr1vkZpjeiew/L
	q8PoSoinIL/mRJUlz79A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAi2-000707-Vx; Tue, 04 Jun 2019 14:46:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAhm-0006sO-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:46:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 21AE3341;
 Tue,  4 Jun 2019 07:46:26 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9BD733F690;
 Tue,  4 Jun 2019 07:46:24 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v1 1/6] KVM: arm64: Abstract the size of the HYP vectors
 pre-amble
Date: Tue,  4 Jun 2019 15:45:46 +0100
Message-Id: <20190604144551.188107-2-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604144551.188107-1-james.morse@arm.com>
References: <20190604144551.188107-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074626_559421_18A26196 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/kvm_asm.h |  6 ++++++
 arch/arm64/kvm/hyp/hyp-entry.S   | 10 +++++++++-
 arch/arm64/kvm/va_layout.c       |  7 +++----
 3 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index ff73f5462aca..9170c43b332f 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -41,6 +41,12 @@
 	{ARM_EXCEPTION_TRAP, 		"TRAP"		},	\
 	{ARM_EXCEPTION_HYP_GONE,	"HYP_GONE"	}
 
+/*
+ * Size of the HYP vectors preamble. kvm_patch_vector_branch() generates code
+ * that jumps over this.
+ */
+#define KVM_VECTOR_PREAMBLE	4
+
 #ifndef __ASSEMBLY__
 
 #include <linux/mm.h>
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 2b1e686772bf..914036e6b6d7 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -229,8 +229,15 @@ ENDPROC(\label)
 
 .macro valid_vect target
 	.align 7
+661:
 	stp	x0, x1, [sp, #-16]!
+662:
 	b	\target
+
+/* kvm_patch_vector_branch() generates code that jumps over the preamble. */
+.if ((662b-661b) != KVM_VECTOR_PREAMBLE)
+	.error "KVM vector preamble length mismatch"
+.endif
 .endm
 
 .macro invalid_vect target
@@ -282,7 +289,8 @@ ENDPROC(__kvm_hyp_vector)
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
