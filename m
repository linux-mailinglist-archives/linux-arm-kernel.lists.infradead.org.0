Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF821F9920
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRk4kU5g8xycoLDm3tamSLr4v+2EGlMf+UtfevXCW1Y=; b=cpVSI1K6Q2/uv6
	o3hPzVAkYU/iMKIkBxI9ybBqdoQGkkhUsdUWMG1K+qf0DlPlzxfmelDvt5/GAeLi/cgruPPJ8rogQ
	YeyOi52+RhSsWscq1WRbZXmunkTVNghjdxjQBura92yHpto/AYsYtslkEOkiGlfT9CZ7m7TqvcCLf
	tXg/D5Z2w4lfHckS1uuW48tH1KUK1OE5ABNwsjN7CDATV9jxcBaQbYeDRBbEMF3zF/VAkE3MuFH7o
	w8l9weoOY1lvVc2Eo2tGlJRNiP8T/hLxaWczIn+RHRZtuzMoCoivn9TR7WSliHCnaewXoo4f8e1F5
	2r1zLAh0hTbgb/IqOSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpKs-0006DP-Lc; Mon, 15 Jun 2020 13:39:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpF4-0007qS-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 151F620739;
 Mon, 15 Jun 2020 13:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592228017;
 bh=6CKW1V6Vu9qi/0rHkSefjiW1WCUUezAl2awyfb9sRP0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aKFgg1IBWU5h0BT2fPX+WQf51PThChKYNnG445kZ/gB994SPpchadx+bgxOjbMouU
 sEogbinqnoj2F/LlZMrK59EBt/oQFboKpf3t4dmwexWgU0bmqFxnInlxiAzEBD/2+a
 ed+QFK9kqc0ito4d73BqYoInwBzTFtxh+aPD5Mfw=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkp9R-0036w9-Dv; Mon, 15 Jun 2020 14:27:49 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 14/17] KVM: arm64: Disintegrate SPSR array
Date: Mon, 15 Jun 2020 14:27:16 +0100
Message-Id: <20200615132719.1932408-15-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615132719.1932408-1-maz@kernel.org>
References: <20200615132719.1932408-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 ascull@google.com, will@kernel.org, catalin.marinas@arm.com,
 mark.rutland@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063338_154459_8B431D52 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we're about to move SPSR_EL1 into the VNCR page, we need to
disassociate it from the rest of the 32bit cruft. Let's break
the array into individual fields.

Reviewed-by: James Morse <james.morse@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h |  4 ++--
 arch/arm64/include/asm/kvm_host.h    |  6 ++++-
 arch/arm64/kvm/guest.c               | 19 +++++++++++----
 arch/arm64/kvm/hyp/sysreg-sr.c       | 28 ++++++++--------------
 arch/arm64/kvm/regmap.c              | 35 +++++++++++++++++++++++++---
 5 files changed, 63 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 3b1d32c639c2..83271a4d6c59 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -176,7 +176,7 @@ static inline unsigned long vcpu_read_spsr(const struct kvm_vcpu *vcpu)
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		return read_sysreg_el1(SYS_SPSR);
 	else
-		return vcpu->arch.ctxt.spsr[KVM_SPSR_EL1];
+		return vcpu->arch.ctxt.spsr_el1;
 }
 
 static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
@@ -189,7 +189,7 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		write_sysreg_el1(v, SYS_SPSR);
 	else
-		vcpu->arch.ctxt.spsr[KVM_SPSR_EL1] = v;
+		vcpu->arch.ctxt.spsr_el1 = v;
 }
 
 /*
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 22ca60408dea..7ab6f5b5bf5d 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -241,7 +241,11 @@ enum vcpu_sysreg {
 struct kvm_cpu_context {
 	struct user_pt_regs regs;	/* sp = sp_el0 */
 
-	u64	spsr[KVM_NR_SPSR];
+	u64	spsr_el1;		/* aka spsr_svc */
+	u64	spsr_abt;
+	u64	spsr_und;
+	u64	spsr_irq;
+	u64	spsr_fiq;
 
 	struct user_fpsimd_state fp_regs;
 
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index d614716e073b..70215f3a6f89 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -134,11 +134,20 @@ static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	case KVM_REG_ARM_CORE_REG(elr_el1):
 		return __ctxt_sys_reg(&vcpu->arch.ctxt, ELR_EL1);
 
-	case KVM_REG_ARM_CORE_REG(spsr[0]) ...
-	     KVM_REG_ARM_CORE_REG(spsr[KVM_NR_SPSR - 1]):
-		off -= KVM_REG_ARM_CORE_REG(spsr[0]);
-		off /= 2;
-		return &vcpu->arch.ctxt.spsr[off];
+	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_EL1]):
+		return &vcpu->arch.ctxt.spsr_el1;
+
+	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_ABT]):
+		return &vcpu->arch.ctxt.spsr_abt;
+
+	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_UND]):
+		return &vcpu->arch.ctxt.spsr_und;
+
+	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_IRQ]):
+		return &vcpu->arch.ctxt.spsr_irq;
+
+	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_FIQ]):
+		return &vcpu->arch.ctxt.spsr_fiq;
 
 	case KVM_REG_ARM_CORE_REG(fp_regs.vregs[0]) ...
 	     KVM_REG_ARM_CORE_REG(fp_regs.vregs[31]):
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 252d5c1240a3..4f54c1d28ff4 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -57,7 +57,7 @@ static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 
 	ctxt_sys_reg(ctxt, SP_EL1)	= read_sysreg(sp_el1);
 	ctxt_sys_reg(ctxt, ELR_EL1)	= read_sysreg_el1(SYS_ELR);
-	ctxt->spsr[KVM_SPSR_EL1]	= read_sysreg_el1(SYS_SPSR);
+	ctxt->spsr_el1			= read_sysreg_el1(SYS_SPSR);
 }
 
 static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
@@ -157,7 +157,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 
 	write_sysreg(ctxt_sys_reg(ctxt, SP_EL1),	sp_el1);
 	write_sysreg_el1(ctxt_sys_reg(ctxt, ELR_EL1),	SYS_ELR);
-	write_sysreg_el1(ctxt->spsr[KVM_SPSR_EL1],	SYS_SPSR);
+	write_sysreg_el1(ctxt->spsr_el1,		SYS_SPSR);
 }
 
 static void __hyp_text
@@ -210,17 +210,13 @@ NOKPROBE_SYMBOL(sysreg_restore_guest_state_vhe);
 
 void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr;
-
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
-	spsr = vcpu->arch.ctxt.spsr;
-
-	spsr[KVM_SPSR_ABT] = read_sysreg(spsr_abt);
-	spsr[KVM_SPSR_UND] = read_sysreg(spsr_und);
-	spsr[KVM_SPSR_IRQ] = read_sysreg(spsr_irq);
-	spsr[KVM_SPSR_FIQ] = read_sysreg(spsr_fiq);
+	vcpu->arch.ctxt.spsr_abt = read_sysreg(spsr_abt);
+	vcpu->arch.ctxt.spsr_und = read_sysreg(spsr_und);
+	vcpu->arch.ctxt.spsr_irq = read_sysreg(spsr_irq);
+	vcpu->arch.ctxt.spsr_fiq = read_sysreg(spsr_fiq);
 
 	__vcpu_sys_reg(vcpu, DACR32_EL2) = read_sysreg(dacr32_el2);
 	__vcpu_sys_reg(vcpu, IFSR32_EL2) = read_sysreg(ifsr32_el2);
@@ -231,17 +227,13 @@ void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
 
 void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr;
-
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
-	spsr = vcpu->arch.ctxt.spsr;
-
-	write_sysreg(spsr[KVM_SPSR_ABT], spsr_abt);
-	write_sysreg(spsr[KVM_SPSR_UND], spsr_und);
-	write_sysreg(spsr[KVM_SPSR_IRQ], spsr_irq);
-	write_sysreg(spsr[KVM_SPSR_FIQ], spsr_fiq);
+	write_sysreg(vcpu->arch.ctxt.spsr_abt, spsr_abt);
+	write_sysreg(vcpu->arch.ctxt.spsr_und, spsr_und);
+	write_sysreg(vcpu->arch.ctxt.spsr_irq, spsr_irq);
+	write_sysreg(vcpu->arch.ctxt.spsr_fiq, spsr_fiq);
 
 	write_sysreg(__vcpu_sys_reg(vcpu, DACR32_EL2), dacr32_el2);
 	write_sysreg(__vcpu_sys_reg(vcpu, IFSR32_EL2), ifsr32_el2);
diff --git a/arch/arm64/kvm/regmap.c b/arch/arm64/kvm/regmap.c
index b1596f314087..97c110810527 100644
--- a/arch/arm64/kvm/regmap.c
+++ b/arch/arm64/kvm/regmap.c
@@ -147,8 +147,20 @@ unsigned long vcpu_read_spsr32(const struct kvm_vcpu *vcpu)
 {
 	int spsr_idx = vcpu_spsr32_mode(vcpu);
 
-	if (!vcpu->arch.sysregs_loaded_on_cpu)
-		return vcpu->arch.ctxt.spsr[spsr_idx];
+	if (!vcpu->arch.sysregs_loaded_on_cpu) {
+		switch (spsr_idx) {
+		case KVM_SPSR_SVC:
+			return vcpu->arch.ctxt.spsr_el1;
+		case KVM_SPSR_ABT:
+			return vcpu->arch.ctxt.spsr_abt;
+		case KVM_SPSR_UND:
+			return vcpu->arch.ctxt.spsr_und;
+		case KVM_SPSR_IRQ:
+			return vcpu->arch.ctxt.spsr_irq;
+		case KVM_SPSR_FIQ:
+			return vcpu->arch.ctxt.spsr_fiq;
+		}
+	}
 
 	switch (spsr_idx) {
 	case KVM_SPSR_SVC:
@@ -171,7 +183,24 @@ void vcpu_write_spsr32(struct kvm_vcpu *vcpu, unsigned long v)
 	int spsr_idx = vcpu_spsr32_mode(vcpu);
 
 	if (!vcpu->arch.sysregs_loaded_on_cpu) {
-		vcpu->arch.ctxt.spsr[spsr_idx] = v;
+		switch (spsr_idx) {
+		case KVM_SPSR_SVC:
+			vcpu->arch.ctxt.spsr_el1 = v;
+			break;
+		case KVM_SPSR_ABT:
+			vcpu->arch.ctxt.spsr_abt = v;
+			break;
+		case KVM_SPSR_UND:
+			vcpu->arch.ctxt.spsr_und = v;
+			break;
+		case KVM_SPSR_IRQ:
+			vcpu->arch.ctxt.spsr_irq = v;
+			break;
+		case KVM_SPSR_FIQ:
+			vcpu->arch.ctxt.spsr_fiq = v;
+			break;
+		}
+
 		return;
 	}
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
