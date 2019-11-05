Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BBCF07B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KlV0s2eglkPE7eJTxCf3Co0taCqrl9EHQkYUD/J3kww=; b=n55JVtutnAQyZVttArAxn3LC1D
	kdlGIhmTju+DLlxDJgUVge1rj3a2VyNB11EvOqbXuZHIOvcS3SHiq7L9WkSnsj8d916WnEaMf2I9O
	6osvRNNc7/FHet3Y545IZDsfET6ZIRdQFPxKRBAbk9UQrB7kTxdEMJeKOdpWeTbWKIRTbLyzxsnNA
	4NQ9pkL+WcZDlyVrNhhQKot3RkUH+tqKmq5x+EuK3jrbsaY5JRu9netGa9I6y0GxyC6hXI+VjJu08
	VzDcCDEVUSU22/eg21yfzr3bGlNLYTsKnsrRfAmjJCKctwsXQhrJJAf/MXGM2aOJ8HT5ZJZk5q/dI
	QAmFNXJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS62A-0006Cg-Lh; Tue, 05 Nov 2019 21:06:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS5w0-0007OD-JC
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:00:18 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 941BD21D7C;
 Tue,  5 Nov 2019 21:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572987615;
 bh=GqaJkzoUgeCJL6FVeK//K6vC7Pzyl8EptbgBBcdXbEw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XU80TpOLHoSg7662q3+3e2WN4G+adL35smv0Fy9Bl449+1t02674nI4DumFneuyYu
 4cGUmPCxPnGGToFTEdehOVhOaZJDtFJiRs13lzrVbRk/PZ6iY5z87lQlUMXS/Did2H
 h8HbriFYpfGYGzYwYyKjoPlwHo+BHHgteZOEFohY=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.4 27/53] ARM: spectre-v2: harden user aborts in
 kernel space
Date: Tue,  5 Nov 2019 21:58:20 +0100
Message-Id: <20191105205846.1394-28-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105205846.1394-1-ardb@kernel.org>
References: <20191105205846.1394-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_130016_774979_64659D9C 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David A . Long" <dave.long@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit f5fe12b1eaee220ce62ff9afb8b90929c396595f upstream.

In order to prevent aliasing attacks on the branch predictor,
invalidate the BTB or instruction cache on CPUs that are known to be
affected when taking an abort on a address that is outside of a user
task limit:

Cortex A8, A9, A12, A17, A73, A75: flush BTB.
Cortex A15, Brahma B15: invalidate icache.

If the IBE bit is not set, then there is little point to enabling the
workaround.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Boot-tested-by: Tony Lindgren <tony@atomide.com>
Reviewed-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/include/asm/cp15.h        |  3 +
 arch/arm/include/asm/system_misc.h | 15 ++++
 arch/arm/mm/fault.c                |  3 +
 arch/arm/mm/proc-v7-bugs.c         | 73 ++++++++++++++++++--
 arch/arm/mm/proc-v7.S              |  8 ++-
 5 files changed, 94 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/cp15.h b/arch/arm/include/asm/cp15.h
index dbdbce1b3a72..b74b174ac9fc 100644
--- a/arch/arm/include/asm/cp15.h
+++ b/arch/arm/include/asm/cp15.h
@@ -64,6 +64,9 @@
 #define __write_sysreg(v, r, w, c, t)	asm volatile(w " " c : : "r" ((t)(v)))
 #define write_sysreg(v, ...)		__write_sysreg(v, __VA_ARGS__)
 
+#define BPIALL				__ACCESS_CP15(c7, 0, c5, 6)
+#define ICIALLU				__ACCESS_CP15(c7, 0, c5, 0)
+
 extern unsigned long cr_alignment;	/* defined in entry-armv.S */
 
 static inline unsigned long get_cr(void)
diff --git a/arch/arm/include/asm/system_misc.h b/arch/arm/include/asm/system_misc.h
index a3d61ad984af..1fed41440af9 100644
--- a/arch/arm/include/asm/system_misc.h
+++ b/arch/arm/include/asm/system_misc.h
@@ -7,6 +7,7 @@
 #include <linux/linkage.h>
 #include <linux/irqflags.h>
 #include <linux/reboot.h>
+#include <linux/percpu.h>
 
 extern void cpu_init(void);
 
@@ -14,6 +15,20 @@ void soft_restart(unsigned long);
 extern void (*arm_pm_restart)(enum reboot_mode reboot_mode, const char *cmd);
 extern void (*arm_pm_idle)(void);
 
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+typedef void (*harden_branch_predictor_fn_t)(void);
+DECLARE_PER_CPU(harden_branch_predictor_fn_t, harden_branch_predictor_fn);
+static inline void harden_branch_predictor(void)
+{
+	harden_branch_predictor_fn_t fn = per_cpu(harden_branch_predictor_fn,
+						  smp_processor_id());
+	if (fn)
+		fn();
+}
+#else
+#define harden_branch_predictor() do { } while (0)
+#endif
+
 #define UDBG_UNDEFINED	(1 << 0)
 #define UDBG_SYSCALL	(1 << 1)
 #define UDBG_BADABORT	(1 << 2)
diff --git a/arch/arm/mm/fault.c b/arch/arm/mm/fault.c
index 702a5542b11a..20172b6fa773 100644
--- a/arch/arm/mm/fault.c
+++ b/arch/arm/mm/fault.c
@@ -163,6 +163,9 @@ __do_user_fault(struct task_struct *tsk, unsigned long addr,
 {
 	struct siginfo si;
 
+	if (addr > TASK_SIZE)
+		harden_branch_predictor();
+
 #ifdef CONFIG_DEBUG_USER
 	if (((user_debug & UDBG_SEGV) && (sig == SIGSEGV)) ||
 	    ((user_debug & UDBG_BUS)  && (sig == SIGBUS))) {
diff --git a/arch/arm/mm/proc-v7-bugs.c b/arch/arm/mm/proc-v7-bugs.c
index e46557db6446..85a2e3d6263c 100644
--- a/arch/arm/mm/proc-v7-bugs.c
+++ b/arch/arm/mm/proc-v7-bugs.c
@@ -2,7 +2,61 @@
 #include <linux/kernel.h>
 #include <linux/smp.h>
 
-static __maybe_unused void cpu_v7_check_auxcr_set(bool *warned,
+#include <asm/cp15.h>
+#include <asm/cputype.h>
+#include <asm/system_misc.h>
+
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+DEFINE_PER_CPU(harden_branch_predictor_fn_t, harden_branch_predictor_fn);
+
+static void harden_branch_predictor_bpiall(void)
+{
+	write_sysreg(0, BPIALL);
+}
+
+static void harden_branch_predictor_iciallu(void)
+{
+	write_sysreg(0, ICIALLU);
+}
+
+static void cpu_v7_spectre_init(void)
+{
+	const char *spectre_v2_method = NULL;
+	int cpu = smp_processor_id();
+
+	if (per_cpu(harden_branch_predictor_fn, cpu))
+		return;
+
+	switch (read_cpuid_part()) {
+	case ARM_CPU_PART_CORTEX_A8:
+	case ARM_CPU_PART_CORTEX_A9:
+	case ARM_CPU_PART_CORTEX_A12:
+	case ARM_CPU_PART_CORTEX_A17:
+	case ARM_CPU_PART_CORTEX_A73:
+	case ARM_CPU_PART_CORTEX_A75:
+		per_cpu(harden_branch_predictor_fn, cpu) =
+			harden_branch_predictor_bpiall;
+		spectre_v2_method = "BPIALL";
+		break;
+
+	case ARM_CPU_PART_CORTEX_A15:
+	case ARM_CPU_PART_BRAHMA_B15:
+		per_cpu(harden_branch_predictor_fn, cpu) =
+			harden_branch_predictor_iciallu;
+		spectre_v2_method = "ICIALLU";
+		break;
+	}
+	if (spectre_v2_method)
+		pr_info("CPU%u: Spectre v2: using %s workaround\n",
+			smp_processor_id(), spectre_v2_method);
+}
+#else
+static void cpu_v7_spectre_init(void)
+{
+}
+#endif
+
+static __maybe_unused bool cpu_v7_check_auxcr_set(bool *warned,
 						  u32 mask, const char *msg)
 {
 	u32 aux_cr;
@@ -13,24 +67,33 @@ static __maybe_unused void cpu_v7_check_auxcr_set(bool *warned,
 		if (!*warned)
 			pr_err("CPU%u: %s", smp_processor_id(), msg);
 		*warned = true;
+		return false;
 	}
+	return true;
 }
 
 static DEFINE_PER_CPU(bool, spectre_warned);
 
-static void check_spectre_auxcr(bool *warned, u32 bit)
+static bool check_spectre_auxcr(bool *warned, u32 bit)
 {
-	if (IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR) &&
+	return IS_ENABLED(CONFIG_HARDEN_BRANCH_PREDICTOR) &&
 		cpu_v7_check_auxcr_set(warned, bit,
 				       "Spectre v2: firmware did not set auxiliary control register IBE bit, system vulnerable\n");
 }
 
 void cpu_v7_ca8_ibe(void)
 {
-	check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(6));
+	if (check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(6)))
+		cpu_v7_spectre_init();
 }
 
 void cpu_v7_ca15_ibe(void)
 {
-	check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(0));
+	if (check_spectre_auxcr(this_cpu_ptr(&spectre_warned), BIT(0)))
+		cpu_v7_spectre_init();
+}
+
+void cpu_v7_bugs_init(void)
+{
+	cpu_v7_spectre_init();
 }
diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
index 1436ad424f2a..f6a4589b4fd2 100644
--- a/arch/arm/mm/proc-v7.S
+++ b/arch/arm/mm/proc-v7.S
@@ -474,8 +474,10 @@ __v7_setup_stack:
 
 	__INITDATA
 
+	.weak cpu_v7_bugs_init
+
 	@ define struct processor (see <asm/proc-fns.h> and proc-macros.S)
-	define_processor_functions v7, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+	define_processor_functions v7, dabort=v7_early_abort, pabort=v7_pabort, suspend=1, bugs=cpu_v7_bugs_init
 
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 	@ generic v7 bpiall on context switch
@@ -490,7 +492,7 @@ __v7_setup_stack:
 	globl_equ	cpu_v7_bpiall_do_suspend,	cpu_v7_do_suspend
 	globl_equ	cpu_v7_bpiall_do_resume,	cpu_v7_do_resume
 #endif
-	define_processor_functions v7_bpiall, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+	define_processor_functions v7_bpiall, dabort=v7_early_abort, pabort=v7_pabort, suspend=1, bugs=cpu_v7_bugs_init
 
 #define HARDENED_BPIALL_PROCESSOR_FUNCTIONS v7_bpiall_processor_functions
 #else
@@ -526,7 +528,7 @@ __v7_setup_stack:
 	globl_equ	cpu_ca9mp_switch_mm,	cpu_v7_switch_mm
 #endif
 	globl_equ	cpu_ca9mp_set_pte_ext,	cpu_v7_set_pte_ext
-	define_processor_functions ca9mp, dabort=v7_early_abort, pabort=v7_pabort, suspend=1
+	define_processor_functions ca9mp, dabort=v7_early_abort, pabort=v7_pabort, suspend=1, bugs=cpu_v7_bugs_init
 #endif
 
 	@ Cortex-A15 - needs iciallu switch_mm for hardening
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
