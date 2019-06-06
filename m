Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653A936FEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:33:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DbkXFaY9ng0hnu1Sui+VNL4BVhr+T0hH0gJZcuX4yaU=; b=mHZKX+itD4wC/587Wex3NOjnW5
	JdQ9b9DnzBNykP8GkZzY0Ogs3MjcMd1Gt4LvUZEQAiQwctmoxzNZfQVD8zx8zVbDZuLIpH4uGMrgQ
	k8WYRm1Wpg5VS++GfjC/vvuJqY/NkiVOLqIS13sFttGybS36oeeAz81A1c9WO3GKWlfX72B/iU9vq
	+X29ukXPdgqMAzyNPVt4HyxD6hyHJqoFDhiberGelL6n5QOzXG8X3TMsqovOoOiWHzrYgzzEfWiyd
	ruw3otQMj1u1hcEAjLhAmmMXChSuDzRTEgYtJ//g/Z6PtSLPADVK4xnARDDyjS/zN77PJHFHh+wSy
	1932f2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYoli-0007a7-2N; Thu, 06 Jun 2019 09:33:10 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYokt-0006f4-GT
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:32:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 482A31684;
 Thu,  6 Jun 2019 02:32:19 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 34AE33F690;
 Thu,  6 Jun 2019 02:32:17 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 6/8] arm64: irqflags: Introduce explicit debugging for IRQ
 priorities
Date: Thu,  6 Jun 2019 10:31:55 +0100
Message-Id: <1559813517-41540-7-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023220_307340_0B96C9C6 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Using IRQ priority masking to enable/disable interrupts is a bit
sensitive as it requires to deal with both ICC_PMR_EL1 and PSR.I.

Introduce some validity checks to both highlight the states in which
functions dealing with IRQ enabling/disabling can (not) be called, and
bark a warning when called in an unexpected state.

Since these checks are done on hotpaths, introduce a build option to
choose whether to do the checking.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/Kconfig                  | 11 +++++++++++
 arch/arm64/include/asm/cpufeature.h |  6 ++++++
 arch/arm64/include/asm/daifflags.h  |  7 +++++++
 arch/arm64/include/asm/irqflags.h   | 14 +++++++++++++-
 4 files changed, 37 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 697ea05..8acc40e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1436,6 +1436,17 @@ config ARM64_PSEUDO_NMI

 	  If unsure, say N

+if ARM64_PSEUDO_NMI
+config ARM64_DEBUG_PRIORITY_MASKING
+	bool "Debug interrupt priority masking"
+	help
+	  This adds runtime checks to functions enabling/disabling
+	  interrupts when using priority masking. The additional checks verify
+	  the validity of ICC_PMR_EL1 when calling concerned functions.
+
+	  If unsure, say N
+endif
+
 config RELOCATABLE
 	bool
 	help
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index bc895c8..693a086 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -617,6 +617,12 @@ static inline bool system_uses_irq_prio_masking(void)
 	       cpus_have_const_cap(ARM64_HAS_IRQ_PRIO_MASKING);
 }

+static inline bool system_has_prio_mask_debugging(void)
+{
+	return IS_ENABLED(CONFIG_ARM64_DEBUG_PRIORITY_MASKING) &&
+	       system_uses_irq_prio_masking();
+}
+
 #define ARM64_SSBD_UNKNOWN		-1
 #define ARM64_SSBD_FORCE_DISABLE	0
 #define ARM64_SSBD_KERNEL		1
diff --git a/arch/arm64/include/asm/daifflags.h b/arch/arm64/include/asm/daifflags.h
index f93204f..eca5bee 100644
--- a/arch/arm64/include/asm/daifflags.h
+++ b/arch/arm64/include/asm/daifflags.h
@@ -28,6 +28,10 @@
 /* mask/save/unmask/restore all exceptions, including interrupts. */
 static inline void local_daif_mask(void)
 {
+	WARN_ON(system_has_prio_mask_debugging() &&
+		(read_sysreg_s(SYS_ICC_PMR_EL1) == (GIC_PRIO_IRQOFF |
+						    GIC_PRIO_PSR_I_SET)));
+
 	asm volatile(
 		"msr	daifset, #0xf		// local_daif_mask\n"
 		:
@@ -62,6 +66,9 @@ static inline void local_daif_restore(unsigned long flags)
 {
 	bool irq_disabled = flags & PSR_I_BIT;

+	WARN_ON(system_has_prio_mask_debugging() &&
+		!(read_sysreg(daif) & PSR_I_BIT));
+
 	if (!irq_disabled) {
 		trace_hardirqs_on();

diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
index b6f757f..cac2d2a 100644
--- a/arch/arm64/include/asm/irqflags.h
+++ b/arch/arm64/include/asm/irqflags.h
@@ -40,6 +40,12 @@
  */
 static inline void arch_local_irq_enable(void)
 {
+	if (system_has_prio_mask_debugging()) {
+		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
+
+		WARN_ON_ONCE(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
+	}
+
 	asm volatile(ALTERNATIVE(
 		"msr	daifclr, #2		// arch_local_irq_enable\n"
 		"nop",
@@ -53,6 +59,12 @@ static inline void arch_local_irq_enable(void)

 static inline void arch_local_irq_disable(void)
 {
+	if (system_has_prio_mask_debugging()) {
+		u32 pmr = read_sysreg_s(SYS_ICC_PMR_EL1);
+
+		WARN_ON_ONCE(pmr != GIC_PRIO_IRQON && pmr != GIC_PRIO_IRQOFF);
+	}
+
 	asm volatile(ALTERNATIVE(
 		"msr	daifset, #2		// arch_local_irq_disable",
 		__msr_s(SYS_ICC_PMR_EL1, "%0"),
@@ -86,7 +98,7 @@ static inline int arch_irqs_disabled_flags(unsigned long flags)

 	asm volatile(ALTERNATIVE(
 		"and	%w0, %w1, #" __stringify(PSR_I_BIT),
-		"eor	%w0, %w1, #" __stringify(GIC_PRIO_IRQOFF),
+		"eor	%w0, %w1, #" __stringify(GIC_PRIO_IRQON),
 		ARM64_HAS_IRQ_PRIO_MASKING)
 		: "=&r" (res)
 		: "r" ((int) flags)
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
