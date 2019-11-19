Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D17D102479
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 13:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hGzCmszE0VQ/F/GPZfNvxE05xAqolcMan0EWIowg9HQ=; b=LnEgGpRIzT9C+VeXc2+NeFtKKk
	+kkaGxST1rXltBHjizQ7DXnCe1HE8rmRopiqTtrBbdXIQPPTMHYNeWIoZtAH99co/egd1OHFdnPiO
	e7eL49/3I5pPBgA0QMro44WicgW/LU4ARiSZ0H5NHM+D4/YFV9fAYEZ+AWyt5xhN/MQgnim/Nv90Y
	d0ocuKC8/cz80hu48y1LdS8bpVLxFqCLi7O+RgKDzyicdMIKAbEudUqXEc3FCx0PznoECzJaZ7vRi
	pMWq6j0fKurCPwoo2cd2o0+wx1vqJ18aRsApGl/A3b3sLbNytJkDY166mG9tvXhJ5ekxt8NZYZ7QX
	VgYq1Zmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX2ha-00075J-5e; Tue, 19 Nov 2019 12:33:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX2gr-0006qP-LN
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 12:33:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0164530E;
 Tue, 19 Nov 2019 04:33:03 -0800 (PST)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.0.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 87BE83F703;
 Tue, 19 Nov 2019 04:32:59 -0800 (PST)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/14] arm64: cpufeature: add pointer auth meta-capabilities
Date: Tue, 19 Nov 2019 18:02:13 +0530
Message-Id: <1574166746-27197-2-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_043305_828777_AA1FF383 
X-CRM114-Status: GOOD (  13.39  )
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

To enable pointer auth for the kernel, we're going to need to check for
the presence of address auth and generic auth using alternative_if. We
currently have two cpucaps for each, but alternative_if needs to check a
single cpucap. So define meta-capabilities that are present when either
of the current two capabilities is present.

Leave the existing four cpucaps in place, as they are still needed to
check for mismatched systems where one CPU has the architected algorithm
but another has the IMP DEF algorithm.

Note, the meta-capabilities were present before but were removed in
commit a56005d32105 ("arm64: cpufeature: Reduce number of pointer auth
CPU caps from 6 to 4") and commit 1e013d06120c ("arm64: cpufeature: Rework
ptr auth hwcaps using multi_entry_cap_matches"), as they were not needed
then. Note, unlike before, the current patch checks the cpucap values
directly, instead of reading the CPU ID register value.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
[Amit: commit message and macro rebase]
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
Changes since last version:
* Macro number.

 arch/arm64/include/asm/cpucaps.h    |  4 +++-
 arch/arm64/include/asm/cpufeature.h |  6 ++----
 arch/arm64/kernel/cpufeature.c      | 25 ++++++++++++++++++++++++-
 3 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index ac1dbca..944c596 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -54,7 +54,9 @@
 #define ARM64_WORKAROUND_1463225		44
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_TVM	45
 #define ARM64_WORKAROUND_CAVIUM_TX2_219_PRFM	46
+#define ARM64_HAS_ADDRESS_AUTH			47
+#define ARM64_HAS_GENERIC_AUTH			48
 
-#define ARM64_NCAPS				47
+#define ARM64_NCAPS				49
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 9cde5d2..670497d 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -590,15 +590,13 @@ static inline bool system_supports_cnp(void)
 static inline bool system_supports_address_auth(void)
 {
 	return IS_ENABLED(CONFIG_ARM64_PTR_AUTH) &&
-		(cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
-		 cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF));
+		cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH);
 }
 
 static inline bool system_supports_generic_auth(void)
 {
 	return IS_ENABLED(CONFIG_ARM64_PTR_AUTH) &&
-		(cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
-		 cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF));
+		cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH);
 }
 
 static inline bool system_uses_irq_prio_masking(void)
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 80f459a..b6af43f 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1248,6 +1248,20 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
 	sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_ENIA | SCTLR_ELx_ENIB |
 				       SCTLR_ELx_ENDA | SCTLR_ELx_ENDB);
 }
+
+static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
+			     int __unused)
+{
+	return cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
+	       cpus_have_const_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
+}
+
+static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
+			     int __unused)
+{
+	return cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_ARCH) ||
+	       cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH_IMP_DEF);
+}
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
 #ifdef CONFIG_ARM64_PSEUDO_NMI
@@ -1517,7 +1531,6 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
 		.min_field_value = ID_AA64ISAR1_APA_ARCHITECTED,
 		.matches = has_cpuid_feature,
-		.cpu_enable = cpu_enable_address_auth,
 	},
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
@@ -1528,6 +1541,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.field_pos = ID_AA64ISAR1_API_SHIFT,
 		.min_field_value = ID_AA64ISAR1_API_IMP_DEF,
 		.matches = has_cpuid_feature,
+	},
+	{
+		.capability = ARM64_HAS_ADDRESS_AUTH,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_address_auth,
 		.cpu_enable = cpu_enable_address_auth,
 	},
 	{
@@ -1550,6 +1568,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.min_field_value = ID_AA64ISAR1_GPI_IMP_DEF,
 		.matches = has_cpuid_feature,
 	},
+	{
+		.capability = ARM64_HAS_GENERIC_AUTH,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
+		.matches = has_generic_auth,
+	},
 #endif /* CONFIG_ARM64_PTR_AUTH */
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 	{
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
