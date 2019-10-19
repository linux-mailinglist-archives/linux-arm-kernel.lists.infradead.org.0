Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B352DD7D6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 11:56:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kIlZVZ+YtxRHh38n+H9bsQsFZyuoVEopB6zV5zD+Zk=; b=DbwxWWuZ8/MW0C
	S01OdzsWOCI8jxr9MU9ZSh7AaM1K9sUwpyEhBF5rbJh6N3leOw3QznXmeAMMPPDP197vkmj54S7RM
	iB8imUhUzVXyuSeeF0CQXSFD17feO5EXS0hk9+P8i7dEmhpvT3HQHj6yNSxRwX8GDWUncnA2b3Jdr
	BXBR0hWetnbZ54yE5xD1UfYEAqV/LFPe6VT2eXGF9ImkkGVTzoziVdKLFC8JeP7ZuMAoAyEEG0Lf0
	tmh4ZqlM8WANPeQC6sz0PsKtLg+IPW2LMUCPJ1ps5CtTwbg5Lq7cuTeD2yz1BoTWGgYZnnNU4KFtr
	ZAK8bKF8tE7H55jaqJDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlTc-0002gU-NY; Sat, 19 Oct 2019 09:56:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlSV-0001xN-2p
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 09:55:40 +0000
Received: from big-swifty.lan (78.163-31-62.static.virginmediabusiness.co.uk
 [62.31.163.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6253F222D2;
 Sat, 19 Oct 2019 09:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571478938;
 bh=/BHwWAb8kea1kN6CGDZVKU3zOASIcTMHmEllourGtwM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Nt2VeCabzxc0pbTpxeH9OCZsa/doEDq5b0S3kx1dh0zgew5lOfs0BZSS10XrMJGxF
 ATKHsPCMXuH64Z+pzkieG6fJbLo0A/4ZqJ2mp2HtoB4jQL2UqhS5kgpzDnWKhh0a7t
 E3o9P/0JxOICBWnkSwABYA1U25SPUUnH7DRQ+jno=
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 4/5] arm64: KVM: Prevent speculative S1 PTW when restoring
 vcpu context
Date: Sat, 19 Oct 2019 10:55:20 +0100
Message-Id: <20191019095521.31722-5-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191019095521.31722-1-maz@kernel.org>
References: <20191019095521.31722-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_025539_185825_6FCE4E41 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When handling erratum 1319367, we must ensure that the page table
walker cannot parse the S1 page tables while the guest is in an
inconsistent state. This is done as follows:

On guest entry:
- TCR_EL1.EPD{0,1} are set, ensuring that no PTW can occur
- all system registers are restored, except for TCR_EL1 and SCTLR_EL1
- stage-2 is restored
- SCTLR_EL1 and TCR_EL1 are restored

On guest exit:
- SCTLR_EL1.M and TCR_EL1.EPD{0,1} are set, ensuring that no PTW can occur
- stage-2 is disabled
- All host system registers are restored

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/switch.c    | 31 ++++++++++++++++++++++++++++++
 arch/arm64/kvm/hyp/sysreg-sr.c | 35 ++++++++++++++++++++++++++++++++--
 2 files changed, 64 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 69e10b29cbd0..5765b17c38c7 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -118,6 +118,20 @@ static void __hyp_text __activate_traps_nvhe(struct kvm_vcpu *vcpu)
 	}
 
 	write_sysreg(val, cptr_el2);
+
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+		struct kvm_cpu_context *ctxt = &vcpu->arch.ctxt;
+
+		isb();
+		/*
+		 * At this stage, and thanks to the above isb(), S2 is
+		 * configured and enabled. We can now restore the guest's S1
+		 * configuration: SCTLR, and only then TCR.
+		 */
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		isb();
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+	}
 }
 
 static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
@@ -156,6 +170,23 @@ static void __hyp_text __deactivate_traps_nvhe(void)
 {
 	u64 mdcr_el2 = read_sysreg(mdcr_el2);
 
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+		u64 val;
+
+		/*
+		 * Set the TCR and SCTLR registers in the exact opposite
+		 * sequence as __activate_traps_nvhe (first prevent walks,
+		 * then force the MMU on). A generous sprinkling of isb()
+		 * ensure that things happen in this exact order.
+		 */
+		val = read_sysreg_el1(SYS_TCR);
+		write_sysreg_el1(val | TCR_EPD1_MASK | TCR_EPD0_MASK, SYS_TCR);
+		isb();
+		val = read_sysreg_el1(SYS_SCTLR);
+		write_sysreg_el1(val | SCTLR_ELx_M, SYS_SCTLR);
+		isb();
+	}
+
 	__deactivate_traps_common();
 
 	mdcr_el2 &= MDCR_EL2_HPMN_MASK;
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 7ddbc849b580..fb97547bfa79 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -117,12 +117,26 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 {
 	write_sysreg(ctxt->sys_regs[MPIDR_EL1],		vmpidr_el2);
 	write_sysreg(ctxt->sys_regs[CSSELR_EL1],	csselr_el1);
-	write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+
+	if (!cpus_have_const_cap(ARM64_WORKAROUND_1319367)) {
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+	} else	if (!ctxt->__hyp_running_vcpu) {
+		/*
+		 * Must only be done for guest registers, hence the context
+		 * test. We'recoming from the host, so SCTLR.M is already
+		 * set. Pairs with __activate_traps_nvhe().
+		 */
+		write_sysreg_el1((ctxt->sys_regs[TCR_EL1] |
+				  TCR_EPD1_MASK | TCR_EPD0_MASK),
+				 SYS_TCR);
+		isb();
+	}
+
 	write_sysreg(ctxt->sys_regs[ACTLR_EL1],		actlr_el1);
 	write_sysreg_el1(ctxt->sys_regs[CPACR_EL1],	SYS_CPACR);
 	write_sysreg_el1(ctxt->sys_regs[TTBR0_EL1],	SYS_TTBR0);
 	write_sysreg_el1(ctxt->sys_regs[TTBR1_EL1],	SYS_TTBR1);
-	write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
 	write_sysreg_el1(ctxt->sys_regs[ESR_EL1],	SYS_ESR);
 	write_sysreg_el1(ctxt->sys_regs[AFSR0_EL1],	SYS_AFSR0);
 	write_sysreg_el1(ctxt->sys_regs[AFSR1_EL1],	SYS_AFSR1);
@@ -135,6 +149,23 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 	write_sysreg(ctxt->sys_regs[PAR_EL1],		par_el1);
 	write_sysreg(ctxt->sys_regs[TPIDR_EL1],		tpidr_el1);
 
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1319367) &&
+	    ctxt->__hyp_running_vcpu) {
+		/*
+		 * Must only be done for host registers, hence the context
+		 * test. Pairs with __deactivate_traps_nvhe().
+		 */
+		isb();
+		/*
+		 * At this stage, and thanks to the above isb(), S2 is
+		 * deconfigured and disabled. We can now restore the host's
+		 * S1 configuration: SCTLR, and only then TCR.
+		 */
+		write_sysreg_el1(ctxt->sys_regs[SCTLR_EL1],	SYS_SCTLR);
+		isb();
+		write_sysreg_el1(ctxt->sys_regs[TCR_EL1],	SYS_TCR);
+	}
+
 	write_sysreg(ctxt->gp_regs.sp_el1,		sp_el1);
 	write_sysreg_el1(ctxt->gp_regs.elr_el1,		SYS_ELR);
 	write_sysreg_el1(ctxt->gp_regs.spsr[KVM_SPSR_EL1],SYS_SPSR);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
