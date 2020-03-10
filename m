Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7067C180497
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jU1nU/JndgyfF4S/SrYlo2sCMtBV53qqZgOsJ7TFvQU=; b=LIpgt6Kn++gf7i
	mHoGLesdFYjC/JTffMgkGQiT0NgrWyfrUVlmO7OEF6nE3PlAOy4KcpBUvQpJvh7/hkTmeFwTj7d4w
	2NiN10J1X1n1y4KZYjLfKtcdMgFKnZN5nuIbJHbHDHrE1CY4fNjI7/sNOUJ/LmSM6iDjr4a9uq6Dn
	xxoDnQqVy5QFEGmBJP2AQG94FDLzzcTHDuL1jPWZiS7b7se0kL7lQxJt5wQPqCLl5oH/pPMUFxoFq
	hyhPctfVUJOOvPgdW5jCcZcZpWQrBs2+4I5gZZ8EbieyGuq3lOA7/UsFBamPO3d+ey0ZrnyQrasGs
	tch3XtGMMO8GDCXHo+2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiUV-00046Y-HD; Tue, 10 Mar 2020 17:16:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiUL-00045G-Aa
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:16:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B44201FB;
 Tue, 10 Mar 2020 10:16:12 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0A56B3F67D;
 Tue, 10 Mar 2020 10:16:11 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH] arm64: perf: Clean up enable/disable calls
Date: Tue, 10 Mar 2020 17:15:57 +0000
Message-Id: <037238a60de35a9f49058c0b062aaafc009badc4.1583769494.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_101617_457887_6693C14C 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Reading this code bordered on painful, what with all the repetition and
pointless return values. More fundamentally, dribbling the hardware
enables and disables in one bit at a time incurs needless system
register overhead for chained events and on reset. We already use
bitmask values for the KVM hooks, so consolidate all the register
accesses to match, and make a reasonable saving in both source and
object code.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

Note that the seemingly-superfluous "pmcr" changes in armv8pmu_reset()
are to minimise conflicts with the v8.5 64-bit counter patches; it was
debugging those which triggered me to do this.

 arch/arm64/kernel/perf_event.c | 64 +++++++++++++---------------------
 1 file changed, 25 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index e40b65645c86..89034720602a 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -450,11 +450,9 @@ static inline void armv8pmu_write_event_type(struct perf_event *event)
 	}
 }
 
-static inline int armv8pmu_enable_counter(int idx)
+static inline void armv8pmu_enable_counter(u32 mask)
 {
-	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
-	write_sysreg(BIT(counter), pmcntenset_el0);
-	return idx;
+	write_sysreg(mask, pmcntenset_el0);
 }
 
 static inline void armv8pmu_enable_event_counter(struct perf_event *event)
@@ -469,18 +467,13 @@ static inline void armv8pmu_enable_event_counter(struct perf_event *event)
 	kvm_set_pmu_events(counter_bits, attr);
 
 	/* We rely on the hypervisor switch code to enable guest counters */
-	if (!kvm_pmu_counter_deferred(attr)) {
-		armv8pmu_enable_counter(idx);
-		if (armv8pmu_event_is_chained(event))
-			armv8pmu_enable_counter(idx - 1);
-	}
+	if (!kvm_pmu_counter_deferred(attr))
+		armv8pmu_enable_counter(counter_bits);
 }
 
-static inline int armv8pmu_disable_counter(int idx)
+static inline void armv8pmu_disable_counter(u32 mask)
 {
-	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
-	write_sysreg(BIT(counter), pmcntenclr_el0);
-	return idx;
+	write_sysreg(mask, pmcntenclr_el0);
 }
 
 static inline void armv8pmu_disable_event_counter(struct perf_event *event)
@@ -496,40 +489,34 @@ static inline void armv8pmu_disable_event_counter(struct perf_event *event)
 	kvm_clr_pmu_events(counter_bits);
 
 	/* We rely on the hypervisor switch code to disable guest counters */
-	if (!kvm_pmu_counter_deferred(attr)) {
-		if (armv8pmu_event_is_chained(event))
-			armv8pmu_disable_counter(idx - 1);
-		armv8pmu_disable_counter(idx);
-	}
+	if (!kvm_pmu_counter_deferred(attr))
+		armv8pmu_disable_counter(counter_bits);
 }
 
-static inline int armv8pmu_enable_intens(int idx)
+static inline void armv8pmu_enable_intens(u32 mask)
 {
-	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
-	write_sysreg(BIT(counter), pmintenset_el1);
-	return idx;
+	write_sysreg(mask, pmintenset_el1);
 }
 
-static inline int armv8pmu_enable_event_irq(struct perf_event *event)
+static inline void armv8pmu_enable_event_irq(struct perf_event *event)
 {
-	return armv8pmu_enable_intens(event->hw.idx);
+	u32 counter = ARMV8_IDX_TO_COUNTER(event->hw.idx);
+	armv8pmu_enable_intens(BIT(counter));
 }
 
-static inline int armv8pmu_disable_intens(int idx)
+static inline void armv8pmu_disable_intens(u32 mask)
 {
-	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
-	write_sysreg(BIT(counter), pmintenclr_el1);
+	write_sysreg(mask, pmintenclr_el1);
 	isb();
 	/* Clear the overflow flag in case an interrupt is pending. */
-	write_sysreg(BIT(counter), pmovsclr_el0);
+	write_sysreg(mask, pmovsclr_el0);
 	isb();
-
-	return idx;
 }
 
-static inline int armv8pmu_disable_event_irq(struct perf_event *event)
+static inline void armv8pmu_disable_event_irq(struct perf_event *event)
 {
-	return armv8pmu_disable_intens(event->hw.idx);
+	u32 counter = ARMV8_IDX_TO_COUNTER(event->hw.idx);
+	armv8pmu_disable_intens(BIT(counter));
 }
 
 static inline u32 armv8pmu_getreset_flags(void)
@@ -815,13 +802,11 @@ static int armv8pmu_filter_match(struct perf_event *event)
 static void armv8pmu_reset(void *info)
 {
 	struct arm_pmu *cpu_pmu = (struct arm_pmu *)info;
-	u32 idx, nb_cnt = cpu_pmu->num_events;
+	u32 pmcr;
 
 	/* The counter and interrupt enable registers are unknown at reset. */
-	for (idx = ARMV8_IDX_CYCLE_COUNTER; idx < nb_cnt; ++idx) {
-		armv8pmu_disable_counter(idx);
-		armv8pmu_disable_intens(idx);
-	}
+	armv8pmu_disable_counter(U32_MAX);
+	armv8pmu_disable_intens(U32_MAX);
 
 	/* Clear the counters we flip at guest entry/exit */
 	kvm_clr_pmu_events(U32_MAX);
@@ -830,8 +815,9 @@ static void armv8pmu_reset(void *info)
 	 * Initialize & Reset PMNC. Request overflow interrupt for
 	 * 64 bit cycle counter but cheat in armv8pmu_write_counter().
 	 */
-	armv8pmu_pmcr_write(ARMV8_PMU_PMCR_P | ARMV8_PMU_PMCR_C |
-			    ARMV8_PMU_PMCR_LC);
+	pmcr = ARMV8_PMU_PMCR_P | ARMV8_PMU_PMCR_C | ARMV8_PMU_PMCR_LC;
+
+	armv8pmu_pmcr_write(pmcr);
 }
 
 static int __armv8_pmuv3_map_event(struct perf_event *event,
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
