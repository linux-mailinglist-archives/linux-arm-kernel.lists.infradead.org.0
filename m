Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C50F610ED66
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 17:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0VwaZUcnlDZs3p9r1fykVI+uExIEQ6Gi64H9EhLf2fU=; b=pvnJ/f1Cj8NWon
	tO2FcMH2Hv872T/VAhyQ32JhV/IZRWuMgIQl7CEzXduNWbdV9xZuk8OmWX3chtlxCZYEPgqNP00Ng
	/rchGPWpY6HFnPlr23JHYf/QVFFJ+XuPkUKooorxhhAqIAMO/jPolNFHchCGrdaNKK/orlaJ7zOXH
	Zgg4xCtB5BP9+BTxP7ATe4eQanK5LmO3ey0M6iKIl4wh8QC1KcgcW2BxvLWvlDu0ZxxbG4Zzhq4ls
	r6AilMxGOHPqk+rnYd1nTRE2aDkJFkNFrmaV/etk4NVhuYTHiQmCJM+rvZxEZbBWvVDzj3isHlyzM
	Pbr5WcUIeDQ/e4av+Eog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibop8-0003kI-7p; Mon, 02 Dec 2019 16:45:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibop0-0003jr-1L
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 16:45:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iboot-0005bb-Fx; Mon, 02 Dec 2019 17:45:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 John Stultz <john.stultz@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH] arm/twd: avoid waking deeply sleeping CPUs for rate change
 notifier
Date: Mon,  2 Dec 2019 17:45:06 +0100
Message-Id: <20191202164506.28845-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_084514_091202_E22F917D 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current clock notifier sends an IPI to all CPUs, even if they are in
deep sleep state with the local timer disabled and switched to tick
broadcast. This needlessly cuts the CPU sleep times, as nothing is gained
from updating a disabled TWDs rate.

Keep track of the enabled TWDs and only send an IPI to those CPUs with an
active local timer. As disabled TWDs may now miss a CPU frequency update
we need to make sure to refresh the rate on re-enabling of the timer.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/kernel/smp_twd.c | 31 +++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/smp_twd.c b/arch/arm/kernel/smp_twd.c
index 9a14f721a2b0..3055c2623d4d 100644
--- a/arch/arm/kernel/smp_twd.c
+++ b/arch/arm/kernel/smp_twd.c
@@ -29,6 +29,8 @@ static struct clk *twd_clk;
 static unsigned long twd_timer_rate;
 static DEFINE_PER_CPU(bool, percpu_setup_called);
 
+static cpumask_var_t active_twd_mask;
+
 static struct clock_event_device __percpu *twd_evt;
 static unsigned int twd_features =
 		CLOCK_EVT_FEAT_PERIODIC | CLOCK_EVT_FEAT_ONESHOT;
@@ -36,12 +38,24 @@ static int twd_ppi;
 
 static int twd_shutdown(struct clock_event_device *clk)
 {
+	cpumask_clear_cpu(smp_processor_id(), active_twd_mask);
+
 	writel_relaxed(0, twd_base + TWD_TIMER_CONTROL);
 	return 0;
 }
 
 static int twd_set_oneshot(struct clock_event_device *clk)
 {
+	cpumask_set_cpu(smp_processor_id(), active_twd_mask);
+
+	/*
+	 * When going from shutdown to oneshot we might have missed some
+	 * frequency updates if the CPU was sleeping. Make sure to update
+	 * the timer frequency with the current rate.
+	 */
+	if (clockevent_state_shutdown(clk))
+		clockevents_update_freq(clk, twd_timer_rate);
+
 	/* period set, and timer enabled in 'next_event' hook */
 	writel_relaxed(TWD_TIMER_CONTROL_IT_ENABLE | TWD_TIMER_CONTROL_ONESHOT,
 		       twd_base + TWD_TIMER_CONTROL);
@@ -54,6 +68,16 @@ static int twd_set_periodic(struct clock_event_device *clk)
 			     TWD_TIMER_CONTROL_IT_ENABLE |
 			     TWD_TIMER_CONTROL_PERIODIC;
 
+	cpumask_set_cpu(smp_processor_id(), active_twd_mask);
+
+	/*
+	 * When going from shutdown to periodic we might have missed some
+	 * frequency updates if the CPU was sleeping. Make sure to update
+	 * the timer frequency with the current rate.
+	 */
+	if (clockevent_state_shutdown(clk))
+		clockevents_update_freq(clk, twd_timer_rate);
+
 	writel_relaxed(DIV_ROUND_CLOSEST(twd_timer_rate, HZ),
 		       twd_base + TWD_TIMER_LOAD);
 	writel_relaxed(ctrl, twd_base + TWD_TIMER_CONTROL);
@@ -119,8 +143,8 @@ static int twd_rate_change(struct notifier_block *nb,
 	 * changing cpu.
 	 */
 	if (flags == POST_RATE_CHANGE)
-		on_each_cpu(twd_update_frequency,
-				  (void *)&cnd->new_rate, 1);
+		on_each_cpu_mask(active_twd_mask, twd_update_frequency,
+				 (void *)&cnd->new_rate, 1);
 
 	return NOTIFY_OK;
 }
@@ -273,6 +297,9 @@ static int __init twd_local_timer_common_register(struct device_node *np)
 {
 	int err;
 
+	if (!zalloc_cpumask_var(&active_twd_mask, GFP_KERNEL))
+		return -ENOMEM;
+
 	twd_evt = alloc_percpu(struct clock_event_device);
 	if (!twd_evt) {
 		err = -ENOMEM;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
