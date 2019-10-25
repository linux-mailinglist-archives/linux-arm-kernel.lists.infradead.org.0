Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF14E5212
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 19:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A1+SPmJZuTzMnkzT3//Fu5u+5iFEmnlYnOG+Noz8/wc=; b=Ec7
	IEqdHxaZX2U8D0tL0En15X+YNtsWM66ewCbC7rf9YNTSpTySwIhp9oKy4B/Sk6EHGQRyMK2F0AY6G
	5m2xmHlep95j5Jj39BdiHkNaJCXEifxsFc3RxS3E06CD/QoNBmW/r9EEGTJ2pnDJN2RuqFnh9jS56
	72midmSa8hpH9Ayyp6HNueqj4exWPQdAw0S3Sd6R4AapsLJQmiBpKBW4gLyMLVl3mfE0lMjF6flUh
	kN99DBmgxMddjwwzkAGgm5C52RN8ZpBGN59DMzarObyUaEJFsOFdIziOKNgqaCRzwxS8Hfnrxk4YZ
	tKOAJvdLq9TAxC/bHlAwsWoKUvput6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO37J-0003Ml-Ko; Fri, 25 Oct 2019 17:11:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO37A-0003M9-6e
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 17:11:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09FEE328;
 Fri, 25 Oct 2019 10:11:02 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 06E883F71A;
 Fri, 25 Oct 2019 10:11:00 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: cpufeature: Export Armv8.6 Matrix feature to userspace
Date: Fri, 25 Oct 2019 18:10:56 +0100
Message-Id: <20191025171056.30641-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_101104_334463_D9EC2F67 
X-CRM114-Status: GOOD (  12.59  )
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
Cc: catalin.marinas@arm.com, Julien Grall <julien.grall@arm.com>,
 will@kernel.org, Dave.Martin@arm.com, suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch provides support for reporting the presence of Armv8.6
Matrix and its optional features to userspace.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---

This based on [1] + commit ec52c7134b1f "arm64: cpufeature: Treat
ID_AA64ZFR0_EL1 as RAZ when SVE is not enabled" (taken from v5.4-rc4).

[1]  arm64/for-next/elf-hwcap-docs
---
 Documentation/arm64/cpu-feature-registers.rst |  8 ++++++++
 Documentation/arm64/elf_hwcaps.rst            | 15 +++++++++++++++
 arch/arm64/include/asm/hwcap.h                |  4 ++++
 arch/arm64/include/asm/sysreg.h               |  7 +++++++
 arch/arm64/include/uapi/asm/hwcap.h           |  4 ++++
 arch/arm64/kernel/cpufeature.c                | 11 +++++++++++
 arch/arm64/kernel/cpuinfo.c                   |  4 ++++
 7 files changed, 53 insertions(+)

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index ffcf4e2c71ef..d1d6d56a7b08 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -193,6 +193,8 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
+     | I8MM                         | [52-55] |    y    |
+     +------------------------------+---------+---------+
      | SB                           | [36-39] |    y    |
      +------------------------------+---------+---------+
      | FRINTTS                      | [32-35] |    y    |
@@ -227,6 +229,12 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
+     | F64MM                        | [56-59] |    y    |
+     +------------------------------+---------+---------+
+     | F32MM                        | [52-55] |    y    |
+     +------------------------------+---------+---------+
+     | I8MM                         | [44-47] |    y    |
+     +------------------------------+---------+---------+
      | SM4                          | [43-40] |    y    |
      +------------------------------+---------+---------+
      | SHA3                         | [35-32] |    y    |
diff --git a/Documentation/arm64/elf_hwcaps.rst b/Documentation/arm64/elf_hwcaps.rst
index 7fa3d215ae6a..b2bcc6868f4a 100644
--- a/Documentation/arm64/elf_hwcaps.rst
+++ b/Documentation/arm64/elf_hwcaps.rst
@@ -204,6 +204,21 @@ HWCAP2_FRINT
 
     Functionality implied by ID_AA64ISAR1_EL1.FRINTTS == 0b0001.
 
+HWCAP2_SVEI8MM
+
+    Functionality implied by ID_AA64ZFR0_EL1.I8MM == 0b0001.
+
+HWCAP2_SVEF32MM
+
+    Functionality implied by ID_AA64ZFR0_EL1.F32MM == 0b0001.
+
+HWCAP2_SVEF64MM
+
+    Functionality implied by ID_AA64ZFR0_EL1.F64MM == 0b0001.
+
+HWCAP2_I8MM
+
+    Functionality implied by ID_AA64ISAR1_EL1.I8MM == 0b0001.
 
 4. Unused AT_HWCAP bits
 -----------------------
diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
index 3d2f2472a36c..99dc0e08b4d3 100644
--- a/arch/arm64/include/asm/hwcap.h
+++ b/arch/arm64/include/asm/hwcap.h
@@ -86,6 +86,10 @@
 #define KERNEL_HWCAP_SVESM4		__khwcap2_feature(SVESM4)
 #define KERNEL_HWCAP_FLAGM2		__khwcap2_feature(FLAGM2)
 #define KERNEL_HWCAP_FRINT		__khwcap2_feature(FRINT)
+#define KERNEL_HWCAP_SVEI8MM		__khwcap2_feature(SVEI8MM)
+#define KERNEL_HWCAP_SVEF32MM		__khwcap2_feature(SVEF32MM)
+#define KERNEL_HWCAP_SVEF64MM		__khwcap2_feature(SVEF64MM)
+#define KERNEL_HWCAP_I8MM		__khwcap2_feature(I8MM)
 
 /*
  * This yields a mask that user programs can use to figure out what
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 972d196c7714..35b27a9620ef 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -553,6 +553,7 @@
 #define ID_AA64ISAR0_AES_SHIFT		4
 
 /* id_aa64isar1 */
+#define ID_AA64ISAR1_I8MM_SHIFT		52
 #define ID_AA64ISAR1_SB_SHIFT		36
 #define ID_AA64ISAR1_FRINTTS_SHIFT	32
 #define ID_AA64ISAR1_GPI_SHIFT		28
@@ -605,12 +606,18 @@
 #define ID_AA64PFR1_SSBS_PSTATE_INSNS	2
 
 /* id_aa64zfr0 */
+#define ID_AA64ZFR0_F64MM_SHIFT		56
+#define ID_AA64ZFR0_F32MM_SHIFT		52
+#define ID_AA64ZFR0_I8MM_SHIFT		44
 #define ID_AA64ZFR0_SM4_SHIFT		40
 #define ID_AA64ZFR0_SHA3_SHIFT		32
 #define ID_AA64ZFR0_BITPERM_SHIFT	16
 #define ID_AA64ZFR0_AES_SHIFT		4
 #define ID_AA64ZFR0_SVEVER_SHIFT	0
 
+#define ID_AA64ZFR0_F64MM		0x1
+#define ID_AA64ZFR0_F32MM		0x1
+#define ID_AA64ZFR0_I8MM		0x1
 #define ID_AA64ZFR0_SM4			0x1
 #define ID_AA64ZFR0_SHA3		0x1
 #define ID_AA64ZFR0_BITPERM		0x1
diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
index a1e72886b30c..10f207b81091 100644
--- a/arch/arm64/include/uapi/asm/hwcap.h
+++ b/arch/arm64/include/uapi/asm/hwcap.h
@@ -65,5 +65,9 @@
 #define HWCAP2_SVESM4		(1 << 6)
 #define HWCAP2_FLAGM2		(1 << 7)
 #define HWCAP2_FRINT		(1 << 8)
+#define HWCAP2_SVEI8MM		(1 << 9)
+#define HWCAP2_SVEF32MM		(1 << 10)
+#define HWCAP2_SVEF64MM		(1 << 11)
+#define HWCAP2_I8MM		(1 << 12)
 
 #endif /* _UAPI__ASM_HWCAP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 80f459ad0190..6d196c66f80d 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -135,6 +135,7 @@ static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_I8MM_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SB_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FRINTTS_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
@@ -177,6 +178,12 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
 
 static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_F64MM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_F32MM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_I8MM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_SM4_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_SHA3_SHIFT, 4, 0),
@@ -1650,6 +1657,7 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_LRCPC_SHIFT, FTR_UNSIGNED, 2, CAP_HWCAP, KERNEL_HWCAP_ILRCPC),
 	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_FRINTTS_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_FRINT),
 	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_SB_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SB),
+	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_I8MM_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_I8MM),
 	HWCAP_CAP(SYS_ID_AA64MMFR2_EL1, ID_AA64MMFR2_AT_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_USCAT),
 #ifdef CONFIG_ARM64_SVE
 	HWCAP_CAP(SYS_ID_AA64PFR0_EL1, ID_AA64PFR0_SVE_SHIFT, FTR_UNSIGNED, ID_AA64PFR0_SVE, CAP_HWCAP, KERNEL_HWCAP_SVE),
@@ -1659,6 +1667,9 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_BITPERM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_BITPERM, CAP_HWCAP, KERNEL_HWCAP_SVEBITPERM),
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_SHA3_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_SHA3, CAP_HWCAP, KERNEL_HWCAP_SVESHA3),
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_SM4_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_SM4, CAP_HWCAP, KERNEL_HWCAP_SVESM4),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_I8MM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_I8MM, CAP_HWCAP, KERNEL_HWCAP_SVEI8MM),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_F32MM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_F32MM, CAP_HWCAP, KERNEL_HWCAP_SVEF32MM),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_F64MM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_F64MM, CAP_HWCAP, KERNEL_HWCAP_SVEF64MM),
 #endif
 	HWCAP_CAP(SYS_ID_AA64PFR1_EL1, ID_AA64PFR1_SSBS_SHIFT, FTR_UNSIGNED, ID_AA64PFR1_SSBS_PSTATE_INSNS, CAP_HWCAP, KERNEL_HWCAP_SSBS),
 #ifdef CONFIG_ARM64_PTR_AUTH
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 05933c065732..ae76c794bd09 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -84,6 +84,10 @@ static const char *const hwcap_str[] = {
 	"svesm4",
 	"flagm2",
 	"frint",
+	"svei8mm",
+	"svef32mm",
+	"svef64mm",
+	"i8mm",
 	NULL
 };
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
