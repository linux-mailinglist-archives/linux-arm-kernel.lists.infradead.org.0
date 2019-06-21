Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAA54E548
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZAB9u8QNUsfCSBDeS3+WbJfaUZhZ2LdBo/Mu/PqfXc=; b=eNepQFnWTVZ1S1
	JEt2QGV0L7evoQmdSQdP9VfI1WX8ntJxifefRnHa+XhZTO4YSqR4NUzcqML+kw2uxSqO5DIP0plY/
	4jIsdvJWMXoBpEpx7DJDQo42UDMhxY4NPxMz9pcfH64G2QUnXS7GCwyClTOKU2kQdT+I5h7CV2Rgv
	c9mQ4Dv9ns6FpGhkvMqfARobUXz2cmbUfUWSADa2PuVMJZrVTFXG5pp0fuJHLdbkWw0rgJ+cxGZbI
	NE6E9ACJqrRyGHAuoKDilkQ2gHzrsCf/YeDDpx/1eDI6M5IX4ST5RTY9bbEGLgVnMcqESwfD2mCKF
	WWv0CojC/ZLX0fPFY61A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGM7-00041L-Hp; Fri, 21 Jun 2019 10:01:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1G-0007Gm-MB
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:39:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 54252142F;
 Fri, 21 Jun 2019 02:39:42 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F3ADA3F246;
 Fri, 21 Jun 2019 02:39:40 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 19/59] KVM: arm64: nv: Trap SPSR_EL1,
 ELR_EL1 and VBAR_EL1 from virtual EL2
Date: Fri, 21 Jun 2019 10:38:03 +0100
Message-Id: <20190621093843.220980-20-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023942_912042_4D24D284 
X-CRM114-Status: GOOD (  11.28  )
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

For the same reason we trap virtual memory register accesses at virtual
EL2, we need to trap SPSR_EL1, ELR_EL1 and VBAR_EL1 accesses. ARM v8.3
introduces the HCR_EL2.NV1 bit to be able to trap on those register
accesses in EL1. Do not set this bit until the whole nesting support is
completed.

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 0464d8e29cba..7fc87657382d 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -1606,6 +1606,30 @@ static bool access_sp_el1(struct kvm_vcpu *vcpu,
 	return true;
 }
 
+static bool access_elr(struct kvm_vcpu *vcpu,
+		       struct sys_reg_params *p,
+		       const struct sys_reg_desc *r)
+{
+	if (p->is_write)
+		vcpu->arch.ctxt.gp_regs.elr_el1 = p->regval;
+	else
+		p->regval = vcpu->arch.ctxt.gp_regs.elr_el1;
+
+	return true;
+}
+
+static bool access_spsr(struct kvm_vcpu *vcpu,
+			struct sys_reg_params *p,
+			const struct sys_reg_desc *r)
+{
+	if (p->is_write)
+		vcpu->arch.ctxt.gp_regs.spsr[KVM_SPSR_EL1] = p->regval;
+	else
+		p->regval = vcpu->arch.ctxt.gp_regs.spsr[KVM_SPSR_EL1];
+
+	return true;
+}
+
 static bool access_spsr_el2(struct kvm_vcpu *vcpu,
 			    struct sys_reg_params *p,
 			    const struct sys_reg_desc *r)
@@ -1761,6 +1785,9 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	PTRAUTH_KEY(APDB),
 	PTRAUTH_KEY(APGA),
 
+	{ SYS_DESC(SYS_SPSR_EL1), access_spsr},
+	{ SYS_DESC(SYS_ELR_EL1), access_elr},
+
 	{ SYS_DESC(SYS_AFSR0_EL1), access_vm_reg, reset_unknown, AFSR0_EL1 },
 	{ SYS_DESC(SYS_AFSR1_EL1), access_vm_reg, reset_unknown, AFSR1_EL1 },
 	{ SYS_DESC(SYS_ESR_EL1), access_vm_reg, reset_unknown, ESR_EL1 },
@@ -1789,7 +1816,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_LORC_EL1), trap_loregion },
 	{ SYS_DESC(SYS_LORID_EL1), trap_loregion },
 
-	{ SYS_DESC(SYS_VBAR_EL1), NULL, reset_val, VBAR_EL1, 0 },
+	{ SYS_DESC(SYS_VBAR_EL1), access_rw, reset_val, VBAR_EL1, 0 },
 	{ SYS_DESC(SYS_DISR_EL1), NULL, reset_val, DISR_EL1, 0 },
 
 	{ SYS_DESC(SYS_ICC_IAR0_EL1), write_to_read_only },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
