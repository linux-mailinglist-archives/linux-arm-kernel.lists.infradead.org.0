Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7184E56C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWVqkw2DhX2ZUaWD9rvXFW14dXI2gppreJ72UNTauYU=; b=R8yTE8E7nJ/Nbs
	kflBU8FkRQlF6udcXitzi3gZ+bT2ppDHGBwN6GgZemTSikGnW9Nyue/WKnE80Q89xxnBnut6hG6lK
	gx6EoM9II0dA0MkknVMV838TTUqbQugH231XNT10RtKMlPebp6B51RzSor7PBy2oi+9QoKUPBaGLL
	Ny9DR/1EclByKrf6YShgan2DQuHL25+I255vBynJLH9NBw1D+Q78Cnf9Z2T9bttv/Bmf332Q8HoDz
	0Hr8sajuJhQ2FXohLQLzkSgZVqMme/lO7RcYvpUupqpBflpduc276WzC7HggTbLSkHQCAHqv+2PtZ
	gIl+dI50gV1zwCijDESw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGSm-0002ub-7S; Fri, 21 Jun 2019 10:08:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1q-0000Xf-UN
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D1861516;
 Fri, 21 Jun 2019 02:40:18 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 182AD3F246;
 Fri, 21 Jun 2019 02:40:16 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 42/59] KVM: arm64: nv: Rework the system instruction emulation
 framework
Date: Fri, 21 Jun 2019 10:38:26 +0100
Message-Id: <20190621093843.220980-43-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024019_109424_E9ADAC72 
X-CRM114-Status: GOOD (  14.39  )
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

From: Jintack Lim <jintack.lim@linaro.org>

Rework the system instruction emulation framework to handle potentially
all system instruction traps other than MSR/MRS instructions. Those
system instructions would be AT and TLBI instructions controlled by
HCR_EL2.NV, AT, and TTLB bits.

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
[Changed to use a generic forward_traps wrapper for forward_nv_traps]
Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 62 ++++++++++++++++++---------------------
 1 file changed, 28 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 8fbb04ddde11..0d5b7a7c76de 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1656,7 +1656,6 @@ static bool access_sp_el1(struct kvm_vcpu *vcpu,
 	return true;
 }
 
-
 /* This function is to support the recursive nested virtualization */
 static bool forward_nv1_traps(struct kvm_vcpu *vcpu, struct sys_reg_params *p)
 {
@@ -1703,6 +1702,12 @@ static bool access_spsr_el2(struct kvm_vcpu *vcpu,
 			    struct sys_reg_params *p,
 			    const struct sys_reg_desc *r)
 {
+	if (el12_reg(p) && forward_nv_traps(vcpu))
+		return false;
+
+	if (!el12_reg(p) && forward_nv1_traps(vcpu, p))
+		return false;
+
 	if (p->is_write)
 		vcpu_write_sys_reg(vcpu, p->regval, SPSR_EL2);
 	else
@@ -1786,10 +1791,6 @@ static bool access_id_aa64pfr0_el1(struct kvm_vcpu *v,
  * more demanding guest...
  */
 static const struct sys_reg_desc sys_reg_descs[] = {
-	{ SYS_DESC(SYS_DC_ISW), access_dcsw },
-	{ SYS_DESC(SYS_DC_CSW), access_dcsw },
-	{ SYS_DESC(SYS_DC_CISW), access_dcsw },
-
 	DBG_BCR_BVR_WCR_WVR_EL1(0),
 	DBG_BCR_BVR_WCR_WVR_EL1(1),
 	{ SYS_DESC(SYS_MDCCINT_EL1), trap_debug_regs, reset_val, MDCCINT_EL1, 0 },
@@ -2134,6 +2135,14 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_SP_EL2), NULL, reset_unknown, SP_EL2 },
 };
 
+#define SYS_INSN_TO_DESC(insn, access_fn, forward_fn)	\
+	{ SYS_DESC((insn)), (access_fn), NULL, 0, 0, NULL, NULL, (forward_fn) }
+static struct sys_reg_desc sys_insn_descs[] = {
+	{ SYS_DESC(SYS_DC_ISW), access_dcsw },
+	{ SYS_DESC(SYS_DC_CSW), access_dcsw },
+	{ SYS_DESC(SYS_DC_CISW), access_dcsw },
+};
+
 static bool trap_dbgidr(struct kvm_vcpu *vcpu,
 			struct sys_reg_params *p,
 			const struct sys_reg_desc *r)
@@ -2755,38 +2764,22 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 	return 1;
 }
 
-static int emulate_tlbi(struct kvm_vcpu *vcpu,
-			     struct sys_reg_params *params)
+static int emulate_sys_instr(struct kvm_vcpu *vcpu, struct sys_reg_params *p)
 {
-	/* TODO: support tlbi instruction emulation*/
-	kvm_inject_undefined(vcpu);
-	return 1;
-}
-
-static int emulate_at(struct kvm_vcpu *vcpu,
-			     struct sys_reg_params *params)
-{
-	/* TODO: support address translation instruction emulation */
-	kvm_inject_undefined(vcpu);
-	return 1;
-}
-
-static int emulate_sys_instr(struct kvm_vcpu *vcpu,
-			     struct sys_reg_params *params)
-{
-	int ret = 0;
-
-	/* TLB maintenance instructions*/
-	if (params->CRn == 0b1000)
-		ret = emulate_tlbi(vcpu, params);
-	/* Address Translation instructions */
-	else if (params->CRn == 0b0111 && params->CRm == 0b1000)
-		ret = emulate_at(vcpu, params);
+	const struct sys_reg_desc *r;
 
-	if (ret)
-		kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
+	/* Search from the system instruction table. */
+	r = find_reg(p, sys_insn_descs, ARRAY_SIZE(sys_insn_descs));
 
-	return ret;
+	if (likely(r)) {
+		perform_access(vcpu, p, r);
+	} else {
+		kvm_err("Unsupported guest sys instruction at: %lx\n",
+			*vcpu_pc(vcpu));
+		print_sys_reg_instr(p);
+		kvm_inject_undefined(vcpu);
+	}
+	return 1;
 }
 
 static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
@@ -3282,6 +3275,7 @@ void kvm_sys_reg_table_init(void)
 	BUG_ON(check_sysreg_table(cp15_regs, ARRAY_SIZE(cp15_regs)));
 	BUG_ON(check_sysreg_table(cp15_64_regs, ARRAY_SIZE(cp15_64_regs)));
 	BUG_ON(check_sysreg_table(invariant_sys_regs, ARRAY_SIZE(invariant_sys_regs)));
+	BUG_ON(check_sysreg_table(sys_insn_descs, ARRAY_SIZE(sys_insn_descs)));
 
 	/* We abuse the reset function to overwrite the table itself. */
 	for (i = 0; i < ARRAY_SIZE(invariant_sys_regs); i++)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
