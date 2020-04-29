Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305101BEA97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SUByDlmd0DgurdXN3fEyeboSq4AhUwBxD0L3B+B6hDc=; b=WP9XK256sd7Lq4
	URx1OGLmWybFGOd5iNQYjsECoI/40EXqzgaM7ptToEEclHukr0DlzH/re6xfJRp3oPAdB1JD9+Yft
	A4tmmCaNeIQhJEOiowo7vz90/JHpsyIuIT6G8KrAkoYu5GH7WkEC8ZlT9p+r4+QgzA5Jl1SfaMir8
	voNI3M4GuGxlFnbvmR4cB5zgKKUiRPmfQZlYYaS99XAGktYF+91Dnw0m90ZfkZ8RtbVXq5OH++fWU
	7nT2DrOCM7vosNgCiBsrCp6c2RFtECwljNS5kZp7SrSg615g4aiR0Cj5wSQRxSAwQ3y1CMm+n1eKL
	aVYRyDT06g3SOBnBdkOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTugP-0005Sr-NS; Wed, 29 Apr 2020 21:55:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuek-0002BG-OT
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:54:17 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 186AE81B1;
 Wed, 29 Apr 2020 21:55:00 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 03/15] clocksource/drivers/timer-ti-dm: Add clockevent and
 clocksource support
Date: Wed, 29 Apr 2020 14:53:50 -0700
Message-Id: <20200429215402.18125-4-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429215402.18125-1-tony@atomide.com>
References: <20200429215402.18125-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145414_914580_DDE49E7D 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Lokesh Vutla <lokeshvutla@ti.com>, Keerthy <j-keerthy@ti.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, Andreas Kemnade <andreas@kemnade.info>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Brian Hutchinson <b.hutchman@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can move the TI dmtimer clockevent and clocksource to live under
drivers/clocksource if we rely only on the clock framework, and handle
the module configuration directly in the clocksource driver based on the
device tree data.

This removes the early dependency with system timers to the interconnect
related code, and we can probe pretty much everything else later on at
the module_init level.

Let's first add a new driver for timer-ti-dm-systimer based on existing
arch/arm/mach-omap2/timer.c. Then let's start moving SoCs to probe with
device tree data while still keeping the old timer.c. And eventually we
can just drop the old timer.c.

Let's take the opportunity to switch to use readl/writel as pointed out
by Daniel Lezcano <daniel.lezcano@linaro.org>. This allows further
clean-up of the timer-ti-dm code the a lot of the shared helpers can
just become static to the non-syster related code.

Note the boards can optionally configure the timer source clock in using
assigned-clock-parents.

Cc: linux-kernel@vger.kernel.org
Cc: linux-omap@vger.kernel.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/clocksource/Makefile               |   1 +
 drivers/clocksource/timer-ti-dm-systimer.c | 511 +++++++++++++++++++++
 2 files changed, 512 insertions(+)
 create mode 100644 drivers/clocksource/timer-ti-dm-systimer.c

diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -18,6 +18,7 @@ obj-$(CONFIG_CLKSRC_MMIO)	+= mmio.o
 obj-$(CONFIG_DAVINCI_TIMER)	+= timer-davinci.o
 obj-$(CONFIG_DIGICOLOR_TIMER)	+= timer-digicolor.o
 obj-$(CONFIG_OMAP_DM_TIMER)	+= timer-ti-dm.o
+obj-$(CONFIG_OMAP_DM_TIMER)	+= timer-ti-dm-systimer.o
 obj-$(CONFIG_DW_APB_TIMER)	+= dw_apb_timer.o
 obj-$(CONFIG_DW_APB_TIMER_OF)	+= dw_apb_timer_of.o
 obj-$(CONFIG_FTTMR010_TIMER)	+= timer-fttmr010.o
diff --git a/drivers/clocksource/timer-ti-dm-systimer.c b/drivers/clocksource/timer-ti-dm-systimer.c
new file mode 100644
--- /dev/null
+++ b/drivers/clocksource/timer-ti-dm-systimer.c
@@ -0,0 +1,511 @@
+// SPDX-License-Identifier: GPL-2.0+
+#include <linux/clk.h>
+#include <linux/clocksource.h>
+#include <linux/clockchips.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/iopoll.h>
+#include <linux/err.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/sched_clock.h>
+
+#include <linux/clk/clk-conf.h>
+
+#include <clocksource/timer-ti-dm.h>
+#include <dt-bindings/bus/ti-sysc.h>
+
+/* For type1, set SYSC_OMAP2_CLOCKACTIVITY for fck off on idle, l4 clock on */
+#define DMTIMER_TYPE1_ENABLE	((1 << 9) | (SYSC_IDLE_SMART << 3) | \
+				 SYSC_OMAP2_ENAWAKEUP | SYSC_OMAP2_AUTOIDLE)
+
+#define DMTIMER_TYPE2_ENABLE	(SYSC_IDLE_SMART_WKUP << 2)
+#define DMTIMER_RESET_WAIT	100000
+
+/*
+ * Subset of the timer registers we use. Note that the register offsets
+ * depend on the timer revision detected.
+ */
+struct dmtimer_systimer {
+	void __iomem *base;
+	u8 sysc;
+	u8 irq_stat;
+	u8 irq_ena;
+	u8 pend;
+	u8 load;
+	u8 counter;
+	u8 ctrl;
+	u8 wakeup;
+	u8 ifctrl;
+	unsigned long rate;
+};
+
+struct dmtimer_clockevent {
+	struct clock_event_device dev;
+	struct dmtimer_systimer t;
+	u32 period;
+};
+
+struct dmtimer_clocksource {
+	struct clocksource dev;
+	struct dmtimer_systimer t;
+	unsigned int loadval;
+};
+
+/* Assumes v1 ip if bits [31:16] are zero */
+static bool dmtimer_systimer_revision1(struct dmtimer_systimer *t)
+{
+	u32 tidr = readl_relaxed(t->base);
+
+	return !(tidr >> 16);
+}
+
+static int __init dmtimer_systimer_type1_reset(struct dmtimer_systimer *t)
+{
+	void __iomem *syss = t->base + OMAP_TIMER_V1_SYS_STAT_OFFSET;
+	int ret;
+	u32 l;
+
+	writel_relaxed(BIT(1) | BIT(2), t->base + t->ifctrl);
+	ret = readl_poll_timeout_atomic(syss, l, l & BIT(0), 100,
+					DMTIMER_RESET_WAIT);
+
+	return ret;
+}
+
+/* Note we must use io_base instead of func_base for type2 OCP regs */
+static int __init dmtimer_systimer_type2_reset(struct dmtimer_systimer *t)
+{
+	void __iomem *sysc = t->base + t->sysc;
+	u32 l;
+
+	l = readl_relaxed(sysc);
+	l |= BIT(0);
+	writel_relaxed(l, sysc);
+
+	return readl_poll_timeout_atomic(sysc, l, !(l & BIT(0)), 100,
+					 DMTIMER_RESET_WAIT);
+}
+
+static int __init dmtimer_systimer_reset(struct dmtimer_systimer *t)
+{
+	int ret;
+
+	if (dmtimer_systimer_revision1(t))
+		ret = dmtimer_systimer_type1_reset(t);
+	else
+		ret = dmtimer_systimer_type2_reset(t);
+	if (ret < 0) {
+		pr_err("%s failed with %i\n", __func__, ret);
+
+		return ret;
+	}
+
+	return 0;
+}
+
+/* Interface clocks are only available on some SoCs variants */
+static int __init dmtimer_systimer_init_clock(struct device_node *np,
+					      const char *name,
+					      unsigned long *rate)
+{
+	struct clk *clock;
+	unsigned long r;
+	int error;
+
+	clock = of_clk_get_by_name(np, name);
+	if ((PTR_ERR(clock) == -EINVAL) && !strncmp(name, "ick", 3))
+		return 0;
+	else if (IS_ERR(clock))
+		return PTR_ERR(clock);
+
+	error = clk_prepare_enable(clock);
+	if (error)
+		return error;
+
+	r = clk_get_rate(clock);
+	if (!r)
+		return -ENODEV;
+
+	*rate = r;
+
+	return 0;
+}
+
+static void dmtimer_systimer_enable(struct dmtimer_systimer *t)
+{
+	u32 val;
+
+	if (dmtimer_systimer_revision1(t))
+		val = DMTIMER_TYPE1_ENABLE;
+	else
+		val = DMTIMER_TYPE2_ENABLE;
+
+	writel_relaxed(val, t->base + t->sysc);
+}
+
+static void dmtimer_systimer_disable(struct dmtimer_systimer *t)
+{
+	writel_relaxed(0, t->base + t->sysc);
+}
+
+static int __init dmtimer_systimer_setup(struct device_node *np,
+					 struct dmtimer_systimer *t)
+{
+	unsigned long rate;
+	u8 regbase;
+	int error;
+
+	if (!of_device_is_compatible(np->parent, "ti,sysc"))
+		return -EINVAL;
+
+	t->base = of_iomap(np, 0);
+	if (!t->base)
+		return -ENXIO;
+
+	/*
+	 * Enable optional assigned-clock-parents configured at the timer
+	 * node level. For regular device drivers, this is done automatically
+	 * by bus related code such as platform_drv_probe().
+	 */
+	error = of_clk_set_defaults(np, false);
+	if (error < 0)
+		pr_err("%s: clock source init failed: %i\n", __func__, error);
+
+	/* For ti-sysc, we have timer clocks at the parent module level */
+	error = dmtimer_systimer_init_clock(np->parent, "fck", &rate);
+	if (error)
+		goto err_unmap;
+
+	t->rate = rate;
+
+	error = dmtimer_systimer_init_clock(np->parent, "ick", &rate);
+	if (error)
+		goto err_unmap;
+
+	if (dmtimer_systimer_revision1(t)) {
+		t->irq_stat = OMAP_TIMER_V1_STAT_OFFSET;
+		t->irq_ena = OMAP_TIMER_V1_INT_EN_OFFSET;
+		t->pend = _OMAP_TIMER_WRITE_PEND_OFFSET;
+		regbase = 0;
+	} else {
+		t->irq_stat = OMAP_TIMER_V2_IRQSTATUS;
+		t->irq_ena = OMAP_TIMER_V2_IRQENABLE_SET;
+		regbase = OMAP_TIMER_V2_FUNC_OFFSET;
+		t->pend = regbase + _OMAP_TIMER_WRITE_PEND_OFFSET;
+	}
+
+	t->sysc = OMAP_TIMER_OCP_CFG_OFFSET;
+	t->load = regbase + _OMAP_TIMER_LOAD_OFFSET;
+	t->counter = regbase + _OMAP_TIMER_COUNTER_OFFSET;
+	t->ctrl = regbase + _OMAP_TIMER_CTRL_OFFSET;
+	t->wakeup = regbase + _OMAP_TIMER_WAKEUP_EN_OFFSET;
+	t->ifctrl = regbase + _OMAP_TIMER_IF_CTRL_OFFSET;
+
+	dmtimer_systimer_enable(t);
+	dmtimer_systimer_reset(t);
+	pr_debug("dmtimer rev %08x sysc %08x\n", readl_relaxed(t->base),
+		 readl_relaxed(t->base + t->sysc));
+
+	return 0;
+
+err_unmap:
+	iounmap(t->base);
+
+	return error;
+}
+
+/* Clockevent */
+static struct dmtimer_clockevent *
+to_dmtimer_clockevent(struct clock_event_device *clockevent)
+{
+	return container_of(clockevent, struct dmtimer_clockevent, dev);
+}
+
+static irqreturn_t dmtimer_clockevent_interrupt(int irq, void *data)
+{
+	struct dmtimer_clockevent *clkevt = data;
+	struct dmtimer_systimer *t = &clkevt->t;
+
+	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->irq_stat);
+	clkevt->dev.event_handler(&clkevt->dev);
+
+	return IRQ_HANDLED;
+}
+
+static int dmtimer_set_next_event(unsigned long cycles,
+				  struct clock_event_device *evt)
+{
+	struct dmtimer_clockevent *clkevt = to_dmtimer_clockevent(evt);
+	struct dmtimer_systimer *t = &clkevt->t;
+	void __iomem *pend = t->base + t->pend;
+
+	writel_relaxed(0xffffffff - cycles, t->base + t->counter);
+	while (readl_relaxed(pend) & WP_TCRR)
+		cpu_relax();
+
+	writel_relaxed(OMAP_TIMER_CTRL_ST, t->base + t->ctrl);
+	while (readl_relaxed(pend) & WP_TCLR)
+		cpu_relax();
+
+	return 0;
+}
+
+static int dmtimer_clockevent_shutdown(struct clock_event_device *evt)
+{
+	struct dmtimer_clockevent *clkevt = to_dmtimer_clockevent(evt);
+	struct dmtimer_systimer *t = &clkevt->t;
+	void __iomem *ctrl = t->base + t->ctrl;
+	u32 l;
+
+	l = readl_relaxed(ctrl);
+	if (l & OMAP_TIMER_CTRL_ST) {
+		l &= ~BIT(0);
+		writel_relaxed(l, ctrl);
+		/* Flush posted write */
+		l = readl_relaxed(ctrl);
+		/*  Wait for functional clock period x 3.5 */
+		udelay(3500000 / t->rate + 1);
+	}
+	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->irq_stat);
+
+	return 0;
+}
+
+static int dmtimer_set_periodic(struct clock_event_device *evt)
+{
+	struct dmtimer_clockevent *clkevt = to_dmtimer_clockevent(evt);
+	struct dmtimer_systimer *t = &clkevt->t;
+	void __iomem *pend = t->base + t->pend;
+
+	dmtimer_clockevent_shutdown(evt);
+
+	/* Looks like we need to first set the load value separately */
+	writel_relaxed(clkevt->period, t->base + t->load);
+	while (readl_relaxed(pend) & WP_TLDR)
+		cpu_relax();
+
+	writel_relaxed(clkevt->period, t->base + t->counter);
+	while (readl_relaxed(pend) & WP_TCRR)
+		cpu_relax();
+
+	writel_relaxed(OMAP_TIMER_CTRL_AR | OMAP_TIMER_CTRL_ST,
+		       t->base + t->ctrl);
+	while (readl_relaxed(pend) & WP_TCLR)
+		cpu_relax();
+
+	return 0;
+}
+
+static void omap_clockevent_idle(struct clock_event_device *evt)
+{
+	struct dmtimer_clockevent *clkevt = to_dmtimer_clockevent(evt);
+	struct dmtimer_systimer *t = &clkevt->t;
+
+	dmtimer_systimer_disable(t);
+}
+
+static void omap_clockevent_unidle(struct clock_event_device *evt)
+{
+	struct dmtimer_clockevent *clkevt = to_dmtimer_clockevent(evt);
+	struct dmtimer_systimer *t = &clkevt->t;
+
+	dmtimer_systimer_enable(t);
+	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->irq_ena);
+	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->wakeup);
+}
+
+static int __init dmtimer_clockevent_init(struct device_node *np)
+{
+	struct dmtimer_clockevent *clkevt;
+	struct clock_event_device *dev;
+	struct dmtimer_systimer *t;
+	int error;
+	u32 pa;
+
+	clkevt = kzalloc(sizeof(*clkevt), GFP_KERNEL);
+	if (!clkevt)
+		return -ENOMEM;
+
+	t = &clkevt->t;
+	dev = &clkevt->dev;
+
+	/*
+	 * We mostly use cpuidle_coupled with ARM local timers for runtime,
+	 * so there's probably no use for CLOCK_EVT_FEAT_DYNIRQ here.
+	 */
+	dev->features = CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
+	dev->rating = 300;
+	dev->set_next_event = dmtimer_set_next_event;
+	dev->set_state_shutdown = dmtimer_clockevent_shutdown;
+	dev->set_state_periodic = dmtimer_set_periodic;
+	dev->set_state_oneshot = dmtimer_clockevent_shutdown;
+	dev->tick_resume = dmtimer_clockevent_shutdown;
+	dev->cpumask = cpu_possible_mask;
+
+	dev->irq = irq_of_parse_and_map(np, 0);
+	if (!dev->irq) {
+		error = -ENXIO;
+		goto err_out_free;
+	}
+
+	error = dmtimer_systimer_setup(np, &clkevt->t);
+	if (error)
+		goto err_out_free;
+
+	clkevt->period = 0xffffffff - DIV_ROUND_CLOSEST(t->rate, HZ);
+
+	/*
+	 * For clock-event timers we never read the timer counter and
+	 * so we are not impacted by errata i103 and i767. Therefore,
+	 * we can safely ignore this errata for clock-event timers.
+	 */
+	writel_relaxed(OMAP_TIMER_CTRL_POSTED, t->base + t->ifctrl);
+
+	error = request_irq(dev->irq, dmtimer_clockevent_interrupt,
+			    IRQF_TIMER, "clockevent", clkevt);
+	if (error)
+		goto err_out_unmap;
+
+	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->irq_ena);
+	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->wakeup);
+
+	pa = of_translate_address(np, of_get_address(np, 0, NULL, NULL));
+	pr_info("TI gptimer clockevent: %s%lu Hz at %pOF\n",
+		of_find_property(np, "ti,timer-alwon", NULL) ?
+		"always-on " : "", t->rate, np->parent);
+
+	clockevents_config_and_register(dev, t->rate,
+					3, /* Timer internal resynch latency */
+					0xffffffff);
+
+	if (of_device_is_compatible(np, "ti,am33xx") ||
+	    of_device_is_compatible(np, "ti,am43")) {
+		dev->suspend = omap_clockevent_idle;
+		dev->resume = omap_clockevent_unidle;
+	}
+
+	return 0;
+
+err_out_unmap:
+	iounmap(t->base);
+
+err_out_free:
+	kfree(clkevt);
+
+	return error;
+}
+
+/* Clocksource */
+static struct dmtimer_clocksource *
+to_dmtimer_clocksource(struct clocksource *cs)
+{
+	return container_of(cs, struct dmtimer_clocksource, dev);
+}
+
+static u64 dmtimer_clocksource_read_cycles(struct clocksource *cs)
+{
+	struct dmtimer_clocksource *clksrc = to_dmtimer_clocksource(cs);
+	struct dmtimer_systimer *t = &clksrc->t;
+
+	return (u64)readl_relaxed(t->base + t->counter);
+}
+
+static void __iomem *dmtimer_sched_clock_counter;
+
+static u64 notrace dmtimer_read_sched_clock(void)
+{
+	return readl_relaxed(dmtimer_sched_clock_counter);
+}
+
+static void dmtimer_clocksource_suspend(struct clocksource *cs)
+{
+	struct dmtimer_clocksource *clksrc = to_dmtimer_clocksource(cs);
+	struct dmtimer_systimer *t = &clksrc->t;
+
+	clksrc->loadval = readl_relaxed(t->base + t->counter);
+	dmtimer_systimer_disable(t);
+}
+
+static void dmtimer_clocksource_resume(struct clocksource *cs)
+{
+	struct dmtimer_clocksource *clksrc = to_dmtimer_clocksource(cs);
+	struct dmtimer_systimer *t = &clksrc->t;
+
+	dmtimer_systimer_enable(t);
+	writel_relaxed(clksrc->loadval, t->base + t->counter);
+	writel_relaxed(OMAP_TIMER_CTRL_ST | OMAP_TIMER_CTRL_AR,
+		       t->base + t->ctrl);
+}
+
+static int __init dmtimer_clocksource_init(struct device_node *np)
+{
+	struct dmtimer_clocksource *clksrc;
+	struct dmtimer_systimer *t;
+	struct clocksource *dev;
+	int error;
+	u32 pa;
+
+	clksrc = kzalloc(sizeof(*clksrc), GFP_KERNEL);
+	if (!clksrc)
+		return -ENOMEM;
+
+	dev = &clksrc->dev;
+	t = &clksrc->t;
+
+	error = dmtimer_systimer_setup(np, t);
+	if (error)
+		goto err_out_free;
+
+	dev->name = "dmtimer";
+	dev->rating = 300;
+	dev->read = dmtimer_clocksource_read_cycles;
+	dev->mask = CLOCKSOURCE_MASK(32);
+	dev->flags = CLOCK_SOURCE_IS_CONTINUOUS;
+
+	if (of_device_is_compatible(np, "ti,am33xx") ||
+	    of_device_is_compatible(np, "ti,am43")) {
+		dev->suspend = dmtimer_clocksource_suspend;
+		dev->resume = dmtimer_clocksource_resume;
+	}
+
+	writel_relaxed(0, t->base + t->counter);
+	writel_relaxed(OMAP_TIMER_CTRL_ST | OMAP_TIMER_CTRL_AR,
+		       t->base + t->ctrl);
+
+	pa = of_translate_address(np, of_get_address(np, 0, NULL, NULL));
+	pr_info("TI gptimer clocksource: %s%pOF\n",
+		of_find_property(np, "ti,timer-alwon", NULL) ?
+		"always-on " : "", np->parent);
+
+	if (!dmtimer_sched_clock_counter) {
+		dmtimer_sched_clock_counter = t->base + t->counter;
+		sched_clock_register(dmtimer_read_sched_clock, 32, t->rate);
+	}
+
+	if (clocksource_register_hz(dev, t->rate))
+		pr_err("Could not register clocksource %pOF\n", np);
+
+	return 0;
+
+err_out_free:
+	kfree(clksrc);
+
+	return -ENODEV;
+}
+
+/*
+ * To detect between a clocksource and clockevent, we assume the device tree
+ * has no interrupts configured for a clocksource timer.
+ */
+static int __init dmtimer_systimer_init(struct device_node *np)
+{
+	if (of_get_property(np, "interrupts", NULL) ||
+	    of_get_property(np, "interrupts-extended", NULL))
+		return dmtimer_clockevent_init(np);
+	else
+		return dmtimer_clocksource_init(np);
+}
+
+TIMER_OF_DECLARE(dmtimer_systimer, "ti,dmtimer", dmtimer_systimer_init);
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
