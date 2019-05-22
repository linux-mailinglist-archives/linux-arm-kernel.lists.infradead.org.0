Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A3526700
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 17:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtK9j+XTfVi5gzJKlklpTAcrY3y8EQ67tEVHppyqVHw=; b=Hais4HFGPObmRl
	pt32CWzjZvys8LtsprfxfrJBRRf9O35TS4uZqukMgUopVyLawH8SApCkQ2yn8SI3LVtS2E8jp97Qm
	ejys7YbsxaYGrog1FYADKE9bkIe6YBCX4cGzxhfPkrD7HwPgvLUeyGpZ0OjhEVwv8KmFxIhGZMbmQ
	0tWY/ExWj79+V0cM4Kex1iy05Dx7hJBAWVyg+MsuBUE+qGTAYzjBU4ChRcUoebVfI2CXU7MTPjV4G
	IftkyHBN0KDOGo5r10B+a3vXt64Ctx2dM8eynaZjy+lgqsHidzOhvP7vvKppTCQZoBL5MtHNLt9GL
	/n99ENllmyeOvwdEUKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTE9-0007At-2b; Wed, 22 May 2019 15:32:25 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTCR-0005Ov-5s
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 15:30:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F2E0415AB;
 Wed, 22 May 2019 08:30:38 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F4FE3F718;
 Wed, 22 May 2019 08:30:37 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Christoffer Dall <christoffer.dall@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v8 6/6] KVM: arm/arm64: support chained PMU counters
Date: Wed, 22 May 2019 16:30:19 +0100
Message-Id: <20190522153019.18645-7-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190522153019.18645-1-andrew.murray@arm.com>
References: <20190522153019.18645-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_083039_352401_F7C0A29E 
X-CRM114-Status: GOOD (  22.89  )
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

ARMv8 provides support for chained PMU counters, where an event type
of 0x001E is set for odd-numbered counters, the event counter will
increment by one for each overflow of the preceding even-numbered
counter. Let's emulate this in KVM by creating a 64 bit perf counter
when a user chains two emulated counters together.

For chained events we only support generating an overflow interrupt
on the high counter. We use the attributes of the low counter to
determine the attributes of the perf event.

Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Andrew Murray <andrew.murray@arm.com>
---
 include/kvm/arm_pmu.h |   2 +
 virt/kvm/arm/pmu.c    | 248 ++++++++++++++++++++++++++++++++++++------
 2 files changed, 215 insertions(+), 35 deletions(-)

diff --git a/include/kvm/arm_pmu.h b/include/kvm/arm_pmu.h
index 2f0e28dc5a9e..589f49ed8cf8 100644
--- a/include/kvm/arm_pmu.h
+++ b/include/kvm/arm_pmu.h
@@ -22,6 +22,7 @@
 #include <asm/perf_event.h>
 
 #define ARMV8_PMU_CYCLE_IDX		(ARMV8_PMU_MAX_COUNTERS - 1)
+#define ARMV8_PMU_MAX_COUNTER_PAIRS	((ARMV8_PMU_MAX_COUNTERS + 1) >> 1)
 
 #ifdef CONFIG_KVM_ARM_PMU
 
@@ -33,6 +34,7 @@ struct kvm_pmc {
 struct kvm_pmu {
 	int irq_num;
 	struct kvm_pmc pmc[ARMV8_PMU_MAX_COUNTERS];
+	DECLARE_BITMAP(chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
 	bool ready;
 	bool created;
 	bool irq_level;
diff --git a/virt/kvm/arm/pmu.c b/virt/kvm/arm/pmu.c
index c4e2bc213617..796bcf76911f 100644
--- a/virt/kvm/arm/pmu.c
+++ b/virt/kvm/arm/pmu.c
@@ -25,29 +25,129 @@
 #include <kvm/arm_vgic.h>
 
 static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx);
+
+#define PERF_ATTR_CFG1_KVM_PMU_CHAINED 0x1
+
+static struct kvm_vcpu *kvm_pmc_to_vcpu(struct kvm_pmc *pmc)
+{
+	struct kvm_pmu *pmu;
+	struct kvm_vcpu_arch *vcpu_arch;
+
+	pmc -= pmc->idx;
+	pmu = container_of(pmc, struct kvm_pmu, pmc[0]);
+	vcpu_arch = container_of(pmu, struct kvm_vcpu_arch, pmu);
+	return container_of(vcpu_arch, struct kvm_vcpu, arch);
+}
+
 /**
- * kvm_pmu_get_counter_value - get PMU counter value
+ * kvm_pmu_pmc_is_chained - determine if the pmc is chained
+ * @pmc: The PMU counter pointer
+ */
+static bool kvm_pmu_pmc_is_chained(struct kvm_pmc *pmc)
+{
+	struct kvm_vcpu *vcpu = kvm_pmc_to_vcpu(pmc);
+
+	return test_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
+}
+
+/**
+ * kvm_pmu_pmc_is_high_counter - determine if select_idx is a high/low counter
+ * @select_idx: The counter index
+ */
+static bool kvm_pmu_pmc_is_high_counter(u64 select_idx)
+{
+	return select_idx & 0x1;
+}
+
+/**
+ * kvm_pmu_get_canonical_pmc - obtain the canonical pmc
+ * @pmc: The PMU counter pointer
+ *
+ * When a pair of PMCs are chained together we use the low counter (canonical)
+ * to hold the underlying perf event.
+ */
+static struct kvm_pmc *kvm_pmu_get_canonical_pmc(struct kvm_pmc *pmc)
+{
+	if (kvm_pmu_pmc_is_chained(pmc) &&
+	    kvm_pmu_pmc_is_high_counter(pmc->idx))
+		return pmc - 1;
+
+	return pmc;
+}
+
+/**
+ * kvm_pmu_idx_has_chain_evtype - determine if the event type is chain
  * @vcpu: The vcpu pointer
  * @select_idx: The counter index
  */
-u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
+static bool kvm_pmu_idx_has_chain_evtype(struct kvm_vcpu *vcpu, u64 select_idx)
 {
-	u64 counter, reg, enabled, running;
-	struct kvm_pmu *pmu = &vcpu->arch.pmu;
-	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
+	u64 eventsel, reg;
 
-	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
-	      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + select_idx;
-	counter = __vcpu_sys_reg(vcpu, reg);
+	select_idx |= 0x1;
+
+	if (select_idx == ARMV8_PMU_CYCLE_IDX)
+		return false;
 
-	/* The real counter value is equal to the value of counter register plus
+	reg = PMEVTYPER0_EL0 + select_idx;
+	eventsel = __vcpu_sys_reg(vcpu, reg) & ARMV8_PMU_EVTYPE_EVENT;
+
+	return armv8pmu_evtype_is_chain(eventsel);
+}
+
+/**
+ * kvm_pmu_get_pair_counter_value - get PMU counter value
+ * @vcpu: The vcpu pointer
+ * @pmc: The PMU counter pointer
+ */
+static u64 kvm_pmu_get_pair_counter_value(struct kvm_vcpu *vcpu,
+					  struct kvm_pmc *pmc)
+{
+	u64 counter, counter_high, reg, enabled, running;
+
+	if (kvm_pmu_pmc_is_chained(pmc)) {
+		pmc = kvm_pmu_get_canonical_pmc(pmc);
+		reg = PMEVCNTR0_EL0 + pmc->idx;
+
+		counter = __vcpu_sys_reg(vcpu, reg);
+		counter_high = __vcpu_sys_reg(vcpu, reg + 1);
+
+		counter = lower_32_bits(counter) | (counter_high << 32);
+	} else {
+		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
+		      ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
+		counter = __vcpu_sys_reg(vcpu, reg);
+	}
+
+	/*
+	 * The real counter value is equal to the value of counter register plus
 	 * the value perf event counts.
 	 */
 	if (pmc->perf_event)
 		counter += perf_event_read_value(pmc->perf_event, &enabled,
 						 &running);
 
-	if (select_idx != ARMV8_PMU_CYCLE_IDX)
+	return counter;
+}
+
+/**
+ * kvm_pmu_get_counter_value - get PMU counter value
+ * @vcpu: The vcpu pointer
+ * @select_idx: The counter index
+ */
+u64 kvm_pmu_get_counter_value(struct kvm_vcpu *vcpu, u64 select_idx)
+{
+	u64 counter;
+	struct kvm_pmu *pmu = &vcpu->arch.pmu;
+	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
+
+	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
+
+	if (kvm_pmu_pmc_is_chained(pmc) &&
+	    kvm_pmu_pmc_is_high_counter(select_idx))
+		counter = upper_32_bits(counter);
+
+	else if (select_idx != ARMV8_PMU_CYCLE_IDX)
 		counter = lower_32_bits(counter);
 
 	return counter;
@@ -77,6 +177,7 @@ void kvm_pmu_set_counter_value(struct kvm_vcpu *vcpu, u64 select_idx, u64 val)
  */
 static void kvm_pmu_release_perf_event(struct kvm_pmc *pmc)
 {
+	pmc = kvm_pmu_get_canonical_pmc(pmc);
 	if (pmc->perf_event) {
 		perf_event_disable(pmc->perf_event);
 		perf_event_release_kernel(pmc->perf_event);
@@ -94,13 +195,23 @@ static void kvm_pmu_stop_counter(struct kvm_vcpu *vcpu, struct kvm_pmc *pmc)
 {
 	u64 counter, reg;
 
-	if (pmc->perf_event) {
-		counter = kvm_pmu_get_counter_value(vcpu, pmc->idx);
+	pmc = kvm_pmu_get_canonical_pmc(pmc);
+	if (!pmc->perf_event)
+		return;
+
+	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
+
+	if (kvm_pmu_pmc_is_chained(pmc)) {
+		reg = PMEVCNTR0_EL0 + pmc->idx;
+		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
+		__vcpu_sys_reg(vcpu, reg + 1) = upper_32_bits(counter);
+	} else {
 		reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
 		       ? PMCCNTR_EL0 : PMEVCNTR0_EL0 + pmc->idx;
-		__vcpu_sys_reg(vcpu, reg) = counter;
-		kvm_pmu_release_perf_event(pmc);
+		__vcpu_sys_reg(vcpu, reg) = lower_32_bits(counter);
 	}
+
+	kvm_pmu_release_perf_event(pmc);
 }
 
 /**
@@ -117,6 +228,8 @@ void kvm_pmu_vcpu_reset(struct kvm_vcpu *vcpu)
 		kvm_pmu_stop_counter(vcpu, &pmu->pmc[i]);
 		pmu->pmc[i].idx = i;
 	}
+
+	bitmap_zero(vcpu->arch.pmu.chained, ARMV8_PMU_MAX_COUNTER_PAIRS);
 }
 
 /**
@@ -165,6 +278,18 @@ void kvm_pmu_enable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
 			continue;
 
 		pmc = &pmu->pmc[i];
+
+		/*
+		 * For high counters of chained events we must recreate the
+		 * perf event with the long (64bit) attribute set.
+		 */
+		if (kvm_pmu_pmc_is_chained(pmc) &&
+		    kvm_pmu_pmc_is_high_counter(i)) {
+			kvm_pmu_create_perf_event(vcpu, i);
+			continue;
+		}
+
+		/* At this point, pmc must be the canonical */
 		if (pmc->perf_event) {
 			perf_event_enable(pmc->perf_event);
 			if (pmc->perf_event->state != PERF_EVENT_STATE_ACTIVE)
@@ -194,6 +319,18 @@ void kvm_pmu_disable_counter_mask(struct kvm_vcpu *vcpu, u64 val)
 			continue;
 
 		pmc = &pmu->pmc[i];
+
+		/*
+		 * For high counters of chained events we must recreate the
+		 * perf event with the long (64bit) attribute unset.
+		 */
+		if (kvm_pmu_pmc_is_chained(pmc) &&
+		    kvm_pmu_pmc_is_high_counter(i)) {
+			kvm_pmu_create_perf_event(vcpu, i);
+			continue;
+		}
+
+		/* At this point, pmc must be the canonical */
 		if (pmc->perf_event)
 			perf_event_disable(pmc->perf_event);
 	}
@@ -283,17 +420,6 @@ void kvm_pmu_sync_hwstate(struct kvm_vcpu *vcpu)
 	kvm_pmu_update_state(vcpu);
 }
 
-static inline struct kvm_vcpu *kvm_pmc_to_vcpu(struct kvm_pmc *pmc)
-{
-	struct kvm_pmu *pmu;
-	struct kvm_vcpu_arch *vcpu_arch;
-
-	pmc -= pmc->idx;
-	pmu = container_of(pmc, struct kvm_pmu, pmc[0]);
-	vcpu_arch = container_of(pmu, struct kvm_vcpu_arch, pmu);
-	return container_of(vcpu_arch, struct kvm_vcpu, arch);
-}
-
 /**
  * When the perf event overflows, set the overflow status and inform the vcpu.
  */
@@ -384,13 +510,20 @@ static bool kvm_pmu_counter_is_enabled(struct kvm_vcpu *vcpu, u64 select_idx)
 static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 {
 	struct kvm_pmu *pmu = &vcpu->arch.pmu;
-	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
+	struct kvm_pmc *pmc;
 	struct perf_event *event;
 	struct perf_event_attr attr;
 	u64 eventsel, counter, reg, data;
 
-	reg = (select_idx == ARMV8_PMU_CYCLE_IDX)
-	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + select_idx;
+	/*
+	 * For chained counters the event type and filtering attributes are
+	 * obtained from the low/even counter. We also use this counter to
+	 * determine if the event is enabled/disabled.
+	 */
+	pmc = kvm_pmu_get_canonical_pmc(&pmu->pmc[select_idx]);
+
+	reg = (pmc->idx == ARMV8_PMU_CYCLE_IDX)
+	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + pmc->idx;
 	data = __vcpu_sys_reg(vcpu, reg);
 
 	kvm_pmu_stop_counter(vcpu, pmc);
@@ -398,27 +531,43 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 
 	/* Software increment event does't need to be backed by a perf event */
 	if (eventsel == ARMV8_PMUV3_PERFCTR_SW_INCR &&
-	    select_idx != ARMV8_PMU_CYCLE_IDX)
+	    pmc->idx != ARMV8_PMU_CYCLE_IDX)
 		return;
 
 	memset(&attr, 0, sizeof(struct perf_event_attr));
 	attr.type = PERF_TYPE_RAW;
 	attr.size = sizeof(attr);
 	attr.pinned = 1;
-	attr.disabled = !kvm_pmu_counter_is_enabled(vcpu, select_idx);
+	attr.disabled = !kvm_pmu_counter_is_enabled(vcpu, pmc->idx);
 	attr.exclude_user = data & ARMV8_PMU_EXCLUDE_EL0 ? 1 : 0;
 	attr.exclude_kernel = data & ARMV8_PMU_EXCLUDE_EL1 ? 1 : 0;
 	attr.exclude_hv = 1; /* Don't count EL2 events */
 	attr.exclude_host = 1; /* Don't count host events */
-	attr.config = (select_idx == ARMV8_PMU_CYCLE_IDX) ?
+	attr.config = (pmc->idx == ARMV8_PMU_CYCLE_IDX) ?
 		ARMV8_PMUV3_PERFCTR_CPU_CYCLES : eventsel;
 
-	counter = kvm_pmu_get_counter_value(vcpu, select_idx);
-	/* The initial sample period (overflow count) of an event. */
-	attr.sample_period = (-counter) & GENMASK(31, 0);
+	counter = kvm_pmu_get_pair_counter_value(vcpu, pmc);
+
+	if (kvm_pmu_idx_has_chain_evtype(vcpu, pmc->idx)) {
+		/**
+		 * The initial sample period (overflow count) of an event. For
+		 * chained counters we only support overflow interrupts on the
+		 * high counter.
+		 */
+		attr.sample_period = (-counter) & GENMASK(63, 0);
+		event = perf_event_create_kernel_counter(&attr, -1, current,
+							 kvm_pmu_perf_overflow,
+							 pmc + 1);
 
-	event = perf_event_create_kernel_counter(&attr, -1, current,
+		if (kvm_pmu_counter_is_enabled(vcpu, pmc->idx + 1))
+			attr.config1 |= PERF_ATTR_CFG1_KVM_PMU_CHAINED;
+	} else {
+		/* The initial sample period (overflow count) of an event. */
+		attr.sample_period = (-counter) & GENMASK(31, 0);
+		event = perf_event_create_kernel_counter(&attr, -1, current,
 						 kvm_pmu_perf_overflow, pmc);
+	}
+
 	if (IS_ERR(event)) {
 		pr_err_once("kvm: pmu event creation failed %ld\n",
 			    PTR_ERR(event));
@@ -428,6 +577,33 @@ static void kvm_pmu_create_perf_event(struct kvm_vcpu *vcpu, u64 select_idx)
 	pmc->perf_event = event;
 }
 
+/**
+ * kvm_pmu_update_pmc_chained - update chained bitmap
+ * @vcpu: The vcpu pointer
+ * @select_idx: The number of selected counter
+ *
+ * Update the chained bitmap based on the event type written in the
+ * typer register.
+ */
+static void kvm_pmu_update_pmc_chained(struct kvm_vcpu *vcpu, u64 select_idx)
+{
+	struct kvm_pmu *pmu = &vcpu->arch.pmu;
+	struct kvm_pmc *pmc = &pmu->pmc[select_idx];
+
+	if (kvm_pmu_idx_has_chain_evtype(vcpu, pmc->idx)) {
+		/*
+		 * During promotion from !chained to chained we must ensure
+		 * the adjacent counter is stopped and its event destroyed
+		 */
+		if (!kvm_pmu_pmc_is_chained(pmc))
+			kvm_pmu_stop_counter(vcpu, pmc);
+
+		set_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
+	} else {
+		clear_bit(pmc->idx >> 1, vcpu->arch.pmu.chained);
+	}
+}
+
 /**
  * kvm_pmu_set_counter_event_type - set selected counter to monitor some event
  * @vcpu: The vcpu pointer
@@ -447,6 +623,8 @@ void kvm_pmu_set_counter_event_type(struct kvm_vcpu *vcpu, u64 data,
 	      ? PMCCFILTR_EL0 : PMEVTYPER0_EL0 + select_idx;
 
 	__vcpu_sys_reg(vcpu, reg) = event_type;
+
+	kvm_pmu_update_pmc_chained(vcpu, select_idx);
 	kvm_pmu_create_perf_event(vcpu, select_idx);
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
