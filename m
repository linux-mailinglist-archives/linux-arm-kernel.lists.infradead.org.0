Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1933B50BB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:18:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vntGyV9J5e7ibcUwbF3mn4IGWcSrS6BfGHLGzYXFv6o=; b=WnQaGZunBnC2rP
	bTBnxPlG1+az4+hRz8c82pSAOT2PZT8ekIenPgtk+bjbE744rrUgRR4KvR+KVs7+78aVFWhiScLQH
	G7kWoeVRq9uLRBtkJ6L3CG6w3mYHeTmmGCSIuBN0RTpZZ4tHR/8wSmhOvAVim0v2JPrIAuanWoFYw
	4kEVi3YdNu9BwEfKpyHAE+pBzmWE4pOEWfU5bw8kxyhZuOjeSykQ2AS1LINXqAtV5hh4wMdoD4dHv
	99cXkqk13DNEsqo2AzsN7CABEOiibXp2p4B/1y3NUf/+au7+wvZ1nXLXWbcFuT2zob/WeSklWEjZb
	0XKn3pw+cKz8jiu0nnLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOrH-0002b1-Nd; Mon, 24 Jun 2019 13:18:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnQ-00083S-QV
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id g135so12741680wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zOhvfud1UplL6dXW+3V5RKRSj+/QqrgOZPNk1aW9k94=;
 b=sRBYCDtG70BsqOE2cPQ6Yb/vH8Y1K3vBWGkcB24MC4iIGeY7i5yLh2FHRMLBAXOBqr
 98GOJDOVmfzkuTio07OmLzeTtu0vX/3in+w0X1DKMy84oyCuzQqdAT6IQvZtyunkTmdz
 ATSj8Blww2SV7SlLPS70V5e3IB6X6gVf5AR/62cljr5RzLuMOtR5386b28q5mb87nqGl
 hE38amGYMXTld+ZIrRYf5aFg5QiJmCKrbQf8it1GUHIHiwCjDq+8pvBygIEbmTMjA8Z9
 43CJWrxMfaxXSjUGDGNOO0ECeh2L5K3JQ6AAdLGM7OZEsY8wMSAm6fU3szvcXzwUhITb
 zleg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zOhvfud1UplL6dXW+3V5RKRSj+/QqrgOZPNk1aW9k94=;
 b=guU/HjqFNyb/0C8RKYTejuTCWzAAgV08WetGBnvbdrFlFKOCbK/zhBcjrt/bjX50sF
 SH5L3HzA2GR4Zufq7v5eYDPPm5svobsqb+EM7wH0aAgNmJYMCeLCCEcXunyziqzy4Eyc
 czLO8xdhF9GkCWia+62Kc4CSqhO/6wDtFST2GEtF2w+UqoSgrRGLfvaD5MTLre9cXcGU
 EebbUlKqcAA2KOH+QvA3EbenB3IL5pzokiAaASIrvEZDN8nfS9rGn8i5iqHnQu9b7BwO
 MeWHyZlaQ/kDp5DKSs5XqfEJgapi19UZwsoRwbMAbGQYfTemJYgIQlB1yhOaoO0zzqR/
 FNVg==
X-Gm-Message-State: APjAAAWoWzjg4VOWAigcRBNNO+xzK3yx+VCmkvcaNuDnYDGllgzD0aiP
 m4sz39iPxk+4XK25uJNLy+U8JA==
X-Google-Smtp-Source: APXvYqwvo1iriPD0W/bfOCnyIWRUt6wyAk/QMkGV06b6J0/YPFZFlgm4xFkGNQUKUyarb4J5NZgvKg==
X-Received: by 2002:a7b:c776:: with SMTP id x22mr15710150wmk.55.1561382047666; 
 Mon, 24 Jun 2019 06:14:07 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 06/10] ARM: davinci: dm355: switch to using the clocksource
 driver
Date: Mon, 24 Jun 2019 15:13:47 +0200
Message-Id: <20190624131351.3732-7-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061409_065590_0750B034 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We now have a proper clocksource driver for davinci. Switch the dm355
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm355.c | 24 +++++++++++++-----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-davinci/dm355.c b/arch/arm/mach-davinci/dm355.c
index a38a3648345b..5de72d2fa8f0 100644
--- a/arch/arm/mach-davinci/dm355.c
+++ b/arch/arm/mach-davinci/dm355.c
@@ -30,7 +30,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -620,15 +621,15 @@ static struct davinci_id dm355_ids[] = {
 };
 
 /*
- * T0_BOT: Timer 0, bottom:  clockevent source for hrtimers
- * T0_TOP: Timer 0, top   :  clocksource for generic timekeeping
- * T1_BOT: Timer 1, bottom:  (used by DSP in TI DSPLink code)
- * T1_TOP: Timer 1, top   :  <unused>
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
  */
-static struct davinci_timer_info dm355_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+static const struct davinci_timer_cfg dm355_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 static struct plat_serial8250_port dm355_serial0_platform_data[] = {
@@ -706,7 +707,6 @@ static const struct davinci_soc_info davinci_soc_info_dm355 = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm355_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm355_pins),
-	.timer_info		= &dm355_timer_info,
 	.sram_dma		= 0x00010000,
 	.sram_len		= SZ_32K,
 };
@@ -733,6 +733,7 @@ void __init dm355_init_time(void)
 {
 	void __iomem *pll1, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DM355_REF_FREQ);
 
@@ -748,7 +749,8 @@ void __init dm355_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm355_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource dm355_pll2_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
