Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6FD12F42
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DlhpGctm91/W7ZDfgFMMwkqzABxpEA31t0iaN7Xb04M=; b=dNHIhW9rupFZ9y
	2OMiOiPebd/PL3GJwPafTiURlwRC7NyAHdw7ubYRwZigMZkGO5d4c5y95Qmc6BPfltonffEKDNdTD
	ewMxgLaviTlVzX2BUXmtkdJ6UTbYN3HMAsEA+Qppj1JGgvEy9ilk6lkZ0ZTGxMl96HkmamJATRyCK
	iM0GS8CnAxiP9Pqblx3TDWqI2TGwBkUOfOXTbgLr7f52SAbFJhQeZ1DexBW4O3IjK61Y3q+X6fjrd
	8YLr8l9ZpG4av1g3r5/Lg7/iL0tDY0EBweR9gG1bW7KH0J5C3IHQ9sucIWm5I1l+3fhsyL12Hjt6Q
	q2pOIgxp4batxjyDxvoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYJ9-0003F8-92; Fri, 03 May 2019 13:32:59 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYHT-0000pd-8t
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:31:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V53G2CSxVmMx+CHfxG/cX5V2NKWJo3VQnZpehAKGL+E=; b=DoVgGJfPcN1UYViGCyw38JH4FP
 X9Bx+b7pZ35nRXCa3ADbxIzpBqX+wEAXpfdHyfBE3iTJkENOV40lxHpbjsmR4ocNrQPnhVBVSJs/5
 qlwdLV5FYOTAhEAkhFOVtDvPbtOE8E8+OL7zVNemKy7sFarMq5JZ8Dt1oPQjcWdKVqyljhxj/9u87
 czdB6yESvSGzjp1EkFhbCEKInoFADzCdMcxsp6CVvNZvB/0OnEhy8R+ysNRV1QMGZnBaNZ47BXQ9g
 DRhntVNiob5ThfOqmzBXGhCg+7PDooaDISIvwMcFuQGBW+osrOeNixutILSLjDXet9wpKNctNygOJ
 pa8jgzpQ==;
Received: from foss.arm.com ([217.140.101.70])
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXZB-0005fL-Bu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:45:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BBF6165C;
 Fri,  3 May 2019 05:45:25 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A91E63F220;
 Fri,  3 May 2019 05:45:21 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 12/56] KVM: arm64/sve: System register context switch and
 access support
Date: Fri,  3 May 2019 13:43:43 +0100
Message-Id: <20190503124427.190206-13-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_084529_557056_85784EBD 
X-CRM114-Status: GOOD (  26.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dave Martin <Dave.Martin@arm.com>

This patch adds the necessary support for context switching ZCR_EL1
for each vcpu.

ZCR_EL1 is trapped alongside the FPSIMD/SVE registers, so it makes
sense for it to be handled as part of the guest FPSIMD/SVE context
for context switch purposes instead of handling it as a general
system register.  This means that it can be switched in lazily at
the appropriate time.  No effort is made to track host context for
this register, since SVE requires VHE: thus the hosts's value for
this register lives permanently in ZCR_EL2 and does not alias the
guest's value at any time.

The Hyp switch and fpsimd context handling code is extended
appropriately.

Accessors are added in sys_regs.c to expose the SVE system
registers and ID register fields.  Because these need to be
conditionally visible based on the guest configuration, they are
implemented separately for now rather than by use of the generic
system register helpers.  This may be abstracted better later on
when/if there are more features requiring this model.

ID_AA64ZFR0_EL1 is RO-RAZ for MRS/MSR when SVE is disabled for the
guest, but for compatibility with non-SVE aware KVM implementations
the register should not be enumerated at all for KVM_GET_REG_LIST
in this case.  For consistency we also reject ioctl access to the
register.  This ensures that a non-SVE-enabled guest looks the same
to userspace, irrespective of whether the kernel KVM implementation
supports SVE.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Tested-by: zhang.lei <zhang.lei@jp.fujitsu.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  1 +
 arch/arm64/include/asm/sysreg.h   |  3 ++
 arch/arm64/kvm/fpsimd.c           |  9 +++-
 arch/arm64/kvm/hyp/switch.c       |  3 ++
 arch/arm64/kvm/sys_regs.c         | 83 +++++++++++++++++++++++++++++--
 5 files changed, 93 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index ad4f7f004498..22cf484b561f 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -121,6 +121,7 @@ enum vcpu_sysreg {
 	SCTLR_EL1,	/* System Control Register */
 	ACTLR_EL1,	/* Auxiliary Control Register */
 	CPACR_EL1,	/* Coprocessor Access Control */
+	ZCR_EL1,	/* SVE Control */
 	TTBR0_EL1,	/* Translation Table Base Register 0 */
 	TTBR1_EL1,	/* Translation Table Base Register 1 */
 	TCR_EL1,	/* Translation Control Register */
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index 5b267dec6194..4d6262df79bb 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -454,6 +454,9 @@
 #define SYS_ICH_LR14_EL2		__SYS__LR8_EL2(6)
 #define SYS_ICH_LR15_EL2		__SYS__LR8_EL2(7)
 
+/* VHE encodings for architectural EL0/1 system registers */
+#define SYS_ZCR_EL12			sys_reg(3, 5, 1, 2, 0)
+
 /* Common SCTLR_ELx flags. */
 #define SCTLR_ELx_DSSBS	(_BITUL(44))
 #define SCTLR_ELx_ENIA	(_BITUL(31))
diff --git a/arch/arm64/kvm/fpsimd.c b/arch/arm64/kvm/fpsimd.c
index 1cf4f0269471..7053bf402131 100644
--- a/arch/arm64/kvm/fpsimd.c
+++ b/arch/arm64/kvm/fpsimd.c
@@ -103,14 +103,21 @@ void kvm_arch_vcpu_ctxsync_fp(struct kvm_vcpu *vcpu)
 void kvm_arch_vcpu_put_fp(struct kvm_vcpu *vcpu)
 {
 	unsigned long flags;
+	bool host_has_sve = system_supports_sve();
+	bool guest_has_sve = vcpu_has_sve(vcpu);
 
 	local_irq_save(flags);
 
 	if (vcpu->arch.flags & KVM_ARM64_FP_ENABLED) {
+		u64 *guest_zcr = &vcpu->arch.ctxt.sys_regs[ZCR_EL1];
+
 		/* Clean guest FP state to memory and invalidate cpu view */
 		fpsimd_save();
 		fpsimd_flush_cpu_state();
-	} else if (system_supports_sve()) {
+
+		if (guest_has_sve)
+			*guest_zcr = read_sysreg_s(SYS_ZCR_EL12);
+	} else if (host_has_sve) {
 		/*
 		 * The FPSIMD/SVE state in the CPU has not been touched, and we
 		 * have SVE (and VHE): CPACR_EL1 (alias CPTR_EL2) has been
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 3563fe655cd5..9d46066276b9 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -351,6 +351,9 @@ static bool __hyp_text __hyp_switch_fpsimd(struct kvm_vcpu *vcpu)
 
 	__fpsimd_restore_state(&vcpu->arch.ctxt.gp_regs.fp_regs);
 
+	if (vcpu_has_sve(vcpu))
+		write_sysreg_s(vcpu->arch.ctxt.sys_regs[ZCR_EL1], SYS_ZCR_EL12);
+
 	/* Skip restoring fpexc32 for AArch64 guests */
 	if (!(read_sysreg(hcr_el2) & HCR_RW))
 		write_sysreg(vcpu->arch.ctxt.sys_regs[FPEXC32_EL2],
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index c86a7b0d3e6b..09e9b0625911 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1051,10 +1051,7 @@ static u64 read_id_reg(const struct kvm_vcpu *vcpu,
 			 (u32)r->CRn, (u32)r->CRm, (u32)r->Op2);
 	u64 val = raz ? 0 : read_sanitised_ftr_reg(id);
 
-	if (id == SYS_ID_AA64PFR0_EL1) {
-		if (val & (0xfUL << ID_AA64PFR0_SVE_SHIFT))
-			kvm_debug("SVE unsupported for guests, suppressing\n");
-
+	if (id == SYS_ID_AA64PFR0_EL1 && !vcpu_has_sve(vcpu)) {
 		val &= ~(0xfUL << ID_AA64PFR0_SVE_SHIFT);
 	} else if (id == SYS_ID_AA64ISAR1_EL1) {
 		const u64 ptrauth_mask = (0xfUL << ID_AA64ISAR1_APA_SHIFT) |
@@ -1101,6 +1098,81 @@ static int reg_from_user(u64 *val, const void __user *uaddr, u64 id);
 static int reg_to_user(void __user *uaddr, const u64 *val, u64 id);
 static u64 sys_reg_to_index(const struct sys_reg_desc *reg);
 
+/* Visibility overrides for SVE-specific control registers */
+static unsigned int sve_visibility(const struct kvm_vcpu *vcpu,
+				   const struct sys_reg_desc *rd)
+{
+	if (vcpu_has_sve(vcpu))
+		return 0;
+
+	return REG_HIDDEN_USER | REG_HIDDEN_GUEST;
+}
+
+/* Visibility overrides for SVE-specific ID registers */
+static unsigned int sve_id_visibility(const struct kvm_vcpu *vcpu,
+				      const struct sys_reg_desc *rd)
+{
+	if (vcpu_has_sve(vcpu))
+		return 0;
+
+	return REG_HIDDEN_USER;
+}
+
+/* Generate the emulated ID_AA64ZFR0_EL1 value exposed to the guest */
+static u64 guest_id_aa64zfr0_el1(const struct kvm_vcpu *vcpu)
+{
+	if (!vcpu_has_sve(vcpu))
+		return 0;
+
+	return read_sanitised_ftr_reg(SYS_ID_AA64ZFR0_EL1);
+}
+
+static bool access_id_aa64zfr0_el1(struct kvm_vcpu *vcpu,
+				   struct sys_reg_params *p,
+				   const struct sys_reg_desc *rd)
+{
+	if (p->is_write)
+		return write_to_read_only(vcpu, p, rd);
+
+	p->regval = guest_id_aa64zfr0_el1(vcpu);
+	return true;
+}
+
+static int get_id_aa64zfr0_el1(struct kvm_vcpu *vcpu,
+		const struct sys_reg_desc *rd,
+		const struct kvm_one_reg *reg, void __user *uaddr)
+{
+	u64 val;
+
+	if (!vcpu_has_sve(vcpu))
+		return -ENOENT;
+
+	val = guest_id_aa64zfr0_el1(vcpu);
+	return reg_to_user(uaddr, &val, reg->id);
+}
+
+static int set_id_aa64zfr0_el1(struct kvm_vcpu *vcpu,
+		const struct sys_reg_desc *rd,
+		const struct kvm_one_reg *reg, void __user *uaddr)
+{
+	const u64 id = sys_reg_to_index(rd);
+	int err;
+	u64 val;
+
+	if (!vcpu_has_sve(vcpu))
+		return -ENOENT;
+
+	err = reg_from_user(&val, uaddr, id);
+	if (err)
+		return err;
+
+	/* This is what we mean by invariant: you can't change it. */
+	if (val != guest_id_aa64zfr0_el1(vcpu))
+		return -EINVAL;
+
+	return 0;
+}
+
 /*
  * cpufeature ID register user accessors
  *
@@ -1346,7 +1418,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	ID_SANITISED(ID_AA64PFR1_EL1),
 	ID_UNALLOCATED(4,2),
 	ID_UNALLOCATED(4,3),
-	ID_UNALLOCATED(4,4),
+	{ SYS_DESC(SYS_ID_AA64ZFR0_EL1), access_id_aa64zfr0_el1, .get_user = get_id_aa64zfr0_el1, .set_user = set_id_aa64zfr0_el1, .visibility = sve_id_visibility },
 	ID_UNALLOCATED(4,5),
 	ID_UNALLOCATED(4,6),
 	ID_UNALLOCATED(4,7),
@@ -1383,6 +1455,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 
 	{ SYS_DESC(SYS_SCTLR_EL1), access_vm_reg, reset_val, SCTLR_EL1, 0x00C50078 },
 	{ SYS_DESC(SYS_CPACR_EL1), NULL, reset_val, CPACR_EL1, 0 },
+	{ SYS_DESC(SYS_ZCR_EL1), NULL, reset_val, ZCR_EL1, 0, .visibility = sve_visibility },
 	{ SYS_DESC(SYS_TTBR0_EL1), access_vm_reg, reset_unknown, TTBR0_EL1 },
 	{ SYS_DESC(SYS_TTBR1_EL1), access_vm_reg, reset_unknown, TTBR1_EL1 },
 	{ SYS_DESC(SYS_TCR_EL1), access_vm_reg, reset_val, TCR_EL1, 0 },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
