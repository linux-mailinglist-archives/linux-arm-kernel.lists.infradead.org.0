Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B780AE72A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gbZ73uZr3AjqijQuXXnTOion0d3F+2TwhoLFLMF54Ag=; b=r8wcFOSxXROFA35BcAieSa19Zr
	AFuaCEf99tsSvarWVe6zAHm7D7ybP8unwQ5+AWMRWnVJVrGVU8juW1/iYET4imtsQ1H3U/nhr5ymX
	ENRY9JdVSuwexgSvfvW85UqYN0ZV0Ep12G9EDx4RUhJwPFAPZwROS/+nzgLZ6hSPWsNGGnjFplmXq
	oTqpwlOjyZAr9Y3JNAgGpamRXA45aEvyHJlyRJRUT/WCQR6M5cNR+XOIcJB2LrbOXRYUOdhCIeB+N
	SFIssJ5NS4aPB56qaqDUQZg74Rl2tvPGF5b3fiyzSpCoPm2GwxXAzZb6wvPWqPGSlWcE2lZLBzNXB
	cVIOrxGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL8iV-0003jL-92; Mon, 29 Apr 2019 16:01:19 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL8hb-0002l3-Dn
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:00:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B97271682;
 Mon, 29 Apr 2019 09:00:22 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 21DE73F5C1;
 Mon, 29 Apr 2019 09:00:19 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/5] arm64: Fix incorrect irqflag restore for priority
 masking
Date: Mon, 29 Apr 2019 17:00:05 +0100
Message-Id: <1556553607-46531-4-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
References: <1556553607-46531-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_090023_818483_B0BCDE7A 
X-CRM114-Status: GOOD (  25.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 marc.zyngier@arm.com, catalin.marinas@arm.com,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 Christoffer Dall <christoffer.dall@arm.com>, james.morse@arm.com,
 Oleg Nesterov <oleg@redhat.com>, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When using IRQ priority masking to disable interrupts, in order to deal
with the PSR.I state, local_irq_save() would convert the I bit into a
PMR value (GIC_PRIO_IRQOFF). This resulted in local_irq_restore()
potentially modifying the value of PMR in undesired location due to the
state of PSR.I upon flag saving [1].

In an attempt to solve this issue in a less hackish manner, introduce
a bit (GIC_PRIO_IGNORE_PMR) for the PMR values that can represent
whether PSR.I is being used to disable interrupts, in which case it
takes precedence of the status of interrupt masking via PMR.

GIC_PRIO_IGNORE_PMR is chosen such that (<pmr_value> |
GIC_PRIO_IGNORE_PMR) does not mask more interrupts than <pmr_value> as
some sections (e.g. arch_cpu_idle(), interrupt acknowledge path)
requires PMR not to mask interrupts that could be signaled to the
CPU when using only PSR.I.

[1] https://www.spinics.net/lists/arm-kernel/msg716956.html

Fixes: commit 4a503217ce37 ("arm64: irqflags: Use ICC_PMR_EL1 for interrupt masking")
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Reported-by: Zenghui Yu <yuzenghui@huawei.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Wei Li <liwei391@huawei.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>
Cc: Oleg Nesterov <oleg@redhat.com>
---
 arch/arm64/include/asm/arch_gicv3.h |  4 ++-
 arch/arm64/include/asm/assembler.h  |  9 +++++
 arch/arm64/include/asm/daifflags.h  | 22 ++++++++----
 arch/arm64/include/asm/irqflags.h   | 69 ++++++++++++++++---------------------
 arch/arm64/include/asm/kvm_host.h   |  4 ++-
 arch/arm64/include/asm/ptrace.h     | 10 ++++--
 arch/arm64/kernel/entry.S           | 30 +++++++++++++---
 arch/arm64/kernel/process.c         |  2 +-
 arch/arm64/kernel/smp.c             |  8 +++--
 arch/arm64/kvm/hyp/switch.c         |  2 +-
 10 files changed, 100 insertions(+), 60 deletions(-)

diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index 14b41dd..3102c9a 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -163,7 +163,9 @@ static inline bool gic_prio_masking_enabled(void)

 static inline void gic_pmr_mask_irqs(void)
 {
-	BUILD_BUG_ON(GICD_INT_DEF_PRI <= GIC_PRIO_IRQOFF);
+	BUILD_BUG_ON(GICD_INT_DEF_PRI < (GIC_PRIO_IRQOFF |
+					 GIC_PRIO_IGNORE_PMR));
+	BUILD_BUG_ON(GICD_INT_DEF_PRI >= GIC_PRIO_IRQON);
 	gic_write_pmr(GIC_PRIO_IRQOFF);
 }

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index c5308d0..601154d 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -62,6 +62,15 @@
 	msr	daifclr, #(8 | 4 | 1)
 	.endm

+	.macro	suspend_irq_prio_masking, tmp:req
+#ifdef CONFIG_ARM64_PSEUDO_NMI
+	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
+	mov	\tmp, #(GIC_PRIO_IRQON | GIC_PRIO_IGNORE_PMR)
+	msr_s	SYS_ICC_PMR_EL1, \tmp
+	alternative_else_nop_endif
+#endif
+	.endm
+
 /*
  * Save/restore interrupts.
  */
diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index db452aa..a32ece9 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -18,6 +18,7 @@

 #include <linux/irqflags.h>

+#include <asm/arch_gicv3.h>
 #include <asm/cpufeature.h>

 #define DAIF_PROCCTX		0
@@ -32,6 +33,11 @@ static inline void local_daif_mask(void)
 		:
 		:
 		: "memory");
+
+	/* Don't really care for a dsb here, we don't intend to enable IRQs */
+	if (system_uses_irq_prio_masking())
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_IGNORE_PMR);
+
 	trace_hardirqs_off();
 }

@@ -43,7 +49,7 @@ static inline unsigned long local_daif_save(void)

 	if (system_uses_irq_prio_masking()) {
 		/* If IRQs are masked with PMR, reflect it in the flags */
-		if (read_sysreg_s(SYS_ICC_PMR_EL1) <= GIC_PRIO_IRQOFF)
+		if (read_sysreg_s(SYS_ICC_PMR_EL1) != GIC_PRIO_IRQON)
 			flags |= PSR_I_BIT;
 	}

@@ -59,14 +65,16 @@ static inline void local_daif_restore(unsigned long flags)
 	if (!irq_disabled) {
 		trace_hardirqs_on();

-		if (system_uses_irq_prio_masking())
-			arch_local_irq_enable();
-	} else if (!(flags & PSR_A_BIT)) {
+		if (system_uses_irq_prio_masking()) {
+			gic_write_pmr(GIC_PRIO_IRQON);
+			dsb(sy);
+		}
+	} else if (system_uses_irq_prio_masking()) {
 		/*
 		 * If interrupts are disabled but we can take
 		 * asynchronous errors, we can take NMIs
 		 */
-		if (system_uses_irq_prio_masking()) {
+		if (!(flags & PSR_A_BIT)) {
 			flags &= ~PSR_I_BIT;
 			/*
 			 * There has been concern that the write to daif
@@ -87,7 +95,9 @@ static inline void local_daif_restore(unsigned long flags)
 			 *
 			 * So we don't need additional synchronization here.
 			 */
-			arch_local_irq_disable();
+			gic_write_pmr(GIC_PRIO_IRQOFF);
+		} else {
+			gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_IGNORE_PMR);
 		}
 	}

diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
index 43d8366..516cdfc 100644
--- a/arch/arm64/include/asm/irqflags.h
+++ b/arch/arm64/include/asm/irqflags.h
@@ -67,43 +67,48 @@ static inline void arch_local_irq_disable(void)
  */
 static inline unsigned long arch_local_save_flags(void)
 {
-	unsigned long daif_bits;
 	unsigned long flags;

-	daif_bits = read_sysreg(daif);
-
-	/*
-	 * The asm is logically equivalent to:
-	 *
-	 * if (system_uses_irq_prio_masking())
-	 *	flags = (daif_bits & PSR_I_BIT) ?
-	 *			GIC_PRIO_IRQOFF :
-	 *			read_sysreg_s(SYS_ICC_PMR_EL1);
-	 * else
-	 *	flags = daif_bits;
-	 */
 	asm volatile(ALTERNATIVE(
-			"mov	%0, %1\n"
-			"nop\n"
-			"nop",
-			"mrs_s	%0, " __stringify(SYS_ICC_PMR_EL1) "\n"
-			"ands	%1, %1, " __stringify(PSR_I_BIT) "\n"
-			"csel	%0, %0, %2, eq",
-			ARM64_HAS_IRQ_PRIO_MASKING)
-		: "=&r" (flags), "+r" (daif_bits)
-		: "r" ((unsigned long) GIC_PRIO_IRQOFF)
+		"mrs	%0, daif",
+		"mrs_s	%0, " __stringify(SYS_ICC_PMR_EL1) "\n",
+		ARM64_HAS_IRQ_PRIO_MASKING)
+		: "=&r" (flags)
+		:
 		: "memory");

 	return flags;
 }

+static inline int arch_irqs_disabled_flags(unsigned long flags)
+{
+	int res;
+
+	asm volatile(ALTERNATIVE(
+		"and	%w0, %w1, #" __stringify(PSR_I_BIT) "\n"
+		"nop",
+		"cmp	%w1, #" __stringify(GIC_PRIO_IRQON) "\n"
+		"cset	%w0, ne",
+		ARM64_HAS_IRQ_PRIO_MASKING)
+		: "=&r" (res)
+		: "r" ((int) flags)
+		: "memory");
+
+	return res;
+}
+
 static inline unsigned long arch_local_irq_save(void)
 {
 	unsigned long flags;

 	flags = arch_local_save_flags();

-	arch_local_irq_disable();
+	/*
+	 * There are too many states with IRQs disabled, just keep the current
+	 * state if interrupts are already disabled/masked.
+	 */
+	if (!arch_irqs_disabled_flags(flags))
+		arch_local_irq_disable();

 	return flags;
 }
@@ -119,26 +124,10 @@ static inline void arch_local_irq_restore(unsigned long flags)
 			"msr_s	" __stringify(SYS_ICC_PMR_EL1) ", %0\n"
 			"dsb	sy",
 			ARM64_HAS_IRQ_PRIO_MASKING)
-		: "+r" (flags)
 		:
+		: "r" (flags)
 		: "memory");
 }

-static inline int arch_irqs_disabled_flags(unsigned long flags)
-{
-	int res;
-
-	asm volatile(ALTERNATIVE(
-			"and	%w0, %w1, #" __stringify(PSR_I_BIT) "\n"
-			"nop",
-			"cmp	%w1, #" __stringify(GIC_PRIO_IRQOFF) "\n"
-			"cset	%w0, ls",
-			ARM64_HAS_IRQ_PRIO_MASKING)
-		: "=&r" (res)
-		: "r" ((int) flags)
-		: "memory");
-
-	return res;
-}
 #endif
 #endif
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index a01fe087..0ec398c 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -532,9 +532,11 @@ static inline void kvm_arm_vhe_guest_enter(void)
 	 * will not signal the CPU of interrupts of lower priority, and the
 	 * only way to get out will be via guest exceptions.
 	 * Naturally, we want to avoid this.
+	 *
+	 * local_daif_mask() already sets IGNORE_PMR, we just need a
+	 * dsb to ensure the redistributor is forwards EL2 IRQs to the CPU.
 	 */
 	if (system_uses_irq_prio_masking()) {
-		gic_write_pmr(GIC_PRIO_IRQON);
 		dsb(sy);
 	}
 }
diff --git a/arch/arm64/include/asm/ptrace.h b/arch/arm64/include/asm/ptrace.h
index ec60174..7861a5d 100644
--- a/arch/arm64/include/asm/ptrace.h
+++ b/arch/arm64/include/asm/ptrace.h
@@ -35,9 +35,15 @@
  * means masking more IRQs (or at least that the same IRQs remain masked).
  *
  * To mask interrupts, we clear the most significant bit of PMR.
+ *
+ * Some code sections either automatically switch back to PSR.I or explicitly
+ * require to not use priority masking. If bit GIC_PRIO_IGNORE_PMR is included
+ * in the  the priority mask, it indicates that PSR.I should be set and
+ * interrupt disabling temporarily does not rely on IRQ priorities.
  */
-#define GIC_PRIO_IRQON		0xf0
-#define GIC_PRIO_IRQOFF		(GIC_PRIO_IRQON & ~0x80)
+#define GIC_PRIO_IRQON			0xc0
+#define GIC_PRIO_IRQOFF			(GIC_PRIO_IRQON & ~0x80)
+#define GIC_PRIO_IGNORE_PMR		(1 << 4)

 /* Additional SPSR bits not exposed in the UABI */
 #define PSR_IL_BIT		(1 << 20)
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 00c1f21..e6df781 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -258,6 +258,7 @@ alternative_else_nop_endif
 	/*
 	 * Registers that may be useful after this macro is invoked:
 	 *
+	 * x20 - ICC_PMR_EL1
 	 * x21 - aborted SP
 	 * x22 - aborted PC
 	 * x23 - aborted PSTATE
@@ -434,6 +435,16 @@ alternative_endif
 	.endm
 #endif

+
+	.macro irq_entry_ignore_pmr, pmr:req, tmp:req
+#ifdef CONFIG_ARM64_PSEUDO_NMI
+	alternative_if ARM64_HAS_IRQ_PRIO_MASKING
+	orr	\tmp, \pmr, #GIC_PRIO_IGNORE_PMR
+	msr_s	SYS_ICC_PMR_EL1, \tmp
+	alternative_else_nop_endif
+#endif
+	.endm
+
 	.text

 /*
@@ -612,6 +623,7 @@ el1_dbg:
 	cmp	x24, #ESR_ELx_EC_BRK64		// if BRK64
 	cinc	x24, x24, eq			// set bit '0'
 	tbz	x24, #0, el1_inv		// EL1 only
+	suspend_irq_prio_masking tmp=x21
 	mrs	x0, far_el1
 	mov	x2, sp				// struct pt_regs
 	bl	do_debug_exception
@@ -629,12 +641,10 @@ ENDPROC(el1_sync)
 	.align	6
 el1_irq:
 	kernel_entry 1
+	irq_entry_ignore_pmr pmr=x20, tmp=x0
 	enable_da_f

 #ifdef CONFIG_ARM64_PSEUDO_NMI
-alternative_if ARM64_HAS_IRQ_PRIO_MASKING
-	ldr	x20, [sp, #S_PMR_SAVE]
-alternative_else_nop_endif
 	test_irqs_unmasked	res=x0, pmr=x20
 	cbz	x0, 1f
 	bl	asm_nmi_enter
@@ -664,8 +674,9 @@ alternative_else_nop_endif

 #ifdef CONFIG_ARM64_PSEUDO_NMI
 	/*
-	 * if IRQs were disabled when we received the interrupt, we have an NMI
-	 * and we are not re-enabling interrupt upon eret. Skip tracing.
+	 * When using IRQ priority masking, we can get spurious interrupts while
+	 * PMR is set to GIC_PRIO_IRQOFF. An NMI might also have occurred in a
+	 * section with interrupts disabled. Skip tracing in those cases.
 	 */
 	test_irqs_unmasked	res=x0, pmr=x20
 	cbz	x0, 1f
@@ -794,6 +805,7 @@ el0_ia:
 	 * Instruction abort handling
 	 */
 	mrs	x26, far_el1
+	suspend_irq_prio_masking tmp=x0
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
@@ -839,6 +851,7 @@ el0_sp_pc:
 	 * Stack or PC alignment exception handling
 	 */
 	mrs	x26, far_el1
+	suspend_irq_prio_masking tmp=x0
 	enable_da_f
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
@@ -873,6 +886,7 @@ el0_dbg:
 	 * Debug exception handling
 	 */
 	tbnz	x24, #0, el0_inv		// EL0 only
+	suspend_irq_prio_masking tmp=x0
 	mrs	x0, far_el1
 	mov	x1, x25
 	mov	x2, sp
@@ -894,7 +908,9 @@ ENDPROC(el0_sync)
 el0_irq:
 	kernel_entry 0
 el0_irq_naked:
+	irq_entry_ignore_pmr pmr=x20, tmp=x0
 	enable_da_f
+
 #ifdef CONFIG_TRACE_IRQFLAGS
 	bl	trace_hardirqs_off
 #endif
@@ -916,6 +932,7 @@ ENDPROC(el0_irq)
 el1_error:
 	kernel_entry 1
 	mrs	x1, esr_el1
+	suspend_irq_prio_masking tmp=x0
 	enable_dbg
 	mov	x0, sp
 	bl	do_serror
@@ -926,6 +943,7 @@ el0_error:
 	kernel_entry 0
 el0_error_naked:
 	mrs	x1, esr_el1
+	suspend_irq_prio_masking tmp=x0
 	enable_dbg
 	mov	x0, sp
 	bl	do_serror
@@ -950,6 +968,7 @@ work_pending:
  */
 ret_to_user:
 	disable_daif
+	suspend_irq_prio_masking tmp=x0
 	ldr	x1, [tsk, #TSK_TI_FLAGS]
 	and	x2, x1, #_TIF_WORK_MASK
 	cbnz	x2, work_pending
@@ -966,6 +985,7 @@ ENDPROC(ret_to_user)
  */
 	.align	6
 el0_svc:
+	suspend_irq_prio_masking tmp=x1
 	mov	x0, sp
 	bl	el0_svc_handler
 	b	ret_to_user
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 3767fb2..f5bae97 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -94,7 +94,7 @@ static void __cpu_do_idle_irqprio(void)
 	 * be raised.
 	 */
 	pmr = gic_read_pmr();
-	gic_write_pmr(GIC_PRIO_IRQON);
+	gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_IGNORE_PMR);

 	__cpu_do_idle();

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 824de70..2a6d0dd1 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -192,11 +192,13 @@ static void init_gic_priority_masking(void)

 	WARN_ON(!(cpuflags & PSR_I_BIT));

-	gic_write_pmr(GIC_PRIO_IRQOFF);
-
 	/* We can only unmask PSR.I if we can take aborts */
-	if (!(cpuflags & PSR_A_BIT))
+	if (!(cpuflags & PSR_A_BIT)) {
+		gic_write_pmr(GIC_PRIO_IRQOFF);
 		write_sysreg(cpuflags & ~PSR_I_BIT, daif);
+	} else {
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_IGNORE_PMR);
+	}
 }

 /*
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 3563fe6..083e319 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -533,7 +533,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	 * Naturally, we want to avoid this.
 	 */
 	if (system_uses_irq_prio_masking()) {
-		gic_write_pmr(GIC_PRIO_IRQON);
+		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_IGNORE_PMR);
 		dsb(sy);
 	}

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
