Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AA6159914
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:47:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JH8Z8UOaz9ZN3B4h7MlVc1cmqBYXpLgzJQdxbhkPtyM=; b=iEOo+QYMd6Crc1rGLRA0Ak1Mmt
	RIjp8jr2OPtTZ6SBntkitmDDNGixuOgerwsKJO+BvaWyGZK4WtUA1trONKaQsxLDczsEjfnoMGIea
	KeI4phB1nFg36cti1QQuc+whn0EuQ2S78bZtEakn0XATQViMeniXA1uGF4O1dd2xbmuV1F0RdPfUW
	8OINKFEL0UCu1Y+9iprA/r/a1A6WhvWqUQ/xYVl4mozHt/dyIH9DMIHVh1jRyhiMCWeome11w5bOv
	lNhOCPEwNo9YJksHt0bXd8f54fXwQJUHi8CnywlyZ37lvHWPTcwRl6OXD6T+zHtTFI1/teWI6Tnlv
	HCQ/jNeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1aYt-0005Mz-JE; Tue, 11 Feb 2020 18:47:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aYI-0004uT-1h
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 18:46:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 662921FB;
 Tue, 11 Feb 2020 10:46:29 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.198.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 013073F68F;
 Tue, 11 Feb 2020 10:46:26 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 lukasz.luba@arm.com, valentin.schneider@arm.com, rjw@rjwysocki.net,
 ionela.voinescu@arm.com
Subject: [PATCH v3 3/7] arm64/kvm: disable access to AMU registers from kvm
 guests
Date: Tue, 11 Feb 2020 18:45:38 +0000
Message-Id: <20200211184542.29585-4-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211184542.29585-1-ionela.voinescu@arm.com>
References: <20200211184542.29585-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_104630_270566_1C4060EE 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org, viresh.kumar@linaro.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Access to the AMU counters should be disabled by default in kvm guests,
as information from the counters might reveal activity in other guests
or activity on the host.

Therefore, disable access to AMU registers from EL0 and EL1 in kvm
guests by:
 - Hiding the presence of the extension in the feature register
   (SYS_ID_AA64PFR0_EL1) on the VCPU.
 - Disabling access to the AMU registers before switching to the guest.
 - Trapping accesses and injecting an undefined instruction into the
   guest.

Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/kvm_arm.h |  1 +
 arch/arm64/kvm/hyp/switch.c      | 14 ++++-
 arch/arm64/kvm/sys_regs.c        | 93 +++++++++++++++++++++++++++++++-
 3 files changed, 105 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index 6e5d839f42b5..51c1d9918999 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -267,6 +267,7 @@
 
 /* Hyp Coprocessor Trap Register */
 #define CPTR_EL2_TCPAC	(1 << 31)
+#define CPTR_EL2_TAM	(1 << 30)
 #define CPTR_EL2_TTA	(1 << 20)
 #define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
 #define CPTR_EL2_TZ	(1 << 8)
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 72fbbd86eb5e..11b43a365743 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -90,6 +90,18 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
 	val = read_sysreg(cpacr_el1);
 	val |= CPACR_EL1_TTA;
 	val &= ~CPACR_EL1_ZEN;
+
+	/*
+	 * With VHE (HCR.E2H == 1), accesses to CPACR_EL1 are routed to
+	 * CPTR_EL2. In general, CPACR_EL1 has the same layout as CPTR_EL2,
+	 * except for some missing controls, such as TAM.
+	 * In this case, CPTR_EL2.TAM has the same position with or without
+	 * VHE (HCR.E2H == 1) which allows us to use here the CPTR_EL2.TAM
+	 * shift value for trapping the AMU accesses.
+	 */
+
+	val |= CPTR_EL2_TAM;
+
 	if (update_fp_enabled(vcpu)) {
 		if (vcpu_has_sve(vcpu))
 			val |= CPACR_EL1_ZEN;
@@ -111,7 +123,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 	__activate_traps_common(vcpu);
 
 	val = CPTR_EL2_DEFAULT;
-	val |= CPTR_EL2_TTA | CPTR_EL2_TZ;
+	val |= CPTR_EL2_TTA | CPTR_EL2_TZ | CPTR_EL2_TAM;
 	if (!update_fp_enabled(vcpu)) {
 		val |= CPTR_EL2_TFP;
 		__activate_traps_fpsimd32(vcpu);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 9f2165937f7d..adeaa65a4cf0 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1003,6 +1003,20 @@ static bool access_pmuserenr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 	{ SYS_DESC(SYS_PMEVTYPERn_EL0(n)),					\
 	  access_pmu_evtyper, reset_unknown, (PMEVTYPER0_EL0 + n), }
 
+static bool access_amu(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			     const struct sys_reg_desc *r)
+{
+	kvm_inject_undefined(vcpu);
+
+	return false;
+}
+
+/* Macro to expand the AMU counter and type registers*/
+#define AMU_AMEVCNTR0_EL0(n) { SYS_DESC(SYS_AMEVCNTR0_EL0(n)), access_amu }
+#define AMU_AMEVTYPE0_EL0(n) { SYS_DESC(SYS_AMEVTYPE0_EL0(n)), access_amu }
+#define AMU_AMEVCNTR1_EL0(n) { SYS_DESC(SYS_AMEVCNTR1_EL0(n)), access_amu }
+#define AMU_AMEVTYPE1_EL0(n) { SYS_DESC(SYS_AMEVTYPE1_EL0(n)), access_amu }
+
 static bool trap_ptrauth(struct kvm_vcpu *vcpu,
 			 struct sys_reg_params *p,
 			 const struct sys_reg_desc *rd)
@@ -1078,8 +1092,10 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);
 	u64 val = raz ? 0 : read_sanitised_ftr_reg(id);
 
-	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
-		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
+	if (id == SYS_ID_AA64PFR0_EL1) {
+		if (!vcpu_has_sve(vcpu))
+			val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
+		val &= ~(0xfUL << ID_AA64PFR0_AMU_SHIFT);
 	} else if (id == SYS_ID_AA64ISAR1_EL1 && !vcpu_has_ptrauth(vcpu)) {
 		val &= ~((0xfUL << ID_AA64ISAR1_APA_SHIFT) |
 			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
@@ -1565,6 +1581,79 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_TPIDR_EL0), NULL, reset_unknown, TPIDR_EL0 },
 	{ SYS_DESC(SYS_TPIDRRO_EL0), NULL, reset_unknown, TPIDRRO_EL0 },
 
+	{ SYS_DESC(SYS_AMCR_EL0), access_amu },
+	{ SYS_DESC(SYS_AMCFGR_EL0), access_amu },
+	{ SYS_DESC(SYS_AMCGCR_EL0), access_amu },
+	{ SYS_DESC(SYS_AMUSERENR_EL0), access_amu },
+	{ SYS_DESC(SYS_AMCNTENCLR0_EL0), access_amu },
+	{ SYS_DESC(SYS_AMCNTENSET0_EL0), access_amu },
+	{ SYS_DESC(SYS_AMCNTENCLR1_EL0), access_amu },
+	{ SYS_DESC(SYS_AMCNTENSET1_EL0), access_amu },
+	AMU_AMEVCNTR0_EL0(0),
+	AMU_AMEVCNTR0_EL0(1),
+	AMU_AMEVCNTR0_EL0(2),
+	AMU_AMEVCNTR0_EL0(3),
+	AMU_AMEVCNTR0_EL0(4),
+	AMU_AMEVCNTR0_EL0(5),
+	AMU_AMEVCNTR0_EL0(6),
+	AMU_AMEVCNTR0_EL0(7),
+	AMU_AMEVCNTR0_EL0(8),
+	AMU_AMEVCNTR0_EL0(9),
+	AMU_AMEVCNTR0_EL0(10),
+	AMU_AMEVCNTR0_EL0(11),
+	AMU_AMEVCNTR0_EL0(12),
+	AMU_AMEVCNTR0_EL0(13),
+	AMU_AMEVCNTR0_EL0(14),
+	AMU_AMEVCNTR0_EL0(15),
+	AMU_AMEVTYPE0_EL0(0),
+	AMU_AMEVTYPE0_EL0(1),
+	AMU_AMEVTYPE0_EL0(2),
+	AMU_AMEVTYPE0_EL0(3),
+	AMU_AMEVTYPE0_EL0(4),
+	AMU_AMEVTYPE0_EL0(5),
+	AMU_AMEVTYPE0_EL0(6),
+	AMU_AMEVTYPE0_EL0(7),
+	AMU_AMEVTYPE0_EL0(8),
+	AMU_AMEVTYPE0_EL0(9),
+	AMU_AMEVTYPE0_EL0(10),
+	AMU_AMEVTYPE0_EL0(11),
+	AMU_AMEVTYPE0_EL0(12),
+	AMU_AMEVTYPE0_EL0(13),
+	AMU_AMEVTYPE0_EL0(14),
+	AMU_AMEVTYPE0_EL0(15),
+	AMU_AMEVCNTR1_EL0(0),
+	AMU_AMEVCNTR1_EL0(1),
+	AMU_AMEVCNTR1_EL0(2),
+	AMU_AMEVCNTR1_EL0(3),
+	AMU_AMEVCNTR1_EL0(4),
+	AMU_AMEVCNTR1_EL0(5),
+	AMU_AMEVCNTR1_EL0(6),
+	AMU_AMEVCNTR1_EL0(7),
+	AMU_AMEVCNTR1_EL0(8),
+	AMU_AMEVCNTR1_EL0(9),
+	AMU_AMEVCNTR1_EL0(10),
+	AMU_AMEVCNTR1_EL0(11),
+	AMU_AMEVCNTR1_EL0(12),
+	AMU_AMEVCNTR1_EL0(13),
+	AMU_AMEVCNTR1_EL0(14),
+	AMU_AMEVCNTR1_EL0(15),
+	AMU_AMEVTYPE1_EL0(0),
+	AMU_AMEVTYPE1_EL0(1),
+	AMU_AMEVTYPE1_EL0(2),
+	AMU_AMEVTYPE1_EL0(3),
+	AMU_AMEVTYPE1_EL0(4),
+	AMU_AMEVTYPE1_EL0(5),
+	AMU_AMEVTYPE1_EL0(6),
+	AMU_AMEVTYPE1_EL0(7),
+	AMU_AMEVTYPE1_EL0(8),
+	AMU_AMEVTYPE1_EL0(9),
+	AMU_AMEVTYPE1_EL0(10),
+	AMU_AMEVTYPE1_EL0(11),
+	AMU_AMEVTYPE1_EL0(12),
+	AMU_AMEVTYPE1_EL0(13),
+	AMU_AMEVTYPE1_EL0(14),
+	AMU_AMEVTYPE1_EL0(15),
+
 	{ SYS_DESC(SYS_CNTP_TVAL_EL0), access_arch_timer },
 	{ SYS_DESC(SYS_CNTP_CTL_EL0), access_arch_timer },
 	{ SYS_DESC(SYS_CNTP_CVAL_EL0), access_arch_timer },
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
