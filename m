Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49BB1465B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 11:24:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VpdHqF3t09vptw9kxkaVDjvGAIJ+xmNVZb5wRdiFj0Q=; b=V08iFh64hRSBUE/6Akz9PBsHmu
	IRybdHPv4GCU7y0jdw+cOwoW3Rfl4/09p8L0AO8TD4y0BelZlLv9d46pi0QmjlM0RuaLlCM8o3F+N
	g4OX8Tr58IHQLzPktYxnOFaFrtzm8lbgwEGadGKT8K8jAY5RXkwEjj//SalAeEatz+x1S8SuSXCM/
	y6RnuSv1jogWk39cmqxz5yNGQKUmY8LsYP0aqm3rdE653UnskQnIc2wcJq2qdNGTS8nyj+aTmY/Vc
	UMHiT6REYah0Su6pFllFrhnZwB+LZglql13wYtkRXwV5WwiM66/MeOKmGb7tuW6D6eOUmqrtnLjij
	NY1BpIeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZf9-0000Gm-RO; Thu, 23 Jan 2020 10:24:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZcQ-0006Ny-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 10:21:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA84131B;
 Thu, 23 Jan 2020 02:21:45 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.79])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 438A63F6C4;
 Thu, 23 Jan 2020 02:21:42 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 11/17] arm64: mask PAC bits of __builtin_return_address
Date: Thu, 23 Jan 2020 15:50:33 +0530
Message-Id: <1579774839-19562-12-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
References: <1579774839-19562-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_022146_648681_BB34B166 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Changes since v3:
* Changed VA_BITS to vabits_actual for kernel pacmask as pointed by Catalin [1].

[1]: http://lists.infradead.org/pipermail/linux-arm-kernel/2020-January/706604.html

 arch/arm64/Kconfig                    |  1 +
 arch/arm64/include/asm/compiler.h     | 20 ++++++++++++++++++++
 arch/arm64/include/asm/pointer_auth.h | 13 +++++--------
 3 files changed, 26 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm64/include/asm/compiler.h

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 86cb782..beded60 100644
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
index 0000000..085e7cd0
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
+#define ptrauth_kernel_pac_mask()	GENMASK_ULL(63, vabits_actual)
+
+#define __builtin_return_address(val)				\
+	(void *)((unsigned long)__builtin_return_address(val) |	\
+	ptrauth_kernel_pac_mask())
+
+#endif /* CONFIG_ARM64_PTR_AUTH */
+
+#endif /* __ASM_COMPILER_H */
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 833d3f9..5340dbb 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -68,16 +68,13 @@ static __always_inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kerne
 
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
