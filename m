Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915C66B808
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sBY5Yht84q0M19uFpDHEqtmkRb5GsixfYk1Nl9/N87U=; b=FtxH3s312L8tiBGqE6+1/aOWe0
	S43xTU7iSklB01jrdL4+wJ11uMld/hJNLzFSfK/b7sq3Va3BECIGa5w3TEzrF/yVDfQ5irOCt1lAV
	ktxil4F23FVD6YHKDSpJnnQuos06ADDNW2vY+vi8gD0CEJgm5kJGWVYCRA4ZJ0fJBlv7xLoQPxzz+
	2IYND5zongB8oWt6n0kfDi3ZuhCfeJJHHOluul9mEkqHF5XyVaVg1fHTPILNQWfm1MCcLwQaYM+JA
	uPZOewNPMVQA353zguWuYBVAIwaax361dOSTQy2FYurXoQnaTkrgu0XkFpzJ4GmdWNZbSfWvsf7Ew
	byUpNrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf9f-0004pd-3X; Wed, 17 Jul 2019 08:19:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf7w-0003Lo-U4
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C78B81515;
 Wed, 17 Jul 2019 01:17:27 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3A4C33F71A;
 Wed, 17 Jul 2019 01:19:26 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/9] perf/arm_pmu: Move PMU lock to ARMv6 events
Date: Wed, 17 Jul 2019 09:17:08 +0100
Message-Id: <1563351432-55652-6-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011729_146432_3E0A32CD 
X-CRM114-Status: GOOD (  14.68  )
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

Perf event backend for ARMv8 and ARMv7 no longer uses the pmu_lock.
The only remaining user is the ARMv6 event backend.

Move the pmu_lock out of the generic arm_pmu driver into the ARMv6 code.

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
 arch/arm/kernel/perf_event_v6.c | 43 ++++++++++++++++++++++++-----------------
 drivers/perf/arm_pmu.c          |  1 -
 include/linux/perf/arm_pmu.h    |  5 -----
 3 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/arch/arm/kernel/perf_event_v6.c b/arch/arm/kernel/perf_event_v6.c
index 1ae99de..2af0d4a 100644
--- a/arch/arm/kernel/perf_event_v6.c
+++ b/arch/arm/kernel/perf_event_v6.c
@@ -69,6 +69,12 @@ enum armv6_counters {
 };

 /*
+ * Hardware lock to serialize accesses to PMU registers. Needed for the
+ * read/modify/write sequences.
+ */
+DEFINE_PER_CPU(raw_spinlock_t, pmu_lock);
+
+/*
  * The hardware events that we support. We do support cache operations but
  * we have harvard caches and no way to combine instruction and data
  * accesses/misses in hardware.
@@ -269,9 +275,8 @@ static inline void armv6pmu_write_counter(struct perf_event *event, u64 value)
 static void armv6pmu_enable_event(struct perf_event *event)
 {
 	unsigned long val, mask, evt, flags;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 	struct hw_perf_event *hwc = &event->hw;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
+	raw_spinlock_t *lock = this_cpu_ptr(&pmu_lock);
 	int idx = hwc->idx;

 	if (ARMV6_CYCLE_COUNTER == idx) {
@@ -294,12 +299,12 @@ static void armv6pmu_enable_event(struct perf_event *event)
 	 * Mask out the current event and set the counter to count the event
 	 * that we're interested in.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	raw_spin_lock_irqsave(lock, flags);
 	val = armv6_pmcr_read();
 	val &= ~mask;
 	val |= evt;
 	armv6_pmcr_write(val);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	raw_spin_unlock_irqrestore(lock, flags);
 }

 static irqreturn_t
@@ -363,25 +368,25 @@ static void armv6pmu_enable_event(struct perf_event *event)
 static void armv6pmu_start(struct arm_pmu *cpu_pmu)
 {
 	unsigned long flags, val;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
+	raw_spinlock_t *lock = this_cpu_ptr(&pmu_lock);

-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	raw_spin_lock_irqsave(lock, flags);
 	val = armv6_pmcr_read();
 	val |= ARMV6_PMCR_ENABLE;
 	armv6_pmcr_write(val);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	raw_spin_unlock_irqrestore(lock, flags);
 }

 static void armv6pmu_stop(struct arm_pmu *cpu_pmu)
 {
 	unsigned long flags, val;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
+	raw_spinlock_t *lock = this_cpu_ptr(&pmu_lock);

-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	raw_spin_lock_irqsave(lock, flags);
 	val = armv6_pmcr_read();
 	val &= ~ARMV6_PMCR_ENABLE;
 	armv6_pmcr_write(val);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	raw_spin_unlock_irqrestore(lock, flags);
 }

 static int
@@ -420,9 +425,8 @@ static void armv6pmu_clear_event_idx(struct pmu_hw_events *cpuc,
 static void armv6pmu_disable_event(struct perf_event *event)
 {
 	unsigned long val, mask, evt, flags;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 	struct hw_perf_event *hwc = &event->hw;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
+	raw_spinlock_t *lock = this_cpu_ptr(&pmu_lock);
 	int idx = hwc->idx;

 	if (ARMV6_CYCLE_COUNTER == idx) {
@@ -444,20 +448,19 @@ static void armv6pmu_disable_event(struct perf_event *event)
 	 * of ETM bus signal assertion cycles. The external reporting should
 	 * be disabled and so this should never increment.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	raw_spin_lock_irqsave(lock, flags);
 	val = armv6_pmcr_read();
 	val &= ~mask;
 	val |= evt;
 	armv6_pmcr_write(val);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	raw_spin_unlock_irqrestore(lock, flags);
 }

 static void armv6mpcore_pmu_disable_event(struct perf_event *event)
 {
 	unsigned long val, mask, flags, evt = 0;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 	struct hw_perf_event *hwc = &event->hw;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
+	raw_spinlock_t *lock = this_cpu_ptr(&pmu_lock);
 	int idx = hwc->idx;

 	if (ARMV6_CYCLE_COUNTER == idx) {
@@ -475,12 +478,12 @@ static void armv6mpcore_pmu_disable_event(struct perf_event *event)
 	 * Unlike UP ARMv6, we don't have a way of stopping the counters. We
 	 * simply disable the interrupt reporting.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
+	raw_spin_lock_irqsave(lock, flags);
 	val = armv6_pmcr_read();
 	val &= ~mask;
 	val |= evt;
 	armv6_pmcr_write(val);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
+	raw_spin_unlock_irqrestore(lock, flags);
 }

 static int armv6_map_event(struct perf_event *event)
@@ -502,6 +505,8 @@ static void armv6pmu_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->stop		= armv6pmu_stop;
 	cpu_pmu->map_event	= armv6_map_event;
 	cpu_pmu->num_events	= 3;
+
+	raw_spin_lock_init(this_cpu_ptr(&pmu_lock));
 }

 static int armv6_1136_pmu_init(struct arm_pmu *cpu_pmu)
@@ -554,6 +559,8 @@ static int armv6mpcore_pmu_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->map_event	= armv6mpcore_map_event;
 	cpu_pmu->num_events	= 3;

+	raw_spin_lock_init(this_cpu_ptr(&pmu_lock));
+
 	return 0;
 }

diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
index 2d06b80..7fd9f15 100644
--- a/drivers/perf/arm_pmu.c
+++ b/drivers/perf/arm_pmu.c
@@ -823,7 +823,6 @@ static struct arm_pmu *__armpmu_alloc(gfp_t flags)
 		struct pmu_hw_events *events;

 		events = per_cpu_ptr(pmu->hw_events, cpu);
-		raw_spin_lock_init(&events->pmu_lock);
 		events->percpu_pmu = pmu;
 	}

diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
index 71f525a..8640b23 100644
--- a/include/linux/perf/arm_pmu.h
+++ b/include/linux/perf/arm_pmu.h
@@ -54,11 +54,6 @@ struct pmu_hw_events {
 	 */
 	DECLARE_BITMAP(used_mask, ARMPMU_MAX_HWEVENTS);

-	/*
-	 * Hardware lock to serialize accesses to PMU registers. Needed for the
-	 * read/modify/write sequences.
-	 */
-	raw_spinlock_t		pmu_lock;

 	/*
 	 * When using percpu IRQs, we need a percpu dev_id. Place it here as we
--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
