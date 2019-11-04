Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEE2EE33A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:11:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcQVBOyI0SmVg2QXzoAbKHUFMN0qeegE5p5zddKorRc=; b=lmCqGUll3STiwf
	vXyeoUZzf17xW6EMoNfl6ob1l5k4bLHZmcYSfhdUs9nLHiuXSguPEEPqgTwpSJ/xr5tWf8pZqvwok
	pDcueKfFkX+tdynuDV13pTlp6tH1sAdMKmlpO3nZzD8EGzikH43LU6kYVwXY3yjxzpsnw3WsDkc5y
	AW7a2jg3p+rntyJjsPOG566AGnjnIH8lq4qpR1/rKBbD+4//FA6ZRNtY5T3zW3FOZu71Z1xf0UEf4
	jGyIQGg1uKDDS5JeHNQmrt093S/03VVyyoQ1dJl3rkAcbUIRCT0BS6BkyAERI5x7BB6DTfkxM8myj
	ItWlVDGr3k9qbjJBmEpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRe0L-0001pI-Jx; Mon, 04 Nov 2019 15:10:53 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRe02-0001hw-OZ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:10:37 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: 89aPr0yE+NYPyS5uO+8Cysh/V60hzipQ3APpa8nTk48dczNlBydUjw1U+S4/iZCeGXVKTGfI5X
 tdiZ4QdSDMeVGJEzY3knvoLSRQiXP9pfkety86oS069kTp4iqrciJh+DUUBYbPN3Ls4gKsx+m/
 gm4wC2JGnnpxcpLrLJOauFrgBnqHjns6CZyHi66TrJusedvinO6pU15GhTC04Y2K8dukDkuWjA
 bm7UL6UZdtTpnCAWx1h9f0ts1D7tGTrUVD++8gub3TLPxOpub7OiwDrH4PInDmmE3+DazVsPge
 wco=
X-IronPort-AV: E=Sophos;i="5.68,267,1569308400"; d="scan'208";a="52785132"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2019 08:10:34 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 Nov 2019 08:10:27 -0700
Received: from m18063-ThinkPad-T460p.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 Nov 2019 08:10:24 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <daniel.lezcano@linaro.org>,
 <tglx@linutronix.de>
Subject: [PATCH v2 2/2] clocksource/drivers/timer-microchip-pit64b: add
 Microchip PIT64B support
Date: Mon, 4 Nov 2019 17:10:04 +0200
Message-ID: <1572880204-4514-3-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
References: <1572880204-4514-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_071034_887680_4E311788 
X-CRM114-Status: GOOD (  21.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
set the period value (compare value). TLSB and TMSB keeps the current value
of the counter. After a compare the TLSB and TMSB register resets. Apart
from this the hardware has SMOD bit in mode register that allow to
reconfigure the timer without reset and start commands (start command
while timer is active is ignored).
The driver uses PIT64B timer as clocksource or clockevent. First requested
timer would be registered as clockevent, second one would be registered as
clocksource. Individual PIT64B hardware resources were used for clocksource
and clockevent to be able to support high resolution timers with this
hardware implementation.

Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---

Hi Nicolas,

You Acked-by on v1 [1] of this patch but I didn't collect it in this version
because I removed the the DT bindings for clock-frequency and intead hardcoded
it in the driver: 32KHz for clockevent, 5MHz for clocksource.

Thank you,
Claudiu Beznea

Changes in v2:
- do not select timer's frequency via DT binding but instead hardcoded it
- initialize best_pres variable in mchp_pit64b_pres_prepare()
- remove MCHP_PIT64B_DEF_FREQ 

[1] https://lore.kernel.org/lkml/1552580772-8499-1-git-send-email-claudiu.beznea@microchip.com/

 drivers/clocksource/Kconfig                  |   6 +
 drivers/clocksource/Makefile                 |   1 +
 drivers/clocksource/timer-microchip-pit64b.c | 462 +++++++++++++++++++++++++++
 3 files changed, 469 insertions(+)
 create mode 100644 drivers/clocksource/timer-microchip-pit64b.c

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index f35a53ce8988..e423610cd627 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -472,6 +472,12 @@ config OXNAS_RPS_TIMER
 config SYS_SUPPORTS_SH_CMT
         bool
 
+config MICROCHIP_PIT64B
+	bool "Microchip PIT64B support"
+	depends on OF || COMPILE_TEST
+	help
+	  This option enables Microchip PIT64B timer.
+
 config MTK_TIMER
 	bool "Mediatek timer driver" if COMPILE_TEST
 	depends on HAS_IOMEM
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 4dfe4225ece7..a41dcfffb87d 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -37,6 +37,7 @@ obj-$(CONFIG_U300_TIMER)	+= timer-u300.o
 obj-$(CONFIG_SUN4I_TIMER)	+= timer-sun4i.o
 obj-$(CONFIG_SUN5I_HSTIMER)	+= timer-sun5i.o
 obj-$(CONFIG_MESON6_TIMER)	+= timer-meson6.o
+obj-$(CONFIG_MICROCHIP_PIT64B)	+= timer-microchip-pit64b.o
 obj-$(CONFIG_TEGRA_TIMER)	+= timer-tegra.o
 obj-$(CONFIG_VT8500_TIMER)	+= timer-vt8500.o
 obj-$(CONFIG_NSPIRE_TIMER)	+= timer-zevio.o
diff --git a/drivers/clocksource/timer-microchip-pit64b.c b/drivers/clocksource/timer-microchip-pit64b.c
new file mode 100644
index 000000000000..3fa65c7b4470
--- /dev/null
+++ b/drivers/clocksource/timer-microchip-pit64b.c
@@ -0,0 +1,462 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (C) 2019 Microchip Technology Inc.
+// Copyright (C) 2019 Claudiu Beznea (claudiu.beznea@microchip.com)
+
+#include <linux/clk.h>
+#include <linux/clockchips.h>
+#include <linux/interrupt.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/sched_clock.h>
+#include <linux/slab.h>
+
+#define MCHP_PIT64B_CR		0x00	/* Control Register */
+#define MCHP_PIT64B_CR_START	BIT(0)
+#define MCHP_PIT64B_CR_SWRST	BIT(8)
+
+#define MCHP_PIT64B_MR		0x04	/* Mode Register */
+#define MCHP_PIT64B_MR_CONT	BIT(0)
+#define MCHP_PIT64B_MR_SGCLK	BIT(3)
+#define MCHP_PIT64B_MR_SMOD	BIT(4)
+#define MCHP_PIT64B_MR_PRES	GENMASK(11, 8)
+
+#define MCHP_PIT64B_LSB_PR	0x08	/* LSB Period Register */
+
+#define MCHP_PIT64B_MSB_PR	0x0C	/* MSB Period Register */
+
+#define MCHP_PIT64B_IER		0x10	/* Interrupt Enable Register */
+#define MCHP_PIT64B_IER_PERIOD	BIT(0)
+
+#define MCHP_PIT64B_ISR		0x1C	/* Interrupt Status Register */
+#define MCHP_PIT64B_ISR_PERIOD	BIT(0)
+
+#define MCHP_PIT64B_TLSBR	0x20	/* Timer LSB Register */
+
+#define MCHP_PIT64B_TMSBR	0x24	/* Timer MSB Register */
+
+#define MCHP_PIT64B_PRES_MAX	0x10
+#define MCHP_PIT64B_LSBMASK	GENMASK_ULL(31, 0)
+#define MCHP_PIT64B_PRESCALER(p)	(MCHP_PIT64B_MR_PRES & ((p) << 8))
+#define MCHP_PIT64B_DEF_CS_FREQ		5000000UL	/* 5 MHz */
+#define MCHP_PIT64B_DEF_CE_FREQ		32768		/* 32 KHz */
+
+#define MCHP_PIT64B_NAME	"pit64b"
+
+struct mchp_pit64b_common_data {
+	void __iomem *base;
+	struct clk *pclk;
+	struct clk *gclk;
+	u64 cycles;
+	u8 pres;
+};
+
+struct mchp_pit64b_clksrc_data {
+	struct clocksource *clksrc;
+	struct mchp_pit64b_common_data *cd;
+};
+
+struct mchp_pit64b_clkevt_data {
+	struct clock_event_device *clkevt;
+	struct mchp_pit64b_common_data *cd;
+};
+
+static struct mchp_pit64b_data {
+	struct mchp_pit64b_clksrc_data *csd;
+	struct mchp_pit64b_clkevt_data *ced;
+} data;
+
+static inline u32 mchp_pit64b_read(void __iomem *base, u32 offset)
+{
+	return readl_relaxed(base + offset);
+}
+
+static inline void mchp_pit64b_write(void __iomem *base, u32 offset, u32 val)
+{
+	writel_relaxed(val, base + offset);
+}
+
+static inline u64 mchp_pit64b_get_period(void __iomem *base)
+{
+	u32 lsb, msb;
+
+	/* LSB must be read first to guarantee an atomic read of the 64 bit
+	 * timer.
+	 */
+	lsb = mchp_pit64b_read(base, MCHP_PIT64B_TLSBR);
+	msb = mchp_pit64b_read(base, MCHP_PIT64B_TMSBR);
+
+	return (((u64)msb << 32) | lsb);
+}
+
+static inline void mchp_pit64b_set_period(void __iomem *base, u64 cycles)
+{
+	u32 lsb, msb;
+
+	lsb = cycles & MCHP_PIT64B_LSBMASK;
+	msb = cycles >> 32;
+
+	/* LSB must be write last to guarantee an atomic update of the timer
+	 * even when SMOD=1.
+	 */
+	mchp_pit64b_write(base, MCHP_PIT64B_MSB_PR, msb);
+	mchp_pit64b_write(base, MCHP_PIT64B_LSB_PR, lsb);
+}
+
+static inline void mchp_pit64b_reset(struct mchp_pit64b_common_data *data,
+				     u32 mode, bool irq_ena)
+{
+	mode |= MCHP_PIT64B_PRESCALER(data->pres);
+	if (data->gclk)
+		mode |= MCHP_PIT64B_MR_SGCLK;
+
+	mchp_pit64b_write(data->base, MCHP_PIT64B_CR, MCHP_PIT64B_CR_SWRST);
+	mchp_pit64b_write(data->base, MCHP_PIT64B_MR, mode);
+	mchp_pit64b_set_period(data->base, data->cycles);
+	if (irq_ena)
+		mchp_pit64b_write(data->base, MCHP_PIT64B_IER,
+				  MCHP_PIT64B_IER_PERIOD);
+	mchp_pit64b_write(data->base, MCHP_PIT64B_CR, MCHP_PIT64B_CR_START);
+}
+
+static u64 mchp_pit64b_read_clk(struct clocksource *cs)
+{
+	return mchp_pit64b_get_period(data.csd->cd->base);
+}
+
+static u64 mchp_sched_read_clk(void)
+{
+	return mchp_pit64b_get_period(data.csd->cd->base);
+}
+
+static struct clocksource mchp_pit64b_clksrc = {
+	.name = MCHP_PIT64B_NAME,
+	.mask = CLOCKSOURCE_MASK(64),
+	.flags = CLOCK_SOURCE_IS_CONTINUOUS,
+	.rating = 210,
+	.read = mchp_pit64b_read_clk,
+};
+
+static int mchp_pit64b_clkevt_shutdown(struct clock_event_device *cedev)
+{
+	mchp_pit64b_write(data.ced->cd->base, MCHP_PIT64B_CR,
+			  MCHP_PIT64B_CR_SWRST);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_periodic(struct clock_event_device *cedev)
+{
+	mchp_pit64b_reset(data.ced->cd, MCHP_PIT64B_MR_CONT, true);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_oneshot(struct clock_event_device *cedev)
+{
+	mchp_pit64b_reset(data.ced->cd, MCHP_PIT64B_MR_SMOD, true);
+
+	return 0;
+}
+
+static int mchp_pit64b_clkevt_set_next_event(unsigned long evt,
+					     struct clock_event_device *cedev)
+{
+	mchp_pit64b_set_period(data.ced->cd->base, evt);
+	mchp_pit64b_write(data.ced->cd->base, MCHP_PIT64B_CR,
+			  MCHP_PIT64B_CR_START);
+
+	return 0;
+}
+
+static void mchp_pit64b_clkevt_suspend(struct clock_event_device *cedev)
+{
+	mchp_pit64b_write(data.ced->cd->base, MCHP_PIT64B_CR,
+			  MCHP_PIT64B_CR_SWRST);
+	if (data.ced->cd->gclk)
+		clk_disable_unprepare(data.ced->cd->gclk);
+	clk_disable_unprepare(data.ced->cd->pclk);
+}
+
+static void mchp_pit64b_clkevt_resume(struct clock_event_device *cedev)
+{
+	u32 mode = MCHP_PIT64B_MR_SMOD;
+
+	clk_prepare_enable(data.ced->cd->pclk);
+	if (data.ced->cd->gclk)
+		clk_prepare_enable(data.ced->cd->gclk);
+
+	if (clockevent_state_periodic(data.ced->clkevt))
+		mode = MCHP_PIT64B_MR_CONT;
+
+	mchp_pit64b_reset(data.ced->cd, mode, true);
+}
+
+static struct clock_event_device mchp_pit64b_clkevt = {
+	.name = MCHP_PIT64B_NAME,
+	.features = CLOCK_EVT_FEAT_ONESHOT | CLOCK_EVT_FEAT_PERIODIC,
+	.rating = 150,
+	.set_state_shutdown = mchp_pit64b_clkevt_shutdown,
+	.set_state_periodic = mchp_pit64b_clkevt_set_periodic,
+	.set_state_oneshot = mchp_pit64b_clkevt_set_oneshot,
+	.set_next_event = mchp_pit64b_clkevt_set_next_event,
+	.suspend = mchp_pit64b_clkevt_suspend,
+	.resume = mchp_pit64b_clkevt_resume,
+};
+
+static irqreturn_t mchp_pit64b_interrupt(int irq, void *dev_id)
+{
+	struct mchp_pit64b_clkevt_data *irq_data = dev_id;
+
+	if (data.ced != irq_data)
+		return IRQ_NONE;
+
+	if (mchp_pit64b_read(irq_data->cd->base, MCHP_PIT64B_ISR) &
+	    MCHP_PIT64B_ISR_PERIOD) {
+		irq_data->clkevt->event_handler(irq_data->clkevt);
+		return IRQ_HANDLED;
+	}
+
+	return IRQ_NONE;
+}
+
+static int __init mchp_pit64b_pres_compute(u32 *pres, u32 clk_rate,
+					   u32 max_rate)
+{
+	u32 tmp;
+
+	for (*pres = 0; *pres < MCHP_PIT64B_PRES_MAX; (*pres)++) {
+		tmp = clk_rate / (*pres + 1);
+		if (tmp <= max_rate)
+			break;
+	}
+
+	if (*pres == MCHP_PIT64B_PRES_MAX)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int __init mchp_pit64b_pres_prepare(struct mchp_pit64b_common_data *cd,
+					   unsigned long max_rate)
+{
+	unsigned long pclk_rate, diff = 0, best_diff = ULONG_MAX;
+	long gclk_round = 0;
+	u32 pres, best_pres = 0;
+	int ret = 0;
+
+	pclk_rate = clk_get_rate(cd->pclk);
+	if (!pclk_rate)
+		return -EINVAL;
+
+	if (cd->gclk) {
+		gclk_round = clk_round_rate(cd->gclk, max_rate);
+		if (gclk_round < 0)
+			goto pclk;
+
+		if (pclk_rate / gclk_round < 3)
+			goto pclk;
+
+		ret = mchp_pit64b_pres_compute(&pres, gclk_round, max_rate);
+		if (ret)
+			best_diff = abs(gclk_round - max_rate);
+		else
+			best_diff = abs(gclk_round / (pres + 1) - max_rate);
+		best_pres = pres;
+	}
+
+pclk:
+	/* Check if requested rate could be obtained using PCLK. */
+	ret = mchp_pit64b_pres_compute(&pres, pclk_rate, max_rate);
+	if (ret)
+		diff = abs(pclk_rate - max_rate);
+	else
+		diff = abs(pclk_rate / (pres + 1) - max_rate);
+
+	if (best_diff > diff) {
+		/* Use PCLK. */
+		cd->gclk = NULL;
+		best_pres = pres;
+	} else {
+		clk_set_rate(cd->gclk, gclk_round);
+	}
+
+	cd->pres = best_pres;
+
+	pr_info("PIT64B: using clk=%s with prescaler %u, freq=%lu [Hz]\n",
+		cd->gclk ? "gclk" : "pclk", cd->pres,
+		cd->gclk ? gclk_round / (cd->pres + 1)
+			 : pclk_rate / (cd->pres + 1));
+
+	return 0;
+}
+
+static int __init mchp_pit64b_dt_init_clksrc(struct mchp_pit64b_common_data *cd)
+{
+	struct mchp_pit64b_clksrc_data *csd;
+	unsigned long clk_rate;
+	int ret;
+
+	csd = kzalloc(sizeof(*csd), GFP_KERNEL);
+	if (!csd)
+		return -ENOMEM;
+
+	csd->cd = cd;
+
+	if (csd->cd->gclk)
+		clk_rate = clk_get_rate(csd->cd->gclk);
+	else
+		clk_rate = clk_get_rate(csd->cd->pclk);
+
+	clk_rate = clk_rate / (cd->pres + 1);
+	csd->cd->cycles = ULLONG_MAX;
+	mchp_pit64b_reset(csd->cd, MCHP_PIT64B_MR_CONT, false);
+
+	data.csd = csd;
+
+	csd->clksrc = &mchp_pit64b_clksrc;
+
+	ret = clocksource_register_hz(csd->clksrc, clk_rate);
+	if (ret) {
+		pr_debug("clksrc: Failed to register PIT64B clocksource!\n");
+		goto free;
+	}
+
+	sched_clock_register(mchp_sched_read_clk, 64, clk_rate);
+
+	return 0;
+
+free:
+	kfree(csd);
+	data.csd = NULL;
+
+	return ret;
+}
+
+static int __init mchp_pit64b_dt_init_clkevt(struct mchp_pit64b_common_data *cd,
+					     u32 irq)
+{
+	struct mchp_pit64b_clkevt_data *ced;
+	unsigned long clk_rate;
+	int ret;
+
+	ced = kzalloc(sizeof(*ced), GFP_KERNEL);
+	if (!ced)
+		return -ENOMEM;
+
+	ced->cd = cd;
+
+	if (ced->cd->gclk)
+		clk_rate = clk_get_rate(ced->cd->gclk);
+	else
+		clk_rate = clk_get_rate(ced->cd->pclk);
+
+	clk_rate = clk_rate / (ced->cd->pres + 1);
+	ced->cd->cycles = DIV_ROUND_CLOSEST(clk_rate, HZ);
+
+	ret = request_irq(irq, mchp_pit64b_interrupt, IRQF_TIMER, "pit64b_tick",
+			  ced);
+	if (ret) {
+		pr_debug("clkevt: Failed to setup PIT64B IRQ\n");
+		goto free;
+	}
+
+	data.ced = ced;
+
+	/* Set up and register clockevents. */
+	ced->clkevt = &mchp_pit64b_clkevt;
+	ced->clkevt->cpumask = cpumask_of(0);
+	ced->clkevt->irq = irq;
+	clockevents_config_and_register(ced->clkevt, clk_rate, 1, ULONG_MAX);
+
+	return 0;
+
+free:
+	kfree(ced);
+	data.ced = NULL;
+
+	return ret;
+}
+
+static int __init mchp_pit64b_dt_init(struct device_node *node)
+{
+	struct mchp_pit64b_common_data *cd;
+	u32 irq;
+	int ret;
+
+	if (data.csd && data.ced)
+		return -EBUSY;
+
+	cd = kzalloc(sizeof(*cd), GFP_KERNEL);
+	if (!cd)
+		return -ENOMEM;
+
+	cd->pclk = of_clk_get_by_name(node, "pclk");
+	if (IS_ERR(cd->pclk)) {
+		ret = PTR_ERR(cd->pclk);
+		goto free;
+	}
+
+	cd->gclk = of_clk_get_by_name(node, "gclk");
+	if (IS_ERR(cd->gclk))
+		cd->gclk = NULL;
+
+	ret = mchp_pit64b_pres_prepare(cd, data.ced ? MCHP_PIT64B_DEF_CS_FREQ :
+						      MCHP_PIT64B_DEF_CE_FREQ);
+	if (ret)
+		goto free;
+
+	cd->base = of_iomap(node, 0);
+	if (!cd->base) {
+		pr_debug("%s: Could not map PIT64B address!\n",
+			 MCHP_PIT64B_NAME);
+		ret = -ENXIO;
+		goto free;
+	}
+
+	ret = clk_prepare_enable(cd->pclk);
+	if (ret)
+		goto unmap;
+
+	if (cd->gclk) {
+		ret = clk_prepare_enable(cd->gclk);
+		if (ret)
+			goto pclk_unprepare;
+	}
+
+	if (!data.ced) {
+		irq = irq_of_parse_and_map(node, 0);
+		if (!irq) {
+			pr_debug("%s: Failed to get PIT64B clockevent IRQ!\n",
+				 MCHP_PIT64B_NAME);
+			ret = -ENODEV;
+			goto gclk_unprepare;
+		}
+		ret = mchp_pit64b_dt_init_clkevt(cd, irq);
+		if (ret)
+			goto irq_unmap;
+	} else {
+		ret = mchp_pit64b_dt_init_clksrc(cd);
+		if (ret)
+			goto gclk_unprepare;
+	}
+
+	return 0;
+
+irq_unmap:
+	irq_dispose_mapping(irq);
+gclk_unprepare:
+	if (cd->gclk)
+		clk_disable_unprepare(cd->gclk);
+pclk_unprepare:
+	clk_disable_unprepare(cd->pclk);
+unmap:
+	iounmap(cd->base);
+free:
+	kfree(cd);
+
+	return ret;
+}
+
+TIMER_OF_DECLARE(mchp_pit64b_clksrc, "microchip,sam9x60-pit64b",
+		 mchp_pit64b_dt_init);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
