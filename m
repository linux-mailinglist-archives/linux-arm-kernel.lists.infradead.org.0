Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3F52E4F9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 21:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eK3I0qBLiWpHLRDsqb0B05nHkxHrVBzfnkYPeJtII+c=; b=FBsOJhW0O4IxVV0b7p3Dh2ec7q
	xz9PvRt+tFfF/oYpZZLQMGMCINDqwzAzqBbrbPFXaQG/UD6PjfyeHAqblBuSjWcKDDlvu/VRnqeYf
	J3I4jRl4A/FKB3tBf/g/kqjFa5JNyY5N44dOk5J1XK9qdGVgGQlOGVF1qoz8WbmEEW4ytB/WPJ3t2
	p3pqhuKm1bgmK+WoPJSnKGoNJKYLHrZyLecL/4JIOBgRFmSKopJ8hcoEnhF+UqeJYhM20pJOUGE/1
	kZHOZg+zOiKLN+tGAscJgzvRCTJBjmILG9nouSpSh7x0kFFvAOOvsVu+gCTdd3HOSxd1jFH08zdm5
	hiOTq99Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3tO-0001C0-1w; Wed, 29 May 2019 19:05:42 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3sZ-0007dt-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 19:04:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BDE9715A2;
 Wed, 29 May 2019 12:04:50 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0A463F59C;
 Wed, 29 May 2019 12:04:48 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC v2 4/7] arm64: enable ptrauth earlier
Date: Wed, 29 May 2019 20:03:29 +0100
Message-Id: <20190529190332.29753-5-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190529190332.29753-1-kristina.martsenko@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120452_788939_9AC90DF8 
X-CRM114-Status: GOOD (  23.36  )
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

When the kernel is compiled with pointer auth instructions, the boot CPU
needs to start using address auth very early, so change the cpucap to
account for this.

A function that enables pointer auth cannot return, so compile such
functions without pointer auth (using a compiler function attribute).
The __no_ptrauth macro will be defined to the required function
attribute in a later patch.

Do not use the cpu_enable callback, to avoid compiling the whole
callchain down to cpu_enable without pointer auth.

Note the change in behavior: if the boot CPU has address auth and a late
CPU does not, then we offline the late CPU. Until now we would have just
disabled address auth in this case.

Leave generic authentication as a "system scope" cpucap for now, since
initially the kernel will only use address authentication.

Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
---

Changes since RFC v1:
 - Enable instructions for all 5 keys
 - Replaced __always_inline with __no_ptrauth as it turns out __always_inline
   is only a hint (and could therefore result in crashes)
 - Left the __no_ptrauth definition blank for now as it needs to be determined
   with more complex logic in a later patch
 - Updated the Kconfig symbol description
 - Minor cleanups
 - Updated the commit message

 arch/arm64/Kconfig                    |  4 ++++
 arch/arm64/include/asm/cpufeature.h   |  9 +++++++++
 arch/arm64/include/asm/pointer_auth.h | 19 +++++++++++++++++++
 arch/arm64/kernel/cpufeature.c        | 13 +++----------
 arch/arm64/kernel/smp.c               |  7 ++++++-
 5 files changed, 41 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7e34b9eba5de..f4c1e9b30129 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1304,6 +1304,10 @@ config ARM64_PTR_AUTH
 	  hardware it will not be advertised to userspace nor will it be
 	  enabled.
 
+	  If the feature is present on the primary CPU but not a secondary CPU,
+	  then the secondary CPU will be offlined. On such a system, this
+	  option should not be selected.
+
 endmenu
 
 config ARM64_SVE
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index ad952f2e0a2b..e36a7948b763 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -299,6 +299,15 @@ extern struct arm64_ftr_reg arm64_ftr_reg_ctrel0;
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
diff --git a/arch/arm64/include/asm/pointer_auth.h b/arch/arm64/include/asm/pointer_auth.h
index fc8dc70cc19f..a97b7dc10bdb 100644
--- a/arch/arm64/include/asm/pointer_auth.h
+++ b/arch/arm64/include/asm/pointer_auth.h
@@ -11,6 +11,13 @@
 
 #ifdef CONFIG_ARM64_PTR_AUTH
 /*
+ * Compile the function without pointer authentication instructions. This
+ * allows pointer authentication to be enabled/disabled within the function
+ * (but leaves the function unprotected by pointer authentication).
+ */
+#define __no_ptrauth
+
+/*
  * Each key is a 128-bit quantity which is split across a pair of 64-bit
  * registers (Lo and Hi).
  */
@@ -50,6 +57,16 @@ do {								\
 	write_sysreg_s(__pki_v.hi, SYS_ ## k ## KEYHI_EL1);	\
 } while (0)
 
+static inline void __no_ptrauth ptrauth_cpu_enable(void)
+{
+	if (!system_supports_address_auth())
+		return;
+
+	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
+				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
+	isb();
+}
+
 extern int ptrauth_prctl_reset_keys(struct task_struct *tsk, unsigned long arg);
 
 /*
@@ -68,6 +85,8 @@ static inline unsigned long ptrauth_strip_insn_pac(unsigned long ptr)
 	ptrauth_keys_init(&(tsk)->thread.keys_user)
 
 #else /* CONFIG_ARM64_PTR_AUTH */
+#define __no_ptrauth
+#define ptrauth_cpu_enable(tsk)
 #define ptrauth_prctl_reset_keys(tsk, arg)	(-EINVAL)
 #define ptrauth_strip_insn_pac(lr)	(lr)
 #define ptrauth_thread_init_user(tsk)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 8a595b4cb0aa..2cf042ebb237 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1200,12 +1200,6 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
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
@@ -1474,7 +1468,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (architected algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_ARCH,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
@@ -1484,7 +1478,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
 		.capability = ARM64_HAS_ADDRESS_AUTH_IMP_DEF,
-		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
 		.sys_reg = SYS_ID_AA64ISAR1_EL1,
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_API_SHIFT,
@@ -1493,9 +1487,8 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
index 824de7038967..eca6aa05ac66 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -54,6 +54,7 @@
 #include <asm/numa.h>
 #include <asm/pgtable.h>
 #include <asm/pgalloc.h>
+#include <asm/pointer_auth.h>
 #include <asm/processor.h>
 #include <asm/smp_plat.h>
 #include <asm/sections.h>
@@ -238,6 +239,8 @@ asmlinkage notrace void secondary_start_kernel(void)
 	 */
 	check_local_cpu_capabilities();
 
+	ptrauth_cpu_enable();
+
 	if (cpu_ops[cpu]->cpu_postboot)
 		cpu_ops[cpu]->cpu_postboot();
 
@@ -432,7 +435,7 @@ void __init smp_cpus_done(unsigned int max_cpus)
 	mark_linear_text_alias_ro();
 }
 
-void __init smp_prepare_boot_cpu(void)
+void __init __no_ptrauth smp_prepare_boot_cpu(void)
 {
 	set_my_cpu_offset(per_cpu_offset(smp_processor_id()));
 	/*
@@ -452,6 +455,8 @@ void __init smp_prepare_boot_cpu(void)
 	/* Conditionally switch to GIC PMR for interrupt masking */
 	if (system_uses_irq_prio_masking())
 		init_gic_priority_masking();
+
+	ptrauth_cpu_enable();
 }
 
 static u64 __init of_get_cpu_mpidr(struct device_node *dn)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
