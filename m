Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F06713197F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 21:37:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/2F3iw3DlC1xqcoZHQLVxDxUt75DEfjmAF47HkreqTA=; b=gPoyKrCkcG1X9i
	HI6RELEY/d1iclz7BxpHX/xA9KBRehD1klxk3wmhRXS4fc27bydmwWs2uV0+AhAjhQNJbIxDSu0HC
	6Xhvin5h+Fq9jKXFCrH6AqxyNzKngyAof8ejYGbgOLQDpvcNGazZZuQv1hryUiEruCANMYOYJJVwy
	+cq9B3y9UjwvW0ynG5XAxp+ndsG3XZhh99Z2zMP0Coab7wq6OPZzzUK+f/WJgiCJ7p7qxZzskTpfP
	rhe7Mo/c4IPleCyGEBX7k+xr/vHtA0zZUWqS1DBseOaFBt5fXwnnsg1ef6NX9Q8UQfP16CB554W34
	qrQABZ7UTuHYg9QgKn6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZ7k-0006pG-7K; Mon, 06 Jan 2020 20:37:16 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZ7c-0006oe-J7
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 20:37:09 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 4790C80AA;
 Mon,  6 Jan 2020 20:37:44 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH] clocksource: timer-ti-dm: Fix regression
Date: Mon,  6 Jan 2020 12:37:00 -0800
Message-Id: <20200106203700.21009-1-tony@atomide.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_123708_671023_BDB14E6D 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clean-up commit 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to
platform_get_irq") caused a regression where we now try to access
uninitialized data for timer:

drivers/clocksource/timer-ti-dm.c: In function 'omap_dm_timer_probe':
drivers/clocksource/timer-ti-dm.c:798:13: warning: 'timer' may be used
uninitialized in this function [-Wmaybe-uninitialized]

On boot we now get:

Unable to handle kernel NULL pointer dereference at virtual address
00000004
...
(omap_dm_timer_probe) from [<c061ac7c>] (platform_drv_probe+0x48/0x98)
(platform_drv_probe) from [<c0618c04>] (really_probe+0x1dc/0x348)
(really_probe) from [<c0618ef4>] (driver_probe_device+0x5c/0x160)

Let's fix the issue by moving platform_get_irq to happen after timer has
been allocated.

Fixes: 8c82723414d5 ("clocksource/drivers/timer-ti-dm: Switch to platform_get_irq")
Cc: Yangtao Li <tiny.windzz@gmail.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

I did not notice simlar issue with other patches in the series, but
please do double check Yangtao.

---
 drivers/clocksource/timer-ti-dm.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -795,14 +795,14 @@ static int omap_dm_timer_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	timer->irq = platform_get_irq(pdev, 0);
-	if (timer->irq < 0)
-		return timer->irq;
-
 	timer = devm_kzalloc(dev, sizeof(*timer), GFP_KERNEL);
 	if (!timer)
 		return  -ENOMEM;
 
+	timer->irq = platform_get_irq(pdev, 0);
+	if (timer->irq < 0)
+		return timer->irq;
+
 	timer->fclk = ERR_PTR(-ENODEV);
 	timer->io_base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(timer->io_base))
-- 
2.24.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
