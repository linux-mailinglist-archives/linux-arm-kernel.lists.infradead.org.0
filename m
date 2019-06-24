Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B70D350BA7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/YqG2t9SU+Xm3W0df9XXcFLyZH7ky81TPbk7phGTzo=; b=ur/UkuqVV196wx
	MjeCnk8YeOKIDXuKLiAHNkbLRPBUj2A/gHijQq1/XH6e+PGUMa2W0BwsK+VeF4AiTtO2tElQnoyk9
	hg2ed8k+aOYChVOHC6lKd9yFmNp+LVNls5yXDOlJ0DMaIjT6d5a/tNgRTBJLIlx10cNGYxlGODuYF
	euBBBdJW+druFkdTbMKOx0R+yM5lSAC1sXGXFeO7ZeBGaEvnL0eoiw4oHpRzmohokTzU1H4Yow1qd
	zc+7YPARi2eHCxqcoPmZDkbitIwQcjwdmPSInm7VT3SsxMHtDE0pTly+E0pWN2q99V6eYsuwRIMNI
	F8NiRooWl7gHESzNQcOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOqM-00022i-8D; Mon, 24 Jun 2019 13:17:10 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnP-00082f-1o
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:08 +0000
Received: by mail-wm1-x341.google.com with SMTP id c6so13376001wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7QzkaTCV3I7NgoLWSlqzvltTcK62DUmr4R57ORffNTM=;
 b=edO6aPEP58ioKdqIasfS9Zjvh73POdMrN4X8etJfFka0LxkGuLgGoDrv0M5pwm88uP
 /yX8icxiLs0Oc9gECnhNwwKVhmlPrhJ7PmEOeK0UFsEKakynLLLau+4psJ7T6IK86qHn
 nOqqSXD7encRu+XgoVp9KWbCJVb9oiD5zrTuXnDZ0EVSh3jK53n2X6481JVPLfD6Nbu+
 +gn5K+BKREHFEf9sf6p4T1qjPV6JZuYs73AIl1/s+eHhTcU5VDs/eGxVcvQfBSNV+5/H
 yLfaZ5pcktJMHz5511G3nE1ssKyQDCcqD3wwO8qjaCg/gg0oKlUvAOf3aLytgJMZqKSE
 T1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7QzkaTCV3I7NgoLWSlqzvltTcK62DUmr4R57ORffNTM=;
 b=OyUREsTgtlcnIRT+XwvgeW1Z6vH1PZqhxCsk1pRaWByRThzt9wJs9w4rulvdChGCex
 N/oeIFl/Mtp9geTh0M0cnoVtaF3Vp6T/XaCW5SkwX3hgZ07NW0jSVnRfdJ+X0wGAzADY
 EQM1K5CL/kfx/NvBJEfgQfs7auRp6LE/UNrlGwYt5LGJnWAjBff3RdhQJnpZiDFNW3mm
 0Kd+K47c7a0W4wwVFR/E3AEMotOAQE5mmbko+tBPtGFrPsp+SSgIam33z+ohZGY9gQka
 klau2rPrDJc67WDTHCkue38lV03FmLEeZebnx24KcVCvkbVEsMC7Z65IzJfHjGfPiUi0
 egcA==
X-Gm-Message-State: APjAAAX1Q1RE8lwgxA4ecFPdA/ix3oEhnTEiFOtSlyfHQQyJs+K28kg1
 81MUYFoavVGlxFtcsv1WzP5KMw==
X-Google-Smtp-Source: APXvYqwVFqcCUQwQhci8y9g7envcvDcRv+Wn+pc6LI5R5mNzl8SLt8XJoW+JJe2vPDvfeIL0skR+Gw==
X-Received: by 2002:a7b:c34b:: with SMTP id l11mr16313292wmj.69.1561382045600; 
 Mon, 24 Jun 2019 06:14:05 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 04/10] ARM: davinci: da830: switch to using the clocksource
 driver
Date: Mon, 24 Jun 2019 15:13:45 +0200
Message-Id: <20190624131351.3732-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061407_245756_EEB41ABC 
X-CRM114-Status: GOOD (  15.02  )
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

We now have a proper clocksource driver for davinci. Switch the da830
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/da830.c | 41 ++++++++++++-----------------------
 1 file changed, 14 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mach-davinci/da830.c b/arch/arm/mach-davinci/da830.c
index 220e99438ae0..018ab4b549f1 100644
--- a/arch/arm/mach-davinci/da830.c
+++ b/arch/arm/mach-davinci/da830.c
@@ -21,7 +21,8 @@
 #include <mach/common.h>
 #include <mach/cputype.h>
 #include <mach/da8xx.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "irqs.h"
 #include "mux.h"
@@ -676,32 +677,17 @@ int __init da830_register_gpio(void)
 	return da8xx_register_gpio(&da830_gpio_platform_data);
 }
 
-static struct davinci_timer_instance da830_timer_instance[2] = {
-	{
-		.base		= DA8XX_TIMER64P0_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_0),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_0),
-		.cmp_off	= DA830_CMP12_0,
-		.cmp_irq	= DAVINCI_INTC_IRQ(IRQ_DA830_T12CMPINT0_0),
-	},
-	{
-		.base		= DA8XX_TIMER64P1_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_1),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_1),
-		.cmp_off	= DA830_CMP12_0,
-		.cmp_irq	= DAVINCI_INTC_IRQ(IRQ_DA830_T12CMPINT0_1),
-	},
-};
-
 /*
- * T0_BOT: Timer 0, bottom		: Used for clock_event & clocksource
- * T0_TOP: Timer 0, top			: Used by DSP
- * T1_BOT, T1_TOP: Timer 1, bottom & top: Used for watchdog timer
+ * Bottom half of timer0 is used both for clock even and clocksource.
+ * Top half is used by DSP.
  */
-static struct davinci_timer_info da830_timer_info = {
-	.timers		= da830_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_BOT,
+static const struct davinci_timer_cfg da830_timer_cfg = {
+	.reg = DEFINE_RES_IO(DA8XX_TIMER64P0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_DA830_T12CMPINT0_0)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_0)),
+	},
+	.cmp_off = DA830_CMP12_0,
 };
 
 static const struct davinci_soc_info davinci_soc_info_da830 = {
@@ -713,7 +699,6 @@ static const struct davinci_soc_info davinci_soc_info_da830 = {
 	.pinmux_base		= DA8XX_SYSCFG0_BASE + 0x120,
 	.pinmux_pins		= da830_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(da830_pins),
-	.timer_info		= &da830_timer_info,
 	.emac_pdata		= &da8xx_emac_pdata,
 };
 
@@ -743,6 +728,7 @@ void __init da830_init_time(void)
 {
 	void __iomem *pll;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DA830_REF_FREQ);
 
@@ -756,7 +742,8 @@ void __init da830_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &da830_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource da830_psc0_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
