Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B461B1B4504
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9P8qHm4GybY4niutmzcnoZSbu5NYqaEY/cGsp08Umc=; b=YjNJQX8yatPY+V
	opMCy9OzypSrDjJjGMowir7Hn+VvQlH/441T2SWZn0iVdmEM5CG5id5oe2q8Ak1NgH9eWvwgK23WA
	E6HFb/a30qiS9M712BCKKsQClYb60fpiTYlDkuip9xvGTVfpBPXovxbPJeDPe7tQ7+w9AWRCFKJwr
	Fuome1t7SER0ES/bi4b6lsdAEHKicYu6VezMtwEws1/039VkDcjpdSmw6ScC4wc6JEa0+qDwQfWWS
	zov2fgehi6zyNyQrmqfRMigf5qthOAbMpvaZbDJ8Nxh7xZ5EXq1Gcz2dR7Lr+f5pT0UyjRPaMRJVL
	5kcJ4o9FGDC+99c3JyCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREQt-0007tv-Ic; Wed, 22 Apr 2020 12:24:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRENc-0005I9-H0
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:21:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF9A520CC7;
 Wed, 22 Apr 2020 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587558088;
 bh=dUX4q4l8l1MjkjG9bujDCFwzi5QJU2LLYz1oNl6gCBk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=w9KA6gt26GAubVHNsWgD8si08HINf0OGqPx7OXMC6Jmuu06mN6+cfvEimPAIPaR1B
 QUH6uEcZ0zbjwoDoxlCzRaaaWEsxprvq3lnlp/9+HicKz+IduU2WgMf2zPYc0QOdyU
 hnoj/uuEkP+mjTJ03sg/YE9do6QPofJ8yjD6SxgE=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRE44-005UI7-QY; Wed, 22 Apr 2020 13:01:17 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 23/26] KVM: arm64: Move SPSR_EL1 to the system register array
Date: Wed, 22 Apr 2020 13:00:47 +0100
Message-Id: <20200422120050.3693593-24-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422120050.3693593-1-maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_052128_732981_9C1AF1E2 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SPSR_EL1 being a VNCR-capable register with ARMv8.4-NV, move it to
the sysregs array and update the accessors.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_emulate.h | 4 ++--
 arch/arm64/include/asm/kvm_host.h    | 2 +-
 arch/arm64/kvm/guest.c               | 2 +-
 arch/arm64/kvm/hyp/sysreg-sr.c       | 4 ++--
 arch/arm64/kvm/regmap.c              | 4 ++--
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_emulate.h b/arch/arm64/include/asm/kvm_emulate.h
index 6eb48c1f324d5..77f771b08cf35 100644
--- a/arch/arm64/include/asm/kvm_emulate.h
+++ b/arch/arm64/include/asm/kvm_emulate.h
@@ -182,7 +182,7 @@ static inline unsigned long vcpu_read_spsr(const struct kvm_vcpu *vcpu)
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		return read_sysreg_el1(SYS_SPSR);
 	else
-		return vcpu->arch.ctxt.spsr_el1;
+		return __vcpu_sys_reg(vcpu, SPSR_EL1);
 }
 
 static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
@@ -195,7 +195,7 @@ static inline void vcpu_write_spsr(struct kvm_vcpu *vcpu, unsigned long v)
 	if (vcpu->arch.sysregs_loaded_on_cpu)
 		write_sysreg_el1(v, SYS_SPSR);
 	else
-		vcpu->arch.ctxt.spsr_el1 = v;
+		__vcpu_sys_reg(vcpu, SPSR_EL1) = v;
 }
 
 /*
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index a918f33074b15..e8305761f0077 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -186,6 +186,7 @@ enum vcpu_sysreg {
 
 	ELR_EL1,
 	SP_EL1,
+	SPSR_EL1,
 
 	/* 32bit specific registers. Keep them at the end of the range */
 	DACR32_EL2,	/* Domain Access Control Register */
@@ -240,7 +241,6 @@ enum vcpu_sysreg {
 struct kvm_cpu_context {
 	struct user_pt_regs regs;	/* sp = sp_el0 */
 
-	u64	spsr_el1;		/* aka spsr_svc */
 	u64	spsr_abt;
 	u64	spsr_und;
 	u64	spsr_irq;
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 6e655ea6c98d0..91215170e6883 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -129,7 +129,7 @@ static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 		return __ctxt_sys_reg(&vcpu->arch.ctxt, ELR_EL1);
 
 	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_EL1]):
-		return &vcpu->arch.ctxt.spsr_el1;
+		return __ctxt_sys_reg(&vcpu->arch.ctxt, SPSR_EL1);
 
 	case KVM_REG_ARM_CORE_REG(spsr[KVM_SPSR_ABT]):
 		return &vcpu->arch.ctxt.spsr_abt;
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index c932ace46c9df..3457252e475de 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -63,7 +63,7 @@ static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 
 	ctxt_sys_reg(ctxt, SP_EL1)	= read_sysreg(sp_el1);
 	ctxt_sys_reg(ctxt, ELR_EL1)	= read_sysreg_el1(SYS_ELR);
-	ctxt->spsr_el1			= read_sysreg_el1(SYS_SPSR);
+	ctxt_sys_reg(ctxt, SPSR_EL1)	= read_sysreg_el1(SYS_SPSR);
 }
 
 static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
@@ -168,7 +168,7 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 
 	write_sysreg(ctxt_sys_reg(ctxt, SP_EL1),	sp_el1);
 	write_sysreg_el1(ctxt_sys_reg(ctxt, ELR_EL1),	SYS_ELR);
-	write_sysreg_el1(ctxt->spsr_el1,		SYS_SPSR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, SPSR_EL1),	SYS_SPSR);
 }
 
 static void __hyp_text
diff --git a/arch/arm64/kvm/regmap.c b/arch/arm64/kvm/regmap.c
index 97c110810527e..accc1d5fba615 100644
--- a/arch/arm64/kvm/regmap.c
+++ b/arch/arm64/kvm/regmap.c
@@ -150,7 +150,7 @@ unsigned long vcpu_read_spsr32(const struct kvm_vcpu *vcpu)
 	if (!vcpu->arch.sysregs_loaded_on_cpu) {
 		switch (spsr_idx) {
 		case KVM_SPSR_SVC:
-			return vcpu->arch.ctxt.spsr_el1;
+			return __vcpu_sys_reg(vcpu, SPSR_EL1);
 		case KVM_SPSR_ABT:
 			return vcpu->arch.ctxt.spsr_abt;
 		case KVM_SPSR_UND:
@@ -185,7 +185,7 @@ void vcpu_write_spsr32(struct kvm_vcpu *vcpu, unsigned long v)
 	if (!vcpu->arch.sysregs_loaded_on_cpu) {
 		switch (spsr_idx) {
 		case KVM_SPSR_SVC:
-			vcpu->arch.ctxt.spsr_el1 = v;
+			__vcpu_sys_reg(vcpu, SPSR_EL1) = v;
 			break;
 		case KVM_SPSR_ABT:
 			vcpu->arch.ctxt.spsr_abt = v;
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
