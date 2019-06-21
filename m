Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EE44E532
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:57:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EK4ar0J0STGPmh6CgZ3tLDqFjnAunD3zarLHGbdmlA=; b=pUpnmT1FS0yxU0
	V0fE+qc+rH6/2DnIbpPocvxFIwVROEdFkXhLfyzg7NU2zdRmcZaJRxNEPmD9Ib/Kbc1kZcZRuHBzt
	edV8OyNLPdgqpnS5inUdMMRNMn9d7DBxaYm+Vs0RoMp9WP+K4vq3EnCNTlfcR+gzPQJEnGxlrTmsX
	amX42USuvrQxlXkiPshhoVuBuuIMAG1Ux514c6r5nR9mUR3nT0KkSyBhyYEXL8tm4d6LmWEOn4v8d
	yKFTF8+08/xu5OrKYBWic1MNvzMmsRRniHWOmdXKBr/ngvLD247Fv43w/4zrYmihayCmeaQ6YrxAi
	e6nUpaiN6jv8nlhYTDOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGIm-0008Ar-3K; Fri, 21 Jun 2019 09:57:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG0z-00073y-JH
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:39:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 20A821478;
 Fri, 21 Jun 2019 02:39:25 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C09E83F246;
 Fri, 21 Jun 2019 02:39:23 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 08/59] KVM: arm64: nv: Reset VMPIDR_EL2 and VPIDR_EL2 to sane
 values
Date: Fri, 21 Jun 2019 10:37:52 +0100
Message-Id: <20190621093843.220980-9-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023926_036220_59478ADE 
X-CRM114-Status: GOOD (  10.04  )
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

The VMPIDR_EL2 and VPIDR_EL2 are architecturally UNKNOWN at reset, but
let's be nice to a guest hypervisor behaving foolishly and reset these
to something reasonable anyway.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/kvm/sys_regs.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index e81be6debe07..693dd063c9c2 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -624,7 +624,7 @@ static void reset_amair_el1(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
 	vcpu_write_sys_reg(vcpu, amair, AMAIR_EL1);
 }
 
-static void reset_mpidr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
+static u64 compute_reset_mpidr(struct kvm_vcpu *vcpu)
 {
 	u64 mpidr;
 
@@ -638,7 +638,24 @@ static void reset_mpidr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
 	mpidr = (vcpu->vcpu_id & 0x0f) << MPIDR_LEVEL_SHIFT(0);
 	mpidr |= ((vcpu->vcpu_id >> 4) & 0xff) << MPIDR_LEVEL_SHIFT(1);
 	mpidr |= ((vcpu->vcpu_id >> 12) & 0xff) << MPIDR_LEVEL_SHIFT(2);
-	vcpu_write_sys_reg(vcpu, (1ULL << 31) | mpidr, MPIDR_EL1);
+	mpidr |= (1ULL << 31);
+
+	return mpidr;
+}
+
+static void reset_mpidr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
+{
+	vcpu_write_sys_reg(vcpu, compute_reset_mpidr(vcpu), MPIDR_EL1);
+}
+
+static void reset_vmpidr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
+{
+	vcpu_write_sys_reg(vcpu, compute_reset_mpidr(vcpu), VMPIDR_EL2);
+}
+
+static void reset_vpidr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
+{
+	vcpu_write_sys_reg(vcpu, read_cpuid_id(), VPIDR_EL2);
 }
 
 static void reset_pmcr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
@@ -1668,8 +1685,8 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	 */
 	{ SYS_DESC(SYS_PMCCFILTR_EL0), access_pmu_evtyper, reset_val, PMCCFILTR_EL0, 0 },
 
-	{ SYS_DESC(SYS_VPIDR_EL2), access_rw, reset_val, VPIDR_EL2, 0 },
-	{ SYS_DESC(SYS_VMPIDR_EL2), access_rw, reset_val, VMPIDR_EL2, 0 },
+	{ SYS_DESC(SYS_VPIDR_EL2), access_rw, reset_vpidr, VPIDR_EL2 },
+	{ SYS_DESC(SYS_VMPIDR_EL2), access_rw, reset_vmpidr, VMPIDR_EL2 },
 
 	{ SYS_DESC(SYS_SCTLR_EL2), access_rw, reset_val, SCTLR_EL2, 0 },
 	{ SYS_DESC(SYS_ACTLR_EL2), access_rw, reset_val, ACTLR_EL2, 0 },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
