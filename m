Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBB23748F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lxf8xxRr58e1BYKyF13CKxxYKNCIrkQW1Xm6ub9ngBY=; b=CCG4jFZeA/ENHrZkozvNKFXWdH
	J/2ArbMX3D+IDL45hTw80HohuStFP/9a26pwh5YR1HxEyTY92pfuJ3Ic+J/n3MRrgfX2ULyvbsksl
	BRgnDBENWI6j0zhnkC4xJ7LtHbXBoPHGfrOwOItoTuUv4n8MNwLgJWrs4cuulltDQqoUoLMVFCtNd
	M7NmYNIitrn85JWoh5VeF0Ys1TH8TimKkcMWLktcPj7tVNszmelz3DrFYgnApUITv0oRIvJN2RnmM
	woZ1TuFkfbpuVNbckF7apGe7pISVJSvG1K/E3iZFkB4Ax2jMmyZXI3P7iBIWkCRiq32gf7rOIoVzF
	X6b3B8+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYruw-00036T-Kw; Thu, 06 Jun 2019 12:54:54 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYruV-0002l7-4K
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:54:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D299315A2;
 Thu,  6 Jun 2019 05:54:26 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7B6433F5AF;
 Thu,  6 Jun 2019 05:54:25 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: stacktrace: better handle corrupted stacks
Date: Thu,  6 Jun 2019 13:54:02 +0100
Message-Id: <20190606125402.10229-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190606125402.10229-1-mark.rutland@arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055427_776366_2A886F5A 
X-CRM114-Status: GOOD (  19.46  )
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
 arch/arm64/include/asm/stacktrace.h | 34 ++++++++++++++++++++++++++--------
 arch/arm64/kernel/process.c         |  2 +-
 arch/arm64/kernel/stacktrace.c      | 16 +++++++++++++++-
 arch/arm64/kernel/time.c            |  2 +-
 arch/arm64/kernel/traps.c           |  4 ++--
 5 files changed, 45 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index 18f90bf1385c..4ebf8a8997b0 100644
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
@@ -47,6 +41,16 @@ struct stack_info {
 	enum stack_type type;
 };
 
+struct stackframe {
+	unsigned long fp;
+	unsigned long pc;
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+	int graph;
+#endif
+	DECLARE_BITMAP(stacks_done, __NR_STACK_TYPES);
+	enum stack_type stack_current;
+};
+
 extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
 extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
 			    int (*fn)(struct stackframe *, void *), void *data);
@@ -128,6 +132,9 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
 				       unsigned long sp,
 				       struct stack_info *info)
 {
+	if (info)
+		info->type = STACK_TYPE_UNKNOWN;
+
 	if (on_task_stack(tsk, sp, info))
 		return true;
 	if (tsk != current || preemptible())
@@ -143,13 +150,24 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
 }
 
 static inline void start_backtrace(struct stackframe *frame,
+				   struct task_struct *tsk,
 				   unsigned long fp, unsigned long pc)
 {
+	struct stack_info info;
+
 	frame->fp = fp;
 	frame->pc = pc;
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	frame->graph = 0;
 #endif
+	bitmap_zero(frame->stacks_done, __NR_STACK_TYPES);
+
+	/*
+	 * We need to prime stack_current for the first unwind, but we can
+	 * ignore the accessibility until the unwind occurs.
+	 */
+	on_accessible_stack(tsk, fp, &info);
+	frame->stack_current = info.type;
 }
 
 #endif	/* __ASM_STACKTRACE_H */
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 122d88fccd13..ba9441982573 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -509,7 +509,7 @@ unsigned long get_wchan(struct task_struct *p)
 	if (!stack_page)
 		return 0;
 
-	start_backtrace(&frame, thread_saved_fp(p), thread_saved_pc(p));
+	start_backtrace(&frame, p, thread_saved_fp(p), thread_saved_pc(p));
 	do {
 		if (unwind_frame(p, &frame))
 			goto out;
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index b00ec7d483d1..1c45b33c7474 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -43,6 +43,8 @@
 int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 {
 	unsigned long fp = frame->fp;
+	bool changed_stack = false;
+	struct stack_info info;
 
 	if (fp & 0xf)
 		return -EINVAL;
@@ -50,12 +52,24 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 	if (!tsk)
 		tsk = current;
 
-	if (!on_accessible_stack(tsk, fp, NULL))
+	if (!on_accessible_stack(tsk, fp, &info))
 		return -EINVAL;
 
+	if (test_bit(info.type, frame->stacks_done))
+		return -EINVAL;
+
+	if (frame->stack_current != info.type) {
+		set_bit(frame->stack_current, frame->stacks_done);
+		frame->stack_current = info.type;
+		changed_stack = true;
+	}
+
 	frame->fp = READ_ONCE_NOCHECK(*(unsigned long *)(fp));
 	frame->pc = READ_ONCE_NOCHECK(*(unsigned long *)(fp + 8));
 
+	if (!changed_stack && frame->fp <= fp)
+		return -EINVAL;
+
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	if (tsk->ret_stack &&
 			(frame->pc == (unsigned long)return_to_handler)) {
diff --git a/arch/arm64/kernel/time.c b/arch/arm64/kernel/time.c
index aa3489f3a452..83f08c7e9464 100644
--- a/arch/arm64/kernel/time.c
+++ b/arch/arm64/kernel/time.c
@@ -49,7 +49,7 @@ unsigned long profile_pc(struct pt_regs *regs)
 	if (!in_lock_functions(regs->pc))
 		return regs->pc;
 
-	start_backtrace(&frame, regs->regs[29], regs->pc);
+	start_backtrace(&frame, current, regs->regs[29], regs->pc);
 	do {
 		int ret = unwind_frame(NULL, &frame);
 		if (ret < 0)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 8053bbed8776..3bbe1992259e 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -119,14 +119,14 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		return;
 
 	if (tsk == current) {
-		start_backtrace(&frame,
+		start_backtrace(&frame, tsk,
 				(unsigned long)__builtin_frame_address(0),
 				(unsigned long)dump_backtrace);
 	} else {
 		/*
 		 * task blocked in __switch_to
 		 */
-		start_backtrace(&frame,
+		start_backtrace(&frame, tsk,
 				thread_saved_fp(tsk),
 				thread_saved_pc(tsk));
 	}
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
