Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E748D1BFC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 00:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XgjSB08DkQfZhSw3hIsJn4sIKN5QeAjBe+kixAfdQg=; b=fBTmcH05weemq6
	dGqcf2wUe8PAkFRHCnXtPCkvqq5iCRz9R8n5VYbccRTET2lLd8k/P73ecRLHOtKWKltJA4Isj3xvg
	e9HN8paIXrMidDVVDc6e/K86anks32ypQf1QxBj4BTTV5SLBOHS1VlpdpLh450Ab5WdZsvaDFPReZ
	ynFr7oxVYVjezwJEta1K7m89Qh85nyAcSXThRnijeSC7GZKNUWL5FWWZ/GJRsC3PB9YwbvW5glg/I
	PM/Tc1WbDxcQpDI//XRHtE5U4lcrd/OJXygWaSZUYYb8R316BOd1hlYnmLHqq00BSs/10o2NFU6zF
	LzhQcJA7KWwKGCgUa6MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIKdr-0001JF-8f; Wed, 09 Oct 2019 22:41:11 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIKd4-0000mT-Vw
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 22:40:25 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 101F0240002;
 Wed,  9 Oct 2019 22:40:14 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH 6/8] clocksource/drivers/timer-atmel-tcb: stop using the 32kHz
 for clockevents
Date: Thu, 10 Oct 2019 00:40:04 +0200
Message-Id: <20191009224006.5021-7-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191009224006.5021-1-alexandre.belloni@bootlin.com>
References: <20191009224006.5021-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_154023_302287_1303B8F9 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stop using the slow clock as the clock source for 32 bit counters because
even at 10MHz, they are able to handle delays up to two minutes. This
provides a way better resolution.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clocksource/timer-atmel-tcb.c | 61 ++++++++++++++-------------
 1 file changed, 32 insertions(+), 29 deletions(-)

diff --git a/drivers/clocksource/timer-atmel-tcb.c b/drivers/clocksource/timer-atmel-tcb.c
index 423af2f9835f..8fcd4d74c54b 100644
--- a/drivers/clocksource/timer-atmel-tcb.c
+++ b/drivers/clocksource/timer-atmel-tcb.c
@@ -27,9 +27,10 @@
  *   - Some chips support 32 bit counter. A single channel is used for
  *     this 32 bit free-running counter. the second channel is not used.
  *
- *   - The third channel may be used to provide a 16-bit clockevent
- *     source, used in either periodic or oneshot mode.  This runs
- *     at 32 KiHZ, and can handle delays of up to two seconds.
+ *   - The third channel may be used to provide a clockevent source, used in
+ *   either periodic or oneshot mode. For 16-bit counter its runs at 32 KiHZ,
+ *   and can handle delays of up to two seconds. For 32-bit counters, it runs at
+ *   the same rate as the clocksource
  *
  * REVISIT behavior during system suspend states... we should disable
  * all clocks and save the power.  Easily done for clockevent devices,
@@ -47,6 +48,8 @@ static struct
 } tcb_cache[3];
 static u32 bmr_cache;
 
+static const u8 atmel_tcb_divisors[] = { 2, 8, 32, 128 };
+
 static u64 tc_get_cycles(struct clocksource *cs)
 {
 	unsigned long	flags;
@@ -151,13 +154,6 @@ static struct tc_clkevt_device *to_tc_clkevt(struct clock_event_device *clkevt)
 	return container_of(clkevt, struct tc_clkevt_device, clkevt);
 }
 
-/* For now, we always use the 32K clock ... this optimizes for NO_HZ,
- * because using one of the divided clocks would usually mean the
- * tick rate can never be less than several dozen Hz (vs 0.5 Hz).
- *
- * A divided clock could be good for high resolution timers, since
- * 30.5 usec resolution can seem "low".
- */
 static u32 timer_clock;
 
 static int tc_shutdown(struct clock_event_device *d)
@@ -183,7 +179,7 @@ static int tc_set_oneshot(struct clock_event_device *d)
 
 	clk_enable(tcd->clk);
 
-	/* slow clock, count up to RC, then irq and stop */
+	/* count up to RC, then irq and stop */
 	writel(timer_clock | ATMEL_TC_CPCSTOP | ATMEL_TC_WAVE |
 		     ATMEL_TC_WAVESEL_UP_AUTO, regs + ATMEL_TC_REG(2, CMR));
 	writel(ATMEL_TC_CPCS, regs + ATMEL_TC_REG(2, IER));
@@ -205,7 +201,7 @@ static int tc_set_periodic(struct clock_event_device *d)
 	 */
 	clk_enable(tcd->clk);
 
-	/* slow clock, count up to RC, then irq and restart */
+	/* count up to RC, then irq and restart */
 	writel(timer_clock | ATMEL_TC_WAVE | ATMEL_TC_WAVESEL_UP_AUTO,
 		     regs + ATMEL_TC_REG(2, CMR));
 	writel((32768 + HZ / 2) / HZ, tcaddr + ATMEL_TC_REG(2, RC));
@@ -256,47 +252,56 @@ static irqreturn_t ch2_irq(int irq, void *handle)
 	return IRQ_NONE;
 }
 
-static int __init setup_clkevents(struct atmel_tc *tc, int clk32k_divisor_idx)
+static int __init setup_clkevents(struct atmel_tc *tc, int divisor_idx)
 {
+	u32 rate;
 	int ret;
 	struct clk *t2_clk = tc->clk[2];
 	int irq = tc->irq[2];
-
-	ret = clk_prepare_enable(tc->slow_clk);
-	if (ret)
-		return ret;
+	int bits = tc->tcb_config->counter_width;
 
 	/* try to enable t2 clk to avoid future errors in mode change */
 	ret = clk_prepare_enable(t2_clk);
-	if (ret) {
-		clk_disable_unprepare(tc->slow_clk);
+	if (ret)
 		return ret;
-	}
-
-	clk_disable(t2_clk);
 
 	clkevt.regs = tc->regs;
 	clkevt.clk = t2_clk;
 
-	timer_clock = clk32k_divisor_idx;
+	if (bits == 32) {
+		timer_clock = divisor_idx;
+		rate = clk_get_rate(t2_clk) / atmel_tcb_divisors[divisor_idx];
+	} else {
+		ret = clk_prepare_enable(tc->slow_clk);
+		if (ret) {
+			clk_disable_unprepare(t2_clk);
+			return ret;
+		}
+
+		rate = clk_get_rate(tc->slow_clk);
+		timer_clock = ATMEL_TC_TIMER_CLOCK5;
+	}
+
+	clk_disable(t2_clk);
 
 	clkevt.clkevt.cpumask = cpumask_of(0);
 
 	ret = request_irq(irq, ch2_irq, IRQF_TIMER, "tc_clkevt", &clkevt);
 	if (ret) {
 		clk_unprepare(t2_clk);
-		clk_disable_unprepare(tc->slow_clk);
+		if (bits != 32)
+			clk_disable_unprepare(tc->slow_clk);
 		return ret;
 	}
 
-	clockevents_config_and_register(&clkevt.clkevt, 32768, 1, 0xffff);
+	clockevents_config_and_register(&clkevt.clkevt, rate, 1, BIT(bits) - 1);
 
 	return ret;
 }
 
 #else /* !CONFIG_GENERIC_CLOCKEVENTS */
 
-static int __init setup_clkevents(struct atmel_tc *tc, int clk32k_divisor_idx)
+static int __init setup_clkevents(struct atmel_tc *tc, int divisor_idx)
 {
 	/* NOTHING */
 	return 0;
@@ -346,8 +351,6 @@ static void __init tcb_setup_single_chan(struct atmel_tc *tc, int mck_divisor_id
 	writel(ATMEL_TC_SYNC, tcaddr + ATMEL_TC_BCR);
 }
 
-static const u8 atmel_tcb_divisors[] = { 2, 8, 32, 128 };
-
 static struct atmel_tcb_config tcb_rm9200_config = {
 	.counter_width = 16,
 };
@@ -472,7 +475,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		goto err_disable_t1;
 
 	/* channel 2:  periodic and oneshot timer support */
-	ret = setup_clkevents(&tc, ATMEL_TC_TIMER_CLOCK5);
+	ret = setup_clkevents(&tc, best_divisor_idx);
 	if (ret)
 		goto err_unregister_clksrc;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
