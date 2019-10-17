Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BEEDA70E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 10:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JeuAAuM9k/TsJOR5Tc1RP3mtiHZ5PLvj4fgayKpRdZI=; b=nKesBP1QyN3zHMbZNtjKdHg7sX
	4iIygXt/GZ/sV0MhohhASeSneB2gbryoOspu4NdvzAbw1ifJWRHnxJDwxAUAaiPqrMUvJV0+WlpRJ
	4OaudScQtqQl2FVJmveNXeH4pHHNLUBRGL/tKxlPUwCYkbgtvUsdsMojpkQ/wKAcbIaJJ0H6NkKxn
	qlU1lDnLgpJJa73FFSU/88nyBTMh74IFFrrPruNj8wSzWMX25kG5+2zPWXjxmkowBpALGCngjP/RD
	eQVJBSaIiUT4cLppmBmUvwxSouadZZG9OZkt7xoIFWbI+/iNnxBlaPPd59Sps5XFfNowQFdcU5GYW
	7ofLAk6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0xS-0003H8-5q; Thu, 17 Oct 2019 08:16:30 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0w3-0001AC-He
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 08:15:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0376515AD;
 Thu, 17 Oct 2019 01:15:01 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5C8B13F6C4;
 Thu, 17 Oct 2019 01:14:57 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/11] arm64: enable ptrauth earlier
Date: Thu, 17 Oct 2019 13:44:19 +0530
Message-Id: <1571300065-10236-6-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
References: <1571300065-10236-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_011504_458810_917D67C8 
X-CRM114-Status: GOOD (  19.75  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>
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

Note the change in behavior: if the boot CPU has address auth and a late
CPU does not, then we offline the late CPU. Until now we would have just
disabled address auth in this case.

Leave generic authentication as a "system scope" cpucap for now, since
initially the kernel will only use address authentication.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since RFC v2:
 - Moved early enabling from C to assembly, and no longer use the pointer auth
   C function attribute [Suzuki]

 arch/arm64/Kconfig                  |  4 ++++
 arch/arm64/include/asm/cpufeature.h |  9 +++++++
 arch/arm64/include/asm/smp.h        |  1 +
 arch/arm64/kernel/cpufeature.c      | 13 +++-------
 arch/arm64/kernel/head.S            | 48 +++++++++++++++++++++++++++++++++++++
 arch/arm64/kernel/smp.c             |  2 ++
 6 files changed, 67 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 41a9b42..253e3c5 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1408,6 +1408,10 @@ config ARM64_PTR_AUTH
 	  be enabled. However, KVM guest also require VHE mode and hence
 	  CONFIG_ARM64_VHE=y option to use this feature.
 
+	  If the feature is present on the primary CPU but not a secondary CPU,
+	  then the secondary CPU will be offlined. On such a system, this
+	  option should not be selected.
+
 endmenu
 
 config ARM64_SVE
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 011a665..5d61749 100644
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
+#define ARM64_CPUCAP_BOOT_CPU_FEATURE			\
+	 (ARM64_CPUCAP_SCOPE_BOOT_CPU | ARM64_CPUCAP_PERMITTED_FOR_LATE_CPU)
+
 struct arm64_cpu_capabilities {
 	const char *desc;
 	u16 capability;
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index a0c8a0b..46e2b05 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -22,6 +22,7 @@
 
 #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
 #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
+#define CPU_STUCK_REASON_NO_PTRAUTH	(UL(4) << CPU_STUCK_REASON_SHIFT)
 
 #ifndef __ASSEMBLY__
 
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4ef40c9..507c057 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1237,12 +1237,6 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
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
@@ -1519,7 +1513,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (architected algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_ARCH,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
@@ -1529,7 +1523,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_IMP_DEF,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_API_SHIFT,
@@ -1538,9 +1532,8 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index e58e5975..157c811 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -13,6 +13,7 @@
 #include <linux/init.h>
 #include <linux/irqchip/arm-gic-v3.h>
 
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/boot.h>
 #include <asm/ptrace.h>
@@ -119,6 +120,8 @@ ENTRY(stext)
 	 * the TCR will have been set.
 	 */
 	bl	__cpu_setup			// initialise processor
+	mov	x1, #1
+	bl	__ptrauth_setup
 	b	__primary_switch
 ENDPROC(stext)
 
@@ -713,6 +716,8 @@ secondary_startup:
 	 */
 	bl	__cpu_secondary_check52bitva
 	bl	__cpu_setup			// initialise processor
+	mov	x1, #0
+	bl	__ptrauth_setup
 	adrp	x1, swapper_pg_dir
 	bl	__enable_mmu
 	ldr	x8, =__secondary_switched
@@ -832,6 +837,49 @@ __no_granule_support:
 	early_park_cpu
 ENDPROC(__no_granule_support)
 
+/*
+ * Enable pointer authentication.
+ *   x0 = SCTLR_EL1
+ *   x1 = 1 for primary, 0 for secondary
+ */
+__ptrauth_setup:
+#ifdef CONFIG_ARM64_PTR_AUTH
+	/* Check if the CPU supports ptrauth */
+	mrs	x2, id_aa64isar1_el1
+	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
+	cbz	x2, 2f
+
+	/* x2 = system_supports_address_auth() */
+alternative_if ARM64_HAS_ADDRESS_AUTH
+	mov	x2, 1
+alternative_else
+	mov	x2, 0
+alternative_endif
+	orr	x2, x2, x1	// primary || system_supports_address_auth()
+	cbz	x2, 3f
+
+	/* Enable ptrauth instructions */
+	ldr	x2, =SCTLR_ELx_ENIA | SCTLR_ELx_ENIB | \
+		     SCTLR_ELx_ENDA | SCTLR_ELx_ENDB
+	orr	x0, x0, x2
+	b	3f
+
+2:	/* No ptrauth support */
+alternative_if ARM64_HAS_ADDRESS_AUTH
+	b	4f
+alternative_else_nop_endif
+3:
+#endif
+	ret
+
+#ifdef CONFIG_ARM64_PTR_AUTH
+4:	/* Park the secondary CPU */
+	update_early_cpu_boot_status \
+		CPU_STUCK_IN_KERNEL | CPU_STUCK_REASON_NO_PTRAUTH, x0, x1
+	early_park_cpu
+#endif
+ENDPROC(__ptrauth_setup)
+
 #ifdef CONFIG_RELOCATABLE
 __relocate_kernel:
 	/*
diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index dc9fe87..a6a5f24 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -162,6 +162,8 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
 			if (status & CPU_STUCK_REASON_NO_GRAN)
 				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
+			if (status & CPU_STUCK_REASON_NO_PTRAUTH)
+				pr_crit("CPU%u: does not support pointer authentication\n", cpu);
 			cpus_stuck_in_kernel++;
 			break;
 		case CPU_PANIC_KERNEL:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
