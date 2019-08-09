Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B0F87375
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 09:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FSK9JZlk7yjn87FeJ3eTx0+QuGNq5IeDuNm137EWRk=; b=ELiwVbqZlaljJ9
	b98iX7N1iO5zx0qRlSOo0Sw8bEGhNM5R6AuBdRjwZ0UrBj6TXS4YSC1gzwdu63L7bsr2MUoE0eTVB
	NYGuvZeXu7hmy7W9Td220OFCEZ0dgTMRLT/uZOAfWWyzStN8UC2fzlPps74rivveoFmPrlVzPhHFn
	ojyMOWK0lmXTXqVcjiC4xmasCVsnUEggKSxFQBDBD14U00D8tzMi0gXeKUJvpbJYJ6BUb7BCWM6bN
	CZwj1sfPwSez8fkdQSja/fNqNob0tyI68LkwKz/qEJAhVyuxtmb56JwZN//iHtSNB959BM3irixmg
	txWG9PNsyY5nYubQSP3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzek-0004i4-PK; Fri, 09 Aug 2019 07:49:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvze3-0004HL-Ga
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 07:49:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A142B15BF;
 Fri,  9 Aug 2019 00:49:02 -0700 (PDT)
Received: from why.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 021853F706;
 Fri,  9 Aug 2019 00:49:00 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 2/4] KVM: arm64: Don't write junk to sysregs on reset
Date: Fri,  9 Aug 2019 08:48:30 +0100
Message-Id: <20190809074832.13283-3-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809074832.13283-1-maz@kernel.org>
References: <20190809074832.13283-1-maz@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_004903_671056_6B9047A5 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvm@vger.kernel.org, Suzuki K Poulose <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment, the way we reset system registers is mildly insane:
We write junk to them, call the reset functions, and then check that
we have something else in them.

The "fun" thing is that this can happen while the guest is running
(PSCI, for example). If anything in KVM has to evaluate the state
of a system register while junk is in there, bad thing may happen.

Let's stop doing that. Instead, we track that we have called a
reset function for that register, and assume that the reset
function has done something. This requires fixing a couple of
sysreg refinition in the trap table.

In the end, the very need of this reset check is pretty dubious,
as it doesn't check everything (a lot of the sysregs leave outside of
the sys_regs[] array). It may well be axed in the near future.

Tested-by: Zenghui Yu <yuzenghui@huawei.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/sys_regs.c | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index f26e181d881c..2071260a275b 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -632,7 +632,7 @@ static void reset_pmcr(struct kvm_vcpu *vcpu, const struct sys_reg_desc *r)
 	 */
 	val = ((pmcr & ~ARMV8_PMU_PMCR_MASK)
 	       | (ARMV8_PMU_PMCR_MASK & 0xdecafbad)) & (~ARMV8_PMU_PMCR_E);
-	__vcpu_sys_reg(vcpu, PMCR_EL0) = val;
+	__vcpu_sys_reg(vcpu, r->reg) = val;
 }
 
 static bool check_pmu_access_disabled(struct kvm_vcpu *vcpu, u64 flags)
@@ -981,13 +981,13 @@ static bool access_pmuserenr(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 /* Silly macro to expand the DBG{BCR,BVR,WVR,WCR}n_EL1 registers in one go */
 #define DBG_BCR_BVR_WCR_WVR_EL1(n)					\
 	{ SYS_DESC(SYS_DBGBVRn_EL1(n)),					\
-	  trap_bvr, reset_bvr, n, 0, get_bvr, set_bvr },		\
+	  trap_bvr, reset_bvr, 0, 0, get_bvr, set_bvr },		\
 	{ SYS_DESC(SYS_DBGBCRn_EL1(n)),					\
-	  trap_bcr, reset_bcr, n, 0, get_bcr, set_bcr },		\
+	  trap_bcr, reset_bcr, 0, 0, get_bcr, set_bcr },		\
 	{ SYS_DESC(SYS_DBGWVRn_EL1(n)),					\
-	  trap_wvr, reset_wvr, n, 0,  get_wvr, set_wvr },		\
+	  trap_wvr, reset_wvr, 0, 0,  get_wvr, set_wvr },		\
 	{ SYS_DESC(SYS_DBGWCRn_EL1(n)),					\
-	  trap_wcr, reset_wcr, n, 0,  get_wcr, set_wcr }
+	  trap_wcr, reset_wcr, 0, 0,  get_wcr, set_wcr }
 
 /* Macro to expand the PMEVCNTRn_EL0 register */
 #define PMU_PMEVCNTR_EL0(n)						\
@@ -1540,7 +1540,7 @@ static const struct sys_reg_desc sys_reg_descs[] = {
 	{ SYS_DESC(SYS_CSSELR_EL1), access_csselr, reset_unknown, CSSELR_EL1 },
 	{ SYS_DESC(SYS_CTR_EL0), access_ctr },
 
-	{ SYS_DESC(SYS_PMCR_EL0), access_pmcr, reset_pmcr, },
+	{ SYS_DESC(SYS_PMCR_EL0), access_pmcr, reset_pmcr, PMCR_EL0 },
 	{ SYS_DESC(SYS_PMCNTENSET_EL0), access_pmcnten, reset_unknown, PMCNTENSET_EL0 },
 	{ SYS_DESC(SYS_PMCNTENCLR_EL0), access_pmcnten, NULL, PMCNTENSET_EL0 },
 	{ SYS_DESC(SYS_PMOVSCLR_EL0), access_pmovs, NULL, PMOVSSET_EL0 },
@@ -2254,13 +2254,19 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 }
 
 static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
-			      const struct sys_reg_desc *table, size_t num)
+				const struct sys_reg_desc *table, size_t num,
+				unsigned long *bmap)
 {
 	unsigned long i;
 
 	for (i = 0; i < num; i++)
-		if (table[i].reset)
+		if (table[i].reset) {
+			int reg = table[i].reg;
+
 			table[i].reset(vcpu, &table[i]);
+			if (reg > 0 && reg < NR_SYS_REGS)
+				set_bit(reg, bmap);
+		}
 }
 
 /**
@@ -2774,18 +2780,16 @@ void kvm_reset_sys_regs(struct kvm_vcpu *vcpu)
 {
 	size_t num;
 	const struct sys_reg_desc *table;
-
-	/* Catch someone adding a register without putting in reset entry. */
-	memset(&vcpu->arch.ctxt.sys_regs, 0x42, sizeof(vcpu->arch.ctxt.sys_regs));
+	DECLARE_BITMAP(bmap, NR_SYS_REGS) = { 0, };
 
 	/* Generic chip reset first (so target could override). */
-	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs));
+	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs), bmap);
 
 	table = get_target_table(vcpu->arch.target, true, &num);
-	reset_sys_reg_descs(vcpu, table, num);
+	reset_sys_reg_descs(vcpu, table, num, bmap);
 
 	for (num = 1; num < NR_SYS_REGS; num++) {
-		if (WARN(__vcpu_sys_reg(vcpu, num) == 0x4242424242424242,
+		if (WARN(!test_bit(num, bmap),
 			 "Didn't reset __vcpu_sys_reg(%zi)\n", num))
 			break;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
