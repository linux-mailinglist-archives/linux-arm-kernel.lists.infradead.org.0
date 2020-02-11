Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D416D1597F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MWnhOx/gSZhfA42b6BlRfI6lKhmqIvoYz9VkznqU6Q0=; b=YAj7dkr9JJvOps
	jC0Ha5QF7pNeWlfduX97Glmg5Rx3n3t0FrQiRj46wy4FD7v8hMzFGGUuWTL+IeLgJiTecZprSsQKK
	qVqkSi8qaSGm1RkfCZ7S6pKX7cci1GAVdUM0nB9w9i1yhvevCF6lNQpmUbpsdqxjyNmkAGW5cxFbQ
	AKxCpzuBSNmbCMCztx9iGPDYJBMPo99h0AtgekUrp7SIQfhrMDiFSGnzhgkdtYIL7oRz69czn+f7J
	5TdeTgVk8X7KHOtdrjgSOdG9VTVzAnR/mASFfq30bd+AQWH28GxDyyOADCiEDPe7KiX0Vh8Ghm4AP
	Cu0/r/hGeaGc0wZbg7rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a5W-00044W-CV; Tue, 11 Feb 2020 18:16:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zix-0003Jf-ED
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:29 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE55F206CC;
 Tue, 11 Feb 2020 17:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443607;
 bh=1k+eFdeqZiyBy/ePjSfoyQp4vInj3/3+ncVL78Lab8o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zfT8vd3eeMpexNAyieRup0brrwNrvRI+NPZ0Jinp2w15Ndp6MOpMAKIEdVTpZIYw1
 Lrz5FNVuq6q+UsVMj4h2Krj9GR6tJuSEPaBDUB/DgN66xnbboMilNLG4jAUgtpzWBS
 ZHMsLCfRvSGriCgBK84/pWUukULR4iorfbrV9QOc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zff-004O7k-Cq; Tue, 11 Feb 2020 17:50:03 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 17/94] KVM: arm64: nv: Save/Restore vEL2 sysregs
Date: Tue, 11 Feb 2020 17:48:21 +0000
Message-Id: <20200211174938.27809-18-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095327_551983_D904DAFC 
X-CRM114-Status: GOOD (  19.98  )
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

From: Andre Przywara <andre.przywara@arm.com>

Whenever we need to restore the guest's system registers to the CPU, we
now need to take care of the EL2 system registers as well. Most of them
are accessed via traps only, but some have an immediate effect and also
a guest running in VHE mode would expect them to be accessible via their
EL1 encoding, which we do not trap.

Split the current __sysreg_{save,restore}_el1_state() functions into
handling common sysregs, then differentiate between the guest running in
vEL2 and vEL1.

For vEL2 we write the virtual EL2 registers with an identical format directly
into their EL1 counterpart, and translate the few registers that have a
different format for the same effect on the execution when running a
non-VHE guest guest hypervisor.

  [ Commit message reworked and many bug fixes applied by Marc Zyngier
    and Christoffer Dall. ]

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/sysreg-sr.c | 171 +++++++++++++++++++++++++++++++--
 1 file changed, 164 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 7672a978926c..ed22301fd2e3 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -11,6 +11,7 @@
 #include <asm/kvm_asm.h>
 #include <asm/kvm_emulate.h>
 #include <asm/kvm_hyp.h>
+#include <asm/kvm_nested.h>
 
 /*
  * Non-VHE: Both host and guest must save everything.
@@ -40,11 +41,9 @@ static void __hyp_text __sysreg_save_user_state(struct kvm_cpu_context *ctxt)
 	ctxt->sys_regs[TPIDRRO_EL0]	= read_sysreg(tpidrro_el0);
 }
 
-static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
+static void __hyp_text __sysreg_save_vel1_state(struct kvm_cpu_context *ctxt)
 {
-	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
 	ctxt->sys_regs[SCTLR_EL1]	= read_sysreg_el1(SYS_SCTLR);
-	ctxt->sys_regs[ACTLR_EL1]	= read_sysreg(actlr_el1);
 	ctxt->sys_regs[CPACR_EL1]	= read_sysreg_el1(SYS_CPACR);
 	ctxt->sys_regs[TTBR0_EL1]	= read_sysreg_el1(SYS_TTBR0);
 	ctxt->sys_regs[TTBR1_EL1]	= read_sysreg_el1(SYS_TTBR1);
@@ -58,14 +57,58 @@ static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 	ctxt->sys_regs[CONTEXTIDR_EL1]	= read_sysreg_el1(SYS_CONTEXTIDR);
 	ctxt->sys_regs[AMAIR_EL1]	= read_sysreg_el1(SYS_AMAIR);
 	ctxt->sys_regs[CNTKCTL_EL1]	= read_sysreg_el1(SYS_CNTKCTL);
-	ctxt->sys_regs[PAR_EL1]		= read_sysreg(par_el1);
-	ctxt->sys_regs[TPIDR_EL1]	= read_sysreg(tpidr_el1);
 
 	ctxt->gp_regs.sp_el1		= read_sysreg(sp_el1);
 	ctxt->gp_regs.elr_el1		= read_sysreg_el1(SYS_ELR);
 	ctxt->gp_regs.spsr[KVM_SPSR_EL1]= read_sysreg_el1(SYS_SPSR);
 }
 
+static void __sysreg_save_vel2_state(struct kvm_cpu_context *ctxt)
+{
+	ctxt->sys_regs[ESR_EL2]		= read_sysreg_el1(SYS_ESR);
+	ctxt->sys_regs[AFSR0_EL2]	= read_sysreg_el1(SYS_AFSR0);
+	ctxt->sys_regs[AFSR1_EL2]	= read_sysreg_el1(SYS_AFSR1);
+	ctxt->sys_regs[FAR_EL2]		= read_sysreg_el1(SYS_FAR);
+	ctxt->sys_regs[MAIR_EL2]	= read_sysreg_el1(SYS_MAIR);
+	ctxt->sys_regs[VBAR_EL2]	= read_sysreg_el1(SYS_VBAR);
+	ctxt->sys_regs[CONTEXTIDR_EL2]	= read_sysreg_el1(SYS_CONTEXTIDR);
+	ctxt->sys_regs[AMAIR_EL2]	= read_sysreg_el1(SYS_AMAIR);
+
+	/*
+	 * In VHE mode those registers are compatible between EL1 and EL2,
+	 * and the guest uses the _EL1 versions on the CPU naturally.
+	 * So we save them into their _EL2 versions here.
+	 * For nVHE mode we trap accesses to those registers, so our
+	 * _EL2 copy in sys_regs[] is always up-to-date and we don't need
+	 * to save anything here.
+	 */
+	if (__vcpu_el2_e2h_is_set(ctxt)) {
+		ctxt->sys_regs[SCTLR_EL2]	= read_sysreg_el1(SYS_SCTLR);
+		ctxt->sys_regs[CPTR_EL2]	= read_sysreg_el1(SYS_CPACR);
+		ctxt->sys_regs[TTBR0_EL2]	= read_sysreg_el1(SYS_TTBR0);
+		ctxt->sys_regs[TTBR1_EL2]	= read_sysreg_el1(SYS_TTBR1);
+		ctxt->sys_regs[TCR_EL2]		= read_sysreg_el1(SYS_TCR);
+		ctxt->sys_regs[CNTHCTL_EL2]	= read_sysreg_el1(SYS_CNTKCTL);
+	}
+
+	ctxt->sys_regs[SP_EL2]		= read_sysreg(sp_el1);
+	ctxt->sys_regs[ELR_EL2]		= read_sysreg_el1(SYS_ELR);
+	ctxt->sys_regs[SPSR_EL2]	= __fixup_spsr_el2_read(ctxt, read_sysreg_el1(SYS_SPSR));
+}
+
+static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
+{
+	ctxt->sys_regs[CSSELR_EL1]	= read_sysreg(csselr_el1);
+	ctxt->sys_regs[ACTLR_EL1]	= read_sysreg(actlr_el1);
+	ctxt->sys_regs[PAR_EL1]		= read_sysreg(par_el1);
+	ctxt->sys_regs[TPIDR_EL1]	= read_sysreg(tpidr_el1);
+
+	if (unlikely(__is_hyp_ctxt(ctxt)))
+		__sysreg_save_vel2_state(ctxt);
+	else
+		__sysreg_save_vel1_state(ctxt);
+}
+
 static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->gp_regs.regs.pc		= read_sysreg_el2(SYS_ELR);
@@ -113,10 +156,102 @@ static void __hyp_text __sysreg_restore_user_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[TPIDRRO_EL0],	tpidrro_el0);
 }
 
-static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
+static void __sysreg_restore_vel2_state(struct kvm_cpu_context *ctxt)
 {
+	u64 val;
+
+	write_sysreg(read_cpuid_id(),			vpidr_el2);
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
-	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
+	write_sysreg_el1(ctxt->sys_regs[MAIR_EL2],	SYS_MAIR);
+	write_sysreg_el1(ctxt->sys_regs[VBAR_EL2],	SYS_VBAR);
+	write_sysreg_el1(ctxt->sys_regs[CONTEXTIDR_EL2],SYS_CONTEXTIDR);
+	write_sysreg_el1(ctxt->sys_regs[AMAIR_EL2],	SYS_AMAIR);
+
+	if (__vcpu_el2_e2h_is_set(ctxt)) {
+		/*
+		 * In VHE mode those registers are compatible between
+		 * EL1 and EL2.
+		 */
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL2],	SYS_SCTLR);
+		write_sysreg_el1(ctxt->sys_regs[CPTR_EL2],	SYS_CPACR);
+		write_sysreg_el1(ctxt->sys_regs[TTBR0_EL2],	SYS_TTBR0);
+		write_sysreg_el1(ctxt->sys_regs[TTBR1_EL2],	SYS_TTBR1);
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL2],	SYS_TCR);
+		write_sysreg_el1(ctxt->sys_regs[CNTHCTL_EL2],	SYS_CNTKCTL);
+	} else {
+		write_sysreg_el1(translate_sctlr(ctxt->sys_regs[SCTLR_EL2]),
+				 SYS_SCTLR);
+		write_sysreg_el1(translate_cptr(ctxt->sys_regs[CPTR_EL2]),
+				 SYS_CPACR);
+		write_sysreg_el1(translate_ttbr0(ctxt->sys_regs[TTBR0_EL2]),
+				 SYS_TTBR0);
+		write_sysreg_el1(translate_tcr(ctxt->sys_regs[TCR_EL2]),
+				 SYS_TCR);
+		write_sysreg_el1(translate_cnthctl(ctxt->sys_regs[CNTHCTL_EL2]),
+				 SYS_CNTKCTL);
+	}
+
+	/*
+	 * These registers can be modified behind our back by a fault
+	 * taken inside vEL2. Save them, always.
+	 */
+	write_sysreg_el1(ctxt->sys_regs[ESR_EL2],	SYS_ESR);
+	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL2],	SYS_AFSR0);
+	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL2],	SYS_AFSR1);
+	write_sysreg_el1(ctxt->sys_regs[FAR_EL2],	SYS_FAR);
+	write_sysreg(ctxt->sys_regs[SP_EL2],		sp_el1);
+	write_sysreg_el1(ctxt->sys_regs[ELR_EL2],	SYS_ELR);
+
+	val = __fixup_spsr_el2_write(ctxt, ctxt->sys_regs[SPSR_EL2]);
+	write_sysreg_el1(val,	SYS_SPSR);
+}
+
+static void __hyp_text __sysreg_restore_vel1_state(struct kvm_cpu_context *ctxt)
+{
+	u64 mpidr;
+
+	if (has_vhe()) {
+		struct kvm_vcpu *vcpu;
+
+		/*
+		 * We need to go from a context to a vcpu, but this is a
+		 * complicated affair.
+		 *
+		 * On VHE, we should never be here with the host context as
+		 * a parameter, so let's check and bail out if that's the
+		 * case.
+		 */
+		if (WARN_ON_ONCE(ctxt->__hyp_running_vcpu))
+			return;
+
+		/*
+		 * Now that we know for sure this is a guest context, we can
+		 * extract the vcpu...
+		 */
+		vcpu = container_of(ctxt, struct kvm_vcpu, arch.ctxt);
+
+		if (nested_virt_in_use(vcpu)) {
+			/*
+			 * Only set VPIDR_EL2 for nested VMs, as this is the
+			 * only time it changes. We'll restore the MIDR_EL1
+			 * view on put.
+			 */
+			write_sysreg(ctxt->sys_regs[VPIDR_EL2],	vpidr_el2);
+
+			/*
+			 * As we're restoring a nested guest, set the value
+			 * provided by the guest hypervisor.
+			 */
+			mpidr = ctxt->sys_regs[VMPIDR_EL2];
+		} else {
+			mpidr = ctxt->sys_regs[MPIDR_EL1];
+		}
+	} else {
+		mpidr = ctxt->sys_regs[MPIDR_EL1];
+	}
+
+	write_sysreg(mpidr,				vmpidr_el2);
+	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
 
 	if (!cpus_have_const_cap(ARM64_WORKAROUND_SPECULATIVE_AT_NVHE)) {
 		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
@@ -171,6 +306,19 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg_el1(ctxt->gp_regs.spsr[KVM_SPSR_EL1],SYS_SPSR);
 }
 
+static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
+{
+	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
+	write_sysreg(ctxt->sys_regs[ACTLR_EL1],	  	actlr_el1);
+	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
+	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
+
+	if (__is_hyp_ctxt(ctxt))
+		__sysreg_restore_vel2_state(ctxt);
+	else
+		__sysreg_restore_vel1_state(ctxt);
+}
+
 static void __hyp_text
 __sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
 {
@@ -327,6 +475,15 @@ void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu)
 	/* Restore host user state */
 	__sysreg_restore_user_state(host_ctxt);
 
+	/*
+	 * If leaving a nesting guest, restore MPIDR_EL1 default view. It is
+	 * slightly ugly to do it here, but the alternative is to penalize
+	 * all non-nesting guests by forcing this on every load. Instead, we
+	 * choose to only penalize nesting VMs.
+	 */
+	if (nested_virt_in_use(vcpu))
+		write_sysreg(read_cpuid_id(),	vpidr_el2);
+
 	vcpu->arch.sysregs_loaded_on_cpu = false;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
