Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE195134B0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:58:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Tp+R7q4qDqR6QmmxVhzdR/ymgXX4hQxrOFivPuCDT+E=; b=OGm9tv8eaIDKhRrDh5bVEGVAuI
	+8WPE75rmdPRNXe0WAocpBJAfwRCVXLnfpyv3yd8/tvEAJ8RB2amyaij8BjnAsVLcNWIhq6S5ILvg
	75nvCn0boqvjPf2keNpFiCjUm4cWFawIGYg1JUeGK4XWpY84/aewvsCxB7r2vVlzsdW3EHDoaOI/L
	gkxr/cWIWKEdG0PQrELslWcbmckMsIR9MlTHR/oKpCbap3pt9WfrDbwUxDkZTLW3XRqBqi2FgwWhW
	VnRaS+Dd2KUDCVL2G+WIzLKW1FzUZhFwCZsWELtK0uLWqgpbL84NxgsXopONU3Bns+u2hq99HZKtR
	TORhzHJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGWy-0008KE-5u; Wed, 08 Jan 2020 18:58:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGVn-0007Pn-OU
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C8EEDA7;
 Wed,  8 Jan 2020 10:56:59 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8A5EC3F534;
 Wed,  8 Jan 2020 10:56:57 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 04/17] arm64: entry: move preempt logic to C
Date: Wed,  8 Jan 2020 18:56:21 +0000
Message-Id: <20200108185634.1163-5-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105659_912048_86657B51 
X-CRM114-Status: GOOD (  12.38  )
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

Some of our preeemption logic is in C, while a portion of it is in
assembly. Let's pull the remainder  of it into C so that it lives in one
place.

At the same time, let's improve the comments regarding NMI preemption to
make it clearer why we cannot preempt from NMIs.

Subsequent patches will covert the caller of el1_preempt() to C.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry-common.c | 18 +++++++++++++++++-
 arch/arm64/kernel/entry.S        | 13 +------------
 2 files changed, 18 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 4fa058453468..b93ca2148a20 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -8,6 +8,7 @@
 #include <linux/context_tracking.h>
 #include <linux/linkage.h>
 #include <linux/lockdep.h>
+#include <linux/preempt.h>
 #include <linux/ptrace.h>
 #include <linux/sched/debug.h>
 #include <linux/thread_info.h>
@@ -334,8 +335,23 @@ asmlinkage void notrace el0_sync_compat_handler(struct pt_regs *regs)
 NOKPROBE_SYMBOL(el0_sync_compat_handler);
 #endif /* CONFIG_COMPAT */
 
-asmlinkage void __sched arm64_preempt_schedule_irq(void)
+asmlinkage void __sched el1_preempt(void)
 {
+	if (!IS_ENABLED(CONFIG_PREEMPT) || preempt_count())
+		return;
+
+	/*
+	 * To avoid nesting NMIs and overflowing the stack, we must leave NMIs
+	 * masked until the exception return. We want to context-switch with
+	 * IRQs masked but NMIs enabled, so cannot preempt an NMI.
+	 *
+	 * PSTATE.{D,A,F} are cleared for IRQ and NMI by el1_irq().
+	 * When gic_handle_irq() handles an NMI, it leaves PSTATE.I set.
+	 * If anything is set in DAIF, this is an NMI.
+	 */
+	if (system_uses_irq_prio_masking() && read_sysreg(daif) != 0)
+		return;
+
 	lockdep_assert_irqs_disabled();
 
 	/*
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 7c6a0a41676f..53ce1877a4aa 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -606,18 +606,7 @@ el1_irq:
 	irq_handler
 
 #ifdef CONFIG_PREEMPT
-	ldr	x24, [tsk, #TSK_TI_PREEMPT]	// get preempt count
-alternative_if ARM64_HAS_IRQ_PRIO_MASKING
-	/*
-	 * DA_F were cleared at start of handling. If anything is set in DAIF,
-	 * we come back from an NMI, so skip preemption
-	 */
-	mrs	x0, daif
-	orr	x24, x24, x0
-alternative_else_nop_endif
-	cbnz	x24, 1f				// preempt count != 0 || NMI return path
-	bl	arm64_preempt_schedule_irq	// irq en/disable is done inside
-1:
+	bl	el1_preempt
 #endif
 
 #ifdef CONFIG_ARM64_PSEUDO_NMI
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
