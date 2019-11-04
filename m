Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87C9EE21E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 15:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RdxkQ5HpuQ9t/Zp84Da7k1rxEE2PjQc8tNljFFXEpAI=; b=fMuxtK5eMpwc/Z91LPUQHzXeo5
	I7ayluZ3lHcRk6NmpNywE1M8fhixVWNk+rrFBtbaOb8a66HcbuVgHtz1LUD2uzuTtVFVS4SrwQs5W
	HHs6K7T7eveUPV34ftg/VJanLVrFBhWPdg0b+zBEBaAlCnwFOSfVITpPZ6uMRr6NZki9OYIAmPs9O
	9u4m9hNilJ1XjeduqgknFyl3sVVMe2bGvtGK0IaeMbR3dwpqrzjihIQrMldr6OOtBikkDZiZKWstM
	rRHkGYW1Z4mUg8D28FMo1cA+7xgiGSoeJR/j79/Bi/7HKi+yA25v0TBItBa2Ojw1ieRlwkJ97eN6m
	O3SYH0cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRdGO-0006xI-D4; Mon, 04 Nov 2019 14:23:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRdGF-0006vg-QI
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 14:23:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id s1so17340218wro.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 06:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8PT3lzS5kgHvAaeJFeb5r3uf3YM7EgRuHSrYbt0bMFk=;
 b=SNkPRKZdYBvp+Jra5t5LVndKlS22wZNjS01AGgztYnVuSJdig02jSagBkDkPSGJ3VQ
 ieOLceDMwHWW6D8zYvxX80WnD/5CvAxzIXlxzrEZhA3ro4g6pGdTlJd6OJKGKGgLKQp9
 VOPN3p4Czyv3Hva2rnNNsdqX516gIliU3ABxR6gHWjc/PI/NqupKLqBmAcQN+tjFzUiH
 4ogMDxNFwHSAMDUCnYGafFEsnSlBIoabg41lMHjv/bI1McdsYdrooFSsshoqqOIpAoIk
 q2isgyU4wGAERUP78PrK1GwIbL8mBzYAUabQKZKzf8RrbbK4ccq2ZZq0X2sjj64zkwzk
 aF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8PT3lzS5kgHvAaeJFeb5r3uf3YM7EgRuHSrYbt0bMFk=;
 b=MA6GtmOsrscF45ORMY0qrvC0bHOlMOWQTL140BTEY5/kg1ylvOI+6R6cFK0iBOJXlN
 qHk/CmZGInEfQCRW+rk2o5/O+4kqWp0EiJR1zVjtzNCOkTCj+EvH/prguwLRMXhtJ11l
 YUuchuQkLraD/3RxfnEN+ZFCKcFRWhKLqyVDjQ1LtoDlFpcaVdo/cUFIEm0KJJGpjzh3
 9N+DuZTbbUElxWHmQfzDS35FaAltnX8GJszZNHvAQDNYGc6kfwdfAPC18CGtxJi++prZ
 jCH29AqOrVaUt3m2yulCHfgZflwP9fPUelaxH83EKMxHwL8P5Wj2URVr669Yna1URDmK
 09FA==
X-Gm-Message-State: APjAAAU880v1dKaI3jtbsB0AmFKdU88TzA6QOo7HPEYah70S3MEd97K8
 ZppKcL6EDxCKkIS4R2f8GAq9f0WCuiw=
X-Google-Smtp-Source: APXvYqw9heJyuT88QXFmWV6rLfXGXLrq0AsYBrPzlbFXhj2lixT9fLCy+Fb21pC6Q75L5eIpuzEfnw==
X-Received: by 2002:adf:e8ca:: with SMTP id k10mr10060725wrn.377.1572877393588; 
 Mon, 04 Nov 2019 06:23:13 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:58da:b044:f184:d281])
 by smtp.gmail.com with ESMTPSA id l18sm21692446wrn.48.2019.11.04.06.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 06:23:12 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 3/5] clocksource/drivers/renesas-ostm: Convert to timer_of
Date: Mon,  4 Nov 2019 15:22:55 +0100
Message-Id: <20191104142257.30029-3-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191104142257.30029-1-daniel.lezcano@linaro.org>
References: <6fd4d800-b1f8-d757-458e-23742d20884c@linaro.org>
 <20191104142257.30029-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_062315_859258_58D20365 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Torgue <alexandre.torgue@st.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "moderated list:ARM/STM32 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Geert Uytterhoeven <geert+renesas@glider.be>

Convert the Renesas OSTM driver to use the timer_of framework.
This reduces the driver object size by 367 bytes (with gcc 7.4.0).

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/20191016144747.29538-4-geert+renesas@glider.be
---
 drivers/clocksource/Kconfig        |   1 +
 drivers/clocksource/renesas-ostm.c | 189 +++++++++++------------------
 2 files changed, 73 insertions(+), 117 deletions(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f35a53ce8988..5fdd76cb1768 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -528,6 +528,7 @@ config SH_TIMER_MTU2
 config RENESAS_OSTM
 	bool "Renesas OSTM timer driver" if COMPILE_TEST
 	select CLKSRC_MMIO
+	select TIMER_OF
 	help
 	  Enables the support for the Renesas OSTM.
 
diff --git a/drivers/clocksource/renesas-ostm.c b/drivers/clocksource/renesas-ostm.c
index 37c39b901bb1..46012d905604 100644
--- a/drivers/clocksource/renesas-ostm.c
+++ b/drivers/clocksource/renesas-ostm.c
@@ -6,14 +6,14 @@
  * Copyright (C) 2017 Chris Brandt
  */
 
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
 #include <linux/clk.h>
 #include <linux/clockchips.h>
 #include <linux/interrupt.h>
 #include <linux/sched_clock.h>
 #include <linux/slab.h>
 
+#include "timer-of.h"
+
 /*
  * The OSTM contains independent channels.
  * The first OSTM channel probed will be set up as a free running
@@ -24,12 +24,6 @@
  * driven clock event.
  */
 
-struct ostm_device {
-	void __iomem *base;
-	unsigned long ticks_per_jiffy;
-	struct clock_event_device ced;
-};
-
 static void __iomem *system_clock;	/* For sched_clock() */
 
 /* OSTM REGISTERS */
@@ -47,41 +41,32 @@ static void __iomem *system_clock;	/* For sched_clock() */
 #define	CTL_ONESHOT		0x02
 #define	CTL_FREERUN		0x02
 
-static struct ostm_device *ced_to_ostm(struct clock_event_device *ced)
-{
-	return container_of(ced, struct ostm_device, ced);
-}
-
-static void ostm_timer_stop(struct ostm_device *ostm)
+static void ostm_timer_stop(struct timer_of *to)
 {
-	if (readb(ostm->base + OSTM_TE) & TE) {
-		writeb(TT, ostm->base + OSTM_TT);
+	if (readb(timer_of_base(to) + OSTM_TE) & TE) {
+		writeb(TT, timer_of_base(to) + OSTM_TT);
 
 		/*
 		 * Read back the register simply to confirm the write operation
 		 * has completed since I/O writes can sometimes get queued by
 		 * the bus architecture.
 		 */
-		while (readb(ostm->base + OSTM_TE) & TE)
+		while (readb(timer_of_base(to) + OSTM_TE) & TE)
 			;
 	}
 }
 
-static int __init ostm_init_clksrc(struct ostm_device *ostm, unsigned long rate)
+static int __init ostm_init_clksrc(struct timer_of *to)
 {
-	/*
-	 * irq not used (clock sources don't use interrupts)
-	 */
-
-	ostm_timer_stop(ostm);
+	ostm_timer_stop(to);
 
-	writel(0, ostm->base + OSTM_CMP);
-	writeb(CTL_FREERUN, ostm->base + OSTM_CTL);
-	writeb(TS, ostm->base + OSTM_TS);
+	writel(0, timer_of_base(to) + OSTM_CMP);
+	writeb(CTL_FREERUN, timer_of_base(to) + OSTM_CTL);
+	writeb(TS, timer_of_base(to) + OSTM_TS);
 
-	return clocksource_mmio_init(ostm->base + OSTM_CNT,
-			"ostm", rate,
-			300, 32, clocksource_mmio_readl_up);
+	return clocksource_mmio_init(timer_of_base(to) + OSTM_CNT, "ostm",
+				     timer_of_rate(to), 300, 32,
+				     clocksource_mmio_readl_up);
 }
 
 static u64 notrace ostm_read_sched_clock(void)
@@ -89,87 +74,75 @@ static u64 notrace ostm_read_sched_clock(void)
 	return readl(system_clock);
 }
 
-static void __init ostm_init_sched_clock(struct ostm_device *ostm,
-			unsigned long rate)
+static void __init ostm_init_sched_clock(struct timer_of *to)
 {
-	system_clock = ostm->base + OSTM_CNT;
-	sched_clock_register(ostm_read_sched_clock, 32, rate);
+	system_clock = timer_of_base(to) + OSTM_CNT;
+	sched_clock_register(ostm_read_sched_clock, 32, timer_of_rate(to));
 }
 
 static int ostm_clock_event_next(unsigned long delta,
-				     struct clock_event_device *ced)
+				 struct clock_event_device *ced)
 {
-	struct ostm_device *ostm = ced_to_ostm(ced);
+	struct timer_of *to = to_timer_of(ced);
 
-	ostm_timer_stop(ostm);
+	ostm_timer_stop(to);
 
-	writel(delta, ostm->base + OSTM_CMP);
-	writeb(CTL_ONESHOT, ostm->base + OSTM_CTL);
-	writeb(TS, ostm->base + OSTM_TS);
+	writel(delta, timer_of_base(to) + OSTM_CMP);
+	writeb(CTL_ONESHOT, timer_of_base(to) + OSTM_CTL);
+	writeb(TS, timer_of_base(to) + OSTM_TS);
 
 	return 0;
 }
 
 static int ostm_shutdown(struct clock_event_device *ced)
 {
-	struct ostm_device *ostm = ced_to_ostm(ced);
+	struct timer_of *to = to_timer_of(ced);
 
-	ostm_timer_stop(ostm);
+	ostm_timer_stop(to);
 
 	return 0;
 }
 static int ostm_set_periodic(struct clock_event_device *ced)
 {
-	struct ostm_device *ostm = ced_to_ostm(ced);
+	struct timer_of *to = to_timer_of(ced);
 
 	if (clockevent_state_oneshot(ced) || clockevent_state_periodic(ced))
-		ostm_timer_stop(ostm);
+		ostm_timer_stop(to);
 
-	writel(ostm->ticks_per_jiffy - 1, ostm->base + OSTM_CMP);
-	writeb(CTL_PERIODIC, ostm->base + OSTM_CTL);
-	writeb(TS, ostm->base + OSTM_TS);
+	writel(timer_of_period(to) - 1, timer_of_base(to) + OSTM_CMP);
+	writeb(CTL_PERIODIC, timer_of_base(to) + OSTM_CTL);
+	writeb(TS, timer_of_base(to) + OSTM_TS);
 
 	return 0;
 }
 
 static int ostm_set_oneshot(struct clock_event_device *ced)
 {
-	struct ostm_device *ostm = ced_to_ostm(ced);
+	struct timer_of *to = to_timer_of(ced);
 
-	ostm_timer_stop(ostm);
+	ostm_timer_stop(to);
 
 	return 0;
 }
 
 static irqreturn_t ostm_timer_interrupt(int irq, void *dev_id)
 {
-	struct ostm_device *ostm = dev_id;
+	struct clock_event_device *ced = dev_id;
 
-	if (clockevent_state_oneshot(&ostm->ced))
-		ostm_timer_stop(ostm);
+	if (clockevent_state_oneshot(ced))
+		ostm_timer_stop(to_timer_of(ced));
 
 	/* notify clockevent layer */
-	if (ostm->ced.event_handler)
-		ostm->ced.event_handler(&ostm->ced);
+	if (ced->event_handler)
+		ced->event_handler(ced);
 
 	return IRQ_HANDLED;
 }
 
-static int __init ostm_init_clkevt(struct ostm_device *ostm, int irq,
-			unsigned long rate)
+static int __init ostm_init_clkevt(struct timer_of *to)
 {
-	struct clock_event_device *ced = &ostm->ced;
-	int ret = -ENXIO;
-
-	ret = request_irq(irq, ostm_timer_interrupt,
-			  IRQF_TIMER | IRQF_IRQPOLL,
-			  "ostm", ostm);
-	if (ret) {
-		pr_err("ostm: failed to request irq\n");
-		return ret;
-	}
+	struct clock_event_device *ced = &to->clkevt;
 
-	ced->name = "ostm";
 	ced->features = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_PERIODIC;
 	ced->set_state_shutdown = ostm_shutdown;
 	ced->set_state_periodic = ostm_set_periodic;
@@ -178,79 +151,61 @@ static int __init ostm_init_clkevt(struct ostm_device *ostm, int irq,
 	ced->shift = 32;
 	ced->rating = 300;
 	ced->cpumask = cpumask_of(0);
-	clockevents_config_and_register(ced, rate, 0xf, 0xffffffff);
+	clockevents_config_and_register(ced, timer_of_rate(to), 0xf,
+					0xffffffff);
 
 	return 0;
 }
 
 static int __init ostm_init(struct device_node *np)
 {
-	struct ostm_device *ostm;
-	int ret = -EFAULT;
-	struct clk *ostm_clk = NULL;
-	int irq;
-	unsigned long rate;
-
-	ostm = kzalloc(sizeof(*ostm), GFP_KERNEL);
-	if (!ostm)
-		return -ENOMEM;
-
-	ostm->base = of_iomap(np, 0);
-	if (!ostm->base) {
-		pr_err("ostm: failed to remap I/O memory\n");
-		goto err;
-	}
-
-	irq = irq_of_parse_and_map(np, 0);
-	if (irq < 0) {
-		pr_err("ostm: Failed to get irq\n");
-		goto err;
-	}
+	struct timer_of *to;
+	int ret;
 
-	ostm_clk = of_clk_get(np, 0);
-	if (IS_ERR(ostm_clk)) {
-		pr_err("ostm: Failed to get clock\n");
-		ostm_clk = NULL;
-		goto err;
-	}
+	to = kzalloc(sizeof(*to), GFP_KERNEL);
+	if (!to)
+		return -ENOMEM;
 
-	ret = clk_prepare_enable(ostm_clk);
-	if (ret) {
-		pr_err("ostm: Failed to enable clock\n");
-		goto err;
+	to->flags = TIMER_OF_BASE | TIMER_OF_CLOCK;
+	if (system_clock) {
+		/*
+		 * clock sources don't use interrupts, clock events do
+		 */
+		to->flags |= TIMER_OF_IRQ;
+		to->of_irq.flags = IRQF_TIMER | IRQF_IRQPOLL;
+		to->of_irq.handler = ostm_timer_interrupt;
 	}
 
-	rate = clk_get_rate(ostm_clk);
-	ostm->ticks_per_jiffy = DIV_ROUND_CLOSEST(rate, HZ);
+	ret = timer_of_init(np, to);
+	if (ret)
+		goto err_free;
 
 	/*
 	 * First probed device will be used as system clocksource. Any
 	 * additional devices will be used as clock events.
 	 */
 	if (!system_clock) {
-		ret = ostm_init_clksrc(ostm, rate);
-
-		if (!ret) {
-			ostm_init_sched_clock(ostm, rate);
-			pr_info("ostm: used for clocksource\n");
-		}
+		ret = ostm_init_clksrc(to);
+		if (ret)
+			goto err_cleanup;
 
+		ostm_init_sched_clock(to);
+		pr_info("ostm: used for clocksource\n");
 	} else {
-		ret = ostm_init_clkevt(ostm, irq, rate);
+		ret = ostm_init_clkevt(to);
+		if (ret)
+			goto err_cleanup;
 
-		if (!ret)
-			pr_info("ostm: used for clock events\n");
-	}
-
-err:
-	if (ret) {
-		clk_disable_unprepare(ostm_clk);
-		iounmap(ostm->base);
-		kfree(ostm);
-		return ret;
+		pr_info("ostm: used for clock events\n");
 	}
 
 	return 0;
+
+err_cleanup:
+	timer_of_cleanup(to);
+err_free:
+	kfree(to);
+	return ret;
 }
 
 TIMER_OF_DECLARE(ostm, "renesas,ostm", ostm_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
