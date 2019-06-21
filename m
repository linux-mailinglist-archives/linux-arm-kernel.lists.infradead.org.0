Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476964E54B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlrXI3FnR5ESy2ThnSEmrU831aLZPUB+vul/TeDcxfc=; b=Nj0kDrH9DoT1DR
	EEH0OFxhoac8esu2MdqfS6at0UB7j8DAFE45TI9yFlZRBGyrCgUXdBIepT1dJdk1FDcBrozKCoJ1f
	Z+iQQKX1hazKbF2V9r2EhkZxzQ/HJfNwei6VyMEHp6qkmOUvwEZ72y5MKJLX+Ypt6i4vyH4SkREF4
	ePTr6T7/QliUA8tqpLSPHEeLh4cpVD+HfS0zVu0rMIVV4pvwv5c4EuthOu9EnmjUub6bNBLXXwQlA
	BKRm2LC+haQ4Wp7z+DdOrkUTRJ2fB+RylR+HRDXXN41/hDIU8lbid/UXDswoHP6VBdk+4VPyivNGG
	orTolrj8Y7JgvRfxTquQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGMg-0004ZG-FB; Fri, 21 Jun 2019 10:01:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG1J-0007Gm-Tp
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:39:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 752DD1478;
 Fri, 21 Jun 2019 02:39:45 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 218B43F246;
 Fri, 21 Jun 2019 02:39:44 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 21/59] KVM: arm64: nv: Set a handler for the system
 instruction traps
Date: Fri, 21 Jun 2019 10:38:05 +0100
Message-Id: <20190621093843.220980-22-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_023946_158748_406CC08B 
X-CRM114-Status: GOOD (  15.30  )
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

When HCR.NV bit is set, execution of the EL2 translation regime address
aranslation instructions and TLB maintenance instructions are trapped to
EL2. In addition, execution of the EL1 translation regime address
aranslation instructions and TLB maintenance instructions that are only
accessible from EL2 and above are trapped to EL2. In these cases,
ESR_EL2.EC will be set to 0x18.

Change the existing handler to handle those system instructions as well
as MRS/MSR instructions.  Emulation of each system instructions will be
done in separate patches.

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 arch/arm64/include/asm/kvm_coproc.h |  2 +-
 arch/arm64/kvm/handle_exit.c        |  2 +-
 arch/arm64/kvm/sys_regs.c           | 53 +++++++++++++++++++++++++----
 arch/arm64/kvm/trace.h              |  2 +-
 4 files changed, 50 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_coproc.h b/arch/arm64/include/asm/kvm_coproc.h
index 0b52377a6c11..1b3d21bd8adb 100644
--- a/arch/arm64/include/asm/kvm_coproc.h
+++ b/arch/arm64/include/asm/kvm_coproc.h
@@ -43,7 +43,7 @@ int kvm_handle_cp14_32(struct kvm_vcpu *vcpu, struct kvm_run *run);
 int kvm_handle_cp14_64(struct kvm_vcpu *vcpu, struct kvm_run *run);
 int kvm_handle_cp15_32(struct kvm_vcpu *vcpu, struct kvm_run *run);
 int kvm_handle_cp15_64(struct kvm_vcpu *vcpu, struct kvm_run *run);
-int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run);
+int kvm_handle_sys(struct kvm_vcpu *vcpu, struct kvm_run *run);
 
 #define kvm_coproc_table_init kvm_sys_reg_table_init
 void kvm_sys_reg_table_init(void);
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index 2517711f034f..e662f23b63a1 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -236,7 +236,7 @@ static exit_handle_fn arm_exit_handlers[] = {
 	[ESR_ELx_EC_SMC32]	= handle_smc,
 	[ESR_ELx_EC_HVC64]	= handle_hvc,
 	[ESR_ELx_EC_SMC64]	= handle_smc,
-	[ESR_ELx_EC_SYS64]	= kvm_handle_sys_reg,
+	[ESR_ELx_EC_SYS64]	= kvm_handle_sys,
 	[ESR_ELx_EC_SVE]	= handle_sve,
 	[ESR_ELx_EC_ERET]	= kvm_handle_eret,
 	[ESR_ELx_EC_IABT_LOW]	= kvm_handle_guest_abort,
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 1d1312425cf2..e711dde4511c 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -2597,6 +2597,40 @@ static int emulate_sys_reg(struct kvm_vcpu *vcpu,
 	return 1;
 }
 
+static int emulate_tlbi(struct kvm_vcpu *vcpu,
+			     struct sys_reg_params *params)
+{
+	/* TODO: support tlbi instruction emulation*/
+	kvm_inject_undefined(vcpu);
+	return 1;
+}
+
+static int emulate_at(struct kvm_vcpu *vcpu,
+			     struct sys_reg_params *params)
+{
+	/* TODO: support address translation instruction emulation */
+	kvm_inject_undefined(vcpu);
+	return 1;
+}
+
+static int emulate_sys_instr(struct kvm_vcpu *vcpu,
+			     struct sys_reg_params *params)
+{
+	int ret = 0;
+
+	/* TLB maintenance instructions*/
+	if (params->CRn == 0b1000)
+		ret = emulate_tlbi(vcpu, params);
+	/* Address Translation instructions */
+	else if (params->CRn == 0b0111 && params->CRm == 0b1000)
+		ret = emulate_at(vcpu, params);
+
+	if (ret)
+		kvm_skip_instr(vcpu, kvm_vcpu_trap_il_is32bit(vcpu));
+
+	return ret;
+}
+
 static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
 			      const struct sys_reg_desc *table, size_t num)
 {
@@ -2608,18 +2642,19 @@ static void reset_sys_reg_descs(struct kvm_vcpu *vcpu,
 }
 
 /**
- * kvm_handle_sys_reg -- handles a mrs/msr trap on a guest sys_reg access
+ * kvm_handle_sys-- handles a system instruction or mrs/msr instruction trap
+		    on a guest execution
  * @vcpu: The VCPU pointer
  * @run:  The kvm_run struct
  */
-int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run)
+int kvm_handle_sys(struct kvm_vcpu *vcpu, struct kvm_run *run)
 {
 	struct sys_reg_params params;
 	unsigned long esr = kvm_vcpu_get_hsr(vcpu);
 	int Rt = kvm_vcpu_sys_get_rt(vcpu);
 	int ret;
 
-	trace_kvm_handle_sys_reg(esr);
+	trace_kvm_handle_sys(esr);
 
 	params.is_aarch32 = false;
 	params.is_32bit = false;
@@ -2631,10 +2666,16 @@ int kvm_handle_sys_reg(struct kvm_vcpu *vcpu, struct kvm_run *run)
 	params.regval = vcpu_get_reg(vcpu, Rt);
 	params.is_write = !(esr & 1);
 
-	ret = emulate_sys_reg(vcpu, &params);
+	if (params.Op0 == 1) {
+		/* System instructions */
+		ret = emulate_sys_instr(vcpu, &params);
+	} else {
+		/* MRS/MSR instructions */
+		ret = emulate_sys_reg(vcpu, &params);
+		if (!params.is_write)
+			vcpu_set_reg(vcpu, Rt, params.regval);
+	}
 
-	if (!params.is_write)
-		vcpu_set_reg(vcpu, Rt, params.regval);
 	return ret;
 }
 
diff --git a/arch/arm64/kvm/trace.h b/arch/arm64/kvm/trace.h
index 797a705bb644..2a6a54ef3824 100644
--- a/arch/arm64/kvm/trace.h
+++ b/arch/arm64/kvm/trace.h
@@ -138,7 +138,7 @@ TRACE_EVENT(trap_reg,
 	TP_printk("%s %s reg %d (0x%08llx)", __entry->fn,  __entry->is_write?"write to":"read from", __entry->reg, __entry->write_value)
 );
 
-TRACE_EVENT(kvm_handle_sys_reg,
+TRACE_EVENT(kvm_handle_sys,
 	TP_PROTO(unsigned long hsr),
 	TP_ARGS(hsr),
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
