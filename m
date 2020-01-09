Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA40D135BD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 15:54:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3p4EZ33HvfjGZ//NQ9aAPtZ8TQyQF39WDwsg7rPa5Ic=; b=EfPN7mTyJHaGp7
	XP9HjgCL9Rd6bH1D/UcpzkTvQ2g2x3UYwYBCirT/ltJliFEjLIG/PnAdB40XIkm+EL/LYy8THSMtg
	P2dqliZcIUlEL3QiPHrZeo6Mbd7fIqpW4Glo6VNw8AqUO/2OHrU+Fqn77PljpQVUVvRtK/GtkINux
	Mh8AhW19oynDnEMInmAlyG7PalDWnB9cofBXHhLyUHa/Gzhdti/+UPE/3wcYjsZON+rVe8KnCb+A4
	xh1+owdE9uNbDkyJIY1v+qBU+GnwwI0uUIghO3ZCgXP30g57JfK2kBAU1Ur5SxaaJEZJvvdDJI93Z
	xJHMUihCV7yLevoduFTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZCw-0004a2-Gg; Thu, 09 Jan 2020 14:54:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZCE-0004Ba-75
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 14:54:05 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 009Er6un021449; Thu, 9 Jan 2020 15:53:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=e5HUUvQ+j4U40eDjB2EmsDMBIsofEgAI2HA5sjuLNts=;
 b=WK2b4RyLDaulr/d6vTR27ys8UiAnbELZEs2Ri1+QuHe2719TMEcGvJMxabaiq+beuGiF
 o9j4Jt0C0qdgAkzXflZgs3ZGFmy86ARknmER7JgjeygrmhAQkGBCr8XubJhh2gMAQEdB
 zC5/AH9MfOKvIdKalBchHGyol0nu1it1Fyctg4eCviuXtxfPgW1/As1rOSL3YpSStjy/
 Y2tk3J55gz7CWV/H9ttybgUNEIQQGEohc0lHQSvXkFuX18vcJeVWDuilCVlKYUMynDkQ
 z7aCIcmwwgLT1WjEJ9DL/Lsj6FUjMxu9d98LpCEjBzT6w9V+C5t42Xod/0kPYxWOt3eW 2Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2xdw8b3117-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 09 Jan 2020 15:53:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 71C5E100039;
 Thu,  9 Jan 2020 15:53:40 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 635462BD410;
 Thu,  9 Jan 2020 15:53:40 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan 2020 15:53:39
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <linux@armlinux.org.uk>, <p.paillet@st.com>
Subject: [PATCH 2/3] clocksource: Add Low Power STM32 timers driver
Date: Thu, 9 Jan 2020 15:53:32 +0100
Message-ID: <20200109145333.12260-3-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200109145333.12260-1-benjamin.gaignard@st.com>
References: <20200109145333.12260-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-09_02:2020-01-09,
 2020-01-09 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_065402_692806_A60350D3 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement clock event driver using low power STM32 timers.
Low power timers counter s running even in when CPU is in stop mode.
It could be used as clock event broadcaster to wake up CPUs but not like
a clocksource because each it rise an interrupt the counter restart from 0.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
Signed-off-by: Pascal Paillet <p.paillet@st.com>
---
 drivers/clocksource/Kconfig          |   5 +
 drivers/clocksource/Makefile         |   1 +
 drivers/clocksource/timer-stm32-lp.c | 186 +++++++++++++++++++++++++++++++++++
 3 files changed, 192 insertions(+)
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 5fdd76cb1768..b96c13626fcc 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -292,6 +292,11 @@ config CLKSRC_STM32
 	select CLKSRC_MMIO
 	select TIMER_OF
 
+config CLKSRC_STM32_LP
+	bool "Low power clocksource for STM32 SoCs"
+	depends on OF && ARM && (MACH_STM32MP157 || COMPILE_TEST)
+	select TIMER_OF
+
 config CLKSRC_MPS2
 	bool "Clocksource for MPS2 SoCs" if COMPILE_TEST
 	depends on GENERIC_SCHED_CLOCK
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 4dfe4225ece7..c6eef37be9cc 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_BCM_KONA_TIMER)	+= bcm_kona_timer.o
 obj-$(CONFIG_CADENCE_TTC_TIMER)	+= timer-cadence-ttc.o
 obj-$(CONFIG_CLKSRC_EFM32)	+= timer-efm32.o
 obj-$(CONFIG_CLKSRC_STM32)	+= timer-stm32.o
+obj-$(CONFIG_CLKSRC_STM32_LP)	+= timer-stm32-lp.o
 obj-$(CONFIG_CLKSRC_EXYNOS_MCT)	+= exynos_mct.o
 obj-$(CONFIG_CLKSRC_LPC32XX)	+= timer-lpc32xx.o
 obj-$(CONFIG_CLKSRC_MPS2)	+= mps2-timer.o
diff --git a/drivers/clocksource/timer-stm32-lp.c b/drivers/clocksource/timer-stm32-lp.c
new file mode 100644
index 000000000000..a58038157272
--- /dev/null
+++ b/drivers/clocksource/timer-stm32-lp.c
@@ -0,0 +1,186 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) STMicroelectronics 2019 - All Rights Reserved
+ * Authors: Benjamin Gaignard <benjamin.gaignard@st.com> for STMicroelectronics.
+ *	    Pascal Paillet <p.paillet@st.com> for STMicroelectronics.
+ */
+
+#include <linux/clk.h>
+#include <linux/clocksource.h>
+#include <linux/clockchips.h>
+#include <linux/delay.h>
+#include <linux/irq.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/slab.h>
+
+#include "timer-of.h"
+
+#define LPTIM_ICR		0x04
+#define ICR_ARRMCF		BIT(1)
+
+#define LPTIM_IER		0x08
+#define IER_ARRMIE		BIT(1)
+
+#define LPTIM_CFGR		0x0C
+#define CFGR_PSC_OFFSET		9
+
+#define LPTIM_CR		0x10
+#define CR_ENABLE		BIT(0)
+#define CR_SNGSTRT		BIT(1)
+#define CR_CNTSTRT		BIT(2)
+
+#define LPTIM_CMP		0x14
+#define LPTIM_ARR		0x18
+
+#define STM32_LP_BITS		16
+#define STM32_LP_RATING		400
+#define STM32_CLKRATE		(32000 * HZ)
+#define TIMER_MAX_VAL		(BIT(STM32_LP_BITS) - 1)
+#define STM32_LP_MAX_PSC	7
+
+static int stm32_lp_clock_event_shutdown(struct clock_event_device *clkevt)
+{
+	struct timer_of *to = to_timer_of(clkevt);
+
+	writel_relaxed(0, timer_of_base(to) + LPTIM_CR);
+	writel_relaxed(0, timer_of_base(to) + LPTIM_IER);
+	/* clear pending flags */
+	writel_relaxed(ICR_ARRMCF, timer_of_base(to) + LPTIM_ICR);
+
+	return 0;
+}
+
+static int stm32_lp_set_timer(unsigned long evt,
+			       struct clock_event_device *clkevt,
+			       int is_periodic)
+{
+	struct timer_of *to = to_timer_of(clkevt);
+
+	/* disable TIMER */
+	writel_relaxed(0, timer_of_base(to) + LPTIM_CR);
+	/* reset counters */
+	writel_relaxed(0, timer_of_base(to) + LPTIM_CMP);
+	writel_relaxed(0, timer_of_base(to) + LPTIM_ARR);
+	/* enable ARR interrupt */
+	writel_relaxed(IER_ARRMIE, timer_of_base(to) + LPTIM_IER);
+	/* enable LPTIMER*/
+	writel_relaxed(CR_ENABLE, timer_of_base(to) + LPTIM_CR);
+
+	/* set nex event counter */
+	writel_relaxed(evt, timer_of_base(to) + LPTIM_ARR);
+
+	/* start counter */
+	if (is_periodic)
+		writel_relaxed(CR_CNTSTRT | CR_ENABLE, timer_of_base(to) +
+			       LPTIM_CR);
+	else
+		writel_relaxed(CR_SNGSTRT | CR_ENABLE, timer_of_base(to) +
+			       LPTIM_CR);
+
+	return 0;
+}
+
+static int stm32_lp_set_next_event(unsigned long evt,
+				   struct clock_event_device *clkevt)
+{
+	return stm32_lp_set_timer(evt, clkevt,
+				  clockevent_state_periodic(clkevt));
+}
+
+static int stm32_lp_clock_event_set_periodic(struct clock_event_device *clkevt)
+{
+	struct timer_of *to = to_timer_of(clkevt);
+
+	return stm32_lp_set_timer(timer_of_period(to), clkevt, true);
+}
+
+static int stm32_lp_clock_event_set_oneshot(struct clock_event_device *clkevt)
+{
+	struct timer_of *to = to_timer_of(clkevt);
+
+	return stm32_lp_set_timer(timer_of_period(to), clkevt, false);
+}
+
+static irqreturn_t stm32_lp_clock_event_handler(int irq, void *dev_id)
+{
+	struct clock_event_device *clkevt = (struct clock_event_device *)dev_id;
+	struct timer_of *to = to_timer_of(clkevt);
+
+	writel_relaxed(ICR_ARRMCF, timer_of_base(to) + LPTIM_ICR);
+
+	clkevt->event_handler(clkevt);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * stm32_lptimer_set_prescaler - Compute and set the prescaler register
+ * @to: a pointer to a timer-of structure
+ *
+ * Compute the prescaler to always target a 32Khz timer rate
+ */
+static void __init stm32_lptimer_set_prescaler(struct timer_of *to)
+{
+	int i;
+
+	for (i = 0; i <= STM32_LP_MAX_PSC; i++) {
+		if (DIV_ROUND_CLOSEST(to->of_clk.rate, 1 << i) < STM32_CLKRATE)
+			break;
+	}
+
+	writel_relaxed(i << CFGR_PSC_OFFSET, timer_of_base(to) + LPTIM_CFGR);
+
+	/* Adjust rate and period given the prescaler value */
+	to->of_clk.rate = DIV_ROUND_CLOSEST(to->of_clk.rate, (1 << i));
+	to->of_clk.period = DIV_ROUND_UP(to->of_clk.rate, HZ);
+}
+
+static void __init stm32_lp_clockevent_init(struct timer_of *to)
+{
+	to->clkevt.name = to->np->full_name;
+	to->clkevt.cpumask = cpumask_of(smp_processor_id());
+	to->clkevt.features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
+	to->clkevt.set_state_shutdown = stm32_lp_clock_event_shutdown;
+	to->clkevt.set_state_periodic = stm32_lp_clock_event_set_periodic;
+	to->clkevt.set_state_oneshot = stm32_lp_clock_event_set_oneshot;
+	to->clkevt.set_next_event = stm32_lp_set_next_event;
+	to->clkevt.rating = STM32_LP_RATING;
+
+	clockevents_config_and_register(&to->clkevt, timer_of_rate(to), 0x1,
+					TIMER_MAX_VAL);
+
+	pr_info("%pOF: STM32 low power clockevent driver initialized\n",
+		to->np);
+}
+
+static int __init stm32_lptimer_init(struct device_node *node)
+{
+	struct timer_of *to;
+	int ret;
+
+	to = kzalloc(sizeof(*to), GFP_KERNEL);
+	if (!to)
+		return -ENOMEM;
+
+	to->flags = TIMER_OF_IRQ | TIMER_OF_CLOCK | TIMER_OF_BASE;
+	to->of_irq.handler = stm32_lp_clock_event_handler;
+
+	ret = timer_of_init(node, to);
+	if (ret) {
+		kfree(to);
+		return ret;
+	}
+
+	stm32_lptimer_set_prescaler(to);
+
+	stm32_lp_clockevent_init(to);
+
+	return 0;
+}
+
+TIMER_OF_DECLARE(stm32_lp, "st,stm32-lptimer-clkevent", stm32_lptimer_init);
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
