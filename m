Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607B0160E8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:30:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1ad+KckiieP4SGzJw3FGsRbhxkcEbAaCrPH3WuTLQs=; b=g3890icEextBzfQxgzmc2ZRj7O
	ygKz/S1O1WWb5F53RdeWrpzVznyD+RqmVsXsSWI/ZmRfI1AXAcZKMFgwJ5ZHeNLNnrAXSaztfy9vo
	zvd3wUtduCJQCM9F+wxl9lfy4B/nukgGL6EnU5N+HcJ7tP/asAc94kmXHOJi6LN8hhIHvySG+NKw8
	Zg/Z0CTSRAehAA94Mcu5oHT1arT93iDB3Ehys37TBlsrR0VpvvitAsgAKO/wNfsRIDJph1rVBMKS5
	e8VpblQN9BuMFs1kf4/Y0BqUGD63gZEMB6ZnnUKnXXenJkKwr0bAuzkt5400i20IFVvFhetxw0qxA
	FZxWeBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cjQ-0008Mp-VC; Mon, 17 Feb 2020 09:30:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3chf-00063C-Py
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:28:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF83530E;
 Mon, 17 Feb 2020 01:28:34 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EB0753F6CF;
 Mon, 17 Feb 2020 01:28:30 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 07/17] arm64: cpufeature: handle conflicts based on
 capability
Date: Mon, 17 Feb 2020 14:57:38 +0530
Message-Id: <1581931668-11559-8-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012835_945620_2726BFF8 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kristina Martsenko <kristina.martsenko@arm.com>

Each system capability can be of either boot, local, or system scope,
depending on when the state of the capability is finalized. When we
detect a conflict on a late CPU, we either offline the CPU or panic the
system. We currently always panic if the conflict is caused by a boot
scope capability, and offline the CPU if the conflict is caused by a
local or system scope capability.

We're going to want to add a new capability (for pointer authentication)
which needs to be boot scope but doesn't need to panic the system when a
conflict is detected. So add a new flag to specify whether the
capability requires the system to panic or not. Current boot scope
capabilities are updated to set the flag, so there should be no
functional change as a result of this patch.

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 18 ++++++++++++++++--
 arch/arm64/kernel/cpufeature.c      | 23 +++++++++--------------
 2 files changed, 25 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 8c80483..1e88aee 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -208,6 +208,10 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
  *     In some non-typical cases either both (a) and (b), or neither,
  *     should be permitted. This can be described by including neither
  *     or both flags in the capability's type field.
+ *
+ *     In case of a conflict, the CPU is prevented from booting. If the
+ *     ARM64_CPUCAP_PANIC_ON_CONFLICT flag is specified for the capability,
+ *     then a kernel panic is triggered.
  */
 
 
@@ -240,6 +244,8 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
 #define ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU	((u16)BIT(4))
 /* Is it safe for a late CPU to miss this capability when system has it */
 #define ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU	((u16)BIT(5))
+/* Panic when a conflict is detected */
+#define ARM64_CPUCAP_PANIC_ON_CONFLICT		((u16)BIT(6))
 
 /*
  * CPU errata workarounds that need to be enabled at boot time if one or
@@ -279,9 +285,11 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
 
 /*
  * CPU feature used early in the boot based on the boot CPU. All secondary
- * CPUs must match the state of the capability as detected by the boot CPU.
+ * CPUs must match the state of the capability as detected by the boot CPU. In
+ * case of a conflict, a kernel panic is triggered.
  */
-#define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE ARM64_CPUCAP_SCOPE_BOOT_CPU
+#define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE		\
+	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PANIC_ON_CONFLICT)
 
 struct arm64_cpu_capabilities {
 	const char *desc;
@@ -352,6 +360,12 @@ cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
 	return !!(cap->type & ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU);
 }
 
+static inline bool
+cpucap_panic_on_conflict(const struct arm64_cpu_capabilities *cap)
+{
+	return !!(cap->type & ARM64_CPUCAP_PANIC_ON_CONFLICT);
+}
+
 /*
  * Generic helper for handling capabilties with multiple (match,enable) pairs
  * of call backs, sharing the same capability bit.
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index b12e386..ee1e8f3 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -2005,10 +2005,8 @@ static void __init enable_cpu_capabilities(u16 scope_mask)
  * Run through the list of capabilities to check for conflicts.
  * If the system has already detected a capability, take necessary
  * action on this CPU.
- *
- * Returns "false" on conflicts.
  */
-static bool verify_local_cpu_caps(u16 scope_mask)
+static void verify_local_cpu_caps(u16 scope_mask)
 {
 	int i;
 	bool cpu_has_cap, system_has_cap;
@@ -2053,10 +2051,12 @@ static bool verify_local_cpu_caps(u16 scope_mask)
 		pr_crit("CPU%d: Detected conflict for capability %d (%s), System: %d, CPU: %d\n",
 			smp_processor_id(), caps->capability,
 			caps->desc, system_has_cap, cpu_has_cap);
-		return false;
-	}
 
-	return true;
+		if (cpucap_panic_on_conflict(caps))
+			cpu_panic_kernel();
+		else
+			cpu_die_early();
+	}
 }
 
 /*
@@ -2066,12 +2066,8 @@ static bool verify_local_cpu_caps(u16 scope_mask)
 static void check_early_cpu_features(void)
 {
 	verify_cpu_asid_bits();
-	/*
-	 * Early features are used by the kernel already. If there
-	 * is a conflict, we cannot proceed further.
-	 */
-	if (!verify_local_cpu_caps(SCOPE_BOOT_CPU))
-		cpu_panic_kernel();
+
+	verify_local_cpu_caps(SCOPE_BOOT_CPU);
 }
 
 static void
@@ -2119,8 +2115,7 @@ static void verify_local_cpu_capabilities(void)
 	 * check_early_cpu_features(), as they need to be verified
 	 * on all secondary CPUs.
 	 */
-	if (!verify_local_cpu_caps(SCOPE_ALL & ~SCOPE_BOOT_CPU))
-		cpu_die_early();
+	verify_local_cpu_caps(SCOPE_ALL & ~SCOPE_BOOT_CPU);
 
 	verify_local_elf_hwcaps(arm64_elf_hwcaps);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
