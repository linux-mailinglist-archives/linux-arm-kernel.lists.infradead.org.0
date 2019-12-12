Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BE211CA50
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:14:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eNLQKrWen4wrYcWFILCbTgmBVumfHB4fljEUfSJ2cy4=; b=aWd
	nZGt2bBLrxuZQQj5qvDobnegAvkqzOi1HUfuKAuULFyugc5XUrmRxeiRcId/RLsPFjl6AJwyCbVqL
	AH/G/hT890opzid/vVUmXLrBKxh5yN5f7qoR4Y+xSUSyxjt2DSowoxT9OMNUGfx9EXRzwXOvS2ZXB
	iyBzZqpeXXkslUb4oz9Xt4uf1QQ+u8jEiPKKPRiBAt1z1FgZdSvjmp8aSdZoCbcshv1GYANJ4w6MR
	H6aHqsR3HV7jxE/64YGuTXO77VzC9DvByJGm3RP77xoR3dwb/L7GSkXFFqwwiyvqTLQPoP+1p76S9
	iEzoFuduuIXGhWHLW7jVoYqgIRU7Jpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLTk-000716-Df; Thu, 12 Dec 2019 10:13:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLTd-00070l-5O
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:13:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7CCA2328;
 Thu, 12 Dec 2019 02:13:44 -0800 (PST)
Received: from p8cg001049571a15.arm.com (unknown [10.163.1.199])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 03A913F6CF;
 Thu, 12 Dec 2019 02:13:39 -0800 (PST)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Introduce ISAR6 CPU ID register
Date: Thu, 12 Dec 2019 15:44:23 +0530
Message-Id: <1576145663-9909-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_021345_295038_04C99B67 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds basic building blocks required for ISAR6 CPU ID register which
identifies support for various instruction implementation on AArch32 state.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-kernel@vger.kernel.org
Cc: kvmarm@lists.cs.columbia.edu
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/cpu.h    | 1 +
 arch/arm64/include/asm/sysreg.h | 9 +++++++++
 arch/arm64/kernel/cpufeature.c  | 7 ++++++-
 arch/arm64/kernel/cpuinfo.c     | 1 +
 arch/arm64/kvm/sys_regs.c       | 2 +-
 5 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
index d72d995..b4a4053 100644
--- a/arch/arm64/include/asm/cpu.h
+++ b/arch/arm64/include/asm/cpu.h
@@ -39,6 +39,7 @@ struct cpuinfo_arm64 {
 	u32		reg_id_isar3;
 	u32		reg_id_isar4;
 	u32		reg_id_isar5;
+	u32		reg_id_isar6;
 	u32		reg_id_mmfr0;
 	u32		reg_id_mmfr1;
 	u32		reg_id_mmfr2;
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 6db3a9b..4fd3327 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -146,6 +146,7 @@
 #define SYS_ID_ISAR4_EL1		sys_reg(3, 0, 0, 2, 4)
 #define SYS_ID_ISAR5_EL1		sys_reg(3, 0, 0, 2, 5)
 #define SYS_ID_MMFR4_EL1		sys_reg(3, 0, 0, 2, 6)
+#define SYS_ID_ISAR6_EL1		sys_reg(3, 0, 0, 2, 7)
 
 #define SYS_MVFR0_EL1			sys_reg(3, 0, 0, 3, 0)
 #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
@@ -683,6 +684,14 @@
 #define ID_ISAR5_AES_SHIFT		4
 #define ID_ISAR5_SEVL_SHIFT		0
 
+#define ID_ISAR6_JSCVT_SHIFT		0
+#define ID_ISAR6_DP_SHIFT		4
+#define ID_ISAR6_FHM_SHIFT		8
+#define ID_ISAR6_SB_SHIFT		12
+#define ID_ISAR6_SPECRES_SHIFT		16
+#define ID_ISAR6_BF16_SHIFT		20
+#define ID_ISAR6_I8MM_SHIFT		24
+
 #define MVFR0_FPROUND_SHIFT		28
 #define MVFR0_FPSHVEC_SHIFT		24
 #define MVFR0_FPSQRT_SHIFT		20
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f344cea..3b9ac8b 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -346,7 +346,7 @@ static const struct arm64_ftr_bits ftr_zcr[] = {
  * Common ftr bits for a 32bit register with all hidden, strict
  * attributes, with 4bit feature fields and a default safe value of
  * 0. Covers the following 32bit registers:
- * id_isar[0-4], id_mmfr[1-3], id_pfr1, mvfr[0-1]
+ * id_isar[0-4, 6], id_mmfr[1-3], id_pfr1, mvfr[0-1]
  */
 static const struct arm64_ftr_bits ftr_generic_32bits[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, 28, 4, 0),
@@ -399,6 +399,7 @@ static const struct __ftr_reg_entry {
 	ARM64_FTR_REG(SYS_ID_ISAR4_EL1, ftr_generic_32bits),
 	ARM64_FTR_REG(SYS_ID_ISAR5_EL1, ftr_id_isar5),
 	ARM64_FTR_REG(SYS_ID_MMFR4_EL1, ftr_id_mmfr4),
+	ARM64_FTR_REG(SYS_ID_ISAR6_EL1, ftr_generic_32bits),
 
 	/* Op1 = 0, CRn = 0, CRm = 3 */
 	ARM64_FTR_REG(SYS_MVFR0_EL1, ftr_generic_32bits),
@@ -603,6 +604,7 @@ void __init init_cpu_features(struct cpuinfo_arm64 *info)
 		init_cpu_ftr_reg(SYS_ID_ISAR3_EL1, info->reg_id_isar3);
 		init_cpu_ftr_reg(SYS_ID_ISAR4_EL1, info->reg_id_isar4);
 		init_cpu_ftr_reg(SYS_ID_ISAR5_EL1, info->reg_id_isar5);
+		init_cpu_ftr_reg(SYS_ID_ISAR6_EL1, info->reg_id_isar6);
 		init_cpu_ftr_reg(SYS_ID_MMFR0_EL1, info->reg_id_mmfr0);
 		init_cpu_ftr_reg(SYS_ID_MMFR1_EL1, info->reg_id_mmfr1);
 		init_cpu_ftr_reg(SYS_ID_MMFR2_EL1, info->reg_id_mmfr2);
@@ -756,6 +758,8 @@ void update_cpu_features(int cpu,
 					info->reg_id_isar4, boot->reg_id_isar4);
 		taint |= check_update_ftr_reg(SYS_ID_ISAR5_EL1, cpu,
 					info->reg_id_isar5, boot->reg_id_isar5);
+		taint |= check_update_ftr_reg(SYS_ID_ISAR6_EL1, cpu,
+					info->reg_id_isar6, boot->reg_id_isar6);
 
 		/*
 		 * Regardless of the value of the AuxReg field, the AIFSR, ADFSR, and
@@ -834,6 +838,7 @@ static u64 __read_sysreg_by_encoding(u32 sys_id)
 	read_sysreg_case(SYS_ID_ISAR3_EL1);
 	read_sysreg_case(SYS_ID_ISAR4_EL1);
 	read_sysreg_case(SYS_ID_ISAR5_EL1);
+	read_sysreg_case(SYS_ID_ISAR6_EL1);
 	read_sysreg_case(SYS_MVFR0_EL1);
 	read_sysreg_case(SYS_MVFR1_EL1);
 	read_sysreg_case(SYS_MVFR2_EL1);
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index 10121f5..6005d38 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -362,6 +362,7 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
 		info->reg_id_isar3 = read_cpuid(ID_ISAR3_EL1);
 		info->reg_id_isar4 = read_cpuid(ID_ISAR4_EL1);
 		info->reg_id_isar5 = read_cpuid(ID_ISAR5_EL1);
+		info->reg_id_isar6 = read_cpuid(ID_ISAR6_EL1);
 		info->reg_id_mmfr0 = read_cpuid(ID_MMFR0_EL1);
 		info->reg_id_mmfr1 = read_cpuid(ID_MMFR1_EL1);
 		info->reg_id_mmfr2 = read_cpuid(ID_MMFR2_EL1);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 7dadd24..a6b8ca1 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1424,7 +1424,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	ID_SANITISED(ID_ISAR4_EL1),
 	ID_SANITISED(ID_ISAR5_EL1),
 	ID_SANITISED(ID_MMFR4_EL1),
-	ID_UNALLOCATED(2,7),
+	ID_SANITISED(ID_ISAR6_EL1),
 
 	/* CRm=3 */
 	ID_SANITISED(MVFR0_EL1),
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
