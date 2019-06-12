Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAEB41C48
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 08:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nTYxeVpX6yZXEcSmkYRvxvH5NXJCThac1R7UfCHy2eY=; b=Mv6y2z5zraB4B+
	DaKHfKh5/a43UhQuZwCQD+mQSTbUx7fd3JF3vxoUUW0geFeQvdAfAA3fglkNvK5v7ufvc7b2gy8nG
	TTcmEtk3MWVvWu4dhu5K/JclHQmx6ZinPxuBQHLb6GKLyYuVhDgGnuKWMD+fACb8nHYufc9wuUl98
	Mmm/77r1hKHG3tdwxZ4ANJXklS652olS/mK0knWo75eortrKtn2+iFPHm2fnSPl5r6+xRhen+23A2
	zs8B01ZlMKDfjuBxX8bY25eIGRHo8Tc+NhIdlFKBOBxSuuTrZub1nIdSUjBkGLbDTOf7HcnrCpOPV
	iXKt+lch0BYIi53A2UUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hawpn-0002ja-MP; Wed, 12 Jun 2019 06:34:11 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hawpf-0002j1-H6
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 06:34:05 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 4568780E2;
 Wed, 12 Jun 2019 06:34:22 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCHv3] gpio: gpio-omap: Fix lost edge wake-up interrupts
Date: Tue, 11 Jun 2019 23:33:52 -0700
Message-Id: <20190612063352.5760-1-tony@atomide.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_233403_612725_D3773A49 
X-CRM114-Status: GOOD (  12.01  )
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
Cc: Tero Kristo <t-kristo@ti.com>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>, Keerthy <j-keerthy@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, linux-gpio@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If an edge interrupt triggers while entering idle just before we save
GPIO datain register to saved_datain, the triggered GPIO will not be
noticed on wake-up. This is because the saved_datain and GPIO datain
are the same on wake-up in omap_gpio_unidle(). Let's fix this by
ignoring any pending edge interrupts for saved_datain.

This issue affects only idle states where the GPIO module internal
wake-up path is operational. For deeper idle states where the GPIO
module gets powered off, Linux generic wakeirqs must be used for
the padconf wake-up events with pinctrl-single driver. For examples,
please see "interrupts-extended" dts usage in many drivers.

This issue can be somewhat easily reproduced by pinging an idle system
with smsc911x Ethernet interface configured IRQ_TYPE_EDGE_FALLING. At
some point the smsc911x interrupts will just stop triggering. Also if
WLCORE WLAN is used with EDGE interrupt like it's documentation specifies,
we can see lost interrupts without this patch.

Note that in the long run we may be able to cancel entering idle by
returning an error in gpio_omap_cpu_notifier() on pending interrupts.
But let's fix the bug first.

Also note that because of the recent clean-up efforts this patch does
not apply directly to older kernels. This does fix a long term issue
though, and can be backported as needed.

Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Ladislav Michl <ladis@linux-mips.org>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---

This patch is against v5.2-rc series. FYI, it does not conflict with
the fixes (or the clean-up) in Russell's patch series.

Changes since v2:
- Add comments for what we're checking, drop comments for saved_datain

Changes since v1:
- Add handling to ignore EDGE_BOTH

---
 drivers/gpio/gpio-omap.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -1277,13 +1277,23 @@ static void omap_gpio_idle(struct gpio_bank *bank, bool may_lose_context)
 {
 	struct device *dev = bank->chip.parent;
 	void __iomem *base = bank->base;
-	u32 nowake;
+	u32 mask, nowake;
 
 	bank->saved_datain = readl_relaxed(base + bank->regs->datain);
 
 	if (!bank->enabled_non_wakeup_gpios)
 		goto update_gpio_context_count;
 
+	/* Check for pending EDGE_FALLING, ignore EDGE_BOTH */
+	mask = bank->enabled_non_wakeup_gpios & bank->context.fallingdetect;
+	mask &= ~bank->context.risingdetect;
+	bank->saved_datain |= mask;
+
+	/* Check for pending EDGE_RISING, ignore EDGE_BOTH */
+	mask = bank->enabled_non_wakeup_gpios & bank->context.risingdetect;
+	mask &= ~bank->context.fallingdetect;
+	bank->saved_datain &= ~mask;
+
 	if (!may_lose_context)
 		goto update_gpio_context_count;
 
-- 
2.21.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
