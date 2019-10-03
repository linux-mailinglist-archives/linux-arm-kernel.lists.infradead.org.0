Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1D0CA818
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mnvWs/wEgvp8CtOp9ujIHCPfT8f9WUrrAkKG8qj4a6E=; b=R9LbfbXHQ7oi6j
	owSe2my5SQqg+PcICESIWkfbmaX3Ij4l+dnNKQIblhbOs4F22FXVqc1W0XytGxIxRCPbME7LhRL9M
	EE4kivvqowZDlv3PCdccwj4JhJDFuFA3U6kgyuy0D+AHvb/4cdhv5jdjIIjgo7W75mtWqR+I18/Mh
	B2FO2CR5E6+l5v1ZQqKrHxtXpoG7LNJnkk88FTm4Oip8b4ZcSKe2Kj+9UQ/s4hWcQPEnALDtIT841
	7AKoDuUP/3dVeGGTqNkSahMsHTydayMqDCtSyNsYs77KjaNQinfXqVtdrNN+4hJQ1Qp8hA1kxhLM7
	hrlinIdDzqAzNDhI/uIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4je-0008BK-Fq; Thu, 03 Oct 2019 17:17:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4j1-0007jq-KL
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:17:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D99441570;
 Thu,  3 Oct 2019 10:17:10 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B1D803F739;
 Thu,  3 Oct 2019 10:17:09 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/8] arm64: remove __exception annotations
Date: Thu,  3 Oct 2019 18:16:36 +0100
Message-Id: <20191003171642.135652-3-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003171642.135652-1-james.morse@arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_101711_768025_17C4A203 
X-CRM114-Status: GOOD (  18.04  )
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

Since commit 732674980139 ("arm64: unwind: reference pt_regs via embedded
stack frame") arm64 has has not used the __exception annotation to dump
the pt_regs during stack tracing. in_exception_text() has no callers.

This annotation is only used to blacklist kprobes, it means the same as
__kprobes.

Section annotations like this require the functions to be grouped
together between the start/end markers, and placed according to
the linker script. For kprobes we also have NOKPROBE_SYMBOL() which
logs the symbol address in a section that kprobes parses and
blacklists at boot.

Using NOKPROBE_SYMBOL() instead lets kprobes publish the list of
blacklisted symbols, and saves us from having an arm64 specific
spelling of __kprobes.

Signed-off-by: James Morse <james.morse@arm.com>
Cc: Masami Hiramatsu <mhiramat@kernel.org>

---
(__exception_irq_entry means no-kprobes and optionally in a section
 ftrace can use to pretty-print interrupt handler boundaries.)
---
 arch/arm64/include/asm/exception.h |  4 ++--
 arch/arm64/include/asm/traps.h     | 10 ---------
 arch/arm64/kernel/probes/kprobes.c |  4 ----
 arch/arm64/kernel/traps.c          | 10 ++++++---
 arch/arm64/kernel/vmlinux.lds.S    |  3 ---
 arch/arm64/mm/fault.c              | 34 +++++++++++++++---------------
 6 files changed, 26 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index a17393ff6677..b0b3ba56e919 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -8,14 +8,14 @@
 #define __ASM_EXCEPTION_H
 
 #include <asm/esr.h>
+#include <asm/kprobes.h>
 
 #include <linux/interrupt.h>
 
-#define __exception	__attribute__((section(".exception.text")))
 #ifdef CONFIG_FUNCTION_GRAPH_TRACER
 #define __exception_irq_entry	__irq_entry
 #else
-#define __exception_irq_entry	__exception
+#define __exception_irq_entry	__kprobes
 #endif
 
 static inline u32 disr_to_esr(u64 disr)
diff --git a/arch/arm64/include/asm/traps.h b/arch/arm64/include/asm/traps.h
index 59690613ac31..cee5928e1b7d 100644
--- a/arch/arm64/include/asm/traps.h
+++ b/arch/arm64/include/asm/traps.h
@@ -42,16 +42,6 @@ static inline int __in_irqentry_text(unsigned long ptr)
 	       ptr < (unsigned long)&__irqentry_text_end;
 }
 
-static inline int in_exception_text(unsigned long ptr)
-{
-	int in;
-
-	in = ptr >= (unsigned long)&__exception_text_start &&
-	     ptr < (unsigned long)&__exception_text_end;
-
-	return in ? : __in_irqentry_text(ptr);
-}
-
 static inline int in_entry_text(unsigned long ptr)
 {
 	return ptr >= (unsigned long)&__entry_text_start &&
diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..d1c95dcf1d78 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -455,10 +455,6 @@ int __init arch_populate_kprobe_blacklist(void)
 					(unsigned long)__irqentry_text_end);
 	if (ret)
 		return ret;
-	ret = kprobe_add_area_blacklist((unsigned long)__exception_text_start,
-					(unsigned long)__exception_text_end);
-	if (ret)
-		return ret;
 	ret = kprobe_add_area_blacklist((unsigned long)__idmap_text_start,
 					(unsigned long)__idmap_text_end);
 	if (ret)
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 34739e80211b..ba1a571a7774 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -35,6 +35,7 @@
 #include <asm/debug-monitors.h>
 #include <asm/esr.h>
 #include <asm/insn.h>
+#include <asm/kprobes.h>
 #include <asm/traps.h>
 #include <asm/smp.h>
 #include <asm/stack_pointer.h>
@@ -393,7 +394,7 @@ void arm64_notify_segfault(unsigned long addr)
 	force_signal_inject(SIGSEGV, code, addr);
 }
 
-asmlinkage void __exception do_undefinstr(struct pt_regs *regs)
+asmlinkage void do_undefinstr(struct pt_regs *regs)
 {
 	/* check for AArch32 breakpoint instructions */
 	if (!aarch32_break_handler(regs))
@@ -405,6 +406,7 @@ asmlinkage void __exception do_undefinstr(struct pt_regs *regs)
 	BUG_ON(!user_mode(regs));
 	force_signal_inject(SIGILL, ILL_ILLOPC, regs->pc);
 }
+NOKPROBE_SYMBOL(do_undefinstr);
 
 #define __user_cache_maint(insn, address, res)			\
 	if (address >= user_addr_max()) {			\
@@ -667,7 +669,7 @@ static const struct sys64_hook cp15_64_hooks[] = {
 	{},
 };
 
-asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
+asmlinkage void do_cp15instr(unsigned int esr, struct pt_regs *regs)
 {
 	const struct sys64_hook *hook, *hook_base;
 
@@ -705,9 +707,10 @@ asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
 	 */
 	do_undefinstr(regs);
 }
+NOKPROBE_SYMBOL(do_cp15instr);
 #endif
 
-asmlinkage void __exception do_sysinstr(unsigned int esr, struct pt_regs *regs)
+asmlinkage void do_sysinstr(unsigned int esr, struct pt_regs *regs)
 {
 	const struct sys64_hook *hook;
 
@@ -724,6 +727,7 @@ asmlinkage void __exception do_sysinstr(unsigned int esr, struct pt_regs *regs)
 	 */
 	do_undefinstr(regs);
 }
+NOKPROBE_SYMBOL(do_sysinstr);
 
 static const char *esr_class_str[] = {
 	[0 ... ESR_ELx_EC_MAX]		= "UNRECOGNIZED EC",
diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index aa76f7259668..009057517bdd 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -111,9 +111,6 @@ SECTIONS
 	}
 	.text : {			/* Real text segment		*/
 		_stext = .;		/* Text and read-only data	*/
-			__exception_text_start = .;
-			*(.exception.text)
-			__exception_text_end = .;
 			IRQENTRY_TEXT
 			SOFTIRQENTRY_TEXT
 			ENTRY_TEXT
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 115d7a0e4b08..ba62098de920 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -33,6 +33,7 @@
 #include <asm/debug-monitors.h>
 #include <asm/esr.h>
 #include <asm/kasan.h>
+#include <asm/kprobes.h>
 #include <asm/sysreg.h>
 #include <asm/system_misc.h>
 #include <asm/pgtable.h>
@@ -723,8 +724,8 @@ static const struct fault_info fault_info[] = {
 	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 63"			},
 };
 
-asmlinkage void __exception do_mem_abort(unsigned long addr, unsigned int esr,
-					 struct pt_regs *regs)
+asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
+			     struct pt_regs *regs)
 {
 	const struct fault_info *inf = esr_to_fault_info(esr);
 
@@ -740,16 +741,17 @@ asmlinkage void __exception do_mem_abort(unsigned long addr, unsigned int esr,
 	arm64_notify_die(inf->name, regs,
 			 inf->sig, inf->code, (void __user *)addr, esr);
 }
+NOKPROBE_SYMBOL(do_mem_abort);
 
-asmlinkage void __exception do_el0_irq_bp_hardening(void)
+asmlinkage void do_el0_irq_bp_hardening(void)
 {
 	/* PC has already been checked in entry.S */
 	arm64_apply_bp_hardening();
 }
+NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
-asmlinkage void __exception do_el0_ia_bp_hardening(unsigned long addr,
-						   unsigned int esr,
-						   struct pt_regs *regs)
+asmlinkage void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
+				       struct pt_regs *regs)
 {
 	/*
 	 * We've taken an instruction abort from userspace and not yet
@@ -762,11 +764,10 @@ asmlinkage void __exception do_el0_ia_bp_hardening(unsigned long addr,
 	local_daif_restore(DAIF_PROCCTX);
 	do_mem_abort(addr, esr, regs);
 }
+NOKPROBE_SYMBOL(do_el0_ia_bp_hardening);
 
-
-asmlinkage void __exception do_sp_pc_abort(unsigned long addr,
-					   unsigned int esr,
-					   struct pt_regs *regs)
+asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
+			       struct pt_regs *regs)
 {
 	if (user_mode(regs)) {
 		if (!is_ttbr0_addr(instruction_pointer(regs)))
@@ -777,6 +778,7 @@ asmlinkage void __exception do_sp_pc_abort(unsigned long addr,
 	arm64_notify_die("SP/PC alignment exception", regs,
 			 SIGBUS, BUS_ADRALN, (void __user *)addr, esr);
 }
+NOKPROBE_SYMBOL(do_sp_pc_abort);
 
 int __init early_brk64(unsigned long addr, unsigned int esr,
 		       struct pt_regs *regs);
@@ -859,8 +861,7 @@ NOKPROBE_SYMBOL(debug_exception_exit);
 #ifdef CONFIG_ARM64_ERRATUM_1463225
 DECLARE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
 
-static int __exception
-cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
+static int cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
 {
 	if (user_mode(regs))
 		return 0;
@@ -879,16 +880,15 @@ cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
 	return 1;
 }
 #else
-static int __exception
-cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
+static int cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
 {
 	return 0;
 }
 #endif /* CONFIG_ARM64_ERRATUM_1463225 */
+NOKPROBE_SYMBOL(cortex_a76_erratum_1463225_debug_handler);
 
-asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
-					       unsigned int esr,
-					       struct pt_regs *regs)
+asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
+				   unsigned int esr, struct pt_regs *regs)
 {
 	const struct fault_info *inf = esr_to_debug_fault_info(esr);
 	unsigned long pc = instruction_pointer(regs);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
