Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8169F12509E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 19:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tmYCjfx28VBPRa1B6NR7F5nWoBXPitIM7hHmH6p0PQU=; b=kV8DL+9TaA5PKvHSDKsxXjvkQx
	vT9P1Bb2ZPmhW92MwxUEP2jfEEjGna/R6loheuyMhkICxsEHGzPWH+dOVWUs95VGiCt0B/r6IEU01
	OaUzt3QSsFBoxvDL2DUef9fd3RjkbbWlXPW1mfs4yki4fG+qZdmXA3OGRzldICj9hIjTZxwcziN4s
	+mAmWOuFl/plIb4YIM6n+jDvRbmNUvaAt5/MJ4aZXxAlxB+n+0PHvBNM0wiBhIxWV13SqM2aunq+W
	GQsp+2Dc3IoA4K7C7tkgG4kU3s75+fcOTw1UAj9KKnpgvnpP08wDP82jLf7sxIRZGimwQceH5UA45
	C1JueqSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihe36-00088d-IE; Wed, 18 Dec 2019 18:27:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihe2W-0007sN-H1
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 18:27:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0B3AC1FB;
 Wed, 18 Dec 2019 10:27:16 -0800 (PST)
Received: from e108754-lin.cambridge.arm.com (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EA33A3F67D;
 Wed, 18 Dec 2019 10:27:13 -0800 (PST)
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: catalin.marinas@arm.com, will@kernel.org, mark.rutland@arm.com,
 maz@kernel.org, suzuki.poulose@arm.com, sudeep.holla@arm.com,
 dietmar.eggemann@arm.com, ionela.voinescu@arm.com
Subject: [PATCH v2 3/6] arm64/kvm: disable access to AMU registers from kvm
 guests
Date: Wed, 18 Dec 2019 18:26:04 +0000
Message-Id: <20191218182607.21607-4-ionela.voinescu@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218182607.21607-1-ionela.voinescu@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_102716_690587_CA81F9F1 
X-CRM114-Status: GOOD (  13.46  )
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
Cc: linux-doc@vger.kernel.org, peterz@infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
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
index 6e5d839f42b5..dd20fb185d56 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -266,10 +266,11 @@
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
index 72fbbd86eb5e..0bca87a2621f 100644
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
index 9f2165937f7d..940ab9b4c98b 100644
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
@@ -1078,8 +1092,12 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
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
@@ -1565,6 +1583,79 @@ static const struct sys_reg_desc sys_reg_descs[] = {
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
