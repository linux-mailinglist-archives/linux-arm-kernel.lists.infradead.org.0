Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2982E3E72
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 23:43:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaiVSDPDZZKmgQSw+zY/ZWJAgIH3X9YU0rOdAWg1l0M=; b=H8WTvEqMyLhb9N
	SYhWIcIOe4jYDVFOuZeTtO6shJF6rGh+gCiXfIqHI3TnbikJEpheN89cFhIQWzlr2RdHOOL7fQkDw
	orOXH5o+Qi4s5vFSG4DD27r8/fh8u4i/YhQZluVrEa7Du7pxqQmqrPI0TwRRVZD2zNst3qXc5e4nZ
	sv5c61j1u2GOrBpPtHJ7s/Pg8pKyawhp4Gi2atzuBmCraxNuwj907zasfJCWKZmAKnB8+1Mob9HQK
	gdej5C3egAfJEblCtN7E2SJKr/rsHChqsOrpL1QMYtYdY4j9XqGF0pwd73LJCIwOIVAiyGLTcxUYn
	qlk0KjK7ahvOGnuBgm/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNktO-0003aF-8g; Thu, 24 Oct 2019 21:43:38 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNks8-0002gY-Nl
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 21:42:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EJw6jBZXcJMEAIzXLUgSHmT0DfBgOpbboM0S6HjrQ/0=; b=GPTLKuspMO1NaPKA7ml4Q5Hslg
 HYG/TiR5GV4/1mUCkVhxnulOAhrDttycXti5EtkI3omSXGyu7bZyN2LrYrMDYvUEdBSbq+5Uydwfj
 bpERkrtg3dSFn+Z+ha2ERPSa7imMdneuLDfLrwkco57pOkC55z/xfNneFFHViB3bAUj4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNks6-0004LA-2V; Thu, 24 Oct 2019 21:42:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 734D2274326E; Thu, 24 Oct 2019 22:42:17 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v4 4/4] arm64: Use a variable to store non-global mappings
 decision
Date: Thu, 24 Oct 2019 22:42:07 +0100
Message-Id: <20191024214207.20588-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024214207.20588-1-broonie@kernel.org>
References: <20191024214207.20588-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_144220_939022_74D7DD67 
X-CRM114-Status: GOOD (  23.66  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

vdfsv
---
 arch/arm64/include/asm/mmu.h          | 78 ++-------------------------
 arch/arm64/include/asm/pgtable-prot.h |  4 +-
 arch/arm64/kernel/cpufeature.c        | 42 ++++++++++++++-
 3 files changed, 46 insertions(+), 78 deletions(-)

diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
index d61908bf4c9c..e4d862420bb4 100644
--- a/arch/arm64/include/asm/mmu.h
+++ b/arch/arm64/include/asm/mmu.h
@@ -29,82 +29,11 @@ typedef struct {
  */
 #define ASID(mm)	((mm)->context.id.counter & 0xffff)
 
-static inline bool arm64_kernel_unmapped_at_el0(void)
-{
-	return IS_ENABLED(CONFIG_UNMAP_KERNEL_AT_EL0) &&
-	       cpus_have_const_cap(ARM64_UNMAP_KERNEL_AT_EL0);
-}
+extern bool arm64_use_ng_mappings;
 
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
@@ -158,6 +87,7 @@ extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
 			       pgprot_t prot, bool page_mappings_only);
 extern void *fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot);
 extern void mark_linear_text_alias_ro(void);
+extern bool kaslr_requires_kpti(void);
 
 #define INIT_MM_CONTEXT(name)	\
 	.pgd = init_pg_dir,
diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 9a21b84536f2..eb1c6f83343d 100644
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
index 7a417034d7e8..92058e7aaea9 100644
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
@@ -966,6 +969,39 @@ has_useable_cnp(const struct arm64_cpu_capabilities *entry, int scope)
 	return has_cpuid_feature(entry, scope);
 }
 
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
 
@@ -1051,7 +1087,7 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	 * it already or we have KASLR enabled and therefore have not
 	 * created any global mappings at all.
 	 */
-	if (kpti_applied || kaslr_offset() > 0)
+	if (kpti_applied || arm64_use_ng_mappings)
 		return;
 
 	remap_fn = (void *)__pa_symbol(idmap_kpti_install_ng_mappings);
@@ -1060,8 +1096,10 @@ kpti_install_ng_mappings(const struct arm64_cpu_capabilities *__unused)
 	remap_fn(cpu, num_online_cpus(), __pa_symbol(swapper_pg_dir));
 	cpu_uninstall_idmap();
 
-	if (!cpu)
+	if (!cpu) {
 		kpti_applied = true;
+		arm64_use_ng_mappings = true;
+	}
 
 	return;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
