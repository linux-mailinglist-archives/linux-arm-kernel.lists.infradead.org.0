Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C4A6B806
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hVlShGZCH6b6q9FdA3vVIhwdi2FvyZnOn/glssKxYOM=; b=r77Id4Oxy5ASDTSlqmb/w+oPR8
	rEvotlKIxGY6GVCTlmaKU1DS8rMexrmFvGbwtpRoQZLT7+RuxxvAlWlgF6C4mPTgbon1ZkHkHM4qH
	2TgHrEB097m+xHG/lfXVGrdUrb++ULa8WzRo9g0MspAL5UvHtLAqwgz+QSRUsAEijGK4AL8lMrCSR
	/u31LzHvE6LKqN6UEWV2CkSrYxvlz9rpC7h0LDDXNPMmUHpNvTs9CRbB9kUMvNSuqTkqut3UGT5zi
	sLVxnzCnnu2pvbyr46/I77yxvQSnpL44ots1WvvvAd3k2xKd6Agw1oTL04Tl1nxZ5u8lMXErK0jHM
	fJJnoa5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnf98-0004Nn-5S; Wed, 17 Jul 2019 08:18:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnf7t-0003Dl-8K
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:17:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B03A1516;
 Wed, 17 Jul 2019 01:17:24 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6BBB63F71A;
 Wed, 17 Jul 2019 01:19:22 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 3/9] arm: perf: save/resore pmsel
Date: Wed, 17 Jul 2019 09:17:06 +0100
Message-Id: <1563351432-55652-4-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
References: <1563351432-55652-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_011725_400820_B093AD9C 
X-CRM114-Status: GOOD (  13.08  )
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
 alexander.shishkin@linux.intel.com, mingo@redhat.com, stable@vger.kernel.org,
 namhyung@kernel.org, sthotton@marvell.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The callback pmu->read() can be called with interrupts enabled.
Currently, on ARM, this can cause the following callchain:

armpmu_read() -> armpmu_event_update() -> armv7pmu_read_counter()

The last function might modify the counter selector register and then
read the target counter, without taking any lock. With interrupts
enabled, a PMU interrupt could occur and modify the selector register
as well, between the selection and read of the interrupted context.

Save and restore the value of the selector register in the PMU interrupt
handler, ensuring the interrupted context is left with the correct PMU
registers selected.

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
Cc: stable@vger.kernel.org
---
 arch/arm/kernel/perf_event_v7.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/perf_event_v7.c b/arch/arm/kernel/perf_event_v7.c
index a4fb0f8..b7be2a3 100644
--- a/arch/arm/kernel/perf_event_v7.c
+++ b/arch/arm/kernel/perf_event_v7.c
@@ -736,10 +736,22 @@ static inline int armv7_pmnc_counter_has_overflowed(u32 pmnc, int idx)
 	return pmnc & BIT(ARMV7_IDX_TO_COUNTER(idx));
 }

-static inline void armv7_pmnc_select_counter(int idx)
+static inline u32 armv7_pmsel_read(void)
+{
+	u32 pmsel;
+
+	asm volatile("mrc p15, 0, %0, c9, c12, 5" : "=&r" (pmsel));
+	return pmsel;
+}
+
+static inline void armv7_pmsel_write(u32 counter)
 {
-	u32 counter = ARMV7_IDX_TO_COUNTER(idx);
 	asm volatile("mcr p15, 0, %0, c9, c12, 5" : : "r" (counter));
+}
+
+static inline void armv7_pmnc_select_counter(int idx)
+{
+	armv7_pmsel_write(ARMV7_IDX_TO_COUNTER(idx));
 	isb();
 }

@@ -952,8 +964,15 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)
 	struct perf_sample_data data;
 	struct pmu_hw_events *cpuc = this_cpu_ptr(cpu_pmu->hw_events);
 	struct pt_regs *regs;
+	u32 pmsel;
 	int idx;

+
+	/*
+	 * Save pmsel in case the interrupted context was using it.
+	 */
+	pmsel = armv7_pmsel_read();
+
 	/*
 	 * Get and reset the IRQ flags
 	 */
@@ -1004,6 +1023,8 @@ static irqreturn_t armv7pmu_handle_irq(struct arm_pmu *cpu_pmu)
 	 */
 	irq_work_run();

+	armv7_pmsel_write(pmsel);
+
 	return IRQ_HANDLED;
 }

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
