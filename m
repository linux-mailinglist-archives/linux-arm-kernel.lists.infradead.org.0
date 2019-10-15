Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F13D7DA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D+bwQLMW0fzUzb9qhpoLjJkACYEYxQLh0F4xUJFGS+U=; b=rpt2gLMchcenjJ
	pwRP3xRcSE10GCiJOS8RzbhASScGY4l8bl4zcbgi4ZFUkkf2mRkQTOJBj5nHN9Itnx+42u3eQrozN
	UXLkugj8xV/Y5BUWI+Jy2Xr8VohA4DtV6LkgXh+nBNjKMnuVdrLQKePbnTnQ8vfQ8+6VI0HzeAUkF
	P4nENDtZU9I4WQLowEj10Lr0KH/GEEHl8qxMsL70wUGyfRkyTpSuF2PaBqO2iYeIwKebXy1UBH17b
	Pe2sw11ce9SrEhqnXkunn4JU74UlHL/jJaaEOHOHJVEX73d8k+doqYDu6Z1dNLcLdnS9KN4QUk7d5
	aWMEoTcj7GUSIQQhuzIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQaA-0003Vi-EH; Tue, 15 Oct 2019 17:26:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQa1-0003Ut-GP
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:25:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 393C2337;
 Tue, 15 Oct 2019 10:25:51 -0700 (PDT)
Received: from eglon.cambridge.arm.com (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A39673F68E;
 Tue, 15 Oct 2019 10:25:49 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: entry.S: Do not preempt from IRQ before all
 cpufeatures are enabled
Date: Tue, 15 Oct 2019 18:25:44 +0100
Message-Id: <20191015172544.186627-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_102553_635346_40566303 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Preempting from IRQ-return means that the task has its PSTATE saved
on the stack, which will get restored when the task is resumed and does
the actual IRQ return.

However, enabling some CPU features requires modifying the PSTATE. This
means that, if a task was scheduled out during an IRQ-return before all
CPU features are enabled, the task might restore a PSTATE that does not
include the feature enablement changes once scheduled back in.

* Task 1:

PAN == 0 ---|                          |---------------
            |                          |<- return from IRQ, PSTATE.PAN = 0
            | <- IRQ                   |
            +--------+ <- preempt()  +--
                                     ^
                                     |
                                     reschedule Task 1, PSTATE.PAN == 1
* Init:
        --------------------+------------------------
                            ^
                            |
                            enable_cpu_features
                            set PSTATE.PAN on all CPUs

Worse than this, since PSTATE is untouched when task switching is done,
a task missing the new bits in PSTATE might affect another task, if both
do direct calls to schedule() (outside of IRQ/exception contexts).

Fix this by preventing preemption on IRQ-return until features are
enabled on all CPUs.

This way the only PSTATE values that are saved on the stack are from
synchronous exceptions. These are expected to be fatal this early, the
exception is BRK for WARN_ON(), but as this uses do_debug_exception()
which keeps IRQs masked, it shouldn't call schedule().

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
[Replaced a really cool hack, with an even simpler static key in C.
 expanded commit message with Julien's cover-letter ascii art]
Signed-off-by: James Morse <james.morse@arm.com>
---
The suspicious __sched annotation here is to stop this symbol from
appearing in wchan. I haven't managed to make this happen, but I
can't see what stops it.

Previous version:
https://lore.kernel.org/linux-arm-kernel/20191010163447.136049-1-james.morse@arm.com/


I think the reason we don't see this happen because cpufeature enable calls
happen early, when there is not a lot going on. I couldn't hit it when
trying. I believe Julien did, by adding sleep statements(?) to kthread().

If we want to send this to stable, the first feature that depended on this
was PAN:
Fixes: 7209c868600b ("arm64: mm: Set PSTATE.PAN from the cpu_enable_pan() call")

 arch/arm64/kernel/entry.S   |  2 +-
 arch/arm64/kernel/process.c | 18 ++++++++++++++++++
 include/linux/sched.h       |  1 +
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 84a822748c84..07b621bcaf1f 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -680,7 +680,7 @@ alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	orr	x24, x24, x0
 alternative_else_nop_endif
 	cbnz	x24, 1f				// preempt count != 0 || NMI return path
-	bl	preempt_schedule_irq		// irq en/disable is done inside
+	bl	arm64_preempt_schedule_irq	// irq en/disable is done inside
 1:
 #endif
 
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index a47462def04b..f088ecf5d4c9 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -17,6 +17,7 @@
 #include <linux/sched/task.h>
 #include <linux/sched/task_stack.h>
 #include <linux/kernel.h>
+#include <linux/lockdep.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
 #include <linux/sysctl.h>
@@ -44,6 +45,7 @@
 #include <asm/alternative.h>
 #include <asm/arch_gicv3.h>
 #include <asm/compat.h>
+#include <asm/cpufeature.h>
 #include <asm/cacheflush.h>
 #include <asm/exec.h>
 #include <asm/fpsimd.h>
@@ -633,3 +635,19 @@ static int __init tagged_addr_init(void)
 
 core_initcall(tagged_addr_init);
 #endif	/* CONFIG_ARM64_TAGGED_ADDR_ABI */
+
+asmlinkage void __sched arm64_preempt_schedule_irq(void)
+{
+	lockdep_assert_irqs_disabled();
+
+	/*
+	 * Preempting a task from an IRQ means we leave copies of PSTATE
+	 * on the stack. cpufeature's enable calls may modify PSTATE, but
+	 * resuming one of these preempted tasks would undo those changes.
+	 *
+	 * Only allow a task to be preempted once cpufeatures have been
+	 * enabled.
+	 */
+	if (static_branch_likely(&arm64_const_caps_ready))
+		preempt_schedule_irq();
+}
diff --git a/include/linux/sched.h b/include/linux/sched.h
index 2c2e56bd8913..67a1d86981a9 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -223,6 +223,7 @@ extern long schedule_timeout_uninterruptible(long timeout);
 extern long schedule_timeout_idle(long timeout);
 asmlinkage void schedule(void);
 extern void schedule_preempt_disabled(void);
+asmlinkage void preempt_schedule_irq(void);
 
 extern int __must_check io_schedule_prepare(void);
 extern void io_schedule_finish(int token);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
