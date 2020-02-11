Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07041159797
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LP4zl55RCJgZgBw03xKPsxbOnef+xVGPM9rplLcaZ6M=; b=qcrsDQZxZ4mdQX
	ERMuU2C01i5Gev3diY3aCu8OlZVBNFKUlWwiNZik/t9/kjtMrVLMT+D+Vw0FGEklUB4MhSt2h75dq
	f+EXb85d7vyLO7oTMdT6P4Stzp6BhOMOPtPekL3mA+s5DS/lux+hsB8TbUuzSZ4iQV3CpfoMYsj5V
	8XOfwoYulwTfiy3bZ7mpilsneYNSpnOjNs5gEDTXoT0FBCKb5Um08kuhb9MRX+TXQ8VTDi7NOQ2DM
	8rxOVp1Qf6rsP8OELVughYcT8DV4lM1dSs2RKSUtcvzyvxwbHQ9lAOzZELBkyQsjM1mMuG8kgKf/F
	83/oNxTZo5pm7bWWEp6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Zrk-000554-QL; Tue, 11 Feb 2020 18:02:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZhV-00023U-Hi
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:52:00 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6857220661;
 Tue, 11 Feb 2020 17:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443516;
 bh=8yWpTF4iaTUbN9LOY7/rc6Dq7R5pIpQHT5f/RMVwKY4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Xnf9tvHBy1TruTl5Sm8GlHHWCjQ16Uyak6LpSO+GNv+TgH50Y1d4f2SZ6UHYfGhmU
 6LXT+c6DK7oMB137K/LHYYv/oVcxJw46sLGNCExd6D32Cxt7kQi9GRnoQ/EhfegG9A
 V032SwHm1rDg1IqKgyDWO8AIyDtYm7kqmP7lMVAk=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1ZgE-004O7k-TP; Tue, 11 Feb 2020 17:50:39 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 77/94] KVM: arm64: nv: Move sysreg reset check to boot time
Date: Tue, 11 Feb 2020 17:49:21 +0000
Message-Id: <20200211174938.27809-78-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095157_724693_85DD15AE 
X-CRM114-Status: GOOD (  16.96  )
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

Our sysreg reset check has become a bit silly, as it only checks whether
a reset callback actually exists for a given sysreg entry, and apply the
method if available. Doing the check at each vcpu reset is pretty dumb,
as the tables never change. It is thus perfectly possible to do the same
checks at boot time.

This also allows us to introduce a sparse sys_regs[] array, something
that will be required with ARMv8.4-NV.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/kvm/sys_regs.c | 74 +++++++++++++++++++--------------------
 1 file changed, 36 insertions(+), 38 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 268829c73313..9d426304bfb3 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -3166,12 +3166,37 @@ static const struct sys_reg_desc cp15_64_regs[] = {
 	{ SYS_DESC(SYS_AARCH32_CNTP_CVAL),    access_arch_timer },
 };
 
+static int check_sysreg_table(const struct sys_reg_desc *table, unsigned int n,
+			      bool is_32)
+{
+	unsigned int i;
+
+	for (i = 0; i < n; i++) {
+		if (!is_32 && table[i].reg && !table[i].reset) {
+			kvm_err("sys_reg table %p entry %d has lacks reset\n",
+				table, i);
+			return 1;
+		}
+
+		if (i && cmp_sys_reg(&table[i-1], &table[i]) >= 0) {
+			kvm_err("sys_reg table %p out of order (%d)\n", table, i - 1);
+			return 1;
+		}
+	}
+
+	return 0;
+}
+
 /* Target specific emulation tables */
 static struct kvm_sys_reg_target_table *target_tables[KVM_ARM_NUM_TARGETS];
 
 void kvm_register_target_sys_reg_table(unsigned int target,
 				       struct kvm_sys_reg_target_table *table)
 {
+	if (check_sysreg_table(table->table64.table, table->table64.num, false) ||
+	    check_sysreg_table(table->table32.table, table->table32.num, true))
+		return;
+
 	target_tables[target] = table;
 }
 
@@ -3483,19 +3508,13 @@ static int emulate_sys_instr(struct kvm_vcpu *vcpu, struct sys_reg_params *p)
 }
 
 static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
-				const struct sys_reg_desc *table, size_t num,
-				unsigned long *bmap)
+				const struct sys_reg_desc *table, size_t num)
 {
 	unsigned long i;
 
 	for (i = 0; i < num; i++)
-		if (table[i].reset) {
-			int reg = table[i].reg;
-
+		if (table[i].reset)
 			table[i].reset(vcpu, &table[i]);
-			if (reg > 0 && reg < NR_SYS_REGS)
-				set_bit(reg, bmap);
-		}
 }
 
 /**
@@ -3958,33 +3977,19 @@ int kvm_arm_copy_sys_reg_indices(struct kvm_vcpu *vcpu, u64 __user *uindices)
 	return write_demux_regids(uindices);
 }
 
-static int check_sysreg_table(const struct sys_reg_desc *table, unsigned int n)
-{
-	unsigned int i;
-
-	for (i = 1; i < n; i++) {
-		if (cmp_sys_reg(&table[i-1], &table[i]) >= 0) {
-			kvm_err("sys_reg table %p out of order (%d)\n", table, i - 1);
-			return 1;
-		}
-	}
-
-	return 0;
-}
-
 void kvm_sys_reg_table_init(void)
 {
 	unsigned int i;
 	struct sys_reg_desc clidr;
 
 	/* Make sure tables are unique and in order. */
-	BUG_ON(check_sysreg_table(sys_reg_descs, ARRAY_SIZE(sys_reg_descs)));
-	BUG_ON(check_sysreg_table(cp14_regs, ARRAY_SIZE(cp14_regs)));
-	BUG_ON(check_sysreg_table(cp14_64_regs, ARRAY_SIZE(cp14_64_regs)));
-	BUG_ON(check_sysreg_table(cp15_regs, ARRAY_SIZE(cp15_regs)));
-	BUG_ON(check_sysreg_table(cp15_64_regs, ARRAY_SIZE(cp15_64_regs)));
-	BUG_ON(check_sysreg_table(invariant_sys_regs, ARRAY_SIZE(invariant_sys_regs)));
-	BUG_ON(check_sysreg_table(sys_insn_descs, ARRAY_SIZE(sys_insn_descs)));
+	BUG_ON(check_sysreg_table(sys_reg_descs, ARRAY_SIZE(sys_reg_descs), false));
+	BUG_ON(check_sysreg_table(cp14_regs, ARRAY_SIZE(cp14_regs), true));
+	BUG_ON(check_sysreg_table(cp14_64_regs, ARRAY_SIZE(cp14_64_regs), true));
+	BUG_ON(check_sysreg_table(cp15_regs, ARRAY_SIZE(cp15_regs), true));
+	BUG_ON(check_sysreg_table(cp15_64_regs, ARRAY_SIZE(cp15_64_regs), true));
+	BUG_ON(check_sysreg_table(invariant_sys_regs, ARRAY_SIZE(invariant_sys_regs), false));
+	BUG_ON(check_sysreg_table(sys_insn_descs, ARRAY_SIZE(sys_insn_descs), false));
 
 	/* We abuse the reset function to overwrite the table itself. */
 	for (i = 0; i < ARRAY_SIZE(invariant_sys_regs); i++)
@@ -4020,17 +4025,10 @@ void kvm_reset_sys_regs(struct kvm_vcpu *vcpu)
 {
 	size_t num;
 	const struct sys_reg_desc *table;
-	DECLARE_BITMAP(bmap, NR_SYS_REGS) = { 0, };
 
 	/* Generic chip reset first (so target could override). */
-	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs), bmap);
+	reset_sys_reg_descs(vcpu, sys_reg_descs, ARRAY_SIZE(sys_reg_descs));
 
 	table = get_target_table(vcpu->arch.target, true, &num);
-	reset_sys_reg_descs(vcpu, table, num, bmap);
-
-	for (num = 1; num < NR_SYS_REGS; num++) {
-		if (WARN(!test_bit(num, bmap),
-			 "Didn't reset __vcpu_sys_reg(%zi)\n", num))
-			break;
-	}
+	reset_sys_reg_descs(vcpu, table, num);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
