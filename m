Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897042548F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cROpSCiP+vHnt/x/84j+clOricVMMLD8HqfjkvENhuQ=; b=s29qSw5jlycNDi
	MSYQ9ufmd6z+fIwjEdrTC0FTyiVAfTT/PbrYifwQFmRO6Ft38u7TRPFWYiEJU8CWEMBLr1BcRRwXv
	UcVMtUFosvmtgHuMIMBOP0z4xWFlk+s1vqA38iLa13DJMD713alV6GgIeHBDcqtYIfLuQNxi/v+EG
	5IBRmp+PUN3kOxd0ntB+6Rhzdt8mS9wWzA3Z60h/CsLwcfPPYTWGP7BRDE4YXYyW36wvEe7PXinlH
	YWnAShOJcDfXmOdbvx65fhsK5W+5DHOJ1337OQFLiivwebSi3NqOM/dSSlM++KnrO/bBhfyeT+3SB
	oEdAkcyAg01sciz5ZB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT74w-0003pQ-PG; Tue, 21 May 2019 15:53:26 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT74c-0003Zq-Qm
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 15:53:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E5C915A2;
 Tue, 21 May 2019 08:53:06 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D07BF3F575;
 Tue, 21 May 2019 08:53:04 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v7 1/5] KVM: arm/arm64: rename
 kvm_pmu_{enable/disable}_counter functions
Date: Tue, 21 May 2019 16:52:24 +0100
Message-Id: <20190521155228.903-2-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521155228.903-1-andrew.murray@arm.com>
References: <20190521155228.903-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_085306_876253_BC1B3ED6 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 James Morse <james.morse@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kvm_pmu_{enable/disable}_counter functions can enabled/disable
multiple counters at once as they operate on a bitmask. Let's
make this clearer by renaming the function.

Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Julien Thierry <julien.thierry@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 arch/arm64/kvm/sys_regs.c |  4 ++--
 include/kvm/arm_pmu.h     |  8 ++++----
 virt/kvm/arm/pmu.c        | 12 ++++++------
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kvm/sys_regs.c b/arch/arm64/kvm/sys_regs.c
index 9d02643bc601..8e98fb173ed3 100644
--- a/arch/arm64/kvm/sys_regs.c
+++ b/arch/arm64/kvm/sys_regs.c
@@ -876,12 +876,12 @@ static bool access_pmcnten(struct kvm_vcpu *vcpu, struct sys_reg_params *p,
 		if (r->Op2 & 0x1) {
 			/* accessing PMCNTENSET_EL0 */
 			__vcpu_sys_reg(vcpu, PMCNTENSET_EL0) |= val;
-			kvm_pmu_enable_counter(vcpu, val);
+			kvm_pmu_enable_counter_mask(vcpu, val);
 			kvm_vcpu_pmu_restore_guest(vcpu);
 		} else {
 			/* accessing PMCNTENCLR_EL0 */
 			__vcpu_sys_reg(vcpu, PMCNTENSET_EL0) &= ~val;
-			kvm_pmu_disable_counter(vcpu, val);
+			kvm_pmu_disable_counter_mask(vcpu, val);
 		}
 	} else {
 		p->regval = __vcpu_sys_reg(vcpu, PMCNTENSET_EL0) & mask;
diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
index f87fe20fcb05..b73f31baca52 100644
--- a/include/kvm/arm_pmu.h
+++ b/include/kvm/arm_pmu.h
@@ -46,8 +46,8 @@ void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val);
 u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu);
 void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu);
 void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu);
-void kvm_pmu_disable_counter(struct kvm_vcpu *vcpu, u64 val);
-void kvm_pmu_enable_counter(struct kvm_vcpu *vcpu, u64 val);
+void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val);
+void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val);
 void kvm_pmu_flush_hwstate(struct kvm_vcpu *vcpu);
 void kvm_pmu_sync_hwstate(struct kvm_vcpu *vcpu);
 bool kvm_pmu_should_notify_user(struct kvm_vcpu *vcpu);
@@ -83,8 +83,8 @@ static inline u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu)
 }
 static inline void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu) {}
 static inline void kvm_pmu_vcpu_destroy(struct kvm_vcpu *vcpu) {}
-static inline void kvm_pmu_disable_counter(struct kvm_vcpu *vcpu, u64 val) {}
-static inline void kvm_pmu_enable_counter(struct kvm_vcpu *vcpu, u64 val) {}
+static inline void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val) {}
+static inline void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val) {}
 static inline void kvm_pmu_flush_hwstate(struct kvm_vcpu *vcpu) {}
 static inline void kvm_pmu_sync_hwstate(struct kvm_vcpu *vcpu) {}
 static inline bool kvm_pmu_should_notify_user(struct kvm_vcpu *vcpu)
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index 1c5b76c46e26..c5a722ad283f 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -135,13 +135,13 @@ u64 kvm_pmu_valid_counter_mask(struct kvm_vcpu *vcpu)
 }
 
 /**
- * kvm_pmu_enable_counter - enable selected PMU counter
+ * kvm_pmu_enable_counter_mask - enable selected PMU counters
  * @vcpu: The vcpu pointer
  * @val: the value guest writes to PMCNTENSET register
  *
  * Call perf_event_enable to start counting the perf event
  */
-void kvm_pmu_enable_counter(struct kvm_vcpu *vcpu, u64 val)
+void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
 {
 	int i;
 	struct kvm_pmu *pmu = &vcpu->arch.pmu;
@@ -164,13 +164,13 @@ void kvm_pmu_enable_counter(struct kvm_vcpu *vcpu, u64 val)
 }
 
 /**
- * kvm_pmu_disable_counter - disable selected PMU counter
+ * kvm_pmu_disable_counter_mask - disable selected PMU counters
  * @vcpu: The vcpu pointer
  * @val: the value guest writes to PMCNTENCLR register
  *
  * Call perf_event_disable to stop counting the perf event
  */
-void kvm_pmu_disable_counter(struct kvm_vcpu *vcpu, u64 val)
+void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
 {
 	int i;
 	struct kvm_pmu *pmu = &vcpu->arch.pmu;
@@ -347,10 +347,10 @@ void kvm_pmu_handle_pmcr(struct kvm_vcpu *vcpu, u64 val)
 
 	mask = kvm_pmu_valid_counter_mask(vcpu);
 	if (val & ARMV8_PMU_PMCR_E) {
-		kvm_pmu_enable_counter(vcpu,
+		kvm_pmu_enable_counter_mask(vcpu,
 		       __vcpu_sys_reg(vcpu, PMCNTENSET_EL0) & mask);
 	} else {
-		kvm_pmu_disable_counter(vcpu, mask);
+		kvm_pmu_disable_counter_mask(vcpu, mask);
 	}
 
 	if (val & ARMV8_PMU_PMCR_C)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
