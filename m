Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D8960811
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s/1wTBuYmMUgORtt5vwgJmMd+JPQge7uYVIYBX1Jasc=; b=qOKhiWbqfHWlDi/svYe2iJjWrI
	Iuyebx4erSQydz5jmGPpJyt3gugSH7reH2N+J0+8m4o6gZIP7odcbv0GHl9w5kyOJDnOyVzinbahG
	DcY2RA9Wswdryh5NVNKXbDbQb7xxbLsWo+UzGSHW3JnzotZenQXBNt3ACZ/SAH3urMcFFloYFwrqy
	XfgTC+Lyq4zG7KM06AdrfsvLu0uf1HEvzH84p9GgisYDnaztWavmSvqrsAZqxmsaQ5X94D7pinRj+
	nvnlDRE+p45HqA/aFbj6Ki/av5M/RfFCOeXRhGkpTqfvVnZexc9i+em1Rb0H+scTMrULtv/lZBumV
	x3G3Z+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPOC-0003Wu-JO; Fri, 05 Jul 2019 14:40:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPKJ-0006Nk-4l
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rM82gZlrBPWDJRBHi/GiCwSuO0KZVsO0T42qIZr+rDE=; b=r3J1fpbKculPByg/gVcOw1qKR
 s0TCLi1lRXLuDCQhAxGXOemmsHeQ9lKftq9mPbvqCQKqa6G69/tsy2jPOv6LYxTK1Y1QUbuACowG6
 fa/1HrcHxYVsTRLSG2Z5bF5xNCPMNycWCaDfi5uTs5ZKAGJTtF6nSb6E/d0eZ4G/HxnU2kbdkfZcd
 fygzuf9iOlJY3S/a6Vd8nRYC0JKe4eeZw3nNCVxNQtCbPojjN9B4aov/E4eajkH1gtzBdSONrs/U5
 /bGqS2sYQB2IT/fWoziy13ol+5mGxbAMkBpwjjS65hMPTh0mH+LLcKVDbd68BICqxn6RsywzlnU/m
 Gw3qKFuQw==;
Received: from foss.arm.com ([217.140.110.172])
 by casper.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjK1K-00077E-MR
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:56:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 472E91509;
 Fri,  5 Jul 2019 01:56:06 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0E3653F246;
 Fri,  5 Jul 2019 01:56:04 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/5] arm64: pmu: Add function implementation to update
 event index in userpage.
Date: Fri,  5 Jul 2019 09:55:39 +0100
Message-Id: <20190705085541.9356-4-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190705085541.9356-1-raphael.gault@arm.com>
References: <20190705085541.9356-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_095642_992322_91623118 
X-CRM114-Status: GOOD (  18.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, acme@kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In order to be able to access the counter directly for userspace,
we need to provide the index of the counter using the userpage.
We thus need to override the event_idx function to retrieve and
convert the perf_event index to armv8 hardware index.

Since the arm_pmu driver can be used by any implementation, even
if not armv8, two components play a role into making sure the
behaviour is correct and consistent with the PMU capabilities:

* the ARMPMU_EL0_RD_CNTR flag which denotes the capability to access
counter from userspace.
* the event_idx call back, which is implemented and initialized by
the PMU implementation: if no callback is provided, the default
behaviour applies, returning 0 as index value.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/kernel/perf_event.c | 22 ++++++++++++++++++++++
 include/linux/perf/arm_pmu.h   |  2 ++
 2 files changed, 24 insertions(+)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 24575c0a0065..f6336197d29e 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -819,6 +819,22 @@ static void armv8pmu_clear_event_idx(struct pmu_hw_events *cpuc,
 		clear_bit(idx - 1, cpuc->used_mask);
 }
 
+static int armv8pmu_access_event_idx(struct perf_event *event)
+{
+	if (!(event->hw.flags & ARMPMU_EL0_RD_CNTR))
+		return 0;
+
+	/*
+	 * We remap the cycle counter index to 32 to
+	 * match the offset applied to the rest of
+	 * the counter indeces.
+	 */
+	if (event->hw.idx == ARMV8_IDX_CYCLE_COUNTER)
+		return 32;
+
+	return event->hw.idx;
+}
+
 /*
  * Add an event filter to a given event.
  */
@@ -912,6 +928,9 @@ static int __armv8_pmuv3_map_event(struct perf_event *event,
 	if (armv8pmu_event_is_64bit(event))
 		event->hw.flags |= ARMPMU_EVT_64BIT;
 
+	if (!cpus_have_const_cap(ARM64_HAS_HETEROGENEOUS_PMU))
+		event->hw.flags |= ARMPMU_EL0_RD_CNTR;
+
 	/* Only expose micro/arch events supported by this PMU */
 	if ((hw_event_id > 0) && (hw_event_id < ARMV8_PMUV3_MAX_COMMON_EVENTS)
 	    && test_bit(hw_event_id, armpmu->pmceid_bitmap)) {
@@ -1032,6 +1051,8 @@ static int armv8_pmu_init(struct arm_pmu *cpu_pmu)
 	cpu_pmu->set_event_filter	= armv8pmu_set_event_filter;
 	cpu_pmu->filter_match		= armv8pmu_filter_match;
 
+	cpu_pmu->pmu.event_idx		= armv8pmu_access_event_idx;
+
 	return 0;
 }
 
@@ -1210,6 +1231,7 @@ void arch_perf_update_userpage(struct perf_event *event,
 	 */
 	freq = arch_timer_get_rate();
 	userpg->cap_user_time = 1;
+	userpg->cap_user_rdpmc = !!(event->hw.flags & ARMPMU_EL0_RD_CNTR);
 
 	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
 			NSEC_PER_SEC, 0);
diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
index 71f525a35ac2..1106a9ac00fd 100644
--- a/include/linux/perf/arm_pmu.h
+++ b/include/linux/perf/arm_pmu.h
@@ -26,6 +26,8 @@
  */
 /* Event uses a 64bit counter */
 #define ARMPMU_EVT_64BIT		1
+/* Allow access to hardware counter from userspace */
+#define ARMPMU_EL0_RD_CNTR		2
 
 #define HW_OP_UNSUPPORTED		0xFFFF
 #define C(_x)				PERF_COUNT_HW_CACHE_##_x
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
