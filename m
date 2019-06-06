Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E513748D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 14:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=68EhdPI+BC11R3gi7pq+yEo3Wq6LRlO5PTTNFpT4F2U=; b=gSIT1OcbRqfuucxVEiqpgJ9E9N
	07t00kDLHrq3NU7BMY9M5KNoxjMZetDNKQcvA2w3KGZHPOft2fDhp/aa5HY3Aa4likJRy43gkE4j6
	xzK9zqKeI/dkC2IvxB6XsvqjOn2LCnQP+jIoh0c8yfJk3r/uyNlcFNRVKB72wA9ldPybDjfY0nl+9
	8sjf4cnuRhjNKgz2mNj/fCFS8221ssl3Rd1OOamV5ntJ9nOBTs6drMxf1MFyHNXc/oxuRX3PIplFj
	yL83a0ntfOEJoCxoImRI956Gan7SZ6kX7f26N+Qe1nhcwTCnJkS2w/+SR+Tw3oZ3/h+pTzF6UfI89
	sshdVJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYrul-0002ve-40; Thu, 06 Jun 2019 12:54:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYruS-0002hH-Bm
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 12:54:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D13D9374;
 Thu,  6 Jun 2019 05:54:23 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 56BA93F5AF;
 Thu,  6 Jun 2019 05:54:22 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] arm64: stacktrace: Factor out backtrace initialisation
Date: Thu,  6 Jun 2019 13:54:01 +0100
Message-Id: <20190606125402.10229-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190606125402.10229-1-mark.rutland@arm.com>
References: <20190606125402.10229-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_055424_859416_ABC99EDD 
X-CRM114-Status: GOOD (  13.30  )
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
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/stacktrace.h | 10 ++++++++++
 arch/arm64/kernel/process.c         |  6 +-----
 arch/arm64/kernel/time.c            |  6 +-----
 arch/arm64/kernel/traps.c           | 13 ++++++-------
 4 files changed, 18 insertions(+), 17 deletions(-)

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
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 3767fb21a5b8..122d88fccd13 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -509,11 +509,7 @@ unsigned long get_wchan(struct task_struct *p)
 	if (!stack_page)
 		return 0;
 
-	frame.fp = thread_saved_fp(p);
-	frame.pc = thread_saved_pc(p);
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
+	start_backtrace(&frame, thread_saved_fp(p), thread_saved_pc(p));
 	do {
 		if (unwind_frame(p, &frame))
 			goto out;
diff --git a/arch/arm64/kernel/time.c b/arch/arm64/kernel/time.c
index a777ae90044d..aa3489f3a452 100644
--- a/arch/arm64/kernel/time.c
+++ b/arch/arm64/kernel/time.c
@@ -49,11 +49,7 @@ unsigned long profile_pc(struct pt_regs *regs)
 	if (!in_lock_functions(regs->pc))
 		return regs->pc;
 
-	frame.fp = regs->regs[29];
-	frame.pc = regs->pc;
-#ifdef CONFIG_FUNCTION_GRAPH_TRACER
-	frame.graph = 0;
-#endif
+	start_backtrace(&frame, regs->regs[29], regs->pc);
 	do {
 		int ret = unwind_frame(NULL, &frame);
 		if (ret < 0)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index ade32046f3fe..8053bbed8776 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -119,18 +119,17 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
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
