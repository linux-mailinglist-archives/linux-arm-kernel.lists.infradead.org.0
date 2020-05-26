Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3591AA399
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2FTY3B394L0hPDJwTpHyi9g26jZFz/bs67ksUfhnhY=; b=m2AeY97WGIcIUf
	VrnYCpsDEfZSbR56+Ohm1/PXn9rkvbe32/0J8CetX9jukeADNIvG3fucLdbhIeRYcMkPEb10KUQrb
	ZUm0+CUqj3UGfugqoI1v2eSPUFktBF+pd1+CGCaWtfvimlwnvhoqxaWbRz/bmLE5lbMfi9F/hPEIm
	qNa1TC0Ujhi+55pWHTppZvAGzAN7GPuVeMmSMgtKeoxD/QNJObwtMdXaZgM+Re6rXPg4/hlfP+qYZ
	2wcDsmwwUG7rF+Sco+I7O++HHR+dc7YFbIZ9rK5BbLapH9op56nAYa2/bvyie+EImZbkFfVvBp7Hz
	esZxhEjLKPNHIarTOFiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhqv-0001v8-MK; Wed, 15 Apr 2020 13:13:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhpj-00012g-RB
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:12:06 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8296E20936;
 Wed, 15 Apr 2020 13:12:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586956322;
 bh=aWd7JMBbYHuGa8naty0qTpWCmBulKCsomsMDQ3LTLsU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eaaixJ/JI2LbnKSqRTRRdQ2WQpRHyrbYosWW3gQq4/p4ujXMwF+D5ZflSCfiq4Vbj
 HtJ13bv5RGJFl/E74bsq31xgOC1NeYM60ji4z/u8TNxRwwfWLSOHv6Q/5sKB+8xOyL
 Hy/JOGXQAIKAx6szrYK17fF166MHWRZDio/MmEJY=
From: Mark Brown <broonie@kernel.org>
To: Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 04/10] arm64: Set GP bit in kernel page tables to enable BTI
 for the kernel
Date: Wed, 15 Apr 2020 14:07:43 +0100
Message-Id: <20200415130750.18645-5-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415130750.18645-1-broonie@kernel.org>
References: <20200415130750.18645-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_061204_253493_343F90E3 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
index 9793d3aa9d98..84fea674856f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1800,7 +1800,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
