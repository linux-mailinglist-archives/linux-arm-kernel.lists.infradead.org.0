Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E09D215977A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:59:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+l2vAKUc4ZiUWro7WD1asr6UeZTx9QKGxxv1zG/lKKw=; b=RtVS5pFm2z4tXD
	33ifHFVMKN2PcihzxJuYKnRPtTTX9D836SwvKgql/81d+U6TZkt+ObeZvpetv59sj/p84bxgjT9pT
	kW7R/UbHsby889pZAKMgza2LCnP4XLxO6Vja0/twqSBQ5CR8qJIIyZTnjby09qMNyAw2HR1zoVdbm
	5Htuthlp6s4QOkDBCUR34IPNavR24O67rHDM5uo7/ECxVPifZs8+7HWGx/sJlrneWCYEGNlacpUiW
	xuQRkL2wyKYbmzNq6gAUh3iCxyJg7mAXQYFyZcb2MAMyvaE+uFv9pDfcBVXxd4xQltsMHxGnGI34e
	XeCsytZ7mJj9TLynKcgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZpD-0001Sc-SC; Tue, 11 Feb 2020 17:59:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZhA-0001nN-VN
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:40 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B11DD20578;
 Tue, 11 Feb 2020 17:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443495;
 bh=vJgCeyNhc/zjTIzrf5MG6+BOepmc9H4if6t7gh/kTSw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ge+7LsrMQjgNYp3YORkBfaJvbrDPYo1v/5naMcnSuHcXLhaRrtON8wAkI3dHwSLkX
 81ziN2BC0cmYcNCwOpLvcxQuA1z9tF948+ntPi8gRPCGV6VAQmWmr8JotPIGO7tyGD
 J7gUxDJX7x4va5Hm7y7Tf+CdhP24aakywn+rO2pI=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgJ-004O7k-4I; Tue, 11 Feb 2020 17:50:43 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 84/94] KVM: arm64: VNCR-ize SP_EL1
Date: Tue, 11 Feb 2020 17:49:28 +0000
Message-Id: <20200211174938.27809-85-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095138_421026_360B8333 
X-CRM114-Status: GOOD (  13.24  )
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

SP_EL1 being a VNCR-capable register, let's flag it as such, and
repaint all the accesses

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_host.h | 3 +--
 arch/arm64/kvm/guest.c            | 2 +-
 arch/arm64/kvm/hyp/sysreg-sr.c    | 4 ++--
 arch/arm64/kvm/sys_regs.c         | 5 ++---
 4 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index a497e7970418..fe6d5a3bc338 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -265,6 +265,7 @@ enum vcpu_sysreg {
 	VNCR(AMAIR_EL1),/* Aux Memory Attribute Indirection Register */
 	VNCR(MDSCR_EL1),/* Monitor Debug System Control Register */
 	VNCR(ELR_EL1),
+	VNCR(SP_EL1),
 	VNCR(VPIDR_EL2),/* Virtualization Processor ID Register */
 	VNCR(VMPIDR_EL2),/* Virtualization Multiprocessor ID Register */
 	VNCR(HCR_EL2),	/* Hypervisor Configuration Register */
@@ -335,8 +336,6 @@ enum vcpu_sysreg {
 struct kvm_cpu_context {
 	struct user_pt_regs regs;	/* sp = sp_el0 */
 
-	u64	sp_el1;
-
 	u64	spsr[KVM_NR_SPSR];
 
 	struct user_fpsimd_state fp_regs;
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index 40ef6758266d..869017e50464 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -125,7 +125,7 @@ static void *core_reg_addr(struct kvm_vcpu *vcpu, const struct kvm_one_reg *reg)
 		return &vcpu->arch.ctxt.regs.pstate;
 
 	case KVM_REG_ARM_CORE_REG(sp_el1):
-		return &vcpu->arch.ctxt.sp_el1;
+		return __ctxt_sys_reg(&vcpu->arch.ctxt, SP_EL1);
 
 	case KVM_REG_ARM_CORE_REG(elr_el1):
 		return __vcpu_elr_el1(vcpu);
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 10ce7a6a0c6c..e5359cd39b32 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -58,7 +58,7 @@ static void __hyp_text __sysreg_save_vel1_state(struct kvm_cpu_context *ctxt)
 	ctxt_sys_reg(ctxt, AMAIR_EL1)	= read_sysreg_el1(SYS_AMAIR);
 	ctxt_sys_reg(ctxt, CNTKCTL_EL1)	= read_sysreg_el1(SYS_CNTKCTL);
 
-	ctxt->sp_el1			= read_sysreg(sp_el1);
+	ctxt_sys_reg(ctxt, SP_EL1)	= read_sysreg(sp_el1);
 	ctxt_sys_reg(ctxt, ELR_EL1)	= read_sysreg_el1(SYS_ELR);
 	ctxt->spsr[KVM_SPSR_EL1]	= read_sysreg_el1(SYS_SPSR);
 }
@@ -323,7 +323,7 @@ static void __hyp_text __sysreg_restore_vel1_state(struct kvm_cpu_context *ctxt)
 		write_sysreg_el1(ctxt_sys_reg(ctxt, TCR_EL1),	SYS_TCR);
 	}
 
-	write_sysreg(ctxt->sp_el1,			sp_el1);
+	write_sysreg(ctxt_sys_reg(ctxt, SP_EL1),	sp_el1);
 	write_sysreg_el1(ctxt_sys_reg(ctxt, ELR_EL1),	SYS_ELR);
 	write_sysreg_el1(ctxt->spsr[KVM_SPSR_EL1],	SYS_SPSR);
 }
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index dc1b75a37f00..2c3e90e192b4 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1803,11 +1803,10 @@ static bool access_sp_el1(struct kvm_vcpu *vcpu,
 			  struct sys_reg_params *p,
 			  const struct sys_reg_desc *r)
 {
-	/* SP_EL1 is NOT maintained in sys_regs array */
 	if (p->is_write)
-		vcpu->arch.ctxt.sp_el1 = p->regval;
+		__vcpu_sys_reg(vcpu, SP_EL1) = p->regval;
 	else
-		p->regval = vcpu->arch.ctxt.sp_el1;
+		p->regval = __vcpu_sys_reg(vcpu, SP_EL1);
 
 	return true;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
