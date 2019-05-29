Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23A12E241
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 18:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyg3f2/6kvE48+OjpbddQnaC48txKa6qHuP2UIE2NUo=; b=L0R/TIBqtaz+l+
	+YnmtMsP7Z0zf+vPt+iw1eEAphGKREq2c3s4toJ/MQgXicdcUmjQXGQcFZBs0Yld99Bn6SNgFAKr6
	sEcvgVney7j9MtItI6hYeghpJ7GSaFHPqMcnViFN8oTmfr8y6ij1pNG4qzjzjjkOFdZn7PU8cfbLX
	RTHBFhaqTTO7fOFbEI5dnlVZyguphtOnngzatpIJF6L5XD2A0Sbt0qeDLp3N6/b96eZ3VB2ekpHDC
	iLqLY38cdLqr5SP3/frN2Nown4/Cd+ueSggjaCIY0tkSMtlagHGTlYVM+G6IpMIt28w31oC1VdvnD
	b2Y6z7nExukNFkf/F1Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1Q6-0005xh-Cn; Wed, 29 May 2019 16:27:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1Q1-0005xa-7r
 for linux-arm-kernel@bombadil.infradead.org; Wed, 29 May 2019 16:27:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ARMrIG/5cZfRT4H3NbnEb54VZDA2QKb8Niloztdv9YE=; b=cvqO2LWisw7YibBWyiRNYLHf61
 6ro0kRrtN3lYYZ7k8gTCpguWV1T39H4c1JwSCddmD0JWrp2ef3ssA60J9SycpPKErRS6OYWqPiJlG
 4YtnnYlO4AhpArOwLcTHWST2LrePgN8erC6sdPMCIUUGacxwxWtDffHXmyG/z7smunBB8HV+hiOEv
 705XUz5whhkArzf+9Vsb1TyYgAYJ82m8H7dAkURGhmsDK62D3u1vk71DwYj2dLvNI595yJcFWKR1C
 E3sWxiYPulh49oxkdLYSPuEUCmxpMaasuvQEfN6yyUAP2lAGDE3J0XTgIIPGppWvPKG0ltM7HY0fX
 qTz2c6Xg==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1Px-0007fy-SF
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 16:27:11 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D6707C000F;
 Wed, 29 May 2019 16:26:32 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH] clocksource/drivers/tcb_clksrc: register delay timer
Date: Wed, 29 May 2019 18:26:29 +0200
Message-Id: <20190529162629.6949-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_122710_022666_D0C208B5 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 drivers/clocksource/timer-atmel-tcb.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

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
