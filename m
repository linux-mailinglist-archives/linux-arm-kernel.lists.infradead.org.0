Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C141D57DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 19:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyEv/Jrswy2bINgHyYtJWPpI4g0mqqz/XN9lcYdy+Yk=; b=Q1of0Ii210K+qJ
	cJ1ZNs74l66kZwMUmN1SLwIjFg9Y5lI4/Wz62x25VrF7qmgONYTvgW1i7s78daWmPl31V041XOB1v
	oNDkRlw/rSZYBbA0notLoREyJO3EKZK9j56Mta5+JhNDnrWT88YdDShs9mO8dXjCD6cCekSFnov7a
	liYTgHe6LJ6XormeRJvr0YUwjNKRMUEQmdf/SYdJ1FFgp3lHeb8PsJVa1BiuPL4ihcwO4u+L9qfy+
	mIqVvRlgAHls8wjly4RoIfSs/c67ee5VZA3Knm5Vu1XckO1rPn3rAjaEzlRzSiPz77iOgwAnlKMpt
	ybmO0WokTIoisTpmLOuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZe9I-00010t-GN; Fri, 15 May 2020 17:29:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZe88-0000CA-D4
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 17:28:18 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A08B3207C3;
 Fri, 15 May 2020 17:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589563695;
 bh=3rT3Y1nllLXurlUajpsDUcgeYtZ6W1gs3Ys8kPvelUA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iflLaAfznSBNzehiCR0qdxs9AXdnlMcpDZJeKjJJDdOdOFYot//rRZ+qIoILzuKzm
 gmjibbc5QcONQwYXD8nX/9SH7TkOq2PI4aajQoEFRc0ir4oSjeZdCP8fC/Y1I4QeMN
 UdFJLXmI4zW87VTFTxOfi/3Q66IBl8DdKl++oSgQ=
From: Will Deacon <will@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] scs: Move scs_overflow_check() out of architecture code
Date: Fri, 15 May 2020 18:27:54 +0100
Message-Id: <20200515172756.27185-5-will@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200515172756.27185-1-will@kernel.org>
References: <20200515172756.27185-1-will@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_102816_502442_A648C613 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: kernel-team@android.com, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@am.com>,
 Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is nothing architecture-specific about scs_overflow_check() as
it's just a trivial wrapper around scs_corrupted().

For parity with task_stack_end_corrupted(), rename scs_corrupted() to
task_scs_end_corrupted() and call it from schedule_debug() when
CONFIG_SCHED_STACK_END_CHECK_is enabled. Finally, remove the unused
scs_overflow_check() function entirely.

This has absolutely no impact on architectures that do not support SCS
(currently arm64 only).

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/scs.h | 18 ------------------
 arch/arm64/kernel/process.c  |  2 --
 arch/arm64/kernel/scs.c      |  2 +-
 include/linux/scs.h          |  4 ++--
 kernel/sched/core.c          |  3 +++
 kernel/scs.c                 |  3 ++-
 6 files changed, 8 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/include/asm/scs.h b/arch/arm64/include/asm/scs.h
index d46efdd2060a..eaa2cd92e4c1 100644
--- a/arch/arm64/include/asm/scs.h
+++ b/arch/arm64/include/asm/scs.h
@@ -24,24 +24,6 @@
 	.endm
 #endif /* CONFIG_SHADOW_CALL_STACK */
 
-#else /* __ASSEMBLY__ */
-
-#include <linux/scs.h>
-
-#ifdef CONFIG_SHADOW_CALL_STACK
-
-static inline void scs_overflow_check(struct task_struct *tsk)
-{
-	if (unlikely(scs_corrupted(tsk)))
-		panic("corrupted shadow stack detected inside scheduler\n");
-}
-
-#else /* CONFIG_SHADOW_CALL_STACK */
-
-static inline void scs_overflow_check(struct task_struct *tsk) {}
-
-#endif /* CONFIG_SHADOW_CALL_STACK */
-
 #endif /* __ASSEMBLY __ */
 
 #endif /* _ASM_SCS_H */
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index a35d3318492c..56be4cbf771f 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -52,7 +52,6 @@
 #include <asm/mmu_context.h>
 #include <asm/processor.h>
 #include <asm/pointer_auth.h>
-#include <asm/scs.h>
 #include <asm/stacktrace.h>
 
 #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
@@ -516,7 +515,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
 	entry_task_switch(next);
 	uao_thread_switch(next);
 	ssbs_thread_switch(next);
-	scs_overflow_check(next);
 
 	/*
 	 * Complete any pending TLB or cache maintenance on this CPU in case
diff --git a/arch/arm64/kernel/scs.c b/arch/arm64/kernel/scs.c
index adc97f826fab..955875dff9e1 100644
--- a/arch/arm64/kernel/scs.c
+++ b/arch/arm64/kernel/scs.c
@@ -6,7 +6,7 @@
  */
 
 #include <linux/percpu.h>
-#include <asm/scs.h>
+#include <linux/scs.h>
 
 /* Allocate a static per-CPU shadow stack */
 #define DEFINE_SCS(name)						\
diff --git a/include/linux/scs.h b/include/linux/scs.h
index 0eb2485ef832..2fd3df50e93e 100644
--- a/include/linux/scs.h
+++ b/include/linux/scs.h
@@ -47,7 +47,7 @@ static inline unsigned long *__scs_magic(void *s)
 	return (unsigned long *)(s + SCS_SIZE) - 1;
 }
 
-static inline bool scs_corrupted(struct task_struct *tsk)
+static inline bool task_scs_end_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = __scs_magic(task_scs(tsk));
 	unsigned long sz = task_scs_sp(tsk) - task_scs(tsk);
@@ -60,8 +60,8 @@ static inline bool scs_corrupted(struct task_struct *tsk)
 static inline void scs_init(void) {}
 static inline void scs_task_reset(struct task_struct *tsk) {}
 static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
-static inline bool scs_corrupted(struct task_struct *tsk) { return false; }
 static inline void scs_release(struct task_struct *tsk) {}
+static inline bool task_scs_end_corrupted(struct task_struct *tsk) { return false; }
 
 #endif /* CONFIG_SHADOW_CALL_STACK */
 
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 934e03cfaec7..a1d815a11b90 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3878,6 +3878,9 @@ static inline void schedule_debug(struct task_struct *prev, bool preempt)
 #ifdef CONFIG_SCHED_STACK_END_CHECK
 	if (task_stack_end_corrupted(prev))
 		panic("corrupted stack end detected inside scheduler\n");
+
+	if (task_scs_end_corrupted(prev))
+		panic("corrupted shadow stack detected inside scheduler\n");
 #endif
 
 #ifdef CONFIG_DEBUG_ATOMIC_SLEEP
diff --git a/kernel/scs.c b/kernel/scs.c
index aea841cd7586..faf0ecd7b893 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -98,7 +98,8 @@ void scs_release(struct task_struct *tsk)
 	if (!s)
 		return;
 
-	WARN(scs_corrupted(tsk), "corrupted shadow stack detected when freeing task\n");
+	WARN(task_scs_end_corrupted(tsk),
+	     "corrupted shadow stack detected when freeing task\n");
 	scs_check_usage(tsk);
 	scs_free(s);
 }
-- 
2.26.2.761.g0e0b3e54be-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
