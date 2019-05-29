Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B622E4F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 21:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4AYgSldbxqEkLBwu6M9NpJxaS1UMelYYuvMoKZM0E2s=; b=ajMOOzeBUHDLPdvqdBSEkGZt50
	GtBtv5grDkJPm0lx4GaqvHq1dJ/7uj1j9Qdy2mT0gxGkXsZbrqgHGKBUXDYiQggRzSqOhs+Vvl6TD
	+4ghDj4/07e9l93kabkBco+4IzV8JPHiYRPFnzyiWIlwVo+3RvEhMN5uf1DABz2Q2uUXomJVHY/MB
	6RSXrcHQyFrmkTw82vqt/nZ/IIuNJbY2FjgerTevxJza0lA06i2GhtiZdJ59oV5Yc17I5kJH37buf
	zuszLdHIdFEmHiJYE9F0PRJzSxCy8ZGwBtP9xftTe40NErALGcUQqSwosuyQ2xzDmxxWzdZzoYSyo
	RI+afSLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3tD-0000wX-Vc; Wed, 29 May 2019 19:05:31 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3sW-0007Zk-Ep
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 19:04:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 31DDCA78;
 Wed, 29 May 2019 12:04:48 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63FA03F59C;
 Wed, 29 May 2019 12:04:46 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC v2 3/7] arm64: cpufeature: handle conflicts based on capability
Date: Wed, 29 May 2019 20:03:28 +0100
Message-Id: <20190529190332.29753-4-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190529190332.29753-1-kristina.martsenko@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120448_664554_F723F717 
X-CRM114-Status: GOOD (  24.46  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Each system capability can be of either boot, local, or system scope,
depending on when the state of the capability is finalized. When we
detect a conflict on a late CPU, we either offline the CPU or panic the
system. We currently always panic if the conflict is caused by a boot
scope capability, and offline the CPU if the conflict is caused by a
local or system scope capability.

We're going to want to add new capability (for pointer authentication)
which needs to be boot scope but doesn't need to panic the system when a
conflict is detected. So add a new flag to specify whether the
capability requires the system to panic or not. Current boot scope
capabilities are updated to set the flag, so there should be no
functional change as a result of this patch.

Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
---

Changes since RFC v1:
 - New patch, to have ptrauth mismatches disable secondaries instead of
   panicking

 arch/arm64/include/asm/cpufeature.h | 15 ++++++++++++++-
 arch/arm64/kernel/cpufeature.c      | 23 +++++++++--------------
 2 files changed, 23 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 0522ea674253..ad952f2e0a2b 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -217,6 +217,10 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
  *     In some non-typical cases either both (a) and (b), or neither,
  *     should be permitted. This can be described by including neither
  *     or both flags in the capability's type field.
+ *
+ *     In case of a conflict, the CPU is prevented from booting. If the
+ *     ARM64_CPUCAP_PANIC_ON_CONFLICT flag is specified for the capability,
+ *     then a kernel panic is triggered.
  */
 
 
@@ -249,6 +253,8 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
 #define ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU	((u16)BIT(4))
 /* Is it safe for a late CPU to miss this capability when system has it */
 #define ARM64_CPUCAP_OPTIONAL_FOR_LATE_CPU	((u16)BIT(5))
+/* Panic when a conflict is detected */
+#define ARM64_CPUCAP_PANIC_ON_CONFLICT		((u16)BIT(6))
 
 /*
  * CPU errata workarounds that need to be enabled at boot time if one or
@@ -290,7 +296,8 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
  * CPU feature used early in the boot based on the boot CPU. All secondary
  * CPUs must match the state of the capability as detected by the boot CPU.
  */
-#define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE ARM64_CPUCAP_SCOPE_BOOT_CPU
+#define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE		\
+	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PANIC_ON_CONFLICT)
 
 struct arm64_cpu_capabilities {
 	const char *desc;
@@ -354,6 +361,12 @@ cpucap_late_cpu_permitted(const struct arm64_cpu_capabilities *cap)
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
index 166584deaed2..8a595b4cb0aa 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1796,10 +1796,8 @@ static void __init enable_cpu_capabilities(u16 scope_mask)
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
@@ -1844,10 +1842,12 @@ static bool verify_local_cpu_caps(u16 scope_mask)
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
@@ -1857,12 +1857,8 @@ static bool verify_local_cpu_caps(u16 scope_mask)
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
@@ -1910,8 +1906,7 @@ static void verify_local_cpu_capabilities(void)
 	 * check_early_cpu_features(), as they need to be verified
 	 * on all secondary CPUs.
 	 */
-	if (!verify_local_cpu_caps(SCOPE_ALL & ~SCOPE_BOOT_CPU))
-		cpu_die_early();
+	verify_local_cpu_caps(SCOPE_ALL & ~SCOPE_BOOT_CPU);
 
 	verify_local_elf_hwcaps(arm64_elf_hwcaps);
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
