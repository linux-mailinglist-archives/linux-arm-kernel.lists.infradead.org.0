Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0267F73E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9fP3eJlVd2cM3d6+hrLzh0UmN/a2TWI5oPY1Vo7P6iM=; b=Mw0XcIoZDM5VXd
	wcQCygOFSOiqd+nbxbmx8jNwqIABEP6HQ8kG+LueQXh/NxLX1XtAwkwjlmezfO06jL9Xo6yJDsK8n
	85ht8XlG4Sk/v/7XmTGWX9CDL2fN0f+JedyqY73LMbQGfKxoR0j9dMgQU2Uahq2+s4XkKmBAcmiTQ
	GD2wQp2gPo5HlzLAHtaS0T3l6Yzb/vr0VYEb/7tm/vhKM9MZp8DZEfsnptm3FQ3QAyZdmQiH0jGgI
	4atxLkhmooA1vyvv0GYnncBJUWOpQsKdcoMiG5uUOmsjns3N92VJc0+SPGNhtrXueXGlvQsgeywl2
	j33Fk44IWB45+/J3V2JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htX37-0000nE-Li; Fri, 02 Aug 2019 12:52:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htX2q-0000cQ-R5
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:52:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7637C1596;
 Fri,  2 Aug 2019 05:52:28 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 081923F71F;
 Fri,  2 Aug 2019 05:52:26 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 1/2] arm64: Relax ICC_PMR_EL1 accesses when
 ICC_CTLR_EL1.PMHE is clear
Date: Fri,  2 Aug 2019 13:52:07 +0100
Message-Id: <20190802125208.73162-2-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802125208.73162-1-maz@kernel.org>
References: <20190802125208.73162-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_055228_961725_89218CDF 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 maz@kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, huawei.libin@huawei.com,
 guohanjun@huawei.com, liwei391@huawei.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

The GICv3 architecture specification is incredibly misleading when it
comes to PMR and the requirement for a DSB. It turns out that this DSB
is only required if the CPU interface sends an Upstream Control
message to the redistributor in order to update the RD's view of PMR.

This message is only sent when ICC_CTLR_EL1.PMHE is set, which isn't
the case in Linux. It can still be set from EL3, so some special care
is required. But the upshot is that in the (hopefuly large) majority
of the cases, we can drop the DSB altogether.

This relies on a new static key being set if the boot CPU has PMHE
set. The drawback is that this static key has to be exported to
modules.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/barrier.h   | 12 ++++++++++++
 arch/arm64/include/asm/daifflags.h |  3 ++-
 arch/arm64/include/asm/irqflags.h  | 19 ++++++++++---------
 arch/arm64/include/asm/kvm_host.h  |  3 +--
 arch/arm64/kernel/entry.S          |  6 ++++--
 arch/arm64/kvm/hyp/switch.c        |  4 ++--
 drivers/irqchip/irq-gic-v3.c       | 17 +++++++++++++++++
 include/linux/irqchip/arm-gic-v3.h |  2 ++
 8 files changed, 50 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index e0e2b1946f42..7d9cc5ec4971 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -29,6 +29,18 @@
 						 SB_BARRIER_INSN"nop\n",	\
 						 ARM64_HAS_SB))
 
+#ifdef CONFIG_ARM64_PSEUDO_NMI
+#define pmr_sync()						\
+	do {							\
+		extern struct static_key_false gic_pmr_sync;	\
+								\
+		if (static_branch_unlikely(&gic_pmr_sync))	\
+			dsb(sy);				\
+	} while(0)
+#else
+#define pmr_sync()	do {} while (0)
+#endif
+
 #define mb()		dsb(sy)
 #define rmb()		dsb(ld)
 #define wmb()		dsb(st)
diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index 987926ed535e..00b16793505a 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -8,6 +8,7 @@
 #include <linux/irqflags.h>
 
 #include <asm/arch_gicv3.h>
+#include <asm/barrier.h>
 #include <asm/cpufeature.h>
 
 #define DAIF_PROCCTX		0
@@ -63,7 +64,7 @@ static inline void local_daif_restore(unsigned long flags)
 
 		if (system_uses_irq_prio_masking()) {
 			gic_write_pmr(GIC_PRIO_IRQON);
-			dsb(sy);
+			pmr_sync();
 		}
 	} else if (system_uses_irq_prio_masking()) {
 		u64 pmr;
diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
index 7872f260c9ee..a5e7115d2f93 100644
--- a/arch/arm64/include/asm/irqflags.h
+++ b/arch/arm64/include/asm/irqflags.h
@@ -8,6 +8,7 @@
 #ifdef __KERNEL__
 
 #include <asm/alternative.h>
+#include <asm/barrier.h>
 #include <asm/ptrace.h>
 #include <asm/sysreg.h>
 
@@ -36,14 +37,14 @@ static inline void arch_local_irq_enable(void)
 	}
 
 	asm volatile(ALTERNATIVE(
-		"msr	daifclr, #2		// arch_local_irq_enable\n"
-		"nop",
-		__msr_s(SYS_ICC_PMR_EL1, "%0")
-		"dsb	sy",
+		"msr	daifclr, #2		// arch_local_irq_enable",
+		__msr_s(SYS_ICC_PMR_EL1, "%0"),
 		ARM64_HAS_IRQ_PRIO_MASKING)
 		:
 		: "r" ((unsigned long) GIC_PRIO_IRQON)
 		: "memory");
+
+	pmr_sync();
 }
 
 static inline void arch_local_irq_disable(void)
@@ -118,14 +119,14 @@ static inline unsigned long arch_local_irq_save(void)
 static inline void arch_local_irq_restore(unsigned long flags)
 {
 	asm volatile(ALTERNATIVE(
-			"msr	daif, %0\n"
-			"nop",
-			__msr_s(SYS_ICC_PMR_EL1, "%0")
-			"dsb	sy",
-			ARM64_HAS_IRQ_PRIO_MASKING)
+		"msr	daif, %0",
+		__msr_s(SYS_ICC_PMR_EL1, "%0"),
+		ARM64_HAS_IRQ_PRIO_MASKING)
 		:
 		: "r" (flags)
 		: "memory");
+
+	pmr_sync();
 }
 
 #endif
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index f656169db8c3..5ecb091c8576 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -600,8 +600,7 @@ static inline void kvm_arm_vhe_guest_enter(void)
 	 * local_daif_mask() already sets GIC_PRIO_PSR_I_SET, we just need a
 	 * dsb to ensure the redistributor is forwards EL2 IRQs to the CPU.
 	 */
-	if (system_uses_irq_prio_masking())
-		dsb(sy);
+	pmr_sync();
 }
 
 static inline void kvm_arm_vhe_guest_exit(void)
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 9cdc4592da3e..6803dd5b4256 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -269,8 +269,10 @@ alternative_else_nop_endif
 alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	ldr	x20, [sp, #S_PMR_SAVE]
 	msr_s	SYS_ICC_PMR_EL1, x20
-	/* Ensure priority change is seen by redistributor */
-	dsb	sy
+	mrs_s	x21, SYS_ICC_CTLR_EL1
+	tbz	x21, #6, .L__skip_pmr_sync\@	// Check for ICC_CTLR_EL1.PMHE
+	dsb	sy				// Ensure priority change is seen by redistributor
+.L__skip_pmr_sync\@:
 alternative_else_nop_endif
 
 	ldp	x21, x22, [sp, #S_PC]		// load ELR, SPSR
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index adaf266d8de8..eb131e09d207 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -12,7 +12,7 @@
 
 #include <kvm/arm_psci.h>
 
-#include <asm/arch_gicv3.h>
+#include <asm/barrier.h>
 #include <asm/cpufeature.h>
 #include <asm/kprobes.h>
 #include <asm/kvm_asm.h>
@@ -605,7 +605,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	 */
 	if (system_uses_irq_prio_masking()) {
 		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
-		dsb(sy);
+		pmr_sync();
 	}
 
 	vcpu = kern_hyp_va(vcpu);
diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index 005b70e398b8..38fcb7eebdde 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -87,6 +87,15 @@ static DEFINE_STATIC_KEY_TRUE(supports_deactivate_key);
  */
 static DEFINE_STATIC_KEY_FALSE(supports_pseudo_nmis);
 
+/*
+ * Global static key controlling whether an update to PMR allowing more
+ * interrupts requires to be propagated to the redistributor (DSB SY).
+ * And this needs to be exported for modules to be able to enable
+ * interrupts...
+ */
+DEFINE_STATIC_KEY_FALSE(gic_pmr_sync);
+EXPORT_SYMBOL(gic_pmr_sync);
+
 /* ppi_nmi_refs[n] == number of cpus having ppi[n + 16] set as NMI */
 static refcount_t *ppi_nmi_refs;
 
@@ -1494,6 +1503,14 @@ static void gic_enable_nmi_support(void)
 	for (i = 0; i < gic_data.ppi_nr; i++)
 		refcount_set(&ppi_nmi_refs[i], 0);
 
+	/*
+	 * Linux itself doesn't use 1:N distribution, so has no need to
+	 * set PMHE. The only reason to have it set is if EL3 requires it
+	 * (and we can't change it).
+	 */
+	if (read_sysreg_s(SYS_ICC_CTLR_EL1) & ICC_CTLR_EL1_PMHE_MASK)
+		static_branch_enable(&gic_pmr_sync);
+
 	static_branch_enable(&supports_pseudo_nmis);
 
 	if (static_branch_likely(&supports_deactivate_key))
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index 5cc10cf7cb3e..a0bde9e12efa 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -487,6 +487,8 @@
 #define ICC_CTLR_EL1_EOImode_MASK	(1 << ICC_CTLR_EL1_EOImode_SHIFT)
 #define ICC_CTLR_EL1_CBPR_SHIFT		0
 #define ICC_CTLR_EL1_CBPR_MASK		(1 << ICC_CTLR_EL1_CBPR_SHIFT)
+#define ICC_CTLR_EL1_PMHE_SHIFT		6
+#define ICC_CTLR_EL1_PMHE_MASK		(1 << ICC_CTLR_EL1_PMHE_SHIFT)
 #define ICC_CTLR_EL1_PRI_BITS_SHIFT	8
 #define ICC_CTLR_EL1_PRI_BITS_MASK	(0x7 << ICC_CTLR_EL1_PRI_BITS_SHIFT)
 #define ICC_CTLR_EL1_ID_BITS_SHIFT	11
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
