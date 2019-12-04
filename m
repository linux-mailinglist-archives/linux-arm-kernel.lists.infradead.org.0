Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21195112DAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:43:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8m20YZFEXSYIP2N2rm/jYmKMhrDwtmUtq7NOJpt56Yg=; b=E3B3pYz/xVpPAc
	I+vpzi2gqhfLIObmuEOFrSn0FIUW8N7rXlAtfnwjD4rsh/aSbjAsvvKGhd2aLcz7mJUvrb28XVZ1r
	83GT+eFbiJ59i70PY2O8Vbp7tsaclh2k8mAWWNG5VMZXD6MPHphO1Vb9RmqflFfgCYa4FwTPA5tnD
	WG9h4TAIA4Kz8sTwtUUbvLLPc1LRARxf08NjKZAi4ckarUVNNcE3TRzJxlHLrVm3oFoQcuNvrr6me
	kJDExBJGHM3CXM9ul8mXhnGIklKCLJvwaqAk5YvTtJqJfwZMh2pFv0xjKdxLrhCf1B/1WHmWDbDhD
	7LLjFhKnrVoqJG57p1ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVs8-0002Xq-ND; Wed, 04 Dec 2019 14:43:21 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVrv-0002Tq-KR
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:43:10 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: /WOh9tf8YTAYFhmPYA/XYL+qcHgseytw+HPncWZTJOl2qeVNT52foJIMYuwmsMnP1uLxReC55r
 Qu/YySdALnIzGZzYWr/AUoK45UFgt3wJbygTkmSnZd++zoFQSkUEzsaORk6XcToh/3V3RPntdn
 NRak8sen6kQJ+tIbVPof+NWamkwFjqDdFmvskDSOJlkNW+ZQTROfNtw+Wf5iXB0epyxXC1iSxH
 d2FvkN8fyhG1NtHJf0v2k+UU+s+YGw4wulswYwfmWx/E7Pl1pAwNiPx0HS7QGLKXK2QGIE6DLZ
 rnU=
X-IronPort-AV: E=Sophos;i="5.69,277,1571727600"; d="scan'208";a="56592311"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Dec 2019 07:42:48 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 4 Dec 2019 07:42:47 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 4 Dec 2019 07:42:45 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v3 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Date: Wed, 4 Dec 2019 16:42:29 +0200
Message-ID: <1575470549-702-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575470549-702-1-git-send-email-claudiu.beznea@microchip.com>
References: <1575470549-702-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_064307_951493_B3A90539 
X-CRM114-Status: GOOD (  25.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add driver for Microchip PIT64B timer. Timer could be used in continuous
mode or oneshot mode. The hardware has 2x32 bit registers for period
emulating a 64 bit timer. The LSB_PR and MSB_PR registers are used to
set the period value (compare value). TLSB and TMSB keeps the current
value of the counter. After a compare the TLSB and TMSB register resets.
The driver uses PIT64B timer for clocksource or clockevent. First
requested timer would be registered as clockevent, second one would be
registered as clocksource. Individual PIT64B hardware resources were used
for clocksource and clockevent to be able to support high resolution
timers with this hardware implementation.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---

Changes in v3:
- rework data structures:
	- timer related data structure is called now mchp_pit64b_timer embedding
	  base iomem, clocks, interrupt, prescaler value
	- introduced struct mchp_pit64b_clksrc and struct mchp_pit64b_clkevt
	  instead of mchp_pit64b_clksrc_data and mchp_pit64b_clkevt_data
	- use container_of() to retrieve mchp_pit64b_timer objects on
	  clocksource/clockevent specific APIs
	- document data structures
- use raw_local_irq_save()/raw_local_irq_restore() when reading
  MCHP_PIT64B_TLSBR and MCHP_PIT64B_TMSBR in mchp_pit64b_get_period()
- get rid of mchp_pit64b_read(), mchp_pit64b_write() and use instead
  readl_relaxed(), writel_relaxed()
- get rid of mchp_pit64b_set_period() and inlined its instructions in
  mchp_pit64b_reset()
- mchp_pit64b_reset() gets now as arguments an object of type
  struct mchp_pit64b_timer, cycles to program and mode
- remove static struct clocksource mchp_pit64b_clksrc and
  static struct clock_event_device mchp_pit64b_clkevt and instead allocate
  and fill them in mchp_pit64b_dt_init_clksrc() and
  mchp_pit64b_dt_init_clkevt()
- call mchp_pit64b_reset() in mchp_pit64b_clkevt_set_next_event() and
  program clockevent timer with SMOD=0; if SMOD=1 the timer's period could
  be reprogrammed also if writting TLSB, TMSB if it is running. In cases
  were its period expired START bit still has to be set in control register.
  In case the programming sequence is like in v2, with SMOD=1:
	- program MSB_PR
	- program LSB_PR
	- program START bit in control register
  for short programmed periods we may start the timer twice with this
  programming sequence, 1st time after LSB_PR is updated (and due to SMOD=1),
  2nd time after programming START bit in control register and in case
  programmed period already expire
- simplify mchp_pit64b_interrupt() by just reading ISR register, to clear the
  received interrupt, and just call irq_data->clkevt->event_handler(irq_data->clkevt);
- in mchp_pit64b_pres_compute() chose the bigest prescaler in case a good
  one not found
- document mchp_pit64b_pres_prepare() and simplified it a bit
- enforce gclk as mandatory
- introduce mchp_pit64b_timer_init() and mchp_pit64b_timer_cleanup()
- keep the clocksource timer base address in a mchp_pit64b_cs_base variable so
  that it could be used by mchp_pit64b_sched_read_clk()
- rework mchp_pit64b_dt_init() and return -EINVAL in case it was called
  more than two times: one for initialization of clockevent, one for
  initialization of clocksource
- introduce MCHP_PIT64B_MR_ONE_SHOT define
- move the new lines introduced in Makefile and Kconfig at the end of files
- collect Rob's Reviewed-by tag on patch 1/2
- review the commit message of patch 2/2

Changes in v2:
- remove clock-frequency DT binding and hardcoded it in the driver
- initialize best_pres variable in mchp_pit64b_pres_prepare()
- remove MCHP_PIT64B_DEF_FREQ 
- get rid of patches 3-5 from v1 [1] since there is no entry in MAINTAINERS file
  for this entry. It was removed in
  commit 44015a8181a5 ("MAINTAINERS: at91: remove the TC entry")

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

 drivers/clocksource/Kconfig                  |   6 +
 drivers/clocksource/Makefile                 |   1 +
 drivers/clocksource/timer-microchip-pit64b.c | 501 +++++++++++++++++++++++++++
 3 files changed, 508 insertions(+)
 create mode 100644 drivers/clocksource/timer-microchip-pit64b.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 5fdd76cb1768..eaadbc42ce4a 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -697,4 +697,10 @@ config INGENIC_TIMER
 	help
 	  Support for the timer/counter unit of the Ingenic JZ SoCs.
 
+config MICROCHIP_PIT64B
+	bool "Microchip PIT64B support"
+	depends on OF || COMPILE_TEST
+	help
+	  This option enables Microchip PIT64B timer.
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
index 000000000000..293e1ab39729
--- /dev/null
+++ b/drivers/clocksource/timer-microchip-pit64b.c
@@ -0,0 +1,501 @@
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
+#define MCHP_PIT64B_ISR_PERIOD		BIT(0)
+
+#define MCHP_PIT64B_TLSBR		0x20	/* Timer LSB Register */
+
+#define MCHP_PIT64B_TMSBR		0x24	/* Timer MSB Register */
+
+#define MCHP_PIT64B_PRES_MAX		0x10
+#define MCHP_PIT64B_LSBMASK		GENMASK_ULL(31, 0)
+#define MCHP_PIT64B_PRESCALER(p)	(MCHP_PIT64B_MR_PRES & ((p) << 8))
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
+ * @cycles: timer's number of cycles
+ * @irq: PIT64B's Linux IRQ number
+ * @pres: prescaler value for the chosen clock
+ */
+struct mchp_pit64b_timer {
+	void __iomem	*base;
+	struct clk	*pclk;
+	struct clk	*gclk;
+	u64		cycles;
+	u32		irq;
+	u8		pres;
+};
+
+/**
+ * mchp_pit64b_clksrc - PIT64B clocksource data structure
+ * @timer: PIT64B timer
+ * @clksrc: clocksource
+ */
+struct mchp_pit64b_clksrc {
+	struct mchp_pit64b_timer	timer;
+	struct clocksource		clksrc;
+};
+
+#define clksrc_to_mchp_pit64b_timer(x) \
+	(&(container_of(x, struct mchp_pit64b_clksrc, clksrc))->timer)
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
+#define clkevt_to_mchp_pit64b_timer(x) \
+	(&(container_of(x, struct mchp_pit64b_clkevt, clkevt))->timer)
+
+static void __iomem *mchp_pit64b_cs_base;
+
+static inline u64 mchp_pit64b_get_period(void __iomem *base)
+{
+	unsigned long	flags;
+	u32		low, high;
+
+	raw_local_irq_save(flags);
+	/*
+	 * When using a 64 bit period TLSB must be read first, followed by the
+	 * read of TMSB. This sequence generates an atomic read of the 64 bit
+	 * timer value whatever the lapse of time between the accesses.
+	 */
+	low = readl_relaxed(base + MCHP_PIT64B_TLSBR);
+	high = readl_relaxed(base + MCHP_PIT64B_TMSBR);
+	raw_local_irq_restore(flags);
+
+	return (((u64)high << 32) | low);
+}
+
+static inline void mchp_pit64b_reset(struct mchp_pit64b_timer *timer,
+				     u64 cycles, u32 mode)
+{
+	u32 low, high;
+
+	low = cycles & MCHP_PIT64B_LSBMASK;
+	high = cycles >> 32;
+
+	mode |= MCHP_PIT64B_PRESCALER(timer->pres);
+	if (timer->gclk)
+		mode |= MCHP_PIT64B_MR_SGCLK;
+
+	writel_relaxed(MCHP_PIT64B_CR_SWRST, timer->base + MCHP_PIT64B_CR);
+	writel_relaxed(mode, timer->base + MCHP_PIT64B_MR);
+	writel_relaxed(high, timer->base + MCHP_PIT64B_MSB_PR);
+	writel_relaxed(low, timer->base + MCHP_PIT64B_LSB_PR);
+	if (timer->irq) {
+		writel_relaxed(MCHP_PIT64B_IER_PERIOD,
+			       timer->base + MCHP_PIT64B_IER);
+	}
+	writel_relaxed(MCHP_PIT64B_CR_START, timer->base + MCHP_PIT64B_CR);
+}
+
+static u64 mchp_pit64b_clksrc_read(struct clocksource *cs)
+{
+	struct mchp_pit64b_timer *timer = clksrc_to_mchp_pit64b_timer(cs);
+
+	return mchp_pit64b_get_period(timer->base);
+}
+
+static u64 mchp_pit64b_sched_read_clk(void)
+{
+	return mchp_pit64b_get_period(mchp_pit64b_cs_base);
+}
+
+static int mchp_pit64b_clkevt_shutdown(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = clkevt_to_mchp_pit64b_timer(cedev);
+
+	writel_relaxed(MCHP_PIT64B_CR_SWRST, timer->base + MCHP_PIT64B_CR);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_periodic(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = clkevt_to_mchp_pit64b_timer(cedev);
+
+	mchp_pit64b_reset(timer, timer->cycles, MCHP_PIT64B_MR_CONT);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_oneshot(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = clkevt_to_mchp_pit64b_timer(cedev);
+
+	mchp_pit64b_reset(timer, timer->cycles, MCHP_PIT64B_MR_ONE_SHOT);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_next_event(unsigned long evt,
+					     struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = clkevt_to_mchp_pit64b_timer(cedev);
+
+	mchp_pit64b_reset(timer, evt, MCHP_PIT64B_MR_ONE_SHOT);
+
+	return 0;
+}
+
+static void mchp_pit64b_clkevt_suspend(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = clkevt_to_mchp_pit64b_timer(cedev);
+
+	writel_relaxed(MCHP_PIT64B_CR_SWRST, timer->base + MCHP_PIT64B_CR);
+	if (timer->gclk)
+		clk_disable_unprepare(timer->gclk);
+	clk_disable_unprepare(timer->pclk);
+}
+
+static void mchp_pit64b_clkevt_resume(struct clock_event_device *cedev)
+{
+	struct mchp_pit64b_timer *timer = clkevt_to_mchp_pit64b_timer(cedev);
+	u32 mode = MCHP_PIT64B_MR_ONE_SHOT;
+
+	clk_prepare_enable(timer->pclk);
+	if (timer->gclk)
+		clk_prepare_enable(timer->gclk);
+
+	if (clockevent_state_periodic(cedev))
+		mode = MCHP_PIT64B_MR_CONT;
+
+	mchp_pit64b_reset(timer, timer->cycles, mode);
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
+ * mchp_pit64b_pres_prepare - prepare PIT64B clocks and internal prescaler
+ *
+ * PIT64B timer may be fed by gclk or pclk. When gclk is used its rate has to
+ * be at least 3 times lower that pclk's rate. pclk rate is fixed, gclk rate
+ * could be changed via clock APIs. The chosen clock (pclk or gclk) could be
+ * divided by the internal PIT64B's divider.
+ *
+ * This function, first tries to use GCLK by requesting the desired rate from
+ * PMC and then using the internal PIT64B prescaller, if any, to reach the
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
+static int __init mchp_pit64b_pres_prepare(struct mchp_pit64b_timer *timer,
+					   unsigned long max_rate)
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
+	if (!best_diff)
+		goto done;
+
+pclk:
+	/* Check if requested rate could be obtained using PCLK. */
+	mchp_pit64b_pres_compute(&pres, pclk_rate, max_rate);
+	diff = abs(pclk_rate / (pres + 1) - max_rate);
+
+	if (best_diff > diff) {
+		/* Use PCLK. */
+		timer->gclk = NULL;
+		best_pres = pres;
+	} else {
+		/* Use GCLK. */
+		clk_set_rate(timer->gclk, gclk_round);
+	}
+
+done:
+	timer->pres = best_pres;
+	pr_info("PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\n",
+		timer->gclk ? "gclk" : "pclk", timer->pres,
+		timer->gclk ? gclk_round / (timer->pres + 1)
+			    : pclk_rate / (timer->pres + 1));
+
+	return 0;
+}
+
+static int __init mchp_pit64b_timer_init(struct device_node *node,
+					 struct mchp_pit64b_timer *timer,
+					 u32 freq, bool is_clkevt)
+{
+	int ret;
+
+	timer->pclk = of_clk_get_by_name(node, "pclk");
+	if (IS_ERR(timer->pclk))
+		return PTR_ERR(timer->pclk);
+
+	timer->gclk = of_clk_get_by_name(node, "gclk");
+	if (IS_ERR(timer->gclk))
+		return PTR_ERR(timer->gclk);
+
+	timer->base = of_iomap(node, 0);
+	if (!timer->base)
+		return -ENXIO;
+
+	if (is_clkevt) {
+		timer->irq = irq_of_parse_and_map(node, 0);
+		if (!timer->irq) {
+			ret = -ENODEV;
+			goto io_unmap;
+		}
+	}
+
+	ret = mchp_pit64b_pres_prepare(timer, freq);
+	if (ret)
+		goto irq_unmap;
+
+	ret = clk_prepare_enable(timer->pclk);
+	if (ret)
+		goto irq_unmap;
+
+	if (timer->gclk) {
+		ret = clk_prepare_enable(timer->gclk);
+		if (ret)
+			goto pclk_unprepare;
+	}
+
+	return 0;
+
+pclk_unprepare:
+	clk_disable_unprepare(timer->pclk);
+irq_unmap:
+	irq_dispose_mapping(timer->irq);
+io_unmap:
+	iounmap(timer->base);
+
+	return ret;
+}
+
+static void __init mchp_pit64b_timer_cleanup(struct mchp_pit64b_timer *timer)
+{
+	if (timer->gclk)
+		clk_disable_unprepare(timer->gclk);
+	clk_disable_unprepare(timer->pclk);
+	irq_dispose_mapping(timer->irq);
+	iounmap(timer->base);
+}
+
+static int __init mchp_pit64b_dt_init_clksrc(struct device_node *node)
+{
+	struct mchp_pit64b_clksrc *cs;
+	unsigned long clk_rate;
+	int ret;
+
+	cs = kzalloc(sizeof(*cs), GFP_KERNEL);
+	if (!cs)
+		return -ENOMEM;
+
+	ret = mchp_pit64b_timer_init(node, &cs->timer, MCHP_PIT64B_DEF_CS_FREQ,
+				     false);
+	if (ret)
+		goto free;
+
+	if (cs->timer.gclk)
+		clk_rate = clk_get_rate(cs->timer.gclk);
+	else
+		clk_rate = clk_get_rate(cs->timer.pclk);
+
+	clk_rate = clk_rate / (cs->timer.pres + 1);
+	cs->timer.cycles = ULLONG_MAX;
+	mchp_pit64b_reset(&cs->timer, cs->timer.cycles, MCHP_PIT64B_MR_CONT);
+
+	cs->clksrc.name = MCHP_PIT64B_NAME;
+	cs->clksrc.mask = CLOCKSOURCE_MASK(64);
+	cs->clksrc.flags = CLOCK_SOURCE_IS_CONTINUOUS;
+	cs->clksrc.rating = 210;
+	cs->clksrc.read = mchp_pit64b_clksrc_read;
+
+	ret = clocksource_register_hz(&cs->clksrc, clk_rate);
+	if (ret) {
+		pr_debug("clksrc: Failed to register PIT64B clocksource!\n");
+		goto timer_cleanup;
+	}
+
+	mchp_pit64b_cs_base = cs->timer.base;
+	sched_clock_register(mchp_pit64b_sched_read_clk, 64, clk_rate);
+
+	return 0;
+
+timer_cleanup:
+	mchp_pit64b_timer_cleanup(&cs->timer);
+free:
+	kfree(cs);
+	return ret;
+}
+
+static int __init mchp_pit64b_dt_init_clkevt(struct device_node *node)
+{
+	struct mchp_pit64b_clkevt *ce;
+	unsigned long clk_rate;
+	int ret;
+
+	ce = kzalloc(sizeof(*ce), GFP_KERNEL);
+	if (!ce)
+		return -ENOMEM;
+
+	ret = mchp_pit64b_timer_init(node, &ce->timer, MCHP_PIT64B_DEF_CE_FREQ,
+				     true);
+	if (ret)
+		goto free;
+
+	if (ce->timer.gclk)
+		clk_rate = clk_get_rate(ce->timer.gclk);
+	else
+		clk_rate = clk_get_rate(ce->timer.pclk);
+
+	clk_rate = clk_rate / (ce->timer.pres + 1);
+	ce->timer.cycles = DIV_ROUND_CLOSEST(clk_rate, HZ);
+
+	ce->clkevt.name = MCHP_PIT64B_NAME;
+	ce->clkevt.features = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_PERIODIC;
+	ce->clkevt.rating = 150;
+	ce->clkevt.set_state_shutdown = mchp_pit64b_clkevt_shutdown;
+	ce->clkevt.set_state_periodic = mchp_pit64b_clkevt_set_periodic;
+	ce->clkevt.set_state_oneshot = mchp_pit64b_clkevt_set_oneshot;
+	ce->clkevt.set_next_event = mchp_pit64b_clkevt_set_next_event;
+	ce->clkevt.suspend = mchp_pit64b_clkevt_suspend;
+	ce->clkevt.resume = mchp_pit64b_clkevt_resume;
+	ce->clkevt.cpumask = cpumask_of(0);
+	ce->clkevt.irq = ce->timer.irq;
+
+	ret = request_irq(ce->timer.irq, mchp_pit64b_interrupt, IRQF_TIMER,
+			  "pit64b_tick", ce);
+	if (ret) {
+		pr_debug("clkevt: Failed to setup PIT64B IRQ\n");
+		goto timer_cleanup;
+	}
+
+	clockevents_config_and_register(&ce->clkevt, clk_rate, 1, ULONG_MAX);
+
+	return 0;
+
+timer_cleanup:
+	mchp_pit64b_timer_cleanup(&ce->timer);
+free:
+	kfree(ce);
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
+		return mchp_pit64b_dt_init_clkevt(node);
+	case 1:
+		/* 2nd request, register clocksource. */
+		return mchp_pit64b_dt_init_clksrc(node);
+	}
+
+	/* The rest, don't care. */
+	return -EINVAL;
+}
+
+TIMER_OF_DECLARE(mchp_pit64b, "microchip,sam9x60-pit64b", mchp_pit64b_dt_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
