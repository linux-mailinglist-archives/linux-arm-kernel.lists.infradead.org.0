Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1521CF4B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 14:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Subject:To:From
	:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=uDvX9CetRhXWICr7ECTV7Z2AalrxdzPnrw3NeYuuLb4=; b=ZYwIfu3TGBZKf2
	q/FOgdm1rY5dJEFAS9IfZoNSfecCn6uqqWMaN+uNFcoY5op5q3qc6cjZuAaa7fnfGygPeR1wNRaI5
	53PBGe9QJrz6Bj+dtRbubUyw87oL5AUSUhtiffxZnwlBky+VLtzbVPdJnYLKhZ2jp18uFdeAzxQJl
	BAOb9HDhxCQLsTLvlXWL+R5yp8rjdai6yXjKknPh14UzLNreECWCcbOp8hw9iJmY2vVx1VB7wnaBN
	y037b1XFWboSN7VFPRw0feq1x/hBS8k7Y/TVgrNxwSFBg1gF08R8MOUCqix+UqFUEbgrQji5iAxUf
	yr9jIHMEleGaIwE4uFxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUJw-0007do-FA; Tue, 12 May 2020 12:47:40 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUJE-0007C3-26; Tue, 12 May 2020 12:46:56 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 45AFD305EEF;
 Tue, 12 May 2020 14:46:53 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 2A06B20962E54; Tue, 12 May 2020 14:46:53 +0200 (CEST)
Message-ID: <20200512124450.824507755@infradead.org>
User-Agent: quilt/0.66
Date: Tue, 12 May 2020 14:41:00 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Leo Yan <leo.yan@linaro.org>
Subject: [PATCH 2/5] arm64: perf: Implement correct cap_user_time
References: <20200512124058.833263033@infradead.org>
MIME-Version: 1.0
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
Cc: alexander.shishkin@linux.intel.com, daniel.lezcano@linaro.org,
 sboyd@codeaurora.org, linux-kernel@vger.kernel.org, acme@kernel.org,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>, mingo@redhat.com,
 john.stultz@linaro.org, tglx@linutronix.de, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As reported by Leo; the existing implementation is broken when the
clock and counter don't intersect at 0.

Use the sched_clock's struct clock_read_data information to correctly
implement cap_user_time and cap_user_time_zero.

Note that the ARM64 counter is architecturally only guaranteed to be
56bit wide (implementations are allowed to be wider) and the existing
perf ABI cannot deal with wrap-around.

This implementation should also be faster than the old; seeing how we
don't need to recompute mult and shift all the time.

Reported-by: Leo Yan <leo.yan@linaro.org>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 arch/arm64/kernel/perf_event.c |   36 +++++++++++++++++++++++++++---------
 1 file changed, 27 insertions(+), 9 deletions(-)

--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -19,6 +19,7 @@
 #include <linux/of.h>
 #include <linux/perf/arm_pmu.h>
 #include <linux/platform_device.h>
+#include <linux/sched_clock.h>
 #include <linux/smp.h>
 
 /* ARMv8 Cortex-A53 specific event types. */
@@ -1165,28 +1166,45 @@ device_initcall(armv8_pmu_driver_init)
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
+		userpg->time_zero = rd->epoch_ns;
+
+		/*
+		 * This isn't strictly correct, the ARM64 counter can be
+		 * 'short' and then we get funnies when it wraps. The correct
+		 * thing would be to extend the perf ABI with a cycle and mask
+		 * value, but because wrapping on ARM64 is very rare in
+		 * practise this 'works'.
+		 */
+		userpg->time_zero -= (rd->epoch_cyc * rd->mult) >> rd->shift;
+
+	} while (sched_clock_read_retry(seq));
+
+	userpg->time_offset = userpg->time_zero - now;
 
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
+	if (userpg->shift == 32) {
+		userpg->shift = 31;
 		userpg->time_mult >>= 1;
 	}
-	userpg->time_shift = (u16)shift;
-	userpg->time_offset = -now;
+
 }



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
