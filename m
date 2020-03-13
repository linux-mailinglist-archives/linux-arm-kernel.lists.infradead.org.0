Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5337318434C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:09:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mw2j6ecga0WDew6uancUbSh5V1AqXm9N1X9XALpfnhk=; b=UctMmkVN6SDqd7wUu13Ptzv/zx
	h+Jgf6b+VIS8YSzc3h0fPJB9ZXIVvoQddIS4aepCkQ1slb/O9wEmx1sCGEolg78BNWRo/p/SRm16b
	M8lN9f088fa5Hyr7PrTqXTM07trlUetJt0YcNaLvZyyF9PtO5AXkDpi3yyV8BTwYYLv76x+veSiMr
	aojKDrebxwF9FG25btJFct9w0veVnuxVrS6NrgVNxs8gQiR3twLm8Qe6IuZJwiEHOPYVEKk1knrBd
	tHImFnq9OQzT+yZA+BuAbO1anSoD1TPgNet1jW0ulfPHSBGI0POY4K7heRFesDuvlyVwTObRTczfS
	Ub7VvCWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgJb-0005UY-0T; Fri, 13 Mar 2020 09:09:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgGi-0002kD-Be
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:06:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E24F5FEC;
 Fri, 13 Mar 2020 02:06:11 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 28F153F67D;
 Fri, 13 Mar 2020 02:06:07 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 11/17] arm64: mask PAC bits of __builtin_return_address
Date: Fri, 13 Mar 2020 14:34:58 +0530
Message-Id: <1584090304-18043-12-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
References: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020612_500285_47A406B5 
X-CRM114-Status: GOOD (  16.59  )
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

Functions like vmap() record how much memory has been allocated by their
callers, and callers are identified using __builtin_return_address(). Once
the kernel is using pointer-auth the return address will be signed. This
means it will not match any kernel symbol, and will vary between threads
even for the same caller.

The output of /proc/vmallocinfo in this case may look like,
0x(____ptrval____)-0x(____ptrval____)   20480 0x86e28000100e7c60 pages=4 vmalloc N0=4
0x(____ptrval____)-0x(____ptrval____)   20480 0x86e28000100e7c60 pages=4 vmalloc N0=4
0x(____ptrval____)-0x(____ptrval____)   20480 0xc5c78000100e7c60 pages=4 vmalloc N0=4

The above three 64bit values should be the same symbol name and not
different LR values.

Use the pre-processor to add logic to clear the PAC to
__builtin_return_address() callers. This patch adds a new file
asm/compiler.h and is transitively included via include/compiler_types.h on
the compiler command line so it is guaranteed to be loaded and the users of
this macro will not find a wrong version.

Helper macros ptrauth_kernel_pac_mask/ptrauth_clear_pac are created for
this purpose and added in this file. Existing macro ptrauth_user_pac_mask
moved from asm/pointer_auth.h.

Reviewed-by: James Morse <james.morse@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v6:
 * Added ptrauth_user_pac_mask check along with ptrauth_kernel_pac_mask in
   __builtin_return_address as pointed by James.
 * Updated commit message.

 arch/arm64/Kconfig                    |  1 +
 arch/arm64/include/asm/compiler.h     | 24 ++++++++++++++++++++++++
 arch/arm64/include/asm/pointer_auth.h |  9 +--------
 3 files changed, 26 insertions(+), 8 deletions(-)
 create mode 100644 arch/arm64/include/asm/compiler.h

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 87e2cbb..115ceea 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -118,6 +118,7 @@ config ARM64
 	select HAVE_ALIGNED_STRUCT_PAGE if SLUB
 	select HAVE_ARCH_AUDITSYSCALL
 	select HAVE_ARCH_BITREVERSE
+	select HAVE_ARCH_COMPILER_H
 	select HAVE_ARCH_HUGE_VMAP
 	select HAVE_ARCH_JUMP_LABEL
 	select HAVE_ARCH_JUMP_LABEL_RELATIVE
diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
new file mode 100644
index 0000000..d886011
--- /dev/null
+++ b/arch/arm64/include/asm/compiler.h
@@ -0,0 +1,24 @@
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
+/* Valid for EL0 TTBR0 and EL1 TTBR1 instruction pointers */
+#define ptrauth_clear_pac(ptr)						\
+	((ptr & BIT_ULL(55)) ? (ptr | ptrauth_kernel_pac_mask()) :	\
+			       (ptr & ~ptrauth_user_pac_mask()))
+
+#define __builtin_return_address(val)					\
+	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
+
+#endif /* CONFIG_ARM64_PTR_AUTH */
+
+#endif /* __ASM_COMPILER_H */
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 833d3f9..70c4715 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -68,16 +68,9 @@ static __always_inline void ptrauth_keys_switch_kernel(struct ptrauth_keys_kerne
 
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
-/*
- * The EL0 pointer bits used by a pointer authentication code.
- * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
- */
-#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
-
-/* Only valid for EL0 TTBR0 instruction pointers */
 static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 {
-	return ptr & ~ptrauth_user_pac_mask();
+	return ptrauth_clear_pac(ptr);
 }
 
 #define ptrauth_thread_init_user(tsk)					\
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
