Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 909F27AAD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1HOs52UIrWDPJbgiD26hkkcyMuTh8OJthGMTw8yUmCw=; b=o5f
	SvL1Vun2J6PIT02TNm2y7I62EehweGblx04gWC9vVDUgmZX35EyRaRz/xuus4FOGrazALb7SEglZM
	ZbqvjwRPpRqsKIytIa9Zljciw0DRudgkib5/2zgfJuAdDyKHk8sBJ0bXB76T5XlJd0cmwae3eRp7q
	3GOYrCC6a+e6lQoQR42CIKnecANRDDNZAUT81c7h7geeaf58AQWoPh2t0Lg8KLwpIWlQYJtAyCtIu
	soXT6TwrgVGbOHxTpFznPbcvEm4WJvw9QiUsNrN1RtPFQY7QWxU/ORElEah0QPfhzZEiKc4dJD6V7
	O/13ZSSVZT6n+hoQ0KH3n3cWeMaQewQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsT00-0001f4-9u; Tue, 30 Jul 2019 14:21:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSzn-0001ek-QX
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:20:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D8E7628;
 Tue, 30 Jul 2019 07:20:54 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 839A13F694;
 Tue, 30 Jul 2019 07:20:53 -0700 (PDT)
From: Julien Thierry <julien.thierry.kdev@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE is
 clear
Date: Tue, 30 Jul 2019 15:20:45 +0100
Message-Id: <1564496445-53486-1-git-send-email-julien.thierry.kdev@gmail.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_072055_952890_A096E2A2 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: 3.2 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (julien.thierry.kdev[at]gmail.com)
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 huawei.libin@huawei.com, guohanjun@huawei.com, liwei391@huawei.com,
 julien.thierry.kdev@gmail.com
MIME-Version: 1.0
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

This requires yet another capability and some more runtime patching.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
[JT: rebased on top of priority masking fixes,
     factorize pmr synchronization]
Signed-off-by: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/barrier.h   |  8 ++++++++
 arch/arm64/include/asm/cpucaps.h   |  3 ++-
 arch/arm64/include/asm/daifflags.h |  3 ++-
 arch/arm64/include/asm/irqflags.h  | 19 ++++++++++---------
 arch/arm64/include/asm/kvm_host.h  |  3 +--
 arch/arm64/kernel/cpufeature.c     | 33 +++++++++++++++++++++++++++++++++
 arch/arm64/kernel/entry.S          |  4 ++--
 arch/arm64/kvm/hyp/switch.c        |  3 ++-
 include/linux/irqchip/arm-gic-v3.h |  2 ++
 9 files changed, 62 insertions(+), 16 deletions(-)

Testing this on d05, there seems to be a ~15% improvement on hackbench.
This brings us on par with the no CONFIG_ARM64_PSEUDO_NMI build (or
even better):

Command: hackbench 200 process 1000

Average over 20 runs:
- v5.3-rc2, no irq priorities: 8.57345 sec
- v5.3-rc2, irq priorities: 9.99225 sec
- v5.3-rc2, "relaxed": 8.26705 sec

diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index e0e2b19..bca9faf 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -29,6 +29,14 @@
 						 SB_BARRIER_INSN"nop\n",	\
 						 ARM64_HAS_SB))

+#ifdef CONFIG_ARM64_PSEUDO_NMI
+#define pmr_sync()	asm volatile(ALTERNATIVE("nop",		\
+						 "dsb	sy",	\
+						 ARM64_PMR_REQUIRES_SYNC))
+#else
+#define pmr_sync()	do {} while (0)
+#endif
+
 #define mb()		dsb(sy)
 #define rmb()		dsb(ld)
 #define wmb()		dsb(st)
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b..616437d 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_PMR_REQUIRES_SYNC			45

-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46

 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index 987926e..00b1679 100644
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
index 7872f26..a5e7115 100644
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
index f656169..5ecb091 100644
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
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f29f36a..b1c036f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1246,6 +1246,26 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 {
 	return enable_pseudo_nmi && has_useable_gicv3_cpuif(entry, scope);
 }
+
+static bool check_icc_ctlr_pmhe(const struct arm64_cpu_capabilities *entry,
+				int scope)
+{
+	bool res = can_use_gic_priorities(entry, scope);
+
+	if (res) {
+		u64 val;
+
+		/*
+		 * Linux itself doesn't use 1:N distribution, so has
+		 * no need to set PMHE. The only reason to have it set
+		 * is if EL3 requires it (and we can't change it)
+		 */
+		val = read_sysreg_s(SYS_ICC_CTLR_EL1);
+		res &= !!(val & ICC_CTLR_EL1_PMHE_MASK);
+	}
+
+	return res;
+}
 #endif

 static const struct arm64_cpu_capabilities arm64_features[] = {
@@ -1547,6 +1567,19 @@ static bool can_use_gic_priorities(const struct arm64_cpu_capabilities *entry,
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+	{
+		/*
+		 * Depends on using IRQ priority masking
+		 */
+		.desc = "IRQ priority masking requires synchronization",
+		.capability = ARM64_PMR_REQUIRES_SYNC,
+		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
+		.matches = check_icc_ctlr_pmhe,
+		.sys_reg = SYS_ID_AA64PFR0_EL1,
+		.field_pos = ID_AA64PFR0_GIC_SHIFT,
+		.sign = FTR_UNSIGNED,
+		.min_field_value = 1,
+	},
 #endif
 	{},
 };
diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 320a30d..d35ceee 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -269,9 +269,9 @@ alternative_else_nop_endif
 alternative_if ARM64_HAS_IRQ_PRIO_MASKING
 	ldr	x20, [sp, #S_PMR_SAVE]
 	msr_s	SYS_ICC_PMR_EL1, x20
-	/* Ensure priority change is seen by redistributor */
-	dsb	sy
 alternative_else_nop_endif
+	/* Ensure priority change is seen by redistributor */
+alternative_insn nop, "dsb sy", ARM64_PMR_REQUIRES_SYNC

 	ldp	x21, x22, [sp, #S_PC]		// load ELR, SPSR
 	.if	\el == 0
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index adaf266..5bb9312 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -13,6 +13,7 @@
 #include <kvm/arm_psci.h>

 #include <asm/arch_gicv3.h>
+#include <asm/barrier.h>
 #include <asm/cpufeature.h>
 #include <asm/kprobes.h>
 #include <asm/kvm_asm.h>
@@ -605,7 +606,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 	 */
 	if (system_uses_irq_prio_masking()) {
 		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
-		dsb(sy);
+		pmr_sync();
 	}

 	vcpu = kern_hyp_va(vcpu);
diff --git a/include/linux/irqchip/arm-gic-v3.h b/include/linux/irqchip/arm-gic-v3.h
index 67c4b98..74a8a3a 100644
--- a/include/linux/irqchip/arm-gic-v3.h
+++ b/include/linux/irqchip/arm-gic-v3.h
@@ -460,6 +460,8 @@
 #define ICC_CTLR_EL1_EOImode_MASK	(1 << ICC_CTLR_EL1_EOImode_SHIFT)
 #define ICC_CTLR_EL1_CBPR_SHIFT		0
 #define ICC_CTLR_EL1_CBPR_MASK		(1 << ICC_CTLR_EL1_CBPR_SHIFT)
+#define ICC_CTLR_EL1_PMHE_SHIFT		6
+#define ICC_CTLR_EL1_PMHE_MASK		(1 << ICC_CTLR_EL1_PMHE_SHIFT)
 #define ICC_CTLR_EL1_PRI_BITS_SHIFT	8
 #define ICC_CTLR_EL1_PRI_BITS_MASK	(0x7 << ICC_CTLR_EL1_PRI_BITS_SHIFT)
 #define ICC_CTLR_EL1_ID_BITS_SHIFT	11
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
