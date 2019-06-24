Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9C450626
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 11:51:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbXeVP7oS1Db93lIxgo5+c0eITbPrd+4t3KERwnY4ws=; b=PXzq6Km7NfAe8R
	FXPu/z4CzO/z0IPy01feiA8JdeEivaBqGfnPYHrZRu8AWSP2bi/xn6yuqgvyPx4exAo6ctI3IUVp4
	Ly8NVZFREynMFltufcP+xcAa/0KpdSk7yvVVWL0+giGoLvXC2eGQZCoXGoVZ04xc0XeA2BecbhBzn
	fUUmNM5PDi8JJooQA6WIObEm3TRaPRFSrD2m/cytmyJPpt+XhKh0xNfvrS7adEKwhMFvRk+6I/8Iw
	W+llzW4mh/dXcZhvzTqV16+dSLrav44Xu+v0ZO3EBFD9uqvSXDyHSpvCSPIFD2jq8QCRYr3NGQFU3
	9RrM9wLlXPytWus90Xdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLdQ-0002hu-KV; Mon, 24 Jun 2019 09:51:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLcs-0002X7-32
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:51:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id x4so13156869wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 02:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ohFM2booxVDTaJCm2xQtEDgFQlFHpSj1o/TJybnVHsY=;
 b=Uy2UjcSlDFQ+ZM2pD/XDHhydi1ucUzMR0oxpkIw3hhl4sPej3/9i+M8wE+ARKa/Mng
 WiJecZ0af0H4jLwLrqClyZiSZpSeN+/Dx8NjiyVz06Z9Ol9vKFwLzM0blKzzTkI1yWVi
 aU3neurS1LaAiz2Hi1mf4aprKOYKBUPAJX4zfEruhRNGbcDkrLCwdpfcaGQEffthAH+B
 EMNM6Bi80cWSHARJwdazJdUBEOPW6u+0AWcKxY6aa9SpiPEO/Hc6gm3GucluYE2p6Fh4
 XRu/9CZ0iVNPloXY97m2wM+vHo3RCu2JWWYilj7ugDGNhptQFrkdAMVycAsanh/spi+V
 FD4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ohFM2booxVDTaJCm2xQtEDgFQlFHpSj1o/TJybnVHsY=;
 b=cfByQLlV1Ousqn0GEtKsVVo0O8myb8uEOU1XWlpvAji7PIGeYMpxKeZmdsvOgskCx9
 M48fYBkro8bF6dL0u+eW/XI6FlE/7twEWa8xmndJdCX96aOnikF75i7i5WKPquzw6CTa
 hO4ka6nfdi4z7fqyEn7AqeuNiw8D8r2T7rmwjOS3mJuaZSlap1SPEVJEwSidznk1LsnD
 F5hdnxs1edKt8k0tMr7BE32EOQhCG+K6CYbIazXh+yPLQpOUEpRWlt9xcIc5nwvQiD5N
 oGUrAZMjIE8HRXkRhqAAeUOikAa0GoP4VGukToKq4QDC66sorIbJ+7LlpoJjAXBdT406
 FWuA==
X-Gm-Message-State: APjAAAXAe+nFlvqCn5CxkaPCOMxq7vAyT2N1U4y2gHP5AUluTO9Xq+j8
 THnTsAwK1lqFjveyMWSXPqNJtQ==
X-Google-Smtp-Source: APXvYqx4mE/otYY7pW05yJzCt4KsorvuEePZmvjUiCdpAscDm4vyckirVkyVl/NmkKL6cgm8EVM32w==
X-Received: by 2002:adf:a312:: with SMTP id c18mr16075035wrb.332.1561369860476; 
 Mon, 24 Jun 2019 02:51:00 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y17sm17364483wrg.18.2019.06.24.02.50.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 02:50:59 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v8 1/2] clocksource: davinci-timer: add support for clockevents
Date: Mon, 24 Jun 2019 11:50:55 +0200
Message-Id: <20190624095056.21296-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624095056.21296-1-brgl@bgdev.pl>
References: <20190624095056.21296-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025102_134954_13C2AC0D 
X-CRM114-Status: GOOD (  24.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Currently the clocksource and clockevent support for davinci platforms
lives in mach-davinci. It hard-codes many things, uses global variables,
implements functionalities unused by any platform and has code fragments
scattered across many (often unrelated) files.

Implement a new, modern and simplified timer driver and put it into
drivers/clocksource. We still need to support legacy board files so
export a config structure and a function that allows machine code to
register the timer.

The timer we're using is 64-bit but can be programmed in dual 32-bit
mode (both chained and unchained).

On all davinci SoCs except for da830 we're using both halves. Lower half
for clockevents and upper half for clocksource. On da830 we're using the
lower half for both with the help of a compare register.

This patch contains the core code and support for clockevent. The
clocksource code will be included in a subsequent patch.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/clocksource/Kconfig         |   5 +
 drivers/clocksource/Makefile        |   1 +
 drivers/clocksource/timer-davinci.c | 284 ++++++++++++++++++++++++++++
 include/clocksource/timer-davinci.h |  44 +++++
 4 files changed, 334 insertions(+)
 create mode 100644 drivers/clocksource/timer-davinci.c
 create mode 100644 include/clocksource/timer-davinci.h

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 3300739edce4..6717a09500ab 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -43,6 +43,11 @@ config BCM_KONA_TIMER
 	help
 	  Enables the support for the BCM Kona mobile timer driver.
 
+config DAVINCI_TIMER
+	bool "Texas Instruments DaVinci timer driver" if COMPILE_TEST
+	help
+	  Enables the support for the TI DaVinci timer driver.
+
 config DIGICOLOR_TIMER
 	bool "Digicolor timer driver" if COMPILE_TEST
 	select CLKSRC_MMIO
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 236858fa7fbf..021831bcc567 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -15,6 +15,7 @@ obj-$(CONFIG_SH_TIMER_TMU)	+= sh_tmu.o
 obj-$(CONFIG_EM_TIMER_STI)	+= em_sti.o
 obj-$(CONFIG_CLKBLD_I8253)	+= i8253.o
 obj-$(CONFIG_CLKSRC_MMIO)	+= mmio.o
+obj-$(CONFIG_DAVINCI_TIMER)	+= timer-davinci.o
 obj-$(CONFIG_DIGICOLOR_TIMER)	+= timer-digicolor.o
 obj-$(CONFIG_OMAP_DM_TIMER)	+= timer-ti-dm.o
 obj-$(CONFIG_DW_APB_TIMER)	+= dw_apb_timer.o
diff --git a/drivers/clocksource/timer-davinci.c b/drivers/clocksource/timer-davinci.c
new file mode 100644
index 000000000000..246a5564495d
--- /dev/null
+++ b/drivers/clocksource/timer-davinci.c
@@ -0,0 +1,284 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * TI DaVinci clocksource driver
+ *
+ * Copyright (C) 2019 Texas Instruments
+ * Author: Bartosz Golaszewski <bgolaszewski@baylibre.com>
+ * (with tiny parts adopted from code by Kevin Hilman <khilman@baylibre.com>)
+ */
+
+#include <linux/clk.h>
+#include <linux/clockchips.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/sched_clock.h>
+
+#include <clocksource/timer-davinci.h>
+
+#undef pr_fmt
+#define pr_fmt(fmt) "%s: " fmt "\n", __func__
+
+#define DAVINCI_TIMER_REG_TIM12			0x10
+#define DAVINCI_TIMER_REG_TIM34			0x14
+#define DAVINCI_TIMER_REG_PRD12			0x18
+#define DAVINCI_TIMER_REG_PRD34			0x1c
+#define DAVINCI_TIMER_REG_TCR			0x20
+#define DAVINCI_TIMER_REG_TGCR			0x24
+
+#define DAVINCI_TIMER_TIMMODE_MASK		GENMASK(3, 2)
+#define DAVINCI_TIMER_RESET_MASK		GENMASK(1, 0)
+#define DAVINCI_TIMER_TIMMODE_32BIT_UNCHAINED	BIT(2)
+#define DAVINCI_TIMER_UNRESET			GENMASK(1, 0)
+
+#define DAVINCI_TIMER_ENAMODE_MASK		GENMASK(1, 0)
+#define DAVINCI_TIMER_ENAMODE_DISABLED		0x00
+#define DAVINCI_TIMER_ENAMODE_ONESHOT		BIT(0)
+#define DAVINCI_TIMER_ENAMODE_PERIODIC		BIT(1)
+
+#define DAVINCI_TIMER_ENAMODE_SHIFT_TIM12	6
+#define DAVINCI_TIMER_ENAMODE_SHIFT_TIM34	22
+
+#define DAVINCI_TIMER_MIN_DELTA			0x01
+#define DAVINCI_TIMER_MAX_DELTA			0xfffffffe
+
+#define DAVINCI_TIMER_TGCR_DEFAULT \
+		(DAVINCI_TIMER_TIMMODE_32BIT_UNCHAINED | DAVINCI_TIMER_UNRESET)
+
+struct davinci_clockevent {
+	struct clock_event_device dev;
+	void __iomem *base;
+	unsigned int cmp_off;
+};
+
+static struct davinci_clockevent *
+to_davinci_clockevent(struct clock_event_device *clockevent)
+{
+	return container_of(clockevent, struct davinci_clockevent, dev);
+}
+
+static unsigned int
+davinci_clockevent_read(struct davinci_clockevent *clockevent,
+			unsigned int reg)
+{
+	return readl_relaxed(clockevent->base + reg);
+}
+
+static void davinci_clockevent_write(struct davinci_clockevent *clockevent,
+				     unsigned int reg, unsigned int val)
+{
+	writel_relaxed(val, clockevent->base + reg);
+}
+
+static void davinci_tim12_shutdown(void __iomem *base)
+{
+	unsigned int tcr;
+
+	tcr = DAVINCI_TIMER_ENAMODE_DISABLED <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
+	/*
+	 * This function is only ever called if we're using both timer
+	 * halves. In this case TIM34 runs in periodic mode and we must
+	 * not modify it.
+	 */
+	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
+
+	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
+}
+
+static void davinci_tim12_set_oneshot(void __iomem *base)
+{
+	unsigned int tcr;
+
+	tcr = DAVINCI_TIMER_ENAMODE_ONESHOT <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM12;
+	/* Same as above. */
+	tcr |= DAVINCI_TIMER_ENAMODE_PERIODIC <<
+		DAVINCI_TIMER_ENAMODE_SHIFT_TIM34;
+
+	writel_relaxed(tcr, base + DAVINCI_TIMER_REG_TCR);
+}
+
+static int davinci_clockevent_shutdown(struct clock_event_device *dev)
+{
+	struct davinci_clockevent *clockevent;
+
+	clockevent = to_davinci_clockevent(dev);
+
+	davinci_tim12_shutdown(clockevent->base);
+
+	return 0;
+}
+
+static int davinci_clockevent_set_oneshot(struct clock_event_device *dev)
+{
+	struct davinci_clockevent *clockevent = to_davinci_clockevent(dev);
+
+	davinci_clockevent_write(clockevent, DAVINCI_TIMER_REG_TIM12, 0x0);
+
+	davinci_tim12_set_oneshot(clockevent->base);
+
+	return 0;
+}
+
+static int
+davinci_clockevent_set_next_event_std(unsigned long cycles,
+				      struct clock_event_device *dev)
+{
+	struct davinci_clockevent *clockevent = to_davinci_clockevent(dev);
+
+	davinci_clockevent_shutdown(dev);
+
+	davinci_clockevent_write(clockevent, DAVINCI_TIMER_REG_TIM12, 0x0);
+	davinci_clockevent_write(clockevent, DAVINCI_TIMER_REG_PRD12, cycles);
+
+	davinci_clockevent_set_oneshot(dev);
+
+	return 0;
+}
+
+static int
+davinci_clockevent_set_next_event_cmp(unsigned long cycles,
+				      struct clock_event_device *dev)
+{
+	struct davinci_clockevent *clockevent = to_davinci_clockevent(dev);
+	unsigned int curr_time;
+
+	curr_time = davinci_clockevent_read(clockevent,
+					    DAVINCI_TIMER_REG_TIM12);
+	davinci_clockevent_write(clockevent,
+				 clockevent->cmp_off, curr_time + cycles);
+
+	return 0;
+}
+
+static irqreturn_t davinci_timer_irq_timer(int irq, void *data)
+{
+	struct davinci_clockevent *clockevent = data;
+
+	if (!clockevent_state_oneshot(&clockevent->dev))
+		davinci_tim12_shutdown(clockevent->base);
+
+	clockevent->dev.event_handler(&clockevent->dev);
+
+	return IRQ_HANDLED;
+}
+
+static void davinci_timer_init(void __iomem *base)
+{
+	/* Set clock to internal mode and disable it. */
+	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TCR);
+	/*
+	 * Reset both 32-bit timers, set no prescaler for timer 34, set the
+	 * timer to dual 32-bit unchained mode, unreset both 32-bit timers.
+	 */
+	writel_relaxed(DAVINCI_TIMER_TGCR_DEFAULT,
+		       base + DAVINCI_TIMER_REG_TGCR);
+	/* Init both counters to zero. */
+	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM12);
+	writel_relaxed(0x0, base + DAVINCI_TIMER_REG_TIM34);
+}
+
+int __init davinci_timer_register(struct clk *clk,
+				  const struct davinci_timer_cfg *timer_cfg)
+{
+	struct davinci_clockevent *clockevent;
+	unsigned int tick_rate;
+	void __iomem *base;
+	int rv;
+
+	rv = clk_prepare_enable(clk);
+	if (rv) {
+		pr_err("Unable to prepare and enable the timer clock");
+		return rv;
+	}
+
+	if (!request_mem_region(timer_cfg->reg.start,
+				resource_size(&timer_cfg->reg),
+				"davinci-timer")) {
+		pr_err("Unable to request memory region");
+		return -EBUSY;
+	}
+
+	base = ioremap(timer_cfg->reg.start, resource_size(&timer_cfg->reg));
+	if (!base) {
+		pr_err("Unable to map the register range");
+		return -ENOMEM;
+	}
+
+	davinci_timer_init(base);
+	tick_rate = clk_get_rate(clk);
+
+	clockevent = kzalloc(sizeof(*clockevent), GFP_KERNEL | __GFP_NOFAIL);
+	if (!clockevent) {
+		pr_err("Error allocating memory for clockevent data");
+		return -ENOMEM;
+	}
+
+	clockevent->dev.name = "tim12";
+	clockevent->dev.features = CLOCK_EVT_FEAT_ONESHOT;
+	clockevent->dev.cpumask = cpumask_of(0);
+	clockevent->base = base;
+
+	if (timer_cfg->cmp_off) {
+		clockevent->cmp_off = timer_cfg->cmp_off;
+		clockevent->dev.set_next_event =
+				davinci_clockevent_set_next_event_cmp;
+	} else {
+		clockevent->dev.set_next_event =
+				davinci_clockevent_set_next_event_std;
+		clockevent->dev.set_state_oneshot =
+				davinci_clockevent_set_oneshot;
+		clockevent->dev.set_state_shutdown =
+				davinci_clockevent_shutdown;
+	}
+
+	rv = request_irq(timer_cfg->irq[DAVINCI_TIMER_CLOCKEVENT_IRQ].start,
+			 davinci_timer_irq_timer, IRQF_TIMER,
+			 "clockevent/tim12", clockevent);
+	if (rv) {
+		pr_err("Unable to request the clockevent interrupt");
+		return rv;
+	}
+
+	clockevents_config_and_register(&clockevent->dev, tick_rate,
+					DAVINCI_TIMER_MIN_DELTA,
+					DAVINCI_TIMER_MAX_DELTA);
+
+	return 0;
+}
+
+static int __init of_davinci_timer_register(struct device_node *np)
+{
+	struct davinci_timer_cfg timer_cfg = { };
+	struct clk *clk;
+	int rv;
+
+	rv = of_address_to_resource(np, 0, &timer_cfg.reg);
+	if (rv) {
+		pr_err("Unable to get the register range for timer");
+		return rv;
+	}
+
+	rv = of_irq_to_resource_table(np, timer_cfg.irq,
+				      DAVINCI_TIMER_NUM_IRQS);
+	if (rv != DAVINCI_TIMER_NUM_IRQS) {
+		pr_err("Unable to get the interrupts for timer");
+		return rv;
+	}
+
+	clk = of_clk_get(np, 0);
+	if (IS_ERR(clk)) {
+		pr_err("Unable to get the timer clock");
+		return PTR_ERR(clk);
+	}
+
+	rv = davinci_timer_register(clk, &timer_cfg);
+	if (rv)
+		clk_put(clk);
+
+	return rv;
+}
+TIMER_OF_DECLARE(davinci_timer, "ti,da830-timer", of_davinci_timer_register);
diff --git a/include/clocksource/timer-davinci.h b/include/clocksource/timer-davinci.h
new file mode 100644
index 000000000000..1dcc1333fbc8
--- /dev/null
+++ b/include/clocksource/timer-davinci.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * TI DaVinci clocksource driver
+ *
+ * Copyright (C) 2019 Texas Instruments
+ * Author: Bartosz Golaszewski <bgolaszewski@baylibre.com>
+ */
+
+#ifndef __TIMER_DAVINCI_H__
+#define __TIMER_DAVINCI_H__
+
+#include <linux/clk.h>
+#include <linux/ioport.h>
+
+enum {
+	DAVINCI_TIMER_CLOCKEVENT_IRQ,
+	DAVINCI_TIMER_CLOCKSOURCE_IRQ,
+	DAVINCI_TIMER_NUM_IRQS,
+};
+
+/**
+ * struct davinci_timer_cfg - davinci clocksource driver configuration struct
+ * @reg:        register range resource
+ * @irq:        clockevent and clocksource interrupt resources
+ * @cmp_off:    if set - it specifies the compare register used for clockevent
+ *
+ * Note: if the compare register is specified, the driver will use the bottom
+ * clock half for both clocksource and clockevent and the compare register
+ * to generate event irqs. The user must supply the correct compare register
+ * interrupt number.
+ *
+ * This is only used by da830 the DSP of which uses the top half. The timer
+ * driver still configures the top half to run in free-run mode.
+ */
+struct davinci_timer_cfg {
+	struct resource reg;
+	struct resource irq[DAVINCI_TIMER_NUM_IRQS];
+	unsigned int cmp_off;
+};
+
+int __init davinci_timer_register(struct clk *clk,
+				  const struct davinci_timer_cfg *data);
+
+#endif /* __TIMER_DAVINCI_H__ */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
