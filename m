Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F69120047
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 09:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3aR5HcGpPVU6d1FupwJcTReR+nDUYtODid9KLEEJ0io=; b=RlwDjVfD+tPcoEQdcGpOk5DFGc
	fHGi8MnjsIs7B3rWkCfFjOLCzXD+kZghJPuvT0GL/lcLX6vybxJtx+YvdsFoHNDEUP5pT5gGTugVf
	tDbuxOQytQhhQBCeMqKwzj2FaA/UdSlVHqZxmWH7eW1zgWkxOKDrwTXZ50Yq4Veh6bYg4/vVtOtWP
	mTmJQYPs6f4kHiQ48P/y4/YauG2LAnt3x3InAXtzOUy+hRwQe7qauO4LY4qFR+3EkZ/+btJCfcPL5
	tGsd5MR8YdVAMWBeJ50aInvsBtIaqedubvhdPmf4BSGuk6DzVrfINC8o942YOuKZwqlvTl7vRDZ8D
	qL3xksaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igm6F-0008Mx-OR; Mon, 16 Dec 2019 08:51:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igm35-0004a0-Co
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 08:48:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC2211007;
 Mon, 16 Dec 2019 00:48:14 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 28A2F3F6CF;
 Mon, 16 Dec 2019 00:51:25 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 09/16] arm64: mask PAC bits of __builtin_return_address
Date: Mon, 16 Dec 2019 14:17:11 +0530
Message-Id: <1576486038-9899-10-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
References: <1576486038-9899-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_004815_532793_D8A1EE03 
X-CRM114-Status: GOOD (  17.33  )
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

This redefines __builtin_return_address to mask pac bits
when Pointer Authentication is enabled. As __builtin_return_address
is used mostly used to refer to the caller function symbol address
so masking runtime generated pac bits will help to find the match.

This patch adds a new file (asm/compiler.h) and is transitively
included (via include/compiler_types.h) on the compiler command line
so it is guaranteed to be loaded and the users of this macro will
not find a wrong version.

A helper macro ptrauth_kernel_pac_mask is created for this purpose
and added in this file. A similar macro ptrauth_user_pac_mask exists
in pointer_auth.h and is now moved here for the sake of consistency.

This change fixes the utilities like cat /proc/vmallocinfo to show
correct symbol names.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* Moved pac mask macros from pointer_auth.h to asm/compiler.h as
  suggested by Ard.
* There was suggestion by Richard to use xpaclri/xpac instruction to
  clear the pack but this needs -march=armv8.3-a GCC option which
  also generates non-nops instruction like retaa and hence may
  break the backward compatibility. So it is left like earlier.

 arch/arm64/Kconfig                    |  1 +
 arch/arm64/include/asm/compiler.h     | 20 ++++++++++++++++++++
 arch/arm64/include/asm/pointer_auth.h | 13 +++++--------
 3 files changed, 26 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm64/include/asm/compiler.h

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 5aabe8a..06b5025 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -116,6 +116,7 @@ config ARM64
 	select HAVE_ALIGNED_STRUCT_PAGE if SLUB
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_BITREVERSE
+	select HAVE_ARCH_COMPILER_H
 	select HAVE_ARCH_HUGE_VMAP
 	select HAVE_ARCH_JUMP_LABEL
 	select HAVE_ARCH_JUMP_LABEL_RELATIVE
diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
new file mode 100644
index 0000000..3cb06f9
--- /dev/null
+++ b/arch/arm64/include/asm/compiler.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_COMPILER_H
+#define __ASM_COMPILER_H
+
+#if defined(CONFIG_ARM64_PTR_AUTH)
+
+/*
+ * The EL0/EL1 pointer bits used by a pointer authentication code.
+ * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
+ */
+#define ptrauth_user_pac_mask()		GENMASK_ULL(54, vabits_actual)
+#define ptrauth_kernel_pac_mask()	(GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS))
+
+#define __builtin_return_address(val)				\
+	(void *)((unsigned long)__builtin_return_address(val) |	\
+	ptrauth_kernel_pac_mask())
+
+#endif /* CONFIG_ARM64_PTR_AUTH */
+
+#endif /* __ASM_COMPILER_H */
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 0f89f59..ec33af3 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -68,16 +68,13 @@ static inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kernel *keys)
 
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
-/*
- * The EL0 pointer bits used by a pointer authentication code.
- * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
- */
-#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
-
-/* Only valid for EL0 TTBR0 instruction pointers */
+/* Valid for EL0 TTBR0 and EL1 TTBR1 instruction pointers */
 static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 {
-	return ptr & ~ptrauth_user_pac_mask();
+	if (ptr & BIT_ULL(55))
+		return ptr | ptrauth_kernel_pac_mask();
+	else
+		return ptr & ~ptrauth_user_pac_mask();
 }
 
 #define ptrauth_thread_init_user(tsk)					\
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
