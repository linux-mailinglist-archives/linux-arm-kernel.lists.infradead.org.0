Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C1B137497
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22gDuc/qDi5TPqosHdrpKvKU++ynDjDPjL8DPJW0bxw=; b=bgH7Ya+h6ykWKq
	oq0TX/s3LvtWywCGe/isWvQA9KhF+Gy6nkFRV59ukLuGl5wQYX+EQJTOOWL5jzEfn97w0ICOPVmor
	Nllhjl1zYqUE7ImfxsCHIveu+erOQSZ1otU9FKAx9T1YuS+RQ5skO4rIF0PclVpaoyKMHOY4754T3
	tiZiS3XiajXiq2UEn7ymnWV/NNCyYE8h+LlrKPux4qs8qoKrXo3fOdIFFdqW5PfoJ6stGnOBM6ewP
	1fDNklK2S97geuwHny5xzkAo3PwjYTRmB3Du6xNY0PQ491s9fGBEaALkW5ZGw3h3jp3UPKdJAzxfu
	rq64+q5wW9Ga4l8xPwxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxvE-0007u4-SS; Fri, 10 Jan 2020 17:18:08 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxuF-0007Ea-Rj
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:17:09 +0000
Received: by mail-wm1-x344.google.com with SMTP id q9so2810167wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Jan 2020 09:17:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eMvYdN33I4+9ymWnbNhZacsLszkk7sr06Cm5LeypaiE=;
 b=cXqWOztTfUwDyWcSOmq5q8KkhLQbdC1xKjmCSstZ/Hn6Z+4u0++FOr7D5KQew6gdXv
 5s46S3ILloL2xrwfboySqYcQtXsVFP27YDhENrWgXVl3clNZMkLz021SGYO0l/cttBdZ
 3KAQOd0IP+mlfZC+Q/ysje6uZrAiDyromn4DR1MW/87HxHO3v9AkWSYYiTzHxNKi+9Uq
 ZIJkZNhsELC3vGl1MlXIL+HPo30okZ07MFpnMtTULx4E4egxelSAfUkJRslnFyPczYDA
 WEBICS4JV3NfsVj55Gn5xNG3n1jtJumfAxqO2R7HxQ5SjT0jl33Qw7qgrABFoyADjik+
 Sz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eMvYdN33I4+9ymWnbNhZacsLszkk7sr06Cm5LeypaiE=;
 b=Dk9gOTXmtzd/uhkxypiggLLyEykICPFwd20RUQI6R63LivLkQzCXLcU34VEhq3aAG3
 MgZQtMGruv+VS8BuijYrZQRYsrGi5MGiUa+JiyMG4QEwJJgr88b7SaulJssxnPydEsmq
 lzPFfpg/XjwFqutUre8GGj/gmqt/SQQ5xz63mrEUWe4XHfvf7Et5703iBcKGkhNlaKev
 oskh7cKxrX6z9iIFWvZUy7jUYyDf4WDYq+6/vQkO3ywj9BOy2Ehxc07z0CNAflGDTZt+
 CFy3aFE7CSUOC2losExSjeqOwo0vHL9UITtob4ds32CwdGRs4656oviIn5HziR8im7Cz
 mUYA==
X-Gm-Message-State: APjAAAWPXVVpU9VT9DAw+w8TYIJaMwCjPDG+8qGjNrR4iriXndz7CgdR
 hVSxaHcLEZ6l1+zKjyQpB+u8jQ==
X-Google-Smtp-Source: APXvYqxka4QzXLEAcNp6/SHuWVKMR5GdHU980ugJZUTkhmLyhAbEB0PPB0uoiBUnQlyurAJ7pE2V7A==
X-Received: by 2002:a1c:9c4c:: with SMTP id f73mr5685494wme.125.1578676624588; 
 Fri, 10 Jan 2020 09:17:04 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:b0ec:c83d:aa26:b93])
 by smtp.gmail.com with ESMTPSA id z123sm3072725wme.18.2020.01.10.09.17.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 09:17:04 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH v3 2/3] ARM: davinci: dm365: switch to using the clocksource
 driver
Date: Fri, 10 Jan 2020 18:16:42 +0100
Message-Id: <20200110171643.18578-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200110171643.18578-1-brgl@bgdev.pl>
References: <20200110171643.18578-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091707_922950_34EF57CB 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

We now have a proper clocksource driver for davinci. Switch the dm365
platform to using it.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Reviewed-by: David Lechner <david@lechnology.com>
---
 arch/arm/mach-davinci/dm365.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-davinci/dm365.c b/arch/arm/mach-davinci/dm365.c
index 9fc5c73cc0be..c1e0d46996e4 100644
--- a/arch/arm/mach-davinci/dm365.c
+++ b/arch/arm/mach-davinci/dm365.c
@@ -35,7 +35,8 @@
 #include <mach/cputype.h>
 #include <mach/mux.h>
 #include <mach/serial.h>
-#include <mach/time.h>
+
+#include <clocksource/timer-davinci.h>
 
 #include "asp.h"
 #include "davinci.h"
@@ -660,10 +661,16 @@ static struct davinci_id dm365_ids[] = {
 	},
 };
 
-static struct davinci_timer_info dm365_timer_info = {
-	.timers		= davinci_timer_instance,
-	.clockevent_id	= T0_BOT,
-	.clocksource_id	= T0_TOP,
+/*
+ * Bottom half of timer0 is used for clockevent, top half is used for
+ * clocksource.
+ */
+static const struct davinci_timer_cfg dm365_timer_cfg = {
+	.reg = DEFINE_RES_IO(DAVINCI_TIMER0_BASE, SZ_128),
+	.irq = {
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT12)),
+		DEFINE_RES_IRQ(DAVINCI_INTC_IRQ(IRQ_TINT0_TINT34)),
+	},
 };
 
 #define DM365_UART1_BASE	(IO_PHYS + 0x106000)
@@ -723,7 +730,6 @@ static const struct davinci_soc_info davinci_soc_info_dm365 = {
 	.pinmux_base		= DAVINCI_SYSTEM_MODULE_BASE,
 	.pinmux_pins		= dm365_pins,
 	.pinmux_pins_num	= ARRAY_SIZE(dm365_pins),
-	.timer_info		= &dm365_timer_info,
 	.emac_pdata		= &dm365_emac_pdata,
 	.sram_dma		= 0x00010000,
 	.sram_len		= SZ_32K,
@@ -771,6 +777,7 @@ void __init dm365_init_time(void)
 {
 	void __iomem *pll1, *pll2, *psc;
 	struct clk *clk;
+	int rv;
 
 	clk_register_fixed_rate(NULL, "ref_clk", NULL, 0, DM365_REF_FREQ);
 
@@ -789,7 +796,8 @@ void __init dm365_init_time(void)
 		return;
 	}
 
-	davinci_timer_init(clk);
+	rv = davinci_timer_register(clk, &dm365_timer_cfg);
+	WARN(rv, "Unable to register the timer: %d\n", rv);
 }
 
 void __init dm365_register_clocks(void)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
