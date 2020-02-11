Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 995531597F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtZ4KWrwr2cAfZDw8MCggOtoOvVwngsoqLRASr7CRfo=; b=dKVf2VKQlvFGLU
	77frvwC+DL0IEfSYROvOU2krP8J7EgxmTVin3O19f0E855a4ZWh1r+yG0RdiZsCvhgpZ6EIgAsz+a
	W44BLyZ04xXFVc1rWipVj4z++Iagx3iOk3Q7BE0OlvN8ayqsJPMKhu3mqvFvw4u5U6MOVc0tziB3H
	k6Ak0W0v8COBt1xwsn193rgOevIxynaxbuo2lvULutqjR6xIXYum3EG9NjzVSTcbdNULAUGMLt4uA
	PbNDjuveuCq/ZrVsNq6sn8RSMWsf0cUKKWSfZIeGuW2WUMZuEQCz9vhOi/sFOJviDIkSAGsmSEOSR
	3+QpjbOYURSxW6ZMzZqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a56-0003cj-Qs; Tue, 11 Feb 2020 18:16:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Ziu-0003Gk-OW
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:26 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3269E206D7;
 Tue, 11 Feb 2020 17:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443603;
 bh=nQAHpVL2nQ+w5tVvVTUPy86BjEvLrpd6ejEhrIIhTy0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E6EOLZcy2osyUIfHwfxM1Yo1Ij7GHJC+4X8MClNJdq89jKUrgLgq7PLco/rhHhXDl
 ghOp+Y4NMlbVJWg4dSfFq4MIW6pORTSUJULq08S1v+8itBMThFwgZSOnxG4q5ruYbb
 0BjvB3r2BwyNpabfh2pPalzZX5MGN53jf53ihgFo=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgO-004O7k-Uu; Tue, 11 Feb 2020 17:50:49 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 94/94] KVM: arm64: nv: Fast-track EL1 TLBIs for VHE guests
Date: Tue, 11 Feb 2020 17:49:38 +0000
Message-Id: <20200211174938.27809-95-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095325_044153_306DDA1B 
X-CRM114-Status: GOOD (  17.11  )
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

Due to the way ARMv8.4-NV suppresses traps when accessing EL2
system registers, we can't track when the guest changes its
HCR_EL2.TGE setting. This means we alwats trap EL1 TLBIs,
even if they don't affect any guest.

This obviously has a huge impact on performance, as we handle
TLBI traps as a normal exit, and a normal VHE host issues
thousands of TLBIs when booting (and quite a few when running
userspace).

A cheap way to reduce the overhead is to handle the limited
case of {E2H,TGE}=={1,1} as a guest fixup, as we already have
the right mmu configuration in place. Just execute the decoded
instruction right away and return to the guest.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/hyp/switch.c | 35 +++++++++++++++++++++++++++++++++++
 arch/arm64/kvm/hyp/tlb.c    |  6 ++++--
 arch/arm64/kvm/sys_regs.c   | 28 +++++++++-------------------
 3 files changed, 48 insertions(+), 21 deletions(-)

diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index d8aae4b5f089..c892fdfecf56 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -539,6 +539,38 @@ static bool __hyp_text __hyp_handle_eret(struct kvm_vcpu *vcpu)
 	return true;
 }
 
+static bool __hyp_text __hyp_handle_tlbi_el1(struct kvm_vcpu *vcpu)
+{
+	u32 instr;
+	u64 val;
+
+	/*
+	 * Ideally, we would never trap on EL1 TLB invalidations when the
+	 * guest's HCR_EL2.{E2H,TGE} == {1,1}. But "thanks" to ARMv8.4, we
+	 * don't trap writes to HCR_EL2, meaning that we can't track
+	 * changes to the virtual TGE bit. So we leave HCR_EL2.TTLB set on
+	 * the host. Oopsie...
+	 *
+	 * In order to speed-up EL1 TLBIs from the vEL2 guest when TGE is
+	 * set, try and handle these invalidation as quickly as possible,
+	 * without fully exiting (unless this needs forwarding).
+	 */
+	if (kvm_vcpu_trap_get_class(vcpu) != ESR_ELx_EC_SYS64 ||
+	    !vcpu_mode_el2(vcpu) ||
+	    (__vcpu_sys_reg(vcpu, HCR_EL2) & (HCR_E2H | HCR_TGE)) != (HCR_E2H | HCR_TGE))
+		return false;
+
+	instr = esr_sys64_to_sysreg(kvm_vcpu_get_hsr(vcpu));
+	if (sys_reg_Op0(instr) != TLBI_Op0 ||
+	    sys_reg_Op1(instr) != TLBI_Op1_EL1)
+		return false;
+
+	val = vcpu_get_reg(vcpu, kvm_vcpu_sys_get_rt(vcpu));
+	__kvm_tlb_el1_instr(NULL, val, instr);
+	__kvm_skip_instr(vcpu);
+
+	return true;
+}
 
 static bool __hyp_text handle_tx2_tvm(struct kvm_vcpu *vcpu)
 {
@@ -669,6 +701,9 @@ static bool __hyp_text fixup_guest_exit(struct kvm_vcpu *vcpu, u64 *exit_code,
 	if (__hyp_handle_eret(vcpu))
 		return true;
 
+	if (__hyp_handle_tlbi_el1(vcpu))
+		return true;
+
 	if (!__populate_fault_info(vcpu))
 		return true;
 
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index 71e4e86e0981..ef52c5a58866 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -278,7 +278,8 @@ void __hyp_text __kvm_tlb_el1_instr(struct kvm_s2_mmu *mmu, u64 val, u64 sys_enc
 	dsb(ishst);
 
 	/* Switch to requested VMID */
-	__tlb_switch_to_guest(mmu, &cxt);
+	if (mmu)
+		__tlb_switch_to_guest(mmu, &cxt);
 
 	/*
 	 * Execute the same instruction as the guest hypervisor did,
@@ -317,5 +318,6 @@ void __hyp_text __kvm_tlb_el1_instr(struct kvm_s2_mmu *mmu, u64 val, u64 sys_enc
 	dsb(ish);
 	isb();
 
-	__tlb_switch_to_host(mmu, &cxt);
+	if (mmu)
+		__tlb_switch_to_host(mmu, &cxt);
 }
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index f20f5975633f..c464bc3d8dad 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2688,6 +2688,8 @@ static bool handle_tlbi_el1(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 			    const struct sys_reg_desc *r)
 {
 	u32 sys_encoding = sys_insn(p->Op0, p->Op1, p->CRn, p->CRm, p->Op2);
+	u64 virtual_vttbr = vcpu_read_sys_reg(vcpu, VTTBR_EL2);
+	struct kvm_s2_mmu *mmu;
 
 	/*
 	 * If we're here, this is because we've trapped on a EL1 TLBI
@@ -2706,27 +2708,15 @@ static bool handle_tlbi_el1(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 
 	mutex_lock(&vcpu->kvm->lock);
 
-	if ((__vcpu_sys_reg(vcpu, HCR_EL2) & (HCR_E2H | HCR_TGE)) != (HCR_E2H | HCR_TGE)) {
-		u64 virtual_vttbr = vcpu_read_sys_reg(vcpu, VTTBR_EL2);
-		struct kvm_s2_mmu *mmu;
-
-		mmu = lookup_s2_mmu(vcpu->kvm, virtual_vttbr, HCR_VM);
-		if (mmu)
-			kvm_call_hyp(__kvm_tlb_el1_instr,
-				     mmu, p->regval, sys_encoding);
+	mmu = lookup_s2_mmu(vcpu->kvm, virtual_vttbr, HCR_VM);
+	if (mmu)
+		kvm_call_hyp(__kvm_tlb_el1_instr,
+			     mmu, p->regval, sys_encoding);
 
-		mmu = lookup_s2_mmu(vcpu->kvm, virtual_vttbr, 0);
-		if (mmu)
-			kvm_call_hyp(__kvm_tlb_el1_instr,
-				     mmu, p->regval, sys_encoding);
-	} else {
-		/*
-		 * ARMv8.4-NV allows the guest to change TGE behind
-		 * our back, so we always trap EL1 TLBIs from vEL2...
-		 */
+	mmu = lookup_s2_mmu(vcpu->kvm, virtual_vttbr, 0);
+	if (mmu)
 		kvm_call_hyp(__kvm_tlb_el1_instr,
-			     &vcpu->kvm->arch.mmu, p->regval, sys_encoding);
-	}
+			     mmu, p->regval, sys_encoding);
 
 	mutex_unlock(&vcpu->kvm->lock);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
