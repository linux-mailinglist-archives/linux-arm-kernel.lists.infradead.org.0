Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 223DA58450
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 16:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DpTYeSAL+sIhe2vTD8FuyjDW6ccXYTN/HoaJH9cUAng=; b=pgd97R1FmvBdza
	eYpHNGSJZDvkcfjTaz6cqQ41GI7DsriebHS5CHDVaz4uubdNKWyptIA2zVmFqlKezmJ0Xyz7E7vnC
	N3JzW5wB+wOTIHkVYObzM2rv4aIT4ZmLaoN2/YkK5QOAtqFXlMu71pOsYt+iB7yl48gOlBKJ1Rxzg
	obRJ3d4AR+/3ETZoGy5+d4x8v8n9LbnASTSiBt6um7KLCnSRS8dRose7kXQJCDWQerrIfKkTMKMMe
	EyvWBjk9P8ld0FDBSeE0lrPI7MfZM5AiKzKAMbuY+d2x6dLYjbh0na7VOIIgSPTwWoJ5BuZTpwYgX
	2V0Qj04nwiN9xnIPck5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVBx-00068R-F7; Thu, 27 Jun 2019 14:16:01 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVBh-00067v-Q2
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 14:15:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4j3zh/EmELWcXvFIBbNvD29AZuiMtwr7WPRQ2WgUMs0=; b=fmas2+pS+Uo5ynjhIE7/S8INq
 oVaMATVHAkq61H2iBJKN1wi2luge5nquI8I1W8iWZKGwp0ykcSmh6rTAd2ej2/3H1MHtiBego/Smw
 Ro7Fib5x6YZjUvIxG7kf77JHpwbZkpWjQOHePAJOZvboGQb7hsqPTO7ZbRVc4wD4C63q4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hgVBb-0003rZ-F9; Thu, 27 Jun 2019 14:15:39 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id DE425440046; Thu, 27 Jun 2019 15:15:36 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: Add initial support for E0PD
Date: Thu, 27 Jun 2019 15:15:32 +0100
Message-Id: <20190627141532.6452-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_071545_999613_E4F3F6AA 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
based security issues by ensuring that the kernel is not mapped when
userspace is running but this approach is expensive and is incompatible
with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
alternative to this which ensures that accesses from userspace to the
kernel's half of the memory map to always fault with constant time,
preventing timing attacks without requiring constant unmapping and
remapping or preventing legitimate accesses.

This initial patch does not yet integrate with KPTI, a followup patch
will ensure that by default we don't use KPTI on CPUs where E0PD is
present which will provide a much greater benefit in general
configurations.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

 - Reword commit message
 - Change to detection as ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE.
 
 arch/arm64/Kconfig                     | 14 ++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 21 +++++++++++++++++++++
 5 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 0758d89524d0..6bb0d6b578d3 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1382,6 +1382,20 @@ config ARM64_PTR_AUTH
 
 endmenu
 
+menu "ARMv8.5 architectural features"
+
+config ARM64_E0PD
+	bool "Enable support for E0PD"
+	default y
+	help
+	   E0PD (part of the ARMv8.5 extensions) ensures that EL0
+	   accesses made via TTBR1 always fault in constant time,
+	   providing the same guarantees as KPTI with lower overhead.
+
+	   This option enables E0PD where available.
+
+endmenu
+
 config ARM64_SVE
 	bool "ARM Scalable Vector Extension support"
 	default y
diff --git a/arch/arm64/include/asm/cpucaps.h b/arch/arm64/include/asm/cpucaps.h
index f19fe4b9acc4..f25388981075 100644
--- a/arch/arm64/include/asm/cpucaps.h
+++ b/arch/arm64/include/asm/cpucaps.h
@@ -52,7 +52,8 @@
 #define ARM64_HAS_IRQ_PRIO_MASKING		42
 #define ARM64_HAS_DCPODP			43
 #define ARM64_WORKAROUND_1463225		44
+#define ARM64_HAS_E0PD				45
 
-#define ARM64_NCAPS				45
+#define ARM64_NCAPS				46
 
 #endif /* __ASM_CPUCAPS_H */
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index e2f8c6b09717..195a01156460 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -294,6 +294,8 @@
 #define TCR_HD			(UL(1) << 40)
 #define TCR_NFD0		(UL(1) << 53)
 #define TCR_NFD1		(UL(1) << 54)
+#define TCR_E0PD0		(UL(1) << 55)
+#define TCR_E0PD1		(UL(1) << 56)
 
 /*
  * TTBR.
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index b069b673494f..2f3672c186dc 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -650,6 +650,7 @@
 #define ID_AA64MMFR1_VMIDBITS_16	2
 
 /* id_aa64mmfr2 */
+#define ID_AA64MMFR2_E0PD_SHIFT		60
 #define ID_AA64MMFR2_FWB_SHIFT		40
 #define ID_AA64MMFR2_AT_SHIFT		32
 #define ID_AA64MMFR2_LVA_SHIFT		16
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f29f36a65175..676ec3db35a3 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -211,6 +211,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
@@ -1232,6 +1233,13 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
 }
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
+#ifdef CONFIG_ARM64_E0PD
+static void cpu_enable_e0pd(struct arm64_cpu_capabilities const *cap)
+{
+	sysreg_clear_set(tcr_el1, 0, TCR_E0PD1);
+}
+#endif /* CONFIG_ARM64_E0PD */
+
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 static bool enable_pseudo_nmi;
 
@@ -1547,6 +1555,19 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+#endif
+#ifdef CONFIG_ARM64_E0PD
+	{
+		.desc = "E0PD",
+		.capability = ARM64_HAS_E0PD,
+		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
+		.sys_reg = SYS_ID_AA64MMFR2_EL1,
+		.sign = FTR_UNSIGNED,
+		.field_pos = ID_AA64MMFR2_E0PD_SHIFT,
+		.matches = has_cpuid_feature,
+		.min_field_value = 1,
+		.cpu_enable = cpu_enable_e0pd,
+	},
 #endif
 	{},
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
