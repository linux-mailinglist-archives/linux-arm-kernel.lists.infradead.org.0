Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A176E843
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sqRNIECsTfrlIIQNmU2FbirZLF+U13C7O7GldoJxB7A=; b=Ax/
	Az6VZmNjSFwtB7uMn0ASrwl390IpxK7nc4nXfgDiNOo2iMYthbvCWnUQ1kZ6/7/e0qtVkSLhd5OUa
	XHxOFlgLzwUX4cxUt8cYgvWJUq0/UhTT3vR4JMAZDJxripuPfdcCcbcbF1aVJhV6M1ywxIcuIeZna
	S/VsHKcdYys7dduXxYiORCvY+pR/CDWzNmbfNvCy0dBa99oJoTgFQpL/DpnK/A9e0w/wgqugKYj/E
	Qfyt0vvw8rINEroe249KN4ojlVMq96kTHgvLLzWgcxheVLONO7y5Kxc0vHzmISMlxczkJ1aOcRHB0
	dmhgIsp9SSECjDPXidtGhgcco6tD0ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9cm-0007TM-I6; Mon, 29 Apr 2019 16:59:28 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9ce-0007Su-54
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:59:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BD91980D;
 Mon, 29 Apr 2019 09:59:18 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7C0F03F5AF;
 Mon, 29 Apr 2019 09:59:17 -0700 (PDT)
From: Will Deacon <will.deacon@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: arch_timer: Ensure counter register reads occur with
 seqlock held
Date: Mon, 29 Apr 2019 17:59:12 +0100
Message-Id: <20190429165912.9497-1-will.deacon@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_095920_210241_30B22F8B 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>, tglx@linutronix.de,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When executing clock_gettime(), either in the vDSO or via a system call,
we need to ensure that the read of the counter register occurs within
the seqlock reader critical section. This ensures that updates to the
clocksource parameters (e.g. the multiplier) are consistent with the
counter value and therefore avoids the situation where time appears to
go backwards across multiple reads.

Extend the vDSO logic so that the seqlock critical section covers the
read of the counter register as well as accesses to the data page. Since
reads of the counter system registers are not ordered by memory barrier
instructions, introduce dependency ordering from the counter read to a
subsequent memory access so that the seqlock memory barriers apply to
the counter access in both the vDSO and the system call paths.

Cc: <stable@vger.kernel.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Link: https://lore.kernel.org/linux-arm-kernel/alpine.DEB.2.21.1902081950260.1662@nanos.tec.linutronix.de/
Reported-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/arch_timer.h   | 33 +++++++++++++++++++++++++++++++--
 arch/arm64/kernel/vdso/gettimeofday.S | 15 +++++++++++----
 2 files changed, 42 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/include/asm/arch_timer.h b/arch/arm64/include/asm/arch_timer.h
index f2a234d6516c..93e07512b4b6 100644
--- a/arch/arm64/include/asm/arch_timer.h
+++ b/arch/arm64/include/asm/arch_timer.h
@@ -148,18 +148,47 @@ static inline void arch_timer_set_cntkctl(u32 cntkctl)
 	isb();
 }
 
+/*
+ * Ensure that reads of the counter are treated the same as memory reads
+ * for the purposes of ordering by subsequent memory barriers.
+ *
+ * This insanity brought to you by speculative system register reads,
+ * out-of-order memory accesses, sequence locks and Thomas Gleixner.
+ *
+ * http://lists.infradead.org/pipermail/linux-arm-kernel/2019-February/631195.html
+ */
+#define arch_counter_enforce_ordering(val) do {				\
+	u64 tmp, _val = (val);						\
+									\
+	asm volatile(							\
+	"	eor	%0, %1, %1\n"					\
+	"	add	%0, sp, %0\n"					\
+	"	ldr	xzr, [%0]"					\
+	: "=r" (tmp) : "r" (_val));					\
+} while (0)
+
 static inline u64 arch_counter_get_cntpct(void)
 {
+	u64 cnt;
+
 	isb();
-	return arch_timer_reg_read_stable(cntpct_el0);
+	cnt = arch_timer_reg_read_stable(cntpct_el0);
+	arch_counter_enforce_ordering(cnt);
+	return cnt;
 }
 
 static inline u64 arch_counter_get_cntvct(void)
 {
+	u64 cnt;
+
 	isb();
-	return arch_timer_reg_read_stable(cntvct_el0);
+	cnt = arch_timer_reg_read_stable(cntvct_el0);
+	arch_counter_enforce_ordering(cnt);
+	return cnt;
 }
 
+#undef arch_counter_enforce_ordering
+
 static inline int arch_timer_arch_init(void)
 {
 	return 0;
diff --git a/arch/arm64/kernel/vdso/gettimeofday.S b/arch/arm64/kernel/vdso/gettimeofday.S
index 21805e416483..856fee6d3512 100644
--- a/arch/arm64/kernel/vdso/gettimeofday.S
+++ b/arch/arm64/kernel/vdso/gettimeofday.S
@@ -73,6 +73,13 @@ x_tmp		.req	x8
 	movn	x_tmp, #0xff00, lsl #48
 	and	\res, x_tmp, \res
 	mul	\res, \res, \mult
+	/*
+	 * Fake address dependency from the value computed from the counter
+	 * register to subsequent data page accesses so that the sequence
+	 * locking also orders the read of the counter.
+	 */
+	and	x_tmp, \res, xzr
+	add	vdso_data, vdso_data, x_tmp
 	.endm
 
 	/*
@@ -147,12 +154,12 @@ ENTRY(__kernel_gettimeofday)
 	/* w11 = cs_mono_mult, w12 = cs_shift */
 	ldp	w11, w12, [vdso_data, #VDSO_CS_MONO_MULT]
 	ldp	x13, x14, [vdso_data, #VDSO_XTIME_CLK_SEC]
-	seqcnt_check fail=1b
 
 	get_nsec_per_sec res=x9
 	lsl	x9, x9, x12
 
 	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
+	seqcnt_check fail=1b
 	get_ts_realtime res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
 
@@ -211,13 +218,13 @@ realtime:
 	/* w11 = cs_mono_mult, w12 = cs_shift */
 	ldp	w11, w12, [vdso_data, #VDSO_CS_MONO_MULT]
 	ldp	x13, x14, [vdso_data, #VDSO_XTIME_CLK_SEC]
-	seqcnt_check fail=realtime
 
 	/* All computations are done with left-shifted nsecs. */
 	get_nsec_per_sec res=x9
 	lsl	x9, x9, x12
 
 	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
+	seqcnt_check fail=realtime
 	get_ts_realtime res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
 	clock_gettime_return, shift=1
@@ -231,7 +238,6 @@ monotonic:
 	ldp	w11, w12, [vdso_data, #VDSO_CS_MONO_MULT]
 	ldp	x13, x14, [vdso_data, #VDSO_XTIME_CLK_SEC]
 	ldp	x3, x4, [vdso_data, #VDSO_WTM_CLK_SEC]
-	seqcnt_check fail=monotonic
 
 	/* All computations are done with left-shifted nsecs. */
 	lsl	x4, x4, x12
@@ -239,6 +245,7 @@ monotonic:
 	lsl	x9, x9, x12
 
 	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
+	seqcnt_check fail=monotonic
 	get_ts_realtime res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, xtime_sec=x13, xtime_nsec=x14, nsec_to_sec=x9
 
@@ -253,13 +260,13 @@ monotonic_raw:
 	/* w11 = cs_raw_mult, w12 = cs_shift */
 	ldp	w12, w11, [vdso_data, #VDSO_CS_SHIFT]
 	ldp	x13, x14, [vdso_data, #VDSO_RAW_TIME_SEC]
-	seqcnt_check fail=monotonic_raw
 
 	/* All computations are done with left-shifted nsecs. */
 	get_nsec_per_sec res=x9
 	lsl	x9, x9, x12
 
 	get_clock_shifted_nsec res=x15, cycle_last=x10, mult=x11
+	seqcnt_check fail=monotonic_raw
 	get_ts_clock_raw res_sec=x10, res_nsec=x11, \
 		clock_nsec=x15, nsec_to_sec=x9
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
