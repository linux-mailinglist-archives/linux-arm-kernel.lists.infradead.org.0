Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD641195E8A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 20:22:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6Uzuv2rcZTNQCqKn0xtPOWKcqSLHqVjbZ7k9QrHHek=; b=foOG/VEeL2BURo
	lkRhpQ6+XW4ylMyurKOw6+q2uKfWLxn2sPsRNmzvZLmZ+sY/r05IvgfqWK8OoF937dzHjVThLOvq3
	pHVMN17/A+U1GZDOjp1WGtynKQac/+L69VGm0xSijXVRNWwYxmxxS/Jkluhzu2nHNJAFNbpqqpmwt
	Au1LKIqeDa3XevNMt3oL3lA10xE/CBcMWcNsZwpUC8wkhPzL2Y1aN4bcMAcQrb+vg7M3SAKo7DO9I
	bXiDstMytWM/mWZ4QJea2O6hvQIuz5/rExnnOYezOqWdv3wwZKLUbpLPs1042M7WmQmlADe7cWGWC
	hvKNFxCSX8Km7PxT9UVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHuYg-0002WE-NN; Fri, 27 Mar 2020 19:22:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHuXk-0001gI-LF
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 19:21:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 047EB30E;
 Fri, 27 Mar 2020 12:21:24 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76ED63F71E;
 Fri, 27 Mar 2020 12:21:23 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 3/5] arm64: Set GP bit in kernel page tables to enable BTI for
 the kernel
Date: Fri, 27 Mar 2020 19:21:05 +0000
Message-Id: <20200327192107.18394-4-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327192107.18394-1-broonie@kernel.org>
References: <20200327192107.18394-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_122124_809826_C9CF3FB7 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the kernel is built with BTI annotations enable the feature by
setting the GP bit in the stage 1 translation tables.  This is done
based on the features supported by the boot CPU so that we do not need
to rewrite the translation tables.

In order to avoid potential issues on big.LITTLE systems when there are
a mix of BTI and non-BTI capable CPUs in the system when we have enabled
kernel mode BTI we change BTI to be a _STRICT_BOOT_CPU_FEATURE when we
have kernel BTI.  This will prevent any CPUs that don't support BTI
being started if the boot CPU supports BTI rather than simply not using
BTI as we do when supporting BTI only in userspace.  The main concern is
the possibility of BTYPE being preserved by a CPU that does not
implement BTI when a thread is migrated to it resulting in an incorrect
state which could generate an exception when the thread migrates back to
a CPU that does support BTI.  If we encounter practical systems which
mix BTI and non-BTI CPUs we will need to revisit this implementation.

Since we currently do not generate landing pads in the BPF JIT we only
map the base kernel text in this way.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/pgtable-prot.h |  5 +++++
 arch/arm64/kernel/cpufeature.c        |  4 ++++
 arch/arm64/mm/mmu.c                   | 24 ++++++++++++++++++++++++
 3 files changed, 33 insertions(+)

diff --git a/arch/arm64/include/asm/pgtable-prot.h b/arch/arm64/include/asm/pgtable-prot.h
index 1305e28225fc..7213117ff538 100644
--- a/arch/arm64/include/asm/pgtable-prot.h
+++ b/arch/arm64/include/asm/pgtable-prot.h
@@ -21,6 +21,7 @@
 
 #ifndef __ASSEMBLY__
 
+#include <asm/cpufeature.h>
 #include <asm/pgtable-types.h>
 
 extern bool arm64_use_ng_mappings;
@@ -31,6 +32,8 @@ extern bool arm64_use_ng_mappings;
 #define PTE_MAYBE_NG		(arm64_use_ng_mappings ? PTE_NG : 0)
 #define PMD_MAYBE_NG		(arm64_use_ng_mappings ? PMD_SECT_NG : 0)
 
+#define PTE_MAYBE_GP		(system_supports_bti() ? PTE_GP : 0)
+
 #define PROT_DEFAULT		(_PROT_DEFAULT | PTE_MAYBE_NG)
 #define PROT_SECT_DEFAULT	(_PROT_SECT_DEFAULT | PMD_MAYBE_NG)
 
@@ -50,7 +53,9 @@ extern bool arm64_use_ng_mappings;
 #define PAGE_KERNEL		__pgprot(PROT_NORMAL)
 #define PAGE_KERNEL_RO		__pgprot((PROT_NORMAL & ~PTE_WRITE) | PTE_RDONLY)
 #define PAGE_KERNEL_ROX		__pgprot((PROT_NORMAL & ~(PTE_WRITE | PTE_PXN)) | PTE_RDONLY)
+#define PAGE_KERNEL_ROX_GP	__pgprot((PROT_NORMAL & ~(PTE_WRITE | PTE_PXN)) | PTE_RDONLY | PTE_GP)
 #define PAGE_KERNEL_EXEC	__pgprot(PROT_NORMAL & ~PTE_PXN)
+#define PAGE_KERNEL_EXEC_GP	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_GP)
 #define PAGE_KERNEL_EXEC_CONT	__pgprot((PROT_NORMAL & ~PTE_PXN) | PTE_CONT)
 
 #define PAGE_HYP		__pgprot(_HYP_PAGE_DEFAULT | PTE_HYP | PTE_HYP_XN)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 45f96e07fa18..0b11d2bb1005 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1802,7 +1802,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Branch Target Identification",
 		.capability = ARM64_BTI,
+#ifdef CONFIG_ARM64_BTI_KERNEL
+		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
+#else
 		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+#endif
 		.matches = has_cpuid_feature,
 		.cpu_enable = bti_enable,
 		.sys_reg = SYS_ID_AA64PFR1_EL1,
diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
index a374e4f51a62..c299b73dd5e4 100644
--- a/arch/arm64/mm/mmu.c
+++ b/arch/arm64/mm/mmu.c
@@ -609,6 +609,22 @@ static int __init map_entry_trampoline(void)
 core_initcall(map_entry_trampoline);
 #endif
 
+/*
+ * Open coded check for BTI, only for use to determine configuration
+ * for early mappings for before the cpufeature code has run.
+ */
+static bool arm64_early_this_cpu_has_bti(void)
+{
+	u64 pfr1;
+
+	if (!IS_ENABLED(CONFIG_ARM64_BTI_KERNEL))
+		return false;
+
+	pfr1 = read_sysreg_s(SYS_ID_AA64PFR1_EL1);
+	return cpuid_feature_extract_unsigned_field(pfr1,
+						    ID_AA64PFR1_BT_SHIFT);
+}
+
 /*
  * Create fine-grained mappings for the kernel.
  */
@@ -624,6 +640,14 @@ static void __init map_kernel(pgd_t *pgdp)
 	 */
 	pgprot_t text_prot = rodata_enabled ? PAGE_KERNEL_ROX : PAGE_KERNEL_EXEC;
 
+	/*
+	 * If we have a CPU that supports BTI and a kernel built for
+	 * BTI then mark the kernel executable text as guarded pages
+	 * now so we don't have to rewrite the page tables later.
+	 */
+	if (arm64_early_this_cpu_has_bti())
+		text_prot = __pgprot_modify(text_prot, PTE_GP, PTE_GP);
+
 	/*
 	 * Only rodata will be remapped with different permissions later on,
 	 * all other segments are allowed to use contiguous mappings.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
