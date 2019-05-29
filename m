Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B75E62E4FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 21:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4s2kRVODns7bmhs19XcYE+HHwkMMC6XdJYEFM3PkBTU=; b=s1qo1tv5X/Kw3/Z0QIe0xGHocR
	q9IA4W8k/yqeZGdMv4S3oel9IPiomffMLRmULZ7roPDohPV/HUvmBnBy+dH+WqE0GnhgWc4utCg1Q
	4dmC6cBps8gjZqGxZRITzf+wIVX0jHkf+C+vsgkwamfsshJ8CUXp+EgQWl7C96qde6/icbQmWKpWm
	XIo6pefHRrcZUp74q29dKTO/ve0y1b0oWRg/5M5DWU3CXx9XJBuvhZP08llIUton26oksinYsTljb
	+mTS7ab4G78Ah4AIoB5WE+nhEIjrLBo6e6pUeUpCfBrtnWmmINCem6wh5dKjOtiL/m4WXDsNUPBwZ
	2a2nurPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3tk-0001fV-IN; Wed, 29 May 2019 19:06:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3se-0007jO-D3
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 19:04:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 186ECA78;
 Wed, 29 May 2019 12:04:56 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 48AF03F59C;
 Wed, 29 May 2019 12:04:54 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC v2 6/7] arm64: unwind: strip PAC from kernel addresses
Date: Wed, 29 May 2019 20:03:31 +0100
Message-Id: <20190529190332.29753-7-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190529190332.29753-1-kristina.martsenko@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120456_455137_E4F608BB 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>
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

Reviewed-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
---

Changes since RFC v1:
 - Moved the patch later in the series

 arch/arm64/include/asm/pointer_auth.h | 10 +++++++---
 arch/arm64/kernel/stacktrace.c        |  3 +++
 2 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 79f35f5ecff5..5491c34b4dc3 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -80,12 +80,16 @@ extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
  * The EL0 pointer bits used by a pointer authentication code.
  * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
  */
-#define ptrauth_user_pac_mask()	GENMASK(54, vabits_user)
+#define ptrauth_user_pac_mask()		GENMASK(54, vabits_user)
+
+#define ptrauth_kernel_pac_mask()	(GENMASK(63, 56) | GENMASK(54, VA_BITS))
 
-/* Only valid for EL0 TTBR0 instruction pointers */
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
index d908b5e9e949..df07c27a9673 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -24,6 +24,7 @@
 #include <linux/stacktrace.h>
 
 #include <asm/irq.h>
+#include <asm/pointer_auth.h>
 #include <asm/stack_pointer.h>
 #include <asm/stacktrace.h>
 
@@ -56,6 +57,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
 	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
 
+	frame->pc = ptrauth_strip_insn_pac(frame->pc);
+
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	if (tsk->ret_stack &&
 			(frame->pc == (unsigned long)return_to_handler)) {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
