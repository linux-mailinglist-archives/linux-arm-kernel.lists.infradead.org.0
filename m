Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1F91D9BBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 17:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PpHvS3l3us4vp08uiiCO194CrVjyLGHjXL5/0WCuTQQ=; b=kKRhOva7jM+U+R
	meLP5iNfyWjmsoebhaXcPM7KsJKcQiGNTdKiI0qg4rWwvoL4Mnwv+n+93dmwRbGVerYBPs0WwgGFT
	Gh8cUa2kKIBmwDcn5Ug4SX/+9anvrhMhQzw8TB76k9PxpIG+ddgAz9yW6eJI8giPwKdECq9P7LkwR
	aQEOqLtWLHOM/jHl4Wu3YZtvquRgnVb2bKXkREYHMikewfcnau/nIvNJHA7Y1b+yvg/oieddNJ1ZZ
	z/kAYYBntDApIa5r0rB7PDktVVQ6HB6XklR9mP8UFWU1uO7tj0T/tQN1DCyeQn6EAUIDZmkh3KIBj
	Tszm5B+0cpVWbskrbRzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4XR-0001xf-Jw; Tue, 19 May 2020 15:52:17 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4XI-0001w3-FT
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 15:52:09 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 432F480FA;
 Tue, 19 May 2020 15:52:50 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH] clocksource/drivers/timer-ti-dm: Fix warning for set but not
 used
Date: Tue, 19 May 2020 08:51:57 -0700
Message-Id: <20200519155157.12804-1-tony@atomide.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_085208_558231_14FE633B 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We can get a warning for dmtimer_clocksource_init() with 'pa' set but
not used. This was used in the earlier revisions of the code but no
longer needed, so let's remove the unused pa and of_translate_address().
Let's also do it for dmtimer_clockevent_init() that has a similar issue.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/clocksource/timer-ti-dm-systimer.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clocksource/timer-ti-dm-systimer.c b/drivers/clocksource/timer-ti-dm-systimer.c
--- a/drivers/clocksource/timer-ti-dm-systimer.c
+++ b/drivers/clocksource/timer-ti-dm-systimer.c
@@ -514,7 +514,6 @@ static int __init dmtimer_clockevent_init(struct device_node *np)
 	struct clock_event_device *dev;
 	struct dmtimer_systimer *t;
 	int error;
-	u32 pa;
 
 	clkevt = kzalloc(sizeof(*clkevt), GFP_KERNEL);
 	if (!clkevt)
@@ -563,7 +562,6 @@ static int __init dmtimer_clockevent_init(struct device_node *np)
 	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->irq_ena);
 	writel_relaxed(OMAP_TIMER_INT_OVERFLOW, t->base + t->wakeup);
 
-	pa = of_translate_address(np, of_get_address(np, 0, NULL, NULL));
 	pr_info("TI gptimer clockevent: %s%lu Hz at %pOF\n",
 		of_find_property(np, "ti,timer-alwon", NULL) ?
 		"always-on " : "", t->rate, np->parent);
@@ -637,7 +635,6 @@ static int __init dmtimer_clocksource_init(struct device_node *np)
 	struct dmtimer_systimer *t;
 	struct clocksource *dev;
 	int error;
-	u32 pa;
 
 	clksrc = kzalloc(sizeof(*clksrc), GFP_KERNEL);
 	if (!clksrc)
@@ -666,7 +663,6 @@ static int __init dmtimer_clocksource_init(struct device_node *np)
 	writel_relaxed(OMAP_TIMER_CTRL_ST | OMAP_TIMER_CTRL_AR,
 		       t->base + t->ctrl);
 
-	pa = of_translate_address(np, of_get_address(np, 0, NULL, NULL));
 	pr_info("TI gptimer clocksource: %s%pOF\n",
 		of_find_property(np, "ti,timer-alwon", NULL) ?
 		"always-on " : "", np->parent);
-- 
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
