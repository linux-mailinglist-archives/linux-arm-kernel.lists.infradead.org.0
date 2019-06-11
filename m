Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D6E3C765
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HQp0qps9iYPBP6gaetuQPbYfN8YL4GlSTw78BYQYYjc=; b=RpuJcZ7wSLz2MaJf36sAhPOftd
	aMT9wirhUgeW3yozCAZwFp83YXfDtSAK/ljazsK3WsfY8v/pi7HU6u/Q5TtjT7WVs97KQMKjkiccL
	iag3DhMz6ssaqDH5kn36B1H+64MpXmk8+pD949Dh2jSn/Ui8HbAnUxfRXQW9jznqaAAL7grlQnS0i
	Y8QZqjSHbu2/rjWFWWXfP9/XoRPwtHUQzy4+BIikSHjh0HxwW6KMXi4vBKRZUKoaTCUYJURz9mDu/
	hp1KkH6fD15s5FePvjIZu7OYX6TtXTovPfujXr7V/LYM6yO6sSwzcgiUD6N7sRBJgKBmihQnyJqHW
	pNemqiqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadGJ-0000QO-KA; Tue, 11 Jun 2019 09:40:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hadEf-0007hF-FK
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:38:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C8ECED1;
 Tue, 11 Jun 2019 02:38:32 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id DDBBB3F73C;
 Tue, 11 Jun 2019 02:38:30 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 6/8] arm64: irqflags: Introduce explicit debugging for IRQ
 priorities
Date: Tue, 11 Jun 2019 10:38:11 +0100
Message-Id: <1560245893-46998-7-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
References: <1560245893-46998-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_023833_702617_96E0DEEF 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 arch/arm64/include/asm/irqflags.h   | 12 ++++++++++++
 4 files changed, 36 insertions(+)

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
index a137272..cac2d2a 100644
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
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
