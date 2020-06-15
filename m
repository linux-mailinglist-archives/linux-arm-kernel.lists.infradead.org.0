Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2188E1F9890
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAtGuCVniYZOoJEmfUqZO/kZrgjUTzq+km4mB81uPIM=; b=XA/adEDXwTfUgY
	6UJ5RzpMmaqoetlRyA9c8gTA5CPLsy6SJ+r/bQRbzXGyqrIprDdysVnpB9QzeGXPj80xQ1v5hoHD7
	/rAVZxDJbt6OyCdr43jHT/EFBK9SoxAj223ezpiBDn5Jc9bR1pEueJELIBqFCuHn+ePXQ2ON3Msem
	FZK5+Xsu66aAV2z73OVHao5QMHNMDb/N8vgNE7b9SmFqTRYiE18aIvxUe+PrAWKhp3/KErVe6UeyO
	diN5RzEGGx9sKaXVWF8bEUUBI0sKC6KfdcvagH15l/E4+G9sBczt66ML7RLpokXLYLRhZ2i0Dwo5j
	HbJCiflJ60b9O52NiFLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpBQ-0003WT-VV; Mon, 15 Jun 2020 13:29:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkp9L-0001p8-Qn
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:27:46 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22E50207DD;
 Mon, 15 Jun 2020 13:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592227663;
 bh=MpIKTtpi05PcleHDZqdb9FJ28HJeWwWnIEX0mHlP3aM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=J0vchwLq1Cu76vWT1MUJzxu77QhTC/RScKq0tTVg3eIc4Pbf/Z91Nxrpo/icgjlrn
 3cnPKiayKglqeFh5ODBrfHFGAYm/M7PTTb+/p6f3RTY+JjlY1IrB79wrEyagitynRd
 +aj6+ocMekG+xH+qUZ3fR78EjQxoNtw+KDRT5qYU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkp9J-0036w9-KM; Mon, 15 Jun 2020 14:27:41 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 07/17] KVM: arm64: hyp: Use ctxt_sys_reg/__vcpu_sys_reg
 instead of raw sys_regs access
Date: Mon, 15 Jun 2020 14:27:09 +0100
Message-Id: <20200615132719.1932408-8-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200615_062743_929951_BAEF997D 
X-CRM114-Status: GOOD (  16.13  )
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

Switch the hypervisor code to using ctxt_sys_reg/__vcpu_sys_reg instead
of raw sys_regs accesses. No intended functionnal change.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_host.h |   2 +-
 arch/arm64/kvm/hyp/debug-sr.c     |   4 +-
 arch/arm64/kvm/hyp/switch.c       |  11 ++-
 arch/arm64/kvm/hyp/sysreg-sr.c    | 110 +++++++++++++++---------------
 4 files changed, 62 insertions(+), 65 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 5314399944e7..e519a1b51904 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -550,7 +550,7 @@ DECLARE_PER_CPU(kvm_host_data_t, kvm_host_data);
 static inline void kvm_init_host_cpu_context(struct kvm_cpu_context *cpu_ctxt)
 {
 	/* The host's MPIDR is immutable, so let's set it up at boot time */
-	cpu_ctxt->sys_regs[MPIDR_EL1] = read_cpuid_mpidr();
+	ctxt_sys_reg(cpu_ctxt, MPIDR_EL1) = read_cpuid_mpidr();
 }
 
 static inline bool kvm_arch_requires_vhe(void)
diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index e95af204fec7..2a6bfa2d3a94 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -145,7 +145,7 @@ static void __hyp_text __debug_save_state(struct kvm_vcpu *vcpu,
 	save_debug(dbg->dbg_wcr, dbgwcr, wrps);
 	save_debug(dbg->dbg_wvr, dbgwvr, wrps);
 
-	ctxt->sys_regs[MDCCINT_EL1] = read_sysreg(mdccint_el1);
+	ctxt_sys_reg(ctxt, MDCCINT_EL1) = read_sysreg(mdccint_el1);
 }
 
 static void __hyp_text __debug_restore_state(struct kvm_vcpu *vcpu,
@@ -165,7 +165,7 @@ static void __hyp_text __debug_restore_state(struct kvm_vcpu *vcpu,
 	restore_debug(dbg->dbg_wcr, dbgwcr, wrps);
 	restore_debug(dbg->dbg_wvr, dbgwvr, wrps);
 
-	write_sysreg(ctxt->sys_regs[MDCCINT_EL1], mdccint_el1);
+	write_sysreg(ctxt_sys_reg(ctxt, MDCCINT_EL1), mdccint_el1);
 }
 
 void __hyp_text __debug_switch_to_guest(struct kvm_vcpu *vcpu)
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 8e9094458ec2..0eef15bf64d5 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -48,7 +48,7 @@ static void __hyp_text __fpsimd_save_fpexc32(struct kvm_vcpu *vcpu)
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
-	vcpu->arch.ctxt.sys_regs[FPEXC32_EL2] = read_sysreg(fpexc32_el2);
+	__vcpu_sys_reg(vcpu, FPEXC32_EL2) = read_sysreg(fpexc32_el2);
 }
 
 static void __hyp_text __activate_traps_fpsimd32(struct kvm_vcpu *vcpu)
@@ -147,9 +147,9 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 		 * configured and enabled. We can now restore the guest's S1
 		 * configuration: SCTLR, and only then TCR.
 		 */
-		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		write_sysreg_el1(ctxt_sys_reg(ctxt, SCTLR_EL1),	SYS_SCTLR);
 		isb();
-		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+		write_sysreg_el1(ctxt_sys_reg(ctxt, TCR_EL1),	SYS_TCR);
 	}
 }
 
@@ -420,15 +420,14 @@ static bool __hyp_text __hyp_handle_fpsimd(struct kvm_vcpu *vcpu)
 		sve_load_state(vcpu_sve_pffr(vcpu),
 			       &vcpu->arch.ctxt.gp_regs.fp_regs.fpsr,
 			       sve_vq_from_vl(vcpu->arch.sve_max_vl) - 1);
-		write_sysreg_s(vcpu->arch.ctxt.sys_regs[ZCR_EL1], SYS_ZCR_EL12);
+		write_sysreg_s(__vcpu_sys_reg(vcpu, ZCR_EL1), SYS_ZCR_EL12);
 	} else {
 		__fpsimd_restore_state(&vcpu->arch.ctxt.gp_regs.fp_regs);
 	}
 
 	/* Skip restoring fpexc32 for AArch64 guests */
 	if (!(read_sysreg(hcr_el2) & HCR_RW))
-		write_sysreg(vcpu->arch.ctxt.sys_regs[FPEXC32_EL2],
-			     fpexc32_el2);
+		write_sysreg(__vcpu_sys_reg(vcpu, FPEXC32_EL2), fpexc32_el2);
 
 	vcpu->arch.flags |= KVM_ARM64_FP_ENABLED;
 
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index cc7e957f5b2c..50f496d2ca40 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -26,34 +26,34 @@
 
 static void __hyp_text __sysreg_save_common_state(struct kvm_cpu_context *ctxt)
 {
-	ctxt->sys_regs[MDSCR_EL1]	= read_sysreg(mdscr_el1);
+	ctxt_sys_reg(ctxt, MDSCR_EL1)	= read_sysreg(mdscr_el1);
 }
 
 static void __hyp_text __sysreg_save_user_state(struct kvm_cpu_context *ctxt)
 {
-	ctxt->sys_regs[TPIDR_EL0]	= read_sysreg(tpidr_el0);
-	ctxt->sys_regs[TPIDRRO_EL0]	= read_sysreg(tpidrro_el0);
+	ctxt_sys_reg(ctxt, TPIDR_EL0)	= read_sysreg(tpidr_el0);
+	ctxt_sys_reg(ctxt, TPIDRRO_EL0)	= read_sysreg(tpidrro_el0);
 }
 
 static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 {
-	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
-	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
-	ctxt->sys_regs[CPACR_EL1]	= read_sysreg_el1(SYS_CPACR);
-	ctxt->sys_regs[TTBR0_EL1]	= read_sysreg_el1(SYS_TTBR0);
-	ctxt->sys_regs[TTBR1_EL1]	= read_sysreg_el1(SYS_TTBR1);
-	ctxt->sys_regs[TCR_EL1]		= read_sysreg_el1(SYS_TCR);
-	ctxt->sys_regs[ESR_EL1]		= read_sysreg_el1(SYS_ESR);
-	ctxt->sys_regs[AFSR0_EL1]	= read_sysreg_el1(SYS_AFSR0);
-	ctxt->sys_regs[AFSR1_EL1]	= read_sysreg_el1(SYS_AFSR1);
-	ctxt->sys_regs[FAR_EL1]		= read_sysreg_el1(SYS_FAR);
-	ctxt->sys_regs[MAIR_EL1]	= read_sysreg_el1(SYS_MAIR);
-	ctxt->sys_regs[VBAR_EL1]	= read_sysreg_el1(SYS_VBAR);
-	ctxt->sys_regs[CONTEXTIDR_EL1]	= read_sysreg_el1(SYS_CONTEXTIDR);
-	ctxt->sys_regs[AMAIR_EL1]	= read_sysreg_el1(SYS_AMAIR);
-	ctxt->sys_regs[CNTKCTL_EL1]	= read_sysreg_el1(SYS_CNTKCTL);
-	ctxt->sys_regs[PAR_EL1]		= read_sysreg(par_el1);
-	ctxt->sys_regs[TPIDR_EL1]	= read_sysreg(tpidr_el1);
+	ctxt_sys_reg(ctxt, CSSELR_EL1)	= read_sysreg(csselr_el1);
+	ctxt_sys_reg(ctxt, SCTLR_EL1)	= read_sysreg_el1(SYS_SCTLR);
+	ctxt_sys_reg(ctxt, CPACR_EL1)	= read_sysreg_el1(SYS_CPACR);
+	ctxt_sys_reg(ctxt, TTBR0_EL1)	= read_sysreg_el1(SYS_TTBR0);
+	ctxt_sys_reg(ctxt, TTBR1_EL1)	= read_sysreg_el1(SYS_TTBR1);
+	ctxt_sys_reg(ctxt, TCR_EL1)	= read_sysreg_el1(SYS_TCR);
+	ctxt_sys_reg(ctxt, ESR_EL1)	= read_sysreg_el1(SYS_ESR);
+	ctxt_sys_reg(ctxt, AFSR0_EL1)	= read_sysreg_el1(SYS_AFSR0);
+	ctxt_sys_reg(ctxt, AFSR1_EL1)	= read_sysreg_el1(SYS_AFSR1);
+	ctxt_sys_reg(ctxt, FAR_EL1)	= read_sysreg_el1(SYS_FAR);
+	ctxt_sys_reg(ctxt, MAIR_EL1)	= read_sysreg_el1(SYS_MAIR);
+	ctxt_sys_reg(ctxt, VBAR_EL1)	= read_sysreg_el1(SYS_VBAR);
+	ctxt_sys_reg(ctxt, CONTEXTIDR_EL1) = read_sysreg_el1(SYS_CONTEXTIDR);
+	ctxt_sys_reg(ctxt, AMAIR_EL1)	= read_sysreg_el1(SYS_AMAIR);
+	ctxt_sys_reg(ctxt, CNTKCTL_EL1)	= read_sysreg_el1(SYS_CNTKCTL);
+	ctxt_sys_reg(ctxt, PAR_EL1)	= read_sysreg(par_el1);
+	ctxt_sys_reg(ctxt, TPIDR_EL1)	= read_sysreg(tpidr_el1);
 
 	ctxt->gp_regs.sp_el1		= read_sysreg(sp_el1);
 	ctxt->gp_regs.elr_el1		= read_sysreg_el1(SYS_ELR);
@@ -66,7 +66,7 @@ static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ct
 	ctxt->gp_regs.regs.pstate	= read_sysreg_el2(SYS_SPSR);
 
 	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
-		ctxt->sys_regs[DISR_EL1] = read_sysreg_s(SYS_VDISR_EL2);
+		ctxt_sys_reg(ctxt, DISR_EL1) = read_sysreg_s(SYS_VDISR_EL2);
 }
 
 void __hyp_text __sysreg_save_state_nvhe(struct kvm_cpu_context *ctxt)
@@ -92,50 +92,50 @@ NOKPROBE_SYMBOL(sysreg_save_guest_state_vhe);
 
 static void __hyp_text __sysreg_restore_common_state(struct kvm_cpu_context *ctxt)
 {
-	write_sysreg(ctxt->sys_regs[MDSCR_EL1],	  mdscr_el1);
+	write_sysreg(ctxt_sys_reg(ctxt, MDSCR_EL1),  mdscr_el1);
 }
 
 static void __hyp_text __sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
 {
-	write_sysreg(ctxt->sys_regs[TPIDR_EL0],		tpidr_el0);
-	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0],	tpidrro_el0);
+	write_sysreg(ctxt_sys_reg(ctxt, TPIDR_EL0),	tpidr_el0);
+	write_sysreg(ctxt_sys_reg(ctxt, TPIDRRO_EL0),	tpidrro_el0);
 }
 
 static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 {
-	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
-	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
+	write_sysreg(ctxt_sys_reg(ctxt, MPIDR_EL1),	vmpidr_el2);
+	write_sysreg(ctxt_sys_reg(ctxt, CSSELR_EL1),	csselr_el1);
 
 	if (has_vhe() ||
 	    !cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT)) {
-		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
-		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+		write_sysreg_el1(ctxt_sys_reg(ctxt, SCTLR_EL1),	SYS_SCTLR);
+		write_sysreg_el1(ctxt_sys_reg(ctxt, TCR_EL1),	SYS_TCR);
 	} else	if (!ctxt->__hyp_running_vcpu) {
 		/*
 		 * Must only be done for guest registers, hence the context
 		 * test. We're coming from the host, so SCTLR.M is already
 		 * set. Pairs with __activate_traps_nvhe().
 		 */
-		write_sysreg_el1((ctxt->sys_regs[TCR_EL1] |
+		write_sysreg_el1((ctxt_sys_reg(ctxt, TCR_EL1) |
 				  TCR_EPD1_MASK | TCR_EPD0_MASK),
 				 SYS_TCR);
 		isb();
 	}
 
-	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
-	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
-	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
-	write_sysreg_el1(ctxt->sys_regs[ESR_EL1],	SYS_ESR);
-	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL1],	SYS_AFSR0);
-	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL1],	SYS_AFSR1);
-	write_sysreg_el1(ctxt->sys_regs[FAR_EL1],	SYS_FAR);
-	write_sysreg_el1(ctxt->sys_regs[MAIR_EL1],	SYS_MAIR);
-	write_sysreg_el1(ctxt->sys_regs[VBAR_EL1],	SYS_VBAR);
-	write_sysreg_el1(ctxt->sys_regs[CONTEXTIDR_EL1],SYS_CONTEXTIDR);
-	write_sysreg_el1(ctxt->sys_regs[AMAIR_EL1],	SYS_AMAIR);
-	write_sysreg_el1(ctxt->sys_regs[CNTKCTL_EL1],	SYS_CNTKCTL);
-	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
-	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, CPACR_EL1),	SYS_CPACR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, TTBR0_EL1),	SYS_TTBR0);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, TTBR1_EL1),	SYS_TTBR1);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, ESR_EL1),	SYS_ESR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, AFSR0_EL1),	SYS_AFSR0);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, AFSR1_EL1),	SYS_AFSR1);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, FAR_EL1),	SYS_FAR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, MAIR_EL1),	SYS_MAIR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, VBAR_EL1),	SYS_VBAR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, CONTEXTIDR_EL1), SYS_CONTEXTIDR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, AMAIR_EL1),	SYS_AMAIR);
+	write_sysreg_el1(ctxt_sys_reg(ctxt, CNTKCTL_EL1), SYS_CNTKCTL);
+	write_sysreg(ctxt_sys_reg(ctxt, PAR_EL1),	par_el1);
+	write_sysreg(ctxt_sys_reg(ctxt, TPIDR_EL1),	tpidr_el1);
 
 	if (!has_vhe() &&
 	    cpus_have_final_cap(ARM64_WORKAROUND_SPECULATIVE_AT) &&
@@ -150,9 +150,9 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 		 * deconfigured and disabled. We can now restore the host's
 		 * S1 configuration: SCTLR, and only then TCR.
 		 */
-		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		write_sysreg_el1(ctxt_sys_reg(ctxt, SCTLR_EL1),	SYS_SCTLR);
 		isb();
-		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+		write_sysreg_el1(ctxt_sys_reg(ctxt, TCR_EL1),	SYS_TCR);
 	}
 
 	write_sysreg(ctxt->gp_regs.sp_el1,		sp_el1);
@@ -184,7 +184,7 @@ __sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
 	write_sysreg_el2(pstate,			SYS_SPSR);
 
 	if (cpus_have_final_cap(ARM64_HAS_RAS_EXTN))
-		write_sysreg_s(ctxt->sys_regs[DISR_EL1], SYS_VDISR_EL2);
+		write_sysreg_s(ctxt_sys_reg(ctxt, DISR_EL1), SYS_VDISR_EL2);
 }
 
 void __hyp_text __sysreg_restore_state_nvhe(struct kvm_cpu_context *ctxt)
@@ -210,46 +210,44 @@ NOKPROBE_SYMBOL(sysreg_restore_guest_state_vhe);
 
 void __hyp_text __sysreg32_save_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr, *sysreg;
+	u64 *spsr;
 
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
 	spsr = vcpu->arch.ctxt.gp_regs.spsr;
-	sysreg = vcpu->arch.ctxt.sys_regs;
 
 	spsr[KVM_SPSR_ABT] = read_sysreg(spsr_abt);
 	spsr[KVM_SPSR_UND] = read_sysreg(spsr_und);
 	spsr[KVM_SPSR_IRQ] = read_sysreg(spsr_irq);
 	spsr[KVM_SPSR_FIQ] = read_sysreg(spsr_fiq);
 
-	sysreg[DACR32_EL2] = read_sysreg(dacr32_el2);
-	sysreg[IFSR32_EL2] = read_sysreg(ifsr32_el2);
+	__vcpu_sys_reg(vcpu, DACR32_EL2) = read_sysreg(dacr32_el2);
+	__vcpu_sys_reg(vcpu, IFSR32_EL2) = read_sysreg(ifsr32_el2);
 
 	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
-		sysreg[DBGVCR32_EL2] = read_sysreg(dbgvcr32_el2);
+		__vcpu_sys_reg(vcpu, DBGVCR32_EL2) = read_sysreg(dbgvcr32_el2);
 }
 
 void __hyp_text __sysreg32_restore_state(struct kvm_vcpu *vcpu)
 {
-	u64 *spsr, *sysreg;
+	u64 *spsr;
 
 	if (!vcpu_el1_is_32bit(vcpu))
 		return;
 
 	spsr = vcpu->arch.ctxt.gp_regs.spsr;
-	sysreg = vcpu->arch.ctxt.sys_regs;
 
 	write_sysreg(spsr[KVM_SPSR_ABT], spsr_abt);
 	write_sysreg(spsr[KVM_SPSR_UND], spsr_und);
 	write_sysreg(spsr[KVM_SPSR_IRQ], spsr_irq);
 	write_sysreg(spsr[KVM_SPSR_FIQ], spsr_fiq);
 
-	write_sysreg(sysreg[DACR32_EL2], dacr32_el2);
-	write_sysreg(sysreg[IFSR32_EL2], ifsr32_el2);
+	write_sysreg(__vcpu_sys_reg(vcpu, DACR32_EL2), dacr32_el2);
+	write_sysreg(__vcpu_sys_reg(vcpu, IFSR32_EL2), ifsr32_el2);
 
 	if (has_vhe() || vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY)
-		write_sysreg(sysreg[DBGVCR32_EL2], dbgvcr32_el2);
+		write_sysreg(__vcpu_sys_reg(vcpu, DBGVCR32_EL2), dbgvcr32_el2);
 }
 
 /**
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
