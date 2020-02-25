Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F42316F3F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 00:54:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahtU1xeDndoV/mi5koEuYtvoxkRKVYKt4xf/mFm8z5E=; b=DPfTsQweDFfYv3
	O/0oXH+W0uRPHtH7o4Gs6tQBaNRMZFmRaAaWQ7bqf6GYTPN0gYIPtZ+oUXkgEUiXq9DikWVhKCrbY
	SLgagt/I9cYtZI+2sUecEymDbZA8p89tRV3f9nQgB+mGmixvVavymEC/SL2FwZFZQRJHqnydAqLHS
	DsYEPc/ySl5HtpOiyXu+Wbk6AEznRnBOtJH4JKOBAbGtpWxsKFqLXtnJcuQiQpME2ZD73wUIdmLDm
	Yt0FYLsV+5TbIS+U3lU9guAbL26EBM4rI9GKq/w96p4ZLi57yHJSuLvlSTAcv0eNe9y9lQSI9WaOM
	NVW/NaVh09CHpHuZd4jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6k1W-0005JF-Kk; Tue, 25 Feb 2020 23:53:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6k0K-0004MP-T4
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 23:52:47 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C04D21D7E;
 Tue, 25 Feb 2020 23:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582674764;
 bh=CclWsaZY9hYYuPJbs5HY/W1O08RLE98XK+5LY530Big=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z5cQFk7bN8HatK2x7rU+/QQk5CXI1UnFUExaQTTYskDdN6B7wa+bHQpmle67huyDf
 Z7CFzNqpc50eStEcRmTp9uw80KOaXlGNA19zgbJDiLItg5kk0dOe3yxDknz+lFA0zP
 8cvOt8GoabO/mX2tTj/yS/eh4dBPb7sJoF+ECX1E=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j6k0I-007xuY-L2; Tue, 25 Feb 2020 23:52:42 +0000
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 3/5] KVM: arm64: Ask the compiler to __always_inline functions
 used at HYP
Date: Tue, 25 Feb 2020 23:52:21 +0000
Message-Id: <20200225235223.12839-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225235223.12839-1-maz@kernel.org>
References: <20200225235223.12839-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, james.morse@arm.com, jcline@redhat.com,
 mark.rutland@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_155244_980002_18A27414 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Jeremy Cline <jcline@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: James Morse <james.morse@arm.com>

On non VHE CPUs, KVM's __hyp_text contains code run at EL2 while the rest
of the kernel runs at EL1. This code lives in its own section with start
and end markers so we can map it to EL2.

The compiler may decide not to inline static-inline functions from the
header file. It may also decide not to put these out-of-line functions
in the same section, meaning they aren't mapped when called at EL2.

Clang-9 does exactly this with __kern_hyp_va() and a few others when
x18 is reserved for the shadow call stack. Add the additional __always_
hint to all the static-inlines that are called from a hyp file.

Signed-off-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200220165839.256881-2-james.morse@arm.com

----
kvm_get_hyp_vector() pulls in all the regular per-cpu accessors
and this_cpu_has_cap(), fortunately its only called for VHE.
---
 arch/arm64/include/asm/arch_gicv3.h  |  2 +-
 arch/arm64/include/asm/cpufeature.h  |  2 +-
 arch/arm64/include/asm/kvm_emulate.h | 48 ++++++++++++++--------------
 arch/arm64/include/asm/kvm_mmu.h     |  3 +-
 arch/arm64/include/asm/virt.h        |  2 +-
 5 files changed, 29 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index 89e4c8b79349..07597028bb00 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -32,7 +32,7 @@ static inline void gic_write_eoir(u32 irq)
 	isb();
 }
 
-static inline void gic_write_dir(u32 irq)
+static __always_inline void gic_write_dir(u32 irq)
 {
 	write_sysreg_s(irq, SYS_ICC_DIR_EL1);
 	isb();
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 4261d55e8506..0e6d03c7e368 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -581,7 +581,7 @@ static inline bool system_supports_sve(void)
 		cpus_have_const_cap(ARM64_SVE);
 }
 
-static inline bool system_supports_cnp(void)
+static __always_inline bool system_supports_cnp(void)
 {
 	return IS_ENABLED(CONFIG_ARM64_CNP) &&
 		cpus_have_const_cap(ARM64_HAS_CNP);
diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 688c63412cc2..f658dda12364 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -36,7 +36,7 @@ void kvm_inject_undef32(struct kvm_vcpu *vcpu);
 void kvm_inject_dabt32(struct kvm_vcpu *vcpu, unsigned long addr);
 void kvm_inject_pabt32(struct kvm_vcpu *vcpu, unsigned long addr);
 
-static inline bool vcpu_el1_is_32bit(struct kvm_vcpu *vcpu)
+static __always_inline bool vcpu_el1_is_32bit(struct kvm_vcpu *vcpu)
 {
 	return !(vcpu->arch.hcr_el2 & HCR_RW);
 }
@@ -127,7 +127,7 @@ static inline void vcpu_set_vsesr(struct kvm_vcpu *vcpu, u64 vsesr)
 	vcpu->arch.vsesr_el2 = vsesr;
 }
 
-static inline unsigned long *vcpu_pc(const struct kvm_vcpu *vcpu)
+static __always_inline unsigned long *vcpu_pc(const struct kvm_vcpu *vcpu)
 {
 	return (unsigned long *)&vcpu_gp_regs(vcpu)->regs.pc;
 }
@@ -153,17 +153,17 @@ static inline void vcpu_write_elr_el1(const struct kvm_vcpu *vcpu, unsigned long
 		*__vcpu_elr_el1(vcpu) = v;
 }
 
-static inline unsigned long *vcpu_cpsr(const struct kvm_vcpu *vcpu)
+static __always_inline unsigned long *vcpu_cpsr(const struct kvm_vcpu *vcpu)
 {
 	return (unsigned long *)&vcpu_gp_regs(vcpu)->regs.pstate;
 }
 
-static inline bool vcpu_mode_is_32bit(const struct kvm_vcpu *vcpu)
+static __always_inline bool vcpu_mode_is_32bit(const struct kvm_vcpu *vcpu)
 {
 	return !!(*vcpu_cpsr(vcpu) & PSR_MODE32_BIT);
 }
 
-static inline bool kvm_condition_valid(const struct kvm_vcpu *vcpu)
+static __always_inline bool kvm_condition_valid(const struct kvm_vcpu *vcpu)
 {
 	if (vcpu_mode_is_32bit(vcpu))
 		return kvm_condition_valid32(vcpu);
@@ -181,13 +181,13 @@ static inline void vcpu_set_thumb(struct kvm_vcpu *vcpu)
  * coming from a read of ESR_EL2. Otherwise, it may give the wrong result on
  * AArch32 with banked registers.
  */
-static inline unsigned long vcpu_get_reg(const struct kvm_vcpu *vcpu,
+static __always_inline unsigned long vcpu_get_reg(const struct kvm_vcpu *vcpu,
 					 u8 reg_num)
 {
 	return (reg_num == 31) ? 0 : vcpu_gp_regs(vcpu)->regs.regs[reg_num];
 }
 
-static inline void vcpu_set_reg(struct kvm_vcpu *vcpu, u8 reg_num,
+static __always_inline void vcpu_set_reg(struct kvm_vcpu *vcpu, u8 reg_num,
 				unsigned long val)
 {
 	if (reg_num != 31)
@@ -264,12 +264,12 @@ static inline bool vcpu_mode_priv(const struct kvm_vcpu *vcpu)
 	return mode != PSR_MODE_EL0t;
 }
 
-static inline u32 kvm_vcpu_get_hsr(const struct kvm_vcpu *vcpu)
+static __always_inline u32 kvm_vcpu_get_hsr(const struct kvm_vcpu *vcpu)
 {
 	return vcpu->arch.fault.esr_el2;
 }
 
-static inline int kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
+static __always_inline int kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
 {
 	u32 esr = kvm_vcpu_get_hsr(vcpu);
 
@@ -279,12 +279,12 @@ static inline int kvm_vcpu_get_condition(const struct kvm_vcpu *vcpu)
 	return -1;
 }
 
-static inline unsigned long kvm_vcpu_get_hfar(const struct kvm_vcpu *vcpu)
+static __always_inline unsigned long kvm_vcpu_get_hfar(const struct kvm_vcpu *vcpu)
 {
 	return vcpu->arch.fault.far_el2;
 }
 
-static inline phys_addr_t kvm_vcpu_get_fault_ipa(const struct kvm_vcpu *vcpu)
+static __always_inline phys_addr_t kvm_vcpu_get_fault_ipa(const struct kvm_vcpu *vcpu)
 {
 	return ((phys_addr_t)vcpu->arch.fault.hpfar_el2 & HPFAR_MASK) << 8;
 }
@@ -299,7 +299,7 @@ static inline u32 kvm_vcpu_hvc_get_imm(const struct kvm_vcpu *vcpu)
 	return kvm_vcpu_get_hsr(vcpu) & ESR_ELx_xVC_IMM_MASK;
 }
 
-static inline bool kvm_vcpu_dabt_isvalid(const struct kvm_vcpu *vcpu)
+static __always_inline bool kvm_vcpu_dabt_isvalid(const struct kvm_vcpu *vcpu)
 {
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_ISV);
 }
@@ -319,17 +319,17 @@ static inline bool kvm_vcpu_dabt_issf(const struct kvm_vcpu *vcpu)
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SF);
 }
 
-static inline int kvm_vcpu_dabt_get_rd(const struct kvm_vcpu *vcpu)
+static __always_inline int kvm_vcpu_dabt_get_rd(const struct kvm_vcpu *vcpu)
 {
 	return (kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SRT_MASK) >> ESR_ELx_SRT_SHIFT;
 }
 
-static inline bool kvm_vcpu_dabt_iss1tw(const struct kvm_vcpu *vcpu)
+static __always_inline bool kvm_vcpu_dabt_iss1tw(const struct kvm_vcpu *vcpu)
 {
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_S1PTW);
 }
 
-static inline bool kvm_vcpu_dabt_iswrite(const struct kvm_vcpu *vcpu)
+static __always_inline bool kvm_vcpu_dabt_iswrite(const struct kvm_vcpu *vcpu)
 {
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_WNR) ||
 		kvm_vcpu_dabt_iss1tw(vcpu); /* AF/DBM update */
@@ -340,18 +340,18 @@ static inline bool kvm_vcpu_dabt_is_cm(const struct kvm_vcpu *vcpu)
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_CM);
 }
 
-static inline unsigned int kvm_vcpu_dabt_get_as(const struct kvm_vcpu *vcpu)
+static __always_inline unsigned int kvm_vcpu_dabt_get_as(const struct kvm_vcpu *vcpu)
 {
 	return 1 << ((kvm_vcpu_get_hsr(vcpu) & ESR_ELx_SAS) >> ESR_ELx_SAS_SHIFT);
 }
 
 /* This one is not specific to Data Abort */
-static inline bool kvm_vcpu_trap_il_is32bit(const struct kvm_vcpu *vcpu)
+static __always_inline bool kvm_vcpu_trap_il_is32bit(const struct kvm_vcpu *vcpu)
 {
 	return !!(kvm_vcpu_get_hsr(vcpu) & ESR_ELx_IL);
 }
 
-static inline u8 kvm_vcpu_trap_get_class(const struct kvm_vcpu *vcpu)
+static __always_inline u8 kvm_vcpu_trap_get_class(const struct kvm_vcpu *vcpu)
 {
 	return ESR_ELx_EC(kvm_vcpu_get_hsr(vcpu));
 }
@@ -361,17 +361,17 @@ static inline bool kvm_vcpu_trap_is_iabt(const struct kvm_vcpu *vcpu)
 	return kvm_vcpu_trap_get_class(vcpu) == ESR_ELx_EC_IABT_LOW;
 }
 
-static inline u8 kvm_vcpu_trap_get_fault(const struct kvm_vcpu *vcpu)
+static __always_inline u8 kvm_vcpu_trap_get_fault(const struct kvm_vcpu *vcpu)
 {
 	return kvm_vcpu_get_hsr(vcpu) & ESR_ELx_FSC;
 }
 
-static inline u8 kvm_vcpu_trap_get_fault_type(const struct kvm_vcpu *vcpu)
+static __always_inline u8 kvm_vcpu_trap_get_fault_type(const struct kvm_vcpu *vcpu)
 {
 	return kvm_vcpu_get_hsr(vcpu) & ESR_ELx_FSC_TYPE;
 }
 
-static inline bool kvm_vcpu_dabt_isextabt(const struct kvm_vcpu *vcpu)
+static __always_inline bool kvm_vcpu_dabt_isextabt(const struct kvm_vcpu *vcpu)
 {
 	switch (kvm_vcpu_trap_get_fault(vcpu)) {
 	case FSC_SEA:
@@ -390,7 +390,7 @@ static inline bool kvm_vcpu_dabt_isextabt(const struct kvm_vcpu *vcpu)
 	}
 }
 
-static inline int kvm_vcpu_sys_get_rt(struct kvm_vcpu *vcpu)
+static __always_inline int kvm_vcpu_sys_get_rt(struct kvm_vcpu *vcpu)
 {
 	u32 esr = kvm_vcpu_get_hsr(vcpu);
 	return ESR_ELx_SYS64_ISS_RT(esr);
@@ -504,7 +504,7 @@ static inline unsigned long vcpu_data_host_to_guest(struct kvm_vcpu *vcpu,
 	return data;		/* Leave LE untouched */
 }
 
-static inline void kvm_skip_instr(struct kvm_vcpu *vcpu, bool is_wide_instr)
+static __always_inline void kvm_skip_instr(struct kvm_vcpu *vcpu, bool is_wide_instr)
 {
 	if (vcpu_mode_is_32bit(vcpu))
 		kvm_skip_instr32(vcpu, is_wide_instr);
@@ -519,7 +519,7 @@ static inline void kvm_skip_instr(struct kvm_vcpu *vcpu, bool is_wide_instr)
  * Skip an instruction which has been emulated at hyp while most guest sysregs
  * are live.
  */
-static inline void __hyp_text __kvm_skip_instr(struct kvm_vcpu *vcpu)
+static __always_inline void __hyp_text __kvm_skip_instr(struct kvm_vcpu *vcpu)
 {
 	*vcpu_pc(vcpu) = read_sysreg_el2(SYS_ELR);
 	vcpu->arch.ctxt.gp_regs.regs.pstate = read_sysreg_el2(SYS_SPSR);
diff --git a/arch/arm64/include/asm/kvm_mmu.h b/arch/arm64/include/asm/kvm_mmu.h
index 53d846f1bfe7..785762860c63 100644
--- a/arch/arm64/include/asm/kvm_mmu.h
+++ b/arch/arm64/include/asm/kvm_mmu.h
@@ -93,7 +93,7 @@ void kvm_update_va_mask(struct alt_instr *alt,
 			__le32 *origptr, __le32 *updptr, int nr_inst);
 void kvm_compute_layout(void);
 
-static inline unsigned long __kern_hyp_va(unsigned long v)
+static __always_inline unsigned long __kern_hyp_va(unsigned long v)
 {
 	asm volatile(ALTERNATIVE_CB("and %0, %0, #1\n"
 				    "ror %0, %0, #1\n"
@@ -473,6 +473,7 @@ static inline int kvm_write_guest_lock(struct kvm *kvm, gpa_t gpa,
 extern void *__kvm_bp_vect_base;
 extern int __kvm_harden_el2_vector_slot;
 
+/*  This is only called on a VHE system */
 static inline void *kvm_get_hyp_vector(void)
 {
 	struct bp_hardening_data *data = arm64_get_bp_hardening_data();
diff --git a/arch/arm64/include/asm/virt.h b/arch/arm64/include/asm/virt.h
index 0958ed6191aa..61fd26752adc 100644
--- a/arch/arm64/include/asm/virt.h
+++ b/arch/arm64/include/asm/virt.h
@@ -83,7 +83,7 @@ static inline bool is_kernel_in_hyp_mode(void)
 	return read_sysreg(CurrentEL) == CurrentEL_EL2;
 }
 
-static inline bool has_vhe(void)
+static __always_inline bool has_vhe(void)
 {
 	if (cpus_have_const_cap(ARM64_HAS_VIRT_HOST_EXTN))
 		return true;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
