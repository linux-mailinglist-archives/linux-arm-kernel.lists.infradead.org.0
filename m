Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5278659F5C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 17:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JV2r0t0E0BPEILG5ORLmbfhK/pTANYk2WZVEkhVnXHo=; b=SKOHq8q2geOVru906Cr0gRERv7
	5aMG1XvMzB7v3/rLKKce+GfKvg12eYQN7/6slgThC3SfRLA9qcUgcQAAyEtknOU72ihVzEsFRFl0u
	jJ+jrLenTNh/qIOTFAEo5pA+zNkBf0YzAmlhtcY1Usr9IX360uc8+NiCFjnNvizuM1Rvcu7+SZR4o
	mPvwN2rt7/fnVSY4dmos+Q/RTCzAvBgq8nz43wYybuv9EE5tSI+3TQMgmQvrV4euTovI4gj/6QaGk
	FAJKSpJ2Lujc+3+uwu7V94JhoUKJCAAaOzw5oREfUIgC/OxO74mGBPj83NxUX/VcHEEFk3ZLvJQJw
	QATxbdlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgt6C-0008U8-J0; Fri, 28 Jun 2019 15:47:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgt5N-00080e-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 15:46:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6335728;
 Fri, 28 Jun 2019 08:46:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 450CA3F706;
 Fri, 28 Jun 2019 08:46:48 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 2/3] arm64: stacktrace: Factor out backtrace initialisation
Date: Fri, 28 Jun 2019 16:46:38 +0100
Message-Id: <20190628154639.5308-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190628154639.5308-1-mark.rutland@arm.com>
References: <20190628154639.5308-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_084650_069188_43647242 
X-CRM114-Status: GOOD (  13.50  )
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
 will.deacon@arm.com, james.morse@arm.com, Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

Some common code is required by each stacktrace user to initialise
struct stackframe before the first call to unwind_frame().

In preparation for adding to the common code, this patch factors it
out into a separate function start_backtrace(), and modifies the
stacktrace callers appropriately.

No functional change.

Signed-off-by: Dave Martin <dave.martin@arm.com>
[Mark: drop tsk argument, update more callsites]
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/stacktrace.h | 10 ++++++++++
 arch/arm64/kernel/perf_callchain.c  |  7 +------
 arch/arm64/kernel/process.c         |  7 ++-----
 arch/arm64/kernel/return_address.c  |  9 +++------
 arch/arm64/kernel/stacktrace.c      | 19 ++++++-------------
 arch/arm64/kernel/time.c            |  7 ++-----
 arch/arm64/kernel/traps.c           | 13 ++++++-------
 7 files changed, 30 insertions(+), 42 deletions(-)

diff --git a/arch/arm64/include/asm/stacktrace.h b/arch/arm64/include/asm/stacktrace.h
index 4dd569592e65..18f90bf1385c 100644
--- a/arch/arm64/include/asm/stacktrace.h
+++ b/arch/arm64/include/asm/stacktrace.h
@@ -142,4 +142,14 @@ static inline bool on_accessible_stack(const struct task_struct *tsk,
 	return false;
 }
 
+static inline void start_backtrace(struct stackframe *frame,
+				   unsigned long fp, unsigned long pc)
+{
+	frame->fp = fp;
+	frame->pc = pc;
+#ifdef CONFIG_FUNCTION_GRAPH_TRACER
+	frame->graph = 0;
+#endif
+}
+
 #endif	/* __ASM_STACKTRACE_H */
diff --git a/arch/arm64/kernel/perf_callchain.c b/arch/arm64/kernel/perf_callchain.c
index 61d983f5756f..35d024735869 100644
--- a/arch/arm64/kernel/perf_callchain.c
+++ b/arch/arm64/kernel/perf_callchain.c
@@ -165,12 +165,7 @@ void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
 		return;
 	}
 
-	frame.fp = regs->regs[29];
-	frame.pc = regs->pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
-
+	start_backtrace(&frame, regs->regs[29], regs->pc);
 	walk_stackframe(current, &frame, callchain_trace, entry);
 }
 
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 58efc3727778..46d6b21630a2 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -509,11 +509,8 @@ unsigned long get_wchan(struct task_struct *p)
 	if (!stack_page)
 		return 0;
 
-	frame.fp = thread_saved_fp(p);
-	frame.pc = thread_saved_pc(p);
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
+	start_backtrace(&frame, thread_saved_fp(p), thread_saved_pc(p));
+
 	do {
 		if (unwind_frame(p, &frame))
 			goto out;
diff --git a/arch/arm64/kernel/return_address.c b/arch/arm64/kernel/return_address.c
index 53c40196b607..1b25321c7bf3 100644
--- a/arch/arm64/kernel/return_address.c
+++ b/arch/arm64/kernel/return_address.c
@@ -41,12 +41,9 @@ void *return_address(unsigned int level)
 	data.level = level + 2;
 	data.addr = NULL;
 
-	frame.fp = (unsigned long)__builtin_frame_address(0);
-	frame.pc = (unsigned long)return_address; /* dummy */
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
-
+	start_backtrace(&frame,
+			(unsigned long)__builtin_frame_address(0),
+			(unsigned long)return_address);
 	walk_stackframe(current, &frame, save_return_addr, &data);
 
 	if (!data.level)
diff --git a/arch/arm64/kernel/stacktrace.c b/arch/arm64/kernel/stacktrace.c
index b00ec7d483d1..e5338216deaa 100644
--- a/arch/arm64/kernel/stacktrace.c
+++ b/arch/arm64/kernel/stacktrace.c
@@ -133,12 +133,7 @@ void save_stack_trace_regs(struct pt_regs *regs, struct stack_trace *trace)
 	data.skip = trace->skip;
 	data.no_sched_functions = 0;
 
-	frame.fp = regs->regs[29];
-	frame.pc = regs->pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
-
+	start_backtrace(&frame, regs->regs[29], regs->pc);
 	walk_stackframe(current, &frame, save_trace, &data);
 }
 EXPORT_SYMBOL_GPL(save_stack_trace_regs);
@@ -157,17 +152,15 @@ static noinline void __save_stack_trace(struct task_struct *tsk,
 	data.no_sched_functions = nosched;
 
 	if (tsk != current) {
-		frame.fp = thread_saved_fp(tsk);
-		frame.pc = thread_saved_pc(tsk);
+		start_backtrace(&frame, thread_saved_fp(tsk),
+				thread_saved_pc(tsk));
 	} else {
 		/* We don't want this function nor the caller */
 		data.skip += 2;
-		frame.fp = (unsigned long)__builtin_frame_address(0);
-		frame.pc = (unsigned long)__save_stack_trace;
+		start_backtrace(&frame,
+				(unsigned long)__builtin_frame_address(0),
+				(unsigned long)__save_stack_trace);
 	}
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
 
 	walk_stackframe(tsk, &frame, save_trace, &data);
 
diff --git a/arch/arm64/kernel/time.c b/arch/arm64/kernel/time.c
index a777ae90044d..6af8d976a2d8 100644
--- a/arch/arm64/kernel/time.c
+++ b/arch/arm64/kernel/time.c
@@ -49,11 +49,8 @@ unsigned long profile_pc(struct pt_regs *regs)
 	if (!in_lock_functions(regs->pc))
 		return regs->pc;
 
-	frame.fp = regs->regs[29];
-	frame.pc = regs->pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
+	start_backtrace(&frame, regs->regs[29], regs->pc);
+
 	do {
 		int ret = unwind_frame(NULL, &frame);
 		if (ret < 0)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 8a395523adcf..44810d5aab49 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -111,18 +111,17 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		return;
 
 	if (tsk == current) {
-		frame.fp = (unsigned long)__builtin_frame_address(0);
-		frame.pc = (unsigned long)dump_backtrace;
+		start_backtrace(&frame,
+				(unsigned long)__builtin_frame_address(0),
+				(unsigned long)dump_backtrace);
 	} else {
 		/*
 		 * task blocked in __switch_to
 		 */
-		frame.fp = thread_saved_fp(tsk);
-		frame.pc = thread_saved_pc(tsk);
+		start_backtrace(&frame,
+				thread_saved_fp(tsk),
+				thread_saved_pc(tsk));
 	}
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
 
 	printk("Call trace:\n");
 	do {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
