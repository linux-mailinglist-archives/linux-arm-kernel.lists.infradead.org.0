Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C2FCA887
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GD0JJFNxPhpPHpql6a4SXzjAMvN708MW4MHMzUbtTMo=; b=j1TmEVsmg/sgl6
	sbVd5Kcext5nxJdZAJggtL7jM/Iq3piIyp7R/LkEVtVmHpdi90dRoOXEVDmh3aZdau5TGnxlRPyE3
	AXGNnv6xw91cUmlTMWlmz8u2hkwtvp/ElH/T85XMX/cxN++cWbZWB0sBR7mTn5lAK5gzdiEPqAC5v
	SQBSisNMG/hnZLSA/7o7IOhiphWnTFpgeLbFMfjWj8Gf6yhusGe/dGTwMZEF4Lyt6NJbht6uiRwpM
	y5npLiYnOQbKOMWKaFpzfuvbQDcbViKVplf1R2I9ZPKF/y43ypjOVO5ot6j1bfKyO/yerRQEWdBEi
	yytQegwzq6m/XWR1KlJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4l1-0001Nx-Rh; Thu, 03 Oct 2019 17:19:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4jD-0007xh-Cy
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 860181597;
 Thu,  3 Oct 2019 10:17:22 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 838953F739;
 Thu,  3 Oct 2019 10:17:21 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 8/8] arm64: entry-common: don't touch daif before bp-hardening
Date: Thu,  3 Oct 2019 18:16:42 +0100
Message-Id: <20191003171642.135652-9-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003171642.135652-1-james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101723_533498_2A4A0CEB 
X-CRM114-Status: GOOD (  18.00  )
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

The previous patches mechanically transformed the assembly version of
entry.S to entry-common.c for synchronous exceptions.

The C version of local_daif_restore() doesn't quite do the same thing
as the assembly versions if pseudo-NMI is in use. In particular,
| local_daif_restore(DAIF_PROCCTX_NOIRQ)
will still allow pNMI to be delivered. This is not the behaviour
do_el0_ia_bp_hardening() and do_sp_pc_abort() want as it should not
be possible for the PMU handler to run as an NMI until the bp-hardening
sequence has run.

The bp-hardening calls were placed where they are because this was the
first C code to run after the relevant exceptions. As we've now moved
that point earlier, move the checks and calls earlier too.

This makes it clearer that this stuff runs before any kind of exception,
and saves modifying PSTATE twice.

Signed-off-by: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
---
 arch/arm64/include/asm/processor.h |  7 +++++++
 arch/arm64/kernel/entry-common.c   | 18 +++++++++++++++---
 arch/arm64/mm/fault.c              | 29 +----------------------------
 3 files changed, 23 insertions(+), 31 deletions(-)

diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5623685c7d13..c0c28c4589a8 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -24,6 +24,7 @@
 #include <linux/build_bug.h>
 #include <linux/cache.h>
 #include <linux/init.h>
+#include <linux/thread_info.h>
 #include <linux/stddef.h>
 #include <linux/string.h>
 
@@ -214,6 +215,12 @@ static inline void start_thread(struct pt_regs *regs, unsigned long pc,
 	regs->sp = sp;
 }
 
+static inline bool is_ttbr0_addr(unsigned long addr)
+{
+	/* entry assembly clears tags for TTBR0 addrs */
+	return addr < TASK_SIZE;
+}
+
 #ifdef CONFIG_COMPAT
 static inline void compat_start_thread(struct pt_regs *regs, unsigned long pc,
 				       unsigned long sp)
diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
index 176969e55677..eb73d250a081 100644
--- a/arch/arm64/kernel/entry-common.c
+++ b/arch/arm64/kernel/entry-common.c
@@ -14,6 +14,7 @@
 #include <asm/esr.h>
 #include <asm/exception.h>
 #include <asm/kprobes.h>
+#include <asm/mmu.h>
 #include <asm/sysreg.h>
 
 static void notrace el1_abort(struct pt_regs *regs, unsigned long esr)
@@ -112,9 +113,17 @@ static void notrace el0_ia(struct pt_regs *regs, unsigned long esr)
 {
 	unsigned long far = read_sysreg(far_el1);
 
+	/*
+	 * We've taken an instruction abort from userspace and not yet
+	 * re-enabled IRQs. If the address is a kernel address, apply
+	 * BP hardening prior to enabling IRQs and pre-emption.
+	 */
+	if (!is_ttbr0_addr(far))
+		arm64_apply_bp_hardening();
+
 	user_exit_irqoff();
-	local_daif_restore(DAIF_PROCCTX_NOIRQ);
-	do_el0_ia_bp_hardening(far, esr, regs);
+	local_daif_restore(DAIF_PROCCTX);
+	do_mem_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_ia);
 
@@ -154,8 +163,11 @@ static void notrace el0_pc(struct pt_regs *regs, unsigned long esr)
 {
 	unsigned long far = read_sysreg(far_el1);
 
+	if (!is_ttbr0_addr(instruction_pointer(regs)))
+		arm64_apply_bp_hardening();
+
 	user_exit_irqoff();
-	local_daif_restore(DAIF_PROCCTX_NOIRQ);
+	local_daif_restore(DAIF_PROCCTX);
 	do_sp_pc_abort(far, esr, regs);
 }
 NOKPROBE_SYMBOL(el0_pc);
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 0857c2fc38b9..88e4bd4bc103 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -34,6 +34,7 @@
 #include <asm/esr.h>
 #include <asm/kasan.h>
 #include <asm/kprobes.h>
+#include <asm/processor.h>
 #include <asm/sysreg.h>
 #include <asm/system_misc.h>
 #include <asm/pgtable.h>
@@ -102,12 +103,6 @@ static void mem_abort_decode(unsigned int esr)
 		data_abort_decode(esr);
 }
 
-static inline bool is_ttbr0_addr(unsigned long addr)
-{
-	/* entry assembly clears tags for TTBR0 addrs */
-	return addr < TASK_SIZE;
-}
-
 static inline bool is_ttbr1_addr(unsigned long addr)
 {
 	/* TTBR1 addresses may have a tag if KASAN_SW_TAGS is in use */
@@ -749,30 +744,8 @@ void do_el0_irq_bp_hardening(void)
 }
 NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
-void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
-			    struct pt_regs *regs)
-{
-	/*
-	 * We've taken an instruction abort from userspace and not yet
-	 * re-enabled IRQs. If the address is a kernel address, apply
-	 * BP hardening prior to enabling IRQs and pre-emption.
-	 */
-	if (!is_ttbr0_addr(addr))
-		arm64_apply_bp_hardening();
-
-	local_daif_restore(DAIF_PROCCTX);
-	do_mem_abort(addr, esr, regs);
-}
-NOKPROBE_SYMBOL(do_el0_ia_bp_hardening);
-
 void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
-	if (user_mode(regs)) {
-		if (!is_ttbr0_addr(instruction_pointer(regs)))
-			arm64_apply_bp_hardening();
-		local_daif_restore(DAIF_PROCCTX);
-	}
-
 	arm64_notify_die("SP/PC alignment exception", regs,
 			 SIGBUS, BUS_ADRALN, (void __user *)addr, esr);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
