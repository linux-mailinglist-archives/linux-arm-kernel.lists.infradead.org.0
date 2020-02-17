Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C19AE160E8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:30:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rrk9LCtXmEnuCRXvdHKX49HP/Rdt0AevniWX71f28sE=; b=fDSxMPFHpxinKUB5MTStiJOlvx
	CVmweZz3zUmql/GvTZD8OPlDL8sCgDOaXHCxOT7EuJ9fQiYQY+yOAolfqf2B3BlaTGJI1QvjvpTAe
	aebA2e1ilSZnQhqLZSQw296MFnYfKf4TGgbggjYWn9aYKSns8bYnHRTkkfmoyXVwocOOrqf5Lc665
	qYCNzwGmN+zaKx0VY8rIrg1Yyt8mJ03zoRS0uqyBUpUmJbCmK6wYBuhbTuY9uxOk75wrNIG5GHWGP
	SwKRVvzyLdmI1gPIRG9EQZUghUh/4NjnZa0TSemorudLnww60H3oOblFOoy1IXSFfpU1eFV7YlTIe
	GlLA2jbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3cjc-0000PQ-Bk; Mon, 17 Feb 2020 09:30:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3chj-00066h-QE
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:28:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5E0530E;
 Mon, 17 Feb 2020 01:28:38 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2D34E3F6CF;
 Mon, 17 Feb 2020 01:28:34 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 08/17] arm64: enable ptrauth earlier
Date: Mon, 17 Feb 2020 14:57:39 +0530
Message-Id: <1581931668-11559-9-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
References: <1581931668-11559-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_012839_966062_920F5624 
X-CRM114-Status: GOOD (  21.46  )
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

When the kernel is compiled with pointer auth instructions, the boot CPU
needs to start using address auth very early, so change the cpucap to
account for this.

Pointer auth must be enabled before we call C functions, because it is
not possible to enter a function with pointer auth disabled and exit it
with pointer auth enabled. Note, mismatches between architected and
IMPDEF algorithms will still be caught by the cpufeature framework (the
separate *_ARCH and *_IMP_DEF cpucaps).

Note the change in behavior: if the boot CPU has address auth and a
late CPU does not, then the late CPU is parked by the cpufeature
framework. Also, if the boot CPU does not have address auth and the late
CPU has then the late cpu will still boot but with ptrauth feature
disabled.

Leave generic authentication as a "system scope" cpucap for now, since
initially the kernel will only use address authentication.

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Re-worked ptrauth setup logic, comments]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 arch/arm64/Kconfig                  |  6 ++++++
 arch/arm64/include/asm/cpufeature.h |  9 +++++++++
 arch/arm64/include/asm/smp.h        |  1 +
 arch/arm64/kernel/cpufeature.c      | 13 +++----------
 arch/arm64/kernel/smp.c             |  2 ++
 arch/arm64/mm/proc.S                | 31 +++++++++++++++++++++++++++++++
 6 files changed, 52 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0b30e88..87e2cbb 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1515,6 +1515,12 @@ config ARM64_PTR_AUTH
 	  be enabled. However, KVM guest also require VHE mode and hence
 	  CONFIG_ARM64_VHE=y option to use this feature.
 
+	  If the feature is present on the boot CPU but not on a late CPU, then
+	  the late CPU will be parked. Also, if the boot CPU does not have
+	  address auth and the late CPU has then the late CPU will still boot
+	  but with the feature disabled. On such a system, this option should
+	  not be selected.
+
 endmenu
 
 menu "ARMv8.5 architectural features"
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 1e88aee..e59477c 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -291,6 +291,15 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
 #define ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE		\
 	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PANIC_ON_CONFLICT)
 
+/*
+ * CPU feature used early in the boot based on the boot CPU. It is safe for a
+ * late CPU to have this feature even though the boot CPU hasn't enabled it,
+ * although the feature will not be used by Linux in this case. If the boot CPU
+ * has enabled this feature already, then every late CPU must have it.
+ */
+#define ARM64_CPUCAP_BOOT_CPU_FEATURE                  \
+	(ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU)
+
 struct arm64_cpu_capabilities {
 	const char *desc;
 	u16 capability;
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 8159000..5334d69 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -22,6 +22,7 @@
 
 #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
 #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
+#define CPU_STUCK_REASON_NO_PTRAUTH	(UL(4) << CPU_STUCK_REASON_SHIFT)
 
 /* Options for __cpu_setup */
 #define ARM64_CPU_BOOT_PRIMARY		(1)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index ee1e8f3..8d1c979 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1318,12 +1318,6 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
 #endif /* CONFIG_ARM64_RAS_EXTN */
 
 #ifdef CONFIG_ARM64_PTR_AUTH
-static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
-{
-	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
-				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
-}
-
 static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
 			     int __unused)
 {
@@ -1608,7 +1602,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (architected algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_ARCH,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
@@ -1618,7 +1612,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_IMP_DEF,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_API_SHIFT,
@@ -1627,9 +1621,8 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	},
 	{
 		.capability = ARM64_HAS_ADDRESS_AUTH,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.matches = has_address_auth,
-		.cpu_enable = cpu_enable_address_auth,
 	},
 	{
 		.desc = "Generic authentication (architected algorithm)",
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index d4ed9a1..f2761a9 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -164,6 +164,8 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
 			if (status & CPU_STUCK_REASON_NO_GRAN)
 				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
+			if (status & CPU_STUCK_REASON_NO_PTRAUTH)
+				pr_crit("CPU%u: does not support pointer authentication\n", cpu);
 			cpus_stuck_in_kernel++;
 			break;
 		case CPU_PANIC_KERNEL:
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index ea0db17..4cf19a2 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -16,6 +16,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/cpufeature.h>
 #include <asm/alternative.h>
+#include <asm/smp.h>
 
 #ifdef CONFIG_ARM64_64K_PAGES
 #define TCR_TG_FLAGS	TCR_TG0_64K | TCR_TG1_64K
@@ -468,9 +469,39 @@ SYM_FUNC_START(__cpu_setup)
 1:
 #endif	/* CONFIG_ARM64_HW_AFDBM */
 	msr	tcr_el1, x10
+	mov	x1, x0
 	/*
 	 * Prepare SCTLR
 	 */
 	mov_q	x0, SCTLR_EL1_SET
+
+#ifdef CONFIG_ARM64_PTR_AUTH
+	/* No ptrauth setup for run time cpus */
+	cmp	x1, #ARM64_CPU_RUNTIME
+	b.eq	3f
+
+	/* Check if the CPU supports ptrauth */
+	mrs	x2, id_aa64isar1_el1
+	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
+	cbz	x2, 3f
+
+	msr_s	SYS_APIAKEYLO_EL1, xzr
+	msr_s	SYS_APIAKEYHI_EL1, xzr
+
+	/* Just enable ptrauth for primary cpu */
+	cmp	x1, #ARM64_CPU_BOOT_PRIMARY
+	b.eq	2f
+
+	/* if !system_supports_address_auth() then skip enable */
+alternative_if_not ARM64_HAS_ADDRESS_AUTH
+	b	3f
+alternative_else_nop_endif
+
+2:	/* Enable ptrauth instructions */
+	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
+		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
+	orr	x0, x0, x2
+3:
+#endif
 	ret					// return to head.S
 SYM_FUNC_END(__cpu_setup)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
