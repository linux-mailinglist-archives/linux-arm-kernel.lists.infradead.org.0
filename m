Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E44F5D02D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:08:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yPI6B8DoquBJHnKaeCmPyjZ4USHhnjuEH+DdA3LK4kg=; b=EaxmFztlL+2hSfPmgOXkyRgvIG
	D7Q905+AgChetpOyZAkODbUkTllgyO3Z5PBwvxYsRjdoRg8lGQxLOTKXUrS7hWNV+uMZrrr1hB4JD
	7SycP2YSFu4v9aRiJLRdltyafCqLRMeYgwCR154JMW1zCh1D3NcFWw7FuYPykLDp6bymmKeakKA0D
	uHikbfaU9ccCrzAq3xgVDz6qcHKMmopoTCsSSzf7ndk6i6LnVM6Kgbny8gJc+3XRkdYqWs096JxuE
	09ZaKU/BvSjRg6SjTlKyUjO20zxHDrsyXXQCwo7MmFFlJvEy0JjWw51H2WPnBfPX5VpnwKQ6gPa0o
	qti+3Akg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIWd-0006Gv-Ha; Tue, 02 Jul 2019 13:08:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiIVY-0005YL-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:07:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2B8E9EBD;
 Tue,  2 Jul 2019 06:07:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 27B003F703;
 Tue,  2 Jul 2019 06:07:39 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 3/3] arm64: stacktrace: better handle corrupted stacks
Date: Tue,  2 Jul 2019 14:07:29 +0100
Message-Id: <20190702130729.19615-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190702130729.19615-1-mark.rutland@arm.com>
References: <20190702130729.19615-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_060740_865477_5E64F855 
X-CRM114-Status: GOOD (  20.24  )
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

As this has turned out to be particularly subtle, comments are added to
explain the procedure.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: James Morse <james.morse@arm.com>
Tested-by: James Morse <james.morse@arm.com>
Acked-by: Dave Martin <Dave.Martin@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Tengfei Fan <tengfeif@codeaurora.org>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/stacktrace.h | 57 +++++++++++++++++++++++++++++++------
 arch/arm64/kernel/stacktrace.c      | 40 +++++++++++++++++++++++++-
 2 files changed, 88 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index 18f90bf1385c..b3e03bbb69ea 100644
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
@@ -47,6 +41,37 @@ struct stack_info {
 	enum stack_type type;
 };
 
+/*
+ * A snapshot of a frame record or fp/lr register values, along with some
+ * accounting information necessary for robust unwinding.
+ *
+ * @fp:          The fp value in the frame record (or the real fp)
+ * @pc:          The fp value in the frame record (or the real lr)
+ *
+ * @stacks_done: Stacks which have been entirely unwound, for which it is no
+ *               longer valid to unwind to.
+ *
+ * @prev_fp:     The fp that pointed to this frame record, or a synthetic value
+ *               of 0. This is used to ensure that within a stack, each
+ *               subsequent frame record is at an increasing address.
+ * @prev_type:   The type of stack this frame record was on, or a synthetic
+ *               value of STACK_TYPE_UNKNOWN. This is used to detect a
+ *               transition from one stack to another.
+ *
+ * @graph:       When FUNCTION_GRAPH_TRACER is selected, holds the index of a
+ *               replacement lr value in the ftrace graph stack.
+ */
+struct stackframe {
+	unsigned long fp;
+	unsigned long pc;
+	DECLARE_BITMAP(stacks_done, __NR_STACK_TYPES);
+	unsigned long prev_fp;
+	enum stack_type prev_type;
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+	int graph;
+#endif
+};
+
 extern int unwind_frame(struct task_struct *tsk, struct stackframe *frame);
 extern void walk_stackframe(struct task_struct *tsk, struct stackframe *frame,
 			    int (*fn)(struct stackframe *, void *), void *data);
@@ -128,6 +153,9 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
 				       unsigned long sp,
 				       struct stack_info *info)
 {
+	if (info)
+		info->type = STACK_TYPE_UNKNOWN;
+
 	if (on_task_stack(tsk, sp, info))
 		return true;
 	if (tsk != current || preemptible())
@@ -150,6 +178,19 @@ static inline void start_backtrace(struct stackframe *frame,
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 	frame->graph = 0;
 #endif
+
+	/*
+	 * Prime the first unwind.
+	 *
+	 * In unwind_frame() we'll check that the FP points to a valid stack,
+	 * which can't be STACK_TYPE_UNKNOWN, and the first unwind will be
+	 * treated as a transition to whichever stack that happens to be. The
+	 * prev_fp value won't be used, but we set it to 0 such that it is
+	 * definitely not an accessible stack address.
+	 */
+	bitmap_zero(frame->stacks_done, __NR_STACK_TYPES);
+	frame->prev_fp = 0;
+	frame->prev_type = STACK_TYPE_UNKNOWN;
 }
 
 #endif	/* __ASM_STACKTRACE_H */
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index e5338216deaa..8094bfe654f5 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -40,9 +40,18 @@
  *	ldp	x29, x30, [sp]
  *	add	sp, sp, #0x10
  */
+
+/*
+ * Unwind from one frame record (A) to the next frame record (B).
+ *
+ * We terminate early if the location of B indicates a malformed chain of frame
+ * records (e.g. a cycle), determined based on the location and fp value of A
+ * and the location (but not the fp value) of B.
+ */
 int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 {
 	unsigned long fp = frame->fp;
+	struct stack_info info;
 
 	if (fp & 0xf)
 		return -EINVAL;
@@ -50,11 +59,40 @@ int notrace unwind_frame(struct task_struct *tsk, struct stackframe *frame)
 	if (!tsk)
 		tsk = current;
 
-	if (!on_accessible_stack(tsk, fp, NULL))
+	if (!on_accessible_stack(tsk, fp, &info))
 		return -EINVAL;
 
+	if (test_bit(info.type, frame->stacks_done))
+		return -EINVAL;
+
+	/*
+	 * As stacks grow downward, any valid record on the same stack must be
+	 * at a strictly higher address than the prior record.
+	 *
+	 * Stacks can nest in several valid orders, e.g.
+	 *
+	 * TASK -> IRQ -> OVERFLOW -> SDEI_NORMAL
+	 * TASK -> SDEI_NORMAL -> SDEI_CRITICAL -> OVERFLOW
+	 *
+	 * ... but the nesting itself is strict. Once we transition from one
+	 * stack to another, it's never valid to unwind back to that first
+	 * stack.
+	 */
+	if (info.type == frame->prev_type) {
+		if (fp <= frame->prev_fp)
+			return -EINVAL;
+	} else {
+		set_bit(frame->prev_type, frame->stacks_done);
+	}
+
+	/*
+	 * Record this frame record's values and location. The prev_fp and
+	 * prev_type are only meaningful to the next unwind_frame() invocation.
+	 */
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
