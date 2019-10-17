Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F44DA712
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3FmRiq50uCvRpvsC+Yh07n/W8xgJmydh9eSEmtgbHwE=; b=iGiJ9SNZ9DJyYg2jLW0j4Y9uld
	28EsG4NDVjUjNxeskRwI1IpOdYTbI/EHnKA50GaK6Q64HDiqy+UkhrEM4w3EvR7VD1yZOb3fzeBeg
	KpyRyB87SizP7q/Ikpp+TlUiMWWfZNqoF+5mdCF7NHU6C5ApZMzaz5o8PwIUpLUMl+dEUyMaPO1Wm
	SjfYsrVo7IuPEFfCE9S0xJOXD8hH486E+4X40FoCSkVYcBTFQMBI5iCCDk7VPZbLmsPXs4zSn8AeI
	Y0aW6dQ6oXDsUTskqqBFCsxbumdM54ZDf0sj7cI/DhUKS5yy86B2LeX/RtwZLMDgwx/LC7aDNbn5z
	H8TlX79Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0y0-0003nE-7M; Thu, 17 Oct 2019 08:17:04 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0wG-0001Jy-63
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:15:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59C5D15AD;
 Thu, 17 Oct 2019 01:15:13 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B1F6C3F6C4;
 Thu, 17 Oct 2019 01:15:09 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/11] arm64: unwind: strip PAC from kernel addresses
Date: Thu, 17 Oct 2019 13:44:22 +0530
Message-Id: <1571300065-10236-9-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011516_431042_D006D447 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

From: Kristina Martsenko <kristina.martsenko@arm.com>

When we enable pointer authentication in the kernel, LR values saved to
the stack will have a PAC which we must strip in order to retrieve the
real return address.

Strip PACs when unwinding the stack in order to account for this.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since RFC v2:
 - None

 arch/arm64/include/asm/pointer_auth.h | 9 ++++++---
 arch/arm64/kernel/stacktrace.c        | 3 +++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index 599dd09..a75dc89 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -59,12 +59,15 @@ extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
  * The EL0 pointer bits used by a pointer authentication code.
  * This is dependent on TBI0 being enabled, or bits 63:56 would also apply.
  */
-#define ptrauth_user_pac_mask()	GENMASK(54, vabits_actual)
+#define ptrauth_user_pac_mask()		GENMASK(54, vabits_actual)
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
index a336cb1..49eb1c3 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -14,6 +14,7 @@
 #include <linux/stacktrace.h>
 
 #include <asm/irq.h>
+#include <asm/pointer_auth.h>
 #include <asm/stack_pointer.h>
 #include <asm/stacktrace.h>
 
@@ -84,6 +85,8 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 	frame->prev_fp = fp;
 	frame->prev_type = info.type;
 
+	frame->pc = ptrauth_strip_insn_pac(frame->pc);
+
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	if (tsk->ret_stack &&
 			(frame->pc == (unsigned long)return_to_handler)) {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
