Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDEC1C976B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 19:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i34R7TNd22lK6cHq7P+pNYRdUTCoOhY2MqiBNk5SP8=; b=mZAlYWArgjQr+G
	T7qJNMOqbkrfTEeS5+d0Lw+H965i4eJ0ldHObKIPqDRKTkVi/R9b6Rx2D+HFgOImjsDFO9MScwl+z
	MMSzePw5Ze5/uxXhGXwa+56rxoJIcyDy+WyQZ5fQBo+5eXTqZYUtpm2TONFQgE+Ksh8WcEoW1aCXZ
	rqTvizYxonJzb77Gfx32evwPzSWQYHhR9F1CF/j2BV9NGE/nk4eYGbBUF+syt+lAj/fIpicWislEu
	moS4dggUEV4G4m4tD9lDOJRUAQrPXsO4WlcBlpU+2z17Sm22bNs5Nyv3jPsoirzldyFSq1wxdkdBS
	08RwwlVvTwWI5SHDx4AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkGA-0002iB-Ub; Thu, 07 May 2020 17:24:34 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkFN-00026U-4I
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 17:23:47 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3BDB5817C;
 Thu,  7 May 2020 17:24:32 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 02/14] clocksource/drivers/timer-ti-dm: Add clockevent and
 clocksource support
Date: Thu,  7 May 2020 10:23:18 -0700
Message-Id: <20200507172330.18679-3-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507172330.18679-1-tony@atomide.com>
References: <20200507172330.18679-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_102345_255556_7784DA1E 
X-CRM114-Status: GOOD (  25.82  )
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Lokesh Vutla <lokeshvutla@ti.com>,
 Keerthy <j-keerthy@ti.com>, Michael Turquette <mturquette@baylibre.com>,
 Graeme Smecher <gsmecher@threespeedlogic.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Andreas Kemnade <andreas@kemnade.info>,
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

Note the boards can optionally configure different timer source clocks
if needed with assigned-clocks and assigned-clock-parents.

Cc: linux-kernel@vger.kernel.org
Cc: linux-omap@vger.kernel.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Tero Kristo <t-kristo@ti.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/clocksource/Makefile               |   1 +
 drivers/clocksource/timer-ti-dm-systimer.c | 731 +++++++++++++++++++++
 2 files changed, 732 insertions(+)
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
@@ -0,0 +1,731 @@
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
+#define DMTIMER_INST_DONT_CARE	~0U
+
+static int counter_32k;
+static u32 clocksource;
+static u32 clockevent;
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
+static const struct of_device_id counter_match_table[] = {
+	{ .compatible = "ti,omap-counter32k" },
+	{ /* Sentinel */ },
+};
+
+/*
+ * Check if the SoC als has a usable working 32 KiHz counter. The 32 KiHz
+ * counter is handled by timer-ti-32k, but we need to detect it as it
+ * affects the preferred dmtimer system timer configuration. There is
+ * typically no use for a dmtimer clocksource if the 32 KiHz counter is
+ * present, except on am437x as described below.
+ */
+static void __init dmtimer_systimer_check_counter32k(void)
+{
+	struct device_node *np;
+
+	if (counter_32k)
+		return;
+
+	np = of_find_matching_node(NULL, counter_match_table);
+	if (!np) {
+		counter_32k = -ENODEV;
+
+		return;
+	}
+
+	if (of_device_is_available(np))
+		counter_32k = 1;
+	else
+		counter_32k = -ENODEV;
+
+	of_node_put(np);
+}
+
+static const struct of_device_id dmtimer_match_table[] = {
+	{ .compatible = "ti,omap2420-timer", },
+	{ .compatible = "ti,omap3430-timer", },
+	{ .compatible = "ti,omap4430-timer", },
+	{ .compatible = "ti,omap5430-timer", },
+	{ .compatible = "ti,am335x-timer", },
+	{ .compatible = "ti,am335x-timer-1ms", },
+	{ .compatible = "ti,dm814-timer", },
+	{ .compatible = "ti,dm816-timer", },
+	{ /* Sentinel */ },
+};
+
+/*
+ * Checks that system timers are configured to not reset and idle during
+ * the generic timer-ti-dm device driver probe. And that the system timer
+ * source clocks are properly configured. Also, let's not hog any DSP and
+ * PWM capable timers unnecessarily as system timers.
+ */
+static bool __init dmtimer_is_preferred(struct device_node *np)
+{
+	if (!of_device_is_available(np))
+		return false;
+
+	if (!of_property_read_bool(np->parent,
+				   "ti,no-reset-on-init"))
+		return false;
+
+	if (!of_property_read_bool(np->parent, "ti,no-idle"))
+		return false;
+
+	/* Secure gptimer12 is always clocked with a fixed source */
+	if (!of_property_read_bool(np, "ti,timer-secure")) {
+		if (!of_property_read_bool(np, "assigned-clocks"))
+			return false;
+
+		if (!of_property_read_bool(np, "assigned-clock-parents"))
+			return false;
+	}
+
+	if (of_property_read_bool(np, "ti,timer-dsp"))
+		return false;
+
+	if (of_property_read_bool(np, "ti,timer-pwm"))
+		return false;
+
+	return true;
+}
+
+/*
+ * Finds the first available usable always-on timer, and assigns it to either
+ * clockevent or clocksource depending if the counter_32k is available on the
+ * SoC or not.
+ *
+ * Some omap3 boards with unreliable oscillator must not use the counter_32k
+ * or dmtimer1 with 32 KiHz source. Additionally, the boards with unreliable
+ * oscillator should really set counter_32k as disabled, and delete dmtimer1
+ * ti,always-on property, but let's not count on it. For these quirky cases,
+ * we prefer using the always-on secure dmtimer12 with the internal 32 KiHz
+ * clock as the clocksource, and any available dmtimer as clockevent.
+ *
+ * For am437x, we are using am335x style dmtimer clocksource. It is unclear
+ * if this quirk handling is really needed, but let's change it separately
+ * based on testing as it might cause side effects.
+ */
+static void __init dmtimer_systimer_assign_alwon(void)
+{
+	struct device_node *np;
+	u32 pa = 0;
+	bool quirk_unreliable_oscillator = false;
+
+	/* Quirk unreliable 32 KiHz oscillator with incomplete dts */
+	if (of_machine_is_compatible("ti,omap3-beagle") ||
+	    of_machine_is_compatible("timll,omap3-devkit8000")) {
+		quirk_unreliable_oscillator = true;
+		counter_32k = -ENODEV;
+	}
+
+	/* Quirk am437x using am335x style dmtimer clocksource */
+	if (of_machine_is_compatible("ti,am43"))
+		counter_32k = -ENODEV;
+
+	for_each_matching_node(np, dmtimer_match_table) {
+		if (!dmtimer_is_preferred(np))
+			continue;
+
+		if (of_property_read_bool(np, "ti,timer-alwon")) {
+			const __be32 *addr;
+
+			addr = of_get_address(np, 0, NULL, NULL);
+			pa = of_translate_address(np, addr);
+			if (pa) {
+				/* Quirky omap3 boards must use dmtimer12 */
+				if (quirk_unreliable_oscillator &&
+				    pa == 0x48318000)
+					continue;
+
+				of_node_put(np);
+				break;
+			}
+		}
+	}
+
+	/* Usually no need for dmtimer clocksource if we have counter32 */
+	if (counter_32k >= 0) {
+		clockevent = pa;
+		clocksource = 0;
+	} else {
+		clocksource = pa;
+		clockevent = DMTIMER_INST_DONT_CARE;
+	}
+}
+
+/* Finds the first usable dmtimer, used for the don't care case */
+static u32 __init dmtimer_systimer_find_first_available(void)
+{
+	struct device_node *np;
+	const __be32 *addr;
+	u32 pa = 0;
+
+	for_each_matching_node(np, dmtimer_match_table) {
+		if (!dmtimer_is_preferred(np))
+			continue;
+
+		addr = of_get_address(np, 0, NULL, NULL);
+		pa = of_translate_address(np, addr);
+		if (pa) {
+			if (pa == clocksource || pa == clockevent) {
+				pa = 0;
+				continue;
+			}
+
+			of_node_put(np);
+			break;
+		}
+	}
+
+	return pa;
+}
+
+/* Selects the best clocksource and clockevent to use */
+static void __init dmtimer_systimer_select_best(void)
+{
+	dmtimer_systimer_check_counter32k();
+	dmtimer_systimer_assign_alwon();
+
+	if (clockevent == DMTIMER_INST_DONT_CARE)
+		clockevent = dmtimer_systimer_find_first_available();
+
+	pr_debug("%s: counter_32k: %i clocksource: %08x clockevent: %08x\n",
+		 __func__, counter_32k, clocksource, clockevent);
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
+	const __be32 *addr;
+	u32 pa;
+
+	/* One time init for the preferred timer configuration */
+	if (!clocksource && !clockevent)
+		dmtimer_systimer_select_best();
+
+	if (!clocksource && !clockevent) {
+		pr_err("%s: unable to detectt system timers, update dtb?\n",
+		       __func__);
+
+		return -EINVAL;
+	}
+
+	addr = of_get_address(np, 0, NULL, NULL);
+	pa = of_translate_address(np, addr);
+	if (!pa)
+		return -EINVAL;
+
+	if (counter_32k <= 0 && clocksource == pa)
+		return dmtimer_clocksource_init(np);
+
+	if (clockevent == pa)
+		return dmtimer_clockevent_init(np);
+
+	return 0;
+}
+
+TIMER_OF_DECLARE(systimer_omap2, "ti,omap2420-timer", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_omap3, "ti,omap3430-timer", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_omap4, "ti,omap4430-timer", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_omap5, "ti,omap5430-timer", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_am33x, "ti,am335x-timer", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_am3ms, "ti,am335x-timer-1ms", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_dm814, "ti,dm814-timer", dmtimer_systimer_init);
+TIMER_OF_DECLARE(systimer_dm816, "ti,dm816-timer", dmtimer_systimer_init);
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
