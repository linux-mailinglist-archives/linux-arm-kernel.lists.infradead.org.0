Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F231BEA62
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxDaMc8DS0PeY2Io0L6o2Co6LIsT+8QW1uqPGKRcXuo=; b=N9fmqJa6dXvs2S
	dt+dah7r5H9anlE/U6V4qPqxpYiMLfOs6TT04WdiWIeeQg7Q0LKR9DgIbkTrrON0hYHw15dEfVHa+
	n+CQPHrRocZ3O/EkPw7qykHoc92oKulVMZjBCOb5hq3uhJEmg0DnIaQhkdMRrvz0rzu3U+SP/2D5R
	6DgfasQSSCB0S+WvrKnr0E3Y2Ypfw9SNGC8DTcNGCTkCCG366yDPxYpB34mFZyHZxC/HzlE+xg8Jw
	V9JXFQPdjn5/0OpZvbBvHvSa4l2YyxuVJjP+3W5JdwEk+HtXbpA2twRQ/jT06eR4/1fT9VDcemuQo
	5rON6WB5oTZRZTM+JMAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTuev-00028R-Rl; Wed, 29 Apr 2020 21:54:25 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuef-00027X-OF
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:54:11 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id E37B2819C;
 Wed, 29 Apr 2020 21:54:55 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 01/15] clocksource/drivers/timer-ti-32k: Add support for
 initializing directly
Date: Wed, 29 Apr 2020 14:53:48 -0700
Message-Id: <20200429215402.18125-2-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429215402.18125-1-tony@atomide.com>
References: <20200429215402.18125-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145409_830335_DC6EC8BB 
X-CRM114-Status: GOOD (  14.18  )
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

Let's allow probing the 32k counter directly based on devicetree data to
prepare for dropping the related legacy platform code. Let's only do this
if the parent node is compatible with ti-sysc to make sure we have the
related devicetree data available.

Let's also show the 32k counter information before registering the
clocksource, now we see it after the clocksource information which is a
bit confusing.

Cc: linux-kernel@vger.kernel.org
Cc: linux-omap@vger.kernel.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Lokesh Vutla <lokeshvutla@ti.com>
Cc: Tero Kristo <t-kristo@ti.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/clocksource/timer-ti-32k.c | 48 +++++++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -24,6 +24,7 @@
  * Copyright (C) 2015 Texas Instruments Incorporated - http://www.ti.com
  */
 
+#include <linux/clk.h>
 #include <linux/init.h>
 #include <linux/time.h>
 #include <linux/sched_clock.h>
@@ -76,6 +77,49 @@ static u64 notrace omap_32k_read_sched_clock(void)
 	return ti_32k_read_cycles(&ti_32k_timer.cs);
 }
 
+static void __init ti_32k_timer_enable_clock(struct device_node *np,
+					     const char *name)
+{
+	struct clk *clock;
+	int error;
+
+	clock = of_clk_get_by_name(np->parent, name);
+	if (IS_ERR(clock)) {
+		/* Only some SoCs have a separate interface clock */
+		if (PTR_ERR(clock) == -EINVAL && !strncmp("ick", name, 3))
+			return;
+
+		pr_warn("%s: could not get clock %s %li\n",
+			__func__, name, PTR_ERR(clock));
+		return;
+	}
+
+	error = clk_prepare_enable(clock);
+	if (error) {
+		pr_warn("%s: could not enable %s: %i\n",
+			__func__, name, error);
+		return;
+	}
+}
+
+static void __init ti_32k_timer_module_init(struct device_node *np,
+					    void __iomem *base)
+{
+	void __iomem *sysc = base + 4;
+
+	if (!of_device_is_compatible(np->parent, "ti,sysc"))
+		return;
+
+	ti_32k_timer_enable_clock(np, "fck");
+	ti_32k_timer_enable_clock(np, "ick");
+
+	/*
+	 * Force idle module as wkup domain is active with MPU.
+	 * No need to tag the module disabled for ti-sysc probe.
+	 */
+	writel_relaxed(0, sysc);
+}
+
 static int __init ti_32k_timer_init(struct device_node *np)
 {
 	int ret;
@@ -90,6 +134,7 @@ static int __init ti_32k_timer_init(struct device_node *np)
 		ti_32k_timer.cs.flags |= CLOCK_SOURCE_SUSPEND_NONSTOP;
 
 	ti_32k_timer.counter = ti_32k_timer.base;
+	ti_32k_timer_module_init(np, ti_32k_timer.base);
 
 	/*
 	 * 32k sync Counter IP register offsets vary between the highlander
@@ -104,6 +149,8 @@ static int __init ti_32k_timer_init(struct device_node *np)
 	else
 		ti_32k_timer.counter += OMAP2_32KSYNCNT_CR_OFF_LOW;
 
+	pr_info("OMAP clocksource: 32k_counter at 32768 Hz\n");
+
 	ret = clocksource_register_hz(&ti_32k_timer.cs, 32768);
 	if (ret) {
 		pr_err("32k_counter: can't register clocksource\n");
@@ -111,7 +158,6 @@ static int __init ti_32k_timer_init(struct device_node *np)
 	}
 
 	sched_clock_register(omap_32k_read_sched_clock, 32, 32768);
-	pr_info("OMAP clocksource: 32k_counter at 32768 Hz\n");
 
 	return 0;
 }
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
