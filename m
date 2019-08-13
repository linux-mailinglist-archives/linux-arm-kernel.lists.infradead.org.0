Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471468BA32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 15:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QHofXpmtijF6EP83nmI78Zh8YDH+KRVTzdMXYwuj/Hw=; b=qpY3+c/S2F0U4M
	sEME5xyDF+V5UJTrzD3Jt1RBE9F2Ci+uEZVOU4e3cI8u/V1Z/JPULnObxM7mhK9XzGzlJrHmOIHwg
	LO6nOAjbtYojYGz9pLhawZq+cEutSTxJ/WhbGcgmKM72VcF8ej/aLPreAsv5DXI/C/0IUbJhVOY46
	DUA5BsoAY0cP6uivjf7jOAt2nXrCnA7PpvYR0X7pY4U3m5IImHkAh8bGBTF5Za9P4hl1m5GmO9dWE
	R0SdVVnEsm7C4Nx0A7yLISO7pGMi7OtYai4XZpmL2YzCs6S9iEZ+H5JdvB+l2ki+0pC30zrY05xxk
	A5jDNbJxT17fIju7Wn7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWtO-0003x9-Jh; Tue, 13 Aug 2019 13:31:14 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWtD-0003wl-GI
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 13:31:05 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5B75740007;
 Tue, 13 Aug 2019 13:30:52 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2] clocksource/drivers/tcb_clksrc: register delay timer
Date: Tue, 13 Aug 2019 15:30:50 +0200
Message-Id: <20190813133050.20482-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_063103_693946_C7AA9357 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alexander Dahl <ada@thorsis.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement and register delay timer to allow get_cycles() to work properly.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---

Change in v2:
 - depend on ARM to prevent build issue

 drivers/clocksource/Kconfig           |  2 +-
 drivers/clocksource/timer-atmel-tcb.c | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 5e9317dc3d39..a642c23b2fba 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -429,7 +429,7 @@ config ATMEL_ST
 
 config ATMEL_TCB_CLKSRC
 	bool "Atmel TC Block timer driver" if COMPILE_TEST
-	depends on HAS_IOMEM
+	depends on ARM && HAS_IOMEM
 	select TIMER_OF if OF
 	help
 	  Support for Timer Counter Blocks on Atmel SoCs.
diff --git a/drivers/clocksource/timer-atmel-tcb.c b/drivers/clocksource/timer-atmel-tcb.c
index 6ed31f9def7e..7427b07495a8 100644
--- a/drivers/clocksource/timer-atmel-tcb.c
+++ b/drivers/clocksource/timer-atmel-tcb.c
@@ -6,6 +6,7 @@
 #include <linux/irq.h>
 
 #include <linux/clk.h>
+#include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/ioport.h>
 #include <linux/io.h>
@@ -125,6 +126,18 @@ static u64 notrace tc_sched_clock_read32(void)
 	return tc_get_cycles32(&clksrc);
 }
 
+static struct delay_timer tc_delay_timer;
+
+static unsigned long tc_delay_timer_read(void)
+{
+	return tc_get_cycles(&clksrc);
+}
+
+static unsigned long notrace tc_delay_timer_read32(void)
+{
+	return tc_get_cycles32(&clksrc);
+}
+
 #ifdef CONFIG_GENERIC_CLOCKEVENTS
 
 struct tc_clkevt_device {
@@ -432,6 +445,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		/* setup ony channel 0 */
 		tcb_setup_single_chan(&tc, best_divisor_idx);
 		tc_sched_clock = tc_sched_clock_read32;
+		tc_delay_timer.read_current_timer = tc_delay_timer_read32;
 	} else {
 		/* we have three clocks no matter what the
 		 * underlying platform supports.
@@ -444,6 +458,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		/* setup both channel 0 & 1 */
 		tcb_setup_dual_chan(&tc, best_divisor_idx);
 		tc_sched_clock = tc_sched_clock_read;
+		tc_delay_timer.read_current_timer = tc_delay_timer_read;
 	}
 
 	/* and away we go! */
@@ -458,6 +473,9 @@ static int __init tcb_clksrc_init(struct device_node *node)
 
 	sched_clock_register(tc_sched_clock, 32, divided_rate);
 
+	tc_delay_timer.freq = divided_rate;
+	register_current_timer_delay(&tc_delay_timer);
+
 	return 0;
 
 err_unregister_clksrc:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
