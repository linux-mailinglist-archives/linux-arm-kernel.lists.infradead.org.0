Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC4D1B58EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ATApZ6Vv71gbxSc3r3VzeE+A+L/KQHgDGCMYJeR5Fk8=; b=oiY8AgJN4MzJlK/XFPOUH9geQM
	pKewpLrDUZQFjs0HU7XmlJzOhVNoXNst4yAf5OpCsg1//nF5JLIOXQdpHpTsipq6iQ/tsFkez1FEa
	XVoj7lyrayXY8m6qb5iNhV/YhM3vdJCtHUrAlfUXazaaTiPh1LvyWuxSde4YGYKbSXGwTHx/+ErfX
	EPQDAUJWdFtvNUp1gIgxx7rfzCQzGzbpcW5ukE4idWOcs7kObxJuslWZ1LutEyRn9XKSdnLDMwq4F
	FDTnTvLj4HxQj8IPClfveTiWoy0KuU0LiwWtT6qbD8v0IExBf3dbd16lfIabUdVLI0Nf9Ty2TrXF/
	/WJmlF2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYv0-0002rV-16; Thu, 23 Apr 2020 10:17:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYu5-0000y2-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:16:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7EC53C14;
 Thu, 23 Apr 2020 03:16:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8069A3F68F;
 Thu, 23 Apr 2020 03:16:19 -0700 (PDT)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: simplify ptrauth initialization
Date: Thu, 23 Apr 2020 11:16:06 +0100
Message-Id: <20200423101606.37601-3-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200423101606.37601-1-mark.rutland@arm.com>
References: <20200423101606.37601-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_031621_942706_6C9BB0E8 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 james.morse@arm.com, amit.kachhap@arm.com, will@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently __cpu_setup conditionally initializes the address
authentication keys and enables them in SCTLR_EL1, doing so differently
for the primary CPU and secondary CPUs, and skipping this work for CPUs
returning from an idle state. For the latter case, cpu_do_resume
restores the keys and SCTLR_EL1 value after the MMU has been enabled.

This flow is rather difficult to follow, so instead let's move the
primary and secondary CPU initialization into their respective boot
paths. By following the example of cpu_do_resume and doing so once the
MMU is enabled, we can always initialize the keys from the values in
thread_struct, and avoid the machinery necessary to pass the keys in
secondary_data or open-coding initialization for the boot CPU.

This means we perform an additional RMW of SCTLR_EL1, but we already do
this in the cpu_do_resume path, and for other features in cpufeature.c,
so this isn't a major concern in a bringup path. Note that even while
the enable bits are clear, the key registers are accessible.

As this now renders the argument to __cpu_setup redundant, let's also
remove that entirely. Future extensions can follow a similar approach to
initialize values that differ for primary/secondary CPUs.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/asm_pointer_auth.h | 22 ++++++++++++++++
 arch/arm64/include/asm/smp.h              | 11 --------
 arch/arm64/kernel/asm-offsets.c           |  3 ---
 arch/arm64/kernel/head.S                  | 12 +++++++--
 arch/arm64/kernel/sleep.S                 |  1 -
 arch/arm64/kernel/smp.c                   |  8 ------
 arch/arm64/mm/proc.S                      | 44 -------------------------------
 7 files changed, 32 insertions(+), 69 deletions(-)

diff --git a/arch/arm64/include/asm/asm_pointer_auth.h b/arch/arm64/include/asm/asm_pointer_auth.h
index c85540a911d3..52dead2a8640 100644
--- a/arch/arm64/include/asm/asm_pointer_auth.h
+++ b/arch/arm64/include/asm/asm_pointer_auth.h
@@ -60,6 +60,28 @@ alternative_if ARM64_HAS_ADDRESS_AUTH
 alternative_else_nop_endif
 	.endm
 
+	.macro __ptrauth_keys_init_cpu tsk, tmp1, tmp2, tmp3
+	mrs	\tmp1, id_aa64isar1_el1
+	ubfx	\tmp1, \tmp1, #ID_AA64ISAR1_APA_SHIFT, #8
+	cbz	\tmp1, .Lno_addr_auth\@
+	mov_q	\tmp1, (SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
+			SCTLR_ELx_ENDA | SCTLR_ELx_ENDB)
+	mrs	\tmp2, sctlr_el1
+	orr	\tmp2, \tmp2, \tmp1
+	msr	sctlr_el1, \tmp2
+	__ptrauth_keys_install_kernel_nosync \tsk, \tmp1, \tmp2, \tmp3
+	isb
+.Lno_addr_auth\@:
+	.endm
+
+	.macro ptrauth_keys_init_cpu tsk, tmp1, tmp2, tmp3
+alternative_if_not ARM64_HAS_ADDRESS_AUTH
+	b	.Lno_addr_auth\@
+alternative_else_nop_endif
+	__ptrauth_keys_init_cpu \tsk, \tmp1, \tmp2, \tmp3
+.Lno_addr_auth\@:
+	.endm
+
 #else /* CONFIG_ARM64_PTR_AUTH */
 
 	.macro ptrauth_keys_install_user tsk, tmp1, tmp2, tmp3
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 40d5ba029615..ea268d88b6f7 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -23,14 +23,6 @@
 #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
 #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
 
-/* Possible options for __cpu_setup */
-/* Option to setup primary cpu */
-#define ARM64_CPU_BOOT_PRIMARY		(1)
-/* Option to setup secondary cpus */
-#define ARM64_CPU_BOOT_SECONDARY	(2)
-/* Option to setup cpus for different cpu run time services */
-#define ARM64_CPU_RUNTIME		(3)
-
 #ifndef __ASSEMBLY__
 
 #include <asm/percpu.h>
@@ -96,9 +88,6 @@ asmlinkage void secondary_start_kernel(void);
 struct secondary_data {
 	void *stack;
 	struct task_struct *task;
-#ifdef CONFIG_ARM64_PTR_AUTH
-	struct ptrauth_keys_kernel ptrauth_key;
-#endif
 	long status;
 };
 
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 9981a0a5a87f..890ddd67b8bf 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -92,9 +92,6 @@ int main(void)
   BLANK();
   DEFINE(CPU_BOOT_STACK,	offsetof(struct secondary_data, stack));
   DEFINE(CPU_BOOT_TASK,		offsetof(struct secondary_data, task));
-#ifdef CONFIG_ARM64_PTR_AUTH
-  DEFINE(CPU_BOOT_PTRAUTH_KEY,	offsetof(struct secondary_data, ptrauth_key));
-#endif
   BLANK();
 #ifdef CONFIG_KVM_ARM_HOST
   DEFINE(VCPU_CONTEXT,		offsetof(struct kvm_vcpu, arch.ctxt));
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 57a91032b4c2..dc2b441d4ed8 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -13,6 +13,7 @@
 #include <linux/init.h>
 #include <linux/irqchip/arm-gic-v3.h>
 
+#include <asm/asm_pointer_auth.h>
 #include <asm/assembler.h>
 #include <asm/boot.h>
 #include <asm/ptrace.h>
@@ -118,7 +119,6 @@ SYM_CODE_START(stext)
 	 * On return, the CPU will be ready for the MMU to be turned on and
 	 * the TCR will have been set.
 	 */
-	mov	x0, #ARM64_CPU_BOOT_PRIMARY
 	bl	__cpu_setup			// initialise processor
 	b	__primary_switch
 SYM_CODE_END(stext)
@@ -417,6 +417,10 @@ SYM_FUNC_START_LOCAL(__primary_switched)
 	adr_l	x5, init_task
 	msr	sp_el0, x5			// Save thread_info
 
+#ifdef CONFIG_ARM64_PTR_AUTH
+	__ptrauth_keys_init_cpu	x5, x6, x7, x8
+#endif
+
 	adr_l	x8, vectors			// load VBAR_EL1 with virtual
 	msr	vbar_el1, x8			// vector table address
 	isb
@@ -717,7 +721,6 @@ SYM_FUNC_START_LOCAL(secondary_startup)
 	 * Common entry point for secondary CPUs.
 	 */
 	bl	__cpu_secondary_check52bitva
-	mov	x0, #ARM64_CPU_BOOT_SECONDARY
 	bl	__cpu_setup			// initialise processor
 	adrp	x1, swapper_pg_dir
 	bl	__enable_mmu
@@ -739,6 +742,11 @@ SYM_FUNC_START_LOCAL(__secondary_switched)
 	msr	sp_el0, x2
 	mov	x29, #0
 	mov	x30, #0
+
+#ifdef CONFIG_ARM64_PTR_AUTH
+	ptrauth_keys_init_cpu x2, x3, x4, x5
+#endif
+
 	b	secondary_start_kernel
 SYM_FUNC_END(__secondary_switched)
 
diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index 7b2f2e650c44..56b1fe9bfaa0 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -100,7 +100,6 @@ ENDPROC(__cpu_suspend_enter)
 	.pushsection ".idmap.text", "awx"
 ENTRY(cpu_resume)
 	bl	el2_setup		// if in EL2 drop to EL1 cleanly
-	mov	x0, #ARM64_CPU_RUNTIME
 	bl	__cpu_setup
 	/* enable the MMU early - so we can access sleep_save_stash by va */
 	adrp	x1, swapper_pg_dir
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 061f60fe452f..d6d337d036f0 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -114,10 +114,6 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	 */
 	secondary_data.task = idle;
 	secondary_data.stack = task_stack_page(idle) + THREAD_SIZE;
-#if defined(CONFIG_ARM64_PTR_AUTH)
-	secondary_data.ptrauth_key.apia.lo = idle->thread.keys_kernel.apia.lo;
-	secondary_data.ptrauth_key.apia.hi = idle->thread.keys_kernel.apia.hi;
-#endif
 	update_cpu_boot_status(CPU_MMU_OFF);
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 
@@ -140,10 +136,6 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 	pr_crit("CPU%u: failed to come online\n", cpu);
 	secondary_data.task = NULL;
 	secondary_data.stack = NULL;
-#if defined(CONFIG_ARM64_PTR_AUTH)
-	secondary_data.ptrauth_key.apia.lo = 0;
-	secondary_data.ptrauth_key.apia.hi = 0;
-#endif
 	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
 	status = READ_ONCE(secondary_data.status);
 	if (status == CPU_MMU_OFF)
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 0401342741e6..7d3bf1afba0c 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -386,8 +386,6 @@ SYM_FUNC_END(idmap_kpti_install_ng_mappings)
  *
  *	Initialise the processor for turning the MMU on.
  *
- * Input:
- *	x0 with a flag ARM64_CPU_BOOT_PRIMARY/ARM64_CPU_BOOT_SECONDARY/ARM64_CPU_RUNTIME.
  * Output:
  *	Return in x0 the value of the SCTLR_EL1 register.
  */
@@ -446,51 +444,9 @@ SYM_FUNC_START(__cpu_setup)
 1:
 #endif	/* CONFIG_ARM64_HW_AFDBM */
 	msr	tcr_el1, x10
-	mov	x1, x0
 	/*
 	 * Prepare SCTLR
 	 */
 	mov_q	x0, SCTLR_EL1_SET
-
-#ifdef CONFIG_ARM64_PTR_AUTH
-	/* No ptrauth setup for run time cpus */
-	cmp	x1, #ARM64_CPU_RUNTIME
-	b.eq	3f
-
-	/* Check if the CPU supports ptrauth */
-	mrs	x2, id_aa64isar1_el1
-	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
-	cbz	x2, 3f
-
-	/*
-	 * The primary cpu keys are reset here and can be
-	 * re-initialised with some proper values later.
-	 */
-	msr_s	SYS_APIAKEYLO_EL1, xzr
-	msr_s	SYS_APIAKEYHI_EL1, xzr
-
-	/* Just enable ptrauth for primary cpu */
-	cmp	x1, #ARM64_CPU_BOOT_PRIMARY
-	b.eq	2f
-
-	/* if !system_supports_address_auth() then skip enable */
-alternative_if_not ARM64_HAS_ADDRESS_AUTH
-	b	3f
-alternative_else_nop_endif
-
-	/* Install ptrauth key for secondary cpus */
-	adr_l	x2, secondary_data
-	ldr	x3, [x2, #CPU_BOOT_TASK]	// get secondary_data.task
-	cbz	x3, 2f				// check for slow booting cpus
-	ldp	x3, x4, [x2, #CPU_BOOT_PTRAUTH_KEY]
-	msr_s	SYS_APIAKEYLO_EL1, x3
-	msr_s	SYS_APIAKEYHI_EL1, x4
-
-2:	/* Enable ptrauth instructions */
-	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
-		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
-	orr	x0, x0, x2
-3:
-#endif
 	ret					// return to head.S
 SYM_FUNC_END(__cpu_setup)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
