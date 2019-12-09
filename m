Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C89281173E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 19:17:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2TZoa2P9zhX39qtqhVUOPkz/fzedEeS4ig4fImxY0A=; b=QVP3XXrzespkRd
	k52JsaAD6/TxB0ysy6Z/vLdbZ4G1GGTysOf+DPLmXSgLd8EVX4HGUSdPshBencT2VGKUd6JRFERRC
	mro2LISOUFUaoF+FqvlYpAYmYWvisE/5kduVAAvfwwO+TNpr1bPkjI8yNKPwIrp2lS+eetQOWUQzx
	ijPkiZpLeXBOk0lQ6K+uvgW1lI6MpcTFyaSNIdBK0C30GaHvIJhZw86rquNxa3Q72qZDM78uj/C3Y
	j3p8hWebG12zIVpPngnPh/qk2Vrm7Y+k2iTEPOPuZrKu8P4yQrcYz1eMRIyojyKnZtJjabptbRxCe
	oWT+jJCKAG0uF/qwlDIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNab-0001zk-SJ; Mon, 09 Dec 2019 18:16:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNWJ-00054Q-BD
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 18:12:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14F3E1045;
 Mon,  9 Dec 2019 10:12:31 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 624F03F6CF;
 Mon,  9 Dec 2019 10:12:30 -0800 (PST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: [PATCH v9 4/4] arm64: Use a variable to store non-global mappings
 decision
Date: Mon,  9 Dec 2019 18:12:17 +0000
Message-Id: <20191209181217.44890-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209181217.44890-1-broonie@kernel.org>
References: <20191209181217.44890-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_101231_546284_570FA3DD 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Refactor the code which checks to see if we need to use non-global
mappings to use a variable instead of checking with the CPU capabilities
each time, doing the initial check for KPTI early in boot before we
start allocating memory so we still avoid transitioning to non-global
mappings in common cases.

Since this variable always matches our decision about non-global
mappings this means we can also combine arm64_kernel_use_ng_mappings()
and arm64_unmap_kernel_at_el0() into a single function, the variable
simply stores the result and the decision code is elsewhere. We could
just have the users check the variable directly but having a function
makes it clear that these uses are read-only.

The result is that we simplify the code a bit and reduces the amount of
code executed at runtime.

Signed-off-by: Mark Brown <broonie@kernel.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/include/asm/mmu.h          | 87 ++-------------------------
 arch/arm64/include/asm/pgtable-prot.h |  4 +-
 arch/arm64/kernel/cpufeature.c        | 55 ++++++++++++++++-
 arch/arm64/kernel/setup.c             |  7 +++
 4 files changed, 65 insertions(+), 88 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index 1eec3971f0a9..e4d862420bb4 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -29,91 +29,11 @@ typedef struct {
  */
 #define ASID(mm)	((mm)->context.id.counter & 0xffff)
 
-static inline bool arm64_kernel_unmapped_at_el0(void)
-{
-	return IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0) &&
-	       cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
-}
+extern bool arm64_use_ng_mappings;
 
-/*
- * This check is triggered during the early boot before the cpufeature
- * is initialised. Checking the status on the local CPU allows the boot
- * CPU to detect the need for non-global mappings and thus avoiding a
- * pagetable re-write after all the CPUs are booted. This check will be
- * anyway run on individual CPUs, allowing us to get the consistent
- * state once the SMP CPUs are up and thus make the switch to non-global
- * mappings if required.
- */
-static inline bool kaslr_requires_kpti(void)
-{
-	bool tx1_bug;
-	u64 ftr;
-
-	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
-		return false;
-
-	/*
-	 * E0PD does a similar job to KPTI so can be used instead
-	 * where available.
-	 */
-	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
-		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
-		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
-			return false;
-	}
-
-	/*
-	 * Systems affected by Cavium erratum 24756 are incompatible
-	 * with KPTI.
-	 */
-	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
-		tx1_bug = false;
-#ifndef MODULE
-	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
-		extern const struct midr_range cavium_erratum_27456_cpus[];
-
-		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
-						cavium_erratum_27456_cpus);
-#endif
-	} else {
-		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
-	}
-	if (tx1_bug)
-		return false;
-
-	return kaslr_offset() > 0;
-}
-
-static inline bool arm64_kernel_use_ng_mappings(void)
+static inline bool arm64_kernel_unmapped_at_el0(void)
 {
-	/* What's a kpti? Use global mappings if we don't know. */
-	if (!IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0))
-		return false;
-
-	/*
-	 * Note: this function is called before the CPU capabilities have
-	 * been configured, so our early mappings will be global. If we
-	 * later determine that kpti is required, then
-	 * kpti_install_ng_mappings() will make them non-global.
-	 */
-	if (arm64_kernel_unmapped_at_el0())
-		return true;
-
-	/*
-	 * Once we are far enough into boot for capabilities to be
-	 * ready we will have confirmed if we are using non-global
-	 * mappings so don't need to consider anything else here.
-	 */
-	if (static_branch_likely(&arm64_const_caps_ready))
-		return false;
-
-	/*
-	 * KASLR is enabled so we're going to be enabling kpti on non-broken
-	 * CPUs regardless of their susceptibility to Meltdown. Rather
-	 * than force everybody to go through the G -> nG dance later on,
-	 * just put down non-global mappings from the beginning
-	 */
-	return kaslr_requires_kpti();
+	return arm64_use_ng_mappings;
 }
 
 typedef void (*bp_hardening_cb_t)(void);
@@ -167,6 +87,7 @@ extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       pgprot_t prot, bool page_mappings_only);
 extern void *fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
+extern bool kaslr_requires_kpti(void);
 
 #define INIT_MM_CONTEXT(name)	\
 	.pgd = init_pg_dir,
diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 8dc6c5cdabe6..0a1fd95a8972 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -26,8 +26,8 @@
 #define _PROT_DEFAULT		(PTE_TYPE_PAGE | PTE_AF | PTE_SHARED)
 #define _PROT_SECT_DEFAULT	(PMD_TYPE_SECT | PMD_SECT_AF | PMD_SECT_S)
 
-#define PTE_MAYBE_NG		(arm64_kernel_use_ng_mappings() ? PTE_NG : 0)
-#define PMD_MAYBE_NG		(arm64_kernel_use_ng_mappings() ? PMD_SECT_NG : 0)
+#define PTE_MAYBE_NG		(arm64_kernel_unmapped_at_el0() ? PTE_NG : 0)
+#define PMD_MAYBE_NG		(arm64_kernel_unmapped_at_el0() ? PMD_SECT_NG : 0)
 
 #define PROT_DEFAULT		(_PROT_DEFAULT | PTE_MAYBE_NG)
 #define PROT_SECT_DEFAULT	(_PROT_SECT_DEFAULT | PMD_MAYBE_NG)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 88aa5ab02926..4a031111ceb5 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -47,6 +47,9 @@ static struct arm64_cpu_capabilities const __ro_after_init *cpu_hwcaps_ptrs[ARM6
 /* Need also bit for ARM64_CB_PATCH */
 DECLARE_BITMAP(boot_capabilities, ARM64_NPATCHABLE);
 
+bool arm64_use_ng_mappings = false;
+EXPORT_SYMBOL(arm64_use_ng_mappings);
+
 /*
  * Flag to indicate if we have computed the system wide
  * capabilities based on the boot time active CPUs. This
@@ -966,6 +969,53 @@ has_useable_cnp(const struct arm64_cpu_capabilities *entry, int scope)
 	return has_cpuid_feature(entry, scope);
 }
 
+/*
+ * This check is triggered during the early boot before the cpufeature
+ * is initialised. Checking the status on the local CPU allows the boot
+ * CPU to detect the need for non-global mappings and thus avoiding a
+ * pagetable re-write after all the CPUs are booted. This check will be
+ * anyway run on individual CPUs, allowing us to get the consistent
+ * state once the SMP CPUs are up and thus make the switch to non-global
+ * mappings if required.
+ */
+bool kaslr_requires_kpti(void)
+{
+	bool tx1_bug;
+	u64 ftr;
+
+	if (!IS_ENABLED(CONFIG_RANDOMIZE_BASE))
+		return false;
+
+	/*
+	 * E0PD does a similar job to KPTI so can be used instead
+	 * where available.
+	 */
+	if (IS_ENABLED(CONFIG_ARM64_E0PD)) {
+		ftr = read_sysreg_s(SYS_ID_AA64MMFR2_EL1);
+		if ((ftr >> ID_AA64MMFR2_E0PD_SHIFT) & 0xf)
+			return false;
+	}
+
+	/*
+	 * Systems affected by Cavium erratum 24756 are incompatible
+	 * with KPTI.
+	 */
+	if (!IS_ENABLED(CONFIG_CAVIUM_ERRATUM_27456)) {
+		tx1_bug = false;
+	} else if (!static_branch_likely(&arm64_const_caps_ready)) {
+		extern const struct midr_range cavium_erratum_27456_cpus[];
+
+		tx1_bug = is_midr_in_range_list(read_cpuid_id(),
+						cavium_erratum_27456_cpus);
+	} else {
+		tx1_bug = __cpus_have_const_cap(ARM64_WORKAROUND_CAVIUM_27456);
+	}
+	if (tx1_bug)
+		return false;
+
+	return kaslr_offset() > 0;
+}
+
 static bool __meltdown_safe = true;
 static int __kpti_forced; /* 0: not forced, >0: forced on, <0: forced off */
 
@@ -1044,7 +1094,6 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	extern kpti_remap_fn idmap_kpti_install_ng_mappings;
 	kpti_remap_fn *remap_fn;
 
-	static bool kpti_applied = false;
 	int cpu = smp_processor_id();
 
 	/*
@@ -1052,7 +1101,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	 * it already or we have KASLR enabled and therefore have not
 	 * created any global mappings at all.
 	 */
-	if (kpti_applied || kaslr_offset() > 0)
+	if (arm64_use_ng_mappings)
 		return;
 
 	remap_fn = (void *)__pa_symbol(idmap_kpti_install_ng_mappings);
@@ -1062,7 +1111,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	cpu_uninstall_idmap();
 
 	if (!cpu)
-		kpti_applied = true;
+		arm64_use_ng_mappings = true;
 
 	return;
 }
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 56f664561754..b6f9455d7ca3 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -285,6 +285,13 @@ void __init setup_arch(char **cmdline_p)
 
 	*cmdline_p = boot_command_line;
 
+	/*
+	 * If know now we are going to need KPTI then use non-global
+	 * mappings from the start, avoiding the cost of rewriting
+	 * everything later.
+	 */
+	arm64_use_ng_mappings = kaslr_requires_kpti();
+
 	early_fixmap_init();
 	early_ioremap_init();
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
