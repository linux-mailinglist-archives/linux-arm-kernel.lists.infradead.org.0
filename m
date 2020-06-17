Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B27E1FCCA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cp3eT4uK8E4tSv0g2kEPpRqk2t3LRnozl4yBH+qJFAk=; b=rgg8q9jA5jdlkB
	A2DXpJCgPUheJFTkgWzQ0+s3LlOPqzB1Yrwwx689WwbZBfyvQ4ntNO83dGAOG7XfloskBifwvzR1b
	vWfPp9Cgj3y53ChKuT+oeXfQm8NceZlej5wbFFQLW5QDwrxlsl2CS0F4RIW4mfUix4cPYhxcrThZG
	p12OJBeouTcmqPXZkXnek7cpPXZ6EQzpZo7S4dH9qoyLviHjPYkSVmW/HA5MrRLN+Yaek1zLC4Ffl
	cPkdpXqrr8Pk8YImKwHaxdn7tFIqrLvB9B+BEsWJ+Yr5l0DwlavKF0Vv3v6lnHE5DIEGsg6cJyzWT
	yOgSK1zdtgt+QUPj7CmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWS3-0006q9-Nq; Wed, 17 Jun 2020 11:41:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOh-0001an-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D59AB1045;
 Wed, 17 Jun 2020 04:38:26 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6640B3F71F;
 Wed, 17 Jun 2020 04:38:24 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/7] arm64: perf: Remove PMU locking
Date: Wed, 17 Jun 2020 12:38:47 +0100
Message-Id: <20200617113851.607706-4-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200617113851.607706-1-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043827_611103_6E480E2A 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, maz@kernel.org,
 Jiri Olsa <jolsa@redhat.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

The PMU is disabled and enabled, and the counters are programmed from
contexts where interrupts or preemption is disabled.

The functions to toggle the PMU and to program the PMU counters access the
registers directly and don't access data modified by the interrupt handler.
That, and the fact that they're always called from non-preemptible
contexts, means that we don't need to disable interrupts or use a spinlock.

Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
[Explained why locking is not needed, removed WARN_ONs]
Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 arch/arm64/kernel/perf_event.c | 28 ----------------------------
 1 file changed, 28 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index e95b5ca70a53..a6195022be7d 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -647,15 +647,10 @@ static inline u32 armv8pmu_getreset_flags(void)
 
 static void armv8pmu_enable_event(struct perf_event *event)
 {
-	unsigned long flags;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
 	/*
 	 * Enable counter and interrupt, and set the counter to count
 	 * the event that we're interested in.
 	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
 
 	/*
 	 * Disable counter
@@ -678,21 +673,10 @@ static void armv8pmu_enable_event(struct perf_event *event)
 	 * Enable counter
 	 */
 	armv8pmu_enable_event_counter(event);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }
 
 static void armv8pmu_disable_event(struct perf_event *event)
 {
-	unsigned long flags;
-	struct arm_pmu *cpu_pmu = to_arm_pmu(event->pmu);
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	/*
-	 * Disable counter and interrupt
-	 */
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
-
 	/*
 	 * Disable counter
 	 */
@@ -702,30 +686,18 @@ static void armv8pmu_disable_event(struct perf_event *event)
 	 * Disable interrupt for this counter
 	 */
 	armv8pmu_disable_event_irq(event);
-
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }
 
 static void armv8pmu_start(struct arm_pmu *cpu_pmu)
 {
-	unsigned long flags;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
 	/* Enable all counters */
 	armv8pmu_pmcr_write(armv8pmu_pmcr_read() | ARMV8_PMU_PMCR_E);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }
 
 static void armv8pmu_stop(struct arm_pmu *cpu_pmu)
 {
-	unsigned long flags;
-	struct pmu_hw_events *events = this_cpu_ptr(cpu_pmu->hw_events);
-
-	raw_spin_lock_irqsave(&events->pmu_lock, flags);
 	/* Disable all counters */
 	armv8pmu_pmcr_write(armv8pmu_pmcr_read() & ~ARMV8_PMU_PMCR_E);
-	raw_spin_unlock_irqrestore(&events->pmu_lock, flags);
 }
 
 static irqreturn_t armv8pmu_handle_irq(struct arm_pmu *cpu_pmu)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
