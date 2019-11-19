Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1166310247F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2aJMUsWMq2f+VvmmWgpVddSSbiJJGdlhuBPrBsHjp30=; b=YS8a0xUWSA9A6C2tl4KxSfYZn6
	0haRGBH9Ggma0dRQ94g1QOHNBI9MrpEVnUBdK37/WDNcxdU9e5DRRubBYOegMXdkD+W/zGp/YZ+88
	FbAvsLV0Bzyrye5Dxq2DbWVuEPzWtXOxnIV2Du9R3OgFp3qfVP9z7KyoREnaTOXE/Ge8t3lFvdE70
	gOxUb68VuIGRk9BMXhwVP59Ex0gzoGJvyZKHZ5khgTLKFKP6cFo2hL6aL//GYwk2tbNF8EQWxl/81
	LoYj6clR+CwGcHrgMGzFES6bWReXGs2Nok8ku96QeVxsqvjDEMvx7hmcKM8ZlwI6/8NUxD/XT4HnO
	HLGpwnPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2ib-0008CW-Pi; Tue, 19 Nov 2019 12:34:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2h5-00071B-Gi
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A1DDA1FB;
 Tue, 19 Nov 2019 04:33:18 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 301CB3F703;
 Tue, 19 Nov 2019 04:33:14 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 05/14] arm64: enable ptrauth earlier
Date: Tue, 19 Nov 2019 18:02:17 +0530
Message-Id: <1574166746-27197-6-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043319_829151_AB4B51C0 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
CPU does not, then we park the late CPU very early in booting. Also, if
the boot CPU does not have address auth and the late CPU has then system
panic will occur little later from inside the C code. Until now we would
have just disabled address auth in this case.

Leave generic authentication as a "system scope" cpucap for now, since
initially the kernel will only use address authentication.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: Re-worked ptrauth setup logic, comments]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* Added a check __cpu_secondary_checkptrauth for secondary cores which do
  not have ptrauth. [James]
* Moved ptrauth setup inside __cpu_setup. [James]
* Now if secondary cpus do not have ptrauth and primary has then this
  will cause system panic. [Suzuki]

Link to above discussions: https://www.spinics.net/lists/arm-kernel/msg761993.html

 arch/arm64/Kconfig             |  5 +++++
 arch/arm64/include/asm/smp.h   |  1 +
 arch/arm64/kernel/cpufeature.c | 13 +++----------
 arch/arm64/kernel/head.S       | 20 ++++++++++++++++++++
 arch/arm64/kernel/smp.c        |  2 ++
 arch/arm64/mm/proc.S           | 31 +++++++++++++++++++++++++++++++
 6 files changed, 62 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3f047af..998248e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1436,6 +1436,11 @@ config ARM64_PTR_AUTH
 	  be enabled. However, KVM guest also require VHE mode and hence
 	  CONFIG_ARM64_VHE=y option to use this feature.
 
+	  If the feature is present on the primary CPU but not a secondary CPU,
+	  then the secondary CPU will be parked. Also, if the boot CPU does not
+	  have address auth and the late CPU has then system panic will occur.
+	  On such a system, this option should not be selected.
+
 endmenu
 
 config ARM64_SVE
diff --git a/arch/arm64/include/asm/smp.h b/arch/arm64/include/asm/smp.h
index 008d004..ddb6d70 100644
--- a/arch/arm64/include/asm/smp.h
+++ b/arch/arm64/include/asm/smp.h
@@ -22,6 +22,7 @@
 
 #define CPU_STUCK_REASON_52_BIT_VA	(UL(1) << CPU_STUCK_REASON_SHIFT)
 #define CPU_STUCK_REASON_NO_GRAN	(UL(2) << CPU_STUCK_REASON_SHIFT)
+#define CPU_STUCK_REASON_NO_PTRAUTH	(UL(4) << CPU_STUCK_REASON_SHIFT)
 
 /* Options for __cpu_setup */
 #define ARM64_CPU_BOOT_PRIMARY		(1)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index b6af43f..c05c36a 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1243,12 +1243,6 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
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
@@ -1525,7 +1519,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (architected algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_ARCH,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_SCOPE_BOOT_CPU,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
@@ -1535,7 +1529,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_IMP_DEF,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_SCOPE_BOOT_CPU,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_API_SHIFT,
@@ -1544,9 +1538,8 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	},
 	{
 		.capability = ARM64_HAS_ADDRESS_AUTH,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_SCOPE_BOOT_CPU,
 		.matches = has_address_auth,
-		.cpu_enable = cpu_enable_address_auth,
 	},
 	{
 		.desc = "Generic authentication (architected algorithm)",
diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
index 5aaf1bb..c59c28f 100644
--- a/arch/arm64/kernel/head.S
+++ b/arch/arm64/kernel/head.S
@@ -13,6 +13,7 @@
 #include <linux/init.h>
 #include <linux/irqchip/arm-gic-v3.h>
 
+#include <asm/alternative.h>
 #include <asm/assembler.h>
 #include <asm/boot.h>
 #include <asm/ptrace.h>
@@ -713,6 +714,7 @@ secondary_startup:
 	 * Common entry point for secondary CPUs.
 	 */
 	bl	__cpu_secondary_check52bitva
+	bl	__cpu_secondary_checkptrauth
 	mov	x0, #ARM64_CPU_BOOT_LATE
 	bl	__cpu_setup			// initialise processor
 	adrp	x1, swapper_pg_dir
@@ -831,6 +833,24 @@ __no_granule_support:
 	early_park_cpu CPU_STUCK_REASON_NO_GRAN
 ENDPROC(__no_granule_support)
 
+ENTRY(__cpu_secondary_checkptrauth)
+#ifdef CONFIG_ARM64_PTR_AUTH
+	/* Check if the CPU supports ptrauth */
+	mrs	x2, id_aa64isar1_el1
+	ubfx	x2, x2, #ID_AA64ISAR1_APA_SHIFT, #8
+	cbnz	x2, 1f
+alternative_if ARM64_HAS_ADDRESS_AUTH
+	mov	x3, 1
+alternative_else
+	mov	x3, 0
+alternative_endif
+	cbz	x3, 1f
+	/* Park the mismatched secondary CPU */
+	early_park_cpu CPU_STUCK_REASON_NO_PTRAUTH
+#endif
+1:	ret
+ENDPROC(__cpu_secondary_checkptrauth)
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
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 88cf7e4..8734d99 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -16,6 +16,7 @@
 #include <asm/pgtable-hwdef.h>
 #include <asm/cpufeature.h>
 #include <asm/alternative.h>
+#include <asm/smp.h>
 
 #ifdef CONFIG_ARM64_64K_PAGES
 #define TCR_TG_FLAGS	TCR_TG0_64K | TCR_TG1_64K
@@ -474,9 +475,39 @@ ENTRY(__cpu_setup)
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
 ENDPROC(__cpu_setup)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
