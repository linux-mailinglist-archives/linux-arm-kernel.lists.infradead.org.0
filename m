Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 417BD1FCCA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:41:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ik6d13KoPZYuTB8BBYIHwiOYPRW6WSHwYEvRx2+X8T4=; b=AmbSNWlFfEFqBV
	BcGTPga6kduq8bP+7yPd/ykGhPtlf14m14nUIP8n9BvOUF06Npsn/H/gWD5ytZx+9Id18rLWDzOKH
	dyusMfu/nq4y/6mbJ5EZ182zoEILqgZvTJXn4TsRIU9/BLe1DwE/f9/5u12ABc6mX+gBOTjSnFQhG
	nIkYnnW/COIlR7Cc13VQVnWk7bKb3Pb6gBX2mpSXza6CtiM7TsNclNl2kgEDtKKDldAcm4yeS+UYL
	qmIN7vdQdh8uB/Oge+8T8Ns378XatbniKS04Lwlu8NWFUUv1CRYQRQJbqmb9poF8OihUjkUN3nDmV
	++nXc/4bJm8hidWAEHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWRm-0006cz-ET; Wed, 17 Jun 2020 11:41:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWOe-0001Yh-KU
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:38:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1EA661042;
 Wed, 17 Jun 2020 04:38:24 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.7])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7FF513F71F;
 Wed, 17 Jun 2020 04:38:21 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/7] arm64: perf: Avoid PMXEV* indirection
Date: Wed, 17 Jun 2020 12:38:46 +0100
Message-Id: <20200617113851.607706-3-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200617113851.607706-1-alexandru.elisei@arm.com>
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_043824_801606_49290E8B 
X-CRM114-Status: GOOD (  16.80  )
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
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mark Rutland <mark.rutland@arm.com>

Currently we access the counter registers and their respective type
registers indirectly. This requires us to write to PMSELR, issue an ISB,
then access the relevant PMXEV* registers.

This is unfortunate, because:

* Under virtualization, accessing one registers requires two traps to
  the hypervisor, even though we could access the register directly with
  a single trap.

* We have to issue an ISB which we could otherwise avoid the cost of.

* When we use NMIs, the NMI handler will have to save/restore the select
  register in case the code it preempted was attempting to access a
  counter or its type register.

We can avoid these issues by directly accessing the relevant registers.
This patch adds helpers to do so.

In armv8pmu_enable_event() we still need the ISB to prevent the PE from
reordering the write to PMINTENSET_EL1 register. If the interrupt is
enabled before we disable the counter and the new event is configured,
we might get an interrupt triggered by the previously programmed event
overflowing, but which we wrongly attribute to the event that we are
enabling.

In the process, remove the comment that refers to the ARMv7 PMU.

Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
[Julien T.: Don't inline read/write functions to avoid big code-size
	increase, remove unused read_pmevtypern function,
	fix counter index issue.]
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
[Removed comment, removed trailing semicolons in macros, added ISB]
Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 arch/arm64/kernel/perf_event.c | 95 +++++++++++++++++++++++++++++-----
 1 file changed, 81 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index ee180b2a5b39..e95b5ca70a53 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -323,6 +323,73 @@ static inline bool armv8pmu_event_is_chained(struct perf_event *event)
 #define	ARMV8_IDX_TO_COUNTER(x)	\
 	(((x) - ARMV8_IDX_COUNTER0) & ARMV8_PMU_COUNTER_MASK)
 
+/*
+ * This code is really good
+ */
+
+#define PMEVN_CASE(n, case_macro) \
+	case n: case_macro(n); break
+
+#define PMEVN_SWITCH(x, case_macro)				\
+	do {							\
+		switch (x) {					\
+		PMEVN_CASE(0,  case_macro);			\
+		PMEVN_CASE(1,  case_macro);			\
+		PMEVN_CASE(2,  case_macro);			\
+		PMEVN_CASE(3,  case_macro);			\
+		PMEVN_CASE(4,  case_macro);			\
+		PMEVN_CASE(5,  case_macro);			\
+		PMEVN_CASE(6,  case_macro);			\
+		PMEVN_CASE(7,  case_macro);			\
+		PMEVN_CASE(8,  case_macro);			\
+		PMEVN_CASE(9,  case_macro);			\
+		PMEVN_CASE(10, case_macro);			\
+		PMEVN_CASE(11, case_macro);			\
+		PMEVN_CASE(12, case_macro);			\
+		PMEVN_CASE(13, case_macro);			\
+		PMEVN_CASE(14, case_macro);			\
+		PMEVN_CASE(15, case_macro);			\
+		PMEVN_CASE(16, case_macro);			\
+		PMEVN_CASE(17, case_macro);			\
+		PMEVN_CASE(18, case_macro);			\
+		PMEVN_CASE(19, case_macro);			\
+		PMEVN_CASE(20, case_macro);			\
+		PMEVN_CASE(21, case_macro);			\
+		PMEVN_CASE(22, case_macro);			\
+		PMEVN_CASE(23, case_macro);			\
+		PMEVN_CASE(24, case_macro);			\
+		PMEVN_CASE(25, case_macro);			\
+		PMEVN_CASE(26, case_macro);			\
+		PMEVN_CASE(27, case_macro);			\
+		PMEVN_CASE(28, case_macro);			\
+		PMEVN_CASE(29, case_macro);			\
+		PMEVN_CASE(30, case_macro);			\
+		default: WARN(1, "Invalid PMEV* index");	\
+		}						\
+	} while (0)
+
+#define RETURN_READ_PMEVCNTRN(n) \
+	return read_sysreg(pmevcntr##n##_el0)
+static unsigned long read_pmevcntrn(int n)
+{
+	PMEVN_SWITCH(n, RETURN_READ_PMEVCNTRN);
+	return 0;
+}
+
+#define WRITE_PMEVCNTRN(n) \
+	write_sysreg(val, pmevcntr##n##_el0)
+static void write_pmevcntrn(int n, unsigned long val)
+{
+	PMEVN_SWITCH(n, WRITE_PMEVCNTRN);
+}
+
+#define WRITE_PMEVTYPERN(n) \
+	write_sysreg(val, pmevtyper##n##_el0)
+static void write_pmevtypern(int n, unsigned long val)
+{
+	PMEVN_SWITCH(n, WRITE_PMEVTYPERN);
+}
+
 static inline u32 armv8pmu_pmcr_read(void)
 {
 	return read_sysreg(pmcr_el0);
@@ -351,17 +418,11 @@ static inline int armv8pmu_counter_has_overflowed(u32 pmnc, int idx)
 	return pmnc & BIT(ARMV8_IDX_TO_COUNTER(idx));
 }
 
-static inline void armv8pmu_select_counter(int idx)
+static inline u32 armv8pmu_read_evcntr(int idx)
 {
 	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
-	write_sysreg(counter, pmselr_el0);
-	isb();
-}
 
-static inline u64 armv8pmu_read_evcntr(int idx)
-{
-	armv8pmu_select_counter(idx);
-	return read_sysreg(pmxevcntr_el0);
+	return read_pmevcntrn(counter);
 }
 
 static inline u64 armv8pmu_read_hw_counter(struct perf_event *event)
@@ -433,8 +494,9 @@ static u64 armv8pmu_read_counter(struct perf_event *event)
 
 static inline void armv8pmu_write_evcntr(int idx, u64 value)
 {
-	armv8pmu_select_counter(idx);
-	write_sysreg(value, pmxevcntr_el0);
+	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
+
+	write_pmevcntrn(counter, value);
 }
 
 static inline void armv8pmu_write_hw_counter(struct perf_event *event,
@@ -469,9 +531,10 @@ static void armv8pmu_write_counter(struct perf_event *event, u64 value)
 
 static inline void armv8pmu_write_evtype(int idx, u32 val)
 {
-	armv8pmu_select_counter(idx);
+	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
+
 	val &= ARMV8_PMU_EVTYPE_MASK;
-	write_sysreg(val, pmxevtyper_el0);
+	write_pmevtypern(counter, val);
 }
 
 static inline void armv8pmu_write_event_type(struct perf_event *event)
@@ -491,7 +554,10 @@ static inline void armv8pmu_write_event_type(struct perf_event *event)
 		armv8pmu_write_evtype(idx - 1, hwc->config_base);
 		armv8pmu_write_evtype(idx, chain_evt);
 	} else {
-		armv8pmu_write_evtype(idx, hwc->config_base);
+		if (idx == ARMV8_IDX_CYCLE_COUNTER)
+			write_sysreg(hwc->config_base, pmccfiltr_el0);
+		else
+			armv8pmu_write_evtype(idx, hwc->config_base);
 	}
 }
 
@@ -595,9 +661,10 @@ static void armv8pmu_enable_event(struct perf_event *event)
 	 * Disable counter
 	 */
 	armv8pmu_disable_event_counter(event);
+	isb();
 
 	/*
-	 * Set event (if destined for PMNx counters).
+	 * Set event.
 	 */
 	armv8pmu_write_event_type(event);
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
