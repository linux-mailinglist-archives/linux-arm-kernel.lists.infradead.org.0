Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D569C6665C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:35:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zioTzFuow0JffHEzi4qO/xPusBaXvSuCP6GRf5fGTgs=; b=fWLWjHrzPuPIO9
	h8iTZg34dKC+0toPs8qSRYDtzSrrFLtO0gkn8AJFsnf0psltsGQ/MOQRPg7r3sQ5Ir1DU8aB8eaue
	GjpPxVz7cEanqgqJuQv/q3wxITi97g2JM3F+jLTGRZNh4IGlK4pP7CiSHgf24vtd6EYkSlXk0qaak
	ciVnQ0+Oor2Ch3AbBi5F6xYeceVWA8oSsTYf9GYyicNlnOsoiec7AF0T66AGE+myP7mv3pCdZz35g
	NXLiHZ77t2t7SW9v7NrBVx8IXUKDoaDrUYvR2qkjc5oCS2rKhjjTmN7pwIu/cfN0ri3vcIwg3Z/Q+
	JjGlg1sqTsdTVHtNzxYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloD9-00053s-MV; Fri, 12 Jul 2019 05:35:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7i-0000fE-KV
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:36 +0000
Received: by mail-pl1-x644.google.com with SMTP id ay6so4196037plb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+8jS5wU9g41nb7lUYf6O/ux0jWphtxOIXXxsA7/oFkw=;
 b=KNfBp1g7S4eqR+RS92e7dLDP25RNS8lVmmr0lVF3A3MVIeuCHTEWx2dZYm3JSYgeOS
 +Jr6R2CWWlQU0MVR1YYad4On7zYD/qlaFG1j3LNdyrNLYoCKK6VE62z6/fzOI36xKcjK
 Eh6LTNogo1BK2DDZlAiBpgCYKHRxUwsZUsYhLO4jQmFkSPzUR5d8LG5ttCHhlC2U1kLZ
 j/7zXQgjvO/M701xXz0CZCTX1fBr3EGW+8PVZvc61QCjcElZY/tsei+BpoS1fk9EYCL6
 UaVK+UFMou7Ej7D0NRLSAc8uHuHklSOAVHd02USXT1BBXe/kcxrJfHPeco+/wjGEx4Vc
 hkrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+8jS5wU9g41nb7lUYf6O/ux0jWphtxOIXXxsA7/oFkw=;
 b=R76f8Z1Yu25Ps1S6NmMCvBARbvA5X5I4sXVCh3bgI/ZxVd++kouC1nhNNXth+MxDxo
 6eF8urf+qevycaWy/ad1aA8qiBayLb6/bbkR/byTsz/30Iw6Tdcjn58o0+zYihNuLVqG
 EASGqSVmaOXL8Fjh5qTd34MaE0QEKittYcMPukmnKXLem53/AFC93EyjhxNESaqeMQru
 RDH162toRL+XGhklQcpHMBqQmBndwfcblI42HnQ3n3JDtszcbNSVpA+zvHjbPeEUgoyG
 LTA2hAtAB91/TPFHhEf83vLYqGWOJbEiuT9BpZCifDa9IVcXdsORLDIzqqXAGSXRKF0N
 oPOg==
X-Gm-Message-State: APjAAAUx9Kc8+U0hXORgO/mhtoqgBEb/P+jVn1c7CMHK7OkBkWEP7qh+
 SlpZ+26c9NdVsECr89h/b+dBXA==
X-Google-Smtp-Source: APXvYqwN7P7LFY34Lvch9qKU7Vc/mvHKJjQVUP2TIoZXkTwZiwbcMMpMpehj352dzrW1/WJzuMM5mA==
X-Received: by 2002:a17:902:ff05:: with SMTP id
 f5mr8894647plj.116.1562909373996; 
 Thu, 11 Jul 2019 22:29:33 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id 33sm13035023pgy.22.2019.07.11.22.29.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:33 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 13/43] arm64: cpufeature: Add scope for capability
 check
Date: Fri, 12 Jul 2019 10:58:01 +0530
Message-Id: <6fbec5c89811c069dcfaaaf55ad708c5f0922020.1562908075.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222934_740812_A3AF0B00 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

commit 92406f0cc9e3d5cc77bf3de6d68c9c2373dcd701 upstream.

Add scope parameter to the arm64_cpu_capabilities::matches(), so that
this can be reused for checking the capability on a given CPU vs the
system wide. The system uses the default scope associated with the
capability for initialising the CPU_HWCAPs and ELF_HWCAPs.

Cc: James Morse <james.morse@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
[ v4.4: Changes made according to 4.4 codebase ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/cpufeature.h |   9 ++-
 arch/arm64/kernel/cpu_errata.c      |   5 +-
 arch/arm64/kernel/cpufeature.c      | 105 +++++++++++++++-------------
 3 files changed, 70 insertions(+), 49 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index ad83c245781c..4c31e14c0f0e 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -74,10 +74,17 @@ struct arm64_ftr_reg {
 	struct arm64_ftr_bits	*ftr_bits;
 };
 
+/* scope of capability check */
+enum {
+	SCOPE_SYSTEM,
+	SCOPE_LOCAL_CPU,
+};
+
 struct arm64_cpu_capabilities {
 	const char *desc;
 	u16 capability;
-	bool (*matches)(const struct arm64_cpu_capabilities *);
+	int def_scope;			/* default scope */
+	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
 	int (*enable)(void *);		/* Called on all active CPUs */
 	union {
 		struct {	/* To be used for erratum handling only */
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index a3e846a28b05..0971d80d3623 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -29,10 +29,12 @@
 			MIDR_ARCHITECTURE_MASK)
 
 static bool __maybe_unused
-is_affected_midr_range(const struct arm64_cpu_capabilities *entry)
+is_affected_midr_range(const struct arm64_cpu_capabilities *entry, int scope)
 {
 	u32 midr = read_cpuid_id();
 
+	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
+
 	if ((midr & CPU_MODEL_MASK) != entry->midr_model)
 		return false;
 
@@ -42,6 +44,7 @@ is_affected_midr_range(const struct arm64_cpu_capabilities *entry)
 }
 
 #define MIDR_RANGE(model, min, max) \
+	.def_scope = SCOPE_LOCAL_CPU, \
 	.matches = is_affected_midr_range, \
 	.midr_model = model, \
 	.midr_range_min = min, \
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index bdb4cd9ffccf..d0c82bc02de4 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -589,6 +589,48 @@ u64 read_system_reg(u32 id)
 	return regp->sys_val;
 }
 
+/*
+ * __raw_read_system_reg() - Used by a STARTING cpu before cpuinfo is populated.
+ * Read the system register on the current CPU
+ */
+static u64 __raw_read_system_reg(u32 sys_id)
+{
+	switch (sys_id) {
+	case SYS_ID_PFR0_EL1:		return (u64)read_cpuid(ID_PFR0_EL1);
+	case SYS_ID_PFR1_EL1:		return (u64)read_cpuid(ID_PFR1_EL1);
+	case SYS_ID_DFR0_EL1:		return (u64)read_cpuid(ID_DFR0_EL1);
+	case SYS_ID_MMFR0_EL1:		return (u64)read_cpuid(ID_MMFR0_EL1);
+	case SYS_ID_MMFR1_EL1:		return (u64)read_cpuid(ID_MMFR1_EL1);
+	case SYS_ID_MMFR2_EL1:		return (u64)read_cpuid(ID_MMFR2_EL1);
+	case SYS_ID_MMFR3_EL1:		return (u64)read_cpuid(ID_MMFR3_EL1);
+	case SYS_ID_ISAR0_EL1:		return (u64)read_cpuid(ID_ISAR0_EL1);
+	case SYS_ID_ISAR1_EL1:		return (u64)read_cpuid(ID_ISAR1_EL1);
+	case SYS_ID_ISAR2_EL1:		return (u64)read_cpuid(ID_ISAR2_EL1);
+	case SYS_ID_ISAR3_EL1:		return (u64)read_cpuid(ID_ISAR3_EL1);
+	case SYS_ID_ISAR4_EL1:		return (u64)read_cpuid(ID_ISAR4_EL1);
+	case SYS_ID_ISAR5_EL1:		return (u64)read_cpuid(ID_ISAR4_EL1);
+	case SYS_MVFR0_EL1:		return (u64)read_cpuid(MVFR0_EL1);
+	case SYS_MVFR1_EL1:		return (u64)read_cpuid(MVFR1_EL1);
+	case SYS_MVFR2_EL1:		return (u64)read_cpuid(MVFR2_EL1);
+
+	case SYS_ID_AA64PFR0_EL1:	return (u64)read_cpuid(ID_AA64PFR0_EL1);
+	case SYS_ID_AA64PFR1_EL1:	return (u64)read_cpuid(ID_AA64PFR0_EL1);
+	case SYS_ID_AA64DFR0_EL1:	return (u64)read_cpuid(ID_AA64DFR0_EL1);
+	case SYS_ID_AA64DFR1_EL1:	return (u64)read_cpuid(ID_AA64DFR0_EL1);
+	case SYS_ID_AA64MMFR0_EL1:	return (u64)read_cpuid(ID_AA64MMFR0_EL1);
+	case SYS_ID_AA64MMFR1_EL1:	return (u64)read_cpuid(ID_AA64MMFR1_EL1);
+	case SYS_ID_AA64ISAR0_EL1:	return (u64)read_cpuid(ID_AA64ISAR0_EL1);
+	case SYS_ID_AA64ISAR1_EL1:	return (u64)read_cpuid(ID_AA64ISAR1_EL1);
+
+	case SYS_CNTFRQ_EL0:		return (u64)read_cpuid(CNTFRQ_EL0);
+	case SYS_CTR_EL0:		return (u64)read_cpuid(CTR_EL0);
+	case SYS_DCZID_EL0:		return (u64)read_cpuid(DCZID_EL0);
+	default:
+		BUG();
+		return 0;
+	}
+}
+
 #include <linux/irqchip/arm-gic-v3.h>
 
 static bool
@@ -600,19 +642,24 @@ feature_matches(u64 reg, const struct arm64_cpu_capabilities *entry)
 }
 
 static bool
-has_cpuid_feature(const struct arm64_cpu_capabilities *entry)
+has_cpuid_feature(const struct arm64_cpu_capabilities *entry, int scope)
 {
 	u64 val;
 
-	val = read_system_reg(entry->sys_reg);
+	WARN_ON(scope == SCOPE_LOCAL_CPU && preemptible());
+	if (scope == SCOPE_SYSTEM)
+		val = read_system_reg(entry->sys_reg);
+	else
+		val = __raw_read_system_reg(entry->sys_reg);
+
 	return feature_matches(val, entry);
 }
 
-static bool has_useable_gicv3_cpuif(const struct arm64_cpu_capabilities *entry)
+static bool has_useable_gicv3_cpuif(const struct arm64_cpu_capabilities *entry, int scope)
 {
 	bool has_sre;
 
-	if (!has_cpuid_feature(entry))
+	if (!has_cpuid_feature(entry, scope))
 		return false;
 
 	has_sre = gic_enable_sre();
@@ -627,6 +674,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "GIC system register CPU interface",
 		.capability = ARM64_HAS_SYSREG_GIC_CPUIF,
+		.def_scope = SCOPE_SYSTEM,
 		.matches = has_useable_gicv3_cpuif,
 		.sys_reg = SYS_ID_AA64PFR0_EL1,
 		.field_pos = ID_AA64PFR0_GIC_SHIFT,
@@ -636,6 +684,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "Privileged Access Never",
 		.capability = ARM64_HAS_PAN,
+		.def_scope = SCOPE_SYSTEM,
 		.matches = has_cpuid_feature,
 		.sys_reg = SYS_ID_AA64MMFR1_EL1,
 		.field_pos = ID_AA64MMFR1_PAN_SHIFT,
@@ -647,6 +696,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "LSE atomic instructions",
 		.capability = ARM64_HAS_LSE_ATOMICS,
+		.def_scope = SCOPE_SYSTEM,
 		.matches = has_cpuid_feature,
 		.sys_reg = SYS_ID_AA64ISAR0_EL1,
 		.field_pos = ID_AA64ISAR0_ATOMICS_SHIFT,
@@ -656,6 +706,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 	{
 		.desc = "32-bit EL0 Support",
 		.capability = ARM64_HAS_32BIT_EL0,
+		.def_scope = SCOPE_SYSTEM,
 		.matches = has_cpuid_feature,
 		.sys_reg = SYS_ID_AA64PFR0_EL1,
 		.field_pos = ID_AA64PFR0_EL0_SHIFT,
@@ -667,6 +718,7 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 #define HWCAP_CAP(reg, field, min_value, type, cap)		\
 	{							\
 		.desc = #cap,					\
+		.def_scope = SCOPE_SYSTEM,			\
 		.matches = has_cpuid_feature,			\
 		.sys_reg = reg,					\
 		.field_pos = field,				\
@@ -745,7 +797,7 @@ static void setup_cpu_hwcaps(void)
 	const struct arm64_cpu_capabilities *hwcaps = arm64_hwcaps;
 
 	for (i = 0; hwcaps[i].matches; i++)
-		if (hwcaps[i].matches(&hwcaps[i]))
+		if (hwcaps[i].matches(&hwcaps[i], hwcaps[i].def_scope))
 			cap_set_hwcap(&hwcaps[i]);
 }
 
@@ -755,7 +807,7 @@ void update_cpu_capabilities(const struct arm64_cpu_capabilities *caps,
 	int i;
 
 	for (i = 0; caps[i].matches; i++) {
-		if (!caps[i].matches(&caps[i]))
+		if (!caps[i].matches(&caps[i], caps[i].def_scope))
 			continue;
 
 		if (!cpus_have_cap(caps[i].capability) && caps[i].desc)
@@ -800,47 +852,6 @@ static inline void set_sys_caps_initialised(void)
 	sys_caps_initialised = true;
 }
 
-/*
- * __raw_read_system_reg() - Used by a STARTING cpu before cpuinfo is populated.
- */
-static u64 __raw_read_system_reg(u32 sys_id)
-{
-	switch (sys_id) {
-	case SYS_ID_PFR0_EL1:		return (u64)read_cpuid(ID_PFR0_EL1);
-	case SYS_ID_PFR1_EL1:		return (u64)read_cpuid(ID_PFR1_EL1);
-	case SYS_ID_DFR0_EL1:		return (u64)read_cpuid(ID_DFR0_EL1);
-	case SYS_ID_MMFR0_EL1:		return (u64)read_cpuid(ID_MMFR0_EL1);
-	case SYS_ID_MMFR1_EL1:		return (u64)read_cpuid(ID_MMFR1_EL1);
-	case SYS_ID_MMFR2_EL1:		return (u64)read_cpuid(ID_MMFR2_EL1);
-	case SYS_ID_MMFR3_EL1:		return (u64)read_cpuid(ID_MMFR3_EL1);
-	case SYS_ID_ISAR0_EL1:		return (u64)read_cpuid(ID_ISAR0_EL1);
-	case SYS_ID_ISAR1_EL1:		return (u64)read_cpuid(ID_ISAR1_EL1);
-	case SYS_ID_ISAR2_EL1:		return (u64)read_cpuid(ID_ISAR2_EL1);
-	case SYS_ID_ISAR3_EL1:		return (u64)read_cpuid(ID_ISAR3_EL1);
-	case SYS_ID_ISAR4_EL1:		return (u64)read_cpuid(ID_ISAR4_EL1);
-	case SYS_ID_ISAR5_EL1:		return (u64)read_cpuid(ID_ISAR4_EL1);
-	case SYS_MVFR0_EL1:		return (u64)read_cpuid(MVFR0_EL1);
-	case SYS_MVFR1_EL1:		return (u64)read_cpuid(MVFR1_EL1);
-	case SYS_MVFR2_EL1:		return (u64)read_cpuid(MVFR2_EL1);
-
-	case SYS_ID_AA64PFR0_EL1:	return (u64)read_cpuid(ID_AA64PFR0_EL1);
-	case SYS_ID_AA64PFR1_EL1:	return (u64)read_cpuid(ID_AA64PFR0_EL1);
-	case SYS_ID_AA64DFR0_EL1:	return (u64)read_cpuid(ID_AA64DFR0_EL1);
-	case SYS_ID_AA64DFR1_EL1:	return (u64)read_cpuid(ID_AA64DFR0_EL1);
-	case SYS_ID_AA64MMFR0_EL1:	return (u64)read_cpuid(ID_AA64MMFR0_EL1);
-	case SYS_ID_AA64MMFR1_EL1:	return (u64)read_cpuid(ID_AA64MMFR1_EL1);
-	case SYS_ID_AA64ISAR0_EL1:	return (u64)read_cpuid(ID_AA64ISAR0_EL1);
-	case SYS_ID_AA64ISAR1_EL1:	return (u64)read_cpuid(ID_AA64ISAR1_EL1);
-
-	case SYS_CNTFRQ_EL0:		return (u64)read_cpuid(CNTFRQ_EL0);
-	case SYS_CTR_EL0:		return (u64)read_cpuid(CTR_EL0);
-	case SYS_DCZID_EL0:		return (u64)read_cpuid(DCZID_EL0);
-	default:
-		BUG();
-		return 0;
-	}
-}
-
 /*
  * Park the CPU which doesn't have the capability as advertised
  * by the system.
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
