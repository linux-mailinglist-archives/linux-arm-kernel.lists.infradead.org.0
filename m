Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A5BCFDF6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 17:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WqYVG7+oRFuKQom8hz87dB7EsTfkCrGpTNAG293ZRkE=; b=ie/4tHntzHWAJd
	JpeW5CT5JR3gJX68xXWyvD5NjIUT6Hw7dMnUe0uvukA0ZhhFShwPXf6DOy/vWyFQjAAxjFj9Asvbl
	U1R83SP/qEg8g5B9R012ea33xTyDsr6dXv+HmKYDyS8H01aTns5FnY/CrHJXfn13t7wnMejxl4fHY
	0JRk7RgZWRuScq3fRbpHlpeKBTS2Ra4xbat9fBgrsbPt6CG62rSjHFqaEMrv2HTHe+4zypRFoiQxH
	NeEhXMgO/NqbL0sDEv9c2sTIlbVFQizR5BMOnVgRkE7FUJ/RwoyCuDuRtudzfWDaV0jpWlnnu2wrQ
	oCxlN5S0udyVnOENLdnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHreQ-0001On-Me; Tue, 08 Oct 2019 15:43:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHrb7-000703-EB
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 15:40:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id h4so11246291wrv.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 08:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XTafCg6zUIIurbOW7vaJn/pn9iFWviVt4VHpbP6m92o=;
 b=HBOSUmC+Uh1sKlxj2qHRBPEkwt9Li+urF+V2wAYgjbeF71B15tqDl1t7XFVLRRDjDq
 7WHPHvli8WaQpgfD0J8abnPpv1jdI04FA7UCB+iLaMQhqlwPyGOFxjdZTK8Ipvi33KOW
 civEL4anHTjkF6ndDAcWVChWHs7LulH6vQnGGRTsQRuXy6JBPDoMqhwqxjloUPtwNczi
 dFXiOGzd32FMFU3/y22nqsUW1UEV04tz11L9/j++c/JIwWc+MU0B0HG5YLTNM0GCENKk
 Y0GTSKR4Rl0xA0m3xFyMI9ueQ/t0/RhhhkcBnGMvu2SBps/sauPaPJBJVa56woz7SoiS
 vEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XTafCg6zUIIurbOW7vaJn/pn9iFWviVt4VHpbP6m92o=;
 b=JiO+ExB9ZT9H++WkG1SJsaBUk1/eDfRmYicBIOT80entR9VW1tonI3jKhmn/J3cAHN
 fGlqoE7jBlI/m8s0hlYUgESe8lHB0v68eSeBGrV8eS8bjFhEji7dd2aRYSA4iCs5u8KQ
 rT3UeSKvHTP/Qn7ZEfSpYFSpuab4BI2uYBxl2rpNpxhe+/+ZvKsbGadz0MG2Yp2cdOhf
 4EXU6KCDiEWB838XGAenpQPV80PDovWfpw9PwH4x4zYdinaS5RlcC6mCaacb4VEGcd0Y
 OXbPmtvwfzWDhdU3ep7toYMiDjEH5en89tpZgI1hWxq576MC6AcUEjCEm6qR0otuJ98L
 tVRA==
X-Gm-Message-State: APjAAAUEf1X43NASLUgqFNXUJBl3ENZr7mAMoR6O3b8NmVMzWJ8yWuw7
 KqtUBrixbZ8OlW0C69/q31H6maNPEWTUWA==
X-Google-Smtp-Source: APXvYqz/yoeDCA+D3L/Ajrlf7YmVBXbvN/LoMcPDs1ue/NIjtpvV4PCuv9j7lTCsF5378HVv6IWIkQ==
X-Received: by 2002:adf:fcc9:: with SMTP id f9mr29766929wrs.382.1570549223635; 
 Tue, 08 Oct 2019 08:40:23 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id x16sm16784723wrl.32.2019.10.08.08.40.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 08:40:22 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH for-stable-v4.19 11/16] arm64: Advertise mitigation of
 Spectre-v2, or lack thereof
Date: Tue,  8 Oct 2019 17:39:25 +0200
Message-Id: <20191008153930.15386-12-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
References: <20191008153930.15386-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_084025_559525_1C546335 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Jeremy Linton <jeremy.linton@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Marc Zyngier <marc.zyngier@arm.com>

[ Upstream commit 73f38166095947f3b86b02fbed6bd592223a7ac8 ]

We currently have a list of CPUs affected by Spectre-v2, for which
we check that the firmware implements ARCH_WORKAROUND_1. It turns
out that not all firmwares do implement the required mitigation,
and that we fail to let the user know about it.

Instead, let's slightly revamp our checks, and rely on a whitelist
of cores that are known to be non-vulnerable, and let the user know
the status of the mitigation in the kernel log.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm64/kernel/cpu_errata.c | 109 ++++++++++----------
 1 file changed, 56 insertions(+), 53 deletions(-)

diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index 2394a105ebf4..ffb1b8ff7d82 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -109,9 +109,9 @@ static void __copy_hyp_vect_bpi(int slot, const char *hyp_vecs_start,
 	__flush_icache_range((uintptr_t)dst, (uintptr_t)dst + SZ_2K);
 }
 
-static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
-				      const char *hyp_vecs_start,
-				      const char *hyp_vecs_end)
+static void install_bp_hardening_cb(bp_hardening_cb_t fn,
+				    const char *hyp_vecs_start,
+				    const char *hyp_vecs_end)
 {
 	static DEFINE_SPINLOCK(bp_lock);
 	int cpu, slot = -1;
@@ -138,7 +138,7 @@ static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
 #define __smccc_workaround_1_smc_start		NULL
 #define __smccc_workaround_1_smc_end		NULL
 
-static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
+static void install_bp_hardening_cb(bp_hardening_cb_t fn,
 				      const char *hyp_vecs_start,
 				      const char *hyp_vecs_end)
 {
@@ -146,23 +146,6 @@ static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
 }
 #endif	/* CONFIG_KVM_INDIRECT_VECTORS */
 
-static void  install_bp_hardening_cb(const struct arm64_cpu_capabilities *entry,
-				     bp_hardening_cb_t fn,
-				     const char *hyp_vecs_start,
-				     const char *hyp_vecs_end)
-{
-	u64 pfr0;
-
-	if (!entry->matches(entry, SCOPE_LOCAL_CPU))
-		return;
-
-	pfr0 = read_cpuid(ID_AA64PFR0_EL1);
-	if (cpuid_feature_extract_unsigned_field(pfr0, ID_AA64PFR0_CSV2_SHIFT))
-		return;
-
-	__install_bp_hardening_cb(fn, hyp_vecs_start, hyp_vecs_end);
-}
-
 #include <uapi/linux/psci.h>
 #include <linux/arm-smccc.h>
 #include <linux/psci.h>
@@ -197,31 +180,27 @@ static int __init parse_nospectre_v2(char *str)
 }
 early_param("nospectre_v2", parse_nospectre_v2);
 
-static void
-enable_smccc_arch_workaround_1(const struct arm64_cpu_capabilities *entry)
+/*
+ * -1: No workaround
+ *  0: No workaround required
+ *  1: Workaround installed
+ */
+static int detect_harden_bp_fw(void)
 {
 	bp_hardening_cb_t cb;
 	void *smccc_start, *smccc_end;
 	struct arm_smccc_res res;
 	u32 midr = read_cpuid_id();
 
-	if (!entry->matches(entry, SCOPE_LOCAL_CPU))
-		return;
-
-	if (__nospectre_v2) {
-		pr_info_once("spectrev2 mitigation disabled by command line option\n");
-		return;
-	}
-
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0)
-		return;
+		return -1;
 
 	switch (psci_ops.conduit) {
 	case PSCI_CONDUIT_HVC:
 		arm_smccc_1_1_hvc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 		if ((int)res.a0 < 0)
-			return;
+			return -1;
 		cb = call_hvc_arch_workaround_1;
 		/* This is a guest, no need to patch KVM vectors */
 		smccc_start = NULL;
@@ -232,23 +211,23 @@ enable_smccc_arch_workaround_1(const struct arm64_cpu_capabilities *entry)
 		arm_smccc_1_1_smc(ARM_SMCCC_ARCH_FEATURES_FUNC_ID,
 				  ARM_SMCCC_ARCH_WORKAROUND_1, &res);
 		if ((int)res.a0 < 0)
-			return;
+			return -1;
 		cb = call_smc_arch_workaround_1;
 		smccc_start = __smccc_workaround_1_smc_start;
 		smccc_end = __smccc_workaround_1_smc_end;
 		break;
 
 	default:
-		return;
+		return -1;
 	}
 
 	if (((midr & MIDR_CPU_MODEL_MASK) == MIDR_QCOM_FALKOR) ||
 	    ((midr & MIDR_CPU_MODEL_MASK) == MIDR_QCOM_FALKOR_V1))
 		cb = qcom_link_stack_sanitization;
 
-	install_bp_hardening_cb(entry, cb, smccc_start, smccc_end);
+	install_bp_hardening_cb(cb, smccc_start, smccc_end);
 
-	return;
+	return 1;
 }
 #endif	/* CONFIG_HARDEN_BRANCH_PREDICTOR */
 
@@ -535,24 +514,48 @@ multi_entry_cap_cpu_enable(const struct arm64_cpu_capabilities *entry)
 }
 
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
-
 /*
- * List of CPUs where we need to issue a psci call to
- * harden the branch predictor.
+ * List of CPUs that do not need any Spectre-v2 mitigation at all.
  */
-static const struct midr_range arm64_bp_harden_smccc_cpus[] = {
-	MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
-	MIDR_ALL_VERSIONS(MIDR_CORTEX_A72),
-	MIDR_ALL_VERSIONS(MIDR_CORTEX_A73),
-	MIDR_ALL_VERSIONS(MIDR_CORTEX_A75),
-	MIDR_ALL_VERSIONS(MIDR_BRCM_VULCAN),
-	MIDR_ALL_VERSIONS(MIDR_CAVIUM_THUNDERX2),
-	MIDR_ALL_VERSIONS(MIDR_QCOM_FALKOR_V1),
-	MIDR_ALL_VERSIONS(MIDR_QCOM_FALKOR),
-	MIDR_ALL_VERSIONS(MIDR_NVIDIA_DENVER),
-	{},
+static const struct midr_range spectre_v2_safe_list[] = {
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A35),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A53),
+	MIDR_ALL_VERSIONS(MIDR_CORTEX_A55),
+	{ /* sentinel */ }
 };
 
+static bool __maybe_unused
+check_branch_predictor(const struct arm64_cpu_capabilities *entry, int scope)
+{
+	int need_wa;
+
+	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
+
+	/* If the CPU has CSV2 set, we're safe */
+	if (cpuid_feature_extract_unsigned_field(read_cpuid(ID_AA64PFR0_EL1),
+						 ID_AA64PFR0_CSV2_SHIFT))
+		return false;
+
+	/* Alternatively, we have a list of unaffected CPUs */
+	if (is_midr_in_range_list(read_cpuid_id(), spectre_v2_safe_list))
+		return false;
+
+	/* Fallback to firmware detection */
+	need_wa = detect_harden_bp_fw();
+	if (!need_wa)
+		return false;
+
+	/* forced off */
+	if (__nospectre_v2) {
+		pr_info_once("spectrev2 mitigation disabled by command line option\n");
+		return false;
+	}
+
+	if (need_wa < 0)
+		pr_warn_once("ARM_SMCCC_ARCH_WORKAROUND_1 missing from firmware\n");
+
+	return (need_wa > 0);
+}
 #endif
 
 #ifdef CONFIG_HARDEN_EL2_VECTORS
@@ -715,8 +718,8 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
 	{
 		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
-		.cpu_enable = enable_smccc_arch_workaround_1,
-		ERRATA_MIDR_RANGE_LIST(arm64_bp_harden_smccc_cpus),
+		.type = ARM64_CPUCAP_LOCAL_CPU_ERRATUM,
+		.matches = check_branch_predictor,
 	},
 #endif
 #ifdef CONFIG_HARDEN_EL2_VECTORS
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
