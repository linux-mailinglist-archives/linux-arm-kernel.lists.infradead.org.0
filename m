Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7074E559
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/vzm4wo1OlQgf1hZRs7qs/lkLGFgwgiJRhWxT3IZBI=; b=qqg8TXb2yveuHm
	DiuHSNZyBvLcoIipaH2Cvx+rnqn8RrbRBaBzgd19mO5K1Jo5bgHEa5Vheh/MSHp9R8M3hN2P/wTya
	m2usJQurvOubcTSTSiK3eniJRYxpKJegzlyVphYWwKxZNG/VUKJxmcPeYckODuMMNlHvqa+2ZpLOI
	+XOtzk+nSehObuxSWUeKg2YkyFD7USotZJ0MXoYgZHKEuLGKLymDyuJVepkArZtgojrn+cKsLPqR7
	9HsAg0wSUJ9wghztd1vxfk4QHcb201KEx2l0zjGjATGRhvm/xrnilkrDWHRLw+jDqbAyhA84nyBzK
	OwUaaB2WTf4XBZPwCUag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGPX-0007Q8-MW; Fri, 21 Jun 2019 10:04:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1a-0007Gm-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A60AF1478;
 Fri, 21 Jun 2019 02:40:02 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 524333F246;
 Fri, 21 Jun 2019 02:40:01 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 32/59] KVM: arm64: nv: Hide RAS from nested guests
Date: Fri, 21 Jun 2019 10:38:16 +0100
Message-Id: <20190621093843.220980-33-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024003_042592_C55E4A7E 
X-CRM114-Status: GOOD (  11.93  )
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

We don't want to expose complicated features to guests until we have
a good grasp on the basic CPU emulation. So let's pretend that RAS,
just like SVE, doesn't exist in a nested guest.

Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 32 +++++++++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 34f1b79f7856..ec34b81da936 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -577,6 +577,14 @@ static bool trap_raz_wi(struct kvm_vcpu *vcpu,
 		return read_zero(vcpu, p);
 }
 
+static bool trap_undef(struct kvm_vcpu *vcpu,
+		       struct sys_reg_params *p,
+		       const struct sys_reg_desc *r)
+{
+	kvm_inject_undefined(vcpu);
+	return false;
+}
+
 /*
  * ARMv8.1 mandates at least a trivial LORegion implementation, where all the
  * RW registers are RES0 (which we can implement as RAZ/WI). On an ARMv8.0
@@ -1601,13 +1609,15 @@ static bool access_ccsidr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 }
 
 /* sys_reg_desc initialiser for known cpufeature ID registers */
-#define ID_SANITISED(name) {			\
+#define ID_SANITISED_FN(name, fn) {		\
 	SYS_DESC(SYS_##name),			\
-	.access	= access_id_reg,		\
+	.access	= fn,				\
 	.get_user = get_id_reg,			\
 	.set_user = set_id_reg,			\
 }
 
+#define ID_SANITISED(name) 	ID_SANITISED_FN(name, access_id_reg)
+
 /*
  * sys_reg_desc initialiser for architecturally unallocated cpufeature ID
  * register with encoding Op0=3, Op1=0, CRn=0, CRm=crm, Op2=op2
@@ -1700,6 +1710,21 @@ static bool access_spsr_el2(struct kvm_vcpu *vcpu,
 	return true;
 }
 
+static bool access_id_aa64pfr0_el1(struct kvm_vcpu *v,
+				   struct sys_reg_params *p,
+				   const struct sys_reg_desc *r)
+{
+	u64 val;
+
+	if (!nested_virt_in_use(v) || p->is_write)
+		return access_id_reg(v, p, r);
+
+	val = read_sanitised_ftr_reg(SYS_ID_AA64PFR0_EL1);
+	p->regval = val & ~(0xf << ID_AA64PFR0_RAS_SHIFT);
+
+	return true;
+}
+
 /*
  * Architected system registers.
  * Important: Must be sorted ascending by Op0, Op1, CRn, CRm, Op2
@@ -1791,7 +1816,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 
 	/* AArch64 ID registers */
 	/* CRm=4 */
-	ID_SANITISED(ID_AA64PFR0_EL1),
+	ID_SANITISED_FN(ID_AA64PFR0_EL1, access_id_aa64pfr0_el1),
 	ID_SANITISED(ID_AA64PFR1_EL1),
 	ID_UNALLOCATED(4,2),
 	ID_UNALLOCATED(4,3),
@@ -2032,6 +2057,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_VBAR_EL2), access_rw, reset_val, VBAR_EL2, 0 },
 	{ SYS_DESC(SYS_RVBAR_EL2), access_rw, reset_val, RVBAR_EL2, 0 },
 	{ SYS_DESC(SYS_RMR_EL2), access_rw, reset_val, RMR_EL2, 0 },
+	{ SYS_DESC(SYS_VDISR_EL2), trap_undef },
 
 	{ SYS_DESC(SYS_CONTEXTIDR_EL2), access_rw, reset_val, CONTEXTIDR_EL2, 0 },
 	{ SYS_DESC(SYS_TPIDR_EL2), access_rw, reset_val, TPIDR_EL2, 0 },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
