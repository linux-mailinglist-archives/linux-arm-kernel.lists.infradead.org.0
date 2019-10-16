Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F3AD953F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:15:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YJ54lUjYYHfg7d/k0MThGdIoAZk+m59U98WCBYaa71M=; b=flqvZNA9Y32SAU
	w/bTA/kzBB1Fp1Zw7qz42mdplQY+N4jZVmptoQDHibHUeka1UPlsoaJh26cwNmpoKzvx2cva+CuMz
	yP846RniLYJTSm0y68NRDQNhi54NuZG1ixtXSj0xIt+hV8oN6Kx3L4M5AqnIY/Wdk8IIKvNf08axz
	hakzSiOVGgUafSG6svCU/iC0NN32tJsvS8mBfMbH6tyKVF6VBnEGok7rqkTk+jZlUwohe9tmSIgQO
	CZnqoVAkH+z2zb74ujy+3nXwuZ9SYDMVy+YpBbfH6668IvjN/DhBqnduded3mcFc5Ab/ORuYnH8Tw
	EDqOtUSJi/1qxDfPH8IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKl1Z-0003G3-Du; Wed, 16 Oct 2019 15:15:41 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKl0U-0001tZ-1j
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From
 :Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QV+9Q+22wnZ0sJMIOK6+mhHvBPpWC4hxBYlKKhIznRY=; b=wILCarihr05fgN5a34qfXZKZew
 Y04TYzcVnReYzjHH7yNyvpDlewIej4pLAliUB0QrGJoUqu8R6yzONTMdaL3eIoMN59cEf3vFiry5w
 Y0l4eg74hZPXk8jO8M3XOAW36RDz4hbQi0C4YhwNBTBPO6qkUbha+43Y65IWdtaSwTlM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKl0Q-0005gP-UJ; Wed, 16 Oct 2019 15:14:31 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5E9562741DEA; Wed, 16 Oct 2019 16:14:30 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 2/3] arm64: Add initial support for E0PD
Date: Wed, 16 Oct 2019 16:14:20 +0100
Message-Id: <20191016151421.27708-3-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016151421.27708-1-broonie@kernel.org>
References: <20191016151421.27708-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_081434_130436_BA0015FB 
X-CRM114-Status: GOOD (  18.98  )
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

Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
based security issues by ensuring that the kernel is not mapped when
userspace is running but this approach is expensive and is incompatible
with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
alternative to this which ensures that accesses from userspace to the
kernel's half of the memory map to always fault with constant time,
preventing timing attacks without requiring constant unmapping and
remapping or preventing legitimate accesses.

Currently this feature will only be enabled if all CPUs in the system
support E0PD, if some CPUs do not support the feature at boot time then
the feature will not be enabled and in the unlikely event that a late
CPU is the first CPU to lack the feature then we will reject that CPU.

This initial patch does not yet integrate with KPTI, this will be dealt
with in followup patches.  Ideally we could ensure that by default we
don't use KPTI on CPUs where E0PD is present.

Signed-off-by: Mark Brown <broonie@kernel.org>
---

v3: Make E0PD a system feature.

 arch/arm64/Kconfig                     | 15 ++++++++++++++
 arch/arm64/include/asm/cpucaps.h       |  3 ++-
 arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
 arch/arm64/include/asm/sysreg.h        |  1 +
 arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
 5 files changed, 47 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index ea62c87d9ced..cd5be8fe1cda 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1426,6 +1426,21 @@ config ARM64_PTR_AUTH
 
 endmenu
 
+menu "ARMv8.5 architectural features"
+
+config ARM64_E0PD
+	bool "Enable support for E0PD"
+	default y
+	help
+	   E0PD (part of the ARMv8.5 extensions) allows us to ensure
+	   that EL0 accesses made via TTBR1 always fault in constant time,
+	   providing benefits to KPTI with lower overhead and without
+	   disrupting legitimate access to kernel memory such as SPE.
+
+	   This option enables E0PD for TTBR1 where available.
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
index 972d196c7714..36227a5a22ba 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -655,6 +655,7 @@
 #define ID_AA64MMFR1_VMIDBITS_16	2
 
 /* id_aa64mmfr2 */
+#define ID_AA64MMFR2_E0PD_SHIFT		60
 #define ID_AA64MMFR2_FWB_SHIFT		40
 #define ID_AA64MMFR2_AT_SHIFT		32
 #define ID_AA64MMFR2_LVA_SHIFT		16
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index db311a34a21e..0d551af06421 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -220,6 +220,7 @@ static const struct arm64_ftr_bits ftr_id_aa64mmfr1[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr2[] = {
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_E0PD_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_FWB_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_AT_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64MMFR2_LVA_SHIFT, 4, 0),
@@ -1245,6 +1246,19 @@ static void cpu_enable_address_auth(struct arm64_cpu_capabilities const *cap)
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
 
@@ -1560,6 +1574,19 @@ static const struct arm64_cpu_capabilities arm64_features[] = {
 		.sign = FTR_UNSIGNED,
 		.min_field_value = 1,
 	},
+#endif
+#ifdef CONFIG_ARM64_E0PD
+	{
+		.desc = "E0PD",
+		.capability = ARM64_HAS_E0PD,
+		.type = ARM64_CPUCAP_SYSTEM_FEATURE,
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
