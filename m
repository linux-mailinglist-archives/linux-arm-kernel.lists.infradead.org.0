Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6029C59F5D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IKO2it8hxbJCRdZRCt7qnWBXogcIqQOyGTA3CY0EHbw=; b=CUBPXE0001yrjDU+XGq5+uc++t
	yKDg2mOG26A5Iz5Ug6E92hmVJnL4Nk94crJAfOe0BWlNb5ixIBRDnHZA5OhuaYp4nMrsKXtMDeq7Z
	4PJc0qIn2vlQL2+yMGb2MJdcsvmBBnqv7m5JYJXQKfrsiqAhZBlyRv9qi6UMOpOj3SOVYhkki4VMA
	GHD/U8N5Gmq3FRG9TdhzqQx8G3sLdkS6qIBWZyyFunOa0ltWOsgk9xB9q2DQMgr+xz9QryEmxq2+w
	cGRi9YPWcM/Imw5GV33vWXbqmQvtMNeyJsHHt+elmKt2wOHsCmz1iNbu6xPcvTx9oE7gm+On61L5k
	akXjbq4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgt6T-0000HR-UT; Fri, 28 Jun 2019 15:47:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgt5P-00081n-Do
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:46:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D1CEEBD;
 Fri, 28 Jun 2019 08:46:51 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 068DF3F706;
 Fri, 28 Jun 2019 08:46:49 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 3/3] arm64: stacktrace: better handle corrupted stacks
Date: Fri, 28 Jun 2019 16:46:39 +0100
Message-Id: <20190628154639.5308-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190628154639.5308-1-mark.rutland@arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_084651_779666_1198CD64 
X-CRM114-Status: GOOD (  16.09  )
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
Cc: mark.rutland@arm.com, tengfeif@codeaurora.org, catalin.marinas@arm.com,
 will.deacon@arm.com, james.morse@arm.com, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The arm64 stacktrace code is careful to only dereference frame records
in valid stack ranges, ensuring that a corrupted frame record won't
result in a faulting access.

However, it's still possible for corrupt frame records to result in
infinite loops in the stacktrace code, which is also undesirable.

This patch ensures that we complete a stacktrace in finite time, by
keeping track of which stacks we have already completed unwinding, and
verifying that if the next frame record is on the same stack, it is at a
higher address.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dave Martin <dave.martin@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Tengfei Fan <tengfeif@codeaurora.org>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/stacktrace.h | 32 ++++++++++++++++++++++++--------
 arch/arm64/kernel/stacktrace.c      | 15 ++++++++++++++-
 2 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index 18f90bf1385c..938b96ba1f0f 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -19,19 +19,12 @@
 #include <linux/percpu.h>
 #include <linux/sched.h>
 #include <linux/sched/task_stack.h>
+#include <linux/types.h>
 
 #include <asm/memory.h>
 #include <asm/ptrace.h>
 #include <asm/sdei.h>
 
-struct stackframe {
-	unsigned long fp;
-	unsigned long pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	int graph;
-#endif
-};
-
 enum stack_type {
 	STACK_TYPE_UNKNOWN,
 	STACK_TYPE_TASK,
@@ -39,6 +32,7 @@ enum stack_type {
 	STACK_TYPE_OVERFLOW,
 	STACK_TYPE_SDEI_NORMAL,
 	STACK_TYPE_SDEI_CRITICAL,
+	__NR_STACK_TYPES
 };
 
 struct stack_info {
@@ -47,6 +41,17 @@ struct stack_info {
 	enum stack_type type;
 };
 
+struct stackframe {
+	unsigned long fp;
+	unsigned long pc;
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+	int graph;
+#endif
+	DECLARE_BITMAP(stacks_done, __NR_STACK_TYPES);
+	unsigned long prev_fp;
+	enum stack_type prev_type;
+};
+
 extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
 extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
 			    int (*fn)(struct stackframe *, void *), void *data);
@@ -128,6 +133,9 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
 				       unsigned long sp,
 				       struct stack_info *info)
 {
+	if (info)
+		info->type = STACK_TYPE_UNKNOWN;
+
 	if (on_task_stack(tsk, sp, info))
 		return true;
 	if (tsk != current || preemptible())
@@ -150,6 +158,14 @@ static inline void start_backtrace(struct stackframe *frame,
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	frame->graph = 0;
 #endif
+
+	/*
+	 * Prime the first unwind, which will be treated as a transition from
+	 * STACK_TYPE_UNKNOWN to some valid stack.
+	 */
+	bitmap_zero(frame->stacks_done, __NR_STACK_TYPES);
+	frame->prev_fp = 0;
+	frame->prev_type = STACK_TYPE_UNKNOWN;
 }
 
 #endif	/* __ASM_STACKTRACE_H */
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index e5338216deaa..2e4b59e10e71 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -43,6 +43,7 @@
 int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 {
 	unsigned long fp = frame->fp;
+	struct stack_info info, prev_info;
 
 	if (fp & 0xf)
 		return -EINVAL;
@@ -50,11 +51,23 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 	if (!tsk)
 		tsk = current;
 
-	if (!on_accessible_stack(tsk, fp, NULL))
+	if (!on_accessible_stack(tsk, fp, &info))
 		return -EINVAL;
 
+	if (test_bit(info.type, frame->stacks_done))
+		return -EINVAL;
+
+	if (info.type == frame->prev_type) {
+		if (fp <= frame->prev_fp)
+			return -EINVAL;
+	} else {
+		set_bit(prev_info.type, frame->stacks_done);
+	}
+
 	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
 	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
+	frame->prev_fp = fp;
+	frame->prev_type = info.type;
 
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	if (tsk->ret_stack &&
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
