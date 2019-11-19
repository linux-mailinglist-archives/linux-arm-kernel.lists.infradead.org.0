Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FFF102489
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:36:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nf1QuB90cjDaI6vPmCzFuk8SmaXmyMGbN8IenrG9EUY=; b=LkSy43ZmhPe0+vQ/CZZCyLwfcW
	agZQouWaDymlD+8lE0vQ9dL1+DPGQh5J0wz5luWos2mM2Gd8q1pOOornpG3b4TEZ+FK/62e5AJ7lL
	722irmkkgh0MYXOn8r7dXU3WckgXrF6ZvC6XtnNulzy8ldICp+5+eOgf6e/lolRRuIjvV4/uD1uNw
	PoHDoE/owLOwqwcVN+2tP8A9meL/tQcf0vv04WhRCdUwnxcFFAX1n9GCGWezsPo2tMjif6JGTBOlR
	waK2nlz8m11tE7eo6OqSpztHs63s7qT4CoHB10O5xzRP229ix8yG1pKaYuOlZES+53HG8Ngnk01Vp
	O6QH/7pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2ji-0001xs-5u; Tue, 19 Nov 2019 12:36:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2hK-0007Cy-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D1021FB;
 Tue, 19 Nov 2019 04:33:34 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D12BB3F703;
 Tue, 19 Nov 2019 04:33:30 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/14] arm64: unwind: strip PAC from kernel addresses
Date: Tue, 19 Nov 2019 18:02:21 +0530
Message-Id: <1574166746-27197-10-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043335_133962_543F4FB3 
X-CRM114-Status: GOOD (  13.43  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

When we enable pointer authentication in the kernel, LR values saved to
the stack will have a PAC which we must strip in order to retrieve the
real return address.

Strip PACs when unwinding the stack in order to account for this.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Re-position ptrauth_strip_insn_pac, comment]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
 * Reposition ptrauth_strip_insn_pac. [James]
 * Added more comments for stripping PAC at EL1. [James]

Link to above discussion: https://www.spinics.net/lists/arm-kernel/msg763624.html

 arch/arm64/include/asm/pointer_auth.h | 16 +++++++++++-----
 arch/arm64/kernel/stacktrace.c        |  3 +++
 2 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 599dd09..efd70b5 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -56,15 +56,21 @@ static inline void ptrauth_keys_init_kernel(struct ptrauth_keys_kernel *keys)
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
 /*
- * The EL0 pointer bits used by a pointer authentication code.
- * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
+ * The EL0/EL1 pointer bits used by a pointer authentication code.
+ * This is dependent on TBI0/TBI1 being enabled, or bits 63:56 would also apply.
  */
-#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
+#define ptrauth_user_pac_mask()		GENMASK_ULL(54, vabits_actual)
+/* As TBI1 is disabled currently, so bits 63:56 also has PAC */
+#define ptrauth_kernel_pac_mask()	\
+				(GENMASK_ULL(63, 56) | GENMASK_ULL(54, VA_BITS))
 
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
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index a336cb1..b479df7 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -14,6 +14,7 @@
 #include <linux/stacktrace.h>
 
 #include <asm/irq.h>
+#include <asm/pointer_auth.h>
 #include <asm/stack_pointer.h>
 #include <asm/stacktrace.h>
 
@@ -101,6 +102,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 	}
 #endif /* CONFIG_FUNCTION_GRAPH_TRACER */
 
+	frame->pc = ptrauth_strip_insn_pac(frame->pc);
+
 	/*
 	 * Frames created upon entry from EL0 have NULL FP and PC values, so
 	 * don't bother reporting these. Frames created by __noreturn functions
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
