Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DA3163199
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6Wl3XJNyThhbuMdhyVQh6O4olNrEY2TABH0t1L3+iE=; b=GiN97Bb5eFrlq6
	9xppgutZllJUnYLKmo6tECn/qpMubgA5wnD0delsVHYamCm0FjMnqYJhZ6xuitfHFMggtLpgO4Bld
	O6POCS4h+B7HE3lxCT20OZL0Dqjab9CPQMnvfugK3E6o9SmsoK5C4oXzW4JgNAapAaCJYsnnfymC1
	acA3Q40wHLqc80fyA3pUyHJmRJtqBGfDFTQDy3hfie8bDlC7XvP4yqI7ff/MTlCVi65WbislMPwGZ
	MyNjAduUMFbOo9fJTCzjkaS7IpJPpsUonv12YDQZkVUxxNPjVyshubHGcpk7qN6SbJK5gf6+VIKlC
	ebE6uvJVifZk+20StQpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j495L-0002UE-Cp; Tue, 18 Feb 2020 20:03:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j491j-0005rG-S3
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:59:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 673131045;
 Tue, 18 Feb 2020 11:59:27 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE5963F68F;
 Tue, 18 Feb 2020 11:59:26 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH 15/18] arm64: kvm: Modernize __smccc_workaround_1_smc_start
 annotations
Date: Tue, 18 Feb 2020 19:58:39 +0000
Message-Id: <20200218195842.34156-16-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218195842.34156-1-broonie@kernel.org>
References: <20200218195842.34156-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_115928_009283_7DCE08E3 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In an effort to clarify and simplify the annotation of assembly functions
in the kernel new macros have been introduced. These replace ENTRY and
ENDPROC with separate annotations for standard C callable functions,
data and code with different calling conventions.

Using these for __smccc_workaround_1_smc is more involved than for most
symbols as this symbol is annotated quite unusually, rather than just have
the explicit symbol we define _start and _end symbols which we then use to
compute the length. This does not play at all nicely with the new style
macros. Instead define a constant for the size of the function and use that
in both the C code and for .org based size checks in the assembly code.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/kvm_asm.h |  4 ++++
 arch/arm64/kernel/cpu_errata.c   | 14 ++++++--------
 arch/arm64/kvm/hyp/hyp-entry.S   |  6 ++++--
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 44a243754c1b..7c7eeeaab9fa 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -36,6 +36,8 @@
  */
 #define KVM_VECTOR_PREAMBLE	(2 * AARCH64_INSN_SIZE)
 
+#define __SMCCC_WORKAROUND_1_SMC_SZ 36
+
 #ifndef __ASSEMBLY__
 
 #include <linux/mm.h>
@@ -75,6 +77,8 @@ extern void __vgic_v3_init_lrs(void);
 
 extern u32 __kvm_get_mdcr_el2(void);
 
+extern char __smccc_workaround_1_smc[__SMCCC_WORKAROUND_1_SMC_SZ];
+
 /* Home-grown __this_cpu_{ptr,read} variants that always work at HYP */
 #define __hyp_this_cpu_ptr(sym)						\
 	({								\
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 0af2201cefda..6a2ca339741c 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -11,6 +11,7 @@
 #include <asm/cpu.h>
 #include <asm/cputype.h>
 #include <asm/cpufeature.h>
+#include <asm/kvm_asm.h>
 #include <asm/smp_plat.h>
 
 static bool __maybe_unused
@@ -113,9 +114,6 @@ atomic_t arm64_el2_vector_last_slot = ATOMIC_INIT(-1);
 DEFINE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);
 
 #ifdef CONFIG_KVM_INDIRECT_VECTORS
-extern char __smccc_workaround_1_smc_start[];
-extern char __smccc_workaround_1_smc_end[];
-
 static void __copy_hyp_vect_bpi(int slot, const char *hyp_vecs_start,
 				const char *hyp_vecs_end)
 {
@@ -163,9 +161,6 @@ static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 	raw_spin_unlock(&bp_lock);
 }
 #else
-#define __smccc_workaround_1_smc_start		NULL
-#define __smccc_workaround_1_smc_end		NULL
-
 static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 				      const char *hyp_vecs_start,
 				      const char *hyp_vecs_end)
@@ -239,11 +234,14 @@ static int detect_harden_bp_fw(void)
 		smccc_end = NULL;
 		break;
 
+#if IS_ENABLED(CONFIG_KVM_ARM_HOST)
 	case SMCCC_CONDUIT_SMC:
 		cb = call_smc_arch_workaround_1;
-		smccc_start = __smccc_workaround_1_smc_start;
-		smccc_end = __smccc_workaround_1_smc_end;
+		smccc_start = __smccc_workaround_1_smc;
+		smccc_end = __smccc_workaround_1_smc +
+			__SMCCC_WORKAROUND_1_SMC_SZ;
 		break;
+#endif
 
 	default:
 		return -1;
diff --git a/arch/arm64/kvm/hyp/hyp-entry.S b/arch/arm64/kvm/hyp/hyp-entry.S
index 1e2ab928a92f..c2a13ab3c471 100644
--- a/arch/arm64/kvm/hyp/hyp-entry.S
+++ b/arch/arm64/kvm/hyp/hyp-entry.S
@@ -322,7 +322,7 @@ SYM_CODE_END(__bp_harden_hyp_vecs)
 
 	.popsection
 
-ENTRY(__smccc_workaround_1_smc_start)
+SYM_CODE_START(__smccc_workaround_1_smc)
 	esb
 	sub	sp, sp, #(8 * 4)
 	stp	x2, x3, [sp, #(8 * 0)]
@@ -332,5 +332,7 @@ ENTRY(__smccc_workaround_1_smc_start)
 	ldp	x2, x3, [sp, #(8 * 0)]
 	ldp	x0, x1, [sp, #(8 * 2)]
 	add	sp, sp, #(8 * 4)
-ENTRY(__smccc_workaround_1_smc_end)
+1:	.org __smccc_workaround_1_smc + __SMCCC_WORKAROUND_1_SMC_SZ
+	.org 1b
+SYM_CODE_END(__smccc_workaround_1_smc)
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
