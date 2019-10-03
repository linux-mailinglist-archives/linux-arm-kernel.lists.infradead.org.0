Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CAFCA832
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYANXNKkBwL5nU9J4CJBb8WxJGJq9ut01YEAnlg9mSA=; b=eS88gq5RDA9NRo
	HXkpuR1OSAR+tiffyfbEGyzEh1afY/uFjC5VnPRXojvcGJRbNsUKZMReGaIPE8XkGnALIgfy2w38r
	m8dfT6RahSyqF7VrNEDuwZbC0owkPBD218JdVKJ11C/XUa5LdTQ2Ap4RcrZgRhehxsx7mwmFxZodf
	Wwu1Dm03K35oFk7hnDbLRVX+M0y1YZesHPIw3q0GJ4folbtI2HmDuE9YTWl/7iIrR7yctem52EI2j
	HPUQcZdXUJI9UTv32yEbOUjikbmr0Kk4BPqmd8m6CrmNNG+BbfbMB/CZy615oHeVvhEXeHJcyNChx
	cp0nA2jCMli9DVjhh4Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4kH-0000YQ-Kl; Thu, 03 Oct 2019 17:18:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4j7-0007ov-By
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E015F1000;
 Thu,  3 Oct 2019 10:17:16 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD4133F739;
 Thu,  3 Oct 2019 10:17:15 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/8] arm64: entry: convert el1_sync to C
Date: Thu,  3 Oct 2019 18:16:39 +0100
Message-Id: <20191003171642.135652-6-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003171642.135652-1-james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101717_516294_F46FE521 
X-CRM114-Status: GOOD (  17.80  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

This patch converts the EL1 sync entry assembly logic to C code.

Doing this will allow us to make changes in a slightly more
readable way. A case in point is supporting kernel-first RAS.
do_sea() should be called on the CPU that took the fault.

Largely the assembly code is converted to C in a relatively
straightforward manner.

Since all sync sites share a common asm entry point, the ASM_BUG()
instances are no longer required for effective backtraces back to
assembly, and we don't need similar BUG() entries.

The ESR_ELx.EC codes for all (supported) debug exceptions are now
checked in the el1_sync_handler's switch statement, which renders the
check in el1_dbg redundant. This both simplifies the el1_dbg handler,
and makes the EL1 exception handling more robust to
currently-unallocated ESR_ELx.EC encodings.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
[split out of a bigger series, added nokprobes, moved prototypes]
Signed-off-by: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
---
 arch/arm64/include/asm/exception.h |  1 +
 arch/arm64/kernel/Makefile         |  6 +-
 arch/arm64/kernel/entry-common.c   | 98 ++++++++++++++++++++++++++++++
 arch/arm64/kernel/entry.S          | 69 +--------------------
 4 files changed, 103 insertions(+), 71 deletions(-)
 create mode 100644 arch/arm64/kernel/entry-common.c

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index 8bb3fe2d71a8..e2f87b4ecbfc 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -9,6 +9,7 @@
 
 #include <asm/esr.h>
 #include <asm/kprobes.h>
+#include <asm/ptrace.h>
 
 #include <linux/interrupt.h>
 
diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 478491f07b4f..fc6488660f64 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -13,9 +13,9 @@ CFLAGS_REMOVE_return_address.o = $(CC_FLAGS_FTRACE)
 
 # Object file lists.
 obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
-			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
-			   sys.o stacktrace.o time.o traps.o io.o vdso.o	\
-			   hyp-stub.o psci.o cpu_ops.o insn.o	\
+			   entry-common.o entry-fpsimd.o process.o ptrace.o	\
+			   setup.o signal.o sys.o stacktrace.o time.o traps.o	\
+			   io.o vdso.o hyp-stub.o psci.o cpu_ops.o insn.o	\
 			   return_address.o cpuinfo.o cpu_errata.o		\
 			   cpufeature.o alternative.o cacheinfo.o		\
 			   smp.o smp_spin_table.o topology.o smccc-call.o	\
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
new file mode 100644
index 000000000000..e726d1f4b9e9
--- /dev/null
+++ b/arch/arm64/kernel/entry-common.c
@@ -0,0 +1,98 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Exception handling code
+ *
+ * Copyright (C) 2019 ARM Ltd.
+ */
+
+#include <linux/context_tracking.h>
+#include <linux/ptrace.h>
+#include <linux/thread_info.h>
+
+#include <asm/cpufeature.h>
+#include <asm/daifflags.h>
+#include <asm/esr.h>
+#include <asm/exception.h>
+#include <asm/kprobes.h>
+#include <asm/sysreg.h>
+
+static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long far = read_sysreg(far_el1);
+
+	local_daif_inherit(regs);
+	far = untagged_addr(far);
+	do_mem_abort(far, esr, regs);
+}
+NOKPROBE_SYMBOL(el1_abort);
+
+static void notrace el1_pc(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long far = read_sysreg(far_el1);
+
+	local_daif_inherit(regs);
+	do_sp_pc_abort(far, esr, regs);
+}
+NOKPROBE_SYMBOL(el1_pc);
+
+static void el1_undef(struct pt_regs *regs)
+{
+	local_daif_inherit(regs);
+	do_undefinstr(regs);
+}
+NOKPROBE_SYMBOL(el1_undef);
+
+static void el1_inv(struct pt_regs *regs, unsigned long esr)
+{
+	local_daif_inherit(regs);
+	bad_mode(regs, 0, esr);
+}
+NOKPROBE_SYMBOL(el1_inv);
+
+static void notrace el1_dbg(struct pt_regs *regs, unsigned long esr)
+{
+	unsigned long far = read_sysreg(far_el1);
+
+	/*
+	 * The CPU masked interrupts, and we are leaving them masked during
+	 * do_debug_exception(). Update PMR as if we had called
+	 * local_mask_daif().
+	 */
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
+
+	do_debug_exception(far, esr, regs);
+}
+NOKPROBE_SYMBOL(el1_dbg);
+
+asmlinkage void notrace el1_sync_handler(struct pt_regs *regs)
+{
+	unsigned long esr = read_sysreg(esr_el1);
+
+	switch (ESR_ELx_EC(esr)) {
+	case ESR_ELx_EC_DABT_CUR:
+	case ESR_ELx_EC_IABT_CUR:
+		el1_abort(regs, esr);
+		break;
+	/*
+	 * We don't handle ESR_ELx_EC_SP_ALIGN, since we will have hit a
+	 * recursive exception when trying to push the initial pt_regs.
+	 */
+	case ESR_ELx_EC_PC_ALIGN:
+		el1_pc(regs, esr);
+		break;
+	case ESR_ELx_EC_SYS64:
+	case ESR_ELx_EC_UNKNOWN:
+		el1_undef(regs);
+		break;
+	case ESR_ELx_EC_BREAKPT_CUR:
+	case ESR_ELx_EC_SOFTSTP_CUR:
+	case ESR_ELx_EC_WATCHPT_CUR:
+	case ESR_ELx_EC_BRK64:
+		el1_dbg(regs, esr);
+		break;
+	default:
+		el1_inv(regs, esr);
+	};
+}
+NOKPROBE_SYMBOL(el1_sync_handler);
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index e304fe04b098..5d7f42eb0e89 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -578,76 +578,9 @@ ENDPROC(el1_error_invalid)
 	.align	6
 el1_sync:
 	kernel_entry 1
-	mrs	x1, esr_el1			// read the syndrome register
-	lsr	x24, x1, #ESR_ELx_EC_SHIFT	// exception class
-	cmp	x24, #ESR_ELx_EC_DABT_CUR	// data abort in EL1
-	b.eq	el1_da
-	cmp	x24, #ESR_ELx_EC_IABT_CUR	// instruction abort in EL1
-	b.eq	el1_ia
-	cmp	x24, #ESR_ELx_EC_SYS64		// configurable trap
-	b.eq	el1_undef
-	cmp	x24, #ESR_ELx_EC_PC_ALIGN	// pc alignment exception
-	b.eq	el1_pc
-	cmp	x24, #ESR_ELx_EC_UNKNOWN	// unknown exception in EL1
-	b.eq	el1_undef
-	cmp	x24, #ESR_ELx_EC_BREAKPT_CUR	// debug exception in EL1
-	b.ge	el1_dbg
-	b	el1_inv
-
-el1_ia:
-	/*
-	 * Fall through to the Data abort case
-	 */
-el1_da:
-	/*
-	 * Data abort handling
-	 */
-	mrs	x3, far_el1
-	inherit_daif	pstate=x23, tmp=x2
-	clear_address_tag x0, x3
-	mov	x2, sp				// struct pt_regs
-	bl	do_mem_abort
-
-	kernel_exit 1
-el1_pc:
-	/*
-	 * PC alignment exception handling. We don't handle SP alignment faults,
-	 * since we will have hit a recursive exception when trying to push the
-	 * initial pt_regs.
-	 */
-	mrs	x0, far_el1
-	inherit_daif	pstate=x23, tmp=x2
-	mov	x2, sp
-	bl	do_sp_pc_abort
-	ASM_BUG()
-el1_undef:
-	/*
-	 * Undefined instruction
-	 */
-	inherit_daif	pstate=x23, tmp=x2
 	mov	x0, sp
-	bl	do_undefinstr
-	kernel_exit 1
-el1_dbg:
-	/*
-	 * Debug exception handling
-	 */
-	cmp	x24, #ESR_ELx_EC_BRK64		// if BRK64
-	cinc	x24, x24, eq			// set bit '0'
-	tbz	x24, #0, el1_inv		// EL1 only
-	gic_prio_kentry_setup tmp=x3
-	mrs	x0, far_el1
-	mov	x2, sp				// struct pt_regs
-	bl	do_debug_exception
+	bl	el1_sync_handler
 	kernel_exit 1
-el1_inv:
-	// TODO: add support for undefined instructions in kernel mode
-	inherit_daif	pstate=x23, tmp=x2
-	mov	x0, sp
-	mov	x2, x1
-	mov	x1, #BAD_SYNC
-	bl	bad_mode
-	ASM_BUG()
 ENDPROC(el1_sync)
 
 	.align	6
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
