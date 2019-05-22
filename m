Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94033266C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:20:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=o0BRcRci+cAqlcIboVDdaW1wouJ3BiCLc9Ut0BQ2NFQ=; b=Ri8
	zo5Z0GMWm041PKBjY14UN6qSTl3Ubv7/XhczNQR2qkyMyaffvrLVQnkfk6Pe/zF/CDWZyGMao47yJ
	uaHabjx0t1nDP6N1nXJEjBuMiM57h+FUoHgOdwtinwTU+jQx06m6/ibUsHApl2/O43Dbam1wfB6xc
	x+8oDd4Prrw4C7e14XSKw40r+lJVHq2pGqvg2qDEquolVjhC3HW/bjVprWtEXNJnvNTxbOvjp2nit
	H+KZ0KBMqniGu8MHAnKk/6Gjg0Cm1+e9/gXGa3ol3667/anHrLDyzbxCntV9NFhTrfe3qDf14r1BZ
	rId/GEireikgsJYObfP6nTcQ992Tifg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTT2b-0000yy-Dv; Wed, 22 May 2019 15:20:29 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTT2V-0000yZ-64
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:20:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47DBC80D;
 Wed, 22 May 2019 08:20:22 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 37ABC3F718;
 Wed, 22 May 2019 08:20:21 -0700 (PDT)
From: Will Deacon <will.deacon@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: errata: Add workaround for Cortex-A76 erratum #1463225
Date: Wed, 22 May 2019 16:20:16 +0100
Message-Id: <20190522152016.10764-1-will.deacon@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_082023_237573_CBD7F201 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Revisions of the Cortex-A76 CPU prior to r4p0 are affected by an erratum
that can prevent interrupts from being taken when single-stepping.

This patch implements a software workaround to prevent userspace from
effectively being able to disable interrupts.

Cc: <stable@vger.kernel.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 Documentation/arm64/silicon-errata.txt |  1 +
 arch/arm64/Kconfig                     | 18 ++++++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/kernel/cpu_errata.c         | 26 ++++++++++++++++++++++++++
 arch/arm64/kernel/syscall.c            | 31 +++++++++++++++++++++++++++++++
 arch/arm64/mm/fault.c                  | 33 +++++++++++++++++++++++++++++++++
 6 files changed, 111 insertions(+), 1 deletion(-)

diff --git a/Documentation/arm64/silicon-errata.txt b/Documentation/arm64/silicon-errata.txt
index 68d9b74fd751..b29a32805ad0 100644
--- a/Documentation/arm64/silicon-errata.txt
+++ b/Documentation/arm64/silicon-errata.txt
@@ -62,6 +62,7 @@ stable kernels.
 | ARM            | Cortex-A76      | #1165522        | ARM64_ERRATUM_1165522       |
 | ARM            | Cortex-A76      | #1286807        | ARM64_ERRATUM_1286807       |
 | ARM            | Neoverse-N1     | #1188873        | ARM64_ERRATUM_1188873       |
+| ARM            | Cortex-A76      | #1463225        | ARM64_ERRATUM_1463225       |
 | ARM            | MMU-500         | #841119,#826419 | N/A                         |
 |                |                 |                 |                             |
 | Cavium         | ThunderX ITS    | #22375, #24313  | CAVIUM_ERRATUM_22375        |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 4780eb7af842..5d99f492869b 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -520,6 +520,24 @@ config ARM64_ERRATUM_1286807
 
 	  If unsure, say Y.
 
+config ARM64_ERRATUM_1463225
+	bool "Cortex-A76: Software Step might prevent interrupt recognition"
+	default y
+	help
+	  This option adds a workaround for Arm Cortex-A76 erratum 1463225.
+
+	  On the affected Cortex-A76 cores (r0p0 to r3p1), software stepping
+	  of a system call instruction (SVC) can prevent recognition of
+	  subsequent interrupts when software stepping is disabled in the
+	  exception handler of the system call and either kernel debugging
+	  is enabled or VHE is in use.
+
+	  Work around the erratum by triggering a dummy step exception
+	  when handling a system call from a task that is being stepped
+	  in a VHE configuration of the kernel.
+
+	  If unsure, say Y.
+
 config CAVIUM_ERRATUM_22375
 	bool "Cavium erratum 22375, 24313"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index defdc67d9ab4..73faee64e498 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -62,7 +62,8 @@
 #define ARM64_HAS_GENERIC_AUTH_IMP_DEF		41
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
+#define ARM64_WORKAROUND_1463225		44
 
-#define ARM64_NCAPS				44
+#define ARM64_NCAPS				45
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index e88d4e7bdfc7..88ffefd83b7a 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -502,6 +502,24 @@ static const struct midr_range arm64_ssb_cpus[] = {
 	{},
 };
 
+#ifdef CONFIG_ARM64_ERRATUM_1463225
+DEFINE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
+
+static bool
+has_cortex_a76_erratum_1463225(const struct arm64_cpu_capabilities *entry,
+			       int scope)
+{
+	struct midr_range range;
+	u32 midr = read_cpuid_id();
+
+	/* Cortex-A76 r0p0 - r3p1 */
+	range = MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 3, 1);
+
+	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
+	return is_midr_in_range(midr, &range) && is_kernel_in_hyp_mode();
+}
+#endif
+
 static void __maybe_unused
 cpu_enable_cache_maint_trap(const struct arm64_cpu_capabilities *__unused)
 {
@@ -824,6 +842,14 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		ERRATA_MIDR_RANGE(MIDR_CORTEX_A76, 0, 0, 2, 0),
 	},
 #endif
+#ifdef CONFIG_ARM64_ERRATUM_1463225
+	{
+		.desc = "ARM erratum 1463225",
+		.capability = ARM64_WORKAROUND_1463225,
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
+		.matches = has_cortex_a76_erratum_1463225,
+	},
+#endif
 	{
 	}
 };
diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
index 5610ac01c1ec..871c739f060a 100644
--- a/arch/arm64/kernel/syscall.c
+++ b/arch/arm64/kernel/syscall.c
@@ -8,6 +8,7 @@
 #include <linux/syscalls.h>
 
 #include <asm/daifflags.h>
+#include <asm/debug-monitors.h>
 #include <asm/fpsimd.h>
 #include <asm/syscall.h>
 #include <asm/thread_info.h>
@@ -60,6 +61,35 @@ static inline bool has_syscall_work(unsigned long flags)
 int syscall_trace_enter(struct pt_regs *regs);
 void syscall_trace_exit(struct pt_regs *regs);
 
+#ifdef CONFIG_ARM64_ERRATUM_1463225
+DECLARE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
+
+static void cortex_a76_erratum_1463225_svc_handler(void)
+{
+	u32 reg, val;
+
+	if (!unlikely(test_thread_flag(TIF_SINGLESTEP)))
+		return;
+
+	if (!unlikely(this_cpu_has_cap(ARM64_WORKAROUND_1463225)))
+		return;
+
+	__this_cpu_write(__in_cortex_a76_erratum_1463225_wa, 1);
+	reg = read_sysreg(mdscr_el1);
+	val = reg | DBG_MDSCR_SS | DBG_MDSCR_KDE;
+	write_sysreg(val, mdscr_el1);
+	asm volatile("msr daifclr, #8");
+	isb();
+
+	/* We will have taken a single-step exception by this point */
+
+	write_sysreg(reg, mdscr_el1);
+	__this_cpu_write(__in_cortex_a76_erratum_1463225_wa, 0);
+}
+#else
+static void cortex_a76_erratum_1463225_svc_handler(void) { }
+#endif /* CONFIG_ARM64_ERRATUM_1463225 */
+
 static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
 			   const syscall_fn_t syscall_table[])
 {
@@ -68,6 +98,7 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
 	regs->orig_x0 = regs->regs[0];
 	regs->syscallno = scno;
 
+	cortex_a76_erratum_1463225_svc_handler();
 	local_daif_restore(DAIF_PROCCTX);
 	user_exit();
 
diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 0cb0e09995e1..a09f5bffb3c1 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -810,6 +810,36 @@ void __init hook_debug_fault_code(int nr,
 	debug_fault_info[nr].name	= name;
 }
 
+#ifdef CONFIG_ARM64_ERRATUM_1463225
+DECLARE_PER_CPU(int, __in_cortex_a76_erratum_1463225_wa);
+
+static int __exception
+cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
+{
+	if (user_mode(regs))
+		return 0;
+
+	if (!__this_cpu_read(__in_cortex_a76_erratum_1463225_wa))
+		return 0;
+
+	/*
+	 * We've taken a dummy step exception from the kernel to ensure
+	 * that interrupts are re-enabled on the syscall path. Return back
+	 * to cortex_a76_erratum_1463225_svc_handler() with debug exceptions
+	 * masked so that we can safely restore the mdscr and get on with
+	 * handling the syscall.
+	 */
+	regs->pstate |= PSR_D_BIT;
+	return 1;
+}
+#else
+static int __exception
+cortex_a76_erratum_1463225_debug_handler(struct pt_regs *regs)
+{
+	return 0;
+}
+#endif /* CONFIG_ARM64_ERRATUM_1463225 */
+
 asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
 					       unsigned int esr,
 					       struct pt_regs *regs)
@@ -817,6 +847,9 @@ asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
 	const struct fault_info *inf = esr_to_debug_fault_info(esr);
 	unsigned long pc = instruction_pointer(regs);
 
+	if (cortex_a76_erratum_1463225_debug_handler(regs))
+		return 0;
+
 	/*
 	 * Tell lockdep we disabled irqs in entry.S. Do nothing if they were
 	 * already disabled to preserve the last enabled/disabled addresses.
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
