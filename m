Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D02D629A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AmJRHMp20ggjJU6f0BrglKCE7MuAVft91NTK+ogjdLo=; b=U6VyyiShgEl635
	iANAcMQSIstwo/rj5cUAtEj3AOyldbwhojkyjdmspgVUI+C0nF5ApHgdrA7j2QvWl4G7mSQSux0MP
	sY1kDouu5qdKS8rb9QgL0NhFO1BmnB35WNsgW/QiHtjp6X2nxuiEUATJr2Pw/EWt8GoW/EgHGS/Vc
	zruIIGJT5dWIdE9LlWNJTd9gwOIROXrLSYkotCT8rQad52I0GWjqkEM+n82jrv+UkoiwAezu26Eff
	WUfu1+5Ha9oCMtzJcASQPBxhb+giviE0Wm2rRLIwCRTi0/zD/l/85ACeX5IXkwHq5/CzqkXqrRXjh
	NWtG3A/qrILj1uhLeyjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzXe-000576-SW; Mon, 14 Oct 2019 12:33:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzX6-0004kt-RY
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:33:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 644301576;
 Mon, 14 Oct 2019 05:33:02 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 46F563F68E;
 Mon, 14 Oct 2019 05:33:01 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: stable@vger.kernel.org
Subject: [stable-4.4][PATCH 2/2] arm64: Rename cpuid_feature field extract
 routines
Date: Mon, 14 Oct 2019 13:32:54 +0100
Message-Id: <20191014123254.22002-3-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191014123254.22002-1-suzuki.poulose@arm.com>
References: <20191014123254.22002-1-suzuki.poulose@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053304_975677_C93029B4 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

commit 28c5dcb22f90113dea101b0421bc6971bccb7a74 upstream

Now that we have a clear understanding of the sign of a feature,
rename the routines to reflect the sign, so that it is not misused.
The cpuid_feature_extract_field() now accepts a 'sign' parameter.

This makes sure that the arm64_ftr_value() extracts the feature
field properly for signed fields.

Cc: stable@vger.kernel.org # v4.4
Signed-off-by: Suzuki K. Poulose <suzuki.poulose@arm.com>
Acked-by: Will Deacon <will.deacon@arm.com>
Acked-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/include/asm/cpufeature.h | 22 ++++++++++++++--------
 arch/arm64/kernel/cpufeature.c      |  2 +-
 arch/arm64/kernel/debug-monitors.c  |  2 +-
 arch/arm64/kvm/sys_regs.c           |  2 +-
 arch/arm64/mm/context.c             |  3 ++-
 5 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 690961a749da..518eaa63e633 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -121,15 +121,15 @@ static inline void cpus_set_cap(unsigned int num)
 }
 
 static inline int __attribute_const__
-cpuid_feature_extract_field_width(u64 features, int field, int width)
+cpuid_feature_extract_signed_field_width(u64 features, int field, int width)
 {
 	return (s64)(features << (64 - width - field)) >> (64 - width);
 }
 
 static inline int __attribute_const__
-cpuid_feature_extract_field(u64 features, int field)
+cpuid_feature_extract_signed_field(u64 features, int field)
 {
-	return cpuid_feature_extract_field_width(features, field, 4);
+	return cpuid_feature_extract_signed_field_width(features, field, 4);
 }
 
 static inline unsigned int __attribute_const__
@@ -149,17 +149,23 @@ static inline u64 arm64_ftr_mask(struct arm64_ftr_bits *ftrp)
 	return (u64)GENMASK(ftrp->shift + ftrp->width - 1, ftrp->shift);
 }
 
+static inline int __attribute_const__
+cpuid_feature_extract_field(u64 features, int field, bool sign)
+{
+	return (sign) ?
+		cpuid_feature_extract_signed_field(features, field) :
+		cpuid_feature_extract_unsigned_field(features, field);
+}
+
 static inline s64 arm64_ftr_value(struct arm64_ftr_bits *ftrp, u64 val)
 {
-	return ftrp->sign ?
-		cpuid_feature_extract_field_width(val, ftrp->shift, ftrp->width) :
-		cpuid_feature_extract_unsigned_field_width(val, ftrp->shift, ftrp->width);
+	return (s64)cpuid_feature_extract_field(val, ftrp->shift, ftrp->sign);
 }
 
 static inline bool id_aa64mmfr0_mixed_endian_el0(u64 mmfr0)
 {
-	return cpuid_feature_extract_field(mmfr0, ID_AA64MMFR0_BIGENDEL_SHIFT) == 0x1 ||
-		cpuid_feature_extract_field(mmfr0, ID_AA64MMFR0_BIGENDEL0_SHIFT) == 0x1;
+	return cpuid_feature_extract_unsigned_field(mmfr0, ID_AA64MMFR0_BIGENDEL_SHIFT) == 0x1 ||
+		cpuid_feature_extract_unsigned_field(mmfr0, ID_AA64MMFR0_BIGENDEL0_SHIFT) == 0x1;
 }
 
 void __init setup_cpu_features(void);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index 3949991e544b..a0118a07a4a5 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -600,7 +600,7 @@ u64 read_system_reg(u32 id)
 static bool
 feature_matches(u64 reg, const struct arm64_cpu_capabilities *entry)
 {
-	int val = cpuid_feature_extract_field(reg, entry->field_pos);
+	int val = cpuid_feature_extract_field(reg, entry->field_pos, entry->sign);
 
 	return val >= entry->min_field_value;
 }
diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
index c8875b64be90..8e7675e5ce4a 100644
--- a/arch/arm64/kernel/debug-monitors.c
+++ b/arch/arm64/kernel/debug-monitors.c
@@ -34,7 +34,7 @@
 /* Determine debug architecture. */
 u8 debug_monitors_arch(void)
 {
-	return cpuid_feature_extract_field(read_system_reg(SYS_ID_AA64DFR0_EL1),
+	return cpuid_feature_extract_unsigned_field(read_system_reg(SYS_ID_AA64DFR0_EL1),
 						ID_AA64DFR0_DEBUGVER_SHIFT);
 }
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index c2489f62c4fb..0a587e7b9b6e 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -687,7 +687,7 @@ static bool trap_dbgidr(struct kvm_vcpu *vcpu,
 	} else {
 		u64 dfr = read_system_reg(SYS_ID_AA64DFR0_EL1);
 		u64 pfr = read_system_reg(SYS_ID_AA64PFR0_EL1);
-		u32 el3 = !!cpuid_feature_extract_field(pfr, ID_AA64PFR0_EL3_SHIFT);
+		u32 el3 = !!cpuid_feature_extract_unsigned_field(pfr, ID_AA64PFR0_EL3_SHIFT);
 
 		p->regval = ((((dfr >> ID_AA64DFR0_WRPS_SHIFT) & 0xf) << 28) |
 			     (((dfr >> ID_AA64DFR0_BRPS_SHIFT) & 0xf) << 24) |
diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
index e87f53ff5f58..5c8759cd66f1 100644
--- a/arch/arm64/mm/context.c
+++ b/arch/arm64/mm/context.c
@@ -187,7 +187,8 @@ switch_mm_fastpath:
 
 static int asids_init(void)
 {
-	int fld = cpuid_feature_extract_field(read_cpuid(ID_AA64MMFR0_EL1), 4);
+	int fld = cpuid_feature_extract_unsigned_field(read_cpuid(ID_AA64MMFR0_EL1),
+						       ID_AA64MMFR0_ASID_SHIFT);
 
 	switch (fld) {
 	default:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
