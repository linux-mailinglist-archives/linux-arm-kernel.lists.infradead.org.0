Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB7A635DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mnNXw6JslreFV7JnPHjmPsAQg5hts4wmzElZJwjxus=; b=CN0NN4/5dWhQ1Y
	ys2OMnODfH80h6xZx2KFXkEU2Hdnp0yC4boHmDTse5I1Jv+W1iEdUcbkZzzG/uDwGy2fM52mqhaG/
	Ur5OS9Ro/iiPCucMSJ7VYDtY8SFOac37rkQOzU0zQSQGr+PBX3FPAIEBnxyES1O3QdB+NbxII6+tq
	5gQSDy4T1TLmPL/ntQry6bqpN3fg2jej15pBvlT67rYnyvMFKFmZFey1oLAl32M2SdxH4McikmDYV
	F0iVC7NtIyy6Iyj9zwz7iQcwaBrPgmv+SAhLn1ecdr1pq9bSkmvc8QFOqPe2tt6oOZwk4WhzIxXQr
	QwdW2ZwxJwzR0m9HmRtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpF6-00012F-OP; Tue, 09 Jul 2019 12:29:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpBp-0006m7-TE
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:25:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C91C1595;
 Tue,  9 Jul 2019 05:25:44 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com (unknown [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 707C03F59C;
 Tue,  9 Jul 2019 05:25:42 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 12/18] KVM: arm/arm64: Remove pmc->bitmask
Date: Tue,  9 Jul 2019 13:25:01 +0100
Message-Id: <20190709122507.214494-13-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709122507.214494-1-marc.zyngier@arm.com>
References: <20190709122507.214494-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_052546_340000_80B53E8F 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org,
 Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Steven Price <steven.price@arm.com>,
 Eric Auger <eric.auger@redhat.com>, James Morse <james.morse@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Murray <andrew.murray@arm.com>

We currently use pmc->bitmask to determine the width of the pmc - however
it's superfluous as the pmc index already describes if the pmc is a cycle
counter or event counter. The architecture clearly describes the widths of
these counters.

Let's remove the bitmask to simplify the code.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 include/kvm/arm_pmu.h |  1 -
 virt/kvm/arm/pmu.c    | 30 ++++++++++++++++++++----------
 2 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
index 45e5205750b4..48a15d4b820e 100644
--- a/include/kvm/arm_pmu.h
+++ b/include/kvm/arm_pmu.h
@@ -17,7 +17,6 @@
 struct kvm_pmc {
 	u8 idx;	/* index into the pmu->pmc array */
 	struct perf_event *perf_event;
-	u64 bitmask;
 };
 
 struct kvm_pmu {
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index f77643f4274c..24c6cf869a16 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -14,6 +14,18 @@
 #include <kvm/arm_vgic.h>
 
 static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
+
+/**
+ * kvm_pmu_idx_is_64bit - determine if select_idx is a 64bit counter
+ * @vcpu: The vcpu pointer
+ * @select_idx: The counter index
+ */
+static bool kvm_pmu_idx_is_64bit(struct kvm_vcpu *vcpu, u64 select_idx)
+{
+	return (select_idx == ARMV8_PMU_CYCLE_IDX &&
+		__vcpu_sys_reg(vcpu, PMCR_EL0) & ARMV8_PMU_PMCR_LC);
+}
+
 /**
  * kvm_pmu_get_counter_value - get PMU counter value
  * @vcpu: The vcpu pointer
@@ -36,7 +48,10 @@ u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
 		counter += perf_event_read_value(pmc->perf_event, &enabled,
 						 &running);
 
-	return counter & pmc->bitmask;
+	if (!kvm_pmu_idx_is_64bit(vcpu, select_idx))
+		counter = lower_32_bits(counter);
+
+	return counter;
 }
 
 /**
@@ -102,7 +117,6 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
 	for (i = 0; i < ARMV8_PMU_MAX_COUNTERS; i++) {
 		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
 		pmu->pmc[i].idx = i;
-		pmu->pmc[i].bitmask = 0xffffffffUL;
 	}
 }
 
@@ -337,8 +351,6 @@ void kvm_pmu_software_increment(struct kvm_vcpu *vcpu, u64 val)
  */
 void kvm_pmu_handle_pmcr(struct kvm_vcpu *vcpu, u64 val)
 {
-	struct kvm_pmu *pmu = &vcpu->arch.pmu;
-	struct kvm_pmc *pmc;
 	u64 mask;
 	int i;
 
@@ -357,11 +369,6 @@ void kvm_pmu_handle_pmcr(struct kvm_vcpu *vcpu, u64 val)
 		for (i = 0; i < ARMV8_PMU_CYCLE_IDX; i++)
 			kvm_pmu_set_counter_value(vcpu, i, 0);
 	}
-
-	if (val & ARMV8_PMU_PMCR_LC) {
-		pmc = &pmu->pmc[ARMV8_PMU_CYCLE_IDX];
-		pmc->bitmask = 0xffffffffffffffffUL;
-	}
 }
 
 static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
@@ -409,7 +416,10 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 
 	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
 	/* The initial sample period (overflow count) of an event. */
-	attr.sample_period = (-counter) & pmc->bitmask;
+	if (kvm_pmu_idx_is_64bit(vcpu, pmc->idx))
+		attr.sample_period = (-counter) & GENMASK(63, 0);
+	else
+		attr.sample_period = (-counter) & GENMASK(31, 0);
 
 	event = perf_event_create_kernel_counter(&attr, -1, current,
 						 kvm_pmu_perf_overflow, pmc);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
