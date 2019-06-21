Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0F54E546
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:00:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5B2L9jrOSorKXasEH3+WPofPnI+24QcsmJAFkacJpU=; b=fIlt1soLNrePR/
	epqK6gno+09UUv6ruOahlRItv3ACsaFIAlzDEgrh3Ue26SitabQbFmUV+7mHP4LfA4ogcI+wDNJG4
	8IiZfCNyiavrD/3RTThyPYI3xgZ5pyNU6TKkXItS0FS+Fcv7WAOA8lQ34lx/BJZ3LYuc8RUs4uKy7
	IJFP2Q2EMIdJgs2M+kSqcuo2hy24KKXp86241G71+whj0aM/XKehfrl2PsUuP0SWMtF0zy6lNQHlD
	aOdkIc3i+vFd9CtN5a2VGrc96QyyR94KcIJfo+2TRyHnWUp62zhYOdvtGq+aGGU35tJKxiPVRhZNY
	4Ng1JAUcE7M165PktD4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGLb-0003R3-Dt; Fri, 21 Jun 2019 10:00:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1D-0007Gm-Pr
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:39:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 300FA147A;
 Fri, 21 Jun 2019 02:39:39 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFDFC3F246;
 Fri, 21 Jun 2019 02:39:37 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 17/59] KVM: arm64: nv: Emulate PSTATE.M for a guest hypervisor
Date: Fri, 21 Jun 2019 10:38:01 +0100
Message-Id: <20190621093843.220980-18-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023939_987621_81628586 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Christoffer Dall <christoffer.dall@arm.com>

We can no longer blindly copy the VCPU's PSTATE into SPSR_EL2 and return
to the guest and vice versa when taking an exception to the hypervisor,
because we emulate virtual EL2 in EL1 and therefore have to translate
the mode field from EL2 to EL1 and vice versa.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/hyp/sysreg-sr.c | 41 ++++++++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp/sysreg-sr.c b/arch/arm64/kvm/hyp/sysreg-sr.c
index 2abb9c3ff24f..ea800eed811d 100644
--- a/arch/arm64/kvm/hyp/sysreg-sr.c
+++ b/arch/arm64/kvm/hyp/sysreg-sr.c
@@ -120,10 +120,32 @@ static void __hyp_text __sysreg_save_el1_state(struct kvm_cpu_context *ctxt)
 		__sysreg_save_vel1_state(ctxt);
 }
 
+static u64 __hyp_text from_hw_pstate(const struct kvm_cpu_context *ctxt)
+{
+	u64 reg = read_sysreg_el2(SYS_SPSR);
+
+	if (__is_hyp_ctxt(ctxt)) {
+		u64 mode = reg & PSR_MODE_MASK;
+
+		switch (mode) {
+		case PSR_MODE_EL1t:
+			mode = PSR_MODE_EL2t;
+			break;
+		case PSR_MODE_EL1h:
+			mode = PSR_MODE_EL2h;
+			break;
+		}
+
+		return (reg & ~PSR_MODE_MASK) | mode;
+	}
+
+	return reg;
+}
+
 static void __hyp_text __sysreg_save_el2_return_state(struct kvm_cpu_context *ctxt)
 {
 	ctxt->gp_regs.regs.pc		= read_sysreg_el2(SYS_ELR);
-	ctxt->gp_regs.regs.pstate	= read_sysreg_el2(SYS_SPSR);
+	ctxt->gp_regs.regs.pstate	= from_hw_pstate(ctxt);
 
 	if (cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
 		ctxt->sys_regs[DISR_EL1] = read_sysreg_s(SYS_VDISR_EL2);
@@ -288,10 +310,25 @@ static void __hyp_text __sysreg_restore_el1_state(struct kvm_cpu_context *ctxt)
 		__sysreg_restore_vel1_state(ctxt);
 }
 
+/* Read the VCPU state's PSTATE, but translate (v)EL2 to EL1. */
+static u64 __hyp_text to_hw_pstate(const struct kvm_cpu_context *ctxt)
+{
+	u64 mode = ctxt->gp_regs.regs.pstate & PSR_MODE_MASK;
+
+	switch (mode) {
+	case PSR_MODE_EL2t:
+		mode = PSR_MODE_EL1t;
+	case PSR_MODE_EL2h:
+		mode = PSR_MODE_EL1h;
+	}
+
+	return (ctxt->gp_regs.regs.pstate & ~PSR_MODE_MASK) | mode;
+}
+
 static void __hyp_text
 __sysreg_restore_el2_return_state(struct kvm_cpu_context *ctxt)
 {
-	u64 pstate = ctxt->gp_regs.regs.pstate;
+	u64 pstate = to_hw_pstate(ctxt);
 	u64 mode = pstate & PSR_AA32_MODE_MASK;
 
 	/*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
