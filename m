Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47929120038
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:49:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wDOO0yjxJtiYQRvDpr1LifFxsQIvdqTPtYbdQwRyLfU=; b=ajK9iXmOWNzlYnd88vA5Dr2kHE
	4z49hogfaeLr2PXzIm2/CCqUlKC4KVE42dGUkBjj6iqh/DJZ2PnuDWGoUvXYedTJr4fTvDmYmTvUg
	ZfvoleBkUEraKFg5I5q3XIxfiYll6Hi4pb6lo6FnzzGRPCjueKtvCuyJNDTJx6rZqIewu3ycX3VW6
	3vbWs6/+onsCOaMUtH0iJsHMgolFRZyElI/PPOlYbir4sMq48gscodCWsQUd+TWnanpuewTXzKUMN
	mjm8nV7i4Bq8oOFVmiAtMTJS2CvrI99QlCrxh4DI4Erd+ZM/znw5wsuhX2OPvAqGrFf+P5oibbr5G
	anHZhFgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm4A-0005Qi-Aq; Mon, 16 Dec 2019 08:49:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm2e-0004Hu-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:47:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D5B31045;
 Mon, 16 Dec 2019 00:47:47 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BD9A23F6CF;
 Mon, 16 Dec 2019 00:50:58 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 03/16] arm64: install user ptrauth keys at kernel exit time
Date: Mon, 16 Dec 2019 14:17:05 +0530
Message-Id: <1576486038-9899-4-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004748_776690_CA68D98A 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, Mark Brown <Mark.Brown@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kristina Martsenko <kristina.martsenko@arm.com>

As we're going to enable pointer auth within the kernel and use a
different APIAKey for the kernel itself, so move the user APIAKey
switch to EL0 exception return.

The other 4 keys could remain switched during task switch, but are also
moved to keep things consistent.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: commit msg, re-positioned the patch]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
 * This patch is now placed after "arm64: rename ptrauth key structures to
   be user-specific" to avoid un-necessary code churnings.

 arch/arm64/include/asm/asm_pointer_auth.h | 45 +++++++++++++++++++++++++++++++
 arch/arm64/include/asm/pointer_auth.h     | 23 +---------------
 arch/arm64/kernel/asm-offsets.c           | 11 ++++++++
 arch/arm64/kernel/entry.S                 |  3 +++
 arch/arm64/kernel/pointer_auth.c          |  3 ---
 arch/arm64/kernel/process.c               |  1 -
 6 files changed, 60 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
new file mode 100644
index 0000000..3d39788
--- /dev/null
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_ASM_POINTER_AUTH_H
+#define __ASM_ASM_POINTER_AUTH_H
+
+#include <asm/alternative.h>
+#include <asm/asm-offsets.h>
+#include <asm/cpufeature.h>
+#include <asm/sysreg.h>
+
+#ifdef CONFIG_ARM64_PTR_AUTH
+
+	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
+	mov	\tmp1, #THREAD_KEYS_USER
+	add	\tmp1, \tsk, \tmp1
+alternative_if_not ARM64_HAS_ADDRESS_AUTH
+	b	.Laddr_auth_skip_\@
+alternative_else_nop_endif
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIA]
+	msr_s	SYS_APIAKEYLO_EL1, \tmp2
+	msr_s	SYS_APIAKEYHI_EL1, \tmp3
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APIB]
+	msr_s	SYS_APIBKEYLO_EL1, \tmp2
+	msr_s	SYS_APIBKEYHI_EL1, \tmp3
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDA]
+	msr_s	SYS_APDAKEYLO_EL1, \tmp2
+	msr_s	SYS_APDAKEYHI_EL1, \tmp3
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APDB]
+	msr_s	SYS_APDBKEYLO_EL1, \tmp2
+	msr_s	SYS_APDBKEYHI_EL1, \tmp3
+.Laddr_auth_skip_\@:
+alternative_if ARM64_HAS_GENERIC_AUTH
+	ldp	\tmp2, \tmp3, [\tmp1, #PTRAUTH_USER_KEY_APGA]
+	msr_s	SYS_APGAKEYLO_EL1, \tmp2
+	msr_s	SYS_APGAKEYHI_EL1, \tmp3
+alternative_else_nop_endif
+	.endm
+
+#else /* CONFIG_ARM64_PTR_AUTH */
+
+	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
+	.endm
+
+#endif /* CONFIG_ARM64_PTR_AUTH */
+
+#endif /* __ASM_ASM_POINTER_AUTH_H */
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 799b079..dabe026 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -50,19 +50,6 @@ do {								\
 	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
 } while (0)
 
-static inline void ptrauth_keys_switch_user(struct ptrauth_keys_user *keys)
-{
-	if (system_supports_address_auth()) {
-		__ptrauth_key_install(APIA, keys->apia);
-		__ptrauth_key_install(APIB, keys->apib);
-		__ptrauth_key_install(APDA, keys->apda);
-		__ptrauth_key_install(APDB, keys->apdb);
-	}
-
-	if (system_supports_generic_auth())
-		__ptrauth_key_install(APGA, keys->apga);
-}
-
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
 /*
@@ -78,20 +65,12 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 }
 
 #define ptrauth_thread_init_user(tsk)					\
-do {									\
-	struct task_struct *__ptiu_tsk = (tsk);				\
-	ptrauth_keys_init_user(&__ptiu_tsk->thread.keys_user);		\
-	ptrauth_keys_switch_user(&__ptiu_tsk->thread.keys_user);		\
-} while (0)
-
-#define ptrauth_thread_switch(tsk)	\
-	ptrauth_keys_switch_user(&(tsk)->thread.keys_user)
+	ptrauth_keys_init_user(&(tsk)->thread.keys_user)
 
 #else /* CONFIG_ARM64_PTR_AUTH */
 #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
 #define ptrauth_strip_insn_pac(lr)	(lr)
 #define ptrauth_thread_init_user(tsk)
-#define ptrauth_thread_switch(tsk)
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
 #endif /* __ASM_POINTER_AUTH_H */
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index a5bdce8..7b1ea2a 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -40,6 +40,9 @@ int main(void)
 #endif
   BLANK();
   DEFINE(THREAD_CPU_CONTEXT,	offsetof(struct task_struct, thread.cpu_context));
+#ifdef CONFIG_ARM64_PTR_AUTH
+  DEFINE(THREAD_KEYS_USER,	offsetof(struct task_struct, thread.keys_user));
+#endif
   BLANK();
   DEFINE(S_X0,			offsetof(struct pt_regs, regs[0]));
   DEFINE(S_X2,			offsetof(struct pt_regs, regs[2]));
@@ -128,5 +131,13 @@ int main(void)
   DEFINE(SDEI_EVENT_INTREGS,	offsetof(struct sdei_registered_event, interrupted_regs));
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
 #endif
+#ifdef CONFIG_ARM64_PTR_AUTH
+  DEFINE(PTRAUTH_USER_KEY_APIA,		offsetof(struct ptrauth_keys_user, apia));
+  DEFINE(PTRAUTH_USER_KEY_APIB,		offsetof(struct ptrauth_keys_user, apib));
+  DEFINE(PTRAUTH_USER_KEY_APDA,		offsetof(struct ptrauth_keys_user, apda));
+  DEFINE(PTRAUTH_USER_KEY_APDB,		offsetof(struct ptrauth_keys_user, apdb));
+  DEFINE(PTRAUTH_USER_KEY_APGA,		offsetof(struct ptrauth_keys_user, apga));
+  BLANK();
+#endif
   return 0;
 }
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 7c6a0a4..18067bb 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -14,6 +14,7 @@
 #include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/asm-offsets.h>
+#include <asm/asm_pointer_auth.h>
 #include <asm/cpufeature.h>
 #include <asm/errno.h>
 #include <asm/esr.h>
@@ -344,6 +345,8 @@ alternative_else_nop_endif
 	msr	cntkctl_el1, x1
 4:
 #endif
+	ptrauth_keys_install_user tsk, x0, x1, x2
+
 	apply_ssbd 0, x0, x1
 	.endif
 
diff --git a/arch/arm64/kernel/pointer_auth.c b/arch/arm64/kernel/pointer_auth.c
index af5a638..1e77736 100644
--- a/arch/arm64/kernel/pointer_auth.c
+++ b/arch/arm64/kernel/pointer_auth.c
@@ -19,7 +19,6 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
 
 	if (!arg) {
 		ptrauth_keys_init_user(keys);
-		ptrauth_keys_switch_user(keys);
 		return 0;
 	}
 
@@ -41,7 +40,5 @@ int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg)
 	if (arg & PR_PAC_APGAKEY)
 		get_random_bytes(&keys->apga, sizeof(keys->apga));
 
-	ptrauth_keys_switch_user(keys);
-
 	return 0;
 }
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788c..3716528 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -505,7 +505,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	contextidr_thread_switch(next);
 	entry_task_switch(next);
 	uao_thread_switch(next);
-	ptrauth_thread_switch(next);
 	ssbs_thread_switch(next);
 
 	/*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
