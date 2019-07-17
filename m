Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E9D6B807
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E/VTKhe7ou2IHltxOuTKJ9HeaGStaG/0qdEitqbjXyM=; b=hUEdt4vg/a0jMQbdQWfj1rDobu
	ZpQu0hTkacoXD1omh1ZTvV9EBiJWvKzKvMM3ogyyBIhXgKGHAUmLbSnxEK0Q8svSmXlXMmPl8hMgV
	VDQMzPk8j7k6d9vC9v82Pxj+9HFrtYAkACcjCj21F/F3dTM309jBuKmsfh0p8TnNlcEaR3Q48DIjf
	h48Zp7Ezh/j6qWXG58uffmWXbQz88RuHs210Q/dekhmwM8Q8xS5fVG1nyM+ra9KXeRUTojJ0n4gYU
	6F0M8dm6ukCXBhqqIVdhEgLk0ZsEhuDHDpNtxBVz+/iQtJ9ZgAqz0hJIxknRnRguPzq1r/EwxoACA
	k97yXPFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf9P-0004bU-CZ; Wed, 17 Jul 2019 08:18:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf7u-0003Hw-Vn
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 075C3344;
 Wed, 17 Jul 2019 01:17:26 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6E0053F71A;
 Wed, 17 Jul 2019 01:19:24 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 4/9] arm: perf: Remove Remove PMU locking
Date: Wed, 17 Jul 2019 09:17:07 +0100
Message-Id: <1563351432-55652-5-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011727_157470_5146B4E7 
X-CRM114-Status: GOOD (  11.89  )
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 peterz@infradead.org, jolsa@redhat.com, will.deacon@arm.com,
 Russell King <linux@armlinux.org.uk>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 sthotton@marvell.com, liwei391@huawei.com
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
 arch/arm/kernel/perf_event_v7.c | 54 ++---------------------------------------
 1 file changed, 2 insertions(+), 52 deletions(-)

diff --git a/arch/arm/kernel/perf_event_v7.c b/arch/arm/kernel/perf_event_v7.c
index b7be2a3..9655127 100644
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
@@ -1030,24 +1016,16 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)

 static void armv7pmu_start(struct arm_pmu *cpu_pmu)
 {
-	unsigned long flags;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	WARN_ON_ONCE(preemptible());
 	/* Enable all counters */
 	armv7_pmnc_write(armv7_pmnc_read() | ARMV7_PMNC_E);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void armv7pmu_stop(struct arm_pmu *cpu_pmu)
 {
-	unsigned long flags;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	WARN_ON_ONCE(preemptible());
 	/* Disable all counters */
 	armv7_pmnc_write(armv7_pmnc_read() & ~ARMV7_PMNC_E);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static int armv7pmu_get_event_idx(struct pmu_hw_events *cpuc,
@@ -1513,14 +1491,8 @@ static void krait_clearpmu(u32 config_base)

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
@@ -1533,23 +1505,17 @@ static void krait_pmu_disable_event(struct perf_event *event)

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
@@ -1569,8 +1535,6 @@ static void krait_pmu_enable_event(struct perf_event *event)

 	/* Enable counter */
 	armv7_pmnc_enable_counter(idx);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }

 static void krait_pmu_reset(void *info)
@@ -1846,14 +1810,8 @@ static void scorpion_clearpmu(u32 config_base)

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
@@ -1866,23 +1824,17 @@ static void scorpion_pmu_disable_event(struct perf_event *event)

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
@@ -1902,8 +1854,6 @@ static void scorpion_pmu_enable_event(struct perf_event *event)

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
