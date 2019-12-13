Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E297811E833
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22gDuc/qDi5TPqosHdrpKvKU++ynDjDPjL8DPJW0bxw=; b=A7sdfOi35vcOdI
	lb8xinB6qUBqn6zyY9lP0fB0K2/CPS8gezVfyPts2ALSGPQqWRoov1mHdYk4rvmVBTb00z3iIbhhU
	a08K49VuEDeJv+q9wnJ7ZvcA6Axuj+pIsvFuBu5u+F2RxMzjYqMiUDlmX6jZ5XKPF1dmQPwYCgB56
	+5ArOdNS0N0iXSfWTVgq3GuVJWtKQxE9e/L9/cSZCfbKoOXgtxdrM50rPXmU3OU0fjIUUqYFFKbYt
	YQAjnkRun2Nm23VyvsjOs/p6WRfMMOljcGceq2GAPPVt5Lkuophv+yCumW/2PKpf27U8vdqBmkt1p
	4WQcdbtZJ1/UXBbKjWZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnlN-0007BR-Al; Fri, 13 Dec 2019 16:25:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnkb-0006XY-OT
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:25:11 +0000
Received: by mail-wm1-x343.google.com with SMTP id d5so175569wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eMvYdN33I4+9ymWnbNhZacsLszkk7sr06Cm5LeypaiE=;
 b=R1nQf0AVjMvvp2zRVWlWyB58IbpfrmWg7d+S3IjBsbkVPRZs0PZbS9AUVJ4FYYfsq5
 WQe8o8GDIWftEd2SgUe/TP7Q3Ptn0pzRql+o50QTDjgC/BqrKQ+c47Edle9fyskeVdsu
 5iiIGZncU1EnNHT8THQrL5kVcY9SEukqsEQIZmzW6ZNmUVYOKafrNKNFOk4ISEFx3E5W
 Lto38KTsZy05PRQmD6yOAAazACHSKfKK2M+XcUw7HhVvpeyTC/ESso+e6XH+rUqojaYC
 YPJW1jZ9N7joe/7q8TmpgQIIcIRZcA0dLbvKewAlqiN9H1YMDuaHONeXISxGtQVgmHd2
 nazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eMvYdN33I4+9ymWnbNhZacsLszkk7sr06Cm5LeypaiE=;
 b=bIDjLU4/SJ9bIVbjHhE2RThQvABJg7bn0Wq+3a2x+fM4RZRrAfMZskZxCi6eIzsXjr
 tUcCzUY806mDpFhsddRynbGz2unCcu777ebMgspqnTDSqDQoahotiql5LWGIBDffY5Ay
 Y1odLw0v5qQV6jVy8KL81dOqpIVFhdgmsZzj3a1z7we8ASjWGNo1XQvGILaff4pmOz3F
 eD3WP5k7J8ODZYkGded9JxeBvKDlSiZp2C9/Y24zoLvkg3xB27DxeDEvel+XELzU1q1S
 9DJ8b1s82h+lrjW+1gkVX33SrkHACthSodjkCsrlBB5tI/zVy2JCfhxmxY0UhU9HI2cT
 k56w==
X-Gm-Message-State: APjAAAW1l7eflluTKWUlf8GvDCc0jYQ3QnA2vRomFvsRtQVlT1wJBytu
 o3hdVC/LaVdL4DPaL5kZHBqoeg==
X-Google-Smtp-Source: APXvYqyS9N0nuxTqqSdrISq3EoVYfvgKfc1zNAWPw5zKgUqM9n5ItsBPCbpsEWFiPcSedwhdX53/FQ==
X-Received: by 2002:a1c:20d6:: with SMTP id g205mr14576009wmg.38.1576254308455; 
 Fri, 13 Dec 2019 08:25:08 -0800 (PST)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:3d17:b245:8f4:3043])
 by smtp.gmail.com with ESMTPSA id h8sm11139330wrx.63.2019.12.13.08.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 08:25:08 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, David Lechner <david@lechnology.com>,
 Kevin Hilman <khilman@kernel.org>
Subject: [PATCH 2/3] ARM: davinci: dm365: switch to using the clocksource
 driver
Date: Fri, 13 Dec 2019 17:24:52 +0100
Message-Id: <20191213162453.15691-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191213162453.15691-1-brgl@bgdev.pl>
References: <20191213162453.15691-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_082509_795113_C7B8EAC0 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
