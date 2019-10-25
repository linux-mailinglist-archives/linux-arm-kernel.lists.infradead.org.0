Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776AAE517E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 18:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiD9X0yZNGOOAsZB2BlL74uppBoL9KnihwPvwJorBPM=; b=X/SO7NiT1Met58
	aKpluBdghtN8sJMFnlb/hIjttORqVCWRGPIp0ngO74PwyVDvePLIi9++2KdXf6FN+Wh4GZ7rtfKy+
	a5lfEoO7yB6Ssasw5RO5/2GgCdJREfe4c1LqTuuGNcQwROHTJfaaD3eHME7O2AYBC+01yFfrzuJfy
	Cz8qZY/5bKV474G2ZwBSma8z8OyPif3oGUb9IXiyLfU6AGz0mGsPCmQLpD9nMTsYTlDQ0egNEdTL7
	OFfgxtQljiHlS7l+aFgt25dCYl1hmRhdWuCEpbKcp1RMv8ShS4VKtDFa54mX1DsHhNyEdHTHzW2ou
	ufcH27qHLEMsqhbbDAuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO2hN-0007Zb-1Y; Fri, 25 Oct 2019 16:44:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO2fx-0006ID-Ci
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 16:43:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0720D337;
 Fri, 25 Oct 2019 09:42:57 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 04E043F71A;
 Fri, 25 Oct 2019 09:42:55 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/7] arm64: Remove asmlinkage from updated functions
Date: Fri, 25 Oct 2019 17:42:15 +0100
Message-Id: <20191025164216.53626-7-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025164216.53626-1-james.morse@arm.com>
References: <20191025164216.53626-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_094257_687256_7EF621BD 
X-CRM114-Status: GOOD (  13.57  )
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

Now that the callers of these functions have moved into C, they no longer
need the asmlinkage annotation. Remove it.

Signed-off-by: James Morse <james.morse@arm.com>
Acked-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/include/asm/exception.h | 36 +++++++++++++-----------------
 arch/arm64/kernel/fpsimd.c         |  6 ++---
 arch/arm64/kernel/syscall.c        |  4 ++--
 arch/arm64/kernel/traps.c          |  8 +++----
 arch/arm64/mm/fault.c              | 16 ++++++-------
 5 files changed, 32 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
index a9e376623ecf..4d5f3b5f50cd 100644
--- a/arch/arm64/include/asm/exception.h
+++ b/arch/arm64/include/asm/exception.h
@@ -32,26 +32,22 @@ static inline u32 disr_to_esr(u64 disr)
 }
 
 asmlinkage void enter_from_user_mode(void);
-asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
-			     struct pt_regs *regs);
-asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
-			       struct pt_regs *regs);
-asmlinkage void do_undefinstr(struct pt_regs *regs);
+void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
+void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
+void do_undefinstr(struct pt_regs *regs);
 asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
-asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
-				   unsigned int esr, struct pt_regs *regs);
-asmlinkage void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs);
-asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs);
-asmlinkage void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs);
-asmlinkage void do_sysinstr(unsigned int esr, struct pt_regs *regs);
-asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
-			       struct pt_regs *regs);
-asmlinkage void bad_el0_sync(struct pt_regs *regs, int reason,
-			     unsigned int esr);
-asmlinkage void do_cp15instr(unsigned int esr, struct pt_regs *regs);
-asmlinkage void el0_svc_handler(struct pt_regs *regs);
-asmlinkage void el0_svc_compat_handler(struct pt_regs *regs);
-asmlinkage void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
-				       struct pt_regs *regs);
+void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
+			struct pt_regs *regs);
+void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs);
+void do_sve_acc(unsigned int esr, struct pt_regs *regs);
+void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs);
+void do_sysinstr(unsigned int esr, struct pt_regs *regs);
+void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs);
+void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr);
+void do_cp15instr(unsigned int esr, struct pt_regs *regs);
+void el0_svc_handler(struct pt_regs *regs);
+void el0_svc_compat_handler(struct pt_regs *regs);
+void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
+			    struct pt_regs *regs);
 
 #endif	/* __ASM_EXCEPTION_H */
diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
index 37d3912cfe06..3eb338f14386 100644
--- a/arch/arm64/kernel/fpsimd.c
+++ b/arch/arm64/kernel/fpsimd.c
@@ -920,7 +920,7 @@ void fpsimd_release_task(struct task_struct *dead_task)
  * would have disabled the SVE access trap for userspace during
  * ret_to_user, making an SVE access trap impossible in that case.
  */
-asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs)
+void do_sve_acc(unsigned int esr, struct pt_regs *regs)
 {
 	/* Even if we chose not to use SVE, the hardware could still trap: */
 	if (unlikely(!system_supports_sve()) || WARN_ON(is_compat_task())) {
@@ -947,7 +947,7 @@ asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs)
 /*
  * Trapped FP/ASIMD access.
  */
-asmlinkage void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs)
+void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs)
 {
 	/* TODO: implement lazy context saving/restoring */
 	WARN_ON(1);
@@ -956,7 +956,7 @@ asmlinkage void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs)
 /*
  * Raise a SIGFPE for the current process.
  */
-asmlinkage void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs)
+void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs)
 {
 	unsigned int si_code = FPE_FLTUNK;
 
diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
index 871c739f060a..9a9d98a443fc 100644
--- a/arch/arm64/kernel/syscall.c
+++ b/arch/arm64/kernel/syscall.c
@@ -154,14 +154,14 @@ static inline void sve_user_discard(void)
 	sve_user_disable();
 }
 
-asmlinkage void el0_svc_handler(struct pt_regs *regs)
+void el0_svc_handler(struct pt_regs *regs)
 {
 	sve_user_discard();
 	el0_svc_common(regs, regs->regs[8], __NR_syscalls, sys_call_table);
 }
 
 #ifdef CONFIG_COMPAT
-asmlinkage void el0_svc_compat_handler(struct pt_regs *regs)
+void el0_svc_compat_handler(struct pt_regs *regs)
 {
 	el0_svc_common(regs, regs->regs[7], __NR_compat_syscalls,
 		       compat_sys_call_table);
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index ba1a571a7774..54ebe24ef4b1 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -394,7 +394,7 @@ void arm64_notify_segfault(unsigned long addr)
 	force_signal_inject(SIGSEGV, code, addr);
 }
 
-asmlinkage void do_undefinstr(struct pt_regs *regs)
+void do_undefinstr(struct pt_regs *regs)
 {
 	/* check for AArch32 breakpoint instructions */
 	if (!aarch32_break_handler(regs))
@@ -669,7 +669,7 @@ static const struct sys64_hook cp15_64_hooks[] = {
 	{},
 };
 
-asmlinkage void do_cp15instr(unsigned int esr, struct pt_regs *regs)
+void do_cp15instr(unsigned int esr, struct pt_regs *regs)
 {
 	const struct sys64_hook *hook, *hook_base;
 
@@ -710,7 +710,7 @@ asmlinkage void do_cp15instr(unsigned int esr, struct pt_regs *regs)
 NOKPROBE_SYMBOL(do_cp15instr);
 #endif
 
-asmlinkage void do_sysinstr(unsigned int esr, struct pt_regs *regs)
+void do_sysinstr(unsigned int esr, struct pt_regs *regs)
 {
 	const struct sys64_hook *hook;
 
@@ -797,7 +797,7 @@ asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr)
  * bad_el0_sync handles unexpected, but potentially recoverable synchronous
  * exceptions taken from EL0. Unlike bad_mode, this returns.
  */
-asmlinkage void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr)
+void bad_el0_sync(struct pt_regs *regs, int reason, unsigned int esr)
 {
 	void __user *pc = (void __user *)instruction_pointer(regs);
 
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 844cd2535826..cb13f4daa878 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -733,8 +733,7 @@ static const struct fault_info fault_info[] = {
 	{ do_bad,		SIGKILL, SI_KERNEL,	"unknown 63"			},
 };
 
-asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
-			     struct pt_regs *regs)
+void do_mem_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
 	const struct fault_info *inf = esr_to_fault_info(esr);
 
@@ -752,15 +751,15 @@ asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
 }
 NOKPROBE_SYMBOL(do_mem_abort);
 
-asmlinkage void do_el0_irq_bp_hardening(void)
+void do_el0_irq_bp_hardening(void)
 {
 	/* PC has already been checked in entry.S */
 	arm64_apply_bp_hardening();
 }
 NOKPROBE_SYMBOL(do_el0_irq_bp_hardening);
 
-asmlinkage void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
-				       struct pt_regs *regs)
+void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
+			    struct pt_regs *regs)
 {
 	/*
 	 * We've taken an instruction abort from userspace and not yet
@@ -775,8 +774,7 @@ asmlinkage void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
 }
 NOKPROBE_SYMBOL(do_el0_ia_bp_hardening);
 
-asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
-			       struct pt_regs *regs)
+void do_sp_pc_abort(unsigned long addr, unsigned int esr, struct pt_regs *regs)
 {
 	if (user_mode(regs)) {
 		if (!is_ttbr0_addr(instruction_pointer(regs)))
@@ -896,8 +894,8 @@ static int cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
 #endif /* CONFIG_ARM64_ERRATUM_1463225 */
 NOKPROBE_SYMBOL(cortex_a76_erratum_1463225_debug_handler);
 
-asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
-				   unsigned int esr, struct pt_regs *regs)
+void do_debug_exception(unsigned long addr_if_watchpoint, unsigned int esr,
+			struct pt_regs *regs)
 {
 	const struct fault_info *inf = esr_to_debug_fault_info(esr);
 	unsigned long pc = instruction_pointer(regs);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
