Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CD9159794
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gB0qqEmT8yKt9F2MGuXGgVLxrAoPKa2sPARfdFQ5sY=; b=kq+Dhf1OrBQ0s4
	My54kq8CbSwakrH1sxmyk5NHivF2akNH/KjgLmqokek79akw3+GvxHpT3Kdz42thpQbZHFg12j4h9
	uylVQQrYX00OWE47KQ8QeeJdYzP/fZXy+473yVElfaL4cr8iWHmRGFKQKf1bR8rQLOcdct3Rrhw/j
	RKH9zy1lvABfi3TYnzprIyqvzu/Q/XGK81Y5U7Sz1rztNEx5VulV209K/qaO89m8kErFgFYRWjBzr
	/B3PhCHjCAYbqmf6D+Uq0ltio1X0TGCbt2z20qpCoSVfRErvOZ5IsRDDgFJv+bzbheShKFqcjhtsv
	OwbAQLgrhW+9EpWXAifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1ZrK-0004cu-CA; Tue, 11 Feb 2020 18:02:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZhR-00020D-Lj
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:58 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A48C6208C3;
 Tue, 11 Feb 2020 17:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443512;
 bh=f33AsioL7+uzWUtpnmAwqyECVEr0La+k9kBb0QdEzio=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RssqqczRl8ErSQxoAf+QfaTBvF8UEXGhf1QiEHJo1Mxn2tMIewbNiFBpab2Tdv2Wf
 A0z4fMM9tkq2sMYLf4hjTddHs4uj4oJmXqMnzkA+j9l2b7zDJNL49ENIvxjrsGoSnY
 Fc53rAzdceNzGakmzSASPPX+2d2VqWHUjZYdajHU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgM-004O7k-0f; Tue, 11 Feb 2020 17:50:46 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 89/94] KVM: arm64: nv: Synchronize PSTATE early on exit
Date: Tue, 11 Feb 2020 17:49:33 +0000
Message-Id: <20200211174938.27809-90-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095153_870919_061F0E51 
X-CRM114-Status: GOOD (  17.53  )
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

The NV code relies on predicates such as is_hyp_ctxt() being
reliable. In turn, is_hyp_ctxt() relies on things like PSTATE
and the virtual HCR_EL2 being accurate.

But with ARMv8.4-NV removing trapping for a large part of the
EL2 system registers (among which HCR_EL2), we can't use such
trapping to synchronize the rest of the state.

Let's look at the following sequence for a VHE guest:

 (1) enter guest in host EL0
 (2) guest traps to guest vEL2 (no hypervisor intervention)
 (3) guest clears virtual HCR_EL2.TGE (no trap either)
 (4) host interrupt fires, exit
 (5) is_hyp_ctxt() now says "guest" (PSTATE.M==EL1 and TGE==0)

It is obvious that such behaviour would be rather unfortunate,
and lead to interesting, difficult to catch bugs specially if
preemption kicks in (yes, I wasted a whole week chasing this one).

In order to preserve the invariant that a guest entered in host
context must exit in the same context, we must make sure that
is_hyp_ctxt() works correctly. Since we can always observe the
guest value of HCR_EL2.{E2H,TGE} in the VNCR_EL2 page, we solely
need to synchronize PSTATE as early as possible.

This basically amounts to moving from_hw_pstate() as close
as possible to the guest exit point, and fixup_guest_exit()
seems as good a place as any.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/switch.c    | 51 ++++++++++++++++++++++++++++++++--
 arch/arm64/kvm/hyp/sysreg-sr.c | 26 ++---------------
 2 files changed, 51 insertions(+), 26 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 3deea28794e1..c35e67241d8e 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -537,8 +537,45 @@ static bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
  * the guest, false when we should restore the host state and return to the
  * main run loop.
  */
-static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code)
+static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code,
+					bool hyp_ctxt)
 {
+	/*
+	 * Sync pstate back as early as possible, so that is_hyp_ctxt()
+	 * reflects the exact context. It is otherwise possible to get
+	 * confused with a VHE guest and ARMv8.4-NV, such as:
+	 *
+	 * (1) enter guest in host EL0
+	 * (2) guest traps to guest vEL2 (no hypervisor intervention)
+	 * (3) guest clears virtual HCR_EL2.TGE (no trap either)
+	 * (4) host interrupt fires, exit
+	 * (5) is_hyp_ctxt() now says "guest" (pstate.M==EL1 and TGE==0)
+	 *
+	 * If host preemption occurs, vcpu_load/put() will be very confused.
+	 * This of course only matters to VHE.
+	 */
+
+	if (has_vhe()) {
+		u64 pstate = read_sysreg_el2(SYS_SPSR);
+
+		if (unlikely(hyp_ctxt)) {
+			u64 mode = pstate & PSR_MODE_MASK;
+
+			switch (mode) {
+			case PSR_MODE_EL1t:
+				mode = PSR_MODE_EL2t;
+				break;
+			case PSR_MODE_EL1h:
+				mode = PSR_MODE_EL2h;
+				break;
+			}
+
+			pstate = (pstate & ~PSR_MODE_MASK) | mode;
+		}
+
+		*vcpu_cpsr(vcpu) = pstate;
+	}
+
 	if (ARM_EXCEPTION_CODE(*exit_code) != ARM_EXCEPTION_IRQ)
 		vcpu->arch.fault.esr_el2 = read_sysreg_el2(SYS_ESR);
 
@@ -683,6 +720,7 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 	struct kvm_cpu_context *host_ctxt;
 	struct kvm_cpu_context *guest_ctxt;
 	u64 exit_code;
+	bool hyp_ctxt;
 
 	host_ctxt = vcpu->arch.host_cpu_context;
 	host_ctxt->__hyp_running_vcpu = vcpu;
@@ -709,12 +747,19 @@ int kvm_vcpu_run_vhe(struct kvm_vcpu *vcpu)
 
 	__set_guest_arch_workaround_state(vcpu);
 
+	/*
+	 * Being in HYP context or not is an invariant here. If we enter in
+	 * a given context, we exit in the same context. We can thus only
+	 * sample the context once.
+	 */
+	hyp_ctxt = is_hyp_ctxt(vcpu);
+
 	do {
 		/* Jump in the fire! */
 		exit_code = __guest_enter(vcpu, host_ctxt);
 
 		/* And we're baaack! */
-	} while (fixup_guest_exit(vcpu, &exit_code));
+	} while (fixup_guest_exit(vcpu, &exit_code, hyp_ctxt));
 
 	__set_host_arch_workaround_state(vcpu);
 
@@ -788,7 +833,7 @@ int __hyp_text __kvm_vcpu_run_nvhe(struct kvm_vcpu *vcpu)
 		exit_code = __guest_enter(vcpu, host_ctxt);
 
 		/* And we're baaack! */
-	} while (fixup_guest_exit(vcpu, &exit_code));
+	} while (fixup_guest_exit(vcpu, &exit_code, false));
 
 	__set_host_arch_workaround_state(vcpu);
 
diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index eaf78e9b3238..53ece83bf062 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -109,32 +109,12 @@ static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 		__sysreg_save_vel1_state(ctxt);
 }
 
-static u64 __hyp_text from_hw_pstate(const struct kvm_cpu_context *ctxt)
-{
-	u64 reg = read_sysreg_el2(SYS_SPSR);
-
-	if (__is_hyp_ctxt(ctxt)) {
-		u64 mode = reg & (PSR_MODE_MASK | PSR_MODE32_BIT);
-
-		switch (mode) {
-		case PSR_MODE_EL1t:
-			mode = PSR_MODE_EL2t;
-			break;
-		case PSR_MODE_EL1h:
-			mode = PSR_MODE_EL2h;
-			break;
-		}
-
-		return (reg & ~(PSR_MODE_MASK | PSR_MODE32_BIT)) | mode;
-	}
-
-	return reg;
-}
-
 static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
 {
+	/* On VHE, PSTATE is saved in fixup_guest_exit() */
+	if (!has_vhe())
+		ctxt->regs.pstate 	= read_sysreg_el2(SYS_SPSR);
 	ctxt->regs.pc			= read_sysreg_el2(SYS_ELR);
-	ctxt->regs.pstate		= from_hw_pstate(ctxt);
 
 	if (cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
 		ctxt_sys_reg(ctxt, DISR_EL1) = read_sysreg_s(SYS_VDISR_EL2);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
