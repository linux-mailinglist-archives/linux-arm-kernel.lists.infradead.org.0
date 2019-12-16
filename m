Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2381203F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FkK0aIhVR0/ohetqxWJW7R+hulRDALmyvUVzBfh4OEA=; b=G+0mW3Q41bQL69
	nGQ8K1cEf9m/c5YVTWq/Pim3oH5EAkLbPWDG7uJVRVqSkWQbQcbhn8TiHO9WDx2gqbBgc793n+RHA
	WC9gU4bxGIPiObSD5Y1APe9wnO1JujTrt9ej9pYhzDF9OdmLMpwjn6RFKHF/DUPyGjGXfAhygYQP1
	ncVr9o/xYwLW00siUZ9llgiAN0YuQCfgu9SYGZAq2viIQGOFM0mMhMHqh7vpHIxBYJCYQVWK+YgYz
	9HQuORMXL4xQ2J6Hti/rBmYvF/2zBMwOmCDkcdq5e0A4c+lBo1a6vWQfayHpXQKPoOU4ksZ9GAJ1Q
	8gZq+am/Owl23Fs+16mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igodP-0004Jo-It; Mon, 16 Dec 2019 11:33:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igodG-0004Im-4h
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:33:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB4CE1FB;
 Mon, 16 Dec 2019 03:33:43 -0800 (PST)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7C27D3F6CF;
 Mon, 16 Dec 2019 03:33:42 -0800 (PST)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v2] arm64: cpufeature: Export matrix and other features to
 userspace
Date: Mon, 16 Dec 2019 11:33:37 +0000
Message-Id: <20191216113337.13882-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_033348_203775_103F145F 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Steven Price <steven.price@arm.com>, julien@xen.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Export the features introduced as part of ARMv8.6 exposed in the
ID_AA64ISAR1_EL1 and ID_AA64ZFR0_EL1 registers. This introduces the
Matrix features (ARMv8.2-I8MM, ARMv8.2-F64MM and ARMv8.2-F32MM) along
with BFloat16 (Armv8.2-BF16), speculation invalidation (SPECRES) and
Data Gathering Hint (ARMv8.0-DGH).

Signed-off-by: Julien Grall <julien.grall@arm.com>
[Added other features in those registers]
Signed-off-by: Steven Price <steven.price@arm.com>
---
This is a v2 of Julien's patch[1] extended to export all the new
features contained within the ID_AA64ISAR1_EL1 and ID_AA64ZFR0_EL1
registers.

[1] https://lore.kernel.org/linux-arm-kernel/20191025171056.30641-1-julien.grall@arm.com/

 Documentation/arm64/cpu-feature-registers.rst | 16 ++++++++++
 Documentation/arm64/elf_hwcaps.rst            | 31 +++++++++++++++++++
 arch/arm64/include/asm/hwcap.h                |  8 +++++
 arch/arm64/include/asm/sysreg.h               | 12 +++++++
 arch/arm64/include/uapi/asm/hwcap.h           |  8 +++++
 arch/arm64/kernel/cpufeature.c                | 20 ++++++++++++
 arch/arm64/kernel/cpuinfo.c                   |  8 +++++
 7 files changed, 103 insertions(+)

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index b6e44884e3ad..5382981533f8 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -200,6 +200,14 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
+     | I8MM                         | [55-52] |    y    |
+     +------------------------------+---------+---------+
+     | DGH                          | [51-48] |    y    |
+     +------------------------------+---------+---------+
+     | BF16                         | [47-44] |    y    |
+     +------------------------------+---------+---------+
+     | SPECRES                      | [43-40] |    y    |
+     +------------------------------+---------+---------+
      | SB                           | [39-36] |    y    |
      +------------------------------+---------+---------+
      | FRINTTS                      | [35-32] |    y    |
@@ -234,10 +242,18 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
+     | F64MM                        | [59-56] |    y    |
+     +------------------------------+---------+---------+
+     | F32MM                        | [55-52] |    y    |
+     +------------------------------+---------+---------+
+     | I8MM                         | [47-44] |    y    |
+     +------------------------------+---------+---------+
      | SM4                          | [43-40] |    y    |
      +------------------------------+---------+---------+
      | SHA3                         | [35-32] |    y    |
      +------------------------------+---------+---------+
+     | BF16                         | [23-20] |    y    |
+     +------------------------------+---------+---------+
      | BitPerm                      | [19-16] |    y    |
      +------------------------------+---------+---------+
      | AES                          | [7-4]   |    y    |
diff --git a/Documentation/arm64/elf_hwcaps.rst b/Documentation/arm64/elf_hwcaps.rst
index 7fa3d215ae6a..183ba86ad46e 100644
--- a/Documentation/arm64/elf_hwcaps.rst
+++ b/Documentation/arm64/elf_hwcaps.rst
@@ -204,6 +204,37 @@ HWCAP2_FRINT
 
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
+HWCAP2_SVEBF16
+
+    Functionality implied by ID_AA64ZFR0_EL1.BF16 == 0b0001.
+
+HWCAP2_I8MM
+
+    Functionality implied by ID_AA64ISAR1_EL1.I8MM == 0b0001.
+
+HWCAP2_BF16
+
+    Functionality implied by ID_AA64ISAR1_EL1.BF16 == 0b0001.
+
+HWCAP2_DGH
+
+    Functionality implied by ID_AA64ISAR1_EL1.DGH == 0b0001.
+
+HWCAP2_SPECRES
+
+    Functionality implied by ID_AA64ISAR1_EL1.SPECRES == 0b0001.
 
 4. Unused AT_HWCAP bits
 -----------------------
diff --git a/arch/arm64/include/asm/hwcap.h b/arch/arm64/include/asm/hwcap.h
index 3d2f2472a36c..ac7180b2c20b 100644
--- a/arch/arm64/include/asm/hwcap.h
+++ b/arch/arm64/include/asm/hwcap.h
@@ -86,6 +86,14 @@
 #define KERNEL_HWCAP_SVESM4		__khwcap2_feature(SVESM4)
 #define KERNEL_HWCAP_FLAGM2		__khwcap2_feature(FLAGM2)
 #define KERNEL_HWCAP_FRINT		__khwcap2_feature(FRINT)
+#define KERNEL_HWCAP_SVEI8MM		__khwcap2_feature(SVEI8MM)
+#define KERNEL_HWCAP_SVEF32MM		__khwcap2_feature(SVEF32MM)
+#define KERNEL_HWCAP_SVEF64MM		__khwcap2_feature(SVEF64MM)
+#define KERNEL_HWCAP_SVEBF16		__khwcap2_feature(SVEBF16)
+#define KERNEL_HWCAP_I8MM		__khwcap2_feature(I8MM)
+#define KERNEL_HWCAP_DGH		__khwcap2_feature(DGH)
+#define KERNEL_HWCAP_BF16		__khwcap2_feature(BF16)
+#define KERNEL_HWCAP_SPECRES		__khwcap2_feature(SPECRES)
 
 /*
  * This yields a mask that user programs can use to figure out what
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6e919fafb43d..f56c4a02a127 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -553,6 +553,10 @@
 #define ID_AA64ISAR0_AES_SHIFT		4
 
 /* id_aa64isar1 */
+#define ID_AA64ISAR1_I8MM_SHIFT		52
+#define ID_AA64ISAR1_DGH_SHIFT		48
+#define ID_AA64ISAR1_BF16_SHIFT		44
+#define ID_AA64ISAR1_SPECRES_SHIFT	40
 #define ID_AA64ISAR1_SB_SHIFT		36
 #define ID_AA64ISAR1_FRINTTS_SHIFT	32
 #define ID_AA64ISAR1_GPI_SHIFT		28
@@ -605,12 +609,20 @@
 #define ID_AA64PFR1_SSBS_PSTATE_INSNS	2
 
 /* id_aa64zfr0 */
+#define ID_AA64ZFR0_F64MM_SHIFT		56
+#define ID_AA64ZFR0_F32MM_SHIFT		52
+#define ID_AA64ZFR0_I8MM_SHIFT		44
 #define ID_AA64ZFR0_SM4_SHIFT		40
 #define ID_AA64ZFR0_SHA3_SHIFT		32
+#define ID_AA64ZFR0_BF16_SHIFT		20
 #define ID_AA64ZFR0_BITPERM_SHIFT	16
 #define ID_AA64ZFR0_AES_SHIFT		4
 #define ID_AA64ZFR0_SVEVER_SHIFT	0
 
+#define ID_AA64ZFR0_F64MM		0x1
+#define ID_AA64ZFR0_F32MM		0x1
+#define ID_AA64ZFR0_I8MM		0x1
+#define ID_AA64ZFR0_BF16		0x1
 #define ID_AA64ZFR0_SM4			0x1
 #define ID_AA64ZFR0_SHA3		0x1
 #define ID_AA64ZFR0_BITPERM		0x1
diff --git a/arch/arm64/include/uapi/asm/hwcap.h b/arch/arm64/include/uapi/asm/hwcap.h
index a1e72886b30c..8f3f1b66f7b2 100644
--- a/arch/arm64/include/uapi/asm/hwcap.h
+++ b/arch/arm64/include/uapi/asm/hwcap.h
@@ -65,5 +65,13 @@
 #define HWCAP2_SVESM4		(1 << 6)
 #define HWCAP2_FLAGM2		(1 << 7)
 #define HWCAP2_FRINT		(1 << 8)
+#define HWCAP2_SVEI8MM		(1 << 9)
+#define HWCAP2_SVEF32MM		(1 << 10)
+#define HWCAP2_SVEF64MM		(1 << 11)
+#define HWCAP2_SVEBF16		(1 << 12)
+#define HWCAP2_I8MM		(1 << 13)
+#define HWCAP2_BF16		(1 << 14)
+#define HWCAP2_DGH		(1 << 15)
+#define HWCAP2_SPECRES		(1 << 16)
 
 #endif /* _UAPI__ASM_HWCAP_H */
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 04cf64e9f0c9..bf9e9e09da0d 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -135,6 +135,10 @@ static const struct arm64_ftr_bits ftr_id_aa64isar0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64isar1[] = {
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_I8MM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_DGH_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_BF16_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SPECRES_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_SB_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE, FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ISAR1_FRINTTS_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_PTR_AUTH),
@@ -176,10 +180,18 @@ static const struct arm64_ftr_bits ftr_id_aa64pfr1[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_F64MM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_F32MM_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_I8MM_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_SM4_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_SHA3_SHIFT, 4, 0),
+	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
+		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_BF16_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
 		       FTR_STRICT, FTR_LOWER_SAFE, ID_AA64ZFR0_BITPERM_SHIFT, 4, 0),
 	ARM64_FTR_BITS(FTR_VISIBLE_IF_IS_ENABLED(CONFIG_ARM64_SVE),
@@ -1651,6 +1663,10 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_LRCPC_SHIFT, FTR_UNSIGNED, 2, CAP_HWCAP, KERNEL_HWCAP_ILRCPC),
 	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_FRINTTS_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_FRINT),
 	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_SB_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SB),
+	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_SPECRES_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_SPECRES),
+	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_BF16_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_BF16),
+	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_DGH_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_DGH),
+	HWCAP_CAP(SYS_ID_AA64ISAR1_EL1, ID_AA64ISAR1_I8MM_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_I8MM),
 	HWCAP_CAP(SYS_ID_AA64MMFR2_EL1, ID_AA64MMFR2_AT_SHIFT, FTR_UNSIGNED, 1, CAP_HWCAP, KERNEL_HWCAP_USCAT),
 #ifdef CONFIG_ARM64_SVE
 	HWCAP_CAP(SYS_ID_AA64PFR0_EL1, ID_AA64PFR0_SVE_SHIFT, FTR_UNSIGNED, ID_AA64PFR0_SVE, CAP_HWCAP, KERNEL_HWCAP_SVE),
@@ -1658,8 +1674,12 @@ static const struct arm64_cpu_capabilities arm64_elf_hwcaps[] = {
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_AES_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_AES, CAP_HWCAP, KERNEL_HWCAP_SVEAES),
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_AES_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_AES_PMULL, CAP_HWCAP, KERNEL_HWCAP_SVEPMULL),
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_BITPERM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_BITPERM, CAP_HWCAP, KERNEL_HWCAP_SVEBITPERM),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_BF16_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_BF16, CAP_HWCAP, KERNEL_HWCAP_SVEBF16),
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_SHA3_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_SHA3, CAP_HWCAP, KERNEL_HWCAP_SVESHA3),
 	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_SM4_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_SM4, CAP_HWCAP, KERNEL_HWCAP_SVESM4),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_I8MM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_I8MM, CAP_HWCAP, KERNEL_HWCAP_SVEI8MM),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_F32MM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_F32MM, CAP_HWCAP, KERNEL_HWCAP_SVEF32MM),
+	HWCAP_CAP(SYS_ID_AA64ZFR0_EL1, ID_AA64ZFR0_F64MM_SHIFT, FTR_UNSIGNED, ID_AA64ZFR0_F64MM, CAP_HWCAP, KERNEL_HWCAP_SVEF64MM),
 #endif
 	HWCAP_CAP(SYS_ID_AA64PFR1_EL1, ID_AA64PFR1_SSBS_SHIFT, FTR_UNSIGNED, ID_AA64PFR1_SSBS_PSTATE_INSNS, CAP_HWCAP, KERNEL_HWCAP_SSBS),
 #ifdef CONFIG_ARM64_PTR_AUTH
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 56bba746da1c..1eaf4dc0c5a0 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -84,6 +84,14 @@ static const char *const hwcap_str[] = {
 	"svesm4",
 	"flagm2",
 	"frint",
+	"svei8mm",
+	"svef32mm",
+	"svef64mm",
+	"svebf16",
+	"i8mm",
+	"bf16",
+	"dgh",
+	"specres",
 	NULL
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
