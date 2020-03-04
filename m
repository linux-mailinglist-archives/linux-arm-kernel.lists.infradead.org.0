Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A96179C09
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 23:55:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azPv/MGMnFyI58WY8Eym/r0CsuFxBTXDAlNuX8/XGaU=; b=ccdcaDICqBlzWQ
	axEpZzH0IE/W2mQxRSh1QucjOICH7O77DlLsgdmCTPKlLQpDbgQMcezZYu736dlbEgfZ15et1i3UX
	F2G4xp4JxQX1FKc9zYLelkYscHBXTxjS/xFm04B6dsVWK6+xH+6JhaXpFtTKrWeXb3OWHc+9Uxkys
	CMWBhmdR7bX9fHYbTAmFVNRnHwbsx0aJtTcmncVe3ub4xwdqUVUMp+49p6ucN/JohtFfYiE0FTZLa
	JN8wZKd3KaoUQddQHC0hqe5OvIeeeFPHhLK7gAB+t/P3+RtdfNCEKDR7GfRZtgAoG2DchlzxLXwFk
	FAepNB/pw+Fyr0tBelcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9cvM-0007uR-Ly; Wed, 04 Mar 2020 22:55:32 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9cud-0006Jp-2l
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 22:54:49 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id AA17481B1;
 Wed,  4 Mar 2020 22:55:31 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 3/3] Revert "gpio: omap: Fix lost edge wake-up interrupts"
Date: Wed,  4 Mar 2020 14:54:32 -0800
Message-Id: <20200304225433.37336-4-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200304225433.37336-1-tony@atomide.com>
References: <20200304225433.37336-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_145447_155119_98A46BBA 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 Dave Gerlach <d-gerlach@ti.com>, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 linux-gpio@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit a522f1d0c381c42f3ace13b8bbeeccabdd6d2e5c.

With cpu_pm handling fixed for omaps, and with gpio-omap now returning
notify error on pending interrupts, we can drop the old workaround for
seeing if there may be pending edge interrupts.

Depends-on: ARM: OMAP2+: Handle errors for cpu_pm
Depends-on: gpio: omap: Block idle on pending gpio interrupts
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Ladislav Michl <ladis@linux-mips.org>
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpio/gpio-omap.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -1102,23 +1102,13 @@ static void omap_gpio_idle(struct gpio_bank *bank, bool may_lose_context)
 {
 	struct device *dev = bank->chip.parent;
 	void __iomem *base = bank->base;
-	u32 mask, nowake;
+	u32 nowake;
 
 	bank->saved_datain = readl_relaxed(base + bank->regs->datain);
 
 	if (!bank->enabled_non_wakeup_gpios)
 		goto update_gpio_context_count;
 
-	/* Check for pending EDGE_FALLING, ignore EDGE_BOTH */
-	mask = bank->enabled_non_wakeup_gpios & bank->context.fallingdetect;
-	mask &= ~bank->context.risingdetect;
-	bank->saved_datain |= mask;
-
-	/* Check for pending EDGE_RISING, ignore EDGE_BOTH */
-	mask = bank->enabled_non_wakeup_gpios & bank->context.risingdetect;
-	mask &= ~bank->context.fallingdetect;
-	bank->saved_datain &= ~mask;
-
 	if (!may_lose_context)
 		goto update_gpio_context_count;
 
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
