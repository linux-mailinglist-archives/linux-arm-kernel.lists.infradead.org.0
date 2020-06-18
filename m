Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE3A1FEAAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 07:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AJTNKr3Vh4ZkmL/8iP8MmtZMCG0JyHG3aliVWz8EYgs=; b=WPh3BpBBMSq4Capt8Bb3cemjYl
	6edh9RU/bjwbLzDDRbT4PyF0LJD8ZmGUTTrnA645bhIxLpUT7XgGkqyBxJpGMFeBkrrvgLMHJkXPF
	y6zIXX5+xSezfb/WOOb1u4WwDk7lnRhO3k9EEiwlGlOdjRnou5auWr+hLZZTWp8txr97WQG0gBAMh
	3bjbwKFNH/Q73g17g4Fo1jIcYvSw5LvZNzykJA6yG74zWPZhRg/iZk4PCQiJWaXYUslE15MT4KlTm
	rOqdXsinwkKp0TFCookWuwVAEBrsA5TN5jWrn75wsQs3Z5Ldc6knoRs5u7F0gLMEluAdCkqaiUtro
	qhJgM+/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlmpk-0000qB-CJ; Thu, 18 Jun 2020 05:11:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlmp8-0000TP-Ms
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 05:10:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E883B31B;
 Wed, 17 Jun 2020 22:10:49 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (a075553-lin.blr.arm.com [10.162.17.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A23433F71F;
 Wed, 17 Jun 2020 22:10:46 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/3] arm64: cpufeature: Modify address authentication
 cpufeature to exact
Date: Thu, 18 Jun 2020 10:40:28 +0530
Message-Id: <1592457029-18547-3-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
References: <1592457029-18547-1-git-send-email-amit.kachhap@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_221050_857050_6916BAE4 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch modifies the address authentication cpufeature type to EXACT
from earlier LOWER_SAFE as the different configurations added for Armv8.6
enhanced PAC have different behaviour and there is no tunable to enable the
lower safe versions.

The current cpufeature framework does not interfere in the booting of
non-exact secondary cpus but rather marks them as tainted. This patch fixes
it by replacing the generic match handler with a new handler specific to
ptrauth.

After this change, if there is any variation in ptrauth configurations in
secondary cpus from boot cpu then those mismatched cpus are parked in an
infinite loop.

Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
[Suzuki: Introduce new matching function for address authentication]
Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
Change since v2:
 * Added new matching helper function has_address_auth_cpucap as address
   authentication cpufeature is now FTR_EXACT. The existing matching function
   has_cpuid_feature is specific to LOWER_SAFE.

 arch/arm64/kernel/cpufeature.c | 56 ++++++++++++++++++++++++++++------
 1 file changed, 47 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 4ae41670c2e6..42670d615555 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -210,9 +210,9 @@ static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FCMA_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_JSCVT_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
-		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_API_SHIFT, 4, 0),
+		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_API_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
-		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_APA_SHIFT, 4, 0),
+		       FTR_STRICT, FTR_EXACT, ID_AA64ISAR1_APA_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DPB_SHIFT, 4, 0),
 	ARM64_FTR_END,
 };
@@ -1601,11 +1601,49 @@ static void cpu_clear_disr(const struct arm64_cpu_capabilities *__unused)
 #endif /* CONFIG_ARM64_RAS_EXTN */
 
 #ifdef CONFIG_ARM64_PTR_AUTH
-static bool has_address_auth(const struct arm64_cpu_capabilities *entry,
-			     int __unused)
+static bool has_address_auth_cpucap(const struct arm64_cpu_capabilities *entry, int scope)
 {
-	return __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_ARCH) ||
-	       __system_matches_cap(ARM64_HAS_ADDRESS_AUTH_IMP_DEF);
+	int local_cpu_auth;
+	static int boot_cpu_auth_arch;
+	static int boot_cpu_auth_imp_def;
+
+	/* We don't expect to be called with SCOPE_SYSTEM */
+	WARN_ON(scope == SCOPE_SYSTEM);
+
+	local_cpu_auth = cpuid_feature_extract_field(__read_sysreg_by_encoding(entry->sys_reg),
+						     entry->field_pos, entry->sign);
+	/*
+	 * The ptr-auth feature levels are not intercompatible with
+	 * lower levels. Hence we must match all the CPUs with that
+	 * of the boot CPU. So cache the level of boot CPU and compare
+	 * it against the secondary CPUs.
+	 */
+	if (scope & SCOPE_BOOT_CPU) {
+		if (entry->capability == ARM64_HAS_ADDRESS_AUTH_IMP_DEF) {
+			boot_cpu_auth_imp_def = local_cpu_auth;
+			return boot_cpu_auth_imp_def >= entry->min_field_value;
+		} else if (entry->capability == ARM64_HAS_ADDRESS_AUTH_ARCH) {
+			boot_cpu_auth_arch = local_cpu_auth;
+			return boot_cpu_auth_arch >= entry->min_field_value;
+		}
+	} else if (scope & SCOPE_LOCAL_CPU) {
+		if (entry->capability == ARM64_HAS_ADDRESS_AUTH_IMP_DEF) {
+			return (local_cpu_auth >= entry->min_field_value) &&
+			       (local_cpu_auth == boot_cpu_auth_imp_def);
+		}
+		if (entry->capability == ARM64_HAS_ADDRESS_AUTH_ARCH) {
+			return (local_cpu_auth >= entry->min_field_value) &&
+			       (local_cpu_auth == boot_cpu_auth_arch);
+		}
+	}
+	return false;
+}
+
+static bool has_address_auth_metacap(const struct arm64_cpu_capabilities *entry,
+			     int scope)
+{
+	return has_address_auth_cpucap(cpu_hwcaps_ptrs[ARM64_HAS_ADDRESS_AUTH_ARCH], scope) ||
+	       has_address_auth_cpucap(cpu_hwcaps_ptrs[ARM64_HAS_ADDRESS_AUTH_IMP_DEF], scope);
 }
 
 static bool has_generic_auth(const struct arm64_cpu_capabilities *entry,
@@ -1954,7 +1992,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
 		.min_field_value = ID_AA64ISAR1_APA_ARCHITECTED,
-		.matches = has_cpuid_feature,
+		.matches = has_address_auth_cpucap,
 	},
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
@@ -1964,12 +2002,12 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.field_pos = ID_AA64ISAR1_API_SHIFT,
 		.min_field_value = ID_AA64ISAR1_API_IMP_DEF,
-		.matches = has_cpuid_feature,
+		.matches = has_address_auth_cpucap,
 	},
 	{
 		.capability = ARM64_HAS_ADDRESS_AUTH,
 		.type = ARM64_CPUCAP_BOOT_CPU_FEATURE,
-		.matches = has_address_auth,
+		.matches = has_address_auth_metacap,
 	},
 	{
 		.desc = "Generic authentication (architected algorithm)",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
