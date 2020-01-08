Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B984A134B0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:58:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M0Zz5l/4prVsPnviSH9ZqHmDAj1nI4k0VeGd7fmQNZo=; b=b/HnqCFbnk2VHYD2ASw+MODpDZ
	SXLTEF6JPdmrJTEuZ6U397kUiu6NE9xwQm5hNtQSaU+TpTHm8MS3NnBnMN++y7icNfU69Pwzzc3kx
	JDUW4ZNbT+TcrRRPGO3Jlb+UupsBXkJJqR3eraH6LTrd8vLFZ2muWjWIbT2oQh0AF5rUaGAccJ5QK
	txtD3sunC2TJXLgMBmf2R4Z8IL90qrbZLk2CeOq7U79BgZhdZXsxJVhYnp5ZkrRT3Vc+GPwi8gWMg
	U1y7lB+Z76TCNPr7HqzO7+W5fYZENf4phNq+UXCDLvzm5uNhtcdaTHxmy9VKNmg+WohfiJhhV6EDO
	MWNQqzEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGWh-00085l-Mx; Wed, 08 Jan 2020 18:57:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVm-0007Of-QK
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EAA2B328;
 Wed,  8 Jan 2020 10:56:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 66AFB3F534;
 Wed,  8 Jan 2020 10:56:55 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 03/17] arm64: entry: move arm64_preempt_schedule_irq to
 entry-common.c
Date: Wed,  8 Jan 2020 18:56:20 +0000
Message-Id: <20200108185634.1163-4-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105659_038022_7A39E0D2 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Subsequent patches will pull more of the IRQ entry handling into C. To
keep this in one place, let's move arm64_preempt_schedule_irq() into
entry-common.c along with the other entry management functions.

We no longer need to include <linux/lockdep.h> in process.c, so the
include directive is removed.

There should be no functional change as a result of this patch.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will@kernel.org>
---
---
 arch/arm64/kernel/entry-common.c | 19 +++++++++++++++++++
 arch/arm64/kernel/process.c      | 17 -----------------
 2 files changed, 19 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index fde59981445c..4fa058453468 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -6,7 +6,10 @@
  */
 
 #include <linux/context_tracking.h>
+#include <linux/linkage.h>
+#include <linux/lockdep.h>
 #include <linux/ptrace.h>
+#include <linux/sched/debug.h>
 #include <linux/thread_info.h>
 
 #include <asm/cpufeature.h>
@@ -330,3 +333,19 @@ asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
 }
 NOKPROBE_SYMBOL(el0_sync_compat_handler);
 #endif /* CONFIG_COMPAT */
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
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 71f788cd2b18..94b3ae351af9 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -17,7 +17,6 @@
 #include <linux/sched/task.h>
 #include <linux/sched/task_stack.h>
 #include <linux/kernel.h>
-#include <linux/lockdep.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
 #include <linux/sysctl.h>
@@ -633,19 +632,3 @@ static int __init tagged_addr_init(void)
 
 core_initcall(tagged_addr_init);
 #endif	/* CONFIG_ARM64_TAGGED_ADDR_ABI */
-
-asmlinkage void __sched arm64_preempt_schedule_irq(void)
-{
-	lockdep_assert_irqs_disabled();
-
-	/*
-	 * Preempting a task from an IRQ means we leave copies of PSTATE
-	 * on the stack. cpufeature's enable calls may modify PSTATE, but
-	 * resuming one of these preempted tasks would undo those changes.
-	 *
-	 * Only allow a task to be preempted once cpufeatures have been
-	 * enabled.
-	 */
-	if (static_branch_likely(&arm64_const_caps_ready))
-		preempt_schedule_irq();
-}
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
