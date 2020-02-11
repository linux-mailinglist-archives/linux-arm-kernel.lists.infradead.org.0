Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9737F159771
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 18:58:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7vGXykCneejRZJrWKHBOF58IIjgA74yVMIAz8ij6ZM=; b=UYTmUflB43ninE
	H6haUHxz2u3JUr8TSSqZHxvDIq7aBueB8hCTkWo7Vm0gt8UeX8XxFY9vL4utSdOuerAB1oAvpgkjE
	gwvze8k+s+szRUnnNk4yTYpEEI+OrsF2ier/FfuAnwSABFsj+vSmlxuFCH3N6aKq8ZU4LVN64hUD2
	ABsXmEdVkzYdqcI3wAJZHqynF0OUjOMvmg3wiiqFpwuGvGqqqtIFknbDYbnes+TkNK2oWZF3CmHPG
	7vO6suv5YWFkMfa2nL5dJbXQWrKCkyF6IRHUD4NftTFPi0aCl9Gf//1mgjxori4yoIiPvwlF4t4nN
	jqPs1CS7rXdFs3Hadf9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Znf-0008My-Kv; Tue, 11 Feb 2020 17:58:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Zh1-0001de-01
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:51:28 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DA41214DB;
 Tue, 11 Feb 2020 17:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443486;
 bh=sdVlxI/GjjZN9m7eP6XWMEC4MszchDVWVMZ7842jhWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VHNc/bWFCFPcmyv3Y0zdskXWk5ukI7XDq34uRlMBBImJFFisOEhVf/OnPDdTKBq2L
 GTt98W8VJuCXGYdKr1Z2mbzhMu5uuYnj40UOYxheiRO2wowMAwX2XpmFpFnU/exjGR
 grm3Dl8w5BVA30uPO8vYZ8oye1kgZyYPm0xuShj4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfk-004O7k-0k; Tue, 11 Feb 2020 17:50:08 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 25/94] KVM: arm64: nv: Respect the virtual HCR_EL2.NV bit
 setting
Date: Tue, 11 Feb 2020 17:48:29 +0000
Message-Id: <20200211174938.27809-26-maz@kernel.org>
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
X-CRM114-CacheID: sfid-20200211_095127_202867_96A40791 
X-CRM114-Status: GOOD (  16.46  )
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

From: Jintack Lim <jintack.lim@linaro.org>

Forward traps due to HCR_EL2.NV bit to the virtual EL2 if they are not
coming from the virtual EL2 and the virtual HCR_EL2.NV bit is set.

In addition to EL2 register accesses, setting NV bit will also make EL12
register accesses trap to EL2. To emulate this for the virtual EL2,
forword traps due to EL12 register accessses to the virtual EL2 if the
virtual HCR_EL2.NV bit is set.

This is for recursive nested virtualization.

Signed-off-by: Jintack Lim <jintack.lim@linaro.org>
[Moved code to emulate-nested.c]
Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/kvm_arm.h    |  1 +
 arch/arm64/include/asm/kvm_nested.h |  2 ++
 arch/arm64/kvm/emulate-nested.c     | 28 ++++++++++++++++++++++++++++
 arch/arm64/kvm/handle_exit.c        |  7 +++++++
 arch/arm64/kvm/sys_regs.c           | 21 +++++++++++++++++++++
 5 files changed, 59 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_arm.h b/arch/arm64/include/asm/kvm_arm.h
index a907c702de45..1be4667d5e3d 100644
--- a/arch/arm64/include/asm/kvm_arm.h
+++ b/arch/arm64/include/asm/kvm_arm.h
@@ -13,6 +13,7 @@
 
 /* Hyp Configuration Register (HCR) bits */
 #define HCR_FWB		(UL(1) << 46)
+#define HCR_NV		(UL(1) << 42)
 #define HCR_API		(UL(1) << 41)
 #define HCR_APK		(UL(1) << 40)
 #define HCR_TEA		(UL(1) << 37)
diff --git a/arch/arm64/include/asm/kvm_nested.h b/arch/arm64/include/asm/kvm_nested.h
index 15041cda820b..c75e4326a363 100644
--- a/arch/arm64/include/asm/kvm_nested.h
+++ b/arch/arm64/include/asm/kvm_nested.h
@@ -11,5 +11,7 @@ static inline bool nested_virt_in_use(const struct kvm_vcpu *vcpu)
 }
 
 int handle_wfx_nested(struct kvm_vcpu *vcpu, bool is_wfe);
+extern bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit);
+extern bool forward_nv_traps(struct kvm_vcpu *vcpu);
 
 #endif /* __ARM64_KVM_NESTED_H */
diff --git a/arch/arm64/kvm/emulate-nested.c b/arch/arm64/kvm/emulate-nested.c
index 328ae3723330..957a4a84d802 100644
--- a/arch/arm64/kvm/emulate-nested.c
+++ b/arch/arm64/kvm/emulate-nested.c
@@ -24,6 +24,27 @@
 
 #include "trace.h"
 
+bool forward_traps(struct kvm_vcpu *vcpu, u64 control_bit)
+{
+	bool control_bit_set;
+
+	if (!nested_virt_in_use(vcpu))
+		return false;
+
+	control_bit_set = __vcpu_sys_reg(vcpu, HCR_EL2) & control_bit;
+	if (!vcpu_mode_el2(vcpu) && control_bit_set) {
+		kvm_inject_nested_sync(vcpu, kvm_vcpu_get_hsr(vcpu));
+		return true;
+	}
+	return false;
+}
+
+bool forward_nv_traps(struct kvm_vcpu *vcpu)
+{
+	return forward_traps(vcpu, HCR_NV);
+}
+
+
 /* This is borrowed from get_except_vector in inject_fault.c */
 static u64 get_el2_except_vector(struct kvm_vcpu *vcpu,
 		enum exception_type type)
@@ -55,6 +76,13 @@ void kvm_emulate_nested_eret(struct kvm_vcpu *vcpu)
 	u64 spsr, elr, mode;
 	bool direct_eret;
 
+	/*
+	 * Forward this trap to the virtual EL2 if the virtual
+	 * HCR_EL2.NV bit is set and this is coming from !EL2.
+	 */
+	if (forward_nv_traps(vcpu))
+		return;
+
 	/*
 	 * Going through the whole put/load motions is a waste of time
 	 * if this is a VHE guest hypervisor returning to its own
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index e813bda18c7c..d2a73ebf9d4a 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -65,6 +65,13 @@ static int handle_smc(struct kvm_vcpu *vcpu, struct kvm_run *run)
 {
 	int ret;
 
+	/*
+	 * Forward this trapped smc instruction to the virtual EL2 if
+	 * the guest has asked for it.
+	 */
+	if (forward_traps(vcpu, HCR_TSC))
+		return 1;
+
 	/*
 	 * "If an SMC instruction executed at Non-secure EL1 is
 	 * trapped to EL2 because HCR_EL2.TSC is 1, the exception is a
diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index b545156c7d79..b948afd20e97 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -392,10 +392,19 @@ static u32 get_ccsidr(u32 csselr)
 	return ccsidr;
 }
 
+static bool el12_reg(struct sys_reg_params *p)
+{
+	/* All *_EL12 registers have Op1=5. */
+	return (p->Op1 == 5);
+}
+
 static bool access_rw(struct kvm_vcpu *vcpu,
 		      struct sys_reg_params *p,
 		      const struct sys_reg_desc *r)
 {
+	if (el12_reg(p) && forward_nv_traps(vcpu))
+		return false;
+
 	if (p->is_write)
 		vcpu_write_sys_reg(vcpu, p->regval, r->reg);
 	else
@@ -458,6 +467,9 @@ static bool access_vm_reg(struct kvm_vcpu *vcpu,
 	u64 val;
 	int reg = r->reg;
 
+	if (el12_reg(p) && forward_nv_traps(vcpu))
+		return false;
+
 	BUG_ON(!vcpu_mode_el2(vcpu) && !p->is_write);
 
 	if (!p->is_write) {
@@ -1632,6 +1644,9 @@ static bool access_elr(struct kvm_vcpu *vcpu,
 		       struct sys_reg_params *p,
 		       const struct sys_reg_desc *r)
 {
+	if (el12_reg(p) && forward_nv_traps(vcpu))
+		return false;
+
 	if (p->is_write)
 		vcpu->arch.ctxt.gp_regs.elr_el1 = p->regval;
 	else
@@ -1644,6 +1659,9 @@ static bool access_spsr(struct kvm_vcpu *vcpu,
 			struct sys_reg_params *p,
 			const struct sys_reg_desc *r)
 {
+	if (el12_reg(p) && forward_nv_traps(vcpu))
+		return false;
+
 	if (p->is_write)
 		vcpu->arch.ctxt.gp_regs.spsr[KVM_SPSR_EL1] = p->regval;
 	else
@@ -1656,6 +1674,9 @@ static bool access_spsr_el2(struct kvm_vcpu *vcpu,
 			    struct sys_reg_params *p,
 			    const struct sys_reg_desc *r)
 {
+	if (el12_reg(p) && forward_nv_traps(vcpu))
+		return false;
+
 	if (p->is_write)
 		vcpu_write_sys_reg(vcpu, p->regval, SPSR_EL2);
 	else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
