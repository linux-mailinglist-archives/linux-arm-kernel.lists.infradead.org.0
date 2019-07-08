Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EEA62087
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:33:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k2Yr5MyZJTmBxGqF+StTWQRZn+wmleqReAhq7tBjRu0=; b=ILsrV7WONuK1I+CIreRsYTk+6f
	aUT0O5N9bnTHpSt3b7Zkye1ZQKUYTnUCZabxPXwlSzEO1PVRe2z8c3Lk6/xncj5UtxPt61dG6ASCO
	B0NFfvmEe+Qv2cmi2AwLs7PhdBBA2/FowtlPTx3CBT3yAK7QF4jK5eIkN5F6wu38Acfhxm+5Hhy9A
	vwY+bTVDQoaOFAMfERqwLKYgZoQ2dk9vOxSD2arxeoFdBi7+tdUZ2a3ZZRzmfHEgE/qEAmJWY3QY2
	508W3uHVaYEQdaj/p+eCDkLPT65YEM+gsIY7X+EnPQpAxEWoAU91Y9VsM2Q+xPSnIw2Bc84WsARdM
	/U4327fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUi1-0001Ey-Nm; Mon, 08 Jul 2019 14:33:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUhY-00012h-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:33:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 11FD5CFC;
 Mon,  8 Jul 2019 07:33:08 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 96DF13F59C;
 Mon,  8 Jul 2019 07:33:06 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/9] arm64: perf: avoid PMXEV* indirection
Date: Mon,  8 Jul 2019 15:32:49 +0100
Message-Id: <1562596377-33196-2-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
References: <1562596377-33196-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_073308_993120_4992A2F7 
X-CRM114-Status: GOOD (  15.57  )
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
 acme@kernel.org, alexander.shishkin@linux.intel.com, mingo@redhat.com,
 Catalin Marinas <catalin.marinas@arm.com>, namhyung@kernel.org,
 jolsa@redhat.com
MIME-Version: 1.0
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

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
[Julien T.: Don't inline read/write functions to avoid big code-size
	increase, remove unused read_pmevtypern function,
	fix counter index issue.]
Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
---
 arch/arm64/kernel/perf_event.c | 96 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 83 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 96e90e2..7759f8a 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -369,6 +369,77 @@ static inline bool armv8pmu_event_is_chained(struct perf_event *event)
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
+		default: WARN(1, "Inavlid PMEV* index");	\
+		}						\
+	} while (0)
+
+#define RETURN_READ_PMEVCNTRN(n) \
+	return read_sysreg(pmevcntr##n##_el0);
+static unsigned long read_pmevcntrn(int n)
+{
+	PMEVN_SWITCH(n, RETURN_READ_PMEVCNTRN);
+	return 0;
+}
+#undef RETURN_READ_PMEVCNTRN
+
+#define WRITE_PMEVCNTRN(n) \
+	write_sysreg(val, pmevcntr##n##_el0);
+static void write_pmevcntrn(int n, unsigned long val)
+{
+	PMEVN_SWITCH(n, WRITE_PMEVCNTRN);
+}
+#undef WRITE_PMEVCNTRN
+
+#define WRITE_PMEVTYPERN(n) \
+	write_sysreg(val, pmevtyper##n##_el0);
+static void write_pmevtypern(int n, unsigned long val)
+{
+	PMEVN_SWITCH(n, WRITE_PMEVTYPERN);
+}
+#undef WRITE_PMEVTYPERN
+
+#undef PMEVN_SWITCH
+
 static inline u32 armv8pmu_pmcr_read(void)
 {
 	return read_sysreg(pmcr_el0);
@@ -397,17 +468,11 @@ static inline int armv8pmu_counter_has_overflowed(u32 pmnc, int idx)
 	return pmnc & BIT(ARMV8_IDX_TO_COUNTER(idx));
 }

-static inline void armv8pmu_select_counter(int idx)
+static inline u32 armv8pmu_read_evcntr(int idx)
 {
 	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
-	write_sysreg(counter, pmselr_el0);
-	isb();
-}

-static inline u32 armv8pmu_read_evcntr(int idx)
-{
-	armv8pmu_select_counter(idx);
-	return read_sysreg(pmxevcntr_el0);
+	return read_pmevcntrn(counter);
 }

 static inline u64 armv8pmu_read_hw_counter(struct perf_event *event)
@@ -441,8 +506,9 @@ static u64 armv8pmu_read_counter(struct perf_event *event)

 static inline void armv8pmu_write_evcntr(int idx, u32 value)
 {
-	armv8pmu_select_counter(idx);
-	write_sysreg(value, pmxevcntr_el0);
+	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
+
+	write_pmevcntrn(counter, value);
 }

 static inline void armv8pmu_write_hw_counter(struct perf_event *event,
@@ -483,9 +549,10 @@ static void armv8pmu_write_counter(struct perf_event *event, u64 value)

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
@@ -505,7 +572,10 @@ static inline void armv8pmu_write_event_type(struct perf_event *event)
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

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
