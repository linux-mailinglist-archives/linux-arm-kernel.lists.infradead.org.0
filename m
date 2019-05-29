Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1382E4F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 21:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0f03sdiXuXcprr6JKngFfGmhDh//tJ8Wt2vA8orxUm4=; b=Aq4rWQ2QuhkwUSKOj0xeH/Kav8
	P1bbbX3vrt9WUVYWsyTLocQdVArD65QBQVWbyDnmsEAj12tr7V9jJeEczCuL5VjCIny86KuBmvBeL
	yrVknV1IKA1fK+2K4YdnRdyt0XBqrTihjqMtJ+vS4qFierubotB55gsgrUJfWlrxlVCEil+b+uTbR
	iA0tUd22T0DNgj7zPNH00SyLIXXVfm7/k3rQC5cRQQjNP+URfmVDlos2W5/cllC7yrpdPXPvrEqDx
	1VYiThigIB2CUOL3cvrCoaU+zWC9LulXHZymACipSel8HrBTbjqxA+lzgr27KkYguB/kU7QNBmQz4
	LYQ3QX0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3sr-0007mV-10; Wed, 29 May 2019 19:05:09 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3sT-0007YT-TE
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 19:04:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E204815A2;
 Wed, 29 May 2019 12:04:42 -0700 (PDT)
Received: from moonbear.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1FD433F59C;
 Wed, 29 May 2019 12:04:40 -0700 (PDT)
From: Kristina Martsenko <kristina.martsenko@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC v2 1/7] arm64: cpufeature: add pointer auth meta-capabilities
Date: Wed, 29 May 2019 20:03:26 +0100
Message-Id: <20190529190332.29753-2-kristina.martsenko@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190529190332.29753-1-kristina.martsenko@arm.com>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_120445_950888_B7CE7091 
X-CRM114-Status: GOOD (  15.54  )
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

To enable pointer auth for the kernel, we're going to need to check for
the presence of address auth and generic auth using alternative_if. We
currently have two cpucaps for each, but alternative_if needs to check a
single cpucap. So define meta-capabilities that are present when either
of the current two capabilities is present.

Leave the existing four cpucaps in place, as they are still needed to
check for mismatched systems where one CPU has the architected algorithm
but another has the IMP DEF algorithm.

Note, the meta-capabilities were present before but were removed in
commits a56005d32105 ("arm64: cpufeature: Reduce number of pointer auth
CPU caps from 6 to 4") and 1e013d06120c ("arm64: cpufeature: Rework ptr
auth hwcaps using multi_entry_cap_matches"), as they were not needed
then. Note, unlike before, the current patch checks the cpucap values
directly, instead of reading the CPU ID register value.

Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
---

Changes since RFC v1:
 - New patch, as the meta-capabilities have been removed upstream

 arch/arm64/include/asm/cpucaps.h    |  4 +++-
 arch/arm64/include/asm/cpufeature.h |  6 ++----
 arch/arm64/kernel/cpufeature.c      | 25 ++++++++++++++++++++++++-
 3 files changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f6a76e43f39e..601183b7b484 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -61,7 +61,9 @@
 #define ARM64_HAS_GENERIC_AUTH_ARCH		40
 #define ARM64_HAS_GENERIC_AUTH_IMP_DEF		41
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
+#define ARM64_HAS_ADDRESS_AUTH			43
+#define ARM64_HAS_GENERIC_AUTH			44
 
-#define ARM64_NCAPS				43
+#define ARM64_NCAPS				45
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index e505e1fbd2b9..0522ea674253 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -605,15 +605,13 @@ static inline bool system_supports_cnp(void)
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
index 4061de10cea6..166584deaed2 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1205,6 +1205,20 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
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
@@ -1466,7 +1480,6 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.field_pos = ID_AA64ISAR1_APA_SHIFT,
 		.min_field_value = ID_AA64ISAR1_APA_ARCHITECTED,
 		.matches = has_cpuid_feature,
-		.cpu_enable = cpu_enable_address_auth,
 	},
 	{
 		.desc = "Address authentication (IMP DEF algorithm)",
@@ -1477,6 +1490,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
@@ -1499,6 +1517,11 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
