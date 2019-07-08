Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4419F6208C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m8OPrwZgb8V+Z750Ue4WDDxCJebd8+vOGFq6g9mI7zY=; b=UzwIXMqri0ATnL+RXcybVlTAUp
	lBVXvErXiim+evaV3t2xPkzxkw789V3WbxmJT3U9Xna6+RJpyP4SMGpOFPwxgaV/t79JwB/0fR9/I
	0JT/v6h4M6HCFkSMLG248LewHGZ3tpBxUjo4dpqIt69iFPZkiZ34xeuNNLI/YrrOkJS2puUIw2iS5
	0TlkR7L7E7usy1yGihu1Y9w3xUHXDba2x6NOkLrjHdq7Z74PsWMcXplAVXjiIuchrstitHN9jkSH1
	LGgslu3D29/j3jAz4gt3fX8oB6BpIYSO2n3YQ4h6FRjTIQf3kkJwtbmiSFCT9Y9mhJviSSZpUHY/E
	IvZpH8ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUim-0001uX-TA; Mon, 08 Jul 2019 14:34:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUhd-00017B-TY
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:33:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 721B7152B;
 Mon,  8 Jul 2019 07:33:13 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D2C713F59C;
 Mon,  8 Jul 2019 07:33:11 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 4/9] arm: perf: Remove Remove PMU locking
Date: Mon,  8 Jul 2019 15:32:52 +0100
Message-Id: <1562596377-33196-5-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_073314_077381_3AE45E86 
X-CRM114-Status: GOOD (  13.07  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, liwei391@huawei.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the PMU interrupt saves and restores the value of the selector
register, there is no need to serialize register accesses against the
interrupt contexts.

For operations that can be called with interrupts enabled, preemption
still needs to be disabled to ensure the programming of the PMU is
done on the expected CPU and not migrated mid-programming.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
---
 arch/arm/kernel/perf_event_v7.c | 56 +++--------------------------------------
 1 file changed, 4 insertions(+), 52 deletions(-)

diff --git a/arch/arm/kernel/perf_event_v7.c b/arch/arm/kernel/perf_event_v7.c
index c3da7a5..cb3b7a4 100644
--- a/arch/arm/kernel/perf_event_v7.c
+++ b/arch/arm/kernel/perf_event_v7.c
@@ -882,10 +882,8 @@ static void armv7_pmnc_dump_regs(struct arm_pmu *cpu_pmu)

 static void armv7pmu_enable_event(struct perf_event *event)
 {
-	unsigned long flags;
 	struct hw_perf_event *hwc = &event->hw;
 	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
 	int idx = hwc->idx;

 	if (!armv7_pmnc_counter_valid(cpu_pmu, idx)) {
@@ -898,7 +896,6 @@ static void armv7pmu_enable_event(struct perf_event *event)
 	 * Enable counter and interrupt, and set the counter to count
 	 * the event that we're interested in.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);

 	/*
 	 * Disable counter
@@ -922,16 +919,12 @@ static void armv7pmu_enable_event(struct perf_event *event)
 	 * Enable counter
 	 */
 	armv7_pmnc_enable_counter(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void armv7pmu_disable_event(struct perf_event *event)
 {
-	unsigned long flags;
 	struct hw_perf_event *hwc = &event->hw;
 	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
 	int idx = hwc->idx;

 	if (!armv7_pmnc_counter_valid(cpu_pmu, idx)) {
@@ -941,11 +934,6 @@ static void armv7pmu_disable_event(struct perf_event *event)
 	}

 	/*
-	 * Disable counter and interrupt
-	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
-
-	/*
 	 * Disable counter
 	 */
 	armv7_pmnc_disable_counter(idx);
@@ -954,8 +942,6 @@ static void armv7pmu_disable_event(struct perf_event *event)
 	 * Disable interrupt for this counter
 	 */
 	armv7_pmnc_disable_intens(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)
@@ -1026,24 +1012,18 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)

 static void armv7pmu_start(struct arm_pmu *cpu_pmu)
 {
-	unsigned long flags;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	preempt_disable();
 	/* Enable all counters */
 	armv7_pmnc_write(armv7_pmnc_read() | ARMV7_PMNC_E);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	preempt_enable();
 }

 static void armv7pmu_stop(struct arm_pmu *cpu_pmu)
 {
-	unsigned long flags;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	preempt_disable();
 	/* Disable all counters */
 	armv7_pmnc_write(armv7_pmnc_read() & ~ARMV7_PMNC_E);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	preempt_enable();
 }

 static int armv7pmu_get_event_idx(struct pmu_hw_events *cpuc,
@@ -1509,14 +1489,8 @@ static void krait_clearpmu(u32 config_base)

 static void krait_pmu_disable_event(struct perf_event *event)
 {
-	unsigned long flags;
 	struct hw_perf_event *hwc = &event->hw;
 	int idx = hwc->idx;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	/* Disable counter and interrupt */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);

 	/* Disable counter */
 	armv7_pmnc_disable_counter(idx);
@@ -1529,23 +1503,17 @@ static void krait_pmu_disable_event(struct perf_event *event)

 	/* Disable interrupt for this counter */
 	armv7_pmnc_disable_intens(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void krait_pmu_enable_event(struct perf_event *event)
 {
-	unsigned long flags;
 	struct hw_perf_event *hwc = &event->hw;
 	int idx = hwc->idx;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);

 	/*
 	 * Enable counter and interrupt, and set the counter to count
 	 * the event that we're interested in.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);

 	/* Disable counter */
 	armv7_pmnc_disable_counter(idx);
@@ -1565,8 +1533,6 @@ static void krait_pmu_enable_event(struct perf_event *event)

 	/* Enable counter */
 	armv7_pmnc_enable_counter(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void krait_pmu_reset(void *info)
@@ -1842,14 +1808,8 @@ static void scorpion_clearpmu(u32 config_base)

 static void scorpion_pmu_disable_event(struct perf_event *event)
 {
-	unsigned long flags;
 	struct hw_perf_event *hwc = &event->hw;
 	int idx = hwc->idx;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	/* Disable counter and interrupt */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);

 	/* Disable counter */
 	armv7_pmnc_disable_counter(idx);
@@ -1862,23 +1822,17 @@ static void scorpion_pmu_disable_event(struct perf_event *event)

 	/* Disable interrupt for this counter */
 	armv7_pmnc_disable_intens(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void scorpion_pmu_enable_event(struct perf_event *event)
 {
-	unsigned long flags;
 	struct hw_perf_event *hwc = &event->hw;
 	int idx = hwc->idx;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);

 	/*
 	 * Enable counter and interrupt, and set the counter to count
 	 * the event that we're interested in.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);

 	/* Disable counter */
 	armv7_pmnc_disable_counter(idx);
@@ -1898,8 +1852,6 @@ static void scorpion_pmu_enable_event(struct perf_event *event)

 	/* Enable counter */
 	armv7_pmnc_enable_counter(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void scorpion_pmu_reset(void *info)
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
