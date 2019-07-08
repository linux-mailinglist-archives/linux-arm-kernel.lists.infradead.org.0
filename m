Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793926208F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M7qfijEWvEUALVsvk0YfXVZ3QK+Azvh+h/2w4gF0Kjo=; b=lsHg6dtMmUUPZHNIC50yy+G+cX
	p1wh77wOXDzfEnQQ25RcxC5SILFxOm5lkHCQ33LHpJnxH+9VBwdTJv7d92MPqUULUrQnXu9dmYujm
	UCi0/E46hs9TP8d30ar9KpUFDpISC82ShZ7T/+T1T0uLM6vl8wqvs6mWJeEq5y2dzEbfalPpPDO8T
	XQu5j1MxjXryJz7P2xx0Q3K1c5SDnP0tFOy0eF073Z2UmQ7rU2dVJfCj/8WmYrFDSCqHfVQQ3iqwd
	66fl4S1jHzyfgfmEpBB+4ZdaVAD5J73MqvN5aL6arWHkJonn5e/WNlr0t4OWSGkJdBsXvI6ohNQ9D
	zPelvNxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUj6-0002ND-1N; Mon, 08 Jul 2019 14:34:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUhf-00013e-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:33:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C288152F;
 Mon,  8 Jul 2019 07:33:15 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A7D333F59C;
 Mon,  8 Jul 2019 07:33:13 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 5/9] perf/arm_pmu: Move PMU lock to ARMv6 events
Date: Mon,  8 Jul 2019 15:32:53 +0100
Message-Id: <1562596377-33196-6-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_073315_937486_26F5DC03 
X-CRM114-Status: GOOD (  14.94  )
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
 arch/arm/kernel/perf_event_v6.c | 26 +++++++++++++++++---------
 drivers/perf/arm_pmu.c          |  1 -
 include/linux/perf/arm_pmu.h    |  5 -----
 3 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/arch/arm/kernel/perf_event_v6.c b/arch/arm/kernel/perf_event_v6.c
index 1ae99de..4106a03 100644
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
@@ -271,7 +277,7 @@ static void armv6pmu_enable_event(struct perf_event *event)
 	unsigned long val, mask, evt, flags;
 	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
 	struct hw_perf_event *hwc = &event->hw;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
+	struct raw_spinlock_t *lock = this_cpu_ptr(&pmu_lock);
 	int idx = hwc->idx;

 	if (ARMV6_CYCLE_COUNTER == idx) {
@@ -294,12 +300,12 @@ static void armv6pmu_enable_event(struct perf_event *event)
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
@@ -363,25 +369,25 @@ static void armv6pmu_enable_event(struct perf_event *event)
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
@@ -502,6 +508,8 @@ static void armv6pmu_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->stop		= armv6pmu_stop;
 	cpu_pmu->map_event	= armv6_map_event;
 	cpu_pmu->num_events	= 3;
+
+	raw_spin_lock_init(this_cpu_ptr(&pmu_lock));
 }

 static int armv6_1136_pmu_init(struct arm_pmu *cpu_pmu)
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
