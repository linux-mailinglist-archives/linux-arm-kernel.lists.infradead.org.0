Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0F8150BA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PykJusaKaBeyDJeDoUGVWtHHuxQHnFdsHvOthNrZKLI=; b=OLzeBQaD/YhOkV
	PquP7PlEZ2/rmBVtmQWhfHt9/4PQBJOuY3LCIcFE3+17zFqkKqz6euzKXZ9JPgicGAQMMKOcsHu2t
	G6moeLsyvnwT7mxiDrmq1BVr5Ki0SiRjxKdiGcCu5VKUYDpzUAZbPf+2KhyEgZJvFuMpauiGl50Kq
	ZruXachBYq3e/A4F/XbsLYvm+9QmQ7scZMTd9/INiovKNNPtaNFxSYevaQDgF+Gnc62oywAbh6zel
	1MduByrre5MfIylgrSkgeBX2W2hTA7uz5dno7lKL0E3ONFwxX1bfs349vnoW/SySGvN3Tlf8yzGeB
	AsSllcOcYQdGh1DId0dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOpd-0001ZK-Tu; Mon, 24 Jun 2019 13:16:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOnN-000823-QI
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:14:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id c6so13375945wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 06:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1TfWHxtQiNmrkXujZYAI0hTn+BhOSphr+TltX20vVaQ=;
 b=l8J08YKOJwmACjfUIJ6uTeyI84leHPXXrAsSJdkYuXh/C0wYpl1bSyZY5J24slwT26
 txxLOJB5wXk8R18kMLgB+YMGCzMUekRAHFhwZG6KrXx476j0BDbMlxTNzrVMU9PjRtf+
 85d8a+7N+KD4mbGVVA91GaMKU/HaJuBOgbtTq4lZTRUynKqvlILjx/MpkHQKy71FBAJu
 ukiYVQ8lxIXkjfnHzo0myBt5MviE26zfaoSD22gy3ACl5P1u+zQQNz6QWu8FlWmHgQgR
 8Lia1aJtVCdXCuAa7/Zp5pxkkgYnvFOHUJ/2y0xXIRVj9gvRH7R3H0OmUtpclSFxuC9T
 kT4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1TfWHxtQiNmrkXujZYAI0hTn+BhOSphr+TltX20vVaQ=;
 b=gvT372TKVwA2FlUClIXLW0qdofDGSQCzXGCy9+hmKQMcPqIyOy1Urgv+gvaEZ9ihVe
 mNGcksExHC7o5neFvNDXYGNJgD60dJmR1Cx0FxPk7ykb5VDW4fZfr9DDoqcD2+UcPHKo
 0f2qF/v1DAVpcfvf2hV2PH3anH5/174/f8VzKx+NXYLXuH09CjM2Z+WTjOHiKoobrUXd
 JXfk/fUYNr3yaaat1Yt4COafe2OyRL9Z5uD7OHB9DHPrpUY0Hc0qaI1SG75W9jGFmlh2
 eCgLa63KaABFQcW9ZpiWgmWxI+ZMb+2n5Pu2Xn397DQg9LGTa8OOJ4AeqnPMDMA49z19
 5uww==
X-Gm-Message-State: APjAAAWVDK+tBtuSvBNE5V4koD+lnrqf7EFQhlqrMkJd9vZhsrTSvh/h
 D5WoZoV/ugCixksoYKNCCVNDPw==
X-Google-Smtp-Source: APXvYqyRnmxp6bUCbPDH2fq2z5NQMTVyYIuWTnDzzhr051yMPH4j4YLQm/OSpS6v4oJlyS2ycgd+vQ==
X-Received: by 2002:a1c:b189:: with SMTP id a131mr16593611wmf.7.1561382044414; 
 Mon, 24 Jun 2019 06:14:04 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id y2sm9535526wrl.4.2019.06.24.06.14.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 06:14:03 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 03/10] ARM: davinci: da850: switch to using the clocksource
 driver
Date: Mon, 24 Jun 2019 15:13:44 +0200
Message-Id: <20190624131351.3732-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190624131351.3732-1-brgl@bgdev.pl>
References: <20190624131351.3732-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_061405_850208_D6EEDB76 
X-CRM114-Status: GOOD (  14.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

We now have a proper clocksource driver for davinci. Switch the da850
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/da850.c | 46 ++++++++++-------------------------
 1 file changed, 13 insertions(+), 33 deletions(-)

diff --git a/arch/arm/mach-davinci/da850.c b/arch/arm/mach-davinci/da850.c
index dcf3536c46bc..73b7cc53f966 100644
--- a/arch/arm/mach-davinci/da850.c
+++ b/arch/arm/mach-davinci/da850.c
@@ -35,7 +35,8 @@
 #include <mach/cputype.h>
 #include <mach/da8xx.h>
 #include <mach/pm.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "irqs.h"
 #include "mux.h"
@@ -333,38 +334,16 @@ static struct davinci_id da850_ids[] = {
 	},
 };
 
-static struct davinci_timer_instance da850_timer_instance[4] = {
-	{
-		.base		= DA8XX_TIMER64P0_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_0),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_0),
-	},
-	{
-		.base		= DA8XX_TIMER64P1_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_1),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_1),
-	},
-	{
-		.base		= DA850_TIMER64P2_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA850_TINT12_2),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA850_TINT34_2),
-	},
-	{
-		.base		= DA850_TIMER64P3_BASE,
-		.bottom_irq	= DAVINCI_INTC_IRQ(IRQ_DA850_TINT12_3),
-		.top_irq	= DAVINCI_INTC_IRQ(IRQ_DA850_TINT34_3),
-	},
-};
-
 /*
- * T0_BOT: Timer 0, bottom		: Used for clock_event
- * T0_TOP: Timer 0, top			: Used for clocksource
- * T1_BOT, T1_TOP: Timer 1, bottom & top: Used for watchdog timer
+ * Bottom half of timer 0 is used for clock_event, top half for
+ * clocksource.
  */
-static struct davinci_timer_info da850_timer_info = {
-	.timers		= da850_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+static const struct davinci_timer_cfg da850_timer_cfg = {
+	.reg = DEFINE_RES_IO(DA8XX_TIMER64P0_BASE, SZ_4K),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT12_0)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_DA8XX_TINT34_0)),
+	},
 };
 
 #ifdef CONFIG_CPU_FREQ
@@ -635,7 +614,6 @@ static const struct davinci_soc_info davinci_soc_info_da850 = {
 	.pinmux_base		= DA8XX_SYSCFG0_BASE + 0x120,
 	.pinmux_pins		= da850_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(da850_pins),
-	.timer_info		= &da850_timer_info,
 	.emac_pdata		= &da8xx_emac_pdata,
 	.sram_dma		= DA8XX_SHARED_RAM_BASE,
 	.sram_len		= SZ_128K,
@@ -672,6 +650,7 @@ void __init da850_init_time(void)
 	void __iomem *pll0;
 	struct regmap *cfgchip;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DA850_REF_FREQ);
 
@@ -686,7 +665,8 @@ void __init da850_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &da850_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 static struct resource da850_pll1_resources[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
