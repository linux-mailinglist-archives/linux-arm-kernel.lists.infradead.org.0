Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073D889EFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 14:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2C46ywsG95U5VInAq0zWb2/WDkAOP1rEVDyqWMdcIvU=; b=Wrt0Vd+5LguVyU
	Nl5WpXfcWg6MqoTsF8uOx63FD3cs52XrH4FII0CfMnSicUrJ09MXCR89o4ilpCyzdX6TTWLSMKWm5
	EqpSXv+rTbTjM0delty2buKXTSY3kvrIF2SCmCwMhUZzBPf78AS+2r+qcL16NS+JYvGmbm1OEScuO
	SFUXPLFTLTat5GyIS5ThyJ4dYviD+5g8eeM0ivputp6finB4gzP4SwnKDXaLF+4UPtciKj/fyhOdV
	tsQ3fng61HYZQdMydRKx+G7SyAhsEykpsSXjkZ+Oxl8KWi2smByPXnf51e0xIPOODmSkfvJufLcHo
	Hsio6ze/Zyt1XeZEVNfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9u1-00040e-Cl; Mon, 12 Aug 2019 12:58:21 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9tX-0003pv-Ex
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 12:57:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hw6TheOABmhzQMr7BfY1FmL3f4LOsj4p34EasBfSmps=; b=BPCtD62RESiA6kACtHCVRwTvYt
 JiDooDmbQ1/MbaLcvurpPqc45h2x0xmNzDHUM2Eavt48+IM0nCWe6FazPH/OUZiX0M7bmDDDz2xgf
 0GCsrzeA9AHcbqds2sPvgdfTMcN/jkUSrovW3TpgrP+DWjFBd6nRfEb6+DdOpXltL1EI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hx9tU-0001Je-Uc; Mon, 12 Aug 2019 12:57:49 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 65DE32740CBD; Mon, 12 Aug 2019 13:57:48 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH 1/2] arm64: Add initial support for E0PD
Date: Mon, 12 Aug 2019 13:57:37 +0100
Message-Id: <20190812125738.17388-2-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812125738.17388-1-broonie@kernel.org>
References: <20190812125738.17388-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_055751_523354_C420D264 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

This initial patch does not yet integrate with KPTI, this will be dealt
with in followup patches.  Ideally we could ensure that by default we
don't use KPTI on CPUs where E0PD is present.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/Kconfig                     | 14 +++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
 5 files changed, 46 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index c6a978b0fb7c..3a6875a5bb99 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1409,6 +1409,20 @@ config ARM64_PTR_AUTH
 
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
index 3df60f97da1f..685842e52c3d 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -292,6 +292,8 @@
 #define TCR_HD			(UL(1) << 40)
 #define TCR_NFD0		(UL(1) << 53)
 #define TCR_NFD1		(UL(1) << 54)
+#define TCR_E0PD0		(UL(1) << 55)
+#define TCR_E0PD1		(UL(1) << 56)
 
 /*
  * TTBR.
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 1df45c7ffcf7..37a0926536d3 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -652,6 +652,7 @@
 #define ID_AA64MMFR1_VMIDBITS_16	2
 
 /* id_aa64mmfr2 */
+#define ID_AA64MMFR2_E0PD_SHIFT		60
 #define ID_AA64MMFR2_FWB_SHIFT		40
 #define ID_AA64MMFR2_AT_SHIFT		32
 #define ID_AA64MMFR2_LVA_SHIFT		16
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 95201e5ff5e1..4aa1d2026bef 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -211,6 +211,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
@@ -1236,6 +1237,19 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
 }
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
+#ifdef CONFIG_ARM64_E0PD
+static void cpu_enable_e0pd(struct arm64_cpu_capabilities const *cap)
+{
+	/*
+	 * The cpu_enable() callback gets called even on CPUs that
+	 * don't detect the feature so we need to verify if we can
+	 * enable.
+	 */
+	if (this_cpu_has_cap(ARM64_HAS_E0PD))
+		sysreg_clear_set(tcr_el1, 0, TCR_E0PD1);
+}
+#endif /* CONFIG_ARM64_E0PD */
+
 #ifdef CONFIG_ARM64_PSEUDO_NMI
 static bool enable_pseudo_nmi;
 
@@ -1551,6 +1565,19 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
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
