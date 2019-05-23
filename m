Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3398F27AC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1B5xbDBEILVKpyjhTaP0DWQFuqeHzQ5o8FpXALYHe6Q=; b=FWgKjYUNRgSYrJvOETvnlpE9DX
	UqA9KgDzrgymbPInHS0dSwVRLL22FSpSANMuZQ9GNOL2eCYGNv0/LGci7R8NcYXV+uUgV0McwWw8C
	e0VsJI6QYNzTRotrUBMdQClkGdu6dgaQoZsIyHcBRjih1ykrWyEgM8RYIWV8hLpbGO9kJ8ZpmHm0G
	g5MKX5gt0PweDftT0HZ9/EeHVrafKBNb6GgLJlMGF2TMxuLdWJ5SdhvDL5k9z8jRQCiBzNCvV5BQC
	yHto8+gV2Mx/tLyKeAjDpK7mKwdCUrrm2sr3kd3qqqapx40jSwX2aqhF9bcTuy5dDKBYTGo7o3VV/
	oK/UYdcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTl6D-0002qv-SF; Thu, 23 May 2019 10:37:25 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTl4Y-0000oF-BY
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:35:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 09CF7341;
 Thu, 23 May 2019 03:35:42 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E82C43F718;
 Thu, 23 May 2019 03:35:39 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 09/15] arm64: KVM: add support to save/restore SPE
 profiling buffer controls
Date: Thu, 23 May 2019 11:34:56 +0100
Message-Id: <20190523103502.25925-10-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523103502.25925-1-sudeep.holla@arm.com>
References: <20190523103502.25925-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_033543_160532_95C50E45 
X-CRM114-Status: GOOD (  15.69  )
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

Currently since we don't support profiling using SPE in the guests,
we just save the PMSCR_EL1, flush the profiling buffers and disable
sampling. However in order to support simultaneous sampling both in
the host and guests, we need to save and reatore the complete SPE
profiling buffer controls' context.

Let's add the support for the same and keep it disabled for now.
We can enable it conditionally only if guests are allowed to use
SPE.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm64/kvm/hyp/debug-sr.c | 44 ++++++++++++++++++++++++++++-------
 1 file changed, 35 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/kvm/hyp/debug-sr.c b/arch/arm64/kvm/hyp/debug-sr.c
index a2714a5eb3e9..a4e6eaf5934f 100644
--- a/arch/arm64/kvm/hyp/debug-sr.c
+++ b/arch/arm64/kvm/hyp/debug-sr.c
@@ -66,7 +66,8 @@
 	default:	write_debug(ptr[0], reg, 0);			\
 	}
 
-static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
+static void __hyp_text
+__debug_save_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
 {
 	u64 reg;
 
@@ -83,22 +84,37 @@ static void __hyp_text __debug_save_spe_nvhe(struct kvm_cpu_context *ctxt)
 	if (reg & BIT(SYS_PMBIDR_EL1_P_SHIFT))
 		return;
 
-	/* No; is the host actually using the thing? */
-	reg = read_sysreg_s(SYS_PMBLIMITR_EL1);
-	if (!(reg & BIT(SYS_PMBLIMITR_EL1_E_SHIFT)))
+	/* Save the control register and disable data generation */
+	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1_s(SYS_PMSCR);
+
+	if (!ctxt->sys_regs[PMSCR_EL1])
 		return;
 
-	/* Yes; save the control register and disable data generation */
-	ctxt->sys_regs[PMSCR_EL1] = read_sysreg_el1_s(SYS_PMSCR);
 	write_sysreg_el1_s(0, SYS_PMSCR);
 	isb();
 
 	/* Now drain all buffered data to memory */
 	psb_csync();
 	dsb(nsh);
+
+	if (!full_ctxt)
+		return;
+
+	ctxt->sys_regs[PMBLIMITR_EL1] = read_sysreg_s(SYS_PMBLIMITR_EL1);
+	write_sysreg_s(0, SYS_PMBLIMITR_EL1);
+	isb();
+
+	ctxt->sys_regs[PMSICR_EL1] = read_sysreg_s(SYS_PMSICR_EL1);
+	ctxt->sys_regs[PMSIRR_EL1] = read_sysreg_s(SYS_PMSIRR_EL1);
+	ctxt->sys_regs[PMSFCR_EL1] = read_sysreg_s(SYS_PMSFCR_EL1);
+	ctxt->sys_regs[PMSEVFR_EL1] = read_sysreg_s(SYS_PMSEVFR_EL1);
+	ctxt->sys_regs[PMSLATFR_EL1] = read_sysreg_s(SYS_PMSLATFR_EL1);
+	ctxt->sys_regs[PMBPTR_EL1] = read_sysreg_s(SYS_PMBPTR_EL1);
+	ctxt->sys_regs[PMBSR_EL1] = read_sysreg_s(SYS_PMBSR_EL1);
 }
 
-static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
+static void __hyp_text
+__debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt, bool full_ctxt)
 {
 	if (!ctxt->sys_regs[PMSCR_EL1])
 		return;
@@ -107,6 +123,16 @@ static void __hyp_text __debug_restore_spe_nvhe(struct kvm_cpu_context *ctxt)
 	isb();
 
 	/* Re-enable data generation */
+	if (full_ctxt) {
+		write_sysreg_s(ctxt->sys_regs[PMBPTR_EL1], SYS_PMBPTR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMBLIMITR_EL1], SYS_PMBLIMITR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMSFCR_EL1], SYS_PMSFCR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMSEVFR_EL1], SYS_PMSEVFR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMSLATFR_EL1], SYS_PMSLATFR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMSIRR_EL1], SYS_PMSIRR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMSICR_EL1], SYS_PMSICR_EL1);
+		write_sysreg_s(ctxt->sys_regs[PMBSR_EL1], SYS_PMBSR_EL1);
+	}
 	write_sysreg_el1_s(ctxt->sys_regs[PMSCR_EL1], SYS_PMSCR);
 }
 
@@ -179,7 +205,7 @@ void __hyp_text __debug_restore_host_context(struct kvm_vcpu *vcpu)
 	guest_ctxt = &vcpu->arch.ctxt;
 
 	if (!has_vhe())
-		__debug_restore_spe_nvhe(host_ctxt);
+		__debug_restore_spe_nvhe(host_ctxt, false);
 
 	if (!(vcpu->arch.flags & KVM_ARM64_DEBUG_DIRTY))
 		return;
@@ -203,7 +229,7 @@ void __hyp_text __debug_save_host_context(struct kvm_vcpu *vcpu)
 
 	host_ctxt = kern_hyp_va(vcpu->arch.host_cpu_context);
 	if (!has_vhe())
-		__debug_save_spe_nvhe(host_ctxt);
+		__debug_save_spe_nvhe(host_ctxt, false);
 }
 
 void __hyp_text __debug_save_guest_context(struct kvm_vcpu *vcpu)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
