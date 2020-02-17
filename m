Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07152160E81
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pdHppttE3CJ/YU1CQ3kyO6Cbo3wNSwLFVakFaYw3Ya4=; b=IuNyvf54D9AxO7Xa1X+WbJnu9M
	0oBzPRPH2RrV8Vh8ESWklCjBP8ahJG8vaoF+nT8E+VdzPmZuAC7uuM6LXZpaMrlfBqeQCchlY6hLz
	DvRqF260KvZRfj8JEKpXTTcx5Z0StQu4dWc6gEEyTIFsGbk7ObBteqpg78kCBPy+fc22mVE8MxMtD
	P8EwkjgKgjZPkSf2zTLRkarA2fz6SjPwrWdkaDms6TirYQyF5YjO4EBQUBcyeQ3nPNvbLKto7c8NT
	OJ7EaBDd2C56kTwQxQN0qDVm3W/3gtcUFvG4rdYyc52jQLu7RoXwtCSeQrxEIKQMwBC795dJWuk1P
	ZP0TuOXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cic-0006gk-PQ; Mon, 17 Feb 2020 09:29:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3chT-0005sT-Aa
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:28:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A74E30E;
 Mon, 17 Feb 2020 01:28:22 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 440723F6CF;
 Mon, 17 Feb 2020 01:28:18 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 04/17] arm64: install user ptrauth keys at kernel exit time
Date: Mon, 17 Feb 2020 14:57:35 +0530
Message-Id: <1581931668-11559-5-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012823_537764_552DC98A 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
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
[Amit: commit msg, re-positioned the patch, comments]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/include/asm/asm_pointer_auth.h | 49 +++++++++++++++++++++++++++++++
 arch/arm64/include/asm/pointer_auth.h     | 23 +--------------
 arch/arm64/kernel/asm-offsets.c           | 11 +++++++
 arch/arm64/kernel/entry.S                 |  3 ++
 arch/arm64/kernel/pointer_auth.c          |  3 --
 arch/arm64/kernel/process.c               |  1 -
 6 files changed, 64 insertions(+), 26 deletions(-)
 create mode 100644 arch/arm64/include/asm/asm_pointer_auth.h

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
new file mode 100644
index 0000000..f820a13
--- /dev/null
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -0,0 +1,49 @@
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
+/*
+ * thread.keys_user.ap* as offset exceeds the #imm offset range
+ * so use the base value of ldp as thread.keys_user and offset as
+ * keys_user.ap*.
+ */
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
index 9461d81..684e475 100644
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
@@ -341,6 +342,8 @@ alternative_else_nop_endif
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
index 0062605..6140e79 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -512,7 +512,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
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
