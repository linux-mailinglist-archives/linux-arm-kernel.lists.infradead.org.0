Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D476179C08
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 23:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtzVvdOo091P4t1suQ0fM3qCdHy9gPH83Sj1RS1v1a8=; b=mBGmF2jhzCMZwt
	oqcWdY8NUsFQ7qVY2E1G1Rbi0NGdGh8nHDtdahdrDeGdPXhnO5ZuwPVVUAh0/a3s9mK8KtiZxUpSg
	LN8QKwV9mDmrnvfQL8lU1o3AK4E4FEGVIs+VfwVfOk6qcrM7VibTTApm3B19IztEOwbXDUrX9kTJO
	n5Ju3oCF0LwF9Q43Jx4DnntVD2ksDnrTKWAJCaApDGq5cf1jTrVH7D5HkcKfn3JUk2Bgygvyqv3Pe
	WkaF/lsoKUo7eHkJJBXWz5BX85QCfIpvfytaGpE5xurQ1aNItd1nU94Jn9+P5jrAXy9V+uQl4A22L
	1xmmAFgfj9j1QpM5/s7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9cv8-0006Sk-Dh; Wed, 04 Mar 2020 22:55:18 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9cuc-0006JD-3W
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 22:54:48 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id CBF1B81AC;
 Wed,  4 Mar 2020 22:55:29 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [PATCH 2/3] gpio: omap: Block idle on pending gpio interrupts
Date: Wed,  4 Mar 2020 14:54:31 -0800
Message-Id: <20200304225433.37336-3-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200304225433.37336-1-tony@atomide.com>
References: <20200304225433.37336-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_145446_188947_43153170 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>, Dave Gerlach <d-gerlach@ti.com>,
 Keerthy <j-keerthy@ti.com>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Tero Kristo <t-kristo@ti.com>, linux-gpio@vger.kernel.org,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Ladislav Michl <ladis@linux-mips.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the SoC cpuidle handling fixed for cpu_pm, we can now start to
return NOTIFY_BAD if there there are pending gpio interrupts.

This way the deeper SoC idle states can get blocked, and gpio latency
is improved in some cases. Note that this will not help with the
latency if the SoC has already entered a deeper idle state.

Note that this patch depends on cpu_pm properly handling the errors
returned by notifiers. For omap variants, this is fixed with patch
"ARM: OMAP2+: Handle errors for cpu_pm".

Cc: Dave Gerlach <d-gerlach@ti.com>
Cc: Grygorii Strashko <grygorii.strashko@ti.com>
Cc: Keerthy <j-keerthy@ti.com>
Cc: Ladislav Michl <ladis@linux-mips.org>
Cc: Russell King <rmk+kernel@armlinux.org.uk>
Cc: Tero Kristo <t-kristo@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 drivers/gpio/gpio-omap.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpio-omap.c b/drivers/gpio/gpio-omap.c
--- a/drivers/gpio/gpio-omap.c
+++ b/drivers/gpio/gpio-omap.c
@@ -1237,26 +1237,35 @@ static int gpio_omap_cpu_notifier(struct notifier_block *nb,
 {
 	struct gpio_bank *bank;
 	unsigned long flags;
+	int ret = NOTIFY_OK;
+	u32 isr, mask;
 
 	bank = container_of(nb, struct gpio_bank, nb);
 
 	raw_spin_lock_irqsave(&bank->lock, flags);
+	if (bank->is_suspended)
+		goto out_unlock;
+
 	switch (cmd) {
 	case CPU_CLUSTER_PM_ENTER:
-		if (bank->is_suspended)
+		mask = omap_get_gpio_irqbank_mask(bank);
+		isr = readl_relaxed(bank->base + bank->regs->irqstatus) & mask;
+		if (isr) {
+			ret = NOTIFY_BAD;
 			break;
+		}
 		omap_gpio_idle(bank, true);
 		break;
 	case CPU_CLUSTER_PM_ENTER_FAILED:
 	case CPU_CLUSTER_PM_EXIT:
-		if (bank->is_suspended)
-			break;
 		omap_gpio_unidle(bank);
 		break;
 	}
+
+out_unlock:
 	raw_spin_unlock_irqrestore(&bank->lock, flags);
 
-	return NOTIFY_OK;
+	return ret;
 }
 
 static const struct omap_gpio_reg_offs omap2_gpio_regs = {
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
