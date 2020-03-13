Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFB818434D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:09:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bT/1dTElrabzCNUfyHi0nf5/zqlOXXuOpzaOY+ek720=; b=nblj9TUnuB9E4lRbw+95361opz
	K9o/Uqz0XILBEXWHjwW7hZ1y9qZ9pTebUsJXP0tRp+OEhMPJsJiuHz/3KTBksALJPxuA2kQHkH7kS
	dFZb1F6cv3yNs1abUbCm9z0NVNBf167Kkse1kNXHx8vEOdZ9rlMZYzYjVdFQWrZ52R1uiRG7Ta4PK
	kI4hWeGr+WYDFnLE7Ztta4tIgAiX4dT4UVE1btFhFxmSBMeVQZJtokSrur5BEPq76kNxPZdQnRjQo
	N6s+pOuflSInhkhKKFAct0GN2xp/nRpW2H6I6hpsGIlEiGmPpP8LtoHzcc9OuC7k9yRl9e62tDh+9
	Gi8pCc1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgJq-0005q9-9X; Fri, 13 Mar 2020 09:09:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgGm-0002oD-P7
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:06:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 25ED6FEC;
 Fri, 13 Mar 2020 02:06:16 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 60C223F67D;
 Fri, 13 Mar 2020 02:06:12 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 12/17] arm64: unwind: strip PAC from kernel addresses
Date: Fri, 13 Mar 2020 14:34:59 +0530
Message-Id: <1584090304-18043-13-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
References: <1584090304-18043-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_020616_875921_E98F307B 
X-CRM114-Status: GOOD (  10.82  )
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

From: Mark Rutland <mark.rutland@arm.com>

When we enable pointer authentication in the kernel, LR values saved to
the stack will have a PAC which we must strip in order to retrieve the
real return address.

Strip PACs when unwinding the stack in order to account for this.

When function graph tracer is used with patchable-function-entry then
return_to_handler will also have pac bits so strip it too.

Reviewed-by: Kees Cook <keescook@chromium.org>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: James Morse <james.morse@arm.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Re-position ptrauth_strip_insn_pac, comment]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since v6:
 * Mask PAC bits of return_to_handler in case of FUNCTION_GRAPH_TRACER.

   incase 
 arch/arm64/kernel/stacktrace.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index a336cb1..139679c 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -14,6 +14,7 @@
 #include <linux/stacktrace.h>
 
 #include <asm/irq.h>
+#include <asm/pointer_auth.h>
 #include <asm/stack_pointer.h>
 #include <asm/stacktrace.h>
 
@@ -86,7 +87,7 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	if (tsk->ret_stack &&
-			(frame->pc == (unsigned long)return_to_handler)) {
+		(ptrauth_strip_insn_pac(frame->pc) == (unsigned long)return_to_handler)) {
 		struct ftrace_ret_stack *ret_stack;
 		/*
 		 * This is a case where function graph tracer has
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
