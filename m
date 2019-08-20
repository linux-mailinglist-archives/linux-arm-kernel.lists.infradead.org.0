Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E954967F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=faNm8Tao1xrLxE058B7TshTWUtZI/EQJNTbZdghw9AE=; b=WsLJJV8Z7P/ln6
	fkc54RnKngQ9CVjftS8lfXjyYc94vQNmu1Gamq9eCjBgwfhiuCmIkGoJ8/IthkDgv6ogJUFPNlD0w
	QsH/rK/UqUPNv6AewFYTy9R0fpu8JB0UX2yePiRfHNg05UBaYmPKTMiRTZO/CxnfARA/jXDCpA991
	NCYqhZAJMCCKuCM3rRQMdzTCkcQorVNp5dzAAdffGIHEw8DksOiEKpu3XEofSnjMNUufLyV7tyits
	c7WwBuFffz5vZN0qaqpPXe4lZTcQnfmkioGfbrAczjA2o2afkf9SeCtH/7vdtBPNywEwa7RRhbdnR
	PFv8bo76kNUJL78/Kddg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08DV-0000U0-NP; Tue, 20 Aug 2019 17:46:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i08DL-0000TD-CV
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:46:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4D8D728;
 Tue, 20 Aug 2019 10:46:31 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 767623F718;
 Tue, 20 Aug 2019 10:46:30 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: entry: Move ct_user_exit before any other exception
Date: Tue, 20 Aug 2019 18:45:57 +0100
Message-Id: <20190820174557.88327-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104635_513032_15C0DB74 
X-CRM114-Status: GOOD (  11.78  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When taking an SError or Debug exception from EL0, we run the C
handler for these exceptions before updating the context tracking
code and unmasking lower priority interrupts.

When booting with nohz_full lockdep tells us we got this wrong:
| =============================
| WARNING: suspicious RCU usage
| 5.3.0-rc2-00010-gb4b5e9dcb11b-dirty #11271 Not tainted
| -----------------------------
| include/linux/rcupdate.h:643 rcu_read_unlock() used illegally wh!
|
| other info that might help us debug this:
|
|
| RCU used illegally from idle CPU!
| rcu_scheduler_active = 2, debug_locks = 1
| RCU used illegally from extended quiescent state!
| 1 lock held by a.out/432:
|  #0: 00000000c7a79515 (rcu_read_lock){....}, at: brk_handler+0x00
|
| stack backtrace:
| CPU: 1 PID: 432 Comm: a.out Not tainted 5.3.0-rc2-00010-gb4b5e9d1
| Hardware name: ARM LTD ARM Juno Development Platform/ARM Juno De8
| Call trace:
|  dump_backtrace+0x0/0x140
|  show_stack+0x14/0x20
|  dump_stack+0xbc/0x104
|  lockdep_rcu_suspicious+0xf8/0x108
|  brk_handler+0x164/0x1b0
|  do_debug_exception+0x11c/0x278
|  el0_dbg+0x14/0x20

Moving the ct_user_exit calls to be before do_debug_exception() means
they are also before trace_hardirqs_off() has been updated. Add a new
ct_user_exit_irqoff macro to avoid the context-tracking code using
irqsave/restore before we've updated trace_hardirqs_off(). To be
consistent, do this everywhere.

The C helper is called enter_from_user_mode() to match x86 in the hope
we can merge them into kernel/context_tracking.c later.

Cc: Masami Hiramatsu <mhiramat@kernel.org>
Fixes: 6c81fe7925cc4c42 ("arm64: enable context tracking")
Signed-off-by: James Morse <james.morse@arm.com>
---
Changes since v1:
 * Merged two patches
 * Use _norqirq version of user_exit()

This is based on arm64's for-next/core


 arch/arm64/include/asm/exception.h |  2 ++
 arch/arm64/kernel/entry.S          | 36 ++++++++++++++++--------------
 arch/arm64/kernel/traps.c          |  9 ++++++++
 3 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index ed57b760f38c..a17393ff6677 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -30,4 +30,6 @@ static inline u32 disr_to_esr(u64 disr)
 	return esr;
 }
 
+asmlinkage void enter_from_user_mode(void);
+
 #endif	/* __ASM_EXCEPTION_H */
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 320a30dbe35e..84a822748c84 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -30,9 +30,9 @@
  * Context tracking subsystem.  Used to instrument transitions
  * between user and kernel mode.
  */
-	.macro ct_user_exit
+	.macro ct_user_exit_irqoff
 #ifdef CONFIG_CONTEXT_TRACKING
-	bl	context_tracking_user_exit
+	bl	enter_from_user_mode
 #endif
 	.endm
 
@@ -792,8 +792,8 @@ el0_cp15:
 	/*
 	 * Trapped CP15 (MRC, MCR, MRRC, MCRR) instructions
 	 */
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_cp15instr
@@ -805,8 +805,8 @@ el0_da:
 	 * Data abort handling
 	 */
 	mrs	x26, far_el1
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	clear_address_tag x0, x26
 	mov	x1, x25
 	mov	x2, sp
@@ -818,11 +818,11 @@ el0_ia:
 	 */
 	mrs	x26, far_el1
 	gic_prio_kentry_setup tmp=x0
+	ct_user_exit_irqoff
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
-	ct_user_exit
 	mov	x0, x26
 	mov	x1, x25
 	mov	x2, sp
@@ -832,8 +832,8 @@ el0_fpsimd_acc:
 	/*
 	 * Floating Point or Advanced SIMD access
 	 */
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_fpsimd_acc
@@ -842,8 +842,8 @@ el0_sve_acc:
 	/*
 	 * Scalable Vector Extension access
 	 */
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_sve_acc
@@ -852,8 +852,8 @@ el0_fpsimd_exc:
 	/*
 	 * Floating Point, Advanced SIMD or SVE exception
 	 */
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_fpsimd_exc
@@ -868,11 +868,11 @@ el0_sp_pc:
 	 * Stack or PC alignment exception handling
 	 */
 	gic_prio_kentry_setup tmp=x0
+	ct_user_exit_irqoff
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
-	ct_user_exit
 	mov	x0, x26
 	mov	x1, x25
 	mov	x2, sp
@@ -882,8 +882,8 @@ el0_undef:
 	/*
 	 * Undefined instruction
 	 */
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, sp
 	bl	do_undefinstr
 	b	ret_to_user
@@ -891,8 +891,8 @@ el0_sys:
 	/*
 	 * System instructions, for trapped cache maintenance instructions
 	 */
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, x25
 	mov	x1, sp
 	bl	do_sysinstr
@@ -902,17 +902,18 @@ el0_dbg:
 	 * Debug exception handling
 	 */
 	tbnz	x24, #0, el0_inv		// EL0 only
+	mrs	x24, far_el1
 	gic_prio_kentry_setup tmp=x3
-	mrs	x0, far_el1
+	ct_user_exit_irqoff
+	mov	x0, x24
 	mov	x1, x25
 	mov	x2, sp
 	bl	do_debug_exception
 	enable_da_f
-	ct_user_exit
 	b	ret_to_user
 el0_inv:
+	ct_user_exit_irqoff
 	enable_daif
-	ct_user_exit
 	mov	x0, sp
 	mov	x1, #BAD_SYNC
 	mov	x2, x25
@@ -925,13 +926,13 @@ el0_irq:
 	kernel_entry 0
 el0_irq_naked:
 	gic_prio_irq_setup pmr=x20, tmp=x0
+	ct_user_exit_irqoff
 	enable_da_f
 
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
 
-	ct_user_exit
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 	tbz	x22, #55, 1f
 	bl	do_el0_irq_bp_hardening
@@ -958,13 +959,14 @@ ENDPROC(el1_error)
 el0_error:
 	kernel_entry 0
 el0_error_naked:
-	mrs	x1, esr_el1
+	mrs	x25, esr_el1
 	gic_prio_kentry_setup tmp=x2
+	ct_user_exit_irqoff
 	enable_dbg
 	mov	x0, sp
+	mov	x1, x25
 	bl	do_serror
 	enable_da_f
-	ct_user_exit
 	b	ret_to_user
 ENDPROC(el0_error)
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index a5d7ce4297b0..6e950908eb97 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -7,9 +7,11 @@
  */
 
 #include <linux/bug.h>
+#include <linux/context_tracking.h>
 #include <linux/signal.h>
 #include <linux/personality.h>
 #include <linux/kallsyms.h>
+#include <linux/kprobes.h>
 #include <linux/spinlock.h>
 #include <linux/uaccess.h>
 #include <linux/hardirq.h>
@@ -900,6 +902,13 @@ asmlinkage void do_serror(struct pt_regs *regs, unsigned int esr)
 		nmi_exit();
 }
 
+asmlinkage void enter_from_user_mode(void)
+{
+	CT_WARN_ON(ct_state() != CONTEXT_USER);
+	user_exit_irqoff();
+}
+NOKPROBE_SYMBOL(enter_from_user_mode);
+
 void __pte_error(const char *file, int line, unsigned long val)
 {
 	pr_err("%s:%d: bad pte %016lx.\n", file, line, val);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
