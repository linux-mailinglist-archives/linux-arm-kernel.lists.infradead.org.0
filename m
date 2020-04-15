Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137691A996F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFgfhk+3iYnqwVmPe9d90+L5QUQnrQmB8tfj4oF9l04=; b=iLQ10gks+Mmd4B
	lil0vb9l2mnxe6ZZ0agi7IAnO0dtm25bbkfrGmk4LQzXEE0MI0tVTP1rcYt2KMNBZXoz9kEuz4+5Z
	Zmnlu0QVf7j+iMGjI5Jc7pXpqNzQwcxrHXCgGINKGdNotwuOf9RJ2VhTpUh8ABDVIqVYfoRDB8vyP
	zhlX4EqjFr+FXxZLBuzLKjhD8B70LcgESCNnKlqgRT0WDwz/zwp4bipfVp/H8ubSnqWQtmRcpS1NP
	slaQVLavVJkltnW2SE8yOk2l1OzZC8SfJeuQOy9neMybnM1Ethc2aVBNKCsPi1MuLF+mk5snX34DC
	OG2uDx/YSDTtkwzr+orQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOehC-0002GG-9i; Wed, 15 Apr 2020 09:51:02 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOef9-0006Q6-Sx
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:48:57 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id C1B7A20007;
 Wed, 15 Apr 2020 09:48:51 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v2 5/9] clocksource/drivers/timer-atmel-tcb: rework 32khz
 clock selection
Date: Wed, 15 Apr 2020 11:48:22 +0200
Message-Id: <20200415094826.132562-6-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
References: <20200415094826.132562-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_024856_067516_4DB78BE0 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: kamel.bouhara@bootlin.com,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On all the supported SoCs, the slow clock is always ATMEL_TC_TIMER_CLOCK5,
avoid looking it up and pass it directly to setup_clkevents.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/clocksource/timer-atmel-tcb.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/clocksource/timer-atmel-tcb.c b/drivers/clocksource/timer-atmel-tcb.c
index 7427b07495a8..b255a4a1a36b 100644
--- a/drivers/clocksource/timer-atmel-tcb.c
+++ b/drivers/clocksource/timer-atmel-tcb.c
@@ -346,7 +346,7 @@ static void __init tcb_setup_single_chan(struct atmel_tc *tc, int mck_divisor_id
 	writel(ATMEL_TC_SYNC, tcaddr + ATMEL_TC_BCR);
 }
 
-static const u8 atmel_tcb_divisors[5] = { 2, 8, 32, 128, 0, };
+static const u8 atmel_tcb_divisors[] = { 2, 8, 32, 128 };
 
 static const struct of_device_id atmel_tcb_of_match[] = {
 	{ .compatible = "atmel,at91rm9200-tcb", .data = (void *)16, },
@@ -362,7 +362,6 @@ static int __init tcb_clksrc_init(struct device_node *node)
 	u64 (*tc_sched_clock)(void);
 	u32 rate, divided_rate = 0;
 	int best_divisor_idx = -1;
-	int clk32k_divisor_idx = -1;
 	int bits;
 	int i;
 	int ret;
@@ -416,12 +415,6 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		unsigned divisor = atmel_tcb_divisors[i];
 		unsigned tmp;
 
-		/* remember 32 KiHz clock for later */
-		if (!divisor) {
-			clk32k_divisor_idx = i;
-			continue;
-		}
-
 		tmp = rate / divisor;
 		pr_debug("TC: %u / %-3u [%d] --> %u\n", rate, divisor, i, tmp);
 		if (best_divisor_idx > 0) {
@@ -467,7 +460,7 @@ static int __init tcb_clksrc_init(struct device_node *node)
 		goto err_disable_t1;
 
 	/* channel 2:  periodic and oneshot timer support */
-	ret = setup_clkevents(&tc, clk32k_divisor_idx);
+	ret = setup_clkevents(&tc, ATMEL_TC_TIMER_CLOCK5);
 	if (ret)
 		goto err_unregister_clksrc;
 
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
