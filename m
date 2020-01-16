Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42E913F3E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UiCrwtV3mAFOX+rZZnn45fwsEFfOZ74v/q3XZrBe/NE=; b=Auc5ah1hlFU8P+Y3L5FY69Ob4N
	1azdOkZ0iRk31zqh24J92mMPAdGqVlbEC2wIy1jt328/1gy0oOrt2ySBQqw8azpP1UN24qHhJw6as
	/VQSp53imEVMUVLn/LLveLtUwZExTxNBKyLhy0lYOiLiS0eE37DPjDrmX0qd9VIOjqmt4zbQsx/u0
	3mVeizi3fuwDivuL6i7WldfYC3pTk/3iaKUE1mZ4frjBFJ/hAz+tmU5GXYRRQyDgWtw458LAJl3Sg
	JDvGDdJ5j9ZhVQVqMPpa0GFX/EXpQZKzp9Ls0tiy3D+JgUIlzzH6oiOqTHN3vFJb4PSRyypjySqyk
	/MNDRuyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isA9i-0000Ul-7s; Thu, 16 Jan 2020 18:46:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9nn-000081-JN
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:23:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so4870722wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 10:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4ihrV30co6zVazCYWQvCe6nMsZS0PmEOQQviJxE2B6s=;
 b=UJXZDAdkk+CHcFYWj2M6HXmPTbpmNwO6Q89KrfFQBJQd3KsYE5ORvC3KXxZS1HhbZ0
 vcSoOL3I4c7E0d4rTXzCSPfz+danjc9k8Qj99dt12OziIltpHqCTXSZm9tcYilmbJdxK
 TPyq9sDXxfpiRA8s/E6c7FFoqFMAgtrpFFwah+LX480H9GkovAcDm8RZ/nFM5fyTMTGy
 VP6cBAWNzSGJgcEWRUbrAhfOOGoFA8ALo9MRTMSzuJlniwn5v0aT1Ri/3vsZh0/oqmAG
 9tpZyMoOKdeYwzIw8Us/71AFQLp0LrqNxh1f4PSvPgG4rzveFH6c5Aao8mg4Sz9pEjco
 284w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4ihrV30co6zVazCYWQvCe6nMsZS0PmEOQQviJxE2B6s=;
 b=bR0IrveRrUEOyDLfXnmt+bBIMrzvwqDKBSUGO24oe8/+d+0lIiGbOweMhWeHC6cQj4
 LVhU70TdYrRNSepKk/8hT+rcVu2FS62sdAoDrZZl7wjdYs8OcgWiJTEO93QFUHMx4sCu
 tyNRQjhZDFD4Nx+Lv6ITJO9qA1Bz3PJfLeT1dVfm3vU47Gkr1t2l6shPJgXwo4kgEZm2
 xLCcWqfcJvTP/2XaYzE7DJS/XOQ8TDsT88torrla0K1LYyKFUtKNf9iihIOLgYXH28kP
 lhaaYw2qdKugY8rPjvGq2P3XE9078J1t9yb51s3Og4xzlvGlqBK9jFO3mU0HTI3RXhKW
 95ow==
X-Gm-Message-State: APjAAAUKeSsk8gH890Tm/6Zgq7wOKCD1IoMnEu3q4mSzubN84X6yu5Ej
 wfTcGZFsb2alASi0xeUwyOrfvw==
X-Google-Smtp-Source: APXvYqwUkeGpIvMBC5nS3MBq8Yb6/WbOBB+xERgB4QOz6VIiDXS8a40oNLUe0PIkvHdFAPaYyhNKFw==
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr398659wmg.16.1579199009027; 
 Thu, 16 Jan 2020 10:23:29 -0800 (PST)
Received: from mai.imgcgcw.net ([2a01:e34:ed2f:f020:6c63:1b50:1156:7f0f])
 by smtp.gmail.com with ESMTPSA id b137sm1087920wme.26.2020.01.16.10.23.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 10:23:28 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: tglx@linutronix.de
Subject: [PATCH 06/17] clocksource/drivers/timer-microchip-pit64b: Add
 Microchip PIT64B support
Date: Thu, 16 Jan 2020 19:22:53 +0100
Message-Id: <20200116182304.4926-6-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200116182304.4926-1-daniel.lezcano@linaro.org>
References: <74bf7170-401f-2962-ea5a-1e21431a9349@linaro.org>
 <20200116182304.4926-1-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_102331_679603_1E014271 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 "moderated list:ARM/Microchip AT91 SoC support"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Claudiu Beznea <claudiu.beznea@microchip.com>

Add driver for Microchip PIT64B timer. Timer could be used in continuous
mode or oneshot mode. The hardware has 2x32 bit registers for period
emulating a 64 bit timer. The LSB_PR and MSB_PR registers are used to
set the period value (compare value). TLSB and TMSB keeps the current
value of the counter. After a compare the TLSB and TMSB register resets.
The driver uses PIT64B timer for clocksource or clockevent. First
requested timer would be registered as clockevent, second one would be
registered as clocksource. Individual PIT64B hardware resources were
used for clocksource and clockevent to be able to support high resolution
timers with this hardware implementation.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Link: https://lore.kernel.org/r/1576235962-30123-3-git-send-email-claudiu.beznea@microchip.com
---
 .../devicetree/bindings/arm/atmel-sysregs.txt |   6 +
 drivers/clocksource/Kconfig                   |  10 +
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-microchip-pit64b.c  | 449 ++++++++++++++++++
 4 files changed, 466 insertions(+)
 create mode 100644 drivers/clocksource/timer-microchip-pit64b.c

diff --git a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
index 9fbde401a090..e003a553b986 100644
--- a/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
+++ b/Documentation/devicetree/bindings/arm/atmel-sysregs.txt
@@ -10,6 +10,12 @@ PIT Timer required properties:
 - interrupts: Should contain interrupt for the PIT which is the IRQ line
   shared across all System Controller members.
 
+PIT64B Timer required properties:
+- compatible: Should be "microchip,sam9x60-pit64b"
+- reg: Should contain registers location and length
+- interrupts: Should contain interrupt for PIT64B timer
+- clocks: Should contain the available clock sources for PIT64B timer.
+
 System Timer (ST) required properties:
 - compatible: Should be "atmel,at91rm9200-st", "syscon", "simple-mfd"
 - reg: Should contain registers location and length
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 94192fb0533e..cc909e465823 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -697,4 +697,14 @@ config INGENIC_TIMER
 	help
 	  Support for the timer/counter unit of the Ingenic JZ SoCs.
 
+config MICROCHIP_PIT64B
+	bool "Microchip PIT64B support"
+	depends on OF || COMPILE_TEST
+	select CLKSRC_MMIO
+	help
+	  This option enables Microchip PIT64B timer for Atmel
+	  based system. It supports the oneshot, the periodic
+	  modes and high resolution. It is used as a clocksource
+	  and a clockevent.
+
 endmenu
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 4dfe4225ece7..713686faa549 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -88,3 +88,4 @@ obj-$(CONFIG_RISCV_TIMER)		+= timer-riscv.o
 obj-$(CONFIG_CSKY_MP_TIMER)		+= timer-mp-csky.o
 obj-$(CONFIG_GX6605S_TIMER)		+= timer-gx6605s.o
 obj-$(CONFIG_HYPERV_TIMER)		+= hyperv_timer.o
+obj-$(CONFIG_MICROCHIP_PIT64B)		+= timer-microchip-pit64b.o
diff --git a/drivers/clocksource/timer-microchip-pit64b.c b/drivers/clocksource/timer-microchip-pit64b.c
new file mode 100644
index 000000000000..27a389a7e078
--- /dev/null
+++ b/drivers/clocksource/timer-microchip-pit64b.c
@@ -0,0 +1,449 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * 64-bit Periodic Interval Timer driver
+ *
+ * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Claudiu Beznea <claudiu.beznea@microchip.com>
+ */
+
+#include <linux/clk.h>
+#include <linux/clockchips.h>
+#include <linux/interrupt.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/sched_clock.h>
+#include <linux/slab.h>
+
+#define MCHP_PIT64B_CR			0x00	/* Control Register */
+#define MCHP_PIT64B_CR_START		BIT(0)
+#define MCHP_PIT64B_CR_SWRST		BIT(8)
+
+#define MCHP_PIT64B_MR			0x04	/* Mode Register */
+#define MCHP_PIT64B_MR_CONT		BIT(0)
+#define MCHP_PIT64B_MR_ONE_SHOT		(0)
+#define MCHP_PIT64B_MR_SGCLK		BIT(3)
+#define MCHP_PIT64B_MR_PRES		GENMASK(11, 8)
+
+#define MCHP_PIT64B_LSB_PR		0x08	/* LSB Period Register */
+
+#define MCHP_PIT64B_MSB_PR		0x0C	/* MSB Period Register */
+
+#define MCHP_PIT64B_IER			0x10	/* Interrupt Enable Register */
+#define MCHP_PIT64B_IER_PERIOD		BIT(0)
+
+#define MCHP_PIT64B_ISR			0x1C	/* Interrupt Status Register */
+
+#define MCHP_PIT64B_TLSBR		0x20	/* Timer LSB Register */
+
+#define MCHP_PIT64B_TMSBR		0x24	/* Timer MSB Register */
+
+#define MCHP_PIT64B_PRES_MAX		0x10
+#define MCHP_PIT64B_LSBMASK		GENMASK_ULL(31, 0)
+#define MCHP_PIT64B_PRES_TO_MODE(p)	(MCHP_PIT64B_MR_PRES & ((p) << 8))
+#define MCHP_PIT64B_MODE_TO_PRES(m)	((MCHP_PIT64B_MR_PRES & (m)) >> 8)
+#define MCHP_PIT64B_DEF_CS_FREQ		5000000UL	/* 5 MHz */
+#define MCHP_PIT64B_DEF_CE_FREQ		32768		/* 32 KHz */
+
+#define MCHP_PIT64B_NAME		"pit64b"
+
+/**
+ * struct mchp_pit64b_timer - PIT64B timer data structure
+ * @base: base address of PIT64B hardware block
+ * @pclk: PIT64B's peripheral clock
+ * @gclk: PIT64B's generic clock
+ * @mode: precomputed value for mode register
+ */
+struct mchp_pit64b_timer {
+	void __iomem	*base;
+	struct clk	*pclk;
+	struct clk	*gclk;
+	u32		mode;
+};
+
+/**
+ * mchp_pit64b_clkevt - PIT64B clockevent data structure
+ * @timer: PIT64B timer
+ * @clkevt: clockevent
+ */
+struct mchp_pit64b_clkevt {
+	struct mchp_pit64b_timer	timer;
+	struct clock_event_device	clkevt;
+};
+
+#define to_mchp_pit64b_timer(x) \
+	((struct mchp_pit64b_timer *)container_of(x,\
+		struct mchp_pit64b_clkevt, clkevt))
+
+/* Base address for clocksource timer. */
+static void __iomem *mchp_pit64b_cs_base;
+/* Default cycles for clockevent timer. */
+static u64 mchp_pit64b_ce_cycles;
+
+static inline u64 mchp_pit64b_cnt_read(void __iomem *base)
+{
+	unsigned long	flags;
+	u32		low, high;
+
+	raw_local_irq_save(flags);
+
+	/*
+	 * When using a 64 bit period TLSB must be read first, followed by the
+	 * read of TMSB. This sequence generates an atomic read of the 64 bit
+	 * timer value whatever the lapse of time between the accesses.
+	 */
+	low = readl_relaxed(base + MCHP_PIT64B_TLSBR);
+	high = readl_relaxed(base + MCHP_PIT64B_TMSBR);
+
+	raw_local_irq_restore(flags);
+
+	return (((u64)high << 32) | low);
+}
+
+static inline void mchp_pit64b_reset(struct mchp_pit64b_timer *timer,
+				     u64 cycles, u32 mode, u32 irqs)
+{
+	u32 low, high;
+
+	low = cycles & MCHP_PIT64B_LSBMASK;
+	high = cycles >> 32;
+
+	writel_relaxed(MCHP_PIT64B_CR_SWRST, timer->base + MCHP_PIT64B_CR);
+	writel_relaxed(mode | timer->mode, timer->base + MCHP_PIT64B_MR);
+	writel_relaxed(high, timer->base + MCHP_PIT64B_MSB_PR);
+	writel_relaxed(low, timer->base + MCHP_PIT64B_LSB_PR);
+	writel_relaxed(irqs, timer->base + MCHP_PIT64B_IER);
+	writel_relaxed(MCHP_PIT64B_CR_START, timer->base + MCHP_PIT64B_CR);
+}
+
+static u64 mchp_pit64b_clksrc_read(struct clocksource *cs)
+{
+	return mchp_pit64b_cnt_read(mchp_pit64b_cs_base);
+}
+
+static u64 mchp_pit64b_sched_read_clk(void)
+{
+	return mchp_pit64b_cnt_read(mchp_pit64b_cs_base);
+}
+
+static int mchp_pit64b_clkevt_shutdown(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = to_mchp_pit64b_timer(cedev);
+
+	writel_relaxed(MCHP_PIT64B_CR_SWRST, timer->base + MCHP_PIT64B_CR);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_periodic(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = to_mchp_pit64b_timer(cedev);
+
+	mchp_pit64b_reset(timer, mchp_pit64b_ce_cycles, MCHP_PIT64B_MR_CONT,
+			  MCHP_PIT64B_IER_PERIOD);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_next_event(unsigned long evt,
+					     struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = to_mchp_pit64b_timer(cedev);
+
+	mchp_pit64b_reset(timer, evt, MCHP_PIT64B_MR_ONE_SHOT,
+			  MCHP_PIT64B_IER_PERIOD);
+
+	return 0;
+}
+
+static void mchp_pit64b_clkevt_suspend(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = to_mchp_pit64b_timer(cedev);
+
+	writel_relaxed(MCHP_PIT64B_CR_SWRST, timer->base + MCHP_PIT64B_CR);
+	if (timer->mode & MCHP_PIT64B_MR_SGCLK)
+		clk_disable_unprepare(timer->gclk);
+	clk_disable_unprepare(timer->pclk);
+}
+
+static void mchp_pit64b_clkevt_resume(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = to_mchp_pit64b_timer(cedev);
+
+	clk_prepare_enable(timer->pclk);
+	if (timer->mode & MCHP_PIT64B_MR_SGCLK)
+		clk_prepare_enable(timer->gclk);
+}
+
+static irqreturn_t mchp_pit64b_interrupt(int irq, void *dev_id)
+{
+	struct mchp_pit64b_clkevt *irq_data = dev_id;
+
+	/* Need to clear the interrupt. */
+	readl_relaxed(irq_data->timer.base + MCHP_PIT64B_ISR);
+
+	irq_data->clkevt.event_handler(&irq_data->clkevt);
+
+	return IRQ_HANDLED;
+}
+
+static void __init mchp_pit64b_pres_compute(u32 *pres, u32 clk_rate,
+					    u32 max_rate)
+{
+	u32 tmp;
+
+	for (*pres = 0; *pres < MCHP_PIT64B_PRES_MAX; (*pres)++) {
+		tmp = clk_rate / (*pres + 1);
+		if (tmp <= max_rate)
+			break;
+	}
+
+	/* Use the bigest prescaler if we didn't match one. */
+	if (*pres == MCHP_PIT64B_PRES_MAX)
+		*pres = MCHP_PIT64B_PRES_MAX - 1;
+}
+
+/**
+ * mchp_pit64b_init_mode - prepare PIT64B mode register value to be used at
+ *			   runtime; this includes prescaler and SGCLK bit
+ *
+ * PIT64B timer may be fed by gclk or pclk. When gclk is used its rate has to
+ * be at least 3 times lower that pclk's rate. pclk rate is fixed, gclk rate
+ * could be changed via clock APIs. The chosen clock (pclk or gclk) could be
+ * divided by the internal PIT64B's divider.
+ *
+ * This function, first tries to use GCLK by requesting the desired rate from
+ * PMC and then using the internal PIT64B prescaler, if any, to reach the
+ * requested rate. If PCLK/GCLK < 3 (condition requested by PIT64B hardware)
+ * then the function falls back on using PCLK as clock source for PIT64B timer
+ * choosing the highest prescaler in case it doesn't locate one to match the
+ * requested frequency.
+ *
+ * Below is presented the PIT64B block in relation with PMC:
+ *
+ *                                PIT64B
+ *  PMC             +------------------------------------+
+ * +----+           |   +-----+                          |
+ * |    |-->gclk -->|-->|     |    +---------+  +-----+  |
+ * |    |           |   | MUX |--->| Divider |->|timer|  |
+ * |    |-->pclk -->|-->|     |    +---------+  +-----+  |
+ * +----+           |   +-----+                          |
+ *                  |      ^                             |
+ *                  |     sel                            |
+ *                  +------------------------------------+
+ *
+ * Where:
+ *	- gclk rate <= pclk rate/3
+ *	- gclk rate could be requested from PMC
+ *	- pclk rate is fixed (cannot be requested from PMC)
+ */
+static int __init mchp_pit64b_init_mode(struct mchp_pit64b_timer *timer,
+					unsigned long max_rate)
+{
+	unsigned long pclk_rate, diff = 0, best_diff = ULONG_MAX;
+	long gclk_round = 0;
+	u32 pres, best_pres = 0;
+
+	pclk_rate = clk_get_rate(timer->pclk);
+	if (!pclk_rate)
+		return -EINVAL;
+
+	/* Try using GCLK. */
+	gclk_round = clk_round_rate(timer->gclk, max_rate);
+	if (gclk_round < 0)
+		goto pclk;
+
+	if (pclk_rate / gclk_round < 3)
+		goto pclk;
+
+	mchp_pit64b_pres_compute(&pres, gclk_round, max_rate);
+	best_diff = abs(gclk_round / (pres + 1) - max_rate);
+	best_pres = pres;
+
+	if (!best_diff) {
+		timer->mode |= MCHP_PIT64B_MR_SGCLK;
+		goto done;
+	}
+
+pclk:
+	/* Check if requested rate could be obtained using PCLK. */
+	mchp_pit64b_pres_compute(&pres, pclk_rate, max_rate);
+	diff = abs(pclk_rate / (pres + 1) - max_rate);
+
+	if (best_diff > diff) {
+		/* Use PCLK. */
+		best_pres = pres;
+	} else {
+		/* Use GCLK. */
+		timer->mode |= MCHP_PIT64B_MR_SGCLK;
+		clk_set_rate(timer->gclk, gclk_round);
+	}
+
+done:
+	timer->mode |= MCHP_PIT64B_PRES_TO_MODE(best_pres);
+
+	pr_info("PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\n",
+		timer->mode & MCHP_PIT64B_MR_SGCLK ? "gclk" : "pclk", best_pres,
+		timer->mode & MCHP_PIT64B_MR_SGCLK ?
+		gclk_round / (best_pres + 1) : pclk_rate / (best_pres + 1));
+
+	return 0;
+}
+
+static int __init mchp_pit64b_init_clksrc(struct mchp_pit64b_timer *timer,
+					  u32 clk_rate)
+{
+	int ret;
+
+	mchp_pit64b_reset(timer, ULLONG_MAX, MCHP_PIT64B_MR_CONT, 0);
+
+	mchp_pit64b_cs_base = timer->base;
+
+	ret = clocksource_mmio_init(timer->base, MCHP_PIT64B_NAME, clk_rate,
+				    210, 64, mchp_pit64b_clksrc_read);
+	if (ret) {
+		pr_debug("clksrc: Failed to register PIT64B clocksource!\n");
+
+		/* Stop timer. */
+		writel_relaxed(MCHP_PIT64B_CR_SWRST,
+			       timer->base + MCHP_PIT64B_CR);
+
+		return ret;
+	}
+
+	sched_clock_register(mchp_pit64b_sched_read_clk, 64, clk_rate);
+
+	return 0;
+}
+
+static int __init mchp_pit64b_init_clkevt(struct mchp_pit64b_timer *timer,
+					  u32 clk_rate, u32 irq)
+{
+	struct mchp_pit64b_clkevt *ce;
+	int ret;
+
+	ce = kzalloc(sizeof(*ce), GFP_KERNEL);
+	if (!ce)
+		return -ENOMEM;
+
+	mchp_pit64b_ce_cycles = DIV_ROUND_CLOSEST(clk_rate, HZ);
+
+	ce->timer.base = timer->base;
+	ce->timer.pclk = timer->pclk;
+	ce->timer.gclk = timer->gclk;
+	ce->timer.mode = timer->mode;
+	ce->clkevt.name = MCHP_PIT64B_NAME;
+	ce->clkevt.features = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_PERIODIC;
+	ce->clkevt.rating = 150;
+	ce->clkevt.set_state_shutdown = mchp_pit64b_clkevt_shutdown;
+	ce->clkevt.set_state_periodic = mchp_pit64b_clkevt_set_periodic;
+	ce->clkevt.set_next_event = mchp_pit64b_clkevt_set_next_event;
+	ce->clkevt.suspend = mchp_pit64b_clkevt_suspend;
+	ce->clkevt.resume = mchp_pit64b_clkevt_resume;
+	ce->clkevt.cpumask = cpumask_of(0);
+	ce->clkevt.irq = irq;
+
+	ret = request_irq(irq, mchp_pit64b_interrupt, IRQF_TIMER,
+			  "pit64b_tick", ce);
+	if (ret) {
+		pr_debug("clkevt: Failed to setup PIT64B IRQ\n");
+		kfree(ce);
+		return ret;
+	}
+
+	clockevents_config_and_register(&ce->clkevt, clk_rate, 1, ULONG_MAX);
+
+	return 0;
+}
+
+static int __init mchp_pit64b_dt_init_timer(struct device_node *node,
+					    bool clkevt)
+{
+	u32 freq = clkevt ? MCHP_PIT64B_DEF_CE_FREQ : MCHP_PIT64B_DEF_CS_FREQ;
+	struct mchp_pit64b_timer timer = { 0 };
+	unsigned long clk_rate;
+	u32 irq = 0;
+	int ret;
+
+	/* Parse DT node. */
+	timer.pclk = of_clk_get_by_name(node, "pclk");
+	if (IS_ERR(timer.pclk))
+		return PTR_ERR(timer.pclk);
+
+	timer.gclk = of_clk_get_by_name(node, "gclk");
+	if (IS_ERR(timer.gclk))
+		return PTR_ERR(timer.gclk);
+
+	timer.base = of_iomap(node, 0);
+	if (!timer.base)
+		return -ENXIO;
+
+	if (clkevt) {
+		irq = irq_of_parse_and_map(node, 0);
+		if (!irq) {
+			ret = -ENODEV;
+			goto io_unmap;
+		}
+	}
+
+	/* Initialize mode (prescaler + SGCK bit). To be used at runtime. */
+	ret = mchp_pit64b_init_mode(&timer, freq);
+	if (ret)
+		goto irq_unmap;
+
+	ret = clk_prepare_enable(timer.pclk);
+	if (ret)
+		goto irq_unmap;
+
+	if (timer.mode & MCHP_PIT64B_MR_SGCLK) {
+		ret = clk_prepare_enable(timer.gclk);
+		if (ret)
+			goto pclk_unprepare;
+
+		clk_rate = clk_get_rate(timer.gclk);
+	} else {
+		clk_rate = clk_get_rate(timer.pclk);
+	}
+	clk_rate = clk_rate / (MCHP_PIT64B_MODE_TO_PRES(timer.mode) + 1);
+
+	if (clkevt)
+		ret = mchp_pit64b_init_clkevt(&timer, clk_rate, irq);
+	else
+		ret = mchp_pit64b_init_clksrc(&timer, clk_rate);
+
+	if (ret)
+		goto gclk_unprepare;
+
+	return 0;
+
+gclk_unprepare:
+	if (timer.mode & MCHP_PIT64B_MR_SGCLK)
+		clk_disable_unprepare(timer.gclk);
+pclk_unprepare:
+	clk_disable_unprepare(timer.pclk);
+irq_unmap:
+	irq_dispose_mapping(irq);
+io_unmap:
+	iounmap(timer.base);
+
+	return ret;
+}
+
+static int __init mchp_pit64b_dt_init(struct device_node *node)
+{
+	static int inits;
+
+	switch (inits++) {
+	case 0:
+		/* 1st request, register clockevent. */
+		return mchp_pit64b_dt_init_timer(node, true);
+	case 1:
+		/* 2nd request, register clocksource. */
+		return mchp_pit64b_dt_init_timer(node, false);
+	}
+
+	/* The rest, don't care. */
+	return -EINVAL;
+}
+
+TIMER_OF_DECLARE(mchp_pit64b, "microchip,sam9x60-pit64b", mchp_pit64b_dt_init);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
