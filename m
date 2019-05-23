Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D4827AC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dWz45kFNELvaOgxM1vcmhT3I6vzzWn+3mVUvo/+DyHg=; b=Xxy4q39AD8afRRvhAs4L8IzOAq
	emkHld4VtX6xkCajEsBEfKhdDpsCN4kJ7crJeFSGz6j6hZQpP9jOwvj/fDRVLbEjh4mFAGtGW7Nc3
	8EWQsOzyp62fKnu+goJVhNUCRcyRCS/3IBj3pwz9VyddMw7pEnV0uxJF1+TkKfxkWPIZOYGpFeV+B
	RI0nNqTyF+3geSAQZDr/p+eJggYhpyMgsCP7FLrSvaFeII186odyrqYiUWJsLRmyItXGO/TbbsSKD
	WDmOApVn3Q7RAkQcwyEnrk2VsaKrvJT4DPmVvGAYxbJFqYxde1d1ef5dwzqTzVQuFZNGWmzmreLZl
	z+IfaVxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl62-0002ck-Ht; Thu, 23 May 2019 10:37:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4W-0000jg-Ac
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:35:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AAF9515AB;
 Thu, 23 May 2019 03:35:39 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 958D83F718;
 Thu, 23 May 2019 03:35:37 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/15] arm64: KVM/debug: drop pmscr_el1 and use
 sys_regs[PMSCR_EL1] in kvm_cpu_context
Date: Thu, 23 May 2019 11:34:55 +0100
Message-Id: <20190523103502.25925-9-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033541_075365_BC5EC6FC 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

kvm_cpu_context now has support to stash the complete SPE buffer control
context. We no longer need the pmscr_el1 kvm_vcpu_arch and it can be
dropped.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  2 --
 arch/arm64/kvm/hyp/debug-sr.c     | 26 +++++++++++++++-----------
 2 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 559aa6931291..6921fdfd477b 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -310,8 +310,6 @@ struct kvm_vcpu_arch {
 	struct {
 		/* {Break,watch}point registers */
 		struct kvm_guest_debug_arch regs;
-		/* Statistical profiling extension */
-		u64 pmscr_el1;
 	} host_debug_state;
 
 	/* VGIC state */
diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index 618884df1dc4..a2714a5eb3e9 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -66,19 +66,19 @@
 	default:	write_debug(ptr[0], reg, 0);			\
 	}
 
-static void __hyp_text __debug_save_spe_nvhe(u64 *pmscr_el1)
+static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
 {
 	u64 reg;
 
 	/* Clear pmscr in case of early return */
-	*pmscr_el1 = 0;
+	ctxt->sys_regs[PMSCR_EL1] = 0;
 
 	/* SPE present on this CPU? */
 	if (!cpuid_feature_extract_unsigned_field(read_sysreg(id_aa64dfr0_el1),
 						  ID_AA64DFR0_PMSVER_SHIFT))
 		return;
 
-	/* Yes; is it owned by EL3? */
+	/* Yes; is it owned by higher EL? */
 	reg = read_sysreg_s(SYS_PMBIDR_EL1);
 	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
 		return;
@@ -89,7 +89,7 @@ static void __hyp_text __debug_save_spe_nvhe(u64 *pmscr_el1)
 		return;
 
 	/* Yes; save the control register and disable data generation */
-	*pmscr_el1 = read_sysreg_el1_s(SYS_PMSCR);
+	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1_s(SYS_PMSCR);
 	write_sysreg_el1_s(0, SYS_PMSCR);
 	isb();
 
@@ -98,16 +98,16 @@ static void __hyp_text __debug_save_spe_nvhe(u64 *pmscr_el1)
 	dsb(nsh);
 }
 
-static void __hyp_text __debug_restore_spe_nvhe(u64 pmscr_el1)
+static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
 {
-	if (!pmscr_el1)
+	if (!ctxt->sys_regs[PMSCR_EL1])
 		return;
 
 	/* The host page table is installed, but not yet synchronised */
 	isb();
 
 	/* Re-enable data generation */
-	write_sysreg_el1_s(pmscr_el1, SYS_PMSCR);
+	write_sysreg_el1_s(ctxt->sys_regs[PMSCR_EL1], SYS_PMSCR);
 }
 
 static void __hyp_text __debug_save_state(struct kvm_vcpu *vcpu,
@@ -175,14 +175,15 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 	struct kvm_guest_debug_arch *host_dbg;
 	struct kvm_guest_debug_arch *guest_dbg;
 
+	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
+	guest_ctxt = &vcpu->arch.ctxt;
+
 	if (!has_vhe())
-		__debug_restore_spe_nvhe(vcpu->arch.host_debug_state.pmscr_el1);
+		__debug_restore_spe_nvhe(host_ctxt);
 
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
 
-	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
-	guest_ctxt = &vcpu->arch.ctxt;
 	host_dbg = &vcpu->arch.host_debug_state.regs;
 	guest_dbg = kern_hyp_va(vcpu->arch.debug_ptr);
 
@@ -198,8 +199,11 @@ void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
 	 * Non-VHE: Disable and flush SPE data generation
 	 * VHE: The vcpu can run, but it can't hide.
 	 */
+	struct kvm_cpu_context *host_ctxt;
+
+	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
 	if (!has_vhe())
-		__debug_save_spe_nvhe(&vcpu->arch.host_debug_state.pmscr_el1);
+		__debug_save_spe_nvhe(host_ctxt);
 }
 
 void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
