Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE551B4507
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 14:25:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpfnMn2K0BioMOtnyB7EA52E2ITx4QRDlrRla6D8wrY=; b=Ro5Kujhhox7gFZ
	i/hmdZNbQBM8bebaRpz89N7nWWJRQxRQV9UXvIMdQJfZPMJt1TkUEx0nnRO0f0ihoOTRz1PBHes8R
	20I3TmfoZH3+UZqCQk61ep/KbXppjiXyEScVn0nXG92ESI+UE3SpGzdzMg76Z8dX+vdAgNkWuVQgW
	7VeKjFCjsipxBtDd90EvOF5ShX9wgCLdu8xa41mrWHJvBwAWaj8vw8IgKqRHMCok7ouBroMJc3gU6
	2F6xqiyy+VR2MiK4trG9zjhuRp2EFvC1mxyWQyJrmVl/DszTL4UFwTqBs07ryMXg8YLMmoSx5QGIf
	d0NQUa1Mw2nFXRP8h8WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRERY-0001nx-0C; Wed, 22 Apr 2020 12:25:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRENa-0005GE-R0
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 12:21:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9531C221EB;
 Wed, 22 Apr 2020 12:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587558085;
 bh=w1KXX+6GQ7cFF1e8qmsBxy/daj02ed6N9gs8z88iNaA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gvbCvVFoWA8wdN7bYhHfDz+qVy9XmuiwXlaj+4iuz9iRlZTmaExStENHW7BUMfrYZ
 1uQeAjPpmi6SDLikBGz6QBGkX5BPP2ocl+W5FHHJt+YN3NzuaJpgLcXfLnxRDvbA5j
 UoUjWtcfVCUNnCiWoDlCBjiZPNy0jW6ElK/6rOpc=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jRE47-005UI7-VB; Wed, 22 Apr 2020 13:01:20 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 26/26] KVM: arm64: Parametrize exception entry with a target EL
Date: Wed, 22 Apr 2020 13:00:50 +0100
Message-Id: <20200422120050.3693593-27-maz@kernel.org>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200422120050.3693593-1-maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_052127_223836_44500078 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We currently assume that an exception is delivered to EL1, always.
Once we emulate EL2, this no longer will be the case. To prepare
for this, add a target_mode parameter.

While we're at it, merge the computing of the target PC and PSTATE in
a single function that updates both PC and CPSR after saving their
previous values in the corresponding ELR/SPSR. This ensures that they
are updated in the correct order (a pretty common source of bugs...).

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/inject_fault.c | 75 ++++++++++++++++++-----------------
 1 file changed, 38 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/kvm/inject_fault.c b/arch/arm64/kvm/inject_fault.c
index d3ebf8bca4b89..3dbcbc839b9c3 100644
--- a/arch/arm64/kvm/inject_fault.c
+++ b/arch/arm64/kvm/inject_fault.c
@@ -26,28 +26,12 @@ enum exception_type {
 	except_type_serror	= 0x180,
 };
 
-static u64 get_except_vector(struct kvm_vcpu *vcpu, enum exception_type type)
-{
-	u64 exc_offset;
-
-	switch (*vcpu_cpsr(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT)) {
-	case PSR_MODE_EL1t:
-		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
-		break;
-	case PSR_MODE_EL1h:
-		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
-		break;
-	case PSR_MODE_EL0t:
-		exc_offset = LOWER_EL_AArch64_VECTOR;
-		break;
-	default:
-		exc_offset = LOWER_EL_AArch32_VECTOR;
-	}
-
-	return vcpu_read_sys_reg(vcpu, VBAR_EL1) + exc_offset + type;
-}
-
 /*
+ * This performs the exception entry at a given EL (@target_mode), stashing PC
+ * and PSTATE into ELR and SPSR respectively, and compute the new PC/PSTATE.
+ * The EL passed to this function *must* be a non-secure, privileged mode with
+ * bit 0 being set (PSTATE.SP == 1).
+ *
  * When an exception is taken, most PSTATE fields are left unchanged in the
  * handler. However, some are explicitly overridden (e.g. M[4:0]). Luckily all
  * of the inherited bits have the same position in the AArch64/AArch32 SPSR_ELx
@@ -59,10 +43,35 @@ static u64 get_except_vector(struct kvm_vcpu *vcpu, enum exception_type type)
  * Here we manipulate the fields in order of the AArch64 SPSR_ELx layout, from
  * MSB to LSB.
  */
-static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
+static void enter_exception(struct kvm_vcpu *vcpu, unsigned long target_mode,
+			    enum exception_type type)
 {
-	unsigned long sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
-	unsigned long old, new;
+	unsigned long sctlr, vbar, old, new, mode;
+	u64 exc_offset;
+
+	mode = *vcpu_cpsr(vcpu) & (PSR_MODE_MASK | PSR_MODE32_BIT);
+
+	if      (mode == target_mode)
+		exc_offset = CURRENT_EL_SP_ELx_VECTOR;
+	else if ((mode | 1) == target_mode)
+		exc_offset = CURRENT_EL_SP_EL0_VECTOR;
+	else if (!(mode & PSR_MODE32_BIT))
+		exc_offset = LOWER_EL_AArch64_VECTOR;
+	else
+		exc_offset = LOWER_EL_AArch32_VECTOR;
+
+	switch (target_mode) {
+	case PSR_MODE_EL1h:
+		vbar = vcpu_read_sys_reg(vcpu, VBAR_EL1);
+		sctlr = vcpu_read_sys_reg(vcpu, SCTLR_EL1);
+		vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL1);
+		break;
+	default:
+		/* Don't do that */
+		BUG();
+	}
+
+	*vcpu_pc(vcpu) = vbar + exc_offset + type;
 
 	old = *vcpu_cpsr(vcpu);
 	new = 0;
@@ -105,9 +114,10 @@ static unsigned long get_except64_pstate(struct kvm_vcpu *vcpu)
 	new |= PSR_I_BIT;
 	new |= PSR_F_BIT;
 
-	new |= PSR_MODE_EL1h;
+	new |= target_mode;
 
-	return new;
+	*vcpu_cpsr(vcpu) = new;
+	vcpu_write_spsr(vcpu, old);
 }
 
 static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr)
@@ -116,11 +126,7 @@ static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr
 	bool is_aarch32 = vcpu_mode_is_32bit(vcpu);
 	u32 esr = 0;
 
-	vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL1);
-	*vcpu_pc(vcpu) = get_except_vector(vcpu, except_type_sync);
-
-	*vcpu_cpsr(vcpu) = get_except64_pstate(vcpu);
-	vcpu_write_spsr(vcpu, cpsr);
+	enter_exception(vcpu, PSR_MODE_EL1h, except_type_sync);
 
 	vcpu_write_sys_reg(vcpu, addr, FAR_EL1);
 
@@ -148,14 +154,9 @@ static void inject_abt64(struct kvm_vcpu *vcpu, bool is_iabt, unsigned long addr
 
 static void inject_undef64(struct kvm_vcpu *vcpu)
 {
-	unsigned long cpsr = *vcpu_cpsr(vcpu);
 	u32 esr = (ESR_ELx_EC_UNKNOWN << ESR_ELx_EC_SHIFT);
 
-	vcpu_write_sys_reg(vcpu, *vcpu_pc(vcpu), ELR_EL1);
-	*vcpu_pc(vcpu) = get_except_vector(vcpu, except_type_sync);
-
-	*vcpu_cpsr(vcpu) = get_except64_pstate(vcpu);
-	vcpu_write_spsr(vcpu, cpsr);
+	enter_exception(vcpu, PSR_MODE_EL1h, except_type_sync);
 
 	/*
 	 * Build an unknown exception, depending on the instruction
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
