Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5771597DB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLZ5Ijz7OePR+S85Inj9tXYAGeE0F3Km35DaUmJSK/k=; b=JJnPue88MJtGX/
	InLD5HDJNyLsyL0OblZlIdGyxO2o60j/SFeeuNK1w0pmvhKG5XlVQX12GXsOZDbkRdF9/gbvrC8al
	z6PP2zk01uU1tPSg7cxOftgrI+D2X/IVqVRYdp1Co/a3QsXENemtosZZTquP4wCuMG42fXTNGBB6c
	5IKQbFL/3EljF2tuMTJdRUCri9phRiO9yreWzECg0TDew4UbfGrMu3R7/l5x2l70gCpUxhLQp7nGz
	CgN5FcZl7tfshzj+kHt6isqa2ngMK39oYsAlkj70WYDAGe2BqCfT3wzZsUFZN9TtyOcTbMFzJ0Dy7
	xwDL/p/zYO8MPtub+unw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a29-00086H-HE; Tue, 11 Feb 2020 18:13:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiX-0002wc-Dq
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:04 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2F52206CC;
 Tue, 11 Feb 2020 17:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443581;
 bh=neKRGmp3bYgRzDrghb/Za/dnkVcGTm2yCxfYFw+yBO0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jIkqn+tmccY75fF46GcsxNsbpyMTZvbqo83vOHJJThT2TsZaFDKnBt8jwNbXzOYCG
 vnZgcqdsM8BdgeHQtpL3PgiPTdM2MoCR1Ogp6MP0AiFgCzCxzVVzk95tRWvP7ZN1zZ
 Hdt6BerOtWL+Hb/+wYpYQKL0wYJNkSwHHU7TbJSQ=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfv-004O7k-Se; Tue, 11 Feb 2020 17:50:20 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 45/94] KVM: arm64: nv: Trap and emulate TLBI instructions
 from virtual EL2
Date: Tue, 11 Feb 2020 17:48:49 +0000
Message-Id: <20200211174938.27809-46-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095301_661139_C41B43AD 
X-CRM114-Status: GOOD (  23.80  )
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

From: Jintack Lim <jintack.lim@linaro.org>

When supporting nested virtualization a guest hypervisor executing TLBI
instructions must be trapped and emulated by the host hypervisor,
because the guest hypervisor can only affect physical TLB entries
relating to its own execution environment (virtual EL2 in EL1) but not
to the nested guests as required by the semantics of the instructions
and TLBI instructions might also result in updates (invalidations) to
shadow page tables.

This patch does several things.

1. List and define all TLBI system instructions to emulate.

2. Emulate TLBI ALLE2(IS) instruction executed in the virtual EL2. Since
we emulate the virtual EL2 in the EL1, we invalidate EL1&0 regime stage
1 TLB entries with setting vttbr_el2 having the VMID of the virtual EL2.

3. Emulate TLBI VAE2* instruction executed in the virtual EL2. Based on the
same principle as TLBI ALLE2 instruction, we can simply emulate those
instructions by executing corresponding VAE1* instructions with the
virtual EL2's VMID assigned by the host hypervisor.

Note that we are able to emulate TLBI ALLE2IS precisely by only
invalidating stage 1 TLB entries via TLBI VMALL1IS instruction, but to
make it simeple, we reuse the existing function, __kvm_tlb_flush_vmid(),
which invalidates both of stage 1 and 2 TLB entries.

4. TLBI ALLE1(IS) instruction invalidates all EL1&0 regime stage 1 and 2
TLB entries (on all PEs in the same Inner Shareable domain). To emulate
these instructions, we first need to clear all the mappings in the
shadow page tables since executing those instructions implies the change
of mappings in the stage 2 page tables maintained by the guest
hypervisor.  We then need to invalidate all EL1&0 regime stage 1 and 2
TLB entries of all VMIDs, which are assigned by the host hypervisor, for
this VM.

5. Based on the same principle as TLBI ALLE1(IS) emulation, we clear the
mappings in the shadow stage-2 page tables and invalidate TLB entries.
But this time we do it only for the current VMID from the guest
hypervisor's perspective, not for all VMIDs.

6. Based on the same principle as TLBI ALLE1(IS) and TLBI VMALLS12E1(IS)
emulation, we clear the mappings in the shadow stage-2 page tables and
invalidate TLB entries. We do it only for one mapping for the current
VMID from the guest hypervisor's view.

7. Forward system instruction traps to the virtual EL2 if a
corresponding bit in the virtual HCR_EL2 is set.

8. Even though a guest hypervisor can execute TLBI instructions that are
accesible at EL1 without trap, it's wrong; All those TLBI instructions
work based on current VMID, and when running a guest hypervisor current
VMID is the one for itself, not the one from the virtual vttbr_el2. So
letting a guest hypervisor execute those TLBI instructions results in
invalidating its own TLB entries and leaving invalid TLB entries
unhandled.

Therefore we trap and emulate those TLBI instructions. The emulation is
simple; we find a shadow VMID mapped to the virtual vttbr_el2, set it in
the physical vttbr_el2, then execute the same instruction in EL2.

We don't set HCR_EL2.TTLB bit yet.

  [ Changes performed by Marc Zynger:

    The TLBI handling code more or less directly execute the same
    instruction that has been trapped (with an EL2->EL1 conversion
    in the case of an EL2 TLBI), but that's unfortunately not enough:

    - TLBIs must be upgraded to the Inner Shareable domain to account
      for vcpu migration, just like we already have with HCR_EL2.FB.

    - The DSB instruction that synchronises these must thus be on
      the Inner Shareable domain as well.

    - Prior to executing the TLBI, we need another DSB ISHST to make
      sure that the update to the page tables is now visible.

      Ordering of system instructions fixed

    - The current TLB invalidation code is pretty buggy, as it assume a
      page mapping. On the contrary, it is likely that TLB invalidation
      will cover more than a single page, and the size should be decided
      by the guests configuration (and not the host's).

      Since we don't cache the guest mapping sizes in the shadow PT yet,
      let's assume the worse case (a block mapping) and invalidate that.

      Take this opportunity to fix the decoding of the parameter (it
      isn't a straight IPA).

    - In general, we always emulate local TBL invalidations as being
      as upgraded to the Inner Shareable domain so that we can easily
      deal with vcpu migration. This is consistent with the fact that
      we set HCR_EL2.FB when running non-nested VMs.

      So let's emulate TLBI ALLE2 as ALLE2IS.
  ]

  [ Changes performed by Christoffer Dall:

    Sometimes when we are invalidating the TLB for a certain S2 MMU
    context, this context can also have EL2 context associated with it
    and we have to invalidate this too.
  ]

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
---
 arch/arm64/include/asm/kvm_asm.h |   2 +
 arch/arm64/include/asm/sysreg.h  |  36 ++++++
 arch/arm64/kvm/hyp/switch.c      |   4 +-
 arch/arm64/kvm/hyp/tlb.c         |  81 ++++++++++++
 arch/arm64/kvm/sys_regs.c        | 216 +++++++++++++++++++++++++++++++
 virt/kvm/arm/mmu.c               |  18 ++-
 6 files changed, 354 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 8acbe64572a2..c43160d2940d 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -62,6 +62,8 @@ extern void __kvm_flush_vm_context(void);
 extern void __kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa);
 extern void __kvm_tlb_flush_vmid(struct kvm_s2_mmu *mmu);
 extern void __kvm_tlb_flush_local_vmid(struct kvm_vcpu *vcpu);
+extern void __kvm_tlb_vae2is(struct kvm_s2_mmu *mmu, u64 va, u64 sys_encoding);
+extern void __kvm_tlb_el1_instr(struct kvm_s2_mmu *mmu, u64 val, u64 sys_encoding);
 
 extern void __kvm_timer_set_cntvoff(u32 cntvoff_low, u32 cntvoff_high);
 extern void __kvm_at_s1e01(struct kvm_vcpu *vcpu, u32 op, u64 vaddr);
diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
index f0bb76c7d04d..bf465ddde59e 100644
--- a/arch/arm64/include/asm/sysreg.h
+++ b/arch/arm64/include/asm/sysreg.h
@@ -549,6 +549,42 @@
 #define OP_AT_S12E0R	sys_insn(AT_Op0, 4, AT_CRn, 8, 6)
 #define OP_AT_S12E0W	sys_insn(AT_Op0, 4, AT_CRn, 8, 7)
 
+/* TLBI instructions */
+#define TLBI_Op0	1
+#define TLBI_Op1_EL1	0	/* Accessible from EL1 or higher */
+#define TLBI_Op1_EL2	4	/* Accessible from EL2 or higher */
+#define TLBI_CRn	8
+#define tlbi_insn_el1(CRm, Op2)	sys_insn(TLBI_Op0, TLBI_Op1_EL1, TLBI_CRn, (CRm), (Op2))
+#define tlbi_insn_el2(CRm, Op2)	sys_insn(TLBI_Op0, TLBI_Op1_EL2, TLBI_CRn, (CRm), (Op2))
+
+#define OP_TLBI_VMALLE1IS	tlbi_insn_el1(3, 0)
+#define OP_TLBI_VAE1IS		tlbi_insn_el1(3, 1)
+#define OP_TLBI_ASIDE1IS	tlbi_insn_el1(3, 2)
+#define OP_TLBI_VAAE1IS		tlbi_insn_el1(3, 3)
+#define OP_TLBI_VALE1IS		tlbi_insn_el1(3, 5)
+#define OP_TLBI_VAALE1IS	tlbi_insn_el1(3, 7)
+#define OP_TLBI_VMALLE1		tlbi_insn_el1(7, 0)
+#define OP_TLBI_VAE1		tlbi_insn_el1(7, 1)
+#define OP_TLBI_ASIDE1		tlbi_insn_el1(7, 2)
+#define OP_TLBI_VAAE1		tlbi_insn_el1(7, 3)
+#define OP_TLBI_VALE1		tlbi_insn_el1(7, 5)
+#define OP_TLBI_VAALE1		tlbi_insn_el1(7, 7)
+
+#define OP_TLBI_IPAS2E1IS	tlbi_insn_el2(0, 1)
+#define OP_TLBI_IPAS2LE1IS	tlbi_insn_el2(0, 5)
+#define OP_TLBI_ALLE2IS		tlbi_insn_el2(3, 0)
+#define OP_TLBI_VAE2IS		tlbi_insn_el2(3, 1)
+#define OP_TLBI_ALLE1IS		tlbi_insn_el2(3, 4)
+#define OP_TLBI_VALE2IS		tlbi_insn_el2(3, 5)
+#define OP_TLBI_VMALLS12E1IS	tlbi_insn_el2(3, 6)
+#define OP_TLBI_IPAS2E1		tlbi_insn_el2(4, 1)
+#define OP_TLBI_IPAS2LE1	tlbi_insn_el2(4, 5)
+#define OP_TLBI_ALLE2		tlbi_insn_el2(7, 0)
+#define OP_TLBI_VAE2		tlbi_insn_el2(7, 1)
+#define OP_TLBI_ALLE1		tlbi_insn_el2(7, 4)
+#define OP_TLBI_VALE2		tlbi_insn_el2(7, 5)
+#define OP_TLBI_VMALLS12E1	tlbi_insn_el2(7, 6)
+
 /* Common SCTLR_ELx flags. */
 #define SCTLR_ELx_DSSBS	(BIT(44))
 #define SCTLR_ELx_ENIA	(BIT(31))
diff --git a/arch/arm64/kvm/hyp/switch.c b/arch/arm64/kvm/hyp/switch.c
index 61686b8a992e..57e6e848b7a7 100644
--- a/arch/arm64/kvm/hyp/switch.c
+++ b/arch/arm64/kvm/hyp/switch.c
@@ -160,7 +160,7 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
 			 * the EL1 virtual memory control register accesses
 			 * as well as the AT S1 operations.
 			 */
-			hcr |= HCR_TVM | HCR_TRVM | HCR_AT | HCR_NV1;
+			hcr |= HCR_TVM | HCR_TRVM | HCR_AT | HCR_TTLB | HCR_NV1;
 		} else {
 			/*
 			 * For a guest hypervisor on v8.1 (VHE), allow to
@@ -190,7 +190,7 @@ static void __hyp_text __activate_traps(struct kvm_vcpu *vcpu)
 			 * trapped too.
 			 */
 			if (!vcpu_el2_tge_is_set(vcpu))
-				hcr |= HCR_AT;
+				hcr |= HCR_AT | HCR_TTLB;
 		}
 	}
 
diff --git a/arch/arm64/kvm/hyp/tlb.c b/arch/arm64/kvm/hyp/tlb.c
index a0d2bdba9f4e..aa08300774fa 100644
--- a/arch/arm64/kvm/hyp/tlb.c
+++ b/arch/arm64/kvm/hyp/tlb.c
@@ -237,3 +237,84 @@ void __hyp_text __kvm_flush_vm_context(void)
 
 	dsb(ish);
 }
+
+void __hyp_text __kvm_tlb_vae2is(struct kvm_s2_mmu *mmu, u64 va, u64 sys_encoding)
+{
+	struct tlb_inv_context cxt;
+
+	dsb(ishst);
+
+	/* Switch to requested VMID */
+	__tlb_switch_to_guest(mmu, &cxt);
+
+	/*
+	 * Execute the EL1 version of TLBI VAE2* instruction, forcing
+	 * an upgrade to the Inner Shareable domain in order to
+	 * perform the invalidation on all CPUs.
+	 */
+	switch (sys_encoding) {
+	case OP_TLBI_VAE2:
+	case OP_TLBI_VAE2IS:
+		__tlbi(vae1is, va);
+		break;
+	case OP_TLBI_VALE2:
+	case OP_TLBI_VALE2IS:
+		__tlbi(vale1is, va);
+		break;
+	default:
+		break;
+	}
+	dsb(ish);
+	isb();
+
+	__tlb_switch_to_host(mmu, &cxt);
+}
+
+void __hyp_text __kvm_tlb_el1_instr(struct kvm_s2_mmu *mmu, u64 val, u64 sys_encoding)
+{
+	struct tlb_inv_context cxt;
+
+	dsb(ishst);
+
+	/* Switch to requested VMID */
+	__tlb_switch_to_guest(mmu, &cxt);
+
+	/*
+	 * Execute the same instruction as the guest hypervisor did,
+	 * expanding the scope of local TLB invalidations to the Inner
+	 * Shareable domain so that it takes place on all CPUs. This
+	 * is equivalent to having HCR_EL2.FB set.
+	 */
+	switch (sys_encoding) {
+	case OP_TLBI_VMALLE1:
+	case OP_TLBI_VMALLE1IS:
+		__tlbi(vmalle1is);
+		break;
+	case OP_TLBI_VAE1:
+	case OP_TLBI_VAE1IS:
+		__tlbi(vae1is, val);
+		break;
+	case OP_TLBI_ASIDE1:
+	case OP_TLBI_ASIDE1IS:
+		__tlbi(aside1is, val);
+		break;
+	case OP_TLBI_VAAE1:
+	case OP_TLBI_VAAE1IS:
+		__tlbi(vaae1is, val);
+		break;
+	case OP_TLBI_VALE1:
+	case OP_TLBI_VALE1IS:
+		__tlbi(vale1is, val);
+		break;
+	case OP_TLBI_VAALE1:
+	case OP_TLBI_VAALE1IS:
+		__tlbi(vaale1is, val);
+		break;
+	default:
+		break;
+	}
+	dsb(ish);
+	isb();
+
+	__tlb_switch_to_host(mmu, &cxt);
+}
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 1ff2e16b1f57..527319ff83f1 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1683,6 +1683,11 @@ static bool forward_at_traps(struct kvm_vcpu *vcpu)
 	return forward_traps(vcpu, HCR_AT);
 }
 
+static bool forward_ttlb_traps(struct kvm_vcpu *vcpu)
+{
+	return forward_traps(vcpu, HCR_TTLB);
+}
+
 static bool access_elr(struct kvm_vcpu *vcpu,
 		       struct sys_reg_params *p,
 		       const struct sys_reg_desc *r)
@@ -2204,6 +2209,189 @@ static bool handle_s12w(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 	return handle_s12(vcpu, p, r, true);
 }
 
+static bool handle_alle2is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			   const struct sys_reg_desc *r)
+{
+	/*
+	 * To emulate invalidating all EL2 regime stage 1 TLB entries for all
+	 * PEs, executing TLBI VMALLE1IS is enough. But reuse the existing
+	 * interface for the simplicity; invalidating stage 2 entries doesn't
+	 * affect the correctness.
+	 */
+	kvm_call_hyp(__kvm_tlb_flush_vmid, &vcpu->kvm->arch.mmu);
+	return true;
+}
+
+static bool handle_vae2is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			  const struct sys_reg_desc *r)
+{
+	int sys_encoding = sys_insn(p->Op0, p->Op1, p->CRn, p->CRm, p->Op2);
+
+	/*
+	 * Based on the same principle as TLBI ALLE2 instruction
+	 * emulation, we emulate TLBI VAE2* instructions by executing
+	 * corresponding TLBI VAE1* instructions with the virtual
+	 * EL2's VMID assigned by the host hypervisor.
+	 */
+	kvm_call_hyp(__kvm_tlb_vae2is, &vcpu->kvm->arch.mmu,
+		     p->regval, sys_encoding);
+	return true;
+}
+
+static bool handle_alle1is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			   const struct sys_reg_desc *r)
+{
+	struct kvm_s2_mmu *mmu = &vcpu->kvm->arch.mmu;
+	spin_lock(&vcpu->kvm->mmu_lock);
+
+	/*
+	 * Clear all mappings in the shadow page tables and invalidate the stage
+	 * 1 and 2 TLB entries via kvm_tlb_flush_vmid_ipa().
+	 */
+	kvm_nested_s2_clear(vcpu->kvm);
+
+	if (mmu->vmid.vmid_gen) {
+		/*
+		 * Invalidate the stage 1 and 2 TLB entries for the host OS
+		 * in a VM only if there is one.
+		 */
+		kvm_call_hyp(__kvm_tlb_flush_vmid, mmu);
+	}
+
+	spin_unlock(&vcpu->kvm->mmu_lock);
+
+	return true;
+}
+
+static bool handle_vmalls12e1is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+				const struct sys_reg_desc *r)
+{
+	u64 vttbr = vcpu_read_sys_reg(vcpu, VTTBR_EL2);
+	struct kvm_s2_mmu *mmu;
+
+	spin_lock(&vcpu->kvm->mmu_lock);
+
+	mmu = lookup_s2_mmu(vcpu->kvm, vttbr, HCR_VM);
+	if (mmu)
+		kvm_unmap_stage2_range(mmu, 0, kvm_phys_size(vcpu->kvm));
+
+	mmu = lookup_s2_mmu(vcpu->kvm, vttbr, 0);
+	if (mmu)
+		kvm_unmap_stage2_range(mmu, 0, kvm_phys_size(vcpu->kvm));
+
+	spin_unlock(&vcpu->kvm->mmu_lock);
+
+	return true;
+}
+
+static bool handle_ipas2e1is(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			     const struct sys_reg_desc *r)
+{
+	u64 vttbr = vcpu_read_sys_reg(vcpu, VTTBR_EL2);
+	u64 vtcr = vcpu_read_sys_reg(vcpu, VTCR_EL2);
+	struct kvm_s2_mmu *mmu;
+	u64 base_addr;
+	int max_size;
+
+	/*
+	 * We drop a number of things from the supplied value:
+	 *
+	 * - NS bit: we're non-secure only.
+	 *
+	 * - TTL field: We already have the granule size from the
+	 *   VTCR_EL2.TG0 field, and the level is only relevant to the
+	 *   guest's S2PT.
+	 *
+	 * - IPA[51:48]: We don't support 52bit IPA just yet...
+	 *
+	 * And of course, adjust the IPA to be on an actual address.
+	 */
+	base_addr = (p->regval & GENMASK_ULL(35, 0)) << 12;
+
+	/* Compute the maximum extent of the invalidation */
+	switch ((vtcr & VTCR_EL2_TG0_MASK)) {
+	case VTCR_EL2_TG0_4K:
+		max_size = SZ_1G;
+		break;
+	case VTCR_EL2_TG0_16K:
+		max_size = SZ_32M;
+		break;
+	case VTCR_EL2_TG0_64K:
+		/*
+		 * No, we do not support 52bit IPA in nested yet. Once
+		 * we do, this should be 4TB.
+		 */
+		/* FIXME: remove the 52bit PA support from the IDregs */
+		max_size = SZ_512M;
+		break;
+	default:
+		BUG();
+	}
+
+	spin_lock(&vcpu->kvm->mmu_lock);
+
+	mmu = lookup_s2_mmu(vcpu->kvm, vttbr, HCR_VM);
+	if (mmu)
+		kvm_unmap_stage2_range(mmu, base_addr, max_size);
+
+	mmu = lookup_s2_mmu(vcpu->kvm, vttbr, 0);
+	if (mmu)
+		kvm_unmap_stage2_range(mmu, base_addr, max_size);
+
+	spin_unlock(&vcpu->kvm->mmu_lock);
+
+	return true;
+}
+
+static bool handle_tlbi_el1(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
+			    const struct sys_reg_desc *r)
+{
+	u32 sys_encoding = sys_insn(p->Op0, p->Op1, p->CRn, p->CRm, p->Op2);
+
+	/*
+	 * If we're here, this is because we've trapped on a EL1 TLBI
+	 * instruction that affects the EL1 translation regime while
+	 * we're running in a context that doesn't allow us to let the
+	 * HW do its thing (aka vEL2):
+	 *
+	 * - HCR_EL2.E2H == 0 : a non-VHE guest
+	 * - HCR_EL2.{E2H,TGE} == { 1, 0 } : a VHE guest in guest mode
+	 *
+	 * We don't expect these helpers to ever be called when running
+	 * in a vEL1 context.
+	 */
+
+	WARN_ON(!vcpu_mode_el2(vcpu));
+
+	mutex_lock(&vcpu->kvm->lock);
+
+	if ((__vcpu_sys_reg(vcpu, HCR_EL2) & (HCR_E2H | HCR_TGE)) != (HCR_E2H | HCR_TGE)) {
+		u64 virtual_vttbr = vcpu_read_sys_reg(vcpu, VTTBR_EL2);
+		struct kvm_s2_mmu *mmu;
+
+		mmu = lookup_s2_mmu(vcpu->kvm, virtual_vttbr, HCR_VM);
+		if (mmu)
+			kvm_call_hyp(__kvm_tlb_el1_instr,
+				     mmu, p->regval, sys_encoding);
+
+		mmu = lookup_s2_mmu(vcpu->kvm, virtual_vttbr, 0);
+		if (mmu)
+			kvm_call_hyp(__kvm_tlb_el1_instr,
+				     mmu, p->regval, sys_encoding);
+	} else {
+		/*
+		 * ARMv8.4-NV allows the guest to change TGE behind
+		 * our back, so we always trap EL1 TLBIs from vEL2...
+		 */
+		kvm_call_hyp(__kvm_tlb_el1_instr,
+			     &vcpu->kvm->arch.mmu, p->regval, sys_encoding);
+	}
+
+	mutex_unlock(&vcpu->kvm->lock);
+
+	return true;
+}
+
 /*
  * AT instruction emulation
  *
@@ -2286,12 +2474,40 @@ static struct sys_reg_desc sys_insn_descs[] = {
 	{ SYS_DESC(SYS_DC_CSW), access_dcsw },
 	{ SYS_DESC(SYS_DC_CISW), access_dcsw },
 
+	SYS_INSN_TO_DESC(TLBI_VMALLE1IS, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VAE1IS, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_ASIDE1IS, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VAAE1IS, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VALE1IS, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VAALE1IS, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VMALLE1, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VAE1, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_ASIDE1, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VAAE1, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VALE1, handle_tlbi_el1, forward_ttlb_traps),
+	SYS_INSN_TO_DESC(TLBI_VAALE1, handle_tlbi_el1, forward_ttlb_traps),
+
 	SYS_INSN_TO_DESC(AT_S1E2R, handle_s1e2, forward_nv_traps),
 	SYS_INSN_TO_DESC(AT_S1E2W, handle_s1e2, forward_nv_traps),
 	SYS_INSN_TO_DESC(AT_S12E1R, handle_s12r, forward_nv_traps),
 	SYS_INSN_TO_DESC(AT_S12E1W, handle_s12w, forward_nv_traps),
 	SYS_INSN_TO_DESC(AT_S12E0R, handle_s12r, forward_nv_traps),
 	SYS_INSN_TO_DESC(AT_S12E0W, handle_s12w, forward_nv_traps),
+
+	SYS_INSN_TO_DESC(TLBI_IPAS2E1IS, handle_ipas2e1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_IPAS2LE1IS, handle_ipas2e1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_ALLE2IS, handle_alle2is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_VAE2IS, handle_vae2is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_ALLE1IS, handle_alle1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_VALE2IS, handle_vae2is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_VMALLS12E1IS, handle_vmalls12e1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_IPAS2E1, handle_ipas2e1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_IPAS2LE1, handle_ipas2e1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_ALLE2, handle_alle2is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_VAE2, handle_vae2is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_ALLE1, handle_alle1is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_VALE2, handle_vae2is, forward_nv_traps),
+	SYS_INSN_TO_DESC(TLBI_VMALLS12E1, handle_vmalls12e1is, forward_nv_traps),
 };
 
 static bool trap_dbgidr(struct kvm_vcpu *vcpu,
diff --git a/virt/kvm/arm/mmu.c b/virt/kvm/arm/mmu.c
index dc3bded72363..0086b42237af 100644
--- a/virt/kvm/arm/mmu.c
+++ b/virt/kvm/arm/mmu.c
@@ -55,7 +55,23 @@ static bool memslot_is_logging(struct kvm_memory_slot *memslot)
  */
 void kvm_flush_remote_tlbs(struct kvm *kvm)
 {
-	kvm_call_hyp(__kvm_tlb_flush_vmid, &kvm->arch.mmu);
+	struct kvm_s2_mmu *mmu = &kvm->arch.mmu;
+
+	if (mmu == &kvm->arch.mmu) {
+		/*
+		 * For a normal (i.e. non-nested) guest, flush entries for the
+		 * given VMID *
+		 */
+		kvm_call_hyp(__kvm_tlb_flush_vmid, mmu);
+	} else {
+		/*
+		 * When supporting nested virtualization, we can have multiple
+		 * VMIDs in play for each VCPU in the VM, so it's really not
+		 * worth it to try to quiesce the system and flush all the
+		 * VMIDs that may be in use, instead just nuke the whole thing.
+		 */
+		kvm_call_hyp(__kvm_flush_vm_context);
+	}
 }
 
 static void kvm_tlb_flush_vmid_ipa(struct kvm_s2_mmu *mmu, phys_addr_t ipa)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
