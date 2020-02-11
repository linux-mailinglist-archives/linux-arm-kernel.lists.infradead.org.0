Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 534B31597B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:06:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NItr/tTLzLLOKE5Thn++slqPjaz1CnkT6v3uXLehwpg=; b=LfV93sVIpwHzvd
	Qi+F7YzG9fX9zdDLDdsEpI5dpsgu9DshUir0d2GWn9/RCIjnrwwordBHgMIE868EjA8ZLBQu1evYJ
	XNNJw+TNpD4dA3Z+/2InJVw6qn1HU24LeRK/OFC5Q20A72HFfUXxiXQ1m+aFFAPuDtj8yWRFI/JQb
	eaKuzQmWw0rPXklXaGtrC4eHut9BacdBWKmk8m1GFfxLYqPUmIb1apQMM4Y/mDfeSJTIpKve3C3al
	unftadNKKtvsihDT94UROD++6SybLZLfXCbGKV4Z8C5v733VjSo/mjm86gmZH7JSu40/VD8tiMbPQ
	XrXEzZWXKlQGW0qTX4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zvn-0001rK-3M; Tue, 11 Feb 2020 18:06:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zhx-0002QQ-Ok
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:27 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3410720848;
 Tue, 11 Feb 2020 17:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443545;
 bh=ZBHGkyRfdRnKRz+z/OfxfM8/L6bY0Ui9wuEIUUN1SVM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pKLQChaKWRGnI/aGHcuXjbhZwv+vg0a13Z+4y7hQYVPLOmnvirN75iifF7jKEd7Kz
 6+ZrXCjf3EAmgTDv6dxoNjc579CPSaUOO6XrP1UEK0YogRi2mauDtdTjEWIeO0UzjK
 2IJd473aoUoQlA8ZQyDpIUyVNOvzXy72dLZS47R4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgJ-004O7k-NF; Tue, 11 Feb 2020 17:50:43 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 85/94] KVM: arm64: Disintegrate SPSR array
Date: Tue, 11 Feb 2020 17:49:29 +0000
Message-Id: <20200211174938.27809-86-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095225_899005_9CBE3AAC 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As we're about to move SPSR_EL1 into the VNCR page, we need to
disassociate it from the rest of the 32bit cruft. Let's break
the array into individual fields.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h |  4 ++--
 arch/arm64/include/asm/kvm_host.h    |  6 ++++-
 arch/arm64/kvm/guest.c               | 19 +++++++++++----
 arch/arm64/kvm/hyp/sysreg-sr.c       | 26 ++++++++++-----------
 arch/arm64/kvm/regmap.c              | 35 +++++++++++++++++++++++++---
 arch/arm64/kvm/sys_regs.c            |  4 ++--
 6 files changed, 67 insertions(+), 27 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 5718fbc56ba5..eed8bd48e60c 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -327,7 +327,7 @@ static inline unsigned long vcpu_read_spsr(const struct kvm_vcpu *vcpu)
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		return read_sysreg_el1(SYS_SPSR);
 	else
-		return vcpu->arch.ctxt.spsr[KVM_SPSR_EL1];
+		return vcpu->arch.ctxt.spsr_el1;
 }
 
 static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
@@ -345,7 +345,7 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		write_sysreg_el1(v, SYS_SPSR);
 	else
-		vcpu->arch.ctxt.spsr[KVM_SPSR_EL1] = v;
+		vcpu->arch.ctxt.spsr_el1 = v;
 }
 
 /*
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index fe6d5a3bc338..111597123c17 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -336,7 +336,11 @@ enum vcpu_sysreg {
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
index 869017e50464..9710fe55c5dd 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -130,11 +130,20 @@ static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 	case KVM_REG_ARM_CORE_REG(elr_el1):
 		return __vcpu_elr_el1(vcpu);
 
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
index e5359cd39b32..afc603f800e9 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -60,7 +60,7 @@ static void __hyp_text __sysreg_save_vel1_state(struct kvm_cpu_context *ctxt)
 
 	ctxt_sys_reg(ctxt, SP_EL1)	= read_sysreg(sp_el1);
 	ctxt_sys_reg(ctxt, ELR_EL1)	= read_sysreg_el1(SYS_ELR);
-	ctxt->spsr[KVM_SPSR_EL1]	= read_sysreg_el1(SYS_SPSR);
+	ctxt->spsr_el1			= read_sysreg_el1(SYS_SPSR);
 }
 
 static void __sysreg_save_vel2_state(struct kvm_cpu_context *ctxt)
@@ -325,7 +325,7 @@ static void __hyp_text __sysreg_restore_vel1_state(struct kvm_cpu_context *ctxt)
 
 	write_sysreg(ctxt_sys_reg(ctxt, SP_EL1),	sp_el1);
 	write_sysreg_el1(ctxt_sys_reg(ctxt, ELR_EL1),	SYS_ELR);
-	write_sysreg_el1(ctxt->spsr[KVM_SPSR_EL1],	SYS_SPSR);
+	write_sysreg_el1(ctxt->spsr_el1,		SYS_SPSR);
 }
 
 static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
@@ -408,18 +408,17 @@ NOKPROBE_SYMBOL(sysreg_restore_guest_state_vhe);
 
 void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr, *sysreg;
+	u64 *sysreg;
 
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
-	spsr = vcpu->arch.ctxt.spsr;
 	sysreg = vcpu->arch.ctxt.sys_regs;
 
-	spsr[KVM_SPSR_ABT] = read_sysreg(spsr_abt);
-	spsr[KVM_SPSR_UND] = read_sysreg(spsr_und);
-	spsr[KVM_SPSR_IRQ] = read_sysreg(spsr_irq);
-	spsr[KVM_SPSR_FIQ] = read_sysreg(spsr_fiq);
+	vcpu->arch.ctxt.spsr_abt = read_sysreg(spsr_abt);
+	vcpu->arch.ctxt.spsr_und = read_sysreg(spsr_und);
+	vcpu->arch.ctxt.spsr_irq = read_sysreg(spsr_irq);
+	vcpu->arch.ctxt.spsr_fiq = read_sysreg(spsr_fiq);
 
 	sysreg[DACR32_EL2] = read_sysreg(dacr32_el2);
 	sysreg[IFSR32_EL2] = read_sysreg(ifsr32_el2);
@@ -430,18 +429,17 @@ void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
 
 void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr, *sysreg;
+	u64 *sysreg;
 
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
-	spsr = vcpu->arch.ctxt.spsr;
 	sysreg = vcpu->arch.ctxt.sys_regs;
 
-	write_sysreg(spsr[KVM_SPSR_ABT], spsr_abt);
-	write_sysreg(spsr[KVM_SPSR_UND], spsr_und);
-	write_sysreg(spsr[KVM_SPSR_IRQ], spsr_irq);
-	write_sysreg(spsr[KVM_SPSR_FIQ], spsr_fiq);
+	write_sysreg(vcpu->arch.ctxt.spsr_abt, spsr_abt);
+	write_sysreg(vcpu->arch.ctxt.spsr_und, spsr_und);
+	write_sysreg(vcpu->arch.ctxt.spsr_irq, spsr_irq);
+	write_sysreg(vcpu->arch.ctxt.spsr_fiq, spsr_fiq);
 
 	write_sysreg(sysreg[DACR32_EL2], dacr32_el2);
 	write_sysreg(sysreg[IFSR32_EL2], ifsr32_el2);
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
 
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 2c3e90e192b4..0d3500a11c50 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1850,9 +1850,9 @@ static bool access_spsr(struct kvm_vcpu *vcpu,
 		return false;
 
 	if (p->is_write)
-		vcpu->arch.ctxt.spsr[KVM_SPSR_EL1] = p->regval;
+		vcpu->arch.ctxt.spsr_el1 = p->regval;
 	else
-		p->regval = vcpu->arch.ctxt.spsr[KVM_SPSR_EL1];
+		p->regval = vcpu->arch.ctxt.spsr_el1;
 
 	return true;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
