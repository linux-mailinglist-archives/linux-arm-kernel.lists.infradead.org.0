Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E32B4F96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 15:44:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m+lDcJtcdnctgL9Zp+5Q51KodH/8xemstkUUVYnhUqg=; b=iu8vZL4JxOtV8IHr6UOG4//1vw
	VdYS8OkTOUFFu6gSot+BEmtevfpAFBkgqm9ymaofCWq0zQq4Pll7D42Vtc2gf28Efb9iN4gyiwfdF
	iLaYaKRxONJK3/dxEBBVMXpKP6YqSn/mqSlKkfArPNvbcz1bIQG3ee8Tocp8Mw5Rblg3GpXAsTylg
	P+gIe2JAddIbOa4VwoIdRVe5OWk6tfVuH7n7ohGZNHsZ0aJR6WJns+CkLAeNnD5xRhohEzPLjBFO/
	/xJieIWlZpAOo8tJrtybK8cFe+3lHL+TW2i9MdD8YMoosuqYtuF9vz/MOzuVdGzqQfcKpB0zC/uwj
	vncJ1jhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iADmP-0008Ew-K3; Tue, 17 Sep 2019 13:44:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iADlb-0007n6-2Y
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 13:43:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AC0D28;
 Tue, 17 Sep 2019 06:43:38 -0700 (PDT)
Received: from e108754-lin.cambridge.arm.com (e108754-lin.cambridge.arm.com
 [10.1.199.68])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2B7843F575;
 Tue, 17 Sep 2019 06:43:37 -0700 (PDT)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, maz@kernel.org, corbet@lwn.net
Subject: [PATCH 3/4] arm64/kvm: disable access to AMU registers from kvm guests
Date: Tue, 17 Sep 2019 14:42:27 +0100
Message-Id: <20190917134228.5369-4-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190917134228.5369-1-ionela.voinescu@arm.com>
References: <20190917134228.5369-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_064339_365547_60F56418 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: linux-doc@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Ionela Voinescu <ionela.voinescu@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
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
   (SYS_ID_AA64PFR0_EL1 and SYS_ID_PFR0_EL1) on the VCPU.
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
 arch/arm64/include/asm/kvm_arm.h |  7 ++-
 arch/arm64/kvm/hyp/switch.c      | 13 ++++-
 arch/arm64/kvm/sys_regs.c        | 95 +++++++++++++++++++++++++++++++-
 3 files changed, 109 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index ddf9d762ac62..df957156d55e 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -267,10 +267,11 @@
 #define CPTR_EL2_TFP_SHIFT 10
 
 /* Hyp Coprocessor Trap Register */
-#define CPTR_EL2_TCPAC	(1 << 31)
-#define CPTR_EL2_TTA	(1 << 20)
-#define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
 #define CPTR_EL2_TZ	(1 << 8)
+#define CPTR_EL2_TFP	(1 << CPTR_EL2_TFP_SHIFT)
+#define CPTR_EL2_TTA	(1 << 20)
+#define CPTR_EL2_TAM	(1 << 30)
+#define CPTR_EL2_TCPAC	(1 << 31)
 #define CPTR_EL2_RES1	0x000032ff /* known RES1 bits in CPTR_EL2 */
 #define CPTR_EL2_DEFAULT	CPTR_EL2_RES1
 
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 3d3815020e36..6cb37721eb94 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -90,6 +90,17 @@ static void activate_traps_vhe(struct kvm_vcpu *vcpu)
 	val = read_sysreg(cpacr_el1);
 	val |= CPACR_EL1_TTA;
 	val &= ~CPACR_EL1_ZEN;
+
+	/*
+	 * With VHE enabled, we have HCR_EL2.{E2H,TGE} = {1,1}. Note that in
+	 * this case CPACR_EL1 has the same bit layout as CPTR_EL2, and
+	 * CPACR_EL1 accessing instructions are redefined to access CPTR_EL2.
+	 * Therefore use CPTR_EL2.TAM bit reference to activate AMU register
+	 * traps.
+	 */
+
+	val |= CPTR_EL2_TAM;
+
 	if (update_fp_enabled(vcpu)) {
 		if (vcpu_has_sve(vcpu))
 			val |= CPACR_EL1_ZEN;
@@ -111,7 +122,7 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 	__activate_traps_common(vcpu);
 
 	val = CPTR_EL2_DEFAULT;
-	val |= CPTR_EL2_TTA | CPTR_EL2_TZ;
+	val |= CPTR_EL2_TTA | CPTR_EL2_TZ | CPTR_EL2_TAM;
 	if (!update_fp_enabled(vcpu)) {
 		val |= CPTR_EL2_TFP;
 		__activate_traps_fpsimd32(vcpu);
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 2071260a275b..1029cd1bc8cc 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -999,6 +999,20 @@ static bool access_pmuserenr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
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
@@ -1074,8 +1088,12 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);
 	u64 val = raz ? 0 : read_sanitised_ftr_reg(id);
 
-	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
-		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
+	if (id == SYS_ID_AA64PFR0_EL1) {
+		if (!vcpu_has_sve(vcpu))
+			val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
+		val &= ~(0xfUL << ID_AA64PFR0_AMU_SHIFT);
+	} else if (id == SYS_ID_PFR0_EL1) {
+		val &= ~(0xfUL << ID_PFR0_AMU_SHIFT);
 	} else if (id == SYS_ID_AA64ISAR1_EL1 && !vcpu_has_ptrauth(vcpu)) {
 		val &= ~((0xfUL << ID_AA64ISAR1_APA_SHIFT) |
 			 (0xfUL << ID_AA64ISAR1_API_SHIFT) |
@@ -1561,6 +1579,79 @@ static const struct sys_reg_desc sys_reg_descs[] = {
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
