Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2DC1C25C2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 15:36:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nFdFgFwX3LlynGocgHIdjUuKdCK5MEOXH2alyOgCgGw=; b=SVYzhUjwaizXEbdaBNyuL6+1HC
	zX22+9S4iSj6sswINwvUUEiCi3x/DXHONcRYpMMsP0zAYEK1t2MNTDNnu3jxHLjGdEJgQnt9BZp76
	9+A3yLopAv/c/tNvc+m1tk777r3syBOn9h47D3fTkpRKDrlShXgKUnZFiIw3tr999v0BYdcOYGzC4
	2oTkmt6AOZfd8sZV/a9Aat5lCfEy7pent1OYUUXXJXAuM80b9+VHEqOQImomb5WaJrAVb4feBdId5
	Np3le03TImbktyhNgEsXcu1f4QgLhd5AS/cn3opU7ni9c6kHYaIg2yEFwUwcNICv6N9Qq1OiYMxiV
	Ktsj0jXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUsJm-0006zJ-Eu; Sat, 02 May 2020 13:36:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUsIS-0005Cc-PE
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 13:35:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B64A430E;
 Sat,  2 May 2020 06:35:11 -0700 (PDT)
Received: from p8cg001049571a15.arm.com (unknown [10.163.71.130])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B64883F68F;
 Sat,  2 May 2020 06:35:08 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 05/16] arm64/cpufeature: Introduce ID_DFR1 CPU register
Date: Sat,  2 May 2020 19:03:54 +0530
Message-Id: <1588426445-24344-6-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
References: <1588426445-24344-1-git-send-email-anshuman.khandual@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_063513_122588_CB91D73F 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds basic building blocks required for ID_DFR1 CPU register which
provides top level information about the debug system in AArch32 state.
This is added per ARM DDI 0487F.a specification.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org

Suggested-by: Will Deacon <will@kernel.org>
Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>
---
 arch/arm64/include/asm/cpu.h    |  1 +
 arch/arm64/include/asm/sysreg.h |  3 +++
 arch/arm64/kernel/cpufeature.c  | 10 ++++++++++
 arch/arm64/kernel/cpuinfo.c     |  1 +
 arch/arm64/kvm/sys_regs.c       |  2 +-
 5 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/cpu.h b/arch/arm64/include/asm/cpu.h
index 464e828a994d..d9a78bdec409 100644
--- a/arch/arm64/include/asm/cpu.h
+++ b/arch/arm64/include/asm/cpu.h
@@ -33,6 +33,7 @@ struct cpuinfo_arm64 {
 	u64		reg_id_aa64zfr0;
 
 	u32		reg_id_dfr0;
+	u32		reg_id_dfr1;
 	u32		reg_id_isar0;
 	u32		reg_id_isar1;
 	u32		reg_id_isar2;
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index c977449e02db..2e1e922e1409 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -154,6 +154,7 @@
 #define SYS_MVFR1_EL1			sys_reg(3, 0, 0, 3, 1)
 #define SYS_MVFR2_EL1			sys_reg(3, 0, 0, 3, 2)
 #define SYS_ID_PFR2_EL1			sys_reg(3, 0, 0, 3, 4)
+#define SYS_ID_DFR1_EL1			sys_reg(3, 0, 0, 3, 5)
 
 #define SYS_ID_AA64PFR0_EL1		sys_reg(3, 0, 0, 4, 0)
 #define SYS_ID_AA64PFR1_EL1		sys_reg(3, 0, 0, 4, 1)
@@ -763,6 +764,8 @@
 #define ID_ISAR4_WITHSHIFTS_SHIFT	4
 #define ID_ISAR4_UNPRIV_SHIFT		0
 
+#define ID_DFR1_MTPMU_SHIFT		0
+
 #define ID_ISAR0_DIVIDE_SHIFT		24
 #define ID_ISAR0_DEBUG_SHIFT		20
 #define ID_ISAR0_COPROC_SHIFT		16
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index a8247bf92959..2ce952d9668d 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -451,6 +451,11 @@ static const struct arm64_ftr_bits ftr_id_dfr0[] = {
 	ARM64_FTR_END,
 };
 
+static const struct arm64_ftr_bits ftr_id_dfr1[] = {
+	S_ARM64_FTR_BITS(FTR_HIDDEN, FTR_STRICT, FTR_LOWER_SAFE, ID_DFR1_MTPMU_SHIFT, 4, 0),
+	ARM64_FTR_END,
+};
+
 static const struct arm64_ftr_bits ftr_zcr[] = {
 	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_LOWER_SAFE,
 		ZCR_ELx_LEN_SHIFT, ZCR_ELx_LEN_SIZE, 0),	/* LEN */
@@ -521,6 +526,7 @@ static const struct __ftr_reg_entry {
 	ARM64_FTR_REG(SYS_MVFR1_EL1, ftr_generic_32bits),
 	ARM64_FTR_REG(SYS_MVFR2_EL1, ftr_mvfr2),
 	ARM64_FTR_REG(SYS_ID_PFR2_EL1, ftr_id_pfr2),
+	ARM64_FTR_REG(SYS_ID_DFR1_EL1, ftr_id_dfr1),
 
 	/* Op1 = 0, CRn = 0, CRm = 4 */
 	ARM64_FTR_REG(SYS_ID_AA64PFR0_EL1, ftr_id_aa64pfr0),
@@ -714,6 +720,7 @@ void __init init_cpu_features(struct cpuinfo_arm64 *info)
 
 	if (id_aa64pfr0_32bit_el0(info->reg_id_aa64pfr0)) {
 		init_cpu_ftr_reg(SYS_ID_DFR0_EL1, info->reg_id_dfr0);
+		init_cpu_ftr_reg(SYS_ID_DFR1_EL1, info->reg_id_dfr1);
 		init_cpu_ftr_reg(SYS_ID_ISAR0_EL1, info->reg_id_isar0);
 		init_cpu_ftr_reg(SYS_ID_ISAR1_EL1, info->reg_id_isar1);
 		init_cpu_ftr_reg(SYS_ID_ISAR2_EL1, info->reg_id_isar2);
@@ -829,6 +836,8 @@ static int update_32bit_cpu_features(int cpu, struct cpuinfo_arm64 *info,
 
 	taint |= check_update_ftr_reg(SYS_ID_DFR0_EL1, cpu,
 				      info->reg_id_dfr0, boot->reg_id_dfr0);
+	taint |= check_update_ftr_reg(SYS_ID_DFR1_EL1, cpu,
+				      info->reg_id_dfr1, boot->reg_id_dfr1);
 	taint |= check_update_ftr_reg(SYS_ID_ISAR0_EL1, cpu,
 				      info->reg_id_isar0, boot->reg_id_isar0);
 	taint |= check_update_ftr_reg(SYS_ID_ISAR1_EL1, cpu,
@@ -992,6 +1001,7 @@ static u64 __read_sysreg_by_encoding(u32 sys_id)
 	read_sysreg_case(SYS_ID_PFR1_EL1);
 	read_sysreg_case(SYS_ID_PFR2_EL1);
 	read_sysreg_case(SYS_ID_DFR0_EL1);
+	read_sysreg_case(SYS_ID_DFR1_EL1);
 	read_sysreg_case(SYS_ID_MMFR0_EL1);
 	read_sysreg_case(SYS_ID_MMFR1_EL1);
 	read_sysreg_case(SYS_ID_MMFR2_EL1);
diff --git a/arch/arm64/kernel/cpuinfo.c b/arch/arm64/kernel/cpuinfo.c
index cb79b083f97f..50a281703d9d 100644
--- a/arch/arm64/kernel/cpuinfo.c
+++ b/arch/arm64/kernel/cpuinfo.c
@@ -362,6 +362,7 @@ static void __cpuinfo_store_cpu(struct cpuinfo_arm64 *info)
 	/* Update the 32bit ID registers only if AArch32 is implemented */
 	if (id_aa64pfr0_32bit_el0(info->reg_id_aa64pfr0)) {
 		info->reg_id_dfr0 = read_cpuid(ID_DFR0_EL1);
+		info->reg_id_dfr1 = read_cpuid(ID_DFR1_EL1);
 		info->reg_id_isar0 = read_cpuid(ID_ISAR0_EL1);
 		info->reg_id_isar1 = read_cpuid(ID_ISAR1_EL1);
 		info->reg_id_isar2 = read_cpuid(ID_ISAR2_EL1);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index b784b156edb3..c78aa15aaac8 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1457,7 +1457,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	ID_SANITISED(MVFR2_EL1),
 	ID_UNALLOCATED(3,3),
 	ID_SANITISED(ID_PFR2_EL1),
-	ID_UNALLOCATED(3,5),
+	ID_SANITISED(ID_DFR1_EL1),
 	ID_UNALLOCATED(3,6),
 	ID_UNALLOCATED(3,7),
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
