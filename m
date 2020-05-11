Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224E31CD4C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 11:22:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUapjFISjQpv2gkdfU4sbrCf3ONWzQua6QT4KUamfgg=; b=YjSrksccTLmzRp
	x0nFJJttPZtNP49Y8OD/4m05RxpbkL4LsbV2W4siGzxUzBffu0q/IiyVN9MoaekI3NSmBJE18KJAS
	g1Ra8ooQhXYUQc29qZ7GMogeAxrLH7CHzavMccm0Leiv8wwI+I3hbZdV7mLA7sKhlQYacl3/ts/8c
	rFOnGnx98nFzd1jSL6hMosk6T1hLDgahGFvUmE6iEbvGvDG4K9P5CPMLmwjGYznWgFnKZI27VzSBv
	BGlDz6mcYSbFi4lcbR3evemt03Yp5nXYjW1ICtbMh+dClx3mp3ncjG/mp7M0LiCEPldwhC1lGtRct
	ihj8s89OqR7ELECTmWtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4dX-0003Wj-PZ; Mon, 11 May 2020 09:22:11 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4dP-0003WK-9b; Mon, 11 May 2020 09:22:03 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 2C4DF300261;
 Mon, 11 May 2020 11:22:00 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 0FC6B20961017; Mon, 11 May 2020 11:22:00 +0200 (CEST)
Date: Mon, 11 May 2020 11:22:00 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 0/3] arm64: perf_event: Fix time offset prior to epoch
Message-ID: <20200511092200.GF2957@hirez.programming.kicks-ass.net>
References: <20200505135544.6003-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505135544.6003-1-leo.yan@linaro.org>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, Enrico Weigelt <info@metux.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Alexios Zavras <alexios.zavras@intel.com>,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 09:55:41PM +0800, Leo Yan wrote:
> This patch set is to fix time offset prior to epoch for Arm arch timer.
> This series is mainly following on suggestions on LKML [1].
> 
> To acheive the accurate time offset for a clock source prior to epoch,
> patch 01 adds a new variant sched_clock_register_epoch() which allows to
> output an extra argument for time offset prior to sched clock's
> registration.
> 
> Patch 02 is to add handling for time offset in Arm arch timer driver, As
> Will Deacon suggested to "disable the perf userpage if sched_clock
> changes clocksource too" [2], after thinking about this suggestion, the
> race condition doesn't exist between sched_clock's registration and perf
> userpage.  The reason is sched_clock's registration is finished in
> system's initialisation phase and at this point it has no chance to use
> any userpage by Perf tool.  For this reason let's keep the code simple
> and don't acquire all Perf events' seqlock during sched_clock's
> registration.
> 

AFAICT that's still completely buggered. The fact that the clock starts
late is completely irrelevant, and might just be confusing you.

How this?

(_completely_ untested)

---
 arch/arm64/kernel/perf_event.c | 27 ++++++++++++++++++---------
 include/linux/sched_clock.h    | 28 ++++++++++++++++++++++++++++
 kernel/time/sched_clock.c      | 41 +++++++++++++----------------------------
 3 files changed, 59 insertions(+), 37 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4d7879484cec..81a49a916660 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1165,28 +1165,37 @@ device_initcall(armv8_pmu_driver_init)
 void arch_perf_update_userpage(struct perf_event *event,
 			       struct perf_event_mmap_page *userpg, u64 now)
 {
-	u32 freq;
-	u32 shift;
+	struct clock_read_data *rd;
+	unsigned int seq;
 
 	/*
 	 * Internal timekeeping for enabled/running/stopped times
 	 * is always computed with the sched_clock.
 	 */
-	freq = arch_timer_get_rate();
 	userpg->cap_user_time = 1;
+	userpg->cap_user_time_zero = 1;
+
+	do {
+		rd = sched_clock_read_begin(&seq);
+
+		userpg->time_mult = rd->mult;
+		userpg->time_shift = rd->shift;
+		userpg->time_offset = rd->epoch_ns;
+
+		userpg->time_zero -= (rd->epoch_cyc * rd->shift) >> rd->shift;
+
+	} while (sched_clock_read_retry(seq));
+
+	userpg->time_offset = userpf->time_zero - now;
 
-	clocks_calc_mult_shift(&userpg->time_mult, &shift, freq,
-			NSEC_PER_SEC, 0);
 	/*
 	 * time_shift is not expected to be greater than 31 due to
 	 * the original published conversion algorithm shifting a
 	 * 32-bit value (now specifies a 64-bit value) - refer
 	 * perf_event_mmap_page documentation in perf_event.h.
 	 */
-	if (shift == 32) {
-		shift = 31;
+	if (userpg->time_shift == 32) {
+		userpg->time_shift = 31;
 		userpg->time_mult >>= 1;
 	}
-	userpg->time_shift = (u16)shift;
-	userpg->time_offset = -now;
 }
diff --git a/include/linux/sched_clock.h b/include/linux/sched_clock.h
index 0bb04a96a6d4..939dfbcd3289 100644
--- a/include/linux/sched_clock.h
+++ b/include/linux/sched_clock.h
@@ -6,6 +6,34 @@
 #define LINUX_SCHED_CLOCK
 
 #ifdef CONFIG_GENERIC_SCHED_CLOCK
+/**
+ * struct clock_read_data - data required to read from sched_clock()
+ *
+ * @epoch_ns:		sched_clock() value at last update
+ * @epoch_cyc:		Clock cycle value at last update.
+ * @sched_clock_mask:   Bitmask for two's complement subtraction of non 64bit
+ *			clocks.
+ * @read_sched_clock:	Current clock source (or dummy source when suspended).
+ * @mult:		Multipler for scaled math conversion.
+ * @shift:		Shift value for scaled math conversion.
+ *
+ * Care must be taken when updating this structure; it is read by
+ * some very hot code paths. It occupies <=40 bytes and, when combined
+ * with the seqcount used to synchronize access, comfortably fits into
+ * a 64 byte cache line.
+ */
+struct clock_read_data {
+	u64 epoch_ns;
+	u64 epoch_cyc;
+	u64 sched_clock_mask;
+	u64 (*read_sched_clock)(void);
+	u32 mult;
+	u32 shift;
+};
+
+extern struct clock_read_data *sched_clock_read_begin(unsigned int *seq);
+extern bool sched_clock_read_retry(unsigned int seq);
+
 extern void generic_sched_clock_init(void);
 
 extern void sched_clock_register(u64 (*read)(void), int bits,
diff --git a/kernel/time/sched_clock.c b/kernel/time/sched_clock.c
index fa3f800d7d76..c6d63b0d2999 100644
--- a/kernel/time/sched_clock.c
+++ b/kernel/time/sched_clock.c
@@ -19,31 +19,6 @@
 
 #include "timekeeping.h"
 
-/**
- * struct clock_read_data - data required to read from sched_clock()
- *
- * @epoch_ns:		sched_clock() value at last update
- * @epoch_cyc:		Clock cycle value at last update.
- * @sched_clock_mask:   Bitmask for two's complement subtraction of non 64bit
- *			clocks.
- * @read_sched_clock:	Current clock source (or dummy source when suspended).
- * @mult:		Multipler for scaled math conversion.
- * @shift:		Shift value for scaled math conversion.
- *
- * Care must be taken when updating this structure; it is read by
- * some very hot code paths. It occupies <=40 bytes and, when combined
- * with the seqcount used to synchronize access, comfortably fits into
- * a 64 byte cache line.
- */
-struct clock_read_data {
-	u64 epoch_ns;
-	u64 epoch_cyc;
-	u64 sched_clock_mask;
-	u64 (*read_sched_clock)(void);
-	u32 mult;
-	u32 shift;
-};
-
 /**
  * struct clock_data - all data needed for sched_clock() (including
  *                     registration of a new clock source)
@@ -93,6 +68,17 @@ static inline u64 notrace cyc_to_ns(u64 cyc, u32 mult, u32 shift)
 	return (cyc * mult) >> shift;
 }
 
+struct clock_read_data *sched_clock_read_begin(unsigned int *seq)
+{
+	*seq = raw_read_seqcount(&cs.seq);
+	return cs.read_data + (seq & 1);
+}
+
+struct bool sched_clock_read_retry(unsigned int seq)
+{
+	return read_seqcount_retry(&cd.seq, seq);
+}
+
 unsigned long long notrace sched_clock(void)
 {
 	u64 cyc, res;
@@ -100,13 +86,12 @@ unsigned long long notrace sched_clock(void)
 	struct clock_read_data *rd;
 
 	do {
-		seq = raw_read_seqcount(&cd.seq);
-		rd = cd.read_data + (seq & 1);
+		rd = sched_clock_read_begin(&seq);
 
 		cyc = (rd->read_sched_clock() - rd->epoch_cyc) &
 		      rd->sched_clock_mask;
 		res = rd->epoch_ns + cyc_to_ns(cyc, rd->mult, rd->shift);
-	} while (read_seqcount_retry(&cd.seq, seq));
+	} while (sched_clock_read_retry(seq));
 
 	return res;
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
